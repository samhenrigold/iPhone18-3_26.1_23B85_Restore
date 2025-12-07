uint64_t sub_100341870(void *a1, void *a2)
{
  v4 = sub_10076F08C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076F0CC();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v11 = sub_10077068C();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100342998;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100891B60;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_100341B0C(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_10076F08C();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100762F6C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v23 = sub_10077068C();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  v18 = v24;
  v17 = v25;
  *(v16 + v15) = v24;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_100342840;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100891B10;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  v21 = v23;
  sub_10077069C();
  _Block_release(v19);

  (*(v28 + 8))(v6, v4);
  return (*(v26 + 8))(v9, v27);
}

uint64_t sub_100341E8C(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_10000A5D4(&qword_100952FD8, &qword_10079C400);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v34 = &v32 - v6;
  v7 = sub_10075FAEC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_100762F4C();
  v17 = sub_10075FABC();
  v18 = objc_allocWithZone(IAMValueEvent);
  v19 = sub_10076FF6C();
  v35 = v17 & 1;
  v20 = [v18 initWithName:v19 value:{sub_1007716BC(), v32, v33}];
  swift_unknownObjectRelease();

  [a2 receiveEvent:v20];
  LOBYTE(v19) = sub_10075FADC();
  v21 = objc_allocWithZone(IAMValueEvent);
  v22 = sub_10076FF6C();
  v35 = v19 & 1;
  v23 = [v21 initWithName:v22 value:sub_1007716BC()];
  swift_unknownObjectRelease();

  v24 = v34;
  [a2 receiveEvent:v23];

  sub_100762F5C();
  sub_100762F4C();
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
      sub_10028484C();
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    else
    {
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    v30 = *(sub_10000A5D4(&qword_10094D3D8, &qword_100794138) + 48);
    v31 = sub_1007676BC();
    (*(*(v31 - 8) + 8))(v25 + v30, v31);
    return (v28)(v24, v7);
  }

  else
  {
    (*(v8 + 8))(v16, v7);
    return sub_1003428F0(v24);
  }
}

uint64_t sub_1003422F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100342370(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10076F68C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = [objc_allocWithZone(IAMMessageCoordinator) init];
  v11 = type metadata accessor for InAppMessagesMetricsDelegate(0);
  v12 = objc_allocWithZone(v11);
  sub_10076F64C();

  sub_10076FC1C();
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesMetricsDelegate_metricsPipeline, v10, v7);
  v35.receiver = v12;
  v35.super_class = v11;
  v13 = objc_msgSendSuper2(&v35, "init");

  *(v4 + 32) = v13;
  sub_100767E8C();
  sub_10076FC1C();
  v14 = v34;
  *(v4 + 40) = v34;
  sub_100016F40(0, &qword_100944EF0, ACAccountStore_ptr);
  v15 = v14;
  sub_10076FC1C();
  v16 = v34;
  v17 = type metadata accessor for InAppMessagesContextProvider();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isInFamily] = 2;
  v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = 2;
  v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_canCreateFamily] = 2;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_arcadeSubscriptionManager] = v15;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_accountStore] = v16;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_rootViewController] = a2;
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
  *(a3 + 16) = sub_10034270C;
  *(a3 + 24) = v21;

  v24 = v20;
  sub_1000167E0(v22, v23);
  v25 = *(v4 + 40);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v4 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  v29 = v27;
  v30 = v25;

  sub_100767DFC();

  return v4;
}

uint64_t sub_1003426D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100342714()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10034274C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100342794(__n128 a1)
{
  v2 = sub_100762F6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_100342840(__n128 a1)
{
  v2 = *(sub_100762F6C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100341E8C(v1 + v3, v5, v6);
}

double sub_1003428D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003428F0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100952FD8, &qword_10079C400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100342958()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1003429B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  [v1 frame];
  MinX = CGRectGetMinX(v4);
  [v1 frame];
  CGRectGetMinY(v5);
  [v1 frame];
  CGRectGetWidth(v6);
  [v1 frame];
  CGRectGetHeight(v7);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView] frame];
  CGRectGetHeight(v8);
  return MinX;
}

void *sub_100342A6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_100342AA4(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100342AFC;
}

void sub_100342AFC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1004F9DA0(v2);
  }

  else
  {
    sub_1004F9DA0(*a1);
  }
}

uint64_t sub_100342B94(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100342D68(&qword_100952FE8, type metadata accessor for VideoCardCollectionViewCell, &unk_10079C440);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_100342C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_100342D68(&qword_100952FE8, type metadata accessor for VideoCardCollectionViewCell, &unk_10079C440);

  return a3(ObjectType, v4);
}

uint64_t sub_100342D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100342DC4()
{
  result = qword_100952FF0;
  if (!qword_100952FF0)
  {
    sub_1007689FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952FF0);
  }

  return result;
}

uint64_t sub_100342E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F50C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_1003767CC(Strong);

  v17 = v9;
  sub_10003F040();
  v10 = v9;
  sub_10000A5D4(&qword_100952FF8, &qword_10079C5A0);
  if (swift_dynamicCast())
  {
    sub_100012498(v15, v18);
    v11 = v19;
    v12 = v20;
    sub_10000CF78(v18, v19);
    (*(v12 + 8))(a1, a2, v11, v12);
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    (*(v5 + 104))(v7, enum case for ActionOutcome.performed(_:), v4);
    v13 = sub_10076FC8C();

    sub_10000CD74(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_10034303C(v15);
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    sub_1003430A4();
    swift_allocError();
    v13 = sub_10076FC7C();
  }

  return v13;
}

uint64_t sub_10034303C(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100953000, &qword_10079C5A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003430A4()
{
  result = qword_100953008;
  if (!qword_100953008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953008);
  }

  return result;
}

unint64_t sub_10034310C()
{
  result = qword_100953010;
  if (!qword_100953010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953010);
  }

  return result;
}

uint64_t sub_100343170@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a9, double a10)
{
  v40 = a3;
  v41 = a4;
  v37[1] = a1;
  v38 = a2;
  v10 = sub_10076B5BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v37[0] = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = sub_10076C36C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v39 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v37 - v20;
  v22 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = v37 - v24;
  sub_100016E2C(v38, v37 - v24, &qword_1009499A0, &qword_1007848B0);
  v26 = *(v23 + 56);
  v27 = v16;
  v38 = v25;
  sub_100016E2C(v40, &v25[v26], &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();

  v28 = *(v17 + 104);
  v29 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v44)
  {
    v29 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v30 = *v29;
  v40 = v21;
  v31 = v21;
  v32 = v37[0];
  v28(v31, v30, v16);
  swift_getKeyPath();
  sub_10076F49C();

  (*(v11 + 104))(v32, enum case for Shelf.ContentType.appTrailerLockup(_:), v10);
  sub_10022DD04();
  sub_10077018C();
  sub_10077018C();
  if (v44 == v42 && v45 == v43)
  {
    v33 = 32.0;
  }

  else if (sub_10077167C())
  {
    v33 = 32.0;
  }

  else
  {
    v33 = 20.0;
  }

  v34 = *(v11 + 8);
  v34(v32, v10);
  v34(v15, v10);

  v35 = v40;
  (*(v17 + 16))(v39, v40, v27);
  sub_1006C4580(v33);
  sub_10076C33C();
  (*(v17 + 8))(v35, v27);
  return sub_10000CFBC(v38, &qword_100942C40, &unk_100786C80);
}

uint64_t sub_1003435F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1003439A8();

  return sub_1007620BC();
}

uint64_t sub_1003436D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1003439A8();

  return sub_1007620AC();
}

uint64_t sub_1003437C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v30[5] = a5;
  v30[6] = a6;
  v30[4] = a4;
  *&v30[2] = a14;
  *&v30[3] = a15;
  v30[0] = a7;
  v30[1] = a1;
  v20 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v30 - v25;
  v27 = *v17;
  sub_100016E2C(a2, v30 - v25, &qword_1009499A0, &qword_1007848B0);
  sub_100016E2C(a3, &v26[*(v21 + 56)], &qword_1009499A0, &qword_1007848B0);
  v30[7] = v27;
  sub_100016E2C(v26, v23, &qword_100942C40, &unk_100786C80);
  v28 = *(v21 + 56);
  sub_1007620BC();
  sub_10000CFBC(v26, &qword_100942C40, &unk_100786C80);
  sub_10000CFBC(&v23[v28], &qword_1009499A0, &qword_1007848B0);
  return sub_10000CFBC(v23, &qword_1009499A0, &qword_1007848B0);
}

unint64_t sub_1003439A8()
{
  result = qword_100953018;
  if (!qword_100953018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953018);
  }

  return result;
}

void sub_100343A2C(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076BF6C();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10076BEDC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v32);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_100761EDC();
  if (swift_dynamicCast())
  {
    v15 = sub_100761E7C();
    if (qword_10093F638 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10000A61C(v16, qword_10099CCD0);
    sub_10076D36C();
    if (v15)
    {

      sub_10076BEEC();
      sub_10076BE9C();
      (*(v12 + 8))(v14, v11);
      sub_10076BFCC();
      v17 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v17 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10075FD2C();
      sub_10034737C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
    }

    v18 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView);
    v19 = sub_100761E4C();
    sub_10029E930(v19, a2, a3, a4);
  }

  else
  {
    sub_10000A570(a1, v32);
    sub_10076C52C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v31 = v12;
    v20 = v4;
    v21 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView);
    v22 = sub_10076C4BC();
    sub_10029E930(v22, a2, a3, a4);

    if (sub_10076C4CC())
    {
      v23 = qword_10093F638;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
      sub_10000A61C(v24, qword_10099CCD0);
      sub_10076D36C();

      sub_10076BEEC();
      sub_10076BE9C();
      (*(v31 + 8))(v14, v11);
      sub_10076BFCC();
      v25 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v25 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10075FD2C();
      sub_10034737C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
    }

    else
    {
      v26 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView);
      v27 = a1[3];
      v28 = a1[4];
      v29 = sub_10000CF78(a1, v27);
      sub_1004F1948(v29, a2, v26, v27, v28);
    }
  }
}

uint64_t sub_100344018(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_10034415C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100761E4C();
    v9 = sub_10076B9FC();

    if (v9)
    {
      v10 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
      }

      else
      {
        sub_100263BF0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_10034431C(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = *a1;
  ObjectType = swift_getObjectType();

  return sub_10034537C(v12, a8, v8, ObjectType, a2, a3);
}

double sub_100344388(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100761EDC();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100345560(v5, a3);
  }

  else
  {
    sub_10076C52C();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
      return result;
    }

    v8 = v6;

    sub_1003463C4(v8, a3);
  }

  return result;
}

double sub_1003444C8(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, double a8, double a9, uint64_t a10, void *a11)
{
  v103 = a6;
  v102 = a5;
  v101 = a4;
  v110 = a3;
  v109 = a2;
  v111 = a1;
  v106 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  __chkstk_darwin(v106);
  v108 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v107);
  v16 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10076997C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v23 = sub_10076DDDC();
  swift_allocObject();
  v104 = sub_10076DDBC();
  swift_allocObject();
  v99 = sub_10076DDBC();
  swift_allocObject();
  v98 = sub_10076DDBC();
  swift_allocObject();
  v97 = sub_10076DDBC();
  swift_allocObject();
  v95 = sub_10076DDBC();
  swift_allocObject();
  v93 = sub_10076DDBC();
  swift_allocObject();
  v105 = sub_10076DDBC();
  swift_allocObject();
  v100 = sub_10076DDBC();
  v24 = [a7 traitCollection];
  sub_10076E20C();

  swift_allocObject();
  v96 = sub_10076DDBC();
  swift_allocObject();
  v94 = sub_10076DDBC();
  swift_allocObject();
  v92 = sub_10076DDBC();
  v25 = [a7 traitCollection];
  v26 = [v25 preferredContentSizeCategory];
  sub_10077087C();

  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009410E0 != -1)
  {
    swift_once();
  }

  v27 = sub_10076D3DC();
  sub_10000A61C(v27, qword_1009A2098);
  v28 = [a7 traitCollection];
  v29 = sub_100770B3C();

  v30 = sub_10076C04C();
  v114 = v30;
  v86 = sub_10034737C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v115 = v86;
  v31 = sub_10000DB7C(aBlock);
  v32 = *(v30 - 8);
  v33 = *(v32 + 104);
  v85 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v87 = v30;
  v84 = v33;
  v83 = v32 + 104;
  v33(v31);
  sub_10076C90C();
  sub_10000CD74(aBlock);

  v88 = v29;
  sub_10076996C();
  sub_10076994C();
  v35 = *(v18 + 8);
  v34 = v18 + 8;
  v91 = v17;
  v82 = v35;
  v35(v22, v17);
  if (qword_100940618 != -1)
  {
    swift_once();
  }

  v36 = qword_10099FD10;
  v37 = *algn_10099FD18;
  v38 = qword_10099FD20;
  v39 = [a7 traitCollection];
  v40 = sub_10077071C();
  v90 = v34;
  if (v40)
  {
  }

  else
  {
    v41 = sub_1007706EC();

    if (v41)
    {
      v38 = v36;
    }

    else
    {
      v38 = v37;
    }
  }

  v42 = v38;
  v109 = a7;
  v43 = [a7 traitCollection];
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = v42;
  v46 = v44;
  v47 = v111;
  v48 = [v46 initWithAttributedString:v111];
  v110 = [v47 length];
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  *(v49 + 24) = v43;
  *(v49 + 32) = v48;
  *(v49 + 40) = 1;
  v50 = swift_allocObject();
  v50[2] = sub_1000275EC;
  v50[3] = v49;
  v115 = sub_1000ACB04;
  v116 = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v114 = &unk_100891E18;
  v51 = _Block_copy(aBlock);
  v52 = v45;
  v53 = v43;
  v54 = v48;

  [v47 enumerateAttributesInRange:0 options:v110 usingBlock:{0x100000, v51}];

  _Block_release(v51);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_24;
  }

  v111 = a11;
  v55 = v87;
  v114 = v87;
  v115 = v86;
  v56 = sub_10000DB7C(aBlock);
  v84(v56, v85, v55);
  v57 = v52;
  sub_10076C90C();
  sub_10000CD74(aBlock);
  v58 = v89;
  v110 = v57;
  sub_10076993C();
  sub_10076994C();
  v82(v58, v91);
  v59 = v102;
  if (v102)
  {
    v60 = HIBYTE(v102) & 0xF;
    v61 = v101;
    if ((v102 & 0x2000000000000000) == 0)
    {
      v60 = v101 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v91) = v60 != 0;
    v50 = v109;
  }

  else
  {
    LODWORD(v91) = 0;
    v50 = v109;
    v61 = v101;
  }

  type metadata accessor for AppPromotionSubtitleView(0);
  v62 = [v50 traitCollection];
  sub_1004758F0(v61, v59, v103, 0, v62, v112);

  v63 = [v50 traitCollection];
  LOBYTE(v62) = sub_10077071C();

  if (v62)
  {
    if (qword_10093F640 == -1)
    {
LABEL_18:
      v64 = qword_10099CCE8;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  if (qword_10093F638 != -1)
  {
    swift_once();
  }

  v64 = qword_10099CCD0;
LABEL_22:
  v65 = v108;
  v66 = sub_10000A61C(v106, v64);
  sub_1000BD5B0(v66, v65);
  v67 = v107;
  v68 = (v16 + *(v107 + 20));
  v68[3] = v23;
  v68[4] = &protocol witness table for LayoutViewPlaceholder;
  *v68 = v104;
  v69 = (v16 + v67[6]);
  v69[3] = v23;
  v69[4] = &protocol witness table for LayoutViewPlaceholder;
  *v69 = v99;
  v70 = (v16 + v67[7]);
  v70[3] = v23;
  v70[4] = &protocol witness table for LayoutViewPlaceholder;
  *v70 = v98;
  v71 = (v16 + v67[8]);
  v71[3] = v23;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  *v71 = v97;
  v72 = (v16 + v67[9]);
  v72[3] = v23;
  v72[4] = &protocol witness table for LayoutViewPlaceholder;
  *v72 = v95;
  v73 = (v16 + v67[10]);
  v73[3] = v23;
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  *v73 = v93;
  v74 = (v16 + v67[11]);
  v74[3] = v23;
  v74[4] = &protocol witness table for LayoutViewPlaceholder;
  *v74 = v105;
  v75 = (v16 + v67[12]);
  v75[3] = v23;
  v75[4] = &protocol witness table for LayoutViewPlaceholder;
  *v75 = v100;
  sub_10000A570(&v117, v16 + v67[13]);
  sub_10000A570(aBlock, v16 + v67[14]);
  sub_10000A570(v112, v16 + v67[15]);
  v76 = (v16 + v67[16]);
  v76[3] = v23;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  *v76 = v96;
  v77 = (v16 + v67[17]);
  v77[3] = v23;
  v77[4] = &protocol witness table for LayoutViewPlaceholder;
  *v77 = v94;
  v78 = (v16 + v67[18]);
  v78[3] = v23;
  v78[4] = &protocol witness table for LayoutViewPlaceholder;
  *v78 = v92;
  sub_1000BD614(v65, v16);
  *(v16 + v67[19]) = v91;

  sub_100101080(v50, v16, a8, a9);

  sub_10000CD74(v112);
  sub_10000CD74(aBlock);
  sub_10000CD74(&v117);
  sub_1000BE98C(v16, v79);
  return a8;
}

void sub_100345140(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = sub_10076B96C();
  __chkstk_darwin(v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E67C();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    if (sub_10076BB3C())
    {
      v7 = sub_100766AAC();
      v9 = v8;

      if (v9)
      {
        sub_10075E1BC();
        v10 = sub_10075E19C();
        if (v10)
        {
          v11 = v10;
          sub_10076BB7C();

          sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
          sub_10076F64C();

          sub_10076FC1C();
          v12 = v18[1];
          v13 = v18[2];
          type metadata accessor for SubscriptionLockupPresenter(0);
          swift_allocObject();
          v14 = a2;
          v15 = SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(v7, v9, v6, a2, &off_10088F6E8, v11, v12, v13);
          v16 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
          swift_beginAccess();
          *&v14[v16] = v15;

          return;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *&a2[v17] = 0;

  sub_10029D7B0(0, 0);
}

double sub_10034537C(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5, double a6)
{
  sub_100761EDC();
  if (swift_dynamicCastClass())
  {

    sub_100761EBC();
    v11 = sub_10076C5AC();

    v12 = a4;
    v28 = a3;
    v13 = sub_100761E9C();
    v15 = v14;
    v16 = sub_100761ECC();
    v18 = v17;
    v19 = sub_100761E2C();
    v20 = sub_1003444C8(v11, v13, v15, v16, v18, v19, a2, a5, a6, v28, v12);
  }

  else
  {
    sub_10076C52C();
    if (!swift_dynamicCastClass())
    {
      return 0.0;
    }

    sub_10076C50C();
    v21 = sub_10076C5AC();

    v22 = sub_10076C4FC();
    v24 = v23;
    v25 = sub_10076C51C();
    v20 = sub_1003444C8(v21, v22, v24, v25, v26, 0, a2, a5, a6, a3, a4);
  }

  return v20;
}

double sub_100345560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v116 = a2;
  v5 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v5 - 8);
  v105 = &v86 - v6;
  v104 = sub_100768FEC();
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v103 = &v86 - v8;
  v9 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v9 - 8);
  v108 = &v86 - v10;
  v11 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v11 - 8);
  v110 = &v86 - v12;
  v13 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v13 - 8);
  v109 = &v86 - v14;
  v15 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v15 - 8);
  v114 = &v86 - v16;
  v17 = sub_10000A5D4(&qword_10094FCE8, qword_100798EB8);
  __chkstk_darwin(v17 - 8);
  v19 = &v86 - v18;
  v20 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v20 - 8);
  v100 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v112 = &v86 - v23;
  v107 = sub_10076361C();
  v24 = *(v107 - 8);
  __chkstk_darwin(v107);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100761E9C();
  sub_1000BB788(v27, v28);
  sub_100761EBC();
  v29 = sub_10076C5AC();

  sub_1000BB8E8(v29);
  v30 = sub_100761ECC();
  v32 = v31;
  v33 = sub_100761E2C();
  sub_100475DC4(v30, v32, v33);
  v34 = v19;

  v35 = v114;

  v36 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
  sub_100761E8C();
  v37 = sub_1007635FC();
  v38 = v107;
  (*(v24 + 8))(v26, v107);
  [v36 setOverrideUserInterfaceStyle:v37];
  sub_1000BB310();
  [*(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView) setHidden:0];
  [*(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView) setHidden:1];
  v111 = v3;
  v39 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView);
  v40 = v112;
  v41 = v39;
  v42 = sub_100761E4C();
  v43 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v99 = v44 + 56;
  v45(v40, 1, 1, v43);
  (*(v24 + 56))(v34, 1, 1, v38);
  v46 = v41;
  v47 = sub_10075F78C();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  sub_10075E67C();
  v48 = swift_dynamicCastClass();
  v49 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  if (v48)
  {
    v94 = v45;
    v95 = v43;
    v97 = v34;
    v98 = a1;
    v50 = v48;
    v106 = v48;
    v51 = v49;
    v91 = sub_1007628DC();
    v52 = *(v91 - 8);
    v90 = *(v52 + 56);
    v92 = v52 + 56;
    v53 = v109;
    v90(v109, 1, 1, v91);
    v89 = *(v113 + 56);
    v107 = v42;
    v54 = v110;
    v89(v110, 1, 1, v115);
    v55 = sub_10076C54C();
    v56 = *(v55 - 8);
    v87 = *(v56 + 56);
    v88 = v56 + 56;
    v57 = v108;
    v87(v108, 1, 1, v55);
    swift_retain_n();
    sub_1004D0A60(v50, v51, v40, v116, 1, 0, v35, v53, v57, v54);
    sub_10000CFBC(v57, &unk_100949290, &unk_10078BBF0);
    v51[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    v93 = v51;
    [v51 setNeedsLayout];
    sub_10000CFBC(v54, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v53, &unk_1009492A0, &unk_10078BC00);
    v58 = v35;
    v96 = v41;
    v59 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v60 = sub_10075E66C();
    v90(v53, 1, 1, v91);
    v89(v54, 1, 1, v115);
    v87(v57, 1, 1, v55);
    sub_1004D0A60(v60, v59, v40, v116, 0, 0, v58, v53, v57, v54);
    sub_10000CFBC(v57, &unk_100949290, &unk_10078BBF0);
    v59[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v59 setNeedsLayout];

    v61 = v54;
    v62 = v107;
    sub_10000CFBC(v61, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v53, &unk_1009492A0, &unk_10078BC00);
    v63 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v59[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v59[v63] setUserInteractionEnabled:0];
    [v59 setHidden:1];
    v64 = sub_10076BB5C();
    if (v64)
    {
    }

    sub_100261178(v64 != 0);
    v65 = *&v59[v63];
    v66 = sub_10076BB3C();

    v67 = sub_10076BA2C();

    v68 = v100;
    v94(v100, 1, 1, v95);
    v69 = v101;
    v70 = v104;
    (*(v101 + 104))(v102, enum case for OfferButtonSubtitlePosition.below(_:), v104);
    (*(v69 + 56))(v105, 1, 1, v70);
    sub_10034737C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v71 = v103;
    sub_10076759C();
    v72 = v116;
    sub_1001F12C8(v66, v67, 0, v68, v71, v116, 0, 0);

    (*(v113 + 8))(v71, v115);
    sub_10000CFBC(v68, &unk_100946760, &unk_100787A20);
    v46 = v96;
    sub_100345140(v62, v96, v72);

    v34 = v97;
    sub_10029E170(v46, v97);
    a1 = v98;
    v35 = v114;
    v40 = v112;
  }

  else
  {
    [*&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView] setHidden:1];
    v73 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v74 = sub_1007628DC();
    v75 = v109;
    (*(*(v74 - 8) + 56))(v109, 1, 1, v74);
    v76 = v110;
    (*(v113 + 56))(v110, 1, 1, v115);
    v77 = sub_10076C54C();
    v78 = v108;
    (*(*(v77 - 8) + 56))(v108, 1, 1, v77);
    sub_1004D0A60(v42, v73, v40, v116, 0, 0, v35, v75, v78, v76);
    sub_10000CFBC(v78, &unk_100949290, &unk_10078BBF0);
    v73[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v73 setNeedsLayout];
    sub_10000CFBC(v76, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v75, &unk_1009492A0, &unk_10078BC00);
    sub_10029E170(v46, v34);
  }

  sub_10000CFBC(v35, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v34, &qword_10094FCE8, qword_100798EB8);
  sub_10000CFBC(v40, &unk_100946760, &unk_100787A20);
  v79 = swift_allocObject();
  v80 = v111;
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  *(v81 + 2) = v79;
  *(v81 + 3) = a1;
  *(v81 + 4) = v116;
  v82 = (v80 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  v83 = *(v80 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  v84 = v82[1];
  *v82 = sub_1003463B8;
  v82[1] = v81;

  sub_1000167E0(v83, v84);

  return result;
}

uint64_t sub_100346338()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100346370()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1003463C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v6 - 8);
  v115 = v95 - v7;
  v114 = sub_100768FEC();
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v113 = v95 - v9;
  v10 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v10 - 8);
  v117 = v95 - v11;
  v12 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v12 - 8);
  v119 = v95 - v13;
  v14 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v14 - 8);
  v118 = v95 - v15;
  v16 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v16 - 8);
  v125 = v95 - v17;
  v18 = sub_10000A5D4(&qword_10094FCE8, qword_100798EB8);
  __chkstk_darwin(v18 - 8);
  v123 = v95 - v19;
  v20 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v20 - 8);
  v110 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v121 = v95 - v23;
  v24 = sub_10076361C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076C4FC();
  sub_1000BB788(v28, v29);
  sub_10076C50C();
  v30 = sub_10076C5AC();

  sub_1000BB8E8(v30);
  v31 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_subtitleView);
  sub_10076C51C();
  v32 = *(v31 + qword_1009588E8);
  if (v33)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  [*(v31 + qword_1009588F0) setHidden:1];
  sub_100760C4C();
  v35 = a2;
  sub_10076F63C();

  v36 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
  sub_10076C4DC();
  v37 = sub_1007635FC();
  (*(v25 + 8))(v27, v24);
  [v36 setOverrideUserInterfaceStyle:v37];
  v38 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView);
  sub_1004F16F4();
  sub_1000BB310();
  [*(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView) setHidden:0];
  if (sub_10076C4CC())
  {
  }

  else
  {
    v38 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView);
  }

  v39 = v123;
  v40 = v121;
  v116 = v35;
  [v38 setHidden:1];
  v41 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView);
  v42 = sub_10076C4BC();
  v43 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v44 = *(v43 - 8);
  v108 = *(v44 + 56);
  v109 = v43;
  v107 = v44 + 56;
  v108(v40, 1, 1);
  (*(v25 + 56))(v39, 1, 1, v24);
  v45 = sub_10075F78C();
  (*(*(v45 - 8) + 56))(v125, 1, 1, v45);
  sub_10075E67C();
  v46 = v42;
  v47 = swift_dynamicCastClass();
  v48 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v120 = v41;
  if (v47)
  {
    v49 = v47;
    v105 = a1;
    v106 = v3;
    v101 = sub_1007628DC();
    v50 = *(v101 - 8);
    v100 = *(v50 + 56);
    v102 = v50 + 56;
    v51 = v118;
    v100(v118, 1, 1, v101);
    v99 = *(v122 + 56);
    v52 = v119;
    v99(v119, 1, 1, v124);
    v97 = sub_10076C54C();
    v53 = *(v97 - 8);
    v96 = *(v53 + 56);
    v98 = v53 + 56;
    v54 = v117;
    v96(v117, 1, 1, v97);
    v55 = v46;
    swift_retain_n();
    v56 = v40;
    v57 = v40;
    v58 = v116;
    v59 = v125;
    sub_1004D0A60(v49, v48, v57, v116, 1, 0, v125, v51, v54, v52);
    sub_10000CFBC(v54, &unk_100949290, &unk_10078BBF0);
    v48[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    v103 = v48;
    [v48 setNeedsLayout];
    sub_10000CFBC(v52, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v51, &unk_1009492A0, &unk_10078BC00);
    v60 = v49;
    v61 = *&v120[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v104 = v60;
    v62 = v58;
    v63 = sub_10075E66C();
    v100(v51, 1, 1, v101);
    v99(v52, 1, 1, v124);
    v96(v54, 1, 1, v97);
    v64 = v62;
    sub_1004D0A60(v63, v61, v56, v62, 0, 0, v59, v51, v54, v52);
    sub_10000CFBC(v54, &unk_100949290, &unk_10078BBF0);
    v61[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v61 setNeedsLayout];

    sub_10000CFBC(v52, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v51, &unk_1009492A0, &unk_10078BC00);
    v65 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v61[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v61[v65] setUserInteractionEnabled:0];
    [v61 setHidden:1];
    v66 = sub_10076BB5C();
    v67 = v55;
    if (v66)
    {
    }

    sub_100261178(v66 != 0);
    v68 = *&v61[v65];
    v69 = sub_10076BB3C();

    v70 = sub_10076BA2C();

    v71 = v110;
    (v108)(v110, 1, 1, v109);
    v72 = v111;
    v73 = v114;
    (*(v111 + 104))(v112, enum case for OfferButtonSubtitlePosition.below(_:), v114);
    (*(v72 + 56))(v115, 1, 1, v73);
    sub_10034737C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v74 = v113;
    sub_10076759C();
    v75 = v64;
    sub_1001F12C8(v69, v70, 0, v71, v74, v64, 0, 0);

    (*(v122 + 8))(v74, v124);
    sub_10000CFBC(v71, &unk_100946760, &unk_100787A20);
    v76 = v120;
    sub_100345140(v67, v120, v64);

    v39 = v123;
    sub_10029E170(v76, v123);
    v3 = v106;
    v77 = v125;
    v78 = v121;
  }

  else
  {
    [v48 setHidden:1];
    v95[1] = v42;
    v79 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v80 = sub_1007628DC();
    v81 = v118;
    (*(*(v80 - 8) + 56))(v118, 1, 1, v80);
    v82 = v119;
    (*(v122 + 56))(v119, 1, 1, v124);
    v83 = sub_10076C54C();
    v84 = v117;
    (*(*(v83 - 8) + 56))(v117, 1, 1, v83);
    v85 = v42;
    v78 = v40;
    v86 = v40;
    v87 = v116;
    v77 = v125;
    sub_1004D0A60(v85, v79, v86, v116, 0, 0, v125, v81, v84, v82);
    sub_10000CFBC(v84, &unk_100949290, &unk_10078BBF0);
    v79[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v79 setNeedsLayout];
    v76 = v120;
    v75 = v87;
    sub_10000CFBC(v82, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v81, &unk_1009492A0, &unk_10078BC00);
    sub_10029E170(v76, v39);
  }

  sub_10000CFBC(v77, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v39, &qword_10094FCE8, qword_100798EB8);
  sub_10000CFBC(v78, &unk_100946760, &unk_100787A20);
  sub_10076C4BC();
  v88 = sub_10076B9FC();

  if (v88)
  {
    v89 = swift_allocObject();
    *(v89 + 16) = v75;
    *(v89 + 24) = v88;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_1003472A4;
    *(v88 + 24) = v89;

    v90 = sub_1003472E4;
  }

  else
  {
    v90 = 0;
  }

  v91 = (v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  v92 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  v93 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction + 8);
  *v91 = v90;
  v91[1] = v88;
  return sub_1000167E0(v92, v93);
}

uint64_t sub_100347264()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003472AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10034730C()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100347364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10034737C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ArcadeSeeAllGamesButton(uint64_t a1)
{
  result = qword_100953078;
  if (!qword_100953078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100347468(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[qword_100953070];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v1[qword_100953068] = a1;
  v31.receiver = v1;
  v31.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UIColor);
  v11 = v9;
  v12 = [v10 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  [v11 setTintColor:v12];

  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 whiteColor];
  [v14 setBackgroundColor:v15];

  [v14 addTarget:v14 action:"navigateToSeeAllGames" forControlEvents:64];
  v16 = sub_10076FF6C();
  v17 = [objc_opt_self() systemImageNamed:v16];

  [v14 setImage:v17 forState:0];
  if (qword_1009409B8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A0B38);
  v20 = [v14 traitCollection];
  (*(*(v18 - 8) + 16))(v7, v19, v18);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v30[3] = v4;
  v30[4] = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v30);
  (*(v5 + 16))(v21, v7, v4);
  sub_10076C8EC();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  sub_10000CD74(v30);
  v24 = floor(v23);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v24 = v24 + -5.0;
  }

  v26 = [objc_opt_self() configurationWithPointSize:v24];
  [v14 setPreferredSymbolConfiguration:v26 forImageInState:0];

  sub_1007641DC();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100783DD0;
  *(v27 + 32) = sub_10076E88C();
  *(v27 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C4C();

  swift_unknownObjectRelease();

  return v14;
}

void sub_1003478E4()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v0 bounds];
  Height = CGRectGetHeight(v10);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }
}

void sub_1003479E0(void *a1)
{
  v1 = a1;
  sub_1003478E4();
}

void sub_100347A28(char *a1)
{
  v1 = &a1[qword_100953070];
  if (a1[qword_100953070 + 16])
  {
    v2 = qword_1009409B8;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_10076D3DC();
    v5 = sub_10000A61C(v4, qword_1009A0B38);
    v6 = [v3 traitCollection];
    sub_1001ACC0C(v5, v6, 32.0);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

void sub_100347B0C(char *a1)
{
  v1 = &a1[qword_100953070];
  if (a1[qword_100953070 + 16])
  {
    v2 = qword_1009409B8;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_10076D3DC();
    v5 = sub_10000A61C(v4, qword_1009A0B38);
    v6 = [v3 traitCollection];
    sub_1001ACC0C(v5, v6, 32.0);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

id sub_100347BF0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[qword_100953070];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  if (qword_1009409B8 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A0B38);
  v9 = [v0 traitCollection];
  (*(*(v7 - 8) + 16))(v5, v8, v7);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v19[3] = v2;
  v19[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v19);
  (*(v3 + 16))(v10, v5, v2);
  sub_10076C8EC();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_10000CD74(v19);
  v13 = floor(v12);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v13 = v13 + -5.0;
  }

  v15 = [objc_opt_self() configurationWithPointSize:v13];
  [v0 setPreferredSymbolConfiguration:v15 forImageInState:0];

  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "invalidateIntrinsicContentSize");
}

void sub_100347E70(void *a1)
{
  v1 = a1;
  sub_100347BF0();
}

uint64_t sub_100347EB8()
{
  v1 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v1 - 8);
  v49 = v37 - v2;
  v3 = sub_10075F65C();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v48 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100765F6C();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766EDC();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F4FC();
  __chkstk_darwin(v9 - 8);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v11 - 8);
  v40 = v37 - v12;
  v13 = sub_10076C15C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v17 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v37 - v21;
  __chkstk_darwin(v23);
  v25 = v37 - v24;
  v26 = *(v0 + qword_100953068);
  sub_10076148C();
  v37[0] = v26;
  sub_10076F5CC();
  v37[1] = v52;
  sub_10076124C();
  v27 = sub_10075DB7C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v22, 1, v27) == 1)
  {
    sub_10075DB6C();
    if (v29(v22, 1, v27) != 1)
    {
      sub_10000CFBC(v22, &unk_1009435D0, &qword_100785850);
    }
  }

  else
  {
    (*(v28 + 32))(v25, v22, v27);
    (*(v28 + 56))(v25, 0, 1, v27);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.arcadeSeeAllGames(_:), v13);
  sub_100050CC0(v25, v19);
  v30 = sub_10076096C();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v50 = 0u;
  v51 = 0u;
  sub_10076F4DC();
  (*(v38 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v42 + 104))(v45, enum case for FlowAnimationBehavior.infer(_:), v43);
  (*(v46 + 104))(v48, enum case for FlowOrigin.inapp(_:), v47);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v31 = sub_10075F5EC();
  v32 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v33 = v49;
  v34 = v37[0];
  sub_10076F5AC();
  v35 = *(v32 - 8);
  if ((*(v35 + 48))(v33, 1, v32) == 1)
  {
    sub_10000CFBC(v25, &unk_1009435D0, &qword_100785850);

    return sub_10000CFBC(v33, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100263C24(v31, 1, v34, v33);

    sub_10000CFBC(v25, &unk_1009435D0, &qword_100785850);
    return (*(v35 + 8))(v33, v32);
  }
}

void sub_100348628(void *a1)
{
  v1 = a1;
  sub_100347EB8();
}

uint64_t sub_1003486C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10034871C(int a1, double a2)
{
  sub_10077145C(29);
  if (a1)
  {
    if (a1 == 1)
    {
      v3._countAndFlagsBits = 0x64726177726F66;
    }

    else
    {
      v3._countAndFlagsBits = 1701736302;
    }

    if (a1 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v3._countAndFlagsBits = 0x647261776B636162;
  }

  v3._object = v4;
  sub_1007700CC(v3);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_1007700CC(v12);
  v5 = 0xEC000000676E6972;
  v6 = 0x6165707061736964;
  if (BYTE1(a1) != 1)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  if (BYTE1(a1))
  {
    v7._countAndFlagsBits = v6;
  }

  else
  {
    v7._countAndFlagsBits = 0x6E69726165707061;
  }

  if (BYTE1(a1))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE900000000000067;
  }

  v7._object = v8;
  sub_1007700CC(v7);

  v13._countAndFlagsBits = 8250;
  v13._object = 0xE200000000000000;
  sub_1007700CC(v13);
  v14._countAndFlagsBits = sub_10077034C();
  sub_1007700CC(v14);

  v15._object = 0x80000001007E0580;
  v15._countAndFlagsBits = 0xD000000000000011;
  sub_1007700CC(v15);
  if ((a1 & 0x10000) != 0)
  {
    v9._countAndFlagsBits = 1702195828;
  }

  else
  {
    v9._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v9._object = v10;
  sub_1007700CC(v9);

  return 0;
}

uint64_t sub_1003488DC(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (*(a1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_10034C30C(*(a1 + 8) | v4, *(a2 + 8) | v5, *a1, *a2);
}

uint64_t sub_100348914()
{
  if (*(v0 + 10))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_10034871C(*(v0 + 8) | v1, *v0);
}

Swift::Int sub_100348934()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

double sub_1003489D0(uint64_t a1)
{
  sub_10077008C();

  return result;
}

Swift::Int sub_100348A58(uint64_t a1)
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

unint64_t sub_100348AF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10034C52C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100348B20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261776B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100348B78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64726177726F66;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261776B636162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261776B636162;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10077167C();
  }

  return v11 & 1;
}

Swift::Int sub_100348C6C()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

double sub_100348D14(uint64_t a1)
{
  sub_10077008C();

  return result;
}

Swift::Int sub_100348DA8(uint64_t a1)
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

unint64_t sub_100348E4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10034C5E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100348E7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69726165707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100348EE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6165707061736964;
  v4 = 0xEC000000676E6972;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69726165707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6165707061736964;
  v8 = 0xEC000000676E6972;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69726165707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10077167C();
  }

  return v11 & 1;
}

id sub_100348FE4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pagingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
  *&v4[v9] = sub_1000FE410(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isFixingContentOffset] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection] = 2;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex] = -1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for HeroCarouselScrollView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setPagingEnabled:1];
  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setShowsVerticalScrollIndicator:0];
  [v10 setDelegate:v10];

  return v10;
}

void sub_1003492FC(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;

  LOBYTE(a1) = sub_1000CCBE8(v4, a1);

  if ((a1 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout] = 1;
    sub_10034A728();
    v5 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker;
    if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker])
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        if (!sub_10077158C())
        {
          return;
        }
      }

      else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {

        v7 = sub_10077149C();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = *&v1[v5];
      *&v1[v5] = v7;
      swift_retain_n();
      sub_1003498A4(v8);

      [*(v7 + 32) frame];
      v10 = v9;
      v11 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset;
      v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
      [v1 contentOffset];
      [v1 setContentOffset:v10];

      v1[v11] = 0;
    }
  }
}

double sub_100349480(char a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating;
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating];
  v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = [v1 panGestureRecognizer];
    [v4 setEnabled:(v1[v2] & 1) == 0];

    v5 = v1[v2];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl) setUserInteractionEnabled:v5 ^ 1u];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100349558()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection))
  {
    v3 = sub_10077167C();

    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v4 >> 62)
  {
    if (!sub_10077158C())
    {
      goto LABEL_19;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_10077149C();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = *(v4 + 32);
  }

  v6 = *(v1 + 16);

  v7 = *(v5 + 16);

  if (v6 == v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (!v9)
    {
      v11 = *(v1 + 16);
      if (v11 == v10)
      {
        sub_10034AC9C(0);
        goto LABEL_37;
      }

      if (!__OFADD__(v11, 1))
      {
        sub_10034AC9C(v11 + 1);
        goto LABEL_37;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_19:
  if (*(v0 + v2) && *(v0 + v2) == 1)
  {
  }

  else
  {
    v12 = sub_10077167C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v13 >> 62)
  {
    v14 = sub_10077158C();
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_44;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v13 + 8 * v15 + 32);

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  v16 = sub_10077149C();

LABEL_30:
  v17 = *(v1 + 16);

  v18 = *(v16 + 16);

  if (v17 == v18)
  {
    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = v19 - 1;
      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v21 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount);
    v20 = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
LABEL_36:
      sub_10034AA6C(v20);
      goto LABEL_37;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_37:
}

void sub_1003498A4(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker];
  if (!v2 || a1 && v2[2] == *(a1 + 16))
  {
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v2[3];
    v4 = v2[4];

    v5 = v4;
    sub_10065FA28(v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v1 _isAnimatingScroll])
  {
    goto LABEL_45;
  }

  v6 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = sub_10077158C();
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_11:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_49:

    v27 = sub_10077149C();

    v28 = v2[2];
    v29 = *(v27 + 16);
    swift_unknownObjectRelease();
    if (v28 != v29)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v2[2];
  v12 = *(v10 + 16);

  if (v11 != v12)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection] && v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection] == 1)
  {

LABEL_20:

    v14 = v2[2];
    if (v14)
    {
      v15 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
    v15 = v16 - 1;
    if (!__OFSUB__(v16, 1))
    {
LABEL_25:
      sub_10034AA6C(v15);
      goto LABEL_45;
    }

LABEL_57:
    __break(1u);
    return;
  }

  v13 = sub_10077167C();

  if (v13)
  {
    goto LABEL_20;
  }

LABEL_28:
  v17 = *&v1[v6];
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!sub_10077158C())
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v18 = *(v17 + 32);

    goto LABEL_33;
  }

LABEL_53:

  v18 = sub_10077149C();

LABEL_33:
  v19 = v2[2];

  v20 = *(v18 + 16);

  if (v19 != v20)
  {
    goto LABEL_45;
  }

  if (!v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection])
  {

    goto LABEL_38;
  }

  v21 = sub_10077167C();

  if (v21)
  {
LABEL_38:
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (!v23)
    {
      v25 = v2[2];
      if (v25 == v24)
      {
        v26 = 0;
LABEL_42:
        sub_10034AC9C(v26);
        goto LABEL_45;
      }

      v26 = v25 + 1;
      if (!__OFADD__(v25, 1))
      {
        goto LABEL_42;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_45:
}

void sub_100349CBC(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v31 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = sub_10077158C();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v8 + 32) removeFromSuperview];

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = a1;
  if (a1 >> 62)
  {
    v10 = sub_10077158C();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount] = v10;
  v3[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] = v10 > 1;
  [v3 setScrollEnabled:?];
  v39 = _swiftEmptyArrayStorage;
  v34 = v11;
  v12 = *&v3[v11];
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v12)
    {
      v13 = 0;
      v14 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
      v32 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex;
      v35 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_49;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = sub_10077149C();
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v17 = *(a1 + 32 + 8 * a2);
        }

        v18 = v17;
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        v19 = swift_allocObject();
        *(v19 + 16) = v13;
        *(v19 + 24) = a2;
        *(v19 + 32) = v18;

        sub_10077019C();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v36 = v39;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *&v3[v14];
        *&v3[v14] = 0x8000000000000000;
        sub_10024A434(v19, v13, isUniquelyReferenced_nonNull_native);
        *&v3[v14] = v38;
        swift_endAccess();
        [v3 addSubview:*(v19 + 32)];
        v21 = *(v19 + 32);
        [v3 bounds];
        MinY = CGRectGetMinY(v40);
        [v3 bounds];
        Width = CGRectGetWidth(v41);
        [v3 bounds];
        [v21 setFrame:{0.0, MinY, Width, CGRectGetHeight(v42)}];

        [*(v19 + 32) layoutIfNeeded];
        v24 = sub_10076C03C();
        v37[3] = v24;
        v37[4] = sub_1001D7794();
        v25 = sub_10000DB7C(v37);
        (*(*(v24 - 8) + 104))(v25, v35, v24);
        LOBYTE(v24) = sub_10076C90C();
        sub_10000CD74(v37);
        if ((v24 & 1) != 0 && *&v3[v32] == -1)
        {
          *&v3[v32] = a2;
          if (a2 != -1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10065FCA4(v3, -1, a2);
              swift_unknownObjectRelease();
            }
          }
        }

        v5 = [v3 traitCollection];
        v26 = [v5 layoutDirection];

        if (v26 == 1)
        {
          break;
        }

        v27 = *&v3[v34];
        v15 = __OFSUB__(v27, 1);
        v28 = (v27 - 1);
        if (v15)
        {
          goto LABEL_51;
        }

        if (a2 != v28)
        {
          v15 = __OFADD__(a2++, 1);
          if (v15)
          {
            goto LABEL_55;
          }

LABEL_19:
          if (v16 == v12)
          {
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v16 == v12)
        {
          goto LABEL_47;
        }

        a2 = 0;
LABEL_20:
        ++v13;
        if (v16 >= v12)
        {
          goto LABEL_50;
        }
      }

      if (a2)
      {
        v15 = __OFSUB__(a2--, 1);
        if (v15)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v29 = *&v3[v34];
        a2 = v29 - 1;
        if (__OFSUB__(v29, 1))
        {
          goto LABEL_56;
        }
      }

      goto LABEL_19;
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_47:
    v30 = *&v3[v31];
    *&v3[v31] = v36;
    sub_1003492FC(v30);
  }
}

void sub_10034A1E4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 == 1)
  {
    if (a1 == 1)
    {

LABEL_5:
      v7 = 0;
      v8 = 1;
      goto LABEL_11;
    }

    v6 = sub_10077167C();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_20;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v7 = a1;
LABEL_11:
  v9 = sub_10077167C();

  if (v9)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] != 1)
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker];
  if (!v10)
  {
    return;
  }

  if ((v8 & 1) == 0)
  {

    goto LABEL_24;
  }

  v11 = sub_10077167C();

  if (v11)
  {
LABEL_24:
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v10 + 16);
    if (v17 == v16)
    {
      v13 = 0;
LABEL_31:
      v19 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (*(v20 + 16) && (v21 = sub_10060FF40(v13), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection] = v7;

        sub_100349558();
        [*(v23 + 32) frame];
        v25 = v24;
        v26 = [objc_allocWithZone(CASpringAnimation) init];
        [v26 setMass:1.0];
        [v26 setStiffness:80.0];
        [v26 setDamping:35.0];
        v27 = v26;
        [v27 durationForEpsilon:COERCE_DOUBLE(1)];
        [v27 setDuration:?];

        v28 = *(v10 + 32);
        sub_100185070(a1 | 0x100, 1.0);

        sub_100349480(1);
        [v2 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v27 animation:{v25, 0.0}];
        v29 = *(v23 + 32);
        sub_100185070(a1, 1.0);
      }

      else
      {
      }

      return;
    }

    v13 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
    v13 = v18 - 1;
    if (!__OFSUB__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12 - 1;
  if (!__OFSUB__(v12, 1))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_20:
}

id sub_10034A5F4(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = sub_10077158C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if ((a2 & 1) == 0 && *(v8 + 24) == a1)
      {

        v10 = *(v8 + 32);

        return v10;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

void sub_10034A728()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout) == 1 && *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount) >= 1)
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10034C5B0;
    *(v4 + 24) = v3;
    v7[4] = sub_1000349FC;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1001C5148;
    v7[3] = &unk_100891FA8;
    v5 = _Block_copy(v7);
    v6 = isEscapingClosureAtFileLocation;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + v1) = 0;
}

double sub_10034A8B8(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v13) * *&a1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
  [a1 bounds];
  [a1 setContentSize:{v2, CGRectGetHeight(v14)}];
  v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      v8 = *(v6 + 32);
      [a1 bounds];
      v9 = CGRectGetWidth(v15) * v5;
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      [a1 bounds];
      [v8 setFrame:{v9, 0.0, Width, CGRectGetHeight(v17)}];

      ++v5;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_10034AA6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
  if (v3 < 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
LABEL_15:
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
    sub_1003492FC(v10);

    [v1 contentOffset];
    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    [v1 contentSize];
    if (v13 < v12)
    {
      v12 = v13;
    }

    [v1 bounds];
    *v14.i64 = v12 / CGRectGetWidth(v20);
    *v15.i64 = *v14.i64 - trunc(*v14.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v19 = *vbslq_s8(vnegq_f64(v16), v15, v14).i64;
    [v1 bounds];
    v17 = v19 * CGRectGetWidth(v21);
    v18 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    [v1 setContentOffset:v17];
    v1[v18] = 0;
    return;
  }

  v5 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  while (1)
  {
    if (!*(*&v1[v5] + 16))
    {
      goto LABEL_5;
    }

    sub_10060FF40(a1);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v7 = *&v1[v2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      break;
    }

    if (a1 == v9)
    {
      a1 = 0;
    }

    else
    {
      v8 = __OFADD__(a1++, 1);
      if (v8)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_10034AC9C(uint64_t a1)
{
  v3 = sub_10077167C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
  if (v5 < 0)
  {
    goto LABEL_37;
  }

  v6 = v3;
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_24:
    if ((v6 & 1) == 0)
    {
      v8 = sub_1005D522C(_swiftEmptyArrayStorage);
    }

    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers] = v8;
    sub_1003492FC(v14);

    [v1 contentOffset];
    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    [v1 contentSize];
    v18 = v17;
    [v1 bounds];
    v19 = v18 - CGRectGetWidth(v31);
    if (v19 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    [v1 bounds];
    *v21.i64 = v20 / CGRectGetWidth(v32);
    v30 = v21;
    [v1 contentSize];
    v23 = v22;
    [v1 bounds];
    v24 = v23 - CGRectGetWidth(v33);
    *v25.i64 = *v30.i64 - trunc(*v30.i64);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 1.0 - *vbslq_s8(vnegq_f64(v26), v25, v30).i64;
    [v1 bounds];
    v28 = v24 - v27 * CGRectGetWidth(v34);
    v29 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    [v1 setContentOffset:v28];
    v1[v29] = 0;
    return;
  }

  v7 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!*(*&v1[v7] + 16))
    {
      goto LABEL_5;
    }

    sub_10060FF40(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v8 = _swiftEmptyArrayStorage;
    if (v6)
    {
      break;
    }

    if (a1)
    {
      v11 = __OFSUB__(a1--, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *&v1[v4];
      a1 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }
    }

LABEL_5:
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  v10 = *&v1[v4];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    if (a1 == v12)
    {
      a1 = 0;
    }

    else
    {
      v11 = __OFADD__(a1++, 1);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_5;
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
}

void sub_10034AF90()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 bounds];
  *v3.i64 = v2 / CGRectGetWidth(v15);
  *v4.i64 = *v3.i64 - trunc(*v3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = *vbslq_s8(vnegq_f64(v5), v4, v3).i64;
  if (v6 == 0.0)
  {
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = 9.22337204e18;
    if (*v3.i64 < 9.22337204e18)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v6 >= 0.5)
  {
LABEL_11:
    *v3.i64 = ceil(*v3.i64);
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*v3.i64 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  *v3.i64 = floor(*v3.i64);
  if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*v3.i64 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*v3.i64 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_26:

    v12 = sub_10077149C();

    goto LABEL_22;
  }

  if (v9 >= (*v3.i64 & ~(*v3.i64 >> 63)))
  {
    v10 = *v3.i64 & ~(*v3.i64 >> 63);
  }

  else
  {
    v10 = v9;
  }

  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v11 + 8 * v10 + 32);

LABEL_22:
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker] = v12;

  sub_1003498A4(v13);
}

void sub_10034B1AC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v2 >> 62)
  {
    goto LABEL_74;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_15;
  }

  v56 = _swiftEmptyArrayStorage;
  v5 = v2;

  v2 = sub_1004BBD0C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v1;
    v6 = 0;
    v1 = 0;
    v4 = v56;
    v7 = v5;
    v47 = v5;
    v48 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v3;
    do
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v40 = v2;
        v3 = sub_10077158C();
        v2 = v40;
        goto LABEL_3;
      }

      if (v48)
      {
        v9 = sub_10077149C();
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_73;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v51 = v9;
      sub_10034B6EC(&v51, v50, &v52);

      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v56 = v4;
      v15 = v4[2];
      v14 = v4[3];
      if (v15 >= v14 >> 1)
      {
        v2 = sub_1004BBD0C((v14 > 1), v15 + 1, 1);
        v4 = v56;
      }

      v4[2] = v15 + 1;
      v16 = &v4[2 * v15];
      v16[4] = v10;
      *(v16 + 40) = v11;
      *(v16 + 41) = v12;
      *(v16 + 42) = v13;
      ++v6;
      v7 = v47;
    }

    while (v8 != v46);

    v1 = v43;
LABEL_15:
    v17 = *&v50[v1];
    if (v17 >> 62)
    {
      v41 = *&v50[v1];
      v1 = sub_10077158C();
      v17 = v41;
    }

    else
    {
      v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v17;

    if (v1)
    {
      v18 = 0;
      v19 = 0;
      v44 = v1;
      while (2)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v2 = sub_10077149C();
          v20 = v2;
        }

        else
        {
          if (v19 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v20 = *(v42 + 32 + 8 * v19);
        }

        v21 = v4[2];
        if (v19 == v21)
        {

          goto LABEL_67;
        }

        if (v19 >= v21)
        {
          goto LABEL_72;
        }

        v22 = *&v4[v18 + 4];
        v23 = LOBYTE(v4[v18 + 5]);
        v24 = BYTE1(v4[v18 + 5]);
        v25 = BYTE2(v4[v18 + 5]);
        v26 = *(v20 + 32) + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 9);
        v49 = *(v26 + 10);
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 9) = v24;
        LODWORD(v50) = v25;
        *(v26 + 10) = v25;
        if (v22 != v27)
        {
          goto LABEL_19;
        }

        v30 = 0x64726177726F66;
        if (v23 != 1)
        {
          v30 = 1701736302;
        }

        v31 = 0xE700000000000000;
        if (v23 != 1)
        {
          v31 = 0xE400000000000000;
        }

        if (v23)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0x647261776B636162;
        }

        if (v23)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE800000000000000;
        }

        if (v28)
        {
          if (v28 == 1)
          {
            v34 = 0xE700000000000000;
            if (v32 != 0x64726177726F66)
            {
              goto LABEL_46;
            }

LABEL_44:
            if (v33 == v34)
            {

LABEL_47:
              if (v24)
              {
                if (v24 == 1)
                {
                  v36 = 0x6165707061736964;
                  v37 = 0xEC000000676E6972;
                  if (!v29)
                  {
LABEL_56:
                    v38 = 0xE900000000000067;
                    if (v36 != 0x6E69726165707061)
                    {
                      goto LABEL_62;
                    }

LABEL_59:
                    if (v37 == v38)
                    {

                      if (v50 == v49)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_19;
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  v37 = 0xE400000000000000;
                  v36 = 1701736302;
                  if (!v29)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                v36 = 0x6E69726165707061;
                v37 = 0xE900000000000067;
                if (!v29)
                {
                  goto LABEL_56;
                }
              }

              if (v29 == 1)
              {
                v38 = 0xEC000000676E6972;
                if (v36 == 0x6165707061736964)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v38 = 0xE400000000000000;
                if (v36 == 1701736302)
                {
                  goto LABEL_59;
                }
              }

LABEL_62:
              v39 = sub_10077167C();

              if ((v39 & 1) != 0 && v50 == v49)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v34 = 0xE400000000000000;
            if (v32 == 1701736302)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          v35 = sub_10077167C();

          if (v35)
          {
            goto LABEL_47;
          }

LABEL_19:
          sub_10018484C();
          sub_100184B50();
LABEL_20:
          ++v19;

          v18 += 2;
          v1 = v44;
          if (v44 == v19)
          {
            goto LABEL_67;
          }

          continue;
        }

        break;
      }

      v34 = 0xE800000000000000;
      if (v32 != 0x647261776B636162)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_67:
  }
}

id sub_10034B6EC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  [*(*a1 + 32) frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a2 superview];
  [a2 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a2 frame];
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v24;
  v46.size.height = v25;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  v41 = CGRectIntersection(v40, v46);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v47.origin.x = CGRectNull.origin.x;
  v47.origin.y = CGRectNull.origin.y;
  v47.size.width = CGRectNull.size.width;
  v47.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v41, v47))
  {
    v42.origin.x = v15;
    v42.origin.y = v17;
    v42.size.width = v19;
    v42.size.height = v21;
    if (CGRectGetMaxX(v42) > 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v31 = CGRectGetWidth(v43);
    [a2 bounds];
    v30 = v31 / CGRectGetWidth(v44);
  }

  v45.origin.x = v15;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  MinX = CGRectGetMinX(v45);
  v33 = a2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection];
  if (MinX <= 0.0)
  {
    if (v33 == 1)
    {

      goto LABEL_14;
    }

    v36 = sub_10077167C();

    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33 == 1)
    {

      goto LABEL_16;
    }

    v34 = sub_10077167C();

    if ((v34 & 1) == 0)
    {
LABEL_14:

      v35 = 1;
LABEL_17:
      v30 = 1.0 - v30;
      goto LABEL_18;
    }
  }

LABEL_16:
  v37 = sub_10077167C();

  v35 = 0;
  if (v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = a2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection];
  result = [a2 _isAnimatingScroll];
  *a3 = v30;
  *(a3 + 8) = v38;
  *(a3 + 9) = v35;
  *(a3 + 10) = result ^ 1;
  return result;
}

void sub_10034BB70(void *a1)
{
  v3 = sub_100349480(0);
  v4 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isFixingContentOffset;
  if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isFixingContentOffset) & 1) != 0 || ([a1 contentOffset], (v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker)) != 0) && (v7 = v5, objc_msgSend(*(v6 + 32), "frame"), v7 == v8))
  {
    *(v1 + v4) = 0;

    sub_10034BCA4(0);
  }

  else
  {
    *(v1 + v4) = 1;

    sub_10034A1E4(1u);
  }
}

void sub_10034BCA4(char a1)
{
  v2 = v1;
  v4 = sub_100766DDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker);
  if (!v9)
  {
    return;
  }

  v33 = v6;
  if (a1)
  {
    v10 = *(v9 + 16);

    v11 = v10;
LABEL_9:
    sub_10034AA6C(v11);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection;
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) && *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) == 1)
  {

LABEL_8:
    v11 = *(v9 + 16);
    goto LABEL_9;
  }

  v13 = sub_10077167C();

  if (v13)
  {
    goto LABEL_8;
  }

  if (*(v2 + v12))
  {
    v27 = sub_10077167C();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = *(v9 + 16);
  if (v31 != v30)
  {
    v32 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_35;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v32 = 0;
LABEL_35:
  sub_10034AC9C(v32);
LABEL_10:
  v14 = *(v9 + 24);
  v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex) = v14;
  if (v14 != v15 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10065FCA4(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = Strong;
  if (a1)
  {
    if (Strong)
    {
      v18 = sub_10076C03C();
      v35 = v18;
      v36 = sub_1001D7794();
      v19 = sub_10000DB7C(v34);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v18);
      LOBYTE(v18) = sub_10076C90C();
      sub_10000CD74(v34);
      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollConfiguration;
        swift_beginAccess();
        v21 = v33;
        (*(v5 + 16))(v8, v17 + v20, v33);
        sub_100766DBC();
        v23 = v22;
        (*(v5 + 8))(v8, v21);
        v24 = v23;
LABEL_27:
        sub_10065E9F4(v24);

        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  else if (Strong)
  {
    v25 = sub_10076C03C();
    v35 = v25;
    v36 = sub_1001D7794();
    v26 = sub_10000DB7C(v34);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v25);
    LOBYTE(v25) = sub_10076C90C();
    sub_10000CD74(v34);
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
      goto LABEL_27;
    }

LABEL_19:

    *(v17 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively) = 0;
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }
}

id sub_10034C0FC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeroCarouselScrollView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t initializeBufferWithCopyOfBuffer for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10034C2B8()
{
  result = qword_100953208;
  if (!qword_100953208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953208);
  }

  return result;
}

uint64_t sub_10034C30C(int a1, int a2, double a3, double a4)
{
  if (a3 != a4)
  {
    return 0;
  }

  v6 = a1;
  if (!a1)
  {
    v8 = 0xE800000000000000;
    v7 = 0x647261776B636162;
    v9 = a2;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0xE800000000000000;
    if (v7 != 0x647261776B636162)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v7 = 0x64726177726F66;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v6 == 1)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v9 == 1)
  {
    v10 = 0x64726177726F66;
  }

  else
  {
    v10 = 1701736302;
  }

  if (v9 == 1)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7 != v10)
  {
LABEL_23:
    v13 = sub_10077167C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (v8 != v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (BYTE1(a1))
  {
    if (BYTE1(a1) == 1)
    {
      v14 = 0x6165707061736964;
    }

    else
    {
      v14 = 1701736302;
    }

    if (BYTE1(a1) == 1)
    {
      v15 = 0xEC000000676E6972;
    }

    else
    {
      v15 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0x6E69726165707061;
    v15 = 0xE900000000000067;
  }

  v16 = 0x6165707061736964;
  v17 = 0xEC000000676E6972;
  if (BYTE1(a2) != 1)
  {
    v16 = 1701736302;
    v17 = 0xE400000000000000;
  }

  if (BYTE1(a2))
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6E69726165707061;
  }

  if (BYTE1(a2))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000067;
  }

  if (v14 == v18 && v15 == v19)
  {

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v20 = sub_10077167C();

  if (v20)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

unint64_t sub_10034C52C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100883258;
  v6._object = a2;
  v4 = sub_10077160C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10034C578()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10034C5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10034C5E0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1008832C0;
  v6._object = a2;
  v4 = sub_10077160C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_10034C62C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pagingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
  *(v0 + v1) = sub_1000FE410(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isFixingContentOffset) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) = 2;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex) = -1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_10034C748()
{
  [v0 _horizontalVelocity];
  v2 = v1;
  v3 = [v0 panGestureRecognizer];
  [v3 velocityInView:v0];
  v5 = v4;

  v6 = v5 != 0.0 && v2 == 0.0;
  v7 = -v5;
  if (!v6)
  {
    v7 = v2;
  }

  if (v7 != 0.0)
  {
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
    sub_100349558();
  }

  sub_10034AF90();
  sub_10034B1AC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_10076C03C();
    v19 = v10;
    v11 = sub_1001D7794();
    v20 = v11;
    v12 = sub_10000DB7C(v18);
    v13 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v14 = *(*(v10 - 8) + 104);
    v14(v12, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v10);
    v15 = sub_10076C90C();
    sub_10000CD74(v18);
    if (v15)
    {
      *(v9 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively) = 1;
    }

    else
    {
      v19 = v10;
      v20 = v11;
      v16 = sub_10000DB7C(v18);
      v14(v16, v13, v10);
      v17 = sub_10076C90C();
      sub_10000CD74(v18);
      if ((v17 & 1) == 0)
      {
        sub_100660768(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_10034C8F8()
{
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset) & 1) == 0)
  {
    [v0 _horizontalVelocity];
    v2 = v1;
    v3 = [v0 panGestureRecognizer];
    [v3 velocityInView:v0];
    v5 = v4;

    v6 = v5 != 0.0 && v2 == 0.0;
    v7 = -v5;
    if (!v6)
    {
      v7 = v2;
    }

    if (v7 != 0.0)
    {
      *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
      sub_100349558();
    }

    sub_10034AF90();

    sub_10034B1AC();
  }
}

unint64_t sub_10034C9DC()
{
  result = qword_100953218;
  if (!qword_100953218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953218);
  }

  return result;
}

void sub_10034CA30()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for SeparatorSupplementaryView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_10076FF6C();
    sub_1007708FC();
    v5 = sub_10076FF6C();

    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_10034CB14(void *a1)
{
  v1 = a1;
  sub_10034CA30();
}

double sub_10034CB5C()
{
  v1 = [v0 traitCollection];
  sub_10076E20C();
  v3 = v2;

  return v3;
}

void sub_10034CBAC(uint64_t a1)
{
  v3 = sub_10000A5D4(&qword_100953840, &unk_10079CBB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10076B21C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1007676EC())
  {
    (*(v7 + 104))(v9, enum case for Uber.Style.above(_:), v6);
    v10 = sub_10076B27C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_10076B29C();
    swift_allocObject();
    swift_retain_n();
    v11 = sub_10076B22C();
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber] = v11;

    sub_100618758(v12);
  }

  v13 = [v1 collectionView];
  sub_100439274(a1, v13);

  sub_1001C7AC0();
}

double sub_10034CDF4(void *a1)
{
  v1 = a1;
  sub_10034CE50();
  v3 = v2;

  return v3;
}

void sub_10034CE50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v0 pageContainerSize];
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007706CC();

  if ((v6 & 1) != 0 && v4 > 672.0)
  {
    sub_1005A5D54();
  }

  else
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, "pageMarginInsets");
  }
}

id sub_10034CF30(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000001007D7F90 == a3 || (sub_10077167C() & 1) != 0)
  {
    v9 = sub_10076FF6C();
    type metadata accessor for SeparatorSupplementaryView(0);
    sub_1007708FC();
    v10 = sub_10076FF6C();

    v11.super.isa = sub_10075E02C().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v13 = sub_10076FF6C();
    v11.super.isa = sub_10075E02C().super.isa;
    v15.receiver = v4;
    v15.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v15, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v13, v11.super.isa);
  }

  return v12;
}

id sub_10034D098(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FF9C();
  v13 = v12;
  sub_10075E06C();
  v14 = a3;
  v15 = a1;
  v16 = sub_10034CF30(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_10034D1D8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34[1] = a5;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v10 = sub_100763F9C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100763FDC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34[0] = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v34 - v17;
  if (a3 == 0xD000000000000039 && 0x80000001007D7F90 == a4 || (sub_10077167C()) && (type metadata accessor for SeparatorSupplementaryView(0), (v19 = swift_dynamicCastClass()) != 0))
  {
    v20 = v19;
    (*(v11 + 104))(v36, enum case for ComponentSeparator.Position.top(_:), v10);
    v35 = a2;
    [v6 pageContainerSize];
    v22 = v21;
    v23 = [v6 traitCollection];
    v24 = sub_1007706CC();

    if ((v24 & 1) != 0 && v22 > 672.0)
    {
      sub_1005A5D54();
    }

    else
    {
      v39.receiver = v6;
      v39.super_class = ObjectType;
      objc_msgSendSuper2(&v39, "pageMarginInsets");
    }

    [v6 pageContainerSize];
    v28 = v27;
    v29 = [v6 traitCollection];
    v30 = sub_1007706CC();

    if ((v30 & 1) != 0 && v28 > 672.0)
    {
      sub_1005A5D54();
    }

    else
    {
      v38.receiver = v6;
      v38.super_class = ObjectType;
      objc_msgSendSuper2(&v38, "pageMarginInsets");
    }

    sub_100763FAC();
    v31 = v34[0];
    (*(v14 + 16))(v34[0], v18, v13);
    v32 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
    swift_beginAccess();
    (*(v14 + 24))(v20 + v32, v31, v13);
    swift_endAccess();
    sub_1006359A8();

    v33 = *(v14 + 8);
    v33(v31, v13);
    v33(v18, v13);
  }

  else
  {
    v25 = sub_10076FF6C();
    isa = sub_10075E02C().super.isa;
    v40.receiver = v6;
    v40.super_class = ObjectType;
    objc_msgSendSuper2(&v40, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", v35, a2, v25, isa);
  }
}

uint64_t sub_10034D61C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10075E11C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FF9C();
  v15 = v14;
  sub_10075E06C();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_10034D1D8(v16, v17, v13, v15, v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for VersionHistoryViewController(uint64_t a1)
{
  result = qword_100953248;
  if (!qword_100953248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034D858(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F9AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100953830, &unk_10079CBA0);
  swift_allocObject();
  swift_retain_n();
  v8 = sub_10049303C();

  v9 = sub_1004895EC(a1, v8, a2);
  sub_10034DAFC(&qword_100953838, &unk_10079CB58);
  v10 = v9;

  v11 = v10;
  sub_1007676FC();
  sub_10076770C();
  v13 = v12;

  if (v13)
  {
    v14 = sub_10076FF6C();
  }

  else
  {
    v14 = 0;
  }

  [v11 setTitle:v14];

  v11[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
  v15 = *&v11[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber];
  v16 = [v11 navigationItem];
  v17 = v16;
  if (v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  [v16 setLargeTitleDisplayMode:v18];

  v19 = [v11 view];
  if (v19)
  {
    memset(v20, 0, sizeof(v20));
    sub_10076F96C();
    sub_1000258C0(v20);
    sub_100770B9C();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034DAFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VersionHistoryViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10034DB40(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_objectGraph] = a3;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_presenter] = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_artworkLoader] = v28;
  if (a2)
  {
    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_10076FF9C();
    v12 = v11;
    if (v10 == sub_10076FF9C() && v12 == v13)
    {

      v16 = 1;
    }

    else
    {
      v15 = sub_10077167C();

      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(type metadata accessor for ArcadeSubscribePageView());
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView] = sub_1001FFAC0(v16);
  sub_10076615C();
  sub_10076F63C();
  v18 = v28;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_impressionsCalculator] = v28;
  if (v18)
  {

    sub_10076614C();
  }

  v19 = &v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver];
  *(v19 + 3) = sub_1007676AC();
  *(v19 + 4) = &protocol witness table for BasePresenter;
  *v19 = a1;
  v27.receiver = v4;
  v27.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_1003520A0(&qword_1009538E8, v21, type metadata accessor for ArcadeSubscribeViewController, &protocol conformance descriptor for ArcadeSubscribeViewController);
  v22 = v20;
  sub_10076768C();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v25 = sub_100770D2C();
    [v24 setBackgroundColor:v25];

    v26 = [v22 view];
    if (v26)
    {
      [v26 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10034E0B0()
{
  v1 = [v0 isViewLoaded];
  v2 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController];
    if (v3)
    {
      v4 = v3;
      [v0 addChildViewController:v4];
      result = [v4 view];
      if (result)
      {
        v6 = result;
        result = [v0 view];
        if (result)
        {
          v7 = result;
          [result bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v6 setFrame:{v9, v11, v13, v15}];
          v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
          if (!v16)
          {
            result = [v0 view];
            if (result)
            {
              v18 = result;
              result = [v4 view];
              if (result)
              {
                v19 = result;
                [v18 addSubview:result];
                goto LABEL_12;
              }

LABEL_21:
              __break(1u);
              return result;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v17 = v16;
          result = [v0 view];
          if (result)
          {
            v18 = result;
            result = [v4 view];
            if (result)
            {
              v19 = result;
              [v18 insertSubview:result belowSubview:v17];

LABEL_12:
              [v4 didMoveToParentViewController:v0];

              v2 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
              goto LABEL_13;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_13:
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView];
  v21 = *&v0[v2] != 0;

  return [v20 setHidden:v21];
}

void sub_10034E2DC()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v1)
  {
    v2 = v1;
    v15._object = 0x80000001007E0730;
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_1007622EC(v15, v16);
    v3 = sub_10076FF6C();

    [v2 setTitle:v3 forState:0];

    [v2 addTarget:v0 action:"dismissPressed:" forControlEvents:64];
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 view];
      if (!v6)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v6;
      v8 = [v5 view];
      if (!v8)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v8;
      [v7 insertSubview:v2 aboveSubview:v8];

      v10 = v2;
      v2 = v9;
    }

    else
    {
      v11 = [v0 view];
      if (!v11)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v10 = v11;
      [v11 addSubview:v2];
    }
  }

  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 setNeedsLayout];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_10076769C();
  [v1 setModalInPresentation:1];
  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  [v1 setTitle:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationItem];
  v11 = [v10 leftBarButtonItems];

  if (v11)
  {
    sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    v12 = sub_1007701BC();

    if (v12 >> 62)
    {
      v13 = sub_10077158C();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 navigationItem];
  v16 = [v15 rightBarButtonItems];

  if (v16)
  {
    sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    v17 = sub_1007701BC();

    v18 = v17 >> 62 ? sub_10077158C() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
      v14 = 1;
    }
  }

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 setNavigationBarHidden:!v14 animated:0];
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1, v11);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  if (sub_100760C6C())
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v6 + 8))(v8, v5);
    sub_10076367C();
  }

  if (sub_100760C5C())
  {
    sub_10076FAEC();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076FAAC();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946A10, &qword_100789280);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_10075F2AC();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1, v16);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v15 + 104))(v18, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v14);
  sub_10075F2BC();
  (*(v15 + 8))(v18, v14);
  if (sub_100760C6C())
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v20 + 8))(v7, v21);
    sub_10076369C();
    v19 = sub_1007636AC();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    sub_10076368C();
  }

  if (sub_100760C5C())
  {
    sub_10076FA9C();
    sub_10076FAFC();

    (*(v22 + 8))(v10, v23);
  }

  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_10076614C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10075F2AC();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1, v6);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v5 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v4);
  sub_10075F2BC();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewDidBecomeFullyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_10076614C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

uint64_t sub_10034F7DC(SEL *a1, unsigned int *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a1, v8);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v7 + 104))(v10, *a2, v6);
  sub_10075F2BC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10034F92C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10075F2AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v15, v12);
  sub_10000CF78(&v13[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v13[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10075F2BC();

  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68.receiver = v1;
  v68.super_class = ObjectType;
  objc_msgSendSuper2(&v68, "viewWillLayoutSubviews", v5);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
    v20 = &selRef_initWithTabBarSystemItem_tag_;
    if (v19)
    {
      v21 = v18;
      v62 = v19;
      v22 = [v1 view];
      if (!v22)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v23 = v22;
      [v22 safeAreaInsets];

      v60 = v17;
      v61 = v15;
      sub_100770A3C();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView];
      v59 = v32[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
      v33 = [v32 traitCollection];
      v34 = sub_1007706EC();

      if (v34)
      {
        v35 = [v32 window];
        if (v35)
        {
          v36 = v35;
          [v35 frame];
          Width = CGRectGetWidth(v69);
          [v32 bounds];
          v38 = CGRectGetWidth(v70);

          v39 = v38 < Width;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 1;
      }

      v46 = [v1 view];
      if (!v46)
      {
        goto LABEL_24;
      }

      v47 = v46;
      [v46 bounds];
      v49 = v48;

      v50 = [v1 traitCollection];
      v51 = sub_10077071C();

      v57 = v13;
      v58 = v11;
      if (v51)
      {
        sub_1001FE6B0(v39, v59, v63);
        sub_10000A570(&v66, v67);
        sub_100350058(v63);
      }

      else
      {
        sub_1001FF5C8(v39, v59, v63, v49);
        sub_10000A570(&v65, v67);
        sub_100350004(v63);
      }

      sub_10003F19C(v67, v63);
      v52 = v64;
      sub_10000CF78(v63, v64);
      sub_1000FF02C(v52);
      sub_10076D40C();
      (*(v4 + 8))(v7, v3);
      sub_10000CD74(v63);
      v53 = v62;
      [v62 measurementsWithFitting:v1 in:{v29, v31}];
      v71.origin.x = v25;
      v71.origin.y = v27;
      v71.size.width = v29;
      v71.size.height = v31;
      CGRectGetMidX(v71);
      v72.origin.x = v25;
      v72.origin.y = v27;
      v72.size.width = v29;
      v72.size.height = v31;
      CGRectGetMaxY(v72);
      v54 = v53;
      sub_100770A4C();
      v20 = &selRef_initWithTabBarSystemItem_tag_;
      [v54 setFrame:?];

      v13 = v57;
      v11 = v58;
      v17 = v60;
      v15 = v61;
    }

    else
    {
      v45 = v18;
    }

    v55 = [v18 view];
    if (v55)
    {
      v56 = v55;
      [v55 v20[217]];

      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];

    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 safeAreaInsets];

      sub_100770A3C();
      [v40 setFrame:?];
      return;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", isa);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArcadeSubscribeViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1003502F0(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(&a1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_10075F2BC();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10035041C()
{
  v0 = sub_10076F3BC();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076F68C();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076FA1C();
  v16 = *(v6 - 8);
  v17 = v6;
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076305C();
  v13[2] = sub_10076303C();
  sub_100760C7C();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F3C();

  sub_100761F8C();
  sub_100761F9C();

  v21 = 0;
  aBlock = 0u;
  v20 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_100761F8C();
  sub_100761F2C();

  sub_10076FA0C();
  swift_unknownObjectRelease();

  sub_10000CFBC(v23, &qword_1009538F0, &qword_10079CD90);
  sub_10000CFBC(&aBlock, &qword_1009538F8, qword_10079CD98);
  v9 = v13[1];
  sub_10076F64C();
  sub_10076FC1C();
  sub_10076084C();
  sub_10076F67C();

  (*(v14 + 8))(v2, v15);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1003520E8;
  v22 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_10009AEDC;
  *(&v20 + 1) = &unk_100892208;
  v11 = _Block_copy(&aBlock);

  [v9 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  return (*(v16 + 8))(v8, v17);
}

void sub_1003508DC(double a1)
{
  v2 = v1;
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F0EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  if (!*(v2 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton))
  {
    sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    v22 = v4;
    v20 = sub_10077068C();
    sub_10076F0DC();
    sub_10076F15C();
    v21 = *(v11 + 8);
    v21(v13, v10);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100352104;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100892230;
    v18 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003520A0(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_1000852B8();
    sub_1007712CC();
    v19 = v20;
    sub_10077064C();
    _Block_release(v18);

    (*(v22 + 8))(v6, v3);
    (*(v23 + 8))(v9, v7);
    v21(v16, v10);
  }
}

void sub_100350CB4(uint64_t a1)
{
  v1 = sub_10076D3DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {

      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        sub_10076313C();
        if (qword_100940E58 != -1)
        {
          swift_once();
        }

        v11 = sub_10000A61C(v1, qword_1009A1900);
        (*(v2 + 16))(v4, v11, v1);
        v12 = sub_10076312C();
        v13 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton;
        v14 = *&v10[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
        if (v14)
        {
          [v14 removeFromSuperview];
          v15 = *&v10[v13];
        }

        else
        {
          v15 = 0;
        }

        *&v10[v13] = v12;
        v16 = v12;

        sub_10034E2DC();
      }
    }
  }
}

void sub_100350E94(uint64_t a1, __n128 a2)
{
  v4 = sub_10076F0EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_10076F11C();
  }

  *(v2 + v11) = a1;
  swift_retain_n();

  if (a1)
  {
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    v12 = sub_10077068C();
    sub_10076F0DC();
    sub_10076137C();
    sub_10076F15C();
    v13 = *(v5 + 8);
    v13(v7, v4);
    sub_10077065C();

    v13(v10, v4);
  }
}

void ArcadeSubscribeViewController.apply(page:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = 0;

  sub_10034E2DC();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 bounds];

  v10 = [v2 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 safeAreaInsets];

  sub_100770A3C();
  sub_100200738(v12, v13, a1, sub_100351ED0, v7, *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_artworkLoader], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_impressionsCalculator], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_objectGraph]);

  v14 = [v2 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

void *sub_100351298(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10000CD08(a1, v5);
    sub_10035041C();

    return sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
  }

  return result;
}

Swift::Void __swiftcall ArcadeSubscribeViewController.toggleDismissButtonVisibility(shouldHide:)(Swift::Bool shouldHide)
{
  v3 = sub_10076F08C();
  __chkstk_darwin(v3);
  v4 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_10076F11C();
  }

  *(v1 + v4) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView);
  if (shouldHide)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v19 = sub_100351ED8;
  v20 = v9;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10009AEDC;
  v18 = &unk_1008920D8;
  v10 = _Block_copy(&aBlock);

  [v7 animateWithDuration:4 delay:v10 options:0 animations:0.15 completion:0.0];
  _Block_release(v10);
  if (shouldHide)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v19 = sub_100351F34;
    v20 = v11;
    aBlock = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_10009AEDC;
    v18 = &unk_100892128;
    _Block_copy(&aBlock);
    sub_1003520A0(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v12 = v5;
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_1000852B8();
    sub_1007712CC();
    sub_10076F12C();
    swift_allocObject();
    v13 = sub_10076F10C();

    sub_100350E94(v13, v14);
  }
}

void sub_100351630(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0x3FF0000000000000;
  v5[4] = sub_100352164;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009AEDC;
  v5[3] = &unk_100892280;
  v4 = _Block_copy(v5);

  [v1 animateWithDuration:4 delay:v4 options:0 animations:0.15 completion:0.0];
  _Block_release(v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.dismiss()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 navigationController];
    v3 = [v2 visibleViewController];

    if (v3)
    {
      sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      v4 = v0;
      v5 = sub_100770EEC();

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_10035215C;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_10009AEDC;
        v8[3] = &unk_100892150;
        v7 = _Block_copy(v8);

        [v4 dismissViewControllerAnimated:1 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

void sub_1003518EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);

      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.showLoading()()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10076857C();

  v7 = *(v1 + v5);
  *(v1 + v5) = v4;
  v8 = v4;

  sub_10034E0B0();
  if ((sub_10076767C() & 1) == 0)
  {
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_10076137C();
    sub_1003508DC(v9);
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.hideLoading()()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10076857C();

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_10034E0B0();
}

void ArcadeSubscribeViewController.show(updateError:)(uint64_t a1)
{
  v2 = v1;
  sub_10076DF3C();
  sub_1003520A0(&qword_100953890, 255, &type metadata accessor for ArcadeSubscribePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_10076DEFC();
  v4 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10076857C();

  v6 = *(v2 + v4);
  *(v2 + v4) = v3;
  v7 = v3;

  sub_10034E0B0();
}

uint64_t ArcadeSubscribeViewController.perform(action:sender:)(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_objectGraph);
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

id ArcadeSubscribeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_100351E98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100351EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100351EFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100351F40()
{
  result = qword_100953898;
  if (!qword_100953898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953898);
  }

  return result;
}

uint64_t sub_1003520A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10035210C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10035217C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_productTapToRateView;
  type metadata accessor for ProductTapToRateView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView] = v10;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v15 = v14;
  v16 = sub_100770CDC();
  [v15 setBackgroundColor:v16];

  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_productTapToRateView]];

  return v11;
}

id sub_100352400()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (qword_100940940 != -1)
  {
    swift_once();
  }

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetMinX(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetMinY(v19);
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  CGRectGetWidth(v20);
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView];
  sub_100770A4C();
  [v11 setFrame:?];
  if (([v11 isHidden] & 1) == 0)
  {
    sub_100770A3C();
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  return [*&v1[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_productTapToRateView] setFrame:{v4, v6, v8, v10}];
}

id sub_1003526B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100352754(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = sub_10077084C();

  if (v4)
  {
    v5 = [v1 _localOverrideTraitCollection];
    if (!v5)
    {
      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v1 _setLocalOverrideTraitCollection:v9];

      return 1;
    }
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_10077086C();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [v1 _setLocalOverrideTraitCollection:0];
  return 1;
}

uint64_t sub_100352870()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D67C();
  v17 = v4;
  v18 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v16);
  sub_10076D66C();
  if (qword_100940AB8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0E38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v14 = sub_10076D9AC();
  v15 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v13);
  v11 = v0;
  v12 = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(&v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v10);
  sub_10076D66C();
  qword_10099E8E8 = 0;
  unk_10099E8F0 = 0;
  sub_10003F19C(&v16, &unk_10099E8F8);
  sub_10003F19C(&v13, &unk_10099E920);
  qword_10099E950 = 0;
  unk_10099E958 = 0;
  qword_10099E948 = 2;
  return sub_10003F19C(&v10, &unk_10099E960);
}

uint64_t sub_100352AB0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763ADC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v4, qword_10099DDA0);
  (*(v5 + 16))(v7, v8, v4);
  sub_1007639AC();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  *&v24 = 0x4024000000000000;
  if (qword_100940AB8 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A0E38);
  (*(*(v13 - 8) + 16))(v3, v14, v13);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v22 = sub_10076D9AC();
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v18);
  (*(v1 + 16))(v15, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  v19 = sub_10076D67C();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v18);
  sub_10076D66C();
  qword_10099E988 = v10;
  unk_10099E990 = v12;
  sub_10003F19C(&v24, &unk_10099E998);
  sub_10003F19C(&v21, &unk_10099E9C0);
  qword_10099E9F0 = 0;
  unk_10099E9F8 = 0;
  qword_10099E9E8 = 3;
  return sub_10003F19C(&v18, &unk_10099EA00);
}

char *sub_100352DF8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
  sub_10075FD2C();
  *&v4[v15] = sub_10075FB3C();
  v46 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_100940AB0 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  v17 = sub_10000A61C(v16, qword_1009A0E20);
  v18 = *(v16 - 8);
  v45 = *(v18 + 16);
  v45(v14, v17, v16);
  v44 = *(v18 + 56);
  v44(v14, 0, 1, v16);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v43 = *(v10 + 104);
  v43(v48, enum case for DirectionalTextAlignment.none(_:), v9);
  v20 = sub_1007626BC();
  v42 = v9;
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *&v4[v46] = sub_1007626AC();
  v23 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_100940AB8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v16, qword_1009A0E38);
  v45(v14, v24, v16);
  v44(v14, 0, 1, v16);
  v43(v48, v19, v42);
  v25 = objc_allocWithZone(v21);
  *&v4[v23] = sub_1007626AC();
  v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_allowsGroupBlending] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews] = 0;
  type metadata accessor for SmallLockupView(0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v26;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView]];
  [*&v26[v27] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v26[v27]];
  v32 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondaryLabelColor];
  [v35 setTextColor:v36];

  [*&v31[v32] setHidden:1];
  [*&v31[v32] setAlpha:0.0];
  [v31 addSubview:*&v31[v32]];
  v37 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  v38 = *&v31[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v39 = [v34 labelColor];
  [v38 setTextColor:v39];

  [*&v31[v37] setHidden:1];
  [*&v31[v37] setAlpha:0.0];
  [v31 addSubview:*&v31[v37]];

  return v31;
}

uint64_t sub_100353408@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v56 = sub_100768FEC();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = sub_10076443C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v19 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v20 = sub_100763ADC();
  v21 = *(*(v20 - 8) + 16);
  v53 = a1;
  v21(a1, v18 + v19, v20);
  v51 = v2;
  v22 = [v2 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v23 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v23 = qword_100944CA0;
  }

  v24 = sub_10000A61C(v11, v23);
  (*(v12 + 16))(v14, v24, v11);

  v25 = *(v12 + 32);
  v49 = v17;
  v25(v17, v14, v11);
  v48 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
  v26 = (*(v18 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter);
  swift_beginAccess();
  v27 = v26[3];
  if (v27)
  {
    v28 = sub_10000CF78(v26, v26[3]);
    v47 = v6;
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    sub_10076584C();
    (*(v29 + 8))(v32, v27);
    v6 = v47;
  }

  v33 = v52;
  v34 = *(v52 + 104);
  v35 = v56;
  v34(v8, enum case for OfferButtonSubtitlePosition.below(_:), v56);
  v34(v6, enum case for OfferButtonSubtitlePosition.right(_:), v35);
  (*(v33 + 56))(v6, 0, 1, v35);
  sub_10033350C();
  v36 = v50;
  sub_10076759C();
  v37 = v49;
  sub_10076440C();

  (*(v54 + 8))(v36, v55);
  (*(v12 + 8))(v37, v11);
  v38 = *(v18 + v48);
  type metadata accessor for BaseLockupView();
  sub_10076422C();
  v39 = v38 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v38 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v40 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(v38 + v40, v57);
    sub_10000CF78(v57, v57[3]);
    sub_100767A2C();
    v42 = v41;
    v44 = v43;
    sub_10000CD74(v57);
    *v39 = v42;
    *(v39 + 8) = v44;
    *(v39 + 16) = 0;
  }

  return sub_100763A5C();
}

uint64_t sub_100353BC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763ADC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  v34[1] = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v8);
  sub_100353408(v10);
  v11 = [v1 traitCollection];
  v12 = sub_10077071C();

  v35 = v5;
  if ((v12 & 1) == 0)
  {
    if (qword_10093FF78 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_10093FF80 != -1)
  {
LABEL_9:
    v13 = swift_once();
  }

LABEL_5:
  __chkstk_darwin(v13);
  v34[-2] = v10;
  sub_100354C70();
  sub_10076C13C();
  v39[6] = v45;
  v39[7] = v46;
  v39[8] = v47;
  v39[9] = v48;
  v39[2] = v41;
  v39[3] = v42;
  v39[4] = v43;
  v39[5] = v44;
  v39[0] = v40[0];
  v39[1] = v40[1];
  (*(v7 + 8))(v10, v6);
  v38 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView];
  v14 = v38;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  *&v43 = type metadata accessor for SmallLockupView(0);
  *(&v43 + 1) = &protocol witness table for UIView;
  *(&v41 + 1) = v15;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v17 = sub_1007626BC();
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  *(&v45 + 1) = v17;
  *&v46 = &protocol witness table for UILabel;
  *&v44 = v16;
  *&v48 = v17;
  *(&v48 + 1) = &protocol witness table for UILabel;
  *(&v46 + 1) = v18;
  sub_1001A9FF0(v39, &v49);
  sub_10075FD2C();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v18;
  sub_10076D28C();
  sub_1001AA028(v39);

  sub_10076422C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 traitCollection];
  LOBYTE(v16) = sub_10077071C();

  v32 = v35;
  if (v16)
  {
    sub_1001AA3A0(v35, v24, v26, v28, v30);
  }

  else
  {
    sub_1001AA8E4(v35, v24, v26, v28, v30);
  }

  (*(v36 + 8))(v32, v37);
  [v20 setNeedsLayout];
  return sub_100354CC4(v40);
}

uint64_t sub_100354098()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews);
  }

  else
  {
    sub_10000A5D4(&unk_100952248, &unk_10079B320);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100785C70;
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
    v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
    *(v2 + 32) = v4;
    v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
    *(v2 + 40) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
    *(v2 + 48) = v6;
    v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    *(v2 + 56) = v7;
    v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
    *(v2 + 64) = v8;
    *(v0 + v1) = v2;
    v9 = v7;
    v10 = v8;

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  return v2;
}

uint64_t sub_1003541B0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews);
  }

  else
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100785D70;
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel);
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v0 + v1) = v2;
    v5 = v3;
    v6 = v4;
  }

  return v2;
}

double sub_100354258(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_100354098();
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v8 = *(v5 + 16);
    while (v8 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v9 = *(v5 + 8 * v6++ + 32);
      if (v9)
      {
        v10 = v9;
        sub_10077019C();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        v2 = &v35;
        sub_10077025C();
        v7 = v35;
      }
    }

    v2 = sub_1003541B0();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (([*(*(v2 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v7 = sub_1003541B0();
    v11 = sub_100354098();
    v12 = 0;
    v2 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v13 = *(v11 + 16);
    while (v13 != v12)
    {
      if (v12 >= *(v11 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v14 = *(v11 + 8 * v12++ + 32);
      if (v14)
      {
        v15 = v14;
        sub_10077019C();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v2 = v35;
      }
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      if (v7 >> 62)
      {
        goto LABEL_59;
      }

      v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }
  }

  if (v2 >> 62)
  {
    v21 = sub_10077158C();
    if (v21)
    {
      goto LABEL_33;
    }

LABEL_61:
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v7;
    *(v31 + 24) = v2;
    v39 = sub_10029F3B8;
    v40 = v31;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_10009AEDC;
    v38 = &unk_100892300;
    v32 = _Block_copy(&v35);

    v33 = swift_allocObject();
    *(v33 + 16) = v7;
    v39 = sub_10029F410;
    v40 = v33;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_1000513F0;
    v38 = &unk_100892350;
    v34 = _Block_copy(&v35);

    [v30 animateWithDuration:4 delay:v32 options:v34 animations:0.33 completion:0.0];
    _Block_release(v34);
    _Block_release(v32);
    return result;
  }

  v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_61;
  }

LABEL_33:
  v22 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v23 = sub_10077149C();
    }

    else
    {
      if (v22 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v23 = *(v2 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    [v23 setHidden:0];

    ++v22;
    if (v25 == v21)
    {
      goto LABEL_61;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v16 = sub_10077158C();
LABEL_21:
    if (v16)
    {
      v17 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = sub_10077149C();
        }

        else
        {
          if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v18 = *(v7 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_53;
        }

        [v18 setAlpha:0.0];
        [v19 setHidden:1];

        ++v17;
      }

      while (v20 != v16);
    }

    if (v2 >> 62)
    {
      break;
    }

    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_64;
    }

LABEL_43:
    v26 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v27 = sub_10077149C();
      }

      else
      {
        if (v26 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v27 = *(v2 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      [v27 setAlpha:1.0];
      [v28 setHidden:0];

      ++v26;
      if (v29 == v7)
      {
        goto LABEL_64;
      }
    }
  }

  v7 = sub_10077158C();
  if (v7)
  {
    goto LABEL_43;
  }

LABEL_64:

  return result;
}

uint64_t sub_1003547FC(void *a1)
{
  sub_100763A8C();
  sub_10000CD74(a1 + 15);
  sub_10003F19C(&v6, (a1 + 15));
  v2 = sub_100763A4C();
  if ((v4 & 1) == 0)
  {
    a1[13] = v2;
    a1[14] = v3;
  }

  result = sub_100763A0C();
  a1[12] = result;
  return result;
}

uint64_t sub_100354858(void *a1)
{
  sub_1007639AC();
  *a1 = v2;
  a1[1] = v3;
  sub_1007639EC();
  v10 = &type metadata for CGFloat;
  v11 = &protocol witness table for CGFloat;
  *&v9 = v4;
  sub_10000CD74(a1 + 2);
  sub_10003F19C(&v9, (a1 + 2));
  sub_100763A8C();
  sub_10000CD74(a1 + 15);
  sub_10003F19C(&v9, (a1 + 15));
  v5 = sub_100763A4C();
  if ((v7 & 1) == 0)
  {
    a1[13] = v5;
    a1[14] = v6;
  }

  result = sub_100763A0C();
  a1[12] = result;
  return result;
}

double sub_1003549AC()
{
  swift_beginAccess();

  return result;
}

double sub_1003549F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_100354AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v6 = sub_10076FF6C();
  [v5 setText:v6];

  v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v8 = sub_10076FF6C();
  [v7 setText:v8];

  return [v4 setNeedsLayout];
}

uint64_t sub_100354BD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100354C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100354C30()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100354C70()
{
  result = qword_1009539A0;
  if (!qword_1009539A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009539A0);
  }

  return result;
}

void sub_100354D20()
{
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
  sub_10075FD2C();
  *(v0 + v8) = sub_10075FB3C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_100940AB0 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A0E20);
  v11 = *(v9 - 8);
  v21 = *(v11 + 16);
  v21(v7, v10, v9);
  v20 = *(v11 + 56);
  v20(v7, 0, 1, v9);
  v12 = enum case for DirectionalTextAlignment.none(_:);
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v23 = v13;
  v24 = v1;
  v14(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_1007626BC();
  v16 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_1007626AC();
  v22 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_100940AB8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v9, qword_1009A0E38);
  v21(v7, v17, v9);
  v20(v7, 0, 1, v9);
  v14(v4, v12, v24);
  v18 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_1007626AC();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_allowsGroupBlending) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003550BC(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = sub_1007601DC();

  if (a1 < 0)
  {
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    result = sub_10077158C();
    if (result > a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result <= a1)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_10077149C();
    goto LABEL_8;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v5 = *(v3 + 8 * a1 + 32);

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

void sub_100355194(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = a1;
      if ((sub_10076BD4C() & 1) != 0 && (v10 = [v9 CGImage]) != 0)
      {
        v11 = v10;
        [v9 scale];
        v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11 scale:2 orientation:v12];
      }

      else
      {
        v13 = v9;
      }

      v14 = *&v8[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      v15 = v13;
      v16 = v14;
      v18.is_nil = (a2 & 1) == 0;
      v18.value.super.isa = v13;
      sub_10075FCEC(v18, v17);

      v8 = v15;
    }
  }
}

void sub_1003552CC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
  v5 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  sub_10075FCAC();

  if (*(v2 + 24))
  {
    v6 = *(a1 + v4);
    sub_10075FD2C();
    sub_100358CAC(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    v7 = v6;
    sub_100760BFC();
  }
}

uint64_t sub_1003553C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100355438()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_1007601DC();

  if (v1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_1003554F0(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_100355584@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.screenshots(_:);
  v3 = sub_10076517C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1003555F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003550BC(a1);
  *a2 = result;
  return result;
}

id sub_100355620()
{
  type metadata accessor for BorderedScreenshotView(0);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_10035566C()
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100785D70;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.768627451 green:0.768627451 blue:0.768627451 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.129411765 green:0.129411765 blue:0.129411765 alpha:1.0];
  *(v0 + 40) = result;
  qword_1009539A8 = v0;
  return result;
}

uint64_t sub_100355774@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_10015E5E0(a2, v5);
}

char *sub_1003557D4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v10 - 8);
  v12 = v67 - v11 + 16;
  v13 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v14 = type metadata accessor for GradientView();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView] = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *&v4[v18] = [objc_allocWithZone(v14) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_isMotionEnabled] = 1;
  v20 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v68.receiver = v4;
  v68.super_class = v20;
  v21 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v21 setClipsToBounds:1];
  [v21 _setContinuousCornerRadius:20.0];
  v22 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v23 = qword_10093FF88;
  v24 = *&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  if (v23 != -1)
  {
    swift_once();
  }

  *&v24[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = qword_1009539A8;

  sub_1001C05B8();

  [v21 addSubview:*&v21[v22]];
  v25 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] setClipsToBounds:1];
  v26 = [*&v21[v25] layer];
  v27 = sub_10076FF6C();
  [v26 setCompositingFilter:v27];

  [*&v21[v25] setAlpha:0.75];
  [v21 addSubview:*&v21[v25]];
  v28 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer] addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView]];
  [*&v21[v28] addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView]];
  v29 = [*&v21[v28] layer];
  v30 = sub_10076FF6C();
  [v29 setCompositingFilter:v30];

  [v21 addSubview:*&v21[v28]];
  v31 = sub_100356124();
  [v21 addSubview:v31];

  v32 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v33 = *(ObjectType + 168);
  v34 = *&v21[v32];
  v33(v67);
  v35 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_10015E684(v67, v34 + v35);
  swift_endAccess();

  v36 = *(ObjectType + 176);
  v37 = *&v21[v32];
  v36(v67);
  v38 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E684(v67, v37 + v38);
  swift_endAccess();

  v39 = qword_10093F8F0;
  v40 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10076BCFC();
  v42 = sub_10000A61C(v41, qword_10099D570);
  v43 = *(v41 - 8);
  (*(v43 + 16))(v12, v42, v41);
  (*(v43 + 56))(v12, 0, 1, v41);
  sub_10075FCDC();

  v44 = *&v21[v32];
  v45 = objc_opt_self();
  v46 = v44;
  sub_1003EB7CC([v45 whiteColor]);

  v47 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v48 = [v45 whiteColor];
  [v47 setTextColor:v48];

  v49 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  sub_1000325F0();
  v50 = v49;
  v51 = sub_100770D1C();
  v52 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v53 = [v51 resolvedColorWithTraitCollection:v52];

  [v50 setTextColor:v53];
  v54 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v55 = [v45 whiteColor];
  [v54 setTintColor:v55];

  v56 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v57 = [v45 whiteColor];
  [v56 setTextColor:v57];

  v58 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v59 = [v45 whiteColor];
  [v58 setTextColor:v59];

  v60 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v61 = [v45 whiteColor];
  [v60 setTextColor:v61];

  v62 = [*&v21[v32] traitCollection];
  [v62 userInterfaceStyle];

  sub_10076FF9C();
  v63 = sub_10076FF6C();

  v64 = [*(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v64 setCompositingFilter:v63];

  [v21 addSubview:*&v21[v32]];
  return v21;
}

char *sub_100356124()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 160))();
    v7 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v8 = sub_1000E4B54(v6);
    v9 = *(v0 + v1);
    *(v5 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_100356248()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  v2 = [v0 traitCollection];
  [v0 bounds];
  v4.n128_u64[0] = v3;
  v6.n128_u64[0] = v5;
  v7 = (*((swift_isaMask & *v0) + 0x140))(v2, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v1 setLayoutMargins:{v7, v9, v11, v13}];
  [v0 bounds];
  [v1 sizeThatFits:{v14, v15}];
  v17 = v16;
  [v0 bounds];
  MinX = CGRectGetMinX(v23);
  [v0 bounds];
  MinY = CGRectGetMinY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);

  return [v1 setFrame:{MinX, MinY, Width, v17}];
}

void sub_1003563C8(uint64_t a1)
{
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v6 = sub_1007601DC();
  if (v6 >> 62)
  {
    v9 = v6;
    v10 = sub_10077158C();
    v6 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v7 = sub_10076BD4C();
  sub_10076BEFC();
  sub_10076D3AC();
  v8 = (v3 + 8);
  if (v7)
  {
    sub_10076D36C();
  }

  else
  {
    sub_10076D35C();
  }

  (*v8)(v5, v2);
}

void sub_100356580()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView);
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView);
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView);
  [v1 bounds];
  [v5 setFrame:?];
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer);
  [v1 bounds];
  [v6 setFrame:?];
  v7 = sub_100356124();
  [v1 bounds];
  [v7 setFrame:?];

  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView);
  if (v8)
  {
    v9 = v8;
    v10 = *(sub_10076C63C() + 16);

    [v1 bounds];
    v12 = v11;
    v14 = v13;
    v15 = [v1 window];
    v16 = v15;
    if (v15)
    {
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      v21 = v18;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = (*(ObjectType + 296))(v10, v21, v22, v16 == 0, v12, v14);
    v25 = v24;

    sub_10076C67C();
    v37 = v25 * 0.866 + v23 * 0.5 * 0.5;
    CGAffineTransformMakeRotation(&v39, 1.04719755);
    b = v39.b;
    c = v39.c;
    a = v39.a;
    d = v39.d;
    ty = v39.ty;
    tx = v39.tx;
    [v3 bounds];
    sub_1007704BC();
    sub_100770A7C();
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    CGRectApplyAffineTransform(v40, &v39);
    v29 = v9;
    [v29 bounds];
    [v29 setBounds:?];
    [v1 bounds];
    v31 = v30;
    v32 = sub_10076C68C();
    v34.n128_u64[0] = v33;
    (*((swift_isaMask & *v1) + 0x158))(v32, v31, v37, v34);
    [v29 setCenter:?];
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    [v29 setTransform:&v39];
  }
}

double sub_100356960(uint64_t a1, void *a2)
{
  v4 = sub_10076443C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = sub_10076C22C();
  v13 = v12;
  v14 = (*(v2 + 168))(v28, v11);
  (*(v2 + 176))(v27, v14);
  (*(v2 + 312))(a2);
  if (sub_10077071C())
  {
    v15 = v27;
  }

  else
  {
    v15 = v28;
  }

  sub_10015E5E0(v15, v23);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v16 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v16 = qword_100944CA0;
  }

  v17 = sub_10000A61C(v4, v16);
  (*(v5 + 16))(v7, v17, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    sub_1007643EC();
    v19 = v18;
    sub_1007643EC();
    v24 = v19;
    v25 = v20;
    v26 = 0;
  }

  v21 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, v13);
  (*(v5 + 8))(v10, v4, v21);
  sub_10015E58C(v23);
  sub_10015E58C(v27);
  sub_10015E58C(v28);
  return v13;
}

void sub_100356C74(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10076BF6C();
  __chkstk_darwin(v7 - 8);
  v136 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076BEDC();
  v133 = *(v9 - 8);
  v134 = v9;
  __chkstk_darwin(v9);
  v132 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v131 = &v131 - v12;
  v13 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v13 - 8);
  v145 = &v131 - v14;
  v15 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v15 - 8);
  v144 = &v131 - v16;
  v17 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v17 - 8);
  v143 = &v131 - v18;
  v19 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v19 - 8);
  v142 = &v131 - v20;
  v21 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v21 - 8);
  v140 = &v131 - v22;
  v23 = sub_10076A3AC();
  v138 = *(v23 - 8);
  __chkstk_darwin(v23);
  v139 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v25 - 8);
  v141 = &v131 - v26;
  v27 = sub_100762CAC();
  v150 = *(v27 - 8);
  v151 = v27;
  __chkstk_darwin(v27);
  v29 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v149 = &v131 - v31;
  sub_100760C4C();
  sub_10076F64C();
  v147 = a2;
  sub_10076FC1C();
  v152 = v155[0];
  type metadata accessor for MediumDiagonalRiverCardDataSource();
  v32 = swift_allocObject();
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0;
  *(v32 + 56) = 5;
  v148 = v32;
  v153 = a1;
  sub_10076ABDC();
  v34 = v33;
  v35 = ObjectType + 184;
  v36 = *(ObjectType + 184);
  v36();
  v135 = ObjectType;
  v36();
  if (v34)
  {
    sub_100762C1C();
  }

  sub_100762C4C();
  v37 = v149;
  sub_100762C8C();
  (*(v150 + 16))(v29, v37, v151);
  v38 = sub_10000A5D4(&qword_100953AF0, qword_10079D050);
  v39 = objc_allocWithZone(v38);

  v40 = sub_10076C62C();
  [v40 setHidden:0];
  v41 = v153;
  v42 = sub_10076ABEC();
  if (v42 >> 62)
  {
    v41 = v42;
    v44 = sub_10077158C();
    v42 = v41;
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_10:

    v43 = 0;
    goto LABEL_11;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = sub_10077149C();
  }

  else
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_57:
      swift_once();
LABEL_30:
      v86 = sub_10076D3DC();
      v87 = sub_10000A61C(v86, qword_1009A0DD8);
      v88 = *(v86 - 8);
      v89 = v131;
      (*(v88 + 16))(v131, v87, v86);
      (*(v88 + 56))(v89, 0, 1, v86);
      sub_1007625DC();

      v90 = *(v38 + v35);
      if (v90)
      {
        [v90 setAccessibilityIgnoresInvertColors:1];
      }

      goto LABEL_32;
    }

    v43 = *(v42 + 32);
  }

LABEL_11:
  *(sub_10076C63C() + 24) = v152;

  *(sub_10076C63C() + 48) = v147;

  *(sub_10076C63C() + 16) = v43;
  v146 = v43;

  sub_10076C66C();
  [v40 setHidden:0];
  v45 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView;
  v154 = v3;
  v46 = *&v3[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v46)
  {
    v47 = v40;
    v48 = v46;
    v49 = v47;
    v50 = v48;
    LOBYTE(v47) = sub_100770EEC();

    if ((v47 & 1) == 0)
    {
      sub_10076C6AC();
      [v50 removeFromSuperview];
    }
  }

  else
  {
    v51 = v40;
  }

  v52 = v154;
  v53 = *&v154[v45];
  *&v154[v45] = v40;
  v54 = v40;

  v55 = *&v52[v45];
  v137 = v54;
  if (!v55)
  {

    v55 = v46;
    goto LABEL_21;
  }

  if (v46)
  {
    v56 = v54;
    v57 = v46;
    v58 = v55;
    v59 = sub_100770EEC();

    if (v59)
    {

      v55 = v58;
LABEL_21:
      v60 = v154;
      goto LABEL_25;
    }

    v60 = v154;
    v54 = v56;
  }

  else
  {
    v61 = v55;
    v57 = 0;
    v60 = v154;
  }

  [*&v60[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] addSubview:v55];

LABEL_25:
  v38 = *&v60[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  [*(v38 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v62 = sub_10076AC1C();
  v63 = v138;
  v64 = *(v138 + 104);
  v64(v139, enum case for OfferButtonPresenterViewAlignment.right(_:), v23);
  v65 = v140;
  v64(v140, enum case for OfferButtonPresenterViewAlignment.left(_:), v23);
  (*(v63 + 56))(v65, 0, 1, v23);
  sub_100358CAC(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v66 = v141;
  sub_10076759C();
  v67 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = sub_10075F78C();
  v69 = v142;
  (*(*(v68 - 8) + 56))(v142, 1, 1, v68);
  v70 = sub_1007628DC();
  v71 = v143;
  (*(*(v70 - 8) + 56))(v143, 1, 1, v70);
  v72 = sub_10076C54C();
  v73 = v144;
  (*(*(v72 - 8) + 56))(v144, 1, 1, v72);
  v74 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v75 = v145;
  (*(*(v74 - 8) + 56))(v145, 1, 1, v74);
  sub_1004D0A60(v62, v38, v66, v147, 0, 0, v69, v71, v73, v75);
  *(v38 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) = 1;
  sub_1006582B8();
  [(objc_class *)v38 setNeedsLayout];
  sub_1006582B8();

  sub_10000CFBC(v75, &qword_10094F730, qword_10078A050);
  sub_10000CFBC(v73, &unk_100949290, &unk_10078BBF0);
  sub_10000CFBC(v71, &unk_1009492A0, &unk_10078BC00);
  sub_10000CFBC(v69, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v66, &unk_100946760, &unk_100787A20);
  v76 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v76)
  {
    v77 = objc_opt_self();
    v78 = v76;
    v79 = [v77 whiteColor];
    [v78 setTextColor:v79];
  }

  v35 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v80 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v80)
  {
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 whiteColor];
    [v82 setTextColor:v83];

    v84 = *(v38 + v35);
    if (v84)
    {
      v85 = qword_100940A98;
      v41 = v84;
      if (v85 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_57;
    }
  }

LABEL_32:
  if (!v146)
  {
    goto LABEL_45;
  }

  v91 = sub_1007601DC();

  if (!(v91 >> 62))
  {
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!sub_10077158C())
  {
    goto LABEL_44;
  }

LABEL_35:
  if ((v91 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v92 = sub_10076BE1C();

  if (v92)
  {
    v93 = sub_100770E0C();

    if (v93)
    {
      v94 = 2;
    }

    else
    {
      v94 = 1;
    }

    goto LABEL_46;
  }

LABEL_45:
  v94 = 2;
LABEL_46:
  v95 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v96 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v97 = objc_opt_self();
  v98 = v96;
  v99 = [v97 systemGray5Color];
  v100 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v94];
  v101 = [v99 resolvedColorWithTraitCollection:v100];

  v102 = [v101 colorWithAlphaComponent:0.35];
  sub_10075FB8C();

  sub_10076AC1C();
  v103 = sub_10076BB5C();

  if (v103)
  {
    (*(v135 + 168))(v155, v104);
    sub_10015E58C(v155);
    v105 = v132;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v133 + 8))(v105, v134);
    sub_10076BFCC();
    v106 = *(v38 + v95);
    sub_10076BF7C();
    sub_10075FCCC();
    [v106 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(v38 + v95) setContentMode:1];
    v107 = *(v38 + v95);
    sub_10075FD2C();
    sub_100358CAC(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v108 = v107;
    sub_100760B8C();
  }

  v109 = sub_10076ABFC();
  if (v109)
  {
    v110 = v109;
    v111 = sub_10076AC0C();
    v112 = v154;
    v113 = *&v154[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView];
    if (v111)
    {
      v114 = v111;
      [*&v154[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView] setBackgroundColor:v111];
      v115 = [v113 layer];
      [v115 setCompositingFilter:0];

      v116 = *&v112[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_100785D70;
      *(v117 + 32) = [v110 colorWithAlphaComponent:0.4];
      *(v117 + 40) = v110;
      *&v116[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v117;
      v118 = v110;

      sub_1001C05B8();
      sub_1001C0414(&off_100882740);
      v119 = [v116 layer];
      [v119 setCompositingFilter:0];
    }

    else
    {
      v120 = sub_10076ABFC();
      [v113 setBackgroundColor:v120];

      v121 = [v113 layer];
      [v121 setCompositingFilter:0];

      v122 = *&v154[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_100785D70;
      v124 = [v97 whiteColor];
      v125 = [v124 colorWithAlphaComponent:0.4];

      *(v123 + 32) = v125;
      *(v123 + 40) = [v97 clearColor];
      *&v122[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v123;

      sub_1001C05B8();
      sub_1001C0414(&off_100882770);
      v112 = v154;
      v114 = [v122 layer];
      v119 = sub_10076FF6C();
      [v114 setCompositingFilter:v119];
    }

    v126 = sub_100356124();
    v127 = v110;
    v128 = sub_1000E5FDC(v110);
    v130 = v129;

    sub_1000E5C2C(2, v128, v130);

    [v112 setNeedsLayout];

    (*(v150 + 8))(v149, v151);
  }

  else
  {
    (*(v150 + 8))(v149, v151);
  }
}

id sub_100358138(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100358288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076AC2C();
  sub_100358CAC(&qword_100953AE8, &type metadata accessor for MediumAdLockupWithScreenshotsBackground, &protocol conformance descriptor for MediumAdLockupWithScreenshotsBackground);
  sub_10076332C();
  v9 = v38[0];
  if (v38[0])
  {
    v10 = sub_10076ABEC();
    v11 = v10;
    if (v10 >> 62)
    {
      if (sub_10077158C())
      {
LABEL_4:
        v33 = a2;
        v34 = v5;
        v35 = v6;
        v36 = v9;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = v3;
          v13 = sub_10077149C();
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v12 = v3;
          v13 = *(v11 + 32);
        }

        v37 = v13;
        v14 = sub_1007601DC();

        swift_getKeyPath();
        sub_10076338C();

        swift_getKeyPath();
        sub_10076338C();

        v15 = v38[0];
        sub_100356960(v8, v38[0]);
        v17 = v16;

        v18 = v34;
        v19 = *(v35 + 8);
        v19(v8, v34);
        swift_getKeyPath();
        sub_10076338C();

        sub_10076C22C();
        v21 = v20;
        v19(v8, v18);
        v22 = [objc_opt_self() mainScreen];
        [v22 bounds];
        v24 = v23;
        v26 = v25;

        (*(v12 + 296))(v37, v24, v26, 0, v17, v21);
        if (v14 >> 62)
        {
          v27 = sub_10077158C();
          if (v27)
          {
LABEL_9:
            v38[0] = _swiftEmptyArrayStorage;
            sub_1007714EC();
            if ((v27 & 0x8000000000000000) == 0)
            {
              v28 = 0;
              do
              {
                if ((v14 & 0xC000000000000001) != 0)
                {
                  sub_10077149C();
                }

                else
                {
                }

                sub_10076BD4C();
                ++v28;
                sub_10076BFCC();

                sub_1007714CC();
                sub_1007714FC();
                sub_10077150C();
                sub_1007714DC();
              }

              while (v27 != v28);

              v29 = v38[0];
LABEL_21:
              v39 = v29;
              sub_10076AC1C();
              v30 = sub_10076BB5C();

              if (!v30)
              {
LABEL_24:
                v32._rawValue = v29;
                sub_100760BAC(v32);

                return;
              }

              (*(v12 + 176))(v38, v31);
              sub_10015E58C(v38);
              sub_10076BFCC();

              sub_10077019C();
              if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_23:
                sub_10077025C();

                v29 = v39;
                goto LABEL_24;
              }

LABEL_28:
              sub_10077021C();
              goto LABEL_23;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v27 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
            goto LABEL_9;
          }
        }

        v29 = _swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

void sub_1003587AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16))
  {

    v10 = sub_1007601CC();
  }

  else
  {
    v10 = 0;
  }

  sub_1007601EC();
  sub_10007AFB4(v10, v9);

  sub_1001253E8(v9);
  swift_beginAccess();
  sub_10076BD4C();
  sub_10076BFCC();
  v11 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
  v12 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  sub_10076BF7C();
  sub_10075FCCC();

  v13 = *(a2 + v11);
  [v13 setContentMode:sub_10076BDBC()];

  v14 = *(a2 + v11);
  sub_10075FD0C();

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v15 = sub_1007601DC();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (!sub_10077158C())
  {
LABEL_15:

LABEL_16:
    v18 = 2;
    goto LABEL_17;
  }

LABEL_7:
  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v16 = sub_10076BE1C();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = sub_100770E0C();

  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

LABEL_17:
  v19 = *(a2 + v11);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 systemGray5Color];
  v23 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v18];
  v24 = [v22 resolvedColorWithTraitCollection:v23];

  v25 = [v24 colorWithAlphaComponent:0.35];
  sub_10075FB8C();

  if (*(v3 + 24))
  {
    sub_100760C4C();
    v26 = *(a2 + v11);
    sub_10075FD2C();

    v27 = v26;
    sub_100760BCC();

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = a1;

    sub_100760B7C();

    sub_10000CFBC(v30, &qword_100943310, &unk_100784150);
  }
}

uint64_t sub_100358C24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100358C5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100358CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100358CF4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled) = 1;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_100358E68()
{
  result = qword_10094F040;
  if (!qword_10094F040)
  {
    sub_10076989C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F040);
  }

  return result;
}

uint64_t sub_100358EC8(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = sub_10075F65C();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100765F6C();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100766EDC();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_10076C15C();
  __chkstk_darwin(v17);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (*(v19 + 104))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.gameCenterPlayerProfile(_:));
  v20 = sub_10075DB7C();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = sub_10076096C();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10076988C();
  if (v23)
  {
    v24 = &type metadata for String;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v36 = 0;
  }

  v34 = v22;
  v35 = v23;
  v37 = v24;
  sub_10076F4DC();
  (*(v7 + 104))(v9, enum case for FlowPresentationContext.infer(_:), v29);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v30);
  (*(v2 + 104))(v32, enum case for FlowOrigin.inapp(_:), v31);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v25 = sub_10075F5EC();
  v26 = sub_100563FF8(v25, 1, v33);

  return v26;
}

char *sub_1003593A8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 1;
  type metadata accessor for UpsellBreakoutView(0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView]];

  return v11;
}

uint64_t sub_10035960C()
{
  v1 = *(*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

double (*sub_100359688(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100359730;
}

double sub_100359730(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  v5 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v6 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  if (a2)
  {
    if (v3)
    {
      sub_10035A238(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v7 = v3;
      v8 = [v7 superview];
      if (v8)
      {
        v9 = v8;
        sub_1000ACA5C();
        v10 = v6;
        v11 = sub_100770EEC();

        if (v11)
        {
          [v7 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v18 = v3;
    sub_100453A30(v17);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_1009602B8 + 8) = &off_1008965B8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10035A238(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v12 = v3;
      v13 = [v12 superview];
      if (v13)
      {
        v14 = v13;
        sub_1000ACA5C();
        v15 = v6;
        v16 = sub_100770EEC();

        if (v16)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v23 = v3;
    sub_100453A30(v22);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        *(v24 + qword_1009602B8 + 8) = &off_1008965B8;

        swift_unknownObjectWeakAssign();
      }
    }
  }

  return result;
}

void sub_100359B88(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  objc_msgSendSuper2(&v16, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
    v6 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
    v7 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer;
    v8 = *(*(v5 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
    *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v6;
    v10 = a1;
    if (v6 != v9)
    {
      [v8 setNeedsLayout];
    }

    v11 = *(*(*(v5 + v7) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v11)
    {
      type metadata accessor for VideoView(0);
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
        v15 = v11;

        *(v13 + qword_1009602E0) = v14;
        v10 = v15;
      }
    }
  }
}

id sub_100359D44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpsellBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_100953B20;
  if (!qword_100953B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100359E1C(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100359EF4(uint64_t **a1))()
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
  v2[4] = sub_100359688(v2);
  return sub_100019A4C;
}

uint64_t sub_100359F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100359FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10035A024(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10035A0C0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_1000ACA5C();
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_10035A238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10035A2E8()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for RuleResultsViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame:{v8, v10, v12, v14}];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&v0[v2])
  {
    v16 = v15;
    [v15 addSubview:?];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10035A46C(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RuleResultsViewController();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10076FF6C();
    [v5 setText:v6];

    sub_100760E1C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = sub_100085204();

    v8[3] = v7;
    v8[4] = &protocol witness table for OS_dispatch_queue;
    v8[0] = sub_10077068C();
    sub_10076FC6C();

    sub_10000CD74(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_10035A610(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = [v6 text];
      if (!v7)
      {
LABEL_11:
        __break(1u);
        return;
      }

      v8 = v7;
      sub_10076FF9C();

      v15 = *(v2 + 16);
      if (v15)
      {
        v9 = 0;
        v10 = (v2 + 40);
        while (v9 < *(v2 + 16))
        {
          ++v9;
          v11 = v2;
          v13 = *(v10 - 1);
          v12 = *v10;

          v16._countAndFlagsBits = v13;
          v16._object = v12;
          sub_1007700CC(v16);

          sub_10077014C();
          sub_1007700BC();

          v2 = v11;

          v10 += 2;
          if (v15 == v9)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_11;
      }

LABEL_8:
      v14 = sub_10076FF6C();

      [v6 setText:v14];
    }
  }
}

void sub_10035A7E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      swift_getErrorValue();
      sub_1007716EC();
      v6 = sub_10076FF6C();

      [v5 setText:v6];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10035A970(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RuleResultsViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10035AA24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10035AA6C()
{
  v33 = sub_10076D1AC();
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100763DBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763E2C();
  sub_10000DB18(v6, qword_100953B80);
  v35 = sub_10000A61C(v6, qword_100953B80);
  v53[18] = &type metadata for CGFloat;
  v53[19] = &protocol witness table for CGFloat;
  v53[14] = &protocol witness table for CGFloat;
  v53[15] = 0x4024000000000000;
  v53[13] = &type metadata for CGFloat;
  v53[10] = 0xC04F000000000000;
  v53[8] = &type metadata for CGFloat;
  v53[9] = &protocol witness table for CGFloat;
  v53[5] = 0x4036000000000000;
  if (qword_10093FFA0 != -1)
  {
    swift_once();
  }

  sub_10000A570(qword_100953BB0, v53);
  v7 = *(v3 + 104);
  v36 = v5;
  v7(v5, enum case for ArcadeFooterLayout.ButtonLocation.bottom(_:), v2);
  v52[13] = &type metadata for Double;
  v52[14] = &protocol witness table for Double;
  v52[9] = &protocol witness table for Double;
  v52[10] = 0x402E000000000000;
  v52[8] = &type metadata for Double;
  v52[5] = 0x4040000000000000;
  if (qword_100940F70 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v40 = sub_10000A61C(v8, qword_1009A1C48);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v1, v40, v8);
  v31 = enum case for FontSource.useCase(_:);
  v12 = v38 + 104;
  v37 = *(v38 + 104);
  v13 = v33;
  v37(v1);
  v32 = sub_100767EAC();
  v52[3] = v32;
  v14 = sub_10035E400(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v52[4] = v14;
  sub_10000DB7C(v52);
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_100767E9C();
  v16 = v40;
  v34 = v8;
  v39 = v11;
  v40 = v10;
  v10(v1, v16, v8);
  v17 = v12;
  v18 = v1;
  v19 = v37;
  v20 = v31;
  (v37)(v18, v31, v13);
  v51[3] = v32;
  v51[4] = v14;
  sub_10000DB7C(v51);
  v21 = v15;
  sub_100767E9C();
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v54 = xmmword_100788B30;
  v55 = xmmword_100788B30;
  v56 = 0;
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v32 = sub_10000A61C(v34, qword_1009A0FE8);
  v40(v18, v32, v22);
  v19(v18, v20, v13);
  v23 = sub_10076D9AC();
  v47[3] = v23;
  v47[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v47);
  v45 = v13;
  v46 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v44);
  v25 = v38;
  v30 = v17;
  v26 = *(v38 + 16);
  v26(v24, v18, v13);
  sub_10076D9BC();
  v27 = *(v25 + 8);
  v27(v18, v13);
  v40(v18, v32, v22);
  (v37)(v18, v20, v13);
  v45 = v23;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v44);
  v42 = v13;
  v43 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v41);
  v26(v28, v18, v13);
  sub_10076D9BC();
  v27(v18, v13);
  v43 = &protocol witness table for Double;
  v42 = &type metadata for Double;
  v41[0] = 0x3FF0000000000000;
  return sub_100763E0C();
}