uint64_t sub_1006E3464(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v4;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v5 = *(a1 + 16);
  v15 = *a1;
  v16 = v5;
  v6 = sub_10076F13C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  *v9 = sub_10077068C();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_10076F16C();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v23 = xmmword_10094FFF8;
    v24 = xmmword_100950008;
    v25 = xmmword_100950018;
    v26 = qword_100950028;
    v21 = xmmword_10094FFD8;
    v22 = xmmword_10094FFE8;
    v27[3] = xmmword_100950008;
    v27[4] = xmmword_100950018;
    v27[1] = xmmword_10094FFE8;
    v27[2] = xmmword_10094FFF8;
    v28 = qword_100950028;
    v27[0] = xmmword_10094FFD8;
    sub_100016E2C(&v21, v13, &unk_1009505F0, &qword_1007A2110);
    xmmword_10094FFF8 = v17;
    xmmword_100950008 = v18;
    xmmword_100950018 = v19;
    qword_100950028 = v20;
    xmmword_10094FFD8 = v15;
    xmmword_10094FFE8 = v16;
    sub_10000CFBC(v27, &unk_1009505F0, &qword_1007A2110);
    v12 = sub_1001F9960(a1, v13);
    a2(v12);
    v13[2] = xmmword_10094FFF8;
    v13[3] = xmmword_100950008;
    v13[4] = xmmword_100950018;
    v14 = qword_100950028;
    v13[0] = xmmword_10094FFD8;
    v13[1] = xmmword_10094FFE8;
    xmmword_10094FFD8 = v21;
    xmmword_10094FFE8 = v22;
    xmmword_10094FFF8 = v23;
    xmmword_100950008 = v24;
    xmmword_100950018 = v25;
    qword_100950028 = v26;
    return sub_10000CFBC(v13, &unk_1009505F0, &qword_1007A2110);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1006E36DC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E376C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E37FC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E388C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E391C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EAEE8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E39AC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E3A3C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E3ACC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E3B5C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E3BEC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EAC94;
}

void (*sub_1006E3CB0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAFE4;
}

void (*sub_1006E3D14(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAF74;
}

void (*sub_1006E3D78(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAF04;
}

void (*sub_1006E3DDC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAE74;
}

void (*sub_1006E3E40(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EACF8;
}

uint64_t (*sub_1006E3EA4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EB158;
}

uint64_t (*sub_1006E3F08(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EB158;
}

uint64_t (*sub_1006E3F6C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAEE4;
}

uint64_t (*sub_1006E3FD0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EB158;
}

uint64_t (*sub_1006E4034(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EB158;
}

id sub_1006E4098(int a1, id a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  result = [a2 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_10000A5D4(a3, a4);
    sub_100071820(a5, a3, a4, &unk_100799ED0);
    return sub_10076A6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1006E4160(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAFB0;
}

id (*sub_1006E41C4(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAF40;
}

id (*sub_1006E4228(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAEB0;
}

id (*sub_1006E428C(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAE40;
}

id (*sub_1006E42F0(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EACC4;
}

uint64_t sub_1006E4354(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  sub_100016E2C(a2, &v9, &unk_1009434C0, &qword_100783F60);
  sub_100016E2C(&v8, &v6, &unk_1009505A0, &qword_1007B4690);
  v4 = v6;
  sub_100016E2C(v7, v5, &unk_1009434C0, &qword_100783F60);

  sub_1006E1DF4(v2, v5);

  sub_10000CFBC(&v8, &unk_1009505A0, &qword_1007B4690);
  sub_10000CFBC(&v4, &unk_1009505A0, &qword_1007B4690);
  return sub_10000CFBC(v7, &unk_1009434C0, &qword_100783F60);
}

char *sub_1006E4468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_1009654C0) = 0x4024000000000000;
  *(v2 + qword_1009654C8) = 0;
  *(v2 + qword_1009654D0) = 0;
  *(v2 + qword_1009A32E8) = 0;
  *(v2 + qword_1009A32F0) = 0;
  *(v2 + qword_1009A32F8) = 0;
  v6 = qword_1009A3300;
  type metadata accessor for ProductTitleView();
  *(v3 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + qword_1009A3308) = 0;
  *(v3 + qword_1009654D8) = 0;
  *(v3 + qword_1009A3310) = 0;
  *(v3 + qword_1009A3318) = 0;
  *(v3 + qword_1009654E8) = 0;
  v7 = qword_1009654F8;
  type metadata accessor for ProductPageExtensionBannerScrollObserver();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v7) = v8;
  *(v3 + qword_100965500) = 0;
  *(v3 + qword_100965508) = _swiftEmptySetSingleton;
  sub_10076148C();
  sub_10076F5CC();
  *(v3 + qword_1009654E0) = sub_10076122C() & 1;
  sub_10076A14C();
  sub_10076F5CC();
  *(v3 + qword_1009654F0) = v19;

  v9 = sub_100481468(a1, a2);
  v10 = qword_10099E390;
  v11 = *&v9[qword_10099E390];
  v12 = v9;
  v13 = v11;
  sub_1006E47E8();
  sub_1006EB020(&qword_100965B00, type metadata accessor for ProductTopLockupCollectionElementsObserver, &unk_10079E854);
  sub_10076668C();

  v14 = *&v9[v10];

  sub_10076668C();

  v15 = *&v9[v10];

  v16 = qword_1009654F8;
  sub_1006EB020(&qword_100965B08, type metadata accessor for ProductPageExtensionBannerScrollObserver, &unk_10079DF6C);

  sub_10076668C();

  v17 = *&v12[v16];
  sub_10000A5D4(&qword_100965B10, &qword_1007B45C8);

  sub_10076F5AC();

  *(v17 + 40) = v20;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1006E47E8()
{
  v1 = qword_100965500;
  if (*&v0[qword_100965500])
  {
    v2 = *&v0[qword_100965500];
  }

  else
  {
    v3 = *&v0[qword_10099E360];
    v4 = *&v0[qword_10099E370];
    type metadata accessor for ProductTopLockupCollectionElementsObserver();
    swift_allocObject();

    v5 = v0;
    v2 = sub_10038FCAC(v3, v5, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1006E48CC()
{
  v1 = qword_1009654D0;
  if (*(v0 + qword_1009654D0))
  {
    v2 = *(v0 + qword_1009654D0);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_1008A0618;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    *(v2 + 72) = sub_1006EAA98;
    *(v2 + 80) = v3;

    sub_1000167E0(v4, v5);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1006E49E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076F9AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076048C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidLoad", v9);
  (*(v8 + 104))(v11, enum case for SystemImage.squareAndArrowUp(_:), v7);
  v12 = sub_10076046C();
  (*(v8 + 8))(v11, v7);
  v13 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v12 style:0 target:v1 action:"share:"];

  [v13 setHidden:1];
  v14 = v13;
  v43._object = 0x80000001007F5D50;
  v43._countAndFlagsBits = 0xD00000000000002ALL;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_1007622EC(v43, v45);
  v15 = sub_10076FF6C();

  [v14 setTitle:v15];

  v16 = v14;
  v44._countAndFlagsBits = 0xD00000000000002BLL;
  v44._object = 0x80000001007F5D80;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_1007622EC(v44, v46);
  v17 = sub_10076FF6C();

  [v16 setAccessibilityLabel:v17];

  v18 = qword_1009654D8;
  v19 = *&v1[qword_1009654D8];
  *&v1[qword_1009654D8] = v16;
  v20 = v16;

  v21 = *&v1[v18];
  if (v21)
  {
    v40 = 0u;
    v41 = 0u;
    memset(v39, 0, sizeof(v39));
    v22 = v21;
    sub_10076F95C();
    sub_10000CFBC(v39, &unk_1009434C0, &qword_100783F60);
    sub_10000CFBC(&v40, &unk_1009434C0, &qword_100783F60);
    sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    sub_10077099C();

    (*(v4 + 8))(v6, v3);
  }

  v23 = [v1 navigationItem];
  v24 = [v23 rightBarButtonItems];

  if (v24)
  {
    sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    v25 = sub_1007701BC();
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  *&v39[0] = v25;
  if (v25 >> 62 && sub_10077158C() < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v26 = v20;
  sub_10061BDB0(0, 0, v26);

  v27 = [v1 navigationItem];
  sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
  isa = sub_1007701AC().super.isa;
  [v27 setRightBarButtonItems:isa];

  sub_1006E48CC();
  sub_1006EB020(&qword_100943788, type metadata accessor for UberedPageScrollObserver, "u8\r");
  sub_10076668C();

  v29 = [v1 navigationItem];
  [v29 setTitleView:*&v1[qword_1009A3300]];

  v30 = [v1 collectionView];
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  v40 = 0u;
  v41 = 0u;
  sub_10076F96C();
  sub_10000CFBC(&v40, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v4 + 8))(v6, v3);
  v32 = [v1 view];
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v32;
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v34 = swift_allocObject();
  v38 = xmmword_100783DD0;
  *(v34 + 16) = xmmword_100783DD0;
  *(v34 + 32) = sub_10076E88C();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_100770C6C();
  swift_unknownObjectRelease();

  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;

    v37 = swift_allocObject();
    *(v37 + 16) = v38;
    *(v37 + 32) = sub_10076E59C();
    *(v37 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100770C6C();
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1006E5154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong collectionViewLayout];
    [v5 invalidateLayout];

    v6 = [v4 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006E5200(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10076950C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    v10 = [v9 traitCollection];
    v11 = sub_1007706EC();

    v12 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
    if ((v11 & 1) == 0)
    {
      v12 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
    }

    (*(v5 + 104))(v7, *v12, v4);
    sub_1007694FC();

    (*(v5 + 8))(v7, v4);
    v13 = [v9 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006E53B8(void *a1)
{
  v1 = a1;
  sub_1006E49E0();
}

uint64_t sub_1006E5400(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076A13C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076880C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1, v11);
  sub_1006E2B50();
  if (*(v2 + qword_1009654E0) == 1)
  {
    v14 = qword_1009654E8;
    if ((*(v2 + qword_1009654E8) & 1) == 0)
    {
      sub_100767E8C();
      sub_10076F64C();
      sub_10076FC1C();
      v15 = v17[1];
      *v13 = 1;
      (*(v10 + 104))(v13, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v9);
      sub_100767E7C();

      (*(v10 + 8))(v13, v9);
      *(v2 + v14) = 1;
    }
  }

  (*(v6 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v5);
  sub_10076A0FC();
  return (*(v6 + 8))(v8, v5);
}

void sub_1006E567C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1006E5400(a3);
}

uint64_t sub_1006E56F8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_10076A13C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  v2[qword_1009A32F0] = 1;
  v14 = qword_1009A32F8;
  if ((v2[qword_1009A32F8] & 1) == 0)
  {
    v15 = sub_1007694CC();
    if (v15)
    {
      v16 = v15;
      v2[v14] = 1;
      v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
      sub_10076F64C();
      sub_10076FC1C();
      sub_100263BF0(v16, 1, v17, v8);

      (*(v6 + 8))(v8, v5);
    }
  }

  (*(v10 + 104))(v13, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.didAppear(_:), v9);
  sub_10076A0FC();
  return (*(v10 + 8))(v13, v9);
}

void sub_1006E5960(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1006E56F8(a3);
}

void sub_1006E59B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  sub_1006E2ECC();
}

void sub_1006E5A2C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076A13C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10076A0FC();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1006E5B60(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076A13C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  v10 = *(v6 + 104);
  v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willDisappear(_:), v5);
  sub_10076A0FC();
  v11 = *(v6 + 8);
  v11(v9, v5);
  if ([v2 isMovingFromParentViewController])
  {
    v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v5);
    sub_10076A0FC();
    v11(v9, v5);
  }

  return sub_1006E5CEC();
}

uint64_t sub_1006E5CEC()
{
  v1 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = sub_10076958C();
  if (result)
  {
    v5 = result;
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
    v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {

      return sub_10000CFBC(v3, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v5, 1, v6, v3);

      return (*(v8 + 8))(v3, v7);
    }
  }

  return result;
}

void sub_1006E5E70(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1006E5B60(a3);
}

void sub_1006E5EC4(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1006EB154;
    v17 = v7;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006F5994;
    v15 = &unk_1008A08B8;
    v8 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v16 = sub_1006EAD6C;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006F5994;
    v15 = &unk_1008A0908;
    v10 = _Block_copy(&v12);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_1006E6090(__n128 a1, uint64_t a2, void *a3)
{
  v4 = sub_10076950C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007694EC();
  v8 = [a3 traitCollection];
  v9 = sub_1007706EC();

  v10 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
  if ((v9 & 1) == 0)
  {
    v10 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
  }

  (*(v5 + 104))(v7, *v10, v4);
  sub_1007694FC();
  (*(v5 + 8))(v7, v4);
  v11 = [a3 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1006E6214(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1006E5EC4(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1006E62BC(void *a1)
{
  v1 = a1;
  sub_1006E6294();
}

uint64_t sub_1006E632C(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10076A13C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075F2AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v6 + v15, v22, &unk_10094E1F0, qword_100783D20);
  if (v23)
  {
    sub_10000A570(v22, v21);
    sub_10000CFBC(v22, &unk_10094E1F0, qword_100783D20);
    v18 = a2;
    v19 = v7;
    sub_10000CF78(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_10075F2BC();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000CD74(v21);
  }

  else
  {
    v16 = sub_10000CFBC(v22, &unk_10094E1F0, qword_100783D20);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10076A0FC();
  return (*(v8 + 8))(v10, v7);
}

void sub_1006E65D0(void *a1)
{
  v1 = a1;
  sub_1006E6304();
}

uint64_t sub_1006E6618@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1006EB020(&qword_1009505E8, type metadata accessor for BaseShelfComponentTypeMappingProvider, &unk_10079A628);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1006E66CC()
{
  v17[2] = swift_getObjectType();
  v1 = sub_10000A5D4(&qword_100965BA0, &qword_1007B45F8);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v21 = v17 - v2;
  v3 = sub_10000A5D4(&qword_100965BA8, &qword_1007B4600);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = v17 - v4;
  v5 = sub_10000A5D4(&qword_100946598, &qword_100788C98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_1006E133C();
  v9 = *(v0 + qword_10099E360);
  v17[0] = v0;
  v17[1] = v9;
  sub_100765DDC();
  v10 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v11 = sub_10077068C();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v11;
  sub_10000A5D4(&unk_100950620, &qword_100788CA0);
  sub_100071820(&qword_1009465A0, &unk_100950620, &qword_100788CA0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F46C();

  (*(v6 + 8))(v8, v5);
  sub_10000CD74(v24);
  sub_10076956C();
  v12 = sub_10077068C();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v12;
  sub_10000A5D4(&qword_100965BB0, &qword_1007B4608);
  sub_100071820(&qword_100965BB8, &qword_100965BB0, &qword_1007B4608, &protocol conformance descriptor for SyncEvent<A>);
  v13 = v18;
  sub_10076F46C();

  (*(v19 + 8))(v13, v20);
  sub_10000CD74(v24);
  sub_1007695AC();
  v14 = sub_10077068C();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v14;
  sub_10000A5D4(&qword_100965BC0, &qword_1007B4610);
  sub_100071820(&qword_100965BC8, &qword_100965BC0, &qword_1007B4610, &protocol conformance descriptor for SyncEvent<A>);
  v15 = v21;
  sub_10076F46C();

  (*(v22 + 8))(v15, v23);
  return sub_10000CD74(v24);
}

void sub_1006E6B30(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v2 - 8);
  v74 = v71 - v3;
  v4 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v73 = v71 - v5;
  v6 = sub_10075E11C();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v78 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100965BD8, &unk_1007B4620);
  __chkstk_darwin(v8 - 8);
  v82 = v71 - v9;
  v10 = sub_10076983C();
  v11 = *(v10 - 8);
  v83 = v10;
  v84 = v11;
  __chkstk_darwin(v10);
  v77 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v13 - 8);
  v88 = v71 - v14;
  v85 = sub_10076B5BC();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v72 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v81 = v71 - v17;
  __chkstk_darwin(v18);
  v86 = v71 - v19;
  v20 = sub_10000A5D4(&qword_100944C40, &unk_10079A0C0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v71 - v22;
  v24 = sub_10000A5D4(&qword_100950600, &qword_100788CC0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v71 - v26;
  v28 = sub_10000A5D4(&qword_100950560, &qword_10079A040);
  v29 = a1;
  sub_100761B9C();
  sub_10076B06C();
  v30 = *(v25 + 8);
  v30(v27, v24);
  v31 = sub_10076E5EC();
  (*(v21 + 8))(v23, v20);
  if (v31 < 1)
  {
    goto LABEL_10;
  }

  v71[2] = v28;
  sub_100761B9C();
  v32 = v88;
  sub_10076B08C();
  v30(v27, v24);
  v33 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = &qword_1009499A0;
    v36 = &qword_1007848B0;
    v37 = v32;
LABEL_9:
    sub_10000CFBC(v37, v35, v36);
    goto LABEL_10;
  }

  v71[1] = v29;
  swift_getKeyPath();
  v38 = v81;
  sub_10076F49C();

  (*(v34 + 8))(v32, v33);
  v40 = v86;
  v39 = v87;
  v41 = v85;
  (*(v87 + 32))(v86, v38, v85);
  v42 = qword_1009503C8;
  v43 = v89;
  swift_beginAccess();
  v44 = *(v43 + v42);
  if (!v44)
  {
    (*(v39 + 8))(v40, v41);
    swift_endAccess();
    v48 = v82;
    (*(v84 + 56))(v82, 1, 1, v83);
    goto LABEL_8;
  }

  swift_endAccess();
  v45 = v44;
  v46 = v78;
  sub_10075E08C();
  v47 = v82;
  sub_10076E74C();

  v48 = v47;
  v88 = *(v79 + 8);
  (v88)(v46, v80);
  v50 = v83;
  v49 = v84;
  if ((*(v84 + 48))(v47, 1, v83) == 1)
  {
    (*(v87 + 8))(v86, v41);
LABEL_8:
    v35 = &qword_100965BD8;
    v36 = &unk_1007B4620;
    v37 = v48;
    goto LABEL_9;
  }

  v51 = v77;
  (*(v49 + 32))(v77, v47, v50);
  sub_100761B9C();
  v52 = v30;
  v53 = v74;
  sub_10076B07C();
  v54 = v27;
  v55 = v53;
  v52(v54, v24);
  v56 = v75;
  v57 = v53;
  v58 = v76;
  if ((*(v75 + 48))(v57, 1, v76) == 1)
  {
    (*(v49 + 8))(v51, v50);
    (*(v87 + 8))(v86, v85);
    v35 = &qword_100950548;
    v36 = &unk_1007AAAE0;
    v37 = v55;
    goto LABEL_9;
  }

  v59 = v73;
  (*(v56 + 32))(v73, v55, v58);
  v61 = v86;
  v60 = v87;
  v62 = v72;
  v63 = v85;
  (*(v87 + 16))(v72, v86, v85);
  if ((*(v60 + 88))(v62, v63) != enum case for Shelf.ContentType.productTopLockup(_:))
  {
    (*(v56 + 8))(v59, v58);
    (*(v84 + 8))(v77, v50);
    v70 = *(v60 + 8);
    v70(v61, v63);
    *(v89 + qword_100965508) = _swiftEmptySetSingleton;

    v70(v62, v63);
    return;
  }

  sub_10076F4AC();
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100762BEC();
  v64 = swift_dynamicCast();
  v65 = v77;
  if (v64)
  {
    if (sub_100762B8C())
    {

      sub_10000A5D4(&qword_100944C48, &unk_10079AFF0);
      v66 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100783DD0;
      sub_10075E08C();
      v69 = sub_100179EC0(v67, v68);
      swift_setDeallocating();
      (v88)(v67 + v66, v80);
      swift_deallocClassInstance();

      (*(v56 + 8))(v59, v58);
      (*(v84 + 8))(v65, v50);
      (*(v87 + 8))(v86, v85);
      *(v89 + qword_100965508) = v69;
      goto LABEL_11;
    }
  }

  (*(v56 + 8))(v59, v58);
  (*(v84 + 8))(v65, v50);
  (*(v87 + 8))(v86, v85);
LABEL_10:
  *(v89 + qword_100965508) = _swiftEmptySetSingleton;
LABEL_11:
}

void (*sub_1006E7654(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAC6C;
}

void sub_1006E76B8(uint64_t a1, uint64_t a2)
{
  v65 = sub_10075E11C();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v63 - v7;
  v9 = sub_1007681BC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for ProductPageScrollPosition.topOfPage(_:))
  {
    (*(v10 + 96))(v13, v9);
    v15 = *v13;
    v16 = *(*v13 + 16);
    if (!v16)
    {
LABEL_7:
      v21 = [v66 collectionView];
      if (v21)
      {
        v22 = v21;

        [v22 setContentOffset:1 animated:{0.0, 0.0}];

        return;
      }

      goto LABEL_31;
    }

    v17 = 0;
    while (v17 < *(v15 + 16))
    {
      v18 = [v66 collectionView];
      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = v18;
      ++v17;
      sub_10075E08C();
      isa = sub_10075E02C().super.isa;
      (*(v3 + 8))(v8, v65);
      [v19 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:1];

      if (v16 == v17)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v14 != enum case for ProductPageScrollPosition.topOfIndexPath(_:))
  {
    (*(v10 + 8))(v13, v9);
    return;
  }

  (*(v10 + 96))(v13, v9);
  v23 = sub_10000A5D4(&qword_100965BD0, &qword_1007B4618);
  v24 = v13[*(v23 + 48)];
  v25 = *&v13[*(v23 + 64)];
  (*(v3 + 32))(v5, v13, v65);
  v26 = [v66 collectionView];
  if (!v26)
  {
    goto LABEL_32;
  }

  v27 = v26;
  v28 = sub_10075E02C().super.isa;
  v29 = [v27 layoutAttributesForItemAtIndexPath:v28];

  if (!v29)
  {
    goto LABEL_23;
  }

  [v29 frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  if (v24)
  {
LABEL_15:
    v64 = v5;
    v42 = *(v25 + 16);
    if (!v42)
    {
LABEL_20:
      v47 = [v66 navigationController];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 navigationBar];

        [v49 frame];
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;

        v68.origin.x = v51;
        v68.origin.y = v53;
        v68.size.width = v55;
        v68.size.height = v57;
        MaxY = CGRectGetMaxY(v68);
      }

      else
      {
        MaxY = 0.0;
      }

      v59 = v64;
      v69.origin.x = v31;
      v69.origin.y = v33;
      v69.size.width = v35;
      v69.size.height = v37;
      MinY = CGRectGetMinY(v69);
      v61 = [v66 collectionView];
      if (v61)
      {
        v62 = v61;

        [v62 setContentOffset:1 animated:{0.0, MinY - MaxY}];

        (*(v3 + 8))(v59, v65);
        return;
      }

      goto LABEL_33;
    }

    v43 = 0;
    while (v43 < *(v25 + 16))
    {
      v44 = [v66 collectionView];
      if (!v44)
      {
        goto LABEL_30;
      }

      v45 = v44;
      ++v43;
      sub_10075E08C();
      v46 = sub_10075E02C().super.isa;
      (*(v3 + 8))(v8, v65);
      [v45 scrollToItemAtIndexPath:v46 atScrollPosition:0 animated:1];

      if (v42 == v43)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_28;
  }

  v38 = [v66 collectionView];
  if (v38)
  {
    v39 = v38;
    [v38 contentOffset];
    v41 = v40;

    v67.origin.x = v31;
    v67.origin.y = v33;
    v67.size.width = v35;
    v67.size.height = v37;
    if (CGRectGetMinY(v67) < v41)
    {
      goto LABEL_15;
    }

LABEL_23:
    (*(v3 + 8))(v5, v65);

    return;
  }

LABEL_34:
  __break(1u);
}

void (*sub_1006E7CDC(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAC48;
}

uint64_t (*sub_1006E7D40(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EAC08;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8C1C;
}

unint64_t sub_1006E7DD0@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  swift_allocObject();
  v3 = sub_100760F0C();
  a1[3] = &type metadata for ProductPageGridProvider;
  result = sub_1006EABB4();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1006E7E50@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1006EB020(&qword_100965B38, type metadata accessor for ProductDiffablePageViewController, &unk_100799ED0);
  v2 = sub_10076A6BC();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10076A6AC();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000CD08(v18, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460, &unk_100786820);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10049CD38((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v19, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460, &unk_100786820);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_10049CD38((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10076A6DC();
  v10 = type metadata accessor for ProductPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_10000A570(v17, v16);
  sub_10000A570(v16, v15);

  v11 = sub_1007697CC();
  sub_10000CD74(v16);
  result = sub_10000CD74(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_1006E8164@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ProductPageShelfLayoutSpacingProvider;
  result = sub_1006EAB60();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1006E8198()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for ProductPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1006EB020(&qword_100965B48, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1006EB020(&qword_100965B88, type metadata accessor for ProductPageShelfSupplementaryProvider, &unk_10079E0E0);

  return v2;
}

uint64_t sub_1006E8298()
{
  swift_getObjectType();
  sub_1006EB020(&qword_100965B38, type metadata accessor for ProductDiffablePageViewController, &unk_100799ED0);
  sub_10076A6DC();
  type metadata accessor for ProductPageItemSupplementaryViewProvider();
  v0 = swift_allocObject();
  sub_10000A570(v3, v0 + 16);
  type metadata accessor for ProductPageSeparatorItemSupplementaryProvider();
  v1 = swift_allocObject();
  sub_100012498(v3, v1 + 16);
  *(v0 + 56) = v1;
  sub_1006EB020(&qword_100965B80, type metadata accessor for ProductPageItemSupplementaryViewProvider, &unk_1007847CC);
  return v0;
}

id sub_1006E8394()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006DF0F0();
  sub_10076A43C();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10076A40C();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10076A42C();
  }

  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007844F0;

  sub_1006E48CC();
  type metadata accessor for UberedCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  swift_weakAssign();

  v5 = sub_1006EB020(&qword_100944C58, type metadata accessor for UberedCollectionElementsObserver, &unk_1007B0994);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *&v0[qword_1009654F8];
  v7 = sub_1006EB020(&qword_100965B20, type metadata accessor for ProductPageExtensionBannerScrollObserver, &unk_10079DFC4);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8 = sub_1006E47E8();
  v9 = sub_1006EB020(&qword_100965B28, type metadata accessor for ProductTopLockupCollectionElementsObserver, &unk_10079E8AC);
  *(v3 + 64) = v8;
  *(v3 + 72) = v9;
  v10 = *&v1[qword_10099E370];
  type metadata accessor for ProductMediaCollectionElementsObserver();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = v10;
  v12 = sub_1006EB020(&qword_100965B30, type metadata accessor for ProductMediaCollectionElementsObserver, &unk_100789858);
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  sub_1006EB020(&qword_100965B38, type metadata accessor for ProductDiffablePageViewController, &unk_100799ED0);
  swift_retain_n();

  sub_10076A6DC();
  sub_1006EB020(&qword_100965B40, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_1006EB020(&qword_100965B48, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver(0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + qword_10094FA90) = 0;
  swift_unknownObjectWeakAssign();
  sub_10000A570(v25, v13 + qword_10094FA88);

  v14 = sub_10076AEEC();
  sub_10000CD74(v25);
  *(v3 + 96) = v14;
  *(v3 + 104) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = &off_1008A05E8;
  swift_unknownObjectWeakAssign();
  v16 = sub_1006EB020(&qword_100946580, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver, &unk_1007A115C);
  *(v3 + 112) = v15;
  *(v3 + 120) = v16;
  v17._rawValue = v3;
  sub_10076A3FC(v17);

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100783C60;
  sub_10000A5D4(&qword_100965B50, &qword_1007B45E0);
  swift_allocObject();
  swift_retain_n();
  v19 = sub_10076A80C();
  v20 = sub_100071820(&qword_100965B58, &qword_100965B50, &qword_1007B45E0, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v21 = swift_allocObject();
  *(v21 + 16) = 3;
  v22 = sub_1006EB020(&qword_100942498, type metadata accessor for BackgroundConfigurationCollectionElementsObserver, &unk_10078B764);
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  sub_10076A6DC();
  sub_10076848C();

  result = [v1 collectionView];
  if (result)
  {
    sub_10076AF7C();
    swift_allocObject();
    *(v18 + 64) = sub_10076AF6C();
    *(v18 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v24._rawValue = v18;
    sub_10076A3FC(v24);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1006E8A04(uint64_t a1)
{
  sub_10076AEFC();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  sub_10076A96C();
  return swift_dynamicCastClass() != 0;
}

void sub_1006E8A5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_10000A5D4(&qword_100965B18, &unk_1007B45D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  sub_100737DA8(a1);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v9 + 96))(v11, v8);
    sub_1006E8D00(*v11);
    if (*(v1 + qword_1009A32F0) == 1)
    {
      v12 = qword_1009A32F8;
      if ((*(v1 + qword_1009A32F8) & 1) == 0)
      {
        v13 = sub_1007694CC();
        if (v13)
        {
          v14 = v13;
          *(v2 + v12) = 1;
          v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
          sub_10076F64C();
          sub_10076FC1C();
          sub_100263BF0(v14, 1, v15, v7);

          (*(v5 + 8))(v7, v4);
        }
      }
    }

    sub_1006E90AC();
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

void sub_1006E8D00(uint64_t a1)
{
  v17 = a1;
  v2 = sub_10076F08C();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076F0CC();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075FEFC();
  v18 = v1;
  sub_1006E3310(v8);
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v9 = sub_10077068C();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1006EAAF0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008A06D8;
  v11 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006EB020(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v11);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  v12 = v18;
  sub_1006E9730();
  v13 = *(v12 + qword_1009654D8);
  if (v13)
  {
    v14 = v13;
    v15 = sub_10076626C();
    if (v15)
    {
    }

    [v14 setHidden:v15 == 0];
  }

  if (sub_10076628C() && (v16 = sub_10076B25C(), , v16))
  {

    sub_1006E9860();
  }

  else
  {
    sub_1006E9C68();
  }
}

void sub_1006E90AC()
{
  v32 = sub_10075D59C();
  __chkstk_darwin(v32);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_10076B96C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007619EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076952C())
  {
    v31 = v0;
    sub_100762D9C();
    if (swift_dynamicCastClass())
    {
      sub_100762D5C();
      sub_1007619FC();

      if ((*(v10 + 88))(v12, v9) != enum case for ShareSheetData.Metadata.product(_:))
      {

        (*(v10 + 8))(v12, v9);
        return;
      }

      (*(v10 + 96))(v12, v9);
      sub_1007683EC();
      v13 = sub_10076B92C();
      v15 = v14;
      (*(v6 + 8))(v8, v5);
      if (!sub_10076838C() || (v16 = sub_10076742C(), v18 = v17, , !v18))
      {
        v20 = v15;
        goto LABEL_19;
      }

      v19 = v16 == 0x656C646E7562 && v18 == 0xE600000000000000;
      v20 = v15;
      if (v19)
      {
      }

      else
      {
        v21 = sub_10077167C();

        if ((v21 & 1) == 0)
        {
LABEL_19:

          sub_100762D5C();
          sub_1007619DC();

          v23 = sub_10075DB7C();
          (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
          v24 = sub_1007683DC();
          sub_10044DF20(v13, v20, v4, v24, v25, &v36);
          v39 = v37;
          v40[0] = v36;
          v35 = _swiftEmptyArrayStorage;
          sub_1000B8A4C(v40, v34);
          sub_1000B8A4C(&v39, v34);
          sub_1006EB020(&qword_100947160, &type metadata accessor for AppEntityVisualState, &protocol conformance descriptor for AppEntityVisualState);

          sub_10000A5D4(&qword_100947168, &qword_1007893B0);
          sub_100071820(&qword_100947170, &qword_100947168, &qword_1007893B0, &protocol conformance descriptor for [A]);
          sub_1007712CC();
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v26 = objc_allocWithZone(sub_10076D00C());
          sub_10044CF28();
          v27 = sub_10076CFFC();
          v28 = [v31 view];
          if (v28)
          {
            v29 = v28;

            sub_100770B8C();

            sub_1000B8AFC(v40);
            sub_1000B8AFC(&v39);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }

      *&v36 = v13;
      *(&v36 + 1) = v15;
      *&v34[0] = 0x2D656C646E7562;
      *(&v34[0] + 1) = 0xE700000000000000;
      *&v34[0] = sub_10077014C();
      *(&v34[0] + 1) = v22;
      sub_1007700BC();

      v20 = *(&v34[0] + 1);
      v13 = *&v34[0];
      goto LABEL_19;
    }
  }
}

double sub_1006E96C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006E47E8();

    sub_10038F7C4();
  }

  return result;
}

void sub_1006E9730()
{
  if (*(v0 + qword_1009654C8) != 1)
  {
LABEL_7:
    v5 = [v0 collectionView];
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v1 = [v0 view];
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_13;
  }

  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v0 collectionView];
  if (!v5)
  {
    return;
  }

LABEL_8:
  v6 = v5;
  [v5 frame];
  [v6 setFrame:?];
}

void sub_1006E9860()
{
  v1 = v0;
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1009A3310;
  v8 = *&v1[qword_1009A3310];
  if (v8)
  {
    v9 = *&v1[qword_1009A3310];
  }

  else
  {
    (*(v3 + 104))(v6, enum case for SystemImage.speakerSlashFill(_:), v2, v4);
    v10 = sub_10076046C();
    (*(v3 + 8))(v6, v2);
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v10 style:0 target:0 action:0];

    v9 = v11;
    v29._object = 0x80000001007D5CA0;
    v29._countAndFlagsBits = 0xD00000000000002BLL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1007622EC(v29, v31);
    v12 = sub_10076FF6C();

    [v9 setTitle:v12];

    v30._countAndFlagsBits = 0xD00000000000002CLL;
    v30._object = 0x80000001007D5CD0;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    sub_1007622EC(v30, v32);
    v13 = sub_10076FF6C();

    [v9 setAccessibilityLabel:v13];

    [v9 setHidden:1];
    v14 = *&v1[v7];
    *&v1[v7] = v9;

    v8 = 0;
  }

  v15 = v8;
  v16 = [v1 navigationItem];
  v17 = [v16 rightBarButtonItems];

  if (v17 && (sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr), v18 = sub_1007701BC(), v17, v28 = v9, __chkstk_darwin(v19), *(&v27 - 2) = &v28, v20 = sub_1001A5D04(sub_1006EAAF8, (&v27 - 4), v18), , (v20 & 1) == 0))
  {
    v21 = [v1 navigationItem];
    v22 = [v21 rightBarButtonItems];

    if (v22)
    {
      v23 = sub_1007701BC();
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    v28 = v23;
    v24 = v9;
    sub_10077019C();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v25 = [v1 navigationItem];
    isa = sub_1007701AC().super.isa;

    [v25 setRightBarButtonItems:isa];
  }

  else
  {
  }
}

void sub_1006E9C68()
{
  v1 = *&v0[qword_1009A3310];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3 && (sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr), v4 = sub_1007701BC(), v3, v5 = sub_1000C3BD8(v13, v4), v7 = v6, , (v7 & 1) == 0))
    {
      v8 = [v0 navigationItem];
      v9 = [v8 rightBarButtonItems];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1007701BC();

        if (v11)
        {
          v12.super.isa = sub_1007701AC().super.isa;
        }

        else
        {
          v12.super.isa = 0;
        }

        [v8 setRightBarButtonItems:v12.super.isa];
      }

      else
      {
        [v8 setRightBarButtonItems:0];
      }
    }
  }
}

void sub_1006E9E34()
{
  if (*(*&v0[qword_100965508] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1006E9ED4(uint64_t result)
{
  *(v1 + qword_10099E380) = result;
  if (result)
  {
    *(v1 + qword_1009A32E8) = 1;
  }

  return result;
}

void sub_1006E9EFC()
{
  *(v0 + qword_1009654C8) = 1;
  *(sub_1006E47E8() + 72) = 1;

  sub_1006E9730();
}

void sub_1006E9F44()
{
  *(v0 + qword_1009654C8) = 0;
  *(sub_1006E47E8() + 72) = 0;

  sub_1006E9730();
}

uint64_t sub_1006E9F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10075DB7C();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100964140, &unk_1007869B0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v32 - v20;
  sub_10005C684(a1, v11, v19);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_10005C6E8(v11, v22);
LABEL_9:
    v27 = 0;
    return v27 & 1;
  }

  v23 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
  sub_100050DA4(&v11[*(v23 + 48)], v21);
  sub_100765E7C();
  v24 = *(v6 + 48);
  sub_100016E2C(v17, v8, &unk_1009435D0, &qword_100785850);
  sub_100016E2C(v21, &v8[v24], &unk_1009435D0, &qword_100785850);
  v25 = v33;
  v26 = *(v33 + 48);
  if (v26(v8, 1, v4) != 1)
  {
    sub_100016E2C(v8, v14, &unk_1009435D0, &qword_100785850);
    if (v26(&v8[v24], 1, v4) != 1)
    {
      v29 = v32;
      (*(v25 + 32))(v32, &v8[v24], v4);
      sub_1006EB020(&qword_100944C38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v30 = v25;
      v27 = sub_10076FF1C();
      v31 = *(v30 + 8);
      v31(v29, v4);
      sub_10000CFBC(v17, &unk_1009435D0, &qword_100785850);
      sub_10000CFBC(v21, &unk_1009435D0, &qword_100785850);
      v31(v14, v4);
      sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
      return v27 & 1;
    }

    sub_10000CFBC(v17, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v21, &unk_1009435D0, &qword_100785850);
    (*(v25 + 8))(v14, v4);
    goto LABEL_8;
  }

  sub_10000CFBC(v17, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(v21, &unk_1009435D0, &qword_100785850);
  if (v26(&v8[v24], 1, v4) != 1)
  {
LABEL_8:
    sub_10000CFBC(v8, &unk_100964140, &unk_1007869B0);
    goto LABEL_9;
  }

  sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1006EA43C(void *a1, __n128 a2)
{
  v3 = sub_10076F13C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v35[0]) = 0;
  *&v17[0] = a1;
  *(v17 + 8) = 0u;
  *(&v17[1] + 8) = 0u;
  BYTE8(v17[2]) = 0;
  __asm { FMOV            V0.2D, #10.0 }

  v18 = _Q0;
  v19 = _Q0;
  v20 = 15;
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v12 = a1;
  *v6 = sub_10077068C();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  LOBYTE(a1) = sub_10076F16C();
  result = (*(v4 + 8))(v6, v3);
  if (a1)
  {
    v24 = xmmword_100950008;
    v25 = xmmword_100950018;
    v21 = xmmword_10094FFD8;
    v22 = xmmword_10094FFE8;
    v23 = xmmword_10094FFF8;
    v29 = v17[2];
    v30 = v18;
    v31 = v19;
    v27 = v17[0];
    v28 = v17[1];
    v33[0] = xmmword_10094FFD8;
    v33[1] = xmmword_10094FFE8;
    v33[3] = xmmword_100950008;
    v33[4] = xmmword_100950018;
    v26 = qword_100950028;
    v32 = v20;
    v34 = qword_100950028;
    v33[2] = xmmword_10094FFF8;
    sub_100016E2C(&v21, v35, &unk_1009505F0, &qword_1007A2110);
    xmmword_10094FFF8 = v29;
    xmmword_100950008 = v30;
    xmmword_100950018 = v31;
    qword_100950028 = v32;
    xmmword_10094FFD8 = v27;
    xmmword_10094FFE8 = v28;
    sub_10000CFBC(v33, &unk_1009505F0, &qword_1007A2110);
    v16[3] = sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    v16[0] = v12;
    v14 = v12;
    sub_1001F9960(v17, v35);
    sub_10076953C();
    sub_10000CFBC(v16, &unk_1009434C0, &qword_100783F60);
    v35[2] = xmmword_10094FFF8;
    v35[3] = xmmword_100950008;
    v35[4] = xmmword_100950018;
    v35[0] = xmmword_10094FFD8;
    v35[1] = xmmword_10094FFE8;
    xmmword_10094FFD8 = v21;
    xmmword_10094FFE8 = v22;
    xmmword_10094FFF8 = v23;
    xmmword_100950008 = v24;
    v36 = qword_100950028;
    xmmword_100950018 = v25;
    qword_100950028 = v26;
    sub_10000CFBC(v35, &unk_1009505F0, &qword_1007A2110);
    return sub_1001F99BC(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006EA730(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  sub_1006EA43C(v4, v5);
}

double sub_1006EA798()
{

  return result;
}

double sub_1006EA858(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for ProductDiffablePageViewController(uint64_t a1)
{
  result = qword_100965538;
  if (!qword_100965538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006EAA60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1006EAAD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1006EAB60()
{
  result = qword_100965B90;
  if (!qword_100965B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100965B90);
  }

  return result;
}

unint64_t sub_1006EABB4()
{
  result = qword_100965B98;
  if (!qword_100965B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100965B98);
  }

  return result;
}

uint64_t sub_1006EAD34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006EADB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006EAE08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006EB020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006EB15C(void *a1, void *a2, char a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 snapshotViewAfterScreenUpdates:0];

    if (v8)
    {
      v9 = [a1 tabBar];
      [v9 frame];
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      x = v44.origin.x;
      v37 = v44.origin.x;
      v14 = CGRectGetHeight(v44);
      v15 = 0.0;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectOffset(v45, 0.0, v14);
      v35 = v46.origin.y;
      v36 = v46.origin.x;
      v33 = v46.size.height;
      v34 = v46.size.width;
      v16 = a3 & 1;
      if (a3)
      {
        v17 = y;
      }

      else
      {
        x = v46.origin.x;
        v17 = v46.origin.y;
      }

      if (a3)
      {
        v18 = width;
      }

      else
      {
        v18 = v46.size.width;
      }

      if (a3)
      {
        v19 = height;
      }

      else
      {
        v19 = v46.size.height;
      }

      if (a3)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (a3)
      {
        v15 = 1.0;
      }

      v21 = [objc_allocWithZone(UIView) initWithFrame:{x, v17, v18, v19}];
      [v21 setClipsToBounds:1];
      [v21 addSubview:v8];
      [v8 setAlpha:v15];
      [v21 bounds];
      MaxY = CGRectGetMaxY(v47);
      [v8 bounds];
      v23 = MaxY - CGRectGetHeight(v48);
      [v8 frame];
      [v8 setFrame:{0.0, v23}];
      [v9 setHidden:1];

      v24 = [a2 containerView];
      [v24 addSubview:v21];

      v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v20 curve:0 animations:0.233333333];
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v16;
      *(v26 + 32) = v36;
      *(v26 + 40) = v35;
      *(v26 + 48) = v34;
      *(v26 + 56) = v33;
      *(v26 + 64) = v37;
      *(v26 + 72) = y;
      *(v26 + 80) = width;
      *(v26 + 88) = height;
      *(v26 + 96) = v8;
      v42 = sub_1006EB5A0;
      v43 = v26;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10009AEDC;
      v41 = &unk_1008A0EA8;
      v27 = _Block_copy(&aBlock);
      v28 = v21;
      v29 = v8;

      [v25 addAnimations:v27];
      _Block_release(v27);
      v30 = swift_allocObject();
      *(v30 + 16) = v9;
      *(v30 + 24) = v16;
      v42 = sub_1006EB69C;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10017722C;
      v41 = &unk_1008A0EF8;
      v31 = _Block_copy(&aBlock);
      v32 = v9;

      [v25 addCompletion:v31];
      _Block_release(v31);
      [v25 startAnimation];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006EB560()
{

  return _swift_deallocObject(v0, 104, 7);
}

id sub_1006EB5A0()
{
  v1 = *(v0 + 96);
  if (*(v0 + 24))
  {
    v2 = (v0 + 32);
  }

  else
  {
    v2 = (v0 + 64);
  }

  v3 = *v2;
  if (*(v0 + 24))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 72);
  }

  v5 = *v4;
  if (*(v0 + 24))
  {
    v6 = (v0 + 48);
  }

  else
  {
    v6 = (v0 + 80);
  }

  v7 = *v6;
  if (*(v0 + 24))
  {
    v8 = (v0 + 56);
  }

  else
  {
    v8 = (v0 + 88);
  }

  if (*(v0 + 24))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  [*(v0 + 16) setFrame:{v3, v5, v7, *v8}];

  return [v1 setAlpha:v9];
}

double sub_1006EB64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1006EB664()
{

  return _swift_deallocObject(v0, 25, 7);
}

double InAppMessagesMetricsEventRecorder.withDecorator(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1000167E0(v5, v4);

  return result;
}

double InAppMessagesMetricsEventRecorder.record(_:on:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3[2];
  if (v4)
  {
    v5 = v3[3];
    v6 = objc_allocWithZone(AMSMetricsEvent);
    sub_10001CE50(v4, v5);

    v7 = sub_10076FF6C();

    v8 = [v6 initWithTopic:v7];

    v9 = v3[4];
    if (v9)
    {
      v10 = v3[5];

      v11 = v9(v8);
      sub_1000167E0(v9, v10);
    }

    else
    {
      v11 = v8;
    }

    sub_10076F8CC();
    isa = sub_10076FE3C().super.isa;

    [v11 addPropertiesWithDictionary:isa];

    v15 = [v11 underlyingDictionary];
    v16 = sub_10076FE4C();

    sub_1006EBA70(v16);
    v18 = v17;

    if (v18)
    {
      v19 = objc_allocWithZone(IAMFigaroEvent);
      v20 = sub_10076FE3C().super.isa;

      v21 = [v19 initWithFigaroEventProperties:v20];

      v4(v21);
    }

    else
    {
    }

    return sub_1000167E0(v4, v5);
  }

  else
  {
    if (qword_10093FF70 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_10099E8C0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }

  return result;
}

void sub_1006EBA70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A5D4(&qword_100948BC8, &qword_1007B7590);
    v2 = sub_1007715DC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_10008C3EC(*(a1 + 48) + 40 * v11, v27);
    sub_10000CD08(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_10008C3EC(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_10000CD08(v25 + 8, v20);
    sub_1006EBE28(v24);
    v21 = v18;
    sub_10000CD64(v20, v22);
    v12 = v21;
    sub_10000CD64(v22, v23);
    sub_10000CD64(v23, &v21);
    v13 = sub_100561E0C(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_10000CD74(v9);
      sub_10000CD64(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_10000CD64(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_1006EBE28(v24);
}

uint64_t *InAppMessagesMetricsEventRecorder.deinit()
{
  sub_1000167E0(v0[2], v0[3]);
  sub_1000167E0(v0[4], v0[5]);
  return v0;
}

uint64_t InAppMessagesMetricsEventRecorder.__deallocating_deinit()
{
  sub_1000167E0(v0[2], v0[3]);
  sub_1000167E0(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_1006EBE28(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100965E30, &qword_1007B47C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006EBE90()
{
  result = qword_100950AE8;
  if (!qword_100950AE8)
  {
    type metadata accessor for SmallContactCardCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950AE8);
  }

  return result;
}

double sub_1006EBEE8()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v4 = sub_1006EBFCC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1006EBFCC()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076CB3C();
  sub_10076460C();
  sub_10076C2FC();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_10076460C();
  sub_10076C24C();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_10076461C();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, "init");
  sub_10076CB0C();
  v13 = v12;

  return v13;
}

void sub_1006EC184(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v6 = sub_10075E77C();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10076BF6C();
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = sub_10076BB5C();
  if (v18)
  {
  }

  v38 = v14;
  v33 = v9;
  v19 = sub_10076BB5C();
  if (!v19)
  {
    sub_10075E66C();
    v20 = sub_10076BB5C();

    if (!v20)
    {
      goto LABEL_11;
    }

    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:

    sub_10076BFCC();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_100760B7C();

    sub_10002CBB4(&v40);
    goto LABEL_11;
  }

  v20 = v19;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v36 = v8;
  v21 = *(a4 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);

  [v21 contentMode];
  sub_10076BFCC();
  v22 = *(a4 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
  sub_10076BF7C();
  sub_10075FCCC();
  [v22 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_1000325F0();
    sub_100770D5C();
  }

  sub_10075FB8C();
  sub_10075FD2C();
  sub_10000D7F8();
  sub_100760B8C();

  v8 = v36;
LABEL_11:
  sub_10075E66C();
  v23 = sub_10076BB5C();

  if (!v23)
  {
LABEL_18:

    return;
  }

  if (!v18)
  {

    goto LABEL_18;
  }

  v32 = v20;
  sub_10075E6FC();
  sub_10076BF7C();
  v24 = v33;
  v25 = v37;
  (*(v33 + 104))(v11, enum case for Artwork.Style.roundedRect(_:), v37);
  v26 = v11;
  sub_10076BF2C();
  v27 = *(v24 + 8);
  v27(v26, v25);
  v27(v17, v25);
  sub_10075E70C();
  sub_10075E70C();
  sub_10076BF1C();
  if (a4)
  {
    v28 = a4;
    v29 = v27;
    v36 = v8;
    v30 = v28;
    [*(v28 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView) contentMode];
    sub_10076BFCC();
    v31 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v31 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();

    v29(v38, v37);
    (*(v34 + 8))(v36, v35);
  }

  else
  {
    sub_10076BFCC();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_100760B7C();

    sub_10002CBB4(&v40);
    v27(v38, v25);
    (*(v34 + 8))(v8, v35);
  }
}

void *sub_1006EC764(double a1, double a2)
{
  v2 = sub_10076BF6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  __chkstk_darwin(v9);
  v19 = &v18 - v10;
  v20 = sub_10075E77C();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  if (sub_10076BB5C())
  {
    sub_10076BFCC();

    sub_10077019C();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v13 = v21;
  }

  sub_10075E66C();
  v14 = sub_10076BB5C();

  if (v14)
  {
    sub_10075E6FC();
    sub_10076BF7C();
    (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
    v15 = v19;
    sub_10076BF2C();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v8, v2);
    sub_10075E70C();
    sub_10075E70C();
    sub_10076BF1C();
    sub_10076BFCC();

    sub_10077019C();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v16(v15, v2);
    (*(v18 + 8))(v12, v20);
    return v21;
  }

  return v13;
}

double sub_1006ECB3C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076997C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007644DC();
  sub_1006ECF5C(&qword_100954798, &type metadata accessor for PreorderDisclaimer, &protocol conformance descriptor for PreorderDisclaimer);
  sub_10076332C();
  if (!v20[0])
  {
    return 0.0;
  }

  v18 = v0;
  v19 = v5;
  v8 = sub_1007644CC();
  v17[1] = v9;
  v17[2] = v8;
  sub_10005312C();
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  sub_10000A61C(v10, qword_1009A1480);
  swift_getKeyPath();
  sub_10076338C();

  v11 = v20[0];
  sub_100770B3C();

  v12 = sub_10076C04C();
  v20[3] = v12;
  v20[4] = sub_1006ECF5C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v13 = sub_10000DB7C(v20);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
  sub_10076C90C();
  sub_10000CD74(v20);
  sub_10076996C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v1 + 8))(v3, v18);
  swift_getKeyPath();
  sub_10076338C();

  sub_1006ECF5C(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  sub_10076D2AC();
  v15 = v14;
  swift_unknownObjectRelease();

  (*(v19 + 8))(v7, v4);
  return v15;
}

uint64_t sub_1006ECF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double UITextView.firstBaselineFromTop.getter()
{
  v1 = [v0 layoutManager];
  [v1 baselineOffsetForGlyphAtIndex:0];
  v3 = v2;

  return v3;
}

CGFloat UITextView.lastBaselineFromBottom.getter()
{
  v1 = [v0 layoutManager];
  v2 = [v0 textContainer];
  [v1 usedRectForTextContainer:v2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMaxY(*&v11);
}

id WebViewController.protocolDelegate.getter()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WebViewController.protocolDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1006ED2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10076533C();
  sub_10076F64C();
  sub_10076FC1C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate] = v19;
  sub_1000200B4();
  sub_10076FC1C();
  v5 = v19;
  sub_10076148C();
  sub_10076FC1C();
  v6 = sub_10076147C();
  v7 = [v19 ams_activeiTunesAccount];
  v18.receiver = v3;
  v18.super_class = type metadata accessor for WebViewController();
  v8 = objc_msgSendSuper2(&v18, "initWithBag:account:clientInfo:", v6, v7, 0);
  swift_unknownObjectRelease();

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 tableViewAppearance];
  [v10 setAppearance:v11];

  [v10 setDelegate:v10];
  sub_10075DB1C(v12);
  v14 = v13;
  v15 = [v10 loadURL:v13];

  v16 = sub_10075DB7C();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v10;
}

id WebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

void sub_1006ED6CC(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  v7 = [objc_opt_self() sharedCoordinator];
  [v7 *a3];
}

void sub_1006ED760(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WebViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

void WebViewController.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_10076532C();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006EDDF0;
  aBlock[3] = &unk_1008A0F20;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

{
  v7 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_10076531C();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006EDDF0;
  aBlock[3] = &unk_1008A0F48;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

double sub_1006ED8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1006EDA64(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    v6 = sub_10075DA3C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, a1);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006EDD7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1006EDDF4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10075F9EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E66C();
  v10 = sub_10076BB6C();
  v12 = v11;

  if (v12)
  {
    v26 = a4;
    v27 = v4;
    v28._countAndFlagsBits = 0x465F4E4F5F444441;
    v28._object = 0xEE005050415F524FLL;
    v29._object = 0x80000001007D1F20;
    v29._countAndFlagsBits = 0xD000000000000031;
    sub_1007622EC(v28, v29);
    sub_10000A5D4(&qword_100966CF0, qword_100795350);
    v14 = swift_allocObject();
    v25 = xmmword_100783DD0;
    *(v14 + 16) = xmmword_100783DD0;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000A9040();
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;

    sub_10076FFCC();
    v16 = v15;

    v17 = sub_10075E62C();
    if (v17)
    {
      v18 = v17;
      sub_10000A5D4(&qword_100959B78, &qword_1007A6E08);
      inited = swift_initStackObject();
      v24[1] = v16;
      v20 = inited;
      *(inited + 16) = v25;
      *(inited + 32) = v10;
      v21 = inited + 32;
      *(inited + 40) = v12;
      *(inited + 48) = v18;
      *(inited + 56) = v26;
      (*(v7 + 104))(v9, enum case for StyledText.MediaType.plainText(_:), v6);
      sub_10075F9FC();
      swift_allocObject();

      v22 = sub_10075F9BC();
      sub_10050C274(v22, 0, v20);

      swift_setDeallocating();
      sub_1006EE0F4(v21);
    }

    else
    {

      (*(v7 + 104))(v9, enum case for StyledText.MediaType.plainText(_:), v6);
      sub_10075F9FC();
      swift_allocObject();
      v23 = sub_10075F9BC();
      sub_10050C274(v23, 0, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_1006EE0F4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100959B80, &qword_1007A6E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006EE15C(int a1, int a2)
{
  v66 = a2;
  v3 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v3 - 8);
  v4 = sub_10076C2DC();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  __chkstk_darwin(v4);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v8 - 8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v57 - v11;
  __chkstk_darwin(v12);
  v63 = v57 - v13;
  __chkstk_darwin(v14);
  v62 = v57 - v15;
  __chkstk_darwin(v16);
  v61 = v57 - v17;
  __chkstk_darwin(v18);
  v59 = v57 - v19;
  __chkstk_darwin(v20);
  v57[5] = v57 - v21;
  __chkstk_darwin(v22);
  v57[4] = v57 - v23;
  __chkstk_darwin(v24);
  *&v58 = v57 - v25;
  __chkstk_darwin(v26);
  v57[3] = v57 - v27;
  __chkstk_darwin(v28);
  v57[2] = v57 - v29;
  __chkstk_darwin(v30);
  v57[1] = v57 - v31;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v37 = *(sub_10076C20C() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v69 = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007844F0;
  v60 = v39;
  v71 = v39 + v38;
  v70 = a1;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  else
  {
    v40 = 0x4000000000000000;
  }

  v74 = v40;
  sub_10001E290();
  sub_10076C29C();
  v74 = 0x4020000000000000;
  sub_10001E290();
  sub_10076C29C();
  v74 = 0x4020000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v46 = *(v73 + 104);
  v68 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v73 += 104;
  v67 = v46;
  v46(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  if (v70)
  {
    v48 = 0x3FF0000000000000;
  }

  else
  {
    v48 = 0x4000000000000000;
  }

  v74 = v48;
  sub_10076C29C();
  v74 = 0x4024000000000000;
  sub_10076C29C();
  v74 = 0x4024000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  if (v70)
  {
    v50 = 0x4000000000000000;
  }

  else
  {
    v50 = 0x4008000000000000;
  }

  v74 = v50;
  sub_10076C29C();
  if (v66)
  {
    v51 = 12.0;
  }

  else
  {
    v51 = 20.0;
  }

  v74 = *&v51;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  v58 = left;
  sub_10076C1CC();
  if (v70)
  {
    v52 = 0x4000000000000000;
  }

  else
  {
    v52 = 0x4010000000000000;
  }

  v74 = v52;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  sub_1007704BC();
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  if (v70)
  {
    v53 = 0x4008000000000000;
  }

  else
  {
    v53 = 0x4014000000000000;
  }

  v74 = v53;
  sub_10076C29C();
  if (v66)
  {
    v54 = 12.0;
  }

  else
  {
    v54 = 24.0;
  }

  v74 = *&v54;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  if (v70)
  {
    v55 = 0x4008000000000000;
  }

  else
  {
    v55 = 0x4018000000000000;
  }

  v74 = v55;
  sub_10076C29C();
  v74 = *&v54;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v60;
}

uint64_t sub_1006EED30()
{

  return swift_deallocClassInstance();
}

void sub_1006EED78()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v4 = sub_100770D2C();
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView];
  v6 = sub_100770D2C();
  [v5 setBackgroundColor:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 addSubview:v5];

  v9 = [v1 traitCollection];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v10 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = sub_1007706CC();

    if (v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
  {
    goto LABEL_7;
  }

LABEL_5:

LABEL_8:
  sub_1006F014C();
}

void sub_1006EEF48()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v16, "didReceiveMemoryWarning");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_6;
  }

  v5 = sub_1007706CC();

  if (v5)
  {
    return;
  }

LABEL_6:
  v6 = *&v1[v3];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = sub_10077158C();
  if (v7)
  {
LABEL_8:
    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController;

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);

        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v12 = *&v1[v8];
      if (!v12)
      {
        goto LABEL_19;
      }

      sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      v13 = v11;
      v14 = v12;
      v15 = sub_100770EEC();

      if ((v15 & 1) == 0)
      {
        v11 = *(v10 + 56);
LABEL_19:
        *(v10 + 56) = 0;

        goto LABEL_11;
      }

LABEL_10:

LABEL_11:
      if (v7 == ++v9)
      {

        return;
      }
    }
  }
}

void sub_1006EF178(uint64_t a1)
{
  v2 = v1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v45, "traitCollectionDidChange:", a1);
  v4 = &qword_100965000;
  v5 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments;
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  v7 = &selRef_initWithTabBarSystemItem_tag_;
  v8 = v6 >> 62;
  if (!a1)
  {
    if (v8)
    {
      goto LABEL_45;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    while (1)
    {
LABEL_16:
      v13 = [v2 v7[274]];
      v14 = *&v2[v4[478]];
      if (v14 >> 62)
      {
        if (sub_10077158C() >= 4)
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
      {
        goto LABEL_18;
      }

      v15 = sub_1007706CC();

      if (v15)
      {
        sub_1006EFBC4();
        v16 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl;
        v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl];
        if (v17)
        {
          [v17 removeFromSuperview];
          v18 = *&v2[v16];
        }

        else
        {
          v18 = 0;
        }

        *&v2[v16] = 0;

        goto LABEL_50;
      }

LABEL_23:
      v44 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController];
      v19 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (v20 >> 62)
      {
        v4 = sub_10077158C();
        if (!v4)
        {
LABEL_48:
          v34 = v44;
LABEL_49:
          *&v2[v19] = _swiftEmptyArrayStorage;

          sub_1006F014C();
          sub_1006F020C();
          goto LABEL_50;
        }
      }

      else
      {
        v4 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_48;
        }
      }

      v42 = v19;
      v7 = (v20 & 0xC000000000000001);
      v43 = v44;

      v21 = 0;
      while (1)
      {
        if (v7)
        {
          v22 = sub_10077149C();
        }

        else
        {
          if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v22 = *(v20 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (!v44 || (sub_100016F40(0, &qword_1009453B0, UIViewController_ptr), v25 = v43, v26 = v23, v27 = sub_100770EEC(), v26, v25, (v27 & 1) == 0))
        {
          v28 = [v23 parentViewController];
          if (v28)
          {
            v29 = v28;
            sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
            v30 = v2;
            v31 = sub_100770EEC();

            if (v31)
            {
              if ([v23 isViewLoaded])
              {
                v32 = [v23 view];
                if (!v32)
                {
                  goto LABEL_61;
                }

                v33 = v32;
                [v32 removeFromSuperview];
              }

              [v23 willMoveToParentViewController:0];
              [v23 removeFromParentViewController];
            }
          }
        }

        ++v21;
        if (v24 == v4)
        {

          v19 = v42;
          v34 = v43;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      if (sub_10077158C())
      {
        goto LABEL_50;
      }
    }
  }

  if (v8)
  {
    if (sub_10077158C() > 3)
    {
      goto LABEL_4;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > 3)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = sub_1007706CC();
LABEL_10:
  v10 = [v2 traitCollection];
  v11 = *&v2[v5];
  if (v11 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
LABEL_12:

      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
    goto LABEL_12;
  }

  v12 = sub_1007706CC() & 1;

  if ((v9 & 1) != v12)
  {
    goto LABEL_16;
  }

LABEL_50:
  v35 = sub_1006F0458();
  v36 = [v2 childViewControllers];
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v37 = sub_1007701BC();

  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_52;
    }

LABEL_59:

    return;
  }

  v38 = sub_10077158C();
  if (!v38)
  {
    goto LABEL_59;
  }

LABEL_52:
  if (v38 >= 1)
  {
    for (i = 0; i != v38; ++i)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = sub_10077149C();
      }

      else
      {
        v40 = *(v37 + 8 * i + 32);
      }

      v41 = v40;
      [v2 setOverrideTraitCollection:v35 forChildViewController:v40];
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_1006EF77C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments;
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v8 >> 62)
  {
    v9 = sub_10077158C();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 4)
  {
    v10 = sub_1007706CC();

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (a1 != -1)
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController;
    v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 parentViewController];
      if (v14)
      {
        v15 = v14;
        sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
        v16 = v3;
        v17 = sub_100770EEC();

        if (v17)
        {
          if ([v13 isViewLoaded])
          {
            v18 = [v13 view];
            if (!v18)
            {
LABEL_41:
              __break(1u);
              return;
            }

            v19 = v18;
            [v18 removeFromSuperview];
          }

          [v13 willMoveToParentViewController:0];
          [v13 removeFromParentViewController];
        }
      }

      v20 = *&v3[v11];
      *&v3[v11] = 0;
    }
  }

LABEL_15:
  if (a2 == -1)
  {
    goto LABEL_32;
  }

  v21 = *&v3[v7];
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = sub_10077149C();

    v24 = *(v22 + 56);
    if (v24)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = *(v21 + 8 * a2 + 32);

  v24 = *(v22 + 56);
  if (v24)
  {
LABEL_20:
    v25 = v24;
    goto LABEL_24;
  }

LABEL_23:
  v26 = (*(v22 + 40))(v23);
  v27 = *(v22 + 56);
  *(v22 + 56) = v26;
  v25 = v26;

  v24 = 0;
LABEL_24:
  v28 = v24;
  v29 = [v25 parentViewController];
  if (!v29 || (v30 = v29, sub_100016F40(0, &qword_1009453B0, UIViewController_ptr), v31 = v3, v32 = sub_100770EEC(), v30, v31, (v32 & 1) == 0))
  {
    [v3 addChildViewController:v25];
    v33 = [v3 view];
    if (!v33)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v34 = v33;
    v35 = [v25 view];
    if (!v35)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = v35;
    [v34 addSubview:v35];

    swift_getObjectType();
    v37 = swift_conformsToProtocol2();
    if (v37 && v25)
    {
      v38 = v37;
      ObjectType = swift_getObjectType();
      v40 = *(v38 + 16);
      v41 = v3;
      v42 = v25;
      v40(v3, &off_1008A1010, ObjectType, v38);
    }
  }

  v43 = sub_1006F0458();
  [v3 setOverrideTraitCollection:v43 forChildViewController:v25];

  v44 = *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController] = v25;

LABEL_32:
  [*&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl] setSelectedSegmentIndex:a2];
  v45 = [v3 view];
  if (!v45)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v46 = v45;
  [v45 bringSubviewToFront:*&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView]];
}

void sub_1006EFBC4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    v48 = v2;
    v5 = sub_10077158C();
    v2 = v48;
    if (v5 >= 4)
    {
LABEL_3:

      goto _objc_release_x1;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= 4)
    {
      goto LABEL_3;
    }
  }

  v49 = v2;
  v6 = sub_1007706CC();

  if (v6)
  {
    v7 = *&v1[v3];
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = &selRef_initWithTabBarSystemItem_tag_;
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v5 = sub_10077158C();
    v8 = v5;
    v9 = &selRef_initWithTabBarSystemItem_tag_;
    if (v5)
    {
LABEL_10:
      if (v8 >= 1)
      {
        v46 = v7 & 0xC000000000000001;
        v47 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers;

        v10 = 0;
        v44 = xmmword_100785D70;
        v45 = v3;
        while (1)
        {
          if (v46)
          {
            v11 = sub_10077149C();
          }

          else
          {
            v11 = *(v7 + 8 * v10 + 32);
          }

          v50 = v10;
          v12 = *(v11 + 56);
          if (v12)
          {
            v13 = *(v11 + 56);
          }

          else
          {
            v14 = (*(v11 + 40))();
            v15 = *(v11 + 56);
            *(v11 + 56) = v14;
            v13 = v14;

            v12 = 0;
          }

          v16 = v12;
          v17 = [v13 parentViewController];
          if (!v17 || (v18 = v17, sub_100016F40(0, &qword_1009453B0, UIViewController_ptr), v19 = v1, v20 = sub_100770EEC(), v18, v19, (v20 & 1) == 0))
          {
            [v1 addChildViewController:{v13, v44}];
            v5 = [v1 v9[279]];
            if (!v5)
            {
              goto LABEL_43;
            }

            v21 = v5;
            v5 = [v13 v9[279]];
            if (!v5)
            {
              goto LABEL_44;
            }

            v22 = v5;
            [v21 addSubview:v5];

            swift_getObjectType();
            v23 = swift_conformsToProtocol2();
            if (v23 && v13)
            {
              v24 = v23;
              ObjectType = swift_getObjectType();
              v26 = v8;
              v27 = v9;
              v28 = v7;
              v29 = *(v24 + 16);
              v30 = v1;
              v31 = v13;
              v29(v1, &off_1008A1010, ObjectType, v24);
              v7 = v28;
              v9 = v27;
              v8 = v26;
              v3 = v45;
            }
          }

          v32 = [v1 traitCollection];
          v33 = *&v1[v3];
          v34 = v47;
          if (v33 >> 62)
          {
            if (sub_10077158C() >= 4)
            {
LABEL_27:

LABEL_31:
              v39 = [v1 traitCollection];
              goto LABEL_32;
            }
          }

          else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
          {
            goto LABEL_27;
          }

          v35 = sub_1007706CC();

          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

          sub_10000A5D4(&unk_100942870, &qword_100784460);
          v36 = swift_allocObject();
          *(v36 + 16) = v44;
          *(v36 + 32) = [v1 traitCollection];
          v37 = objc_opt_self();
          *(v36 + 40) = [v37 traitCollectionWithHorizontalSizeClass:1];
          sub_100016F40(0, &qword_100944E30, UITraitCollection_ptr);
          isa = sub_1007701AC().super.isa;

          v39 = [v37 traitCollectionWithTraitsFromCollections:isa];

          v34 = v47;
LABEL_32:
          [v1 setOverrideTraitCollection:v39 forChildViewController:v13];

          swift_beginAccess();
          v40 = v13;
          sub_10077019C();
          if (*((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
          swift_endAccess();

          v10 = v50 + 1;

          if (v8 == v50 + 1)
          {

            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
_objc_release_x1:
      _objc_release_x1(v5, v2);
      return;
    }

LABEL_36:
    v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl];
    if (v41)
    {
      v42 = v41;
      v5 = [v1 v9[279]];
      if (!v5)
      {
        goto LABEL_45;
      }

      v43 = v5;
      [v5 bringSubviewToFront:v42];
    }
  }
}

void sub_1006F014C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl;
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl))
  {
    v2 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v2 addTarget:v0 action:"takeSelectedIndexFrom:" forControlEvents:4096];
    [*(v0 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView) addSubview:v2];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_1006F020C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl);
  if (v1)
  {
    v9 = v1;
    [v9 removeAllSegments];
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments);
    v8 = v0;
    if (v2 >> 62)
    {
      goto LABEL_21;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = sub_10077149C();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v3 = sub_10077158C();
            goto LABEL_4;
          }

          v6 = *(v2 + 8 * v4 + 32);

          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_15;
          }
        }

        if (*(v6 + 24))
        {

          v5 = sub_10076FF6C();
        }

        else
        {
          v5 = 0;
        }

        [v9 insertSegmentWithTitle:v5 atIndex:v4 animated:{0, v8}];

        ++v4;
      }

      while (v7 != v3);
    }

    [v9 setSelectedSegmentIndex:*(v8 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedIndex)];
  }
}

id sub_1006F0458()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v3 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_7;
  }

  v4 = sub_1007706CC();

  if (v4)
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100785D70;
    *(v5 + 32) = [v1 traitCollection];
    v6 = objc_opt_self();
    *(v5 + 40) = [v6 traitCollectionWithHorizontalSizeClass:1];
    sub_100016F40(0, &qword_100944E30, UITraitCollection_ptr);
    isa = sub_1007701AC().super.isa;

    v8 = [v6 traitCollectionWithTraitsFromCollections:isa];

    return v8;
  }

LABEL_7:
  v10 = [v1 traitCollection];

  return v10;
}

void sub_1006F05EC()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SegmentedViewController();
  v46.receiver = v0;
  v46.super_class = v6;
  objc_msgSendSuper2(&v46, "viewWillLayoutSubviews");
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 bounds];
  v45 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 pageMarginInsets];
  v17 = v16;
  v44 = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  [v21 layoutFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v47.origin.x = v23;
  v47.origin.y = v25;
  v47.size.width = v27;
  v47.size.height = v29;
  MinY = CGRectGetMinY(v47);
  v31 = v45;
  v33 = sub_1006F09A4(v45, v11, v13, v15, MinY, v17, v32, v44);
  v35 = v34;
  v36 = [v1 traitCollection];
  LOBYTE(v21) = sub_1007706EC();

  v37 = 0.0;
  if (v21)
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v38 = sub_10076D9AC();
    sub_10000A61C(v38, qword_1009A2350);
    sub_10076D17C();
    sub_10076D40C();
    v37 = v39;
    (*(v3 + 8))(v5, v2);
  }

  v40 = [v1 traitCollection];
  v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v41 >> 62)
  {
    v42 = sub_10077158C();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 < 4)
  {
    v43 = sub_1007706CC();

    if (v43)
    {
      sub_1006F0EC8(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
      return;
    }
  }

  else
  {
  }

  sub_1006F0D30(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
}

double sub_1006F09A4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v32 = a8;
  v33 = a5;
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  Width = CGRectGetWidth(v34);
  v19 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerView);
  if (v19)
  {
    v20 = v19;
    [v20 sizeThatFits:{a3, a4, *&v32, *&v33}];
    v22 = v21;
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetWidth(v35);
    sub_100770A4C();
    [v20 setFrame:?];

    v23 = v22 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl);
  if (v24)
  {
    v25 = v24;
    if ([v25 numberOfSegments] < 2)
    {
      [v25 setHidden:1];
    }

    else
    {
      v26 = v25;
      [v26 setHidden:0];
      [v26 sizeThatFits:{a3, a4}];
      v28 = v27;
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      CGRectGetWidth(v36);
      sub_100770A4C();
      [v26 setFrame:?];

      v23 = v23 + v28;
    }
  }

  if (v23 >= COERCE_DOUBLE(1))
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v29 = sub_10076D9AC();
    sub_10000A61C(v29, qword_1009A2350);
    sub_10076D17C();
    sub_10076D40C();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetMinX(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetMinY(v38);
  v30 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView);
  sub_100770A4C();
  [v30 setFrame:?];
  return Width;
}

void sub_1006F0D30(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController];
  if (v9)
  {
    v18 = v9;
    v19 = [v18 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 setFrame:{a1, a2, a3, a4}];

    v21 = [v18 contentScrollView];
    if (v21)
    {
      v22 = v21;
      if ([v21 contentInsetAdjustmentBehavior] != 2)
      {
        [v22 setContentInset:{a5, a6, a7, a8}];
        [v22 setScrollIndicatorInsets:{a5, a6, a7, a8}];
      }

      v23 = v22;
      [v8 setContentScrollView:v23 forEdge:15];
    }
  }

  *&v8[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_multipleScrollObserver] = 0;

  v24 = &v8[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v24 = 0;
  v24[8] = 1;

  sub_1006F1590();
}

void sub_1006F0EC8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  [v8 pageMarginInsets];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  sub_10010F994(v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers;
  swift_beginAccess();
  v38 = v8;
  if (*&v8[v14] >> 62)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v33 = v14;
    v15 = *&v38[v14];
    v16 = v15 >> 62 ? sub_10077158C() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v16)
    {
      break;
    }

LABEL_20:

    v26 = *&v38[v33];
    v14 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v27 = sub_10077158C();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = 0;
    while (1)
    {
      if (v27 == v28)
      {

        sub_1006F13C8(_swiftEmptyArrayStorage);

        return;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_10077149C();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [v29 contentScrollView];

      ++v28;
      if (v32)
      {
        sub_10077019C();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v28 = v31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_10077158C();
  }

  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = sub_10077149C();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v20 = *(v15 + 8 * v17 + 32);
    }

    v19 = v20;
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_36;
    }

    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetMinX(v40);
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    CGRectGetMinY(v41);
    v42.origin.x = a1;
    v42.origin.y = a2;
    v42.size.width = a3;
    v42.size.height = a4;
    CGRectGetHeight(v42);
    v21 = [v19 view];
    if (!v21)
    {
      break;
    }

    v22 = v21;
    sub_100770A4C();
    [v22 setFrame:?];

    v23 = [v19 contentScrollView];
    if (v23)
    {
      v24 = v23;
      if ([v23 contentInsetAdjustmentBehavior] != 2)
      {
        [v24 contentInset];
        [v24 setContentInset:{a5, a6, a7, a8}];
        [v24 setScrollIndicatorInsets:{a5, a6, a7, a8}];
        [v24 contentOffset];
        [v24 setContentOffset:?];
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v18 = [v25 collectionViewLayout];
        [v18 invalidateLayout];
      }

      else
      {
        v18 = v19;
        v19 = v24;
      }
    }

    ++v17;
    if (v14 == v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_1006F13C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!sub_10077158C())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  type metadata accessor for MultipleScrollObserver();
  v3 = swift_allocObject();
  v3[2] = a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[3] = sub_1006F1B0C;
  v3[4] = v4;

  sub_1000167E0(0, 0);

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_multipleScrollObserver) = v3;
}

void sub_1006F14C0(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress], v5 = Strong[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress + 8], Strong, v5 != 1))
  {
    if (v4 == a2)
    {
      return;
    }
  }

  else if (a2 == 1.79769313e308)
  {
    return;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = v6 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress;
    *v8 = a2;
    *(v8 + 8) = 0;
    sub_1006F1590();
  }
}

void sub_1006F1590()
{
  v1 = v0[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress + 8];
  if (v1)
  {
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  v5 = [v0 navigationItem];
  [v5 _manualScrollEdgeAppearanceProgress];
  v7 = v6;

  if (v7 != v4)
  {
    v8 = [v0 navigationItem];
    [v8 _setManualScrollEdgeAppearanceProgress:v4];
  }

  v9 = [v0 navigationItem];
  v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = [v0 navigationItem];
    [v11 _setManualScrollEdgeAppearanceEnabled:v1 ^ 1u];
  }
}

id sub_1006F1700(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerView] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedIndex] = -1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_multipleScrollObserver] = 0;
  v7 = &v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl] = 0;
  if (a2)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SegmentedViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1006F1890(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedIndex] = -1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_multipleScrollObserver] = 0;
  v4 = &v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SegmentedViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1006F19BC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SegmentedViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1006F1AD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1006F1B14(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v5 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    return a1;
  }

  v6 = sub_1007706CC();

  if (v6)
  {
    [v2 pageMarginInsets];
    v8 = v7;
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = sub_1007706CC();

    if (v12)
    {
      [v2 pageContainerSize];
      sub_1006D502C(v13, v14);
      v17 = v15 + v15 + sub_10010F994(v16);
    }

    else
    {
      [v2 pageMarginInsets];
      v19 = v18;
      v21 = v20;
      [v2 pageContainerSize];
      v17 = v22 - v19 - v21;
    }

    v23 = a1 - v8;
    v24 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers;
    swift_beginAccess();
    v25 = *&v2[v24];
    if (v25 >> 62)
    {
      v26 = sub_10077158C();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v23 - v10;
    if (v26 >= 1)
    {
      return a1 / v26 - v17 / v26;
    }
  }

  return a1;
}

void sub_1006F1D48()
{
  v1 = [v0 viewControllers];
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v2 = sub_1007701BC();

  if (v2 >> 62)
  {
    v3 = sub_10077158C();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
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
      v5 = sub_10077149C();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    type metadata accessor for CategoryListViewController(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = (v8 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler);
      v11 = *(v8 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler);
      v12 = v10[1];
      *v10 = sub_1006F3A34;
      v10[1] = v9;

      sub_1000167E0(v11, v12);
    }

    else
    {
    }
  }

LABEL_13:
}

void sub_1006F1EE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler];
    if (v5)
    {
      v6 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler + 8];
      sub_10001CE50(*&Strong[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler], v6);

      v5(a1);
      sub_1000167E0(v5, v6);
    }

    else
    {
    }
  }
}

void sub_1006F20C8()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 contentScaleFactor];
    v5 = v4;

    [v1 setScale:v5];
    [v1 setPreferredRange:1];
    v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v1 format:{22.0, 22.0}];
    v10[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1004CD72C;
    v10[3] = &unk_1008A1098;
    v7 = _Block_copy(v10);

    v8 = [v6 imageWithActions:v7];

    _Block_release(v7);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage];
      *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage] = v8;

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1006F23D8(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  sub_100760BDC();
}

id sub_1006F260C(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = sub_10075E11C();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076FF6C();
  v10 = [a1 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v11 = objc_allocWithZone(UITableViewCell);
    v12 = sub_10076FF6C();
    v10 = [v11 initWithStyle:0 reuseIdentifier:v12];
  }

  v13 = [v10 imageView];
  if (v13)
  {
    v14 = v13;
    v15 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage);
    [v14 setImage:v15];
  }

  v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_dataSource);
  v36[1] = a2;
  sub_10075E07C();
  sub_10075E0FC();
  sub_10000CF78((v16 + 16), *(v16 + 40));
  v17 = sub_10076972C();
  v36[0] = *(v6 + 8);
  (v36[0])(v8, v37);
  if (v17)
  {
    v18 = [v10 imageView];
    if (v18)
    {
      v19 = v18;
      v20 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage);
      [v19 setImage:v20];
    }

    sub_10076BFCC();
    v21 = [v10 imageView];
    if (v21)
    {
      v38 = v21;
      sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
      sub_10040DAF8();
      sub_10077140C();
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
    }

    *(swift_allocObject() + 16) = v10;
    v24 = v10;
    sub_100760B7C();

    sub_10000CFBC(v39, &qword_100943310, &unk_100784150);
  }

  else
  {
    v22 = [v10 imageView];
    if (v22)
    {
      v23 = v22;
      [v22 setImage:0];
    }
  }

  v25 = [v10 textLabel];
  if (v25)
  {
    v26 = v25;
    sub_10075E07C();
    sub_10075E0FC();
    sub_10000CF78((v16 + 16), *(v16 + 40));
    sub_10076971C();
    v28 = v27;
    (v36[0])(v8, v37);
    if (v28)
    {
      v29 = sub_10076FF6C();
    }

    else
    {
      v29 = 0;
    }

    [v26 setText:v29];
  }

  sub_10075E07C();
  sub_10075E0FC();
  sub_10000CF78((v16 + 16), *(v16 + 40));
  v30 = sub_1007696FC();
  v31 = v37;
  v32 = v36[0];
  (v36[0])(v8, v37);
  if (v30)
  {
    [v10 setAccessoryType:1];
  }

  else
  {
    sub_10075E07C();
    sub_10075E0FC();
    sub_10000CF78((v16 + 16), *(v16 + 40));
    v33 = sub_10076973C();
    v32(v8, v31);
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    [v10 setAccessoryType:v34];
  }

  return v10;
}

uint64_t type metadata accessor for CategoryListViewController(uint64_t a1)
{
  result = qword_1009660F0;
  if (!qword_1009660F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006F3030(uint64_t a1, uint64_t a2)
{
  result = sub_10075E11C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006F30EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10075F65C();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100765F6C();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100766EDC();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076F4FC();
  __chkstk_darwin(v12 - 8);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_10076C15C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v24 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v30 = &v50 - v29;
  v63 = a2;
  if (a1)
  {
    [v3 setModalPresentationStyle:{7, v28}];
    v31 = [v3 popoverPresentationController];
    [v31 setBarButtonItem:a1];

    v32 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v30, 1, v32) == 1)
    {
      v34 = v30;
      return sub_10000CFBC(v34, &unk_100943200, &unk_100785840);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v38 = *(v21 + 104);
    v51 = v23;
    v38(v23, enum case for FlowPage.viewController(_:), v20);
    v39 = sub_10075DB7C();
    v40 = *(*(v39 - 8) + 56);
    v50 = v19;
    v40(v19, 1, 1, v39);
    v41 = sub_10076096C();
    (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
    v65 = ObjectType;
    v64 = v3;
    v42 = v3;
    sub_10076F4DC();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v43 = sub_10075F5EC();
    sub_100263C24(v43, 1, v63, v30);

    return (*(v33 + 8))(v30, v32);
  }

  else
  {
    v35 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v26, 1, v35) == 1)
    {
      v34 = v26;
      return sub_10000CFBC(v34, &unk_100943200, &unk_100785840);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v44 = *(v21 + 104);
    v51 = v23;
    v44(v23, enum case for FlowPage.viewController(_:), v20);
    v45 = sub_10075DB7C();
    v46 = *(*(v45 - 8) + 56);
    v50 = v19;
    v46(v19, 1, 1, v45);
    v47 = sub_10076096C();
    (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
    v65 = ObjectType;
    v64 = v3;
    v48 = v3;
    sub_10076F4DC();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v49 = sub_10075F5EC();
    sub_100263C24(v49, 1, v63, v26);

    return (*(v36 + 8))(v26, v35);
  }
}

uint64_t sub_1006F39FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1006F3A3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_dataSource];
  sub_10075E07C();
  sub_10075E0FC();
  sub_10000CF78((v6 + 16), *(v6 + 40));
  v7 = sub_1007696FC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_artworkLoader];
    swift_unknownObjectRetain();

    sub_10075E07C();
    sub_10075E0FC();
    v10 = sub_1006F9FE0(v6, v9, v5, objc_allocWithZone(ObjectType));
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler + 8];
    v13 = &v10[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    v14 = *&v10[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    v15 = *&v10[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler + 8];
    *v13 = v11;
    v13[1] = v12;
    sub_10001CE50(v11, v12);
    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v10 animated:1];
    }
  }

  else
  {
    v19 = &v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    if (v20)
    {
      v21 = v19[1];

      sub_10075E07C();
      sub_10075E0FC();
      v20(v5);
      v22 = sub_1000167E0(v20, v21);
      (v8)(v5, v2, v22);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
    v23 = *v19;
    v24 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    return sub_1000167E0(v23, v24);
  }

  return result;
}

uint64_t sub_1006F3CBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1006F3CF4(uint64_t a1)
{
  v3 = [*(v1 + 16) imageView];
  [v3 setImage:a1];
}

double sub_1006F3D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_1006F3D74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100763E9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076D3DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v15, qword_1009A0D78);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_100941538 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v11, qword_100966170);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v5[v19] = sub_1001AB12C(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_100941540 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100966188];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_1006F4160()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763E9C();
  sub_10000DB18(v4, qword_100966170);
  v18 = sub_10000A61C(v4, qword_100966170);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v16 = sub_10000A61C(v5, qword_1009A0D78);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_10076D9AC();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v19);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100763E7C();
}

id sub_1006F44C4()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_100966188 = result;
  return result;
}

void sub_1006F463C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  sub_10076422C();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = *&v0[v2];
  sub_10076422C();
  MinX = CGRectGetMinX(v17);
  sub_10076422C();
  [v10 setFrame:{MinX, CGRectGetMidY(v18) + v9 * -0.5, v7, v9}];

  v12 = &v0[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    sub_1000167E0(v13, v14);
  }
}

void sub_1006F47EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v24);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076C84C();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10076C83C(), , v13))
      {
        sub_1007696EC();
        if (swift_dynamicCastClass())
        {
          sub_1007696DC();
          sub_1007606FC();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_100269504(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_1007660EC();

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

    else
    {
    }
  }
}

double sub_1006F4C40(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1006F4CA0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1006F4D38()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1006F4D94(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_1006F4E54(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_1006F51EC;
}

unint64_t sub_1006F4F20()
{
  result = qword_10095A2A8;
  if (!qword_10095A2A8)
  {
    sub_1007696EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A2A8);
  }

  return result;
}

double sub_1006F4F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v8 == 7)
  {
    goto LABEL_5;
  }

  switch(a5)
  {
    case 6u:
      if (v8 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v8 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v8 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v8 != a5 || (v8 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v9 = [v5 traitCollection];
  if (v7 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v9 layoutDirection];
  sub_1007708DC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = sub_1007696DC();
  sub_10068A7F8(v19, a2);

  return result;
}

uint64_t sub_1006F5134()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006F516C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006F51A4()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1006F51F8()
{
  v1 = v0;
  v2 = sub_100763E9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v6, qword_1009A0D78);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_100941538 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v2, qword_100966170);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *(v1 + v10) = sub_1001AB12C(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_100941540 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100966188];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  sub_10077156C();
  __break(1u);
}

double sub_1006F54E8()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v5 = sub_1006F5610(v4);
  (*(v1 + 8))(v3, v0);
  return v5;
}

double sub_1006F5610(__n128 a1)
{
  v1 = sub_100763E2C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10076460C();
  sub_10076C24C();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_10076461C();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v21.receiver = v14;
  v21.super_class = v13;
  v16 = objc_msgSendSuper2(&v21, "init");
  if (qword_10093FF90 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v1, qword_100953B80);
  __chkstk_darwin(v17);
  *(&v21 - 2) = v16;
  sub_10076C13C();

  sub_10076462C();
  sub_100763E4C();
  sub_1006F5948(&qword_100962EB8, &type metadata accessor for ArcadeFooterLayout, &protocol conformance descriptor for ArcadeFooterLayout);
  sub_10076DBDC();
  v19 = v18;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v4, v1);
  return v19;
}

uint64_t sub_1006F5948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006F5994(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

id sub_1006F59F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_10076C36C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10076C38C();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    sub_10076C31C();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    sub_10076C31C();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_1006F5D5C(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_isPresenterLoaded] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents;
  v6 = [objc_allocWithZone(UISegmentedControl) init];
  v7 = sub_10000A5D4(&qword_1009663A0, &unk_1007B4DC0);
  v8 = objc_allocWithZone(v7);
  *&v8[qword_100966310] = v6;
  v32.receiver = v8;
  v32.super_class = v7;
  v9 = v6;
  v10 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v10 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v9;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 addSubview:v14];

  *&v2[v5] = v10;
  v15 = &v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  *v15 = 0;
  v15[8] = 1;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectCategoryViewController] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_objectGraph] = a2;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_artworkLoader] = v31;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_presenter] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TopChartsDiffablePageViewController();

  v16 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_100769D6C();
  if (v17)
  {
    v18 = sub_10076FF6C();
  }

  else
  {
    v18 = 0;
  }

  [v16 setTitle:v18];

  v19 = v16;
  v20 = [v19 navigationItem];
  [v20 setLargeTitleDisplayMode:2];

  v21 = *(*&v19[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents] + qword_100966310);
  sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v21;

  v24 = sub_100770F1C();
  [v23 addAction:v24 forControlEvents:{4096, 0, 0, 0, sub_1006F9FD8, v22, v30.receiver, v30.super_class}];

  v25 = [v19 navigationItem];
  v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v25 setStandardAppearance:v26];

  v27 = [v19 navigationItem];
  v28 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v27 setScrollEdgeAppearance:v28];

  return v19;
}

void sub_1006F61B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents;
    v5 = [*(*(Strong + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents) + qword_100966310) selectedSegmentIndex];
    v6 = &v3[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v8 = v3[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
    *v6 = v5;
    v6[8] = 0;
    [*(*&v3[v4] + qword_100966310) setSelectedSegmentIndex:v5];
    if (v8)
    {
      sub_1006F8A44();
    }

    else
    {
      sub_1006F90EC(v5, v7);
    }
  }
}

id sub_1006F62B8()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v11);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = result;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_1009413F0 != -1)
  {
    swift_once();
  }

  sub_10076C33C();
  (*(v3 + 8))(v8, v2);
  sub_10076C21C();
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  return (v22 > 1.0);
}

id sub_1006F65FC()
{
  v1 = v0;
  v39 = sub_10000A5D4(&qword_1009663E8, &qword_1007B4DF0);
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v31 - v3;
  v38 = sub_10000A5D4(&qword_1009663F0, &qword_1007B4DF8);
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v31 - v6;
  v8 = sub_10000A5D4(&qword_1009663F8, &qword_1007B4E00);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v31 - v9;
  v10 = type metadata accessor for TopChartsDiffablePageViewController();
  v42.receiver = v0;
  v42.super_class = v10;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  sub_1006F59F4(0, 0, 1);
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v32 = v8;
    v33 = v7;
    v34 = v5;
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v13 = sub_100770D2C();
    [v12 setBackgroundColor:v13];

    v35 = v10;
    v41 = v10;
    v40[0] = v1;
    v14 = v1;
    v15 = sub_10076FF6C();
    v16 = v41;
    if (v41)
    {
      v17 = sub_10000CF78(v40, v41);
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = sub_10077165C();
      (*(v18 + 8))(v21, v16);
      sub_10000CD74(v40);
    }

    else
    {
      v22 = 0;
    }

    v23 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v15 style:0 target:v22 action:"showCategoriesFor:"];

    swift_unknownObjectRelease();
    v24 = *&v14[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    *&v14[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton] = v23;

    v25 = *&v14[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents];
    [v25 setAutoresizingMask:18];
    [v25 sizeToFit];
    v26 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v25];
    [v26 _setContentViewMarginType:0];
    v27 = [v14 navigationItem];
    v28 = v26;
    [v27 _setBottomPalette:v28];

    swift_unknownObjectWeakAssign();
    sub_1006F8244();

    sub_10076847C();
    sub_10000A5D4(&qword_100966400, &qword_1007B4E08);
    sub_1006FB610(&qword_100966408, &qword_100966400, &qword_1007B4E08);
    sub_10076F45C();
    v29 = v36;
    sub_10076F46C();

    sub_10000CD74(v40);
    (*(v37 + 8))(v29, v32);
    sub_100769D4C();
    sub_10000A5D4(&qword_100966410, &qword_1007B4E10);
    sub_1006FB610(&qword_100966418, &qword_100966410, &qword_1007B4E10);
    sub_10076F45C();
    v30 = v33;
    sub_10076F46C();

    sub_10000CD74(v40);
    (*(v34 + 8))(v30, v38);
    sub_100769D5C();
    sub_10000A5D4(&qword_100966420, &qword_1007B4E18);
    sub_1006FB610(&qword_100966428, &qword_100966420, &qword_1007B4E18);
    sub_10076F45C();
    sub_10076F46C();

    sub_10000CD74(v40);
    return (*(v2 + 8))(v4, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1006F6CB8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006FB74C;
}

uint64_t (*sub_1006F6D1C(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006FB728;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8C1C;
}

uint64_t (*sub_1006F6DAC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006FB69C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006FB6F8;
}

id sub_1006F709C(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
  if (!v2)
  {
    return sub_1006F8390();
  }

  v3 = v2;
  result = [v3 view];
  if (result)
  {
    v5 = result;
    result = [v1 view];
    if (result)
    {
      v6 = result;
      [result bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v5 setFrame:{v8, v10, v12, v14}];
      return sub_1006F8390();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006F7378(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v16 = sub_1006FB5FC;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006F5994;
    v15 = &unk_1008A13E8;
    v9 = _Block_copy(&v12);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1006FB608;
    v17 = v10;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006F5994;
    v15 = &unk_1008A1410;
    v11 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v9 completion:v11];
    _Block_release(v11);
    _Block_release(v9);
  }
}

void sub_1006F754C(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1006F59F4(*&a1, *&a2, 0);
  }
}

void sub_1006F75BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006F8244();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1006F8390();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1006F8A44();
  }
}

void sub_1006F76E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100769CEC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.completed(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v11)
    {
      [v11 setEnabled:1];
    }

    sub_1006FA218();
    v12 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10076857C();

    v14 = *&v2[v12];
    *&v2[v12] = 0;

    v15 = [v2 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v60 = v18;
      v61 = v20;
      v62 = v22;
      v63 = v24;
      v64 = 0;
      sub_10076856C();
      if (sub_10076843C())
      {
        sub_10076366C();
      }

      sub_10076842C();

      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.error(_:))
  {
    (*(v6 + 96))(v9, v5);
    v25 = *v9;
    v26 = v9[1];
    v27 = v9[2];
    sub_1006FA310(v25);
    sub_1000167E0(v26, v27);

    return;
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.started(_:))
  {
    sub_10076842C();
    sub_10076DE3C();
    v28 = objc_allocWithZone(sub_10076DE6C());
    v29 = sub_10076DE5C();
    v30 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v31 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10076857C();

    v32 = *&v2[v30];
    *&v2[v30] = v29;
    v33 = v29;

    v34 = [v2 view];
    if (!v34)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v35 = v34;
    [v34 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v60 = v37;
    v61 = v39;
    v62 = v41;
    v63 = v43;
    v64 = 0;
    sub_10076856C();

    v44 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v44)
    {
      [v44 setEnabled:0];
    }
  }

  else
  {
    v45 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v46 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10076857C();

    v47 = *&v2[v45];
    *&v2[v45] = 0;

    v48 = [v2 view];
    if (!v48)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v49 = v48;
    [v48 bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v60 = v51;
    v61 = v53;
    v62 = v55;
    v63 = v57;
    v64 = 0;
    sub_10076856C();
    v58 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v58)
    {
      [v58 setEnabled:1];
    }

    (*(v6 + 8))(v9, v5);
  }
}

void sub_1006F7B98(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    sub_1007714EC();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v31 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v2)
    {
      v4 = sub_10077158C();
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = *&v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_objectGraph];
    v7 = v4 & ~(v4 >> 63);
    do
    {
      if (v7 == v5)
      {
        goto LABEL_46;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v8 = *(v1 + 8 * v5 + 32);
      }

      v9 = sub_1006F62B8();
      v10 = v5++ != 0;
      v11 = sub_1006FB57C(&qword_1009663A8, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      v12 = sub_1006C7080(v6, v8, v11, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xEF746E656D676553);
      v13 = objc_allocWithZone(type metadata accessor for TopChartDiffableSegmentViewController(0));
      v13[qword_10095C000] = v9;
      v13[qword_10095C008] = v10;
      v2 = sub_100488204(v8, v12);
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (v3 != v5);
  }

  v31 = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
  v1 = *&v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v1 >> 62)
  {
    v14 = sub_10077158C();
  }

  else
  {
    v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_10077149C();
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_47;
      }

      v19 = [v16 parentViewController];
      if (v19)
      {
        v2 = v19;
        sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
        v20 = v32;
        v21 = sub_100770EEC();

        if (v21)
        {
          [v17 willMoveToParentViewController:0];
          v22 = [v17 view];
          if (!v22)
          {
            __break(1u);
            return;
          }

          v2 = v22;
          [v22 removeFromSuperview];

          [v17 removeFromParentViewController];
        }
      }

      ++v15;
    }

    while (v18 != v14);
  }

  *&v32[v30] = _swiftEmptyArrayStorage;

  sub_1006F8390();
  sub_1006F8A44();
  v30 = qword_100966310;
  v31 = *&v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents];
  [*(v31 + qword_100966310) removeAllSegments];
  v23 = sub_100769D1C();
  if (v23 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 > 1)
  {
    v24 = sub_100769D1C();
    v1 = v24;
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_35:
        v26 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v26 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v3 = sub_10077158C();
              goto LABEL_3;
            }
          }

          v2 = *(v31 + v30);
          sub_10076A25C();
          if (v29)
          {
            v27 = sub_10076FF6C();
          }

          else
          {
            v27 = 0;
          }

          [v2 insertSegmentWithTitle:v27 atIndex:v26 animated:{0, v30}];

          ++v26;
          if (v28 == v25)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_55:
    v25 = sub_10077158C();
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_56:

    if ((v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8] & 1) == 0)
    {
      [*(v31 + v30) setSelectedSegmentIndex:*&v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex]];
    }
  }

  sub_1006F8244();
}

void sub_1006F8108(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
  if (v4 && (!a2 ? (v5 = v4, v6 = 0) : (v5 = v4, v6 = sub_10076FF6C()), ([v5 setTitle:v6], v5, v6, (v7 = *&v2[v3]) != 0) && (v8 = objc_msgSend(v7, "title")) != 0))
  {

    v10 = [v2 navigationItem];
    v9 = *&v2[v3];
    [v10 setRightBarButtonItem:v9];
  }

  else
  {
    v10 = [v2 navigationItem];
    [v10 setRightBarButtonItem:0];
  }
}

void sub_1006F8244()
{
  v1 = sub_1006F62B8();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents);
  if (v1 || [*&v2[qword_100966310] numberOfSegments] <= 0 && (*(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_isPresenterLoaded) & 1) != 0)
  {
    [v2 setHidden:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setPreferredHeight:0.0];
    }
  }

  else
  {
    [v2 sizeToFit];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v2 frame];
      [v5 setPreferredHeight:CGRectGetHeight(v8)];
    }

    [v2 setHidden:0];
  }
}

id sub_1006F8390()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_10076C38C();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v10);
  v12 = &selRef_initWithTabBarSystemItem_tag_;
  result = [v1 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;

  result = [v1 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v19 = result;
  v66 = v16;
  v67 = v18;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_1009413F0 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v20 = v68;
    sub_10076C33C();
    (*(v3 + 8))(v8, v2);
    v2 = v20;
    sub_10076C31C();
    v22 = v21;
    v61 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
    v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
    v23 = v1;
    if (!(v3 >> 62))
    {
      v66 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v67 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }

    v66 = sub_10077158C();
    v3 = *&v1[v61];
    if (!(v3 >> 62))
    {
      goto LABEL_6;
    }

    v67 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_10077158C();
LABEL_7:

    if (!v24)
    {
      break;
    }

    v25 = 0;
    v64 = v3;
    v65 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v65)
      {
        v26 = sub_10077149C();
      }

      else
      {
        if (v25 >= *(v67 + 16))
        {
          goto LABEL_36;
        }

        v26 = *(v3 + 8 * v25 + 32);
      }

      v1 = v26;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = sub_1006F62B8();
      sub_10051F4E0(v28, v25 != 0);
      if (v66 == 1)
      {
        sub_10076C8BC();
      }

      sub_10076C2FC();
      v30 = v29;
      result = [v1 v12[279]];
      if (!result)
      {
        goto LABEL_44;
      }

      v31 = result;
      result = [v23 v12[279]];
      if (!result)
      {
        goto LABEL_45;
      }

      v8 = v23;
      v32 = v12;
      v33 = result;
      [result bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v69.origin.x = v35;
      v69.origin.y = v37;
      v69.size.width = v39;
      v69.size.height = v41;
      MinY = CGRectGetMinY(v69);
      v43 = v32;
      result = [v8 v32[279]];
      if (!result)
      {
        goto LABEL_46;
      }

      v44 = result;
      v23 = v8;
      [result bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v70.origin.x = v46;
      v70.origin.y = v48;
      v70.size.width = v50;
      v70.size.height = v52;
      [v31 setFrame:{v22, MinY, v30, CGRectGetHeight(v70)}];

      v2 = v8;
      if (sub_1006F62B8())
      {
        v2 = v68;
        sub_10076C2BC();
        v54 = v53;

        v22 = v22 + v30 + v54;
      }

      else
      {
      }

      ++v25;
      v12 = v43;
      v3 = v64;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_24:

  if (sub_1006F62B8())
  {
    goto LABEL_25;
  }

  v55 = &v23[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  if (v23[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8])
  {
    goto LABEL_25;
  }

  v56 = *v55;
  if (*v55 < 0)
  {
    goto LABEL_25;
  }

  v57 = *&v23[v61];
  if (v57 >> 62)
  {
    result = sub_10077158C();
    if (v56 >= result)
    {
      goto LABEL_25;
    }

LABEL_31:
    v58 = *&v23[v61];
    if ((v58 & 0xC000000000000001) != 0)
    {

      v59 = sub_10077149C();

      goto LABEL_34;
    }

    if (v56 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 8 * v56 + 32);
LABEL_34:
      v60 = [v59 collectionView];

      [v23 setContentScrollView:v60 forEdge:15];
      return (*(v62 + 8))(v68, v63);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56 < result)
  {
    goto LABEL_31;
  }

LABEL_25:
  [v23 setContentScrollView:0 forEdge:{15, v61}];
  return (*(v62 + 8))(v68, v63);
}

void sub_1006F8A44()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v55 = sub_10076C38C();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v11 >> 62)
  {
LABEL_32:
    v12 = sub_10077158C();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex;

  if (v12)
  {
    v14 = 0;
    v42 = &v1[v13];
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v11 & 0xC000000000000001;
    v51 = enum case for PageGrid.Direction.vertical(_:);
    v49 = (v3 + 16);
    v50 = (v3 + 104);
    v47 = (v9 + 1);
    v48 = (v3 + 8);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    v9 = &selRef_initWithTabBarSystemItem_tag_;
    v43 = v11;
    v44 = v12;
    v56 = v1;
    while (1)
    {
      if (v53)
      {
        v15 = sub_10077149C();
      }

      else
      {
        if (v14 >= *(v52 + 16))
        {
          goto LABEL_31;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v57 = v14 + 1;
      (*v50)(v8, v51, v2);
      v17 = [v1 v9[279]];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      [v17 bounds];

      v19 = [v1 v9[279]];
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = v19;
      [v19 safeAreaInsets];

      (*v49)(v5, v8, v2);
      if (qword_1009413F0 != -1)
      {
        swift_once();
      }

      v21 = v54;
      sub_10076C33C();
      (*v48)(v8, v2);
      v3 = v21;
      sub_10076C21C();
      v23 = v22;
      (*v47)(v21, v55);
      if (v23 > 1.0 || (v42[8] & 1) == 0 && v14 == *v42)
      {
        v24 = v16;
        v25 = [v24 parentViewController];
        v9 = &selRef_initWithTabBarSystemItem_tag_;
        if (!v25 || (v26 = v25, sub_100016F40(0, &qword_1009453B0, UIViewController_ptr), v27 = v8, v28 = v5, v29 = v2, v30 = v56, v31 = sub_100770EEC(), v26, v30, v2 = v29, v5 = v28, v8 = v27, v9 = &selRef_initWithTabBarSystemItem_tag_, (v31 & 1) == 0))
        {
          v32 = v56;
          [v56 addChildViewController:v24];
          v33 = [v32 v9[279]];
          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = v33;
          v35 = [v24 v9[279]];
          if (!v35)
          {
            goto LABEL_37;
          }

          v36 = v35;
          [v34 addSubview:v35];

          [v24 didMoveToParentViewController:v32];
        }

        v3 = [v24 v9[279]];

        v11 = v43;
        if (!v3)
        {
          goto LABEL_35;
        }

        [v3 setAlpha:1.0];

        v1 = v56;
      }

      else
      {
        v37 = [v16 parentViewController];
        v9 = &selRef_initWithTabBarSystemItem_tag_;
        v1 = v56;
        if (v37)
        {
          v38 = v37;
          sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
          v39 = v1;
          v3 = sub_100770EEC();

          v11 = v43;
          if (v3)
          {
            [v16 willMoveToParentViewController:0];
            v40 = [v16 view];
            if (!v40)
            {
              goto LABEL_38;
            }

            v3 = v40;
            [v40 removeFromSuperview];

            [v16 removeFromParentViewController];
          }
        }
      }

      ++v14;
      if (v57 == v44)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_1006F90EC(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
    v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v6 = *(v5 + 8 * a2 + 32);
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    v6 = sub_10077149C();

    v5 = *&v2[v4];
    if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_6:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v7 = *(v5 + 8 * a1 + 32);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_18:

    v25 = sub_10077149C();

    v7 = v25;
LABEL_9:
    v8 = v7;
    v9 = [v8 parentViewController];
    if (!v9 || (v10 = v9, sub_100016F40(0, &qword_1009453B0, UIViewController_ptr), v11 = v2, v12 = sub_100770EEC(), v10, v11, (v12 & 1) == 0))
    {
      [v2 addChildViewController:v8];
      v13 = [v2 view];
      if (!v13)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13;
      v15 = [v8 view];
      if (!v15)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v16 = v15;
      [v14 addSubview:v15];

      [v8 didMoveToParentViewController:v2];
    }

    v17 = [v8 view];

    if (v17)
    {
      [v17 setAlpha:0.0];

      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = v8;
      v30 = sub_1006FB4E0;
      v31 = v19;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_10009AEDC;
      v29 = &unk_1008A1370;
      v20 = _Block_copy(&v26);
      v21 = v8;
      v22 = v6;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_1006FB500;
      v31 = v23;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_1000513F0;
      v29 = &unk_1008A1398;
      v24 = _Block_copy(&v26);

      [v18 animateWithDuration:v20 animations:v24 completion:0.3];
      _Block_release(v24);
      _Block_release(v20);

      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_1006F949C(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha:0.0];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha:1.0];
}

void sub_1006F9540(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006F8A44();
  }
}

id sub_1006F9624(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1006F97D0(double a1, double a2)
{
  v3 = v2;
  v5 = sub_10076C36C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v5, v14);
  (*(v6 + 16))(v8, v11, v5);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v6 + 8))(v11, v5);
  sub_10076C2EC();
  (*(v13 + 8))(v16, v12);
  sub_100770ACC();
  [*&v3[qword_100966310] sizeThatFits:?];
  [v3 layoutMargins];
  sub_100770AEC();
  return a1;
}

double sub_1006F9A9C(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_1006F97D0(a2, a3);

  return v6;
}

void sub_1006F9AF0()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_10076C36C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_10076C38C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PaletteContentView(0, *((v3 & v2) + 0x50), v15, v16);
  v26.receiver = v1;
  v26.super_class = v17;
  objc_msgSendSuper2(&v26, "layoutSubviews");
  [v1 bounds];
  (*(v5 + 104))(v10, enum case for PageGrid.Direction.vertical(_:), v4);
  (*(v5 + 16))(v7, v10, v4);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v5 + 8))(v10, v4);
  sub_10076C2EC();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  [v1 bounds];
  sub_100770ACC();
  v21 = v20;
  [*&v1[qword_100966310] sizeThatFits:?];
  v23 = v22;
  v24 = *&v1[qword_100966310];
  [v1 layoutMargins];
  [v24 setFrame:{v19, v25, v21, v23}];
}

void sub_1006F9E44(void *a1)
{
  v1 = a1;
  sub_1006F9AF0();
}

id sub_1006F9EB4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for PaletteContentView(0, *((swift_isaMask & *v5) + 0x50), a4, a5);
  v8.receiver = v5;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "dealloc");
}

unint64_t sub_1006F9F4C()
{
  result = qword_100966398;
  if (!qword_100966398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966398);
  }

  return result;
}

uint64_t sub_1006F9FA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1006F9FE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = sub_1006FA9E0(a1, a2, a3, a4);

  return v4;
}

void sub_1006FA028()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_isPresenterLoaded) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents;
  v2 = [objc_allocWithZone(UISegmentedControl) init];
  v3 = sub_10000A5D4(&qword_1009663A0, &unk_1007B4DC0);
  v4 = objc_allocWithZone(v3);
  *&v4[qword_100966310] = v2;
  v12.receiver = v4;
  v12.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v6 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v5;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v6 addSubview:v10];

  *(v0 + v1) = v6;
  v11 = v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectCategoryViewController) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1006FA218()
{
  v1 = v0;
  sub_100769D6C();
  if (v2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v0 setTitle:v3];

  v4 = sub_100769D3C();
  v5 = &v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v7 = v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
  *v5 = v4;
  v5[8] = 0;
  [*(*&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents] + qword_100966310) setSelectedSegmentIndex:v4];
  if (v7)
  {

    sub_1006F8A44();
  }

  else
  {

    sub_1006F90EC(v4, v6);
  }
}

void sub_1006FA310(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076FA1C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F3BC();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F68C();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_100769D1C();
  if (v17 >> 62)
  {
    v45 = v5;
    v24 = sub_10077158C();
    v5 = v45;

    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
LABEL_3:
      if (qword_1009412E0 != -1)
      {
        swift_once();
      }

      v19 = sub_10076FD4C();
      sub_10000A61C(v19, qword_1009A25E8);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783C60;
      v53 = type metadata accessor for TopChartsDiffablePageViewController();
      v52[0] = v2;
      v20 = v2;
      sub_10076F30C();
      sub_10000CFBC(v52, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      swift_getErrorValue();
      v21 = v50;
      v22 = v51;
      v53 = v51;
      v23 = sub_10000DB7C(v52);
      (*(*(v22 - 8) + 16))(v23, v21, v22);
      sub_10076F32C();
      sub_10000CFBC(v52, &unk_1009434C0, &qword_100783F60);
      sub_10076FBEC();

      return;
    }
  }

  v45 = v5;
  v43 = v4;
  sub_10076DF3C();
  sub_1006FB57C(&qword_1009663B0, &type metadata accessor for TopChartsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  swift_errorRetain();

  v44 = a1;
  v25 = sub_10076DEFC();
  v26 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController;
  v27 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
  sub_10076857C();

  v28 = *&v2[v26];
  *&v2[v26] = v25;
  v29 = v25;

  v30 = [v2 view];
  if (v30)
  {
    v31 = v30;
    [v30 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v52[0] = v33;
    v52[1] = v35;
    v52[2] = v37;
    v53 = v39;
    v54 = 0;
    sub_10076856C();

    sub_100769D8C();
    v40 = sub_10075DB7C();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v16, 1, v40) == 1)
    {
      sub_10000CFBC(v16, &unk_1009435D0, &qword_100785850);
    }

    else
    {
      sub_10075DAFC();
      (*(v41 + 8))(v16, v40);
    }

    sub_100762A0C();
    swift_allocObject();
    swift_errorRetain();
    sub_1007629FC();
    sub_10076844C();
    sub_10076084C();
    sub_10076F9FC();
    sub_10076F67C();

    (*(v45 + 8))(v7, v43);
    (*(v48 + 8))(v10, v49);
    (*(v46 + 8))(v13, v47);
  }

  else
  {
    __break(1u);
  }
}

id sub_1006FA9E0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &a4[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a4[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage] = 0;
  v10 = &a4[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_dataSource];
  *v10 = a1;
  *(v10 + 1) = &off_10089CBE0;
  *&a4[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_artworkLoader] = a2;
  v11 = OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_parentIndexPath;
  v12 = sub_10075E11C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a4[v11], a3, v12);
  v18.receiver = a4;
  v18.super_class = ObjectType;

  v14 = objc_msgSendSuper2(&v18, "initWithStyle:", 0);
  v15 = [v14 navigationItem];
  v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v14 action:"dismissSelf"];
  [v15 setRightBarButtonItem:v16];

  (*(v13 + 8))(a3, v12);
  return v14;
}

void *sub_1006FAB90(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10000A5D4(&qword_1009663B8, &qword_1007B4DD0);
  __chkstk_darwin(v7 - 8);
  v53 = v45 - v8;
  v9 = sub_10000A5D4(&qword_1009663C0, &qword_1007B4DD8);
  __chkstk_darwin(v9 - 8);
  v11 = v45 - v10;
  v48 = sub_10000A5D4(&qword_1009663C8, &qword_1007B4DE0);
  __chkstk_darwin(v48);
  v13 = v45 - v12;
  v14 = sub_10075E11C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v45 - v19;
  v21 = &a3[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v57.receiver = a3;
  v57.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v57, "initWithNibName:bundle:", 0, 0, v18);
  v23 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  v47 = v22;
  v51 = v20;
  sub_10075E10C();
  v24 = a1[5];
  v54 = a1;
  sub_10000CF78(a1 + 2, v24);
  sub_10076974C();
  v25 = v53;
  sub_1006FB50C(v11, v53);
  v49 = *(v15 + 16);
  v50 = v15 + 16;
  v49(v13, v25, v14);
  v26 = *(sub_10000A5D4(&qword_1009663D0, &qword_1007B4DE8) + 36);
  sub_1006FB57C(&qword_1009663D8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  sub_10077040C();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v46 = v28;
  v28(v25, v14);
  sub_1007703DC();
  if (*&v13[v26] == v55[0])
  {
    v36 = 0;
    goto LABEL_10;
  }

  v45[1] = v27;
  v53 = sub_1006FB57C(&qword_1009663E0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v29 = 0;
  while (1)
  {
    sub_10076FEDC();
    v33 = sub_10077042C();
    v35 = *v34;
    v33(v55, 0);
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v29)
    {
      v37 = v35;
      v38 = v51;
      sub_10075E0DC(v37);
      v39 = v52;
      v49(v52, v38, v14);
      v40 = objc_allocWithZone(type metadata accessor for CategoryListViewController(0));
      v41 = v54;

      sub_1006FA9E0(v41, a2, v39, v40);

      sub_10077019C();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_8:
        sub_10077021C();
      }
    }

    else
    {
      v30 = v54;

      v31 = v52;
      sub_10075E10C();
      v32 = objc_allocWithZone(type metadata accessor for CategoryListViewController(0));
      sub_1006FA9E0(v30, a2, v31, v32);

      sub_10077019C();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_8;
      }
    }

    sub_10077025C();
    v23 = v56;
    sub_1007703DC();
    ++v29;
    if (*&v13[v26] == v55[0])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  *&v13[*(v48 + 36)] = v36;
  sub_10000CFBC(v13, &qword_1009663C8, &qword_1007B4DE0);

  v42 = v47;
  sub_10016EBE0(v23);

  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  isa = sub_1007701AC().super.isa;

  [v42 setViewControllers:isa];

  v46(v51, v14);
  return v42;
}

void sub_1006FB198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_presenter);
  sub_10075E10C();
  v25 = sub_100769D9C();
  v26 = &protocol witness table for TopChartsDiffablePagePresenter;
  *&v24 = v8;
  v9 = *(v5 + 8);

  v9(v7, v4);
  type metadata accessor for TopChartsCategoriesDataSource();
  v10 = swift_allocObject();
  sub_100012498(&v24, (v10 + 2));
  sub_100760C4C();
  swift_allocObject();

  v11 = sub_100760C2C();
  v12 = objc_allocWithZone(type metadata accessor for SelectCategoryViewController());
  v13 = sub_1006FAB90(v10, v11, v12);

  v14 = v13;
  v27._object = 0x80000001007F6520;
  v27._countAndFlagsBits = 0xD000000000000015;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1007622EC(v27, v28);
  v15 = sub_10076FF6C();

  [v14 setTitle:v15];

  v16 = (v14 + OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler);
  v17 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler);
  v18 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler + 8);
  *v16 = sub_1006FB508;
  v16[1] = v8;
  swift_retain_n();
  sub_1000167E0(v17, v18);
  sub_1006F1D48();

  v19 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton);
  v20 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_objectGraph);
  v21 = v19;
  sub_1006F30EC(v19, v20);

  v22 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectCategoryViewController);
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectCategoryViewController) = v14;
}

uint64_t sub_1006FB4A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1006FB4E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1006FB50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009663B8, &qword_1007B4DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006FB57C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006FB5C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1006FB610(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006FB664()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006FB6C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006FB794@<X0>(char *a1@<X8>)
{
  v70 = a1;
  v1 = sub_1007615AC();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007626DC();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v59 - v6;
  v8 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v8 - 8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v59 - v11;
  __chkstk_darwin(v12);
  v60 = &v59 - v13;
  __chkstk_darwin(v14);
  v62 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v61 = &v59 - v20;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_10075DB7C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10075F2FC();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F31C();
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_10075F35C();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_10000CFBC(v23, &unk_1009435D0, &qword_100785850);
      v33 = type metadata accessor for FlowDestination(0);
      return (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
    }

    v37 = *(v25 + 32);
    v37(v27, v23, v24);
    v36 = v70;
    v37(v70, v27, v24);
    v35 = type metadata accessor for FlowDestination(0);
    goto LABEL_9;
  }

  if (v32 == enum case for StoreTab.Identifier.games(_:) || v32 == enum case for StoreTab.Identifier.apps(_:))
  {
    goto LABEL_17;
  }

  if (v32 != enum case for StoreTab.Identifier.updates(_:))
  {
    if (v32 == enum case for StoreTab.Identifier.search(_:))
    {
      v36 = v70;
      *v70 = 0;
      v35 = type metadata accessor for FlowDestination(0);
      goto LABEL_9;
    }

    if (v32 == enum case for StoreTab.Identifier.arcade(_:))
    {
      v40 = sub_10075F33C();
      v41 = *(v68 + 104);
      v41(v7, enum case for EditorialPageKey.subscriber(_:), v69);
      if (*(v40 + 16) && (v42 = sub_100610310(v7), (v43 & 1) != 0))
      {
        (*(v25 + 16))(v18, *(v40 + 56) + *(v25 + 72) * v42, v24);
        v44 = *(v68 + 8);
        v44(v7, v69);

        v45 = *(v25 + 56);
        v45(v18, 0, 1, v24);
        v46 = v61;
        (*(v25 + 32))(v61, v18, v24);
        v45(v46, 0, 1, v24);
      }

      else
      {

        v44 = *(v68 + 8);
        v44(v7, v69);
        v45 = *(v25 + 56);
        v45(v18, 1, 1, v24);
        v46 = v61;
        sub_10075F35C();
        if ((*(v25 + 48))(v18, 1, v24) != 1)
        {
          sub_10000CFBC(v18, &unk_1009435D0, &qword_100785850);
        }
      }

      v48 = sub_10075F33C();
      v49 = v59;
      v41(v59, enum case for EditorialPageKey.nonSubscriber(_:), v69);
      v50 = v49;
      v51 = v62;
      if (*(v48 + 16) && (v52 = sub_100610310(v50), (v53 & 1) != 0))
      {
        v54 = v60;
        (*(v25 + 16))(v60, *(v48 + 56) + *(v25 + 72) * v52, v24);
        v44(v50, v69);

        v45(v54, 0, 1, v24);
        (*(v25 + 32))(v51, v54, v24);
        v45(v51, 0, 1, v24);
      }

      else
      {

        v44(v50, v69);
        v55 = v60;
        v45(v60, 1, 1, v24);
        sub_10075F35C();
        if ((*(v25 + 48))(v55, 1, v24) != 1)
        {
          sub_10000CFBC(v55, &unk_1009435D0, &qword_100785850);
        }
      }

      sub_100050CC0(v46, v63);
      sub_100050CC0(v51, v64);
      v56 = v65;
      sub_10076159C();
      sub_10000CFBC(v51, &unk_1009435D0, &qword_100785850);
      sub_10000CFBC(v46, &unk_1009435D0, &qword_100785850);
      v57 = *(sub_10000A5D4(&qword_1009499D0, &unk_10078C7C0) + 48);
      v36 = v70;
      *v70 = 0;
      (*(v66 + 32))(&v36[v57], v56, v67);
      v35 = type metadata accessor for FlowDestination(0);
      goto LABEL_9;
    }

    if (v32 != enum case for StoreTab.Identifier.featured(_:))
    {
      v58 = type metadata accessor for FlowDestination(0);
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      return (*(v29 + 8))(v31, v28);
    }

LABEL_17:
    sub_10000A5D4(&unk_100964150, &qword_1007869C0);
    v47 = v70;
    *v70 = 0;
    sub_10075F35C();
    v35 = type metadata accessor for FlowDestination(0);
    swift_storeEnumTagMultiPayload();
    v38 = *(*(v35 - 8) + 56);
    v39 = v47;
    return v38(v39, 0, 1, v35);
  }

  v35 = type metadata accessor for FlowDestination(0);
  v36 = v70;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v35 - 8) + 56);
  v39 = v36;
  return v38(v39, 0, 1, v35);
}

uint64_t sub_1006FC188(__n128 a1)
{
  v50 = sub_100760EFC();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075F2FC();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_10000A5D4(&qword_100966430, qword_1007B4E20);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_10076048C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v52 = v1;
  sub_10075F32C();
  if (v20)
  {

    sub_10076047C();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10000CFBC(v12, &qword_100966430, qword_1007B4E20);
      v21 = sub_10076043C();
    }

    else
    {

      (*(v14 + 32))(v19, v12, v13);
      v21 = sub_10076046C();
      (*(v14 + 8))(v19, v13);
    }
  }

  else
  {
    v21 = 0;
  }

  sub_10075F31C();
  v22 = (*(v53 + 88))(v9, v54);
  if (v22 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_10075F36C();
    if (!v23)
    {
      v55._object = 0x80000001007F65A0;
      v55._countAndFlagsBits = 0xD000000000000010;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      sub_1007622EC(v55, v60);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.docTextImage(_:), v13);
      v24 = sub_10076046C();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.today(_:);
LABEL_34:
    v40 = v50;
    (*(v2 + 104))(v4, *v27, v50);
    v41 = v21;
    v42 = sub_100760EDC();
    (*(v2 + 8))(v4, v40);
    v43 = objc_allocWithZone(UITabBarItem);
    v44 = sub_10076FF6C();

    v45 = [v43 initWithTitle:v44 image:v24 tag:v42];

    v46 = v51;
    sub_10075F31C();
    v39 = sub_10077050C();

    (*(v53 + 8))(v46, v54);
    return v39;
  }

  if (v22 == enum case for StoreTab.Identifier.games(_:))
  {
    sub_10075F36C();
    if (!v25)
    {
      v56._object = 0x80000001007F6580;
      v56._countAndFlagsBits = 0xD000000000000010;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      sub_1007622EC(v56, v61);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.rocketFill(_:), v13);
      v24 = sub_10076046C();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.games(_:);
    goto LABEL_34;
  }

  if (v22 == enum case for StoreTab.Identifier.apps(_:))
  {
LABEL_17:
    sub_10075F36C();
    if (!v26)
    {
      v57._countAndFlagsBits = 0x5449545F45474150;
      v57._object = 0xEF535050415F454CLL;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      sub_1007622EC(v57, v62);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.app3Stack3DFill(_:), v13);
      v24 = sub_10076046C();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.apps(_:);
    goto LABEL_34;
  }

  if (v22 == enum case for StoreTab.Identifier.updates(_:))
  {
    sub_10075F36C();
    if (!v28)
    {
      v58._countAndFlagsBits = 0xD000000000000012;
      v58._object = 0x80000001007F6560;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      sub_1007622EC(v58, v63);
    }

    v29 = sub_1005A5DB8(0x5473657461647055, 0xEE006E6F63496261, 0);
    v30 = [v29 _imageThatSuppressesAccessibilityHairlineThickening];

    v31 = v50;
    (*(v2 + 104))(v4, enum case for NavigationTab.updates(_:), v50);
    v32 = sub_100760EDC();
    (*(v2 + 8))(v4, v31);
    v33 = objc_allocWithZone(UITabBarItem);
    v34 = sub_10076FF6C();

    v35 = [v33 initWithTitle:v34 image:v30 tag:v32];

    v36 = v51;
  }

  else
  {
    if (v22 != enum case for StoreTab.Identifier.search(_:))
    {
      if (v22 == enum case for StoreTab.Identifier.arcade(_:))
      {
        sub_10075F36C();
        if (!v48)
        {
          v59._countAndFlagsBits = 0xD000000000000011;
          v59._object = 0x80000001007F6540;
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_1007622EC(v59, v64);
        }

        if (v21)
        {
          v24 = v21;
        }

        else
        {
          (*(v14 + 104))(v16, enum case for SystemImage.joystickcontrollerFill(_:), v13);
          v24 = sub_10076046C();
          (*(v14 + 8))(v16, v13);
        }

        v27 = &enum case for NavigationTab.arcade(_:);
        goto LABEL_34;
      }

      if (v22 != enum case for StoreTab.Identifier.featured(_:))
      {

        (*(v53 + 8))(v9, v54);
        return 0;
      }

      goto LABEL_17;
    }

    v37 = v50;
    (*(v2 + 104))(v4, enum case for NavigationTab.search(_:), v50);
    v38 = sub_100760EDC();
    (*(v2 + 8))(v4, v37);
    v35 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:v38];
    v36 = v51;
  }

  sub_10075F31C();
  v39 = sub_10077050C();

  (*(v53 + 8))(v36, v54);
  return v39;
}

void sub_1006FCC94(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1006FD86C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    sub_1000ACA5C();
    v8 = v7;
    v9 = sub_100770EEC();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1006FCE30(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10001913C;
}

id sub_1006FCEA4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView];
  sub_1004B1B8C();
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  sub_10015A6F0();
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppEventCollectionViewCell(uint64_t a1)
{
  result = qword_100966468;
  if (!qword_100966468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1006FD090(uint64_t **a1))()
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
  v2[4] = sub_1006FCE30(v2);
  return sub_100019A4C;
}

double sub_1006FD188()
{
  [*(*(*v0 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView(0);
  sub_10076422C();
  CGRectGetHeight(v3);
  sub_10076422C();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1006FD214()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView(0);
  sub_10076422C();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1006FD2A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006FD2FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006FD3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1006FD86C(&qword_100950E98, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4F58);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006FD45C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006FD86C(&qword_100966490, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4FC0);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1006FD4D0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006FD86C(&qword_100966490, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4FC0);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1006FD55C(uint64_t *a1))()
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
  sub_1006FD86C(&qword_100966490, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4FC0);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1006FD618(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
  sub_1000ACA5C();
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_1006FD798(void *a1)
{
  a1[1] = sub_1006FD86C(&qword_100966488, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4EF8);
  a1[2] = sub_1006FD86C(&qword_100950E88, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4F28);
  a1[3] = sub_1006FD86C(&qword_100950E90, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4EDC);
  result = sub_1006FD86C(&qword_100950E98, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4F58);
  a1[4] = result;
  return result;
}

uint64_t sub_1006FD86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1006FD8B4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076F9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_itemLayoutContext;
  v7 = sub_10076341C();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView] = [objc_allocWithZone(type metadata accessor for AppEventView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView;
  v10 = *&v8[OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  sub_10076F95C();
  sub_10000CFBC(v17, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v18, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

char *sub_1006FDB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController;
  *&v4[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter] = a1;
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_completionCallback];
  *v10 = a2;
  *(v10 + 1) = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v12 = 2;
LABEL_6:
  v13 = v11;
  [v13 setModalPresentationStyle:v12];
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      v14 = 0;
LABEL_11:
      [*&v13[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController] setModalPresentationStyle:v14];
      [v13 setModalInPresentation:1];

      return v13;
    }

LABEL_10:
    v14 = 2;
    goto LABEL_11;
  }

  if (*(a1 + 16) == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  result = sub_10077156C();
  __break(1u);
  return result;
}

double sub_1006FDDA4()
{
  qword_1009A3330 = 0;
  swift_unknownObjectWeakInit();
  return result;
}

void sub_1006FDDC8()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController];
  [v4 setNavigationBarHidden:1 animated:0];
  [v0 addChildViewController:v4];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame:{v10, v12, v14, v16}];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v4 view];
  if (v19)
  {
    v20 = v19;
    [v18 addSubview:v19];

    [v4 didMoveToParentViewController:v0];
    sub_1006FDFBC();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1006FDFBC()
{
  v1 = v0;
  v2 = sub_10076F2EC();
  __chkstk_darwin(v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter];
  swift_beginAccess();
  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    sub_10000A570(v4 + 32, v15);
    v5 = sub_1006FE7AC(v15);
    if (v5)
    {
      v6 = v5;
      if (qword_100941300 != -1)
      {
        swift_once();
      }

      v7 = sub_10076FD4C();
      sub_10000A61C(v7, qword_1009A2648);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F2DC();
      v17._countAndFlagsBits = 0x69746E6573657250;
      v17._object = 0xEB0000000020676ELL;
      sub_10076F2CC(v17);
      v14 = sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      v13[0] = v6;
      v8 = v6;
      sub_10076F29C();
      sub_10000CFBC(v13, &unk_1009434C0, &qword_100783F60);
      v18._countAndFlagsBits = 0x65747320726F6620;
      v18._object = 0xEA00000000002070;
      sub_10076F2CC(v18);
      v9 = v16;
      v10 = sub_10000CF78(v15, v16);
      v14 = v9;
      v11 = sub_10000DB7C(v13);
      (*(*(v9 - 8) + 16))(v11, v10, v9);
      sub_10076F29C();
      sub_10000CFBC(v13, &unk_1009434C0, &qword_100783F60);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      sub_10076F2CC(v19);
      sub_10076F2FC();
      sub_10076FBCC();

      [v8 preferredContentSize];
      [v1 setPreferredContentSize:?];
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController] showViewController:v8 sender:v1];
    }

    else
    {
      sub_10000E790(v15, 0xD00000000000002ALL, 0x80000001007F67E0);
      sub_1006FDFBC();
    }

    sub_10000CD74(v15);
  }

  else
  {
    if (qword_100941300 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2648);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    (*&v0[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_completionCallback])(v0);
    if (qword_100941548 != -1)
    {
      swift_once();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10074BF4C();
      swift_unknownObjectRelease();
    }
  }
}

double sub_1006FE500(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (*(v5 + 16))
  {
    sub_10000A570(v5 + 32, v8);
    sub_10000CFBC(v8, &qword_1009664D8, &qword_1007B5090);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_10000CFBC(v8, &qword_1009664D8, &qword_1007B5090);
    if (qword_100941300 != -1)
    {
      swift_once();
    }

    v7 = sub_10076FD4C();
    sub_10000A61C(v7, qword_1009A2648);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    (*&v2[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_completionCallback])(v2);
    if (qword_100941548 != -1)
    {
      swift_once();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10074BF4C();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1006FE7AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076649C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10000A570(a1, v41);
  sub_10000A5D4(&qword_1009425C8, &qword_100783F70);
  if (swift_dynamicCast())
  {
    v17 = *(v5 + 16);
    v17(v13, v16, v4);
    if (*(*&v2[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter] + 16) == 2)
    {
      v18 = sub_1006FED7C();
      v19 = *(v5 + 8);
      v19(v13, v4);
      v19(v16, v4);
      goto LABEL_8;
    }

    v37 = v7;
    v38 = v2;
    v20 = *(v5 + 8);
    v20(v13, v4);
    (*(v5 + 32))(v10, v16, v4);
    v21 = v37;
    v17(v37, v10, v4);
    v22 = sub_10076126C();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController(0));

    v18 = sub_10070E430(v21, v22 & 1, sub_1006FFBBC, v23);

    v20(v10, v4);
    v2 = v38;
LABEL_7:

    goto LABEL_8;
  }

  type metadata accessor for AdPrivacyOnboardingStep();
  if (swift_dynamicCast())
  {
    v18 = sub_1006FF12C();
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_10000FA08(aBlock);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(type metadata accessor for OnboardingLocationPrivacyViewController());
    v18 = sub_10027DAA8(sub_1006FFB84, v30, sub_1006FFBB4, v31);
  }

  else
  {
    type metadata accessor for JourneyDrivenOnboardingStep();
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v33 = v39;
    v18 = *&v39[OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController];
    if (!v18)
    {

      sub_10000CD74(v41);
      return v18;
    }

    v34 = [v18 startEngagement];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1006FFB64;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001FA544;
    aBlock[3] = &unk_1008A1590;
    v36 = _Block_copy(aBlock);

    [v34 addFinishBlock:v36];
    _Block_release(v36);
  }

LABEL_8:
  sub_10000CD74(v41);
  v24 = [v18 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v2 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 tintColor];

      [v25 setTintColor:v28];
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_1006FED7C()
{
  v1 = v0;
  v2 = sub_10075DE9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_10076644C();
  isa = sub_1007701AC().super.isa;

  v8 = [v6 linkWithBundleIdentifiers:isa];

  if (v8)
  {
    v9 = v8;
    [v9 setModalPresentationStyle:{objc_msgSend(v1, "modalPresentationStyle")}];

    v10 = v9;
    sub_10075DE6C();
    sub_10075DDCC();
    (*(v3 + 8))(v5, v2);
    v11 = sub_10076FF6C();

    [v10 setDisplayLanguage:v11];
  }

  v12 = sub_1005A5DB8(0xD000000000000017, 0x80000001007F68D0, 0);
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v24._object = 0x80000001007F68F0;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1007622EC(v24, v27);
  v25._countAndFlagsBits = 0xD000000000000025;
  v25._object = 0x80000001007F6910;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1007622EC(v25, v28);
  v22[1] = v1;
  v26._object = 0x80000001007F6940;
  v26._countAndFlagsBits = 0xD000000000000013;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1007622EC(v26, v29);
  v13 = objc_allocWithZone(AMSUIOnboardingViewController);
  v14 = v8;
  v15 = sub_10076FF6C();

  v16 = sub_10076FF6C();

  v17 = sub_10076FF6C();

  v18 = [v13 initWithHeaderImage:v12 titleText:v15 descriptionText:v16 primaryButtonText:v17 privacyLinkController:v14];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1006FFC0C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100177EA0;
  aBlock[3] = &unk_1008A15B8;
  v20 = _Block_copy(aBlock);

  [v18 setPrimaryButtonCallback:v20];

  _Block_release(v20);
  return v18;
}