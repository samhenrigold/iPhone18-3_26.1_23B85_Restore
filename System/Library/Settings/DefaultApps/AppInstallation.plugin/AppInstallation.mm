uint64_t DefaultMarketplaceViewProvider.available.getter()
{
  swift_getKeyPath();
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  return *(v0 + 16);
}

uint64_t sub_1684@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1774(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
    sub_89F0();
  }

  return result;
}

uint64_t DefaultMarketplaceViewProvider.localizedTitle.getter()
{
  v1 = sub_89D0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_8980();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8D50();
  __chkstk_darwin(v6 - 8);
  v7 = sub_8990();
  __chkstk_darwin(v7 - 8);
  swift_getKeyPath();
  v12 = v0;
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  swift_beginAccess();
  if (*(v0 + 32))
  {
    v8 = *(v0 + 24);
  }

  else
  {
    sub_8CF0();
    if (qword_102B0 != -1)
    {
      swift_once();
    }

    v9 = sub_6B28(v2, qword_105D0);
    (*(v3 + 16))(v5, v9, v2);
    sub_89C0();
    sub_89B0();
    v8 = sub_8D80();
  }

  return v8;
}

uint64_t DefaultMarketplaceViewProvider.overrideLocalizedNavigationTitle.getter()
{
  swift_getKeyPath();
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DefaultMarketplaceViewProvider.localizedNavigationTitle.getter()
{
  v1 = sub_89D0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_8980();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8D50();
  __chkstk_darwin(v6 - 8);
  v7 = sub_8990();
  __chkstk_darwin(v7 - 8);
  swift_getKeyPath();
  v12 = v0;
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  swift_beginAccess();
  if (*(v0 + 32))
  {
    v8 = *(v0 + 24);
  }

  else
  {
    sub_8CF0();
    if (qword_102B0 != -1)
    {
      swift_once();
    }

    v9 = sub_6B28(v2, qword_105D0);
    (*(v3 + 16))(v5, v9, v2);
    sub_89C0();
    sub_89B0();
    v8 = sub_8D80();
  }

  return v8;
}

uint64_t sub_1F54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t DefaultMarketplaceViewProvider.overrideLocalizedNavigationTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_8E00() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_89F0();
}

uint64_t sub_2190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

uint64_t (*DefaultMarketplaceViewProvider.overrideLocalizedNavigationTitle.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15AppInstallation30DefaultMarketplaceViewProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  *v4 = v1;
  swift_getKeyPath();
  sub_8A20();

  swift_beginAccess();
  return sub_233C;
}

uint64_t DefaultMarketplaceViewProvider.localizedDetail.getter()
{
  swift_getKeyPath();
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_24F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t DefaultMarketplaceViewProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (sub_8E00() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_89F0();
}

uint64_t sub_269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t (*DefaultMarketplaceViewProvider.localizedDetail.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15AppInstallation30DefaultMarketplaceViewProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  *v4 = v1;
  swift_getKeyPath();
  sub_8A20();

  swift_beginAccess();
  return sub_2848;
}

void sub_2854(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_8A10();

  free(v3);
}

uint64_t DefaultMarketplaceViewProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultMarketplaceViewProvider.init(for:)(0, 0);
  return v0;
}

uint64_t DefaultMarketplaceViewProvider.__allocating_init(for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DefaultMarketplaceViewProvider.init(for:)(a1, a2);
  return v4;
}

uint64_t DefaultMarketplaceViewProvider.init(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_8A80();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0xE000000000000000;
  _s15AppInstallation30DefaultMarketplaceViewProviderC22__observationRegistrar33_9011F941A7447AB4B249445E2593D13ELL11Observation0oH0Vvpfi_0();
  if (a2)
  {
    v10 = objc_allocWithZone(LSApplicationRecord);
    v11 = sub_6CF8(a1, a2, 1);
    v12 = [v11 isManagedAppDistributor];
    v13 = v12;
    if (v12 == *(v3 + 16))
    {

      *(v3 + 16) = v13;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v33 = &v31;
      __chkstk_darwin(KeyPath);
      *(&v31 - 2) = v3;
      *(&v31 - 8) = v13;
      aBlock = v3;
      sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
      sub_89F0();
    }
  }

  swift_getKeyPath();
  aBlock = v3;
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  if (*(v3 + 16) == 1)
  {
    v15 = sub_2FF4();
    sub_34F4(v15);
    v16 = swift_allocObject();
    *(v16 + 16) = -1;
    sub_8AF0();
    v32 = v6;
    v33 = sub_6BB0();
    v17 = sub_8DF0();
    v18 = v9;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v16;
    v38 = sub_6C38;
    v39 = v20;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_362C;
    v37 = &unk_C878;
    v21 = _Block_copy(&aBlock);

    v22 = sub_8D90();

    swift_beginAccess();
    notify_register_dispatch((v22 + 32), (v16 + 16), v17, v21);
    swift_endAccess();

    _Block_release(v21);

    v23 = swift_allocObject();
    *(v23 + 16) = -1;
    v24 = v32;
    (*(v7 + 104))(v18, enum case for OSEligibilityDomain.helium(_:), v32);
    sub_8A70();
    (*(v7 + 8))(v18, v24);
    v25 = sub_8DF0();
    v26 = swift_allocObject();
    swift_weakInit();

    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v23;
    v38 = sub_6CC4;
    v39 = v27;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_362C;
    v37 = &unk_C8C8;
    v28 = _Block_copy(&aBlock);

    v29 = sub_8D90();

    swift_beginAccess();
    notify_register_dispatch((v29 + 32), (v23 + 16), v25, v28);
    swift_endAccess();

    _Block_release(v28);
  }

  return v3;
}

uint64_t sub_2FF4()
{
  v0 = sub_8A60();
  v28 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v28 - v4;
  v6 = sub_8A80();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_8AB0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for OSEligibilityDomain.helium(_:), v6);
  sub_8AA0();
  (*(v7 + 8))(v9, v6);
  sub_8A90();
  v14 = v28;
  (*(v28 + 104))(v3, enum case for OSEligibilityAnswer.eligible(_:), v0);
  LOBYTE(v6) = sub_8A50();
  v15 = *(v14 + 8);
  v15(v3, v0);
  v15(v5, v0);
  v16 = 0;
  result = (*(v11 + 8))(v13, v10);
  if (v6)
  {
LABEL_15:
    v28 = v16;
    v26 = v29;
    v25 = 1;
    if ((*(v29 + 16) & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  result = sub_8AC0();
  v18 = result;
  v19 = *(result + 16);
  v28 = 0;
  if (!v19)
  {
LABEL_12:

    v25 = 0;
    v26 = v29;
    if (*(v29 + 16))
    {
LABEL_13:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v28 - 2) = v26;
      *(&v28 - 8) = v25;
      v30 = v26;
      sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
      sub_89F0();
    }

LABEL_16:
    *(v26 + 16) = v25;
    return result;
  }

  v20 = 0;
  v21 = (result + 40);
  while (v20 < *(v18 + 16))
  {
    v24 = *(v21 - 1);
    v23 = *v21;
    sub_8DC0();

    sub_8DB0();
    sub_8DA0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v24 == 0xD000000000000012 && 0x80000000000098F0 == v23)
    {
    }

    else
    {
      v22 = sub_8E00();

      if ((v22 & 1) == 0)
      {

        v16 = v28;
        goto LABEL_15;
      }
    }

    ++v20;
    v21 += 2;
    if (v19 == v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_34F4(uint64_t a1)
{
  v1 = sub_8AC0();
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];

    v4 = objc_allocWithZone(LSApplicationRecord);
    v9 = sub_6CF8(v2, v3, 1);
    v5 = [v9 localizedName];
    v6 = sub_8D70();
    v8 = v7;

    DefaultMarketplaceViewProvider.localizedDetail.setter(v6, v8);
  }

  else
  {

    DefaultMarketplaceViewProvider.localizedDetail.setter(0, 0xE000000000000000);
  }
}

uint64_t sub_362C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_3680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a5();
  }

  else
  {
    swift_beginAccess();
    notify_cancel(*(a3 + 16));
  }
}

double DefaultMarketplaceViewProvider.content.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_7580(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_37C8()
{
  type metadata accessor for DefaultMarketplaceViewModel(0);
  v0 = swift_allocObject();
  sub_63E4();
  return v0;
}

uint64_t sub_3804@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_8CD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7A70(&qword_104B0, &qword_9580);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_7A70(&qword_104B8, &qword_9588);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  __chkstk_darwin(v10);
  v26 = &v26 - v12;
  v30 = v2;
  sub_7A70(&qword_104C0, &qword_9590);
  sub_7AC0();
  sub_8BD0();
  KeyPath = swift_getKeyPath();
  v14 = &v9[*(v7 + 36)];
  v15 = *(sub_7A70(&qword_10510, &qword_95E8) + 28);
  (*(v4 + 104))(v6, enum case for EditMode.active(_:), v3);
  sub_8CA0();
  (*(v4 + 8))(v6, v3);
  v16 = sub_7A70(&qword_10518, &qword_95F0);
  (*(*(v16 - 8) + 56))(v14 + v15, 0, 1, v16);
  *v14 = KeyPath;
  v17 = sub_7CC0();
  sub_8BF0();
  sub_818C(v9, &qword_104B0, &qword_9580);
  v31 = *(v2 + 24);
  v32 = *(v2 + 40);
  sub_7A70(&qword_10540, &qword_9600);
  sub_8C60();
  v33 = *(v2 + 48);
  sub_7A70(&qword_10548, &qword_9608);
  sub_8C80();
  sub_7A70(&qword_10550, &qword_9610);
  *&v31 = v7;
  *(&v31 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  sub_7DA4();
  sub_8370(&qword_10560, &qword_10550, &qword_9610, &protocol conformance descriptor for Button<A>);
  v18 = v27;
  v19 = v29;
  v20 = v26;
  sub_8C30();

  (*(v28 + 8))(v20, v18);
  v21 = swift_allocObject();
  v22 = *(v2 + 16);
  *(v21 + 1) = *v2;
  *(v21 + 2) = v22;
  v23 = *(v2 + 48);
  *(v21 + 3) = *(v2 + 32);
  *(v21 + 4) = v23;
  v24 = (v19 + *(sub_7A70(&qword_10568, &qword_9618) + 36));
  *v24 = sub_7E04;
  v24[1] = v21;
  v24[2] = 0;
  v24[3] = 0;
  return sub_7E0C(v2, &v31);
}

uint64_t sub_3CE8(uint64_t a1)
{
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_53D0(v3);
  sub_7A70(&qword_104D8, &qword_9598);
  sub_7B58();
  sub_8CC0();
}

uint64_t sub_3E08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DefaultMarketplaceViewModel(0);
  sub_766C(&qword_10570, type metadata accessor for DefaultMarketplaceViewModel, &unk_9548);
  sub_8B90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_8B40();

  swift_getKeyPath();
  sub_7A70(&unk_103E8, &qword_9450);
  sub_7A70(&qword_104F8, &qword_95A8);
  sub_8370(&qword_10588, &unk_103E8, &qword_9450, &protocol conformance descriptor for [A]);
  sub_8370(&qword_104F0, &qword_104F8, &qword_95A8, &protocol conformance descriptor for Label<A, B>);
  sub_8CB0();
  v4 = swift_allocObject();
  v5 = *(a1 + 1);
  v4[1] = *a1;
  v4[2] = v5;
  v6 = *(a1 + 3);
  v4[3] = *(a1 + 2);
  v4[4] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_7EA0;
  *(v7 + 24) = v4;
  v8 = (a2 + *(sub_7A70(&qword_104D8, &qword_9598) + 36));
  *v8 = sub_7EE0;
  v8[1] = v7;
  sub_7E0C(a1, v10);
}

uint64_t sub_40E0@<X0>(uint64_t a3@<X8>)
{
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7DA4();

  v4 = sub_8BE0();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_41C8(uint64_t a1, uint64_t a2)
{
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = objc_allocWithZone(ISIcon);
  v3 = sub_8D60();
  [v2 initWithBundleIdentifier:v3];

  v4 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  sub_8B00();
}

uint64_t sub_42E8(uint64_t *a1)
{
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v2 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v2);
  sub_7A70(&qword_105B0, &qword_96E0);
  sub_8370(&qword_105B8, &qword_105B0, &qword_96E0, &protocol conformance descriptor for AsyncIconImage<A>);
  sub_8C40();
}

void (*sub_446C(uint64_t a1, uint64_t a2, uint64_t *a3))(__int128 *, void)
{
  v6 = sub_8990();
  __chkstk_darwin(v6 - 8);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7A70(&qword_10590, &qword_9698);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - v10;
  sub_8DC0();
  v12 = sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_89E0();
  if ((v14 & 1) != 0 || v13 == a2)
  {
  }

  v41[5] = v12;
  v41[1] = a1;
  v41[0] = v8;
  v47 = v13;
  v48 = a2 - (v13 < a2);
  v17 = *a3;
  v16 = a3[1];
  v45 = a3;
  v18 = *(a3 + 16);
  v19 = type metadata accessor for DefaultMarketplaceViewModel(0);
  v20 = sub_766C(&qword_10570, type metadata accessor for DefaultMarketplaceViewModel, &unk_9548);
  v46 = v16;
  v49 = v18;
  sub_8B90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_8B40();

  v44 = v52;
  sub_8B90();
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = sub_8B30();
  v22 = sub_4A78(v47);
  v47 = v23;
  v42 = v25;
  v43 = v24;
  v21(&v52, 0);

  v41[4] = v17;
  v41[3] = v19;
  v41[2] = v20;
  v26 = v48;
  sub_8B90();
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_8B30();
  if (*(*v27 + 16) < v26)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v26 < 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v28 = result;
  sub_70D0(v26, v26, v22, v47, v43, v42);
  v28(&v52, 0);

  v29 = sub_8DE0();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  v30 = v45;
  sub_7E0C(v45, &v52);
  v31 = sub_8DB0();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = &protocol witness table for MainActor;
  v33 = *(v30 + 1);
  *(v32 + 32) = *v30;
  *(v32 + 48) = v33;
  v34 = *(v30 + 3);
  *(v32 + 64) = *(v30 + 2);
  *(v32 + 80) = v34;
  *(v32 + 96) = v44;
  sub_50D0(0, 0, v11, &unk_96A8, v32);

  if (v26)
  {
    v35 = sub_89E0();
    if ((v36 & 1) == 0)
    {
      if (v35)
      {
      }
    }
  }

  sub_8B90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_8B40();

  if (*(v52 + 16))
  {
    v37 = *(v52 + 48);
    v38 = *(v52 + 56);

    sub_85A0(v37, v38);

    v39 = sub_8D80();
    v52 = *(v30 + 3);
    v53 = v30[5];
    v50 = v39;
    v51 = v40;
    sub_7A70(&qword_10540, &qword_9600);
    sub_8C70();
    v52 = *(v30 + 3);
    LOBYTE(v50) = 1;
    sub_7A70(&qword_10548, &qword_9608);
    sub_8C70();
  }
}

uint64_t sub_4A78(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_7440(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[4 * a1];
    v7 = v6[4];
    v8 = v5 - 1;
    memmove(v6 + 4, v6 + 8, 32 * (v5 - 1 - a1));
    v3[2] = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_4B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = sub_8DC0();
  v5[7] = sub_8DB0();
  v7 = sub_8DA0();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_4BB4, v7, v6);
}

uint64_t sub_4BB4()
{
  v1 = *(v0 + 32);
  *(v0 + 80) = *v1;
  *(v0 + 88) = *(v1 + 8);
  *(v0 + 136) = *(v1 + 16);
  *(v0 + 96) = type metadata accessor for DefaultMarketplaceViewModel(0);
  *(v0 + 104) = sub_766C(&qword_10570, type metadata accessor for DefaultMarketplaceViewModel, &unk_9548);
  sub_8B90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_8B40();

  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_7454(0, v3, 0);
    v4 = v2 + 56;
    do
    {
      v5 = *(v4 - 24);
      v6 = *(v4 - 16);

      sub_8DB0();
      sub_8DA0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_7454((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 32;
      --v3;
    }

    while (v3);
  }

  *(v0 + 112) = _swiftEmptyArrayStorage;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_4E54;

  return static AppDistributor.setDistributorPriorityList(_:)(_swiftEmptyArrayStorage);
}

uint64_t sub_4E54()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_4FD0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_4F70;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_4F70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4FD0()
{
  v1 = v0[5];

  sub_8B90();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v1;

  sub_8B50();

  v2 = v0[1];

  return v2();
}

uint64_t sub_50D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7A70(&qword_10590, &qword_9698);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_8124(a3, v25 - v10, &qword_10590, &qword_9698);
  v12 = sub_8DE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_818C(v11, &qword_10590, &qword_9698);
  }

  else
  {
    sub_8DD0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_8DA0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_8D90() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_818C(a3, &qword_10590, &qword_9698);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_818C(a3, &qword_10590, &qword_9698);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_53D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_89D0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_8980();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8D50();
  __chkstk_darwin(v7 - 8);
  v8 = sub_8990();
  __chkstk_darwin(v8 - 8);
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_8CF0();
  if (qword_102B0 != -1)
  {
    swift_once();
  }

  v9 = sub_6B28(v3, qword_105D0);
  (*(v4 + 16))(v6, v9, v3);
  sub_89C0();
  sub_89B0();
  v19[1] = sub_8D80();
  v19[2] = v10;
  sub_7DA4();
  v11 = sub_8BE0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_56E4(uint64_t a1)
{
  v2 = sub_7A70(&qword_10580, &qword_9628);
  __chkstk_darwin(v2 - 8);
  sub_8124(a1, &v5 - v3, &qword_10580, &qword_9628);
  return sub_8BC0();
}

uint64_t sub_578C@<X0>(uint64_t a1@<X8>)
{
  v15[0] = a1;
  v1 = sub_7A70(&qword_10578, &qword_9620);
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  v4 = sub_89D0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_8980();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8D50();
  __chkstk_darwin(v9 - 8);
  v10 = sub_8990();
  __chkstk_darwin(v10 - 8);
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_8CF0();
  if (qword_102B0 != -1)
  {
    swift_once();
  }

  v11 = sub_6B28(v5, qword_105D0);
  (*(v6 + 16))(v8, v11, v5);
  sub_89C0();
  sub_89B0();
  v15[1] = sub_8D80();
  v15[2] = v12;
  sub_8B70();
  v13 = sub_8B80();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_7DA4();
  sub_8C90();
}

uint64_t sub_5B00()
{
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_5B90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_89D0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_8980();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8D50();
  __chkstk_darwin(v7 - 8);
  v8 = sub_8990();
  __chkstk_darwin(v8 - 8);
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_8CF0();
  if (qword_102B0 != -1)
  {
    swift_once();
  }

  v9 = sub_6B28(v3, qword_105D0);
  (*(v4 + 16))(v6, v9, v3);
  sub_89C0();
  sub_89B0();
  v19[1] = sub_8D80();
  v19[2] = v10;
  sub_7DA4();
  v11 = sub_8BE0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_5E80(uint64_t *a1)
{
  sub_8DC0();
  sub_8DB0();
  sub_8DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DefaultMarketplaceViewModel(0);
  sub_766C(&qword_10570, type metadata accessor for DefaultMarketplaceViewModel, &unk_9548);
  v1 = sub_8B90();
  sub_659C(v1);
}

uint64_t DefaultMarketplaceViewProvider.deinit()
{

  v1 = OBJC_IVAR____TtC15AppInstallation30DefaultMarketplaceViewProvider___observationRegistrar;
  v2 = sub_8A40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DefaultMarketplaceViewProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15AppInstallation30DefaultMarketplaceViewProvider___observationRegistrar;
  v2 = sub_8A40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_610C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_8B40();

  return v1;
}

uint64_t sub_6180()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  return *(v1 + 16);
}

uint64_t sub_6244()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_766C(&qword_102C0, type metadata accessor for DefaultMarketplaceViewProvider, &protocol conformance descriptor for DefaultMarketplaceViewProvider);
  sub_8A00();

  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_632C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = DefaultMarketplaceViewProvider.init(for:)(0, 0);
  *a1 = v2;
  return result;
}

uint64_t sub_6370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  result = DefaultMarketplaceViewProvider.init(for:)(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_63E4()
{
  v1 = sub_7A70(&qword_105C0, qword_96E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - v3;
  v5 = OBJC_IVAR____TtC15AppInstallation27DefaultMarketplaceViewModel__distributorList;
  v10[1] = _swiftEmptyArrayStorage;
  sub_7A70(&unk_103E8, &qword_9450);
  sub_8B20();
  v6 = (*(v2 + 32))(v0 + v5, v4, v1);
  sub_659C(v6);
  v7 = [objc_opt_self() defaultCenter];

  v8 = sub_8AE0();
  [v7 addObserver:v0 selector:"distributorListChanged" name:v8 object:0];

  return v0;
}

uint64_t sub_659C(uint64_t a1)
{
  v1 = sub_8AC0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_8B40();

  v2 = v33;
  v3 = v33[2];
  if (v3)
  {
    v4 = v1;
    v33 = _swiftEmptyArrayStorage;
    sub_7454(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v2 + 5;
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v33 = v5;
      v9 = v5[2];
      v10 = v5[3];

      if (v9 >= v10 >> 1)
      {
        sub_7454((v10 > 1), v9 + 1, 1);
        v5 = v33;
      }

      v5[2] = v9 + 1;
      v11 = &v5[2 * v9];
      v11[4] = v8;
      v11[5] = v7;
      v6 += 4;
      --v3;
    }

    while (v3);

    v1 = v4;
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v12 = sub_692C(v5, v1);

  if ((v12 & 1) == 0)
  {
    v33 = _swiftEmptyArrayStorage;
    v13 = *(v1 + 16);
    if (v13)
    {
      v14 = (v1 + 40);
      v15 = _swiftEmptyArrayStorage;
      do
      {
        v18 = *(v14 - 1);
        v17 = *v14;
        v19 = objc_allocWithZone(LSApplicationRecord);

        v20 = sub_8D60();
        v32 = 0;
        v21 = [v19 initWithBundleIdentifier:v20 allowPlaceholder:1 error:&v32];

        if (v21)
        {
          v22 = v32;
          v23 = [v21 localizedName];
          v24 = sub_8D70();
          v26 = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_730C(0, v15[2] + 1, 1, v15);
          }

          v28 = v15[2];
          v27 = v15[3];
          if (v28 >= v27 >> 1)
          {
            v15 = sub_730C((v27 > 1), v28 + 1, 1, v15);
          }

          v15[2] = v28 + 1;
          v29 = &v15[4 * v28];
          v29[4] = v18;
          v29[5] = v17;
          v29[6] = v24;
          v29[7] = v26;
          v33 = v15;
        }

        else
        {
          v16 = v32;
          sub_8970();

          swift_willThrow();
        }

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    __chkstk_darwin(v30);
    sub_8CE0();
    sub_8BA0();
  }
}

uint64_t sub_692C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_8E00() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_69BC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_8B50();
}

uint64_t sub_6A40()
{
  v1 = OBJC_IVAR____TtC15AppInstallation27DefaultMarketplaceViewModel__distributorList;
  v2 = sub_7A70(&qword_105C0, qword_96E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_6AE8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DefaultMarketplaceViewModel(0);
  result = sub_8B10();
  *a2 = result;
  return result;
}

uint64_t sub_6B28(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_6BB0()
{
  result = qword_102C8;
  if (!qword_102C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_102C8);
  }

  return result;
}

uint64_t sub_6BFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6C84()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_6CF8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_8D60();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_8970();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_6DE4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_8B40();

  *a2 = v4;
  return result;
}

uint64_t sub_6E64(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_8B50();
}

uint64_t sub_6EE0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_6FD8;

  return v6(a1);
}

uint64_t sub_6FD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_70D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > v8[3] >> 1)
  {
    if (v9 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_730C(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_71C4(v10, a2, 1, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

char *sub_71C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  sub_7A70(&qword_105A0, &qword_96D0);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:

    __break(1u);
    return result;
  }
}

void *sub_730C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_7A70(&qword_105A8, &qword_96D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_7A70(&qword_105A0, &qword_96D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7454(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_7474(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_7474(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_7A70(&qword_10598, &qword_96C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 sub_7580@<Q0>(uint64_t a1@<X8>)
{
  sub_8C50();
  sub_8C50();
  *a1 = sub_37C8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = v3;
  *(a1 + 24) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3.n128_u8[0];
  *(a1 + 56) = v3.n128_u64[1];
  return result;
}

uint64_t sub_766C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_76E4(uint64_t a1)
{
  result = sub_8A40();
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

uint64_t sub_77B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_77EC(uint64_t a1)
{
  sub_787C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_787C(uint64_t a1)
{
  if (!qword_103E0)
  {
    sub_78E0(&unk_103E8, &qword_9450);
    v1 = sub_8B60();
    if (!v2)
    {
      atomic_store(v1, &qword_103E0);
    }
  }
}

uint64_t sub_78E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_792C()
{
  result = qword_104A8;
  if (!qword_104A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104A8);
  }

  return result;
}

__n128 sub_798C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_79A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_79E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7A70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_7AC0()
{
  result = qword_104C8;
  if (!qword_104C8)
  {
    sub_78E0(&qword_104C0, &qword_9590);
    sub_7B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104C8);
  }

  return result;
}

unint64_t sub_7B58()
{
  result = qword_104D0;
  if (!qword_104D0)
  {
    sub_78E0(&qword_104D8, &qword_9598);
    sub_7C10();
    sub_8370(&qword_10500, &qword_10508, &qword_95B0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104D0);
  }

  return result;
}

unint64_t sub_7C10()
{
  result = qword_104E0;
  if (!qword_104E0)
  {
    sub_78E0(&qword_104E8, &qword_95A0);
    sub_8370(&qword_104F0, &qword_104F8, &qword_95A8, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104E0);
  }

  return result;
}

unint64_t sub_7CC0()
{
  result = qword_10520;
  if (!qword_10520)
  {
    sub_78E0(&qword_104B0, &qword_9580);
    sub_8370(&qword_10528, &qword_10530, &qword_95F8, &protocol conformance descriptor for List<A, B>);
    sub_8370(&qword_10538, &qword_10510, &qword_95E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10520);
  }

  return result;
}

unint64_t sub_7DA4()
{
  result = qword_10558;
  if (!qword_10558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10558);
  }

  return result;
}

uint64_t sub_7E4C()
{
  sub_7DFC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_7EA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7F0C()
{
  swift_unknownObjectRelease();
  sub_7DFC(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_7F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_8030;

  return sub_4B18(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_8030()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_8124(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7A70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_818C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7A70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_81EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8580;

  return sub_6EE0(a1, v4);
}

uint64_t sub_82A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8030;

  return sub_6EE0(a1, v4);
}

uint64_t sub_8370(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_78E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_83D8()
{
  result = qword_105C8;
  if (!qword_105C8)
  {
    sub_78E0(&qword_10568, &qword_9618);
    sub_78E0(&qword_104B8, &qword_9588);
    sub_78E0(&qword_10550, &qword_9610);
    sub_78E0(&qword_104B0, &qword_9580);
    sub_7CC0();
    swift_getOpaqueTypeConformance2();
    sub_7DA4();
    sub_8370(&qword_10560, &qword_10550, &qword_9610, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105C8);
  }

  return result;
}

uint64_t sub_85A0(uint64_t a1, void *a2)
{
  v4 = sub_89D0();
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_8980();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_8D50();
  __chkstk_darwin(v11 - 8);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_8D30();
  __chkstk_darwin(v14 - 8);
  sub_8D20();
  v18._countAndFlagsBits = 10256610;
  v18._object = 0xA300000000000000;
  sub_8D10(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_8D00(v19);
  v20._object = 0x8000000000009980;
  v20._countAndFlagsBits = 0x1000000000000027;
  sub_8D10(v20);
  sub_8D40();
  if (qword_102B0 != -1)
  {
    swift_once();
  }

  v15 = sub_6B28(v7, qword_105D0);
  (*(v8 + 16))(v10, v15, v7);
  sub_89C0();
  return sub_89A0("new.marketplace.title%@", 23, 2, v13, 0x617A696C61636F4CLL, 0xEB00000000656C62, v6, v10, 0, 0, 256);
}

uint64_t sub_8870()
{
  v0 = sub_8980();
  sub_890C(v0, qword_105D0);
  v1 = sub_6B28(v0, qword_105D0);
  *v1 = type metadata accessor for ResourceBundleClass();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_890C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}