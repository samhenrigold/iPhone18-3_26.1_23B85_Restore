void sub_10031CF70(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10031CF38(v1 + v4, v9);
  v5 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v9);
  sub_100320B60(v9);
  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    v9[0] = v2;
    sub_1004D86BC();

    v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v6)
    {
      v7 = [v6 rootViewController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for NoticePresenter.UIRootViewController();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          v9[0] = v2;
          sub_1004D86BC();

          sub_10031CF38(v2 + v4, v9);
          sub_10031FEB4(v9);
        }
      }
    }
  }
}

void (*sub_10031D12C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  sub_10031CF38(v1 + v5, v4);
  return sub_10031D1C4;
}

void sub_10031D1C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {
    sub_10031CF38(*a1, v2 + 56);
    sub_10031CF38(v3 + v4, v2 + 112);
    swift_beginAccess();
    sub_100320C38(v2 + 56, v3 + v4);
    swift_endAccess();
    sub_10031CF70(v2 + 112);
    sub_100320B60(v2 + 112);
  }

  else
  {
    sub_10031CF38(v3 + v4, v2 + 56);
    swift_beginAccess();
    sub_100320C38(v2, v3 + v4);
    swift_endAccess();
    sub_10031CF70(v2 + 56);
  }

  sub_100320B60(v2 + 56);
  sub_100320B60(v2);

  free(v2);
}

uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_10031CF38(v5 + v3, a1);
}

uint64_t sub_10031D374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_10031CF38(v3 + v4, a2);
}

uint64_t sub_10031D43C(uint64_t a1, uint64_t a2)
{
  sub_10031CF38(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10031CF38(a1 + v3, v5);
  swift_beginAccess();
  sub_100320C38(v6, a1 + v3);
  swift_endAccess();
  sub_10031CF70(v5);
  sub_100320B60(v5);
  return sub_100320B60(v6);
}

uint64_t (*NoticePresenter.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_10031D12C(v4);
  return sub_10031D624;
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1, v1[1]);
  return v2;
}

uint64_t sub_10031D764@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1003226E0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_10000DE64(v5, v6);
}

double sub_10031D870(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_100322680;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_10000DE64(v2, v3);
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86AC();
  sub_10000DE74(v5, v4);

  return result;
}

uint64_t sub_10031D9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_10000DE64(a2, a3);
  return sub_10000DE74(v6, v7);
}

uint64_t (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_10031D630(v4);
  return sub_10031DB88;
}

void *sub_10031DB94()
{
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id sub_10031DC44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void sub_10031DD04(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v7 = v6;
      v8 = a1;
      v9 = sub_1004DE5FC();

      if (v9)
      {
        v10 = *(v3 + v5);
        goto LABEL_8;
      }
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_1004D86AC();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v10 = 0;
  v8 = 0;
LABEL_8:
  *(v3 + v5) = a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  v11 = v8;
  sub_1004D86BC();

  if (v10)
  {
    v12 = *(v3 + v5);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v10 = v10, v14 = sub_1004DE5FC(), v10, v13, (v14 & 1) == 0))
    {
      [v10 resignKeyWindow];
    }
  }

  else
  {
  }
}

void sub_10031DF4C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  v6 = a2;
  sub_1004D86BC();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = sub_1004DE5FC(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  sub_10001074C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_10063F9A8, &qword_10052BB18);

  sub_100320B60(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler), *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler + 8));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_1004D86FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  sub_10001074C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_10063F9A8, &qword_10052BB18);

  sub_100320B60(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler), *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler + 8));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_1004D86FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double View.noticePresenting(_:configurator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100004CB8(&qword_10063F6E8, &qword_10052B760);
  sub_1004DB9DC();
  sub_1004DB6EC();

  return result;
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100004CB8(&qword_10063F6E8, &qword_10052B760);
  sub_1004DB9DC();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  sub_100004CB8(&qword_10063F9B8, &qword_10052BB78);
  sub_1004DBB5C();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_100321B00((v3 + 6), (v3 + 3));

  sub_1000108DC((v4 + 7), (v4 + 3), &qword_10063F9C0, &qword_10052BB80);
  v4[13] = sub_100004CB8(&qword_10063F9B8, &qword_10052BB78);
  sub_1004DBB5C();
  return sub_10031E544;
}

void sub_10031E544(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_1004DBB6C();
    sub_100321B5C((v2 + 6));

    sub_10001074C((v2 + 7), &qword_10063F9C0, &qword_10052BB80);
  }

  else
  {
    sub_1004DBB6C();
    sub_100321B5C((v2 + 6));

    sub_10001074C((v2 + 7), &qword_10063F9C0, &qword_10052BB80);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  sub_100004CB8(&qword_10063F9B8, &qword_10052BB78);
  sub_1004DBB7C();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = sub_100004CB8(&qword_10063F9C8, &unk_10052BB88);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = sub_1004DBD1C();
  v10 = v9;
  v12 = v2[6];
  v29[0] = v2[5];
  v11 = v29[0];
  v29[1] = v12;
  sub_100004CB8(&qword_10063F6F8, &qword_10052B770);
  sub_1004DBA0C();
  v23 = v27;
  v13 = v28;
  v14 = sub_100004CB8(&qword_10063F9D0, &qword_10052BB98);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v23;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  sub_1004DB9EC();
  v16 = v29[0];
  v26 = v29[0];
  *&v27 = v12;
  v17 = *v3;
  v18 = v3[3];
  v30 = v3[2];
  v31 = v17;
  v19 = v3[4];
  v29[0] = v11;
  v20 = swift_allocObject();
  v21 = *(v3 + 1);
  *(v20 + 16) = *v3;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v3 + 2);
  *(v20 + 64) = v3[6];
  sub_100321B00(&v31, v25);

  sub_1000108DC(&v30, v25, &qword_10063F9C0, &qword_10052BB80);
  sub_10000DE64(v18, v19);
  sub_1000108DC(v29, v25, &qword_10063F6E8, &qword_10052B760);
  sub_1000108DC(&v27, v25, &qword_10063F9D8, &unk_10052BBA0);
  sub_100004CB8(&qword_10063F6E8, &qword_10052B760);
  sub_100321C20();
  sub_1003195FC();
  sub_1004DB70C();

  return sub_10001074C(v7, &qword_10063F9C8, &unk_10052BB88);
}

uint64_t sub_10031E924(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = *(a3 + 4);
  sub_10000DE64(*(a3 + 3), v6);
  v7 = v4;
  v8 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v13 = v8;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v9 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10031CF38(v8 + v9, &v13);

  v5(&v13);
  UIWindowScene.noticePresenter.getter();
  sub_10031CF38(&v13, v12);
  NoticePresenter.configuration.setter(v12);
  sub_10000DE74(v5, v6);

  sub_100320B60(&v13);
LABEL_5:
  v10 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v13 = *a3;
  v14 = *(a3 + 2);
  v12[0] = v10;
  sub_100004CB8(&qword_10063F9B8, &qword_10052BB78);
  return sub_1004DBB6C();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    sub_10001074C(v5, &qword_10063F9F0, &qword_10052BBB0);
    goto LABEL_5;
  }

  sub_100004CB8(&qword_10063F9F8, &qword_10052BBB8);
  type metadata accessor for NoticePresenter(0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter(0);
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_1004D86BC();

    v5[0] = v0;
    swift_getKeyPath();
    sub_1004D86DC();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_10031CF38(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    sub_10031CF38(v0 + v2, v4);
    swift_beginAccess();
    sub_100320C38(v5, v0 + v2);
    swift_endAccess();
    sub_10031CF70(v4);
    sub_100320B60(v4);
    sub_100320B60(v5);
    v5[0] = v0;
    swift_getKeyPath();
    sub_1004D86CC();

    return v0;
  }

  return v4[0];
}

__n128 sub_10031ED24@<Q0>(uint64_t a1@<X8>)
{
  sub_100004CB8(&qword_10063FC98, &qword_10052BE68);
  __chkstk_darwin();
  v4 = v10 - v3;
  *v4 = sub_1004DA90C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_100004CB8(&qword_10063FCA0, &qword_10052BE70);
  sub_10031EE80(v1, &v4[*(v5 + 44)]);
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v4, a1, &qword_10063FC98, &qword_10052BE68);
  v6 = a1 + *(sub_100004CB8(&qword_10063FCA8, &qword_10052BE78) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_10031EE80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v92 = a2;
  v90 = sub_100004CB8(&qword_10063FCB0, &qword_10052BE80);
  v91 = *(v90 - 8);
  __chkstk_darwin();
  v4 = &KeyPath - v3;
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v6 = &KeyPath - v5;
  v7 = type metadata accessor for Notice(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063FCB8, &qword_10052BE88);
  __chkstk_darwin();
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &KeyPath - v13;
  v85 = a1[4];
  sub_1004DBD1C();
  sub_1004D9F5C();
  v89 = v96[3];
  v88 = v98;
  v87 = v100;
  v86 = v101;
  v110 = 1;
  v109 = v97;
  v108 = v99;
  v14 = a1[1];
  v83 = *a1;
  v102 = v83;
  v103 = v14;
  v82 = v14;
  sub_100004CB8(&qword_10063FCC0, &qword_10052BE90);
  sub_1004DB9EC();
  v15 = v96[0];
  swift_getKeyPath();
  v102 = v15;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v16 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000108DC(v15 + v16, v6, &qword_10063F9A8, &qword_10052BB18);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001074C(v6, &qword_10063F9A8, &qword_10052BB18);
    v17 = 1;
    v18 = v84;
    v19 = v90;
  }

  else
  {
    v81 = v10;
    sub_100322178(v6, v10);
    sub_1003221DC(v10, v4);
    v20 = type metadata accessor for NoticeView(0);
    v21 = &v4[v20[5]];
    *v21 = swift_getKeyPath();
    *(v21 + 1) = 0;
    *(v21 + 8) = 0;
    v22 = &v4[v20[6]];
    v107 = 0x3FF0000000000000;
    sub_1004DB9DC();
    v23 = v103;
    *v22 = v102;
    *(v22 + 1) = v23;
    v24 = &v4[v20[7]];
    LOBYTE(v107) = 0;
    sub_1004D9E8C();
    v25 = v103;
    v26 = v104;
    *v24 = v102;
    *(v24 + 1) = v25;
    *(v24 + 1) = v26;
    v27 = &v4[v20[8]];
    LOBYTE(v107) = 0;
    sub_1004DB9DC();
    v28 = v103;
    *v27 = v102;
    *(v27 + 1) = v28;
    LOBYTE(v27) = sub_1004DAF5C();
    sub_1004D9C8C();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &v4[*(sub_100004CB8(&qword_10063FCD0, &qword_10052BEC8) + 36)];
    *v37 = v27;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    LOBYTE(v27) = sub_1004DAF7C();
    sub_1004D9C8C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v4[*(sub_100004CB8(&qword_10063FCD8, &qword_10052BED0) + 36)];
    *v46 = v27;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    LOBYTE(v27) = sub_1004DAF8C();
    sub_1004D9C8C();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = &v4[*(sub_100004CB8(&qword_10063FCE0, &qword_10052BED8) + 36)];
    *v55 = v27;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    sub_1004D9F9C();
    sub_1004DBD3C();
    sub_1004D9FBC();

    sub_1004DBE7C();
    sub_1004D9F8C();
    sub_1004DBD3C();
    sub_1004D9FBC();

    sub_1004DBE7C();
    sub_1004D9F8C();
    sub_1004DBD3C();
    sub_1004D9FBC();

    sub_1004D9F7C();

    v56 = sub_1004D9FAC();

    *&v4[*(sub_100004CB8(&qword_10063FCE8, &qword_10052BEE0) + 36)] = v56;
    KeyPath = swift_getKeyPath();
    v107 = v82;
    sub_1004DDA4C();

    sub_1000108DC(&v107, &v102, &qword_10063FCF0, &qword_10052BEE8);
    v57 = sub_1004DDA3C();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = &protocol witness table for MainActor;
    v59 = *(a1 + 1);
    *(v58 + 32) = *a1;
    *(v58 + 48) = v59;
    *(v58 + 64) = *(a1 + 2);

    sub_1000108DC(&v107, &v102, &qword_10063FCF0, &qword_10052BEE8);
    v60 = sub_1004DDA3C();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);
    sub_1004DBB8C();
    sub_10025AD60(v81);
    v63 = v102;
    v64 = v103;
    v65 = v104;
    v66 = v90;
    v67 = &v4[*(v90 + 36)];
    *v67 = KeyPath;
    *(v67 + 1) = v63;
    *(v67 + 2) = v64;
    v67[24] = v65;
    v18 = v84;
    sub_100047F38(v4, v84, &qword_10063FCB0, &qword_10052BE80);
    v17 = 0;
    v19 = v66;
  }

  (*(v91 + 56))(v18, v17, 1, v19);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v91 = v102;
  v90 = v104;
  v85 = v105;
  v84 = v106;
  v95 = 1;
  v94 = v103;
  v93 = BYTE8(v104);
  v68 = v110;
  v69 = v109;
  v70 = v108;
  sub_1000108DC(v18, v12, &qword_10063FCB8, &qword_10052BE88);
  v71 = v95;
  v72 = v94;
  v73 = v93;
  v74 = v92;
  *v92 = 0;
  *(v74 + 8) = v68;
  v74[2] = v89;
  *(v74 + 24) = v69;
  v74[4] = v88;
  *(v74 + 40) = v70;
  v75 = v86;
  v74[6] = v87;
  v74[7] = v75;
  v76 = sub_100004CB8(&qword_10063FCC8, &qword_10052BE98);
  sub_1000108DC(v12, v74 + *(v76 + 48), &qword_10063FCB8, &qword_10052BE88);
  v77 = v74 + *(v76 + 64);
  *v77 = 0;
  v77[8] = v71;
  *(v77 + 2) = v91;
  v77[24] = v72;
  *(v77 + 4) = v90;
  v77[40] = v73;
  v78 = v84;
  *(v77 + 6) = v85;
  *(v77 + 7) = v78;
  sub_10001074C(v18, &qword_10063FCB8, &qword_10052BE88);
  return sub_10001074C(v12, &qword_10063FCB8, &qword_10052BE88);
}

uint64_t sub_10031F8FC@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v10 = *a1;
  sub_100004CB8(&qword_10063FCC0, &qword_10052BE90);
  sub_1004DB9EC();
  v6 = v11;
  swift_getKeyPath();
  *&v10 = v6;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000108DC(v6 + v7, v5, &qword_10063F9A8, &qword_10052BB18);

  v8 = type metadata accessor for Notice(0);
  LOBYTE(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  result = sub_10001074C(v5, &qword_10063F9A8, &qword_10052BB18);
  *a2 = v7;
  return result;
}

double sub_10031FABC(_BYTE *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*a1 & 1) == 0)
  {
    sub_100004CB8(&qword_10063FCC0, &qword_10052BE90);
    sub_1004DB9EC();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id sub_10031FBB0(uint64_t a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, v6, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id sub_10031FEB4(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  sub_100320C38(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_100320B60(a1);
  }

  v5 = sub_1004DAF9C();
  v6 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v5, *(v4 + 16));
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1004DA9CC();
  v14[2] = v6;
  *(v14 + 3) = v8;
  *(v14 + 4) = v10;
  *(v14 + 5) = v12;
  v13(&v18, 0);
  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v17 = result;
      [result layoutIfNeeded];

      return sub_100320B60(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10032013C()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v7 = sub_1004DAF9C();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7, v6[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_1004DA9CC();
  v16[2] = v8;
  *(v16 + 3) = v10;
  *(v16 + 4) = v12;
  *(v16 + 5) = v14;
  v15(v23, 0);
  v17 = [v1 view];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = v17;
  v19 = [v2 view];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  [v18 addSubview:v19];

  v21 = [v2 view];
  if (v21)
  {
    v22 = v21;
    [v21 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100320350()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  sub_1004DE40C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003222E4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100107FC0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000121E8;
  aBlock[3] = &unk_1005EEC70;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  sub_1004DA97C();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  sub_1004DE3CC();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_100320728(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id sub_100320864(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_100006F10(0, &qword_10063F778, UIWindowScene_ptr);
      v7 = sub_1004DE5FC();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = sub_1004DAFAC();
  if (v8 != sub_1004DAFAC() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t type metadata accessor for NoticePresenter(uint64_t a1)
{
  result = qword_10063FA28;
  if (!qword_10063FA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100320CE4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10031DD04(v1, v3);
}

uint64_t sub_100320D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v9 = &v18 - v8;
  sub_100004CB8(&qword_10063FCF8, &unk_10052BEF0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v13 = *(v12 + 56);
  sub_1000108DC(a1, &v18 - v10, &qword_10063F9A8, &qword_10052BB18);
  sub_1000108DC(a2, &v11[v13], &qword_10063F9A8, &qword_10052BB18);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000108DC(v11, v9, &qword_10063F9A8, &qword_10052BB18);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_100322178(&v11[v13], v7);
      v16 = static Notice.== infix(_:_:)();
      sub_10025AD60(v7);
      sub_10025AD60(v9);
      sub_10001074C(v11, &qword_10063F9A8, &qword_10052BB18);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    sub_10025AD60(v9);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_10001074C(v11, &qword_10063FCF8, &unk_10052BEF0);
    v15 = 1;
    return v15 & 1;
  }

  sub_10001074C(v11, &qword_10063F9A8, &qword_10052BB18);
  v15 = 0;
  return v15 & 1;
}

char *sub_100320FBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1004DAEAC();
  __chkstk_darwin();
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v6 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  sub_10031CF38(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  v7 = sub_1004DAF9C();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7, v6[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter(0);
  sub_1004DB9DC();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(sub_100004CB8(&qword_10063FD00, &unk_10052BF00));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = sub_1004DA9BC();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  sub_1004DAE8C();
  sub_1004DA98C();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  sub_100320B60(a2);
  return v22;
}

void _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(uint64_t a1, char a2)
{
  v3 = v2;
  v48 = a1;
  v46 = sub_1004DBF2C();
  v5 = *(v46 - 8);
  __chkstk_darwin();
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v42 - v8;
  v10 = sub_1004DBEBC();
  __chkstk_darwin();
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Notice(0);
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  if ((a2 & 1) == 0 || *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
  {
    v42[1] = v10;
    v42[2] = v12;
    v43 = v7;
    v44 = v9;
    v45 = v5;
    swift_getKeyPath();
    aBlock = v3;
    sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_1004D86BC();

    v15 = v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler;
    swift_beginAccess();
    v16 = *v15;
    v17 = &unk_10063F000;
    if (*v15)
    {
      v18 = *(v15 + 8);
      v42[0] = v13;
      swift_getKeyPath();
      aBlock = v3;

      sub_1004D86BC();

      aBlock = v3;
      swift_getKeyPath();
      sub_1004D86DC();

      v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      sub_10031CF38(v3 + v19, &aBlock);
      v16(&aBlock);
      sub_10000DE74(v16, v18);
      sub_10031CF38(v3 + v19, v50);
      swift_beginAccess();
      v20 = v3 + v19;
      v17 = &unk_10063F000;
      sub_100320C38(&aBlock, v20);
      swift_endAccess();
      sub_10031CF70(v50);
      sub_100320B60(v50);
      sub_100320B60(&aBlock);
      aBlock = v3;
      v13 = v42[0];
      swift_getKeyPath();
      sub_1004D86CC();
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004D86BC();

    v21 = v17[304];
    swift_beginAccess();
    sub_10031CF38(v3 + v21, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_100320B60(&aBlock);
    if (Strong)
    {
      sub_10031C7A8(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004D86BC();

    v23 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v24 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v24)
    {
      *(v24 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004D86BC();

    v25 = *(v3 + v23);
    if (v25)
    {
      [v25 makeKeyAndVisible];
    }

    v26 = objc_opt_self();
    sub_1003221DC(v48, v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v3;
    sub_100322178(v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1003225CC;
    *(v29 + 24) = v28;
    v55 = sub_100108324;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1000121E8;
    v54 = &unk_1005EECE8;
    v30 = _Block_copy(&aBlock);

    [v26 performWithoutAnimation:v30];
    _Block_release(v30);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      v31 = v47;
      v32 = (v48 + *(v47 + 36));
      if ((v32[1] & 1) == 0)
      {
        v33 = *v32;
        v34 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v34 notificationOccurred:v33];
      }

      if (*(v48 + *(v31 + 40)) == 1)
      {
        v55 = sub_100322630;
        v56 = v3;
        aBlock = _NSConcreteStackBlock;
        v52 = 1107296256;
        v53 = sub_100012680;
        v54 = &unk_1005EED10;
        _Block_copy(&aBlock);
        v49[0] = _swiftEmptyArrayStorage;
        sub_100322638(&qword_10063E488, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

        sub_100004CB8(&qword_10063E490, &unk_100533C70);
        sub_100042B08(&qword_10063E498, &qword_10063E490, &unk_100533C70, &protocol conformance descriptor for [A]);
        sub_1004DE92C();
        sub_1004DBF5C();
        swift_allocObject();
        v35 = sub_1004DBF3C();

        sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
        v36 = sub_1004DE14C();
        v37 = v43;
        sub_1004DBF1C();
        v38 = v44;
        sub_1004DBF8C();
        v39 = *(v45 + 8);
        v40 = v37;
        v41 = v46;
        v39(v40, v46);
        sub_1004DE11C();

        v39(v38, v41);
        swift_getKeyPath();
        __chkstk_darwin();
        v42[-2] = v3;
        v42[-1] = v35;
        aBlock = v3;
        sub_1004D86AC();
      }
    }
  }
}

uint64_t sub_100321BB0()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100321C20()
{
  result = qword_10063F9E0;
  if (!qword_10063F9E0)
  {
    sub_100008DE4(&qword_10063F9C8, &unk_10052BB88);
    sub_100042B08(&qword_10063F9E8, &qword_10063F9D0, &qword_10052BB98, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_10063F750, &qword_10063F758, &qword_10052B7F0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F9E0);
  }

  return result;
}

unint64_t sub_100321D04()
{
  result = qword_10063F770;
  if (!qword_10063F770)
  {
    sub_100006F10(255, &qword_10063F778, UIWindowScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F770);
  }

  return result;
}

void sub_100321D90(uint64_t a1)
{
  sub_100321E7C(319);
  if (v1 <= 0x3F)
  {
    sub_1004D86FC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100321E7C(uint64_t a1)
{
  if (!qword_10063FA38)
  {
    type metadata accessor for Notice(255);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_10063FA38);
    }
  }
}

uint64_t sub_100321ED4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100321EEC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100321F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100321F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100322004(void *a1)
{
  sub_1004DA32C();
  sub_100322068();
  return swift_getWitnessTable();
}

unint64_t sub_100322068()
{
  result = qword_10063FC90;
  if (!qword_10063FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FC90);
  }

  return result;
}

uint64_t sub_1003220BC()
{
  sub_100008DE4(&qword_10063F9C8, &unk_10052BB88);
  sub_100008DE4(&qword_10063F6E8, &qword_10052B760);
  sub_100321C20();
  sub_1003195FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100322178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003221DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100322258()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003222AC()
{

  return swift_deallocObject();
}

double sub_1003222FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100322330(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003223BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032242C()
{
  v1 = type metadata accessor for Notice(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1004DCC9C();
      (*(*(v8 - 8) + 8))(v3 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

void sub_1003225CC()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10031C984(v2, v3);
}

uint64_t sub_100322638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003226A8()
{

  return swift_deallocObject();
}

unint64_t sub_10032270C()
{
  result = qword_10063FD08;
  if (!qword_10063FD08)
  {
    sub_100008DE4(&qword_10063FCA8, &qword_10052BE78);
    sub_100042B08(&qword_10063FD10, &qword_10063FC98, &qword_10052BE68, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FD08);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  sub_1004DB9DC();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  sub_1004D9E8C();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  sub_1004DB9DC();
  *v8 = v10;
  *(v8 + 8) = v11;
  return sub_100327608(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  sub_100322B98();
  sub_1004DA75C();
  return v1;
}

double sub_100322990@<D0>(uint64_t a1@<X8>)
{
  sub_100322B98();
  sub_1004DA75C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_1003229E8@<D0>(uint64_t a1@<X8>)
{
  sub_100322B98();
  sub_1004DA75C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100322A40(uint64_t *a1)
{
  sub_100322E64(*a1, a1[1]);
  sub_100322B98();
  return sub_1004DA76C();
}

unint64_t sub_100322B98()
{
  result = qword_10063FD18;
  if (!qword_10063FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FD18);
  }

  return result;
}

uint64_t sub_100322C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = sub_1004DA74C();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    sub_100322E64(*v5, v7);
  }

  else
  {

    v9 = sub_1004DDF8C();
    v10 = sub_1004DAECC();
    sub_1004D953C(v9, &_mh_execute_header, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();
    v11 = sub_100322E14(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1, v11);
    return v13[1];
  }

  return v6;
}

double sub_100322E14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_100322E20(a1, a2);
  }

  return result;
}

double sub_100322E20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_100322E64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v111 = sub_100004CB8(&qword_10063FD20, &qword_10052BF38);
  __chkstk_darwin();
  v110 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v106 - v4;
  v137 = sub_1004DA25C();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v135 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v106 - v6;
  v108 = sub_100004CB8(&qword_10063FD28, &qword_10052BF40);
  __chkstk_darwin();
  v107 = &v106 - v7;
  v132 = sub_1004D9D2C();
  v131 = *(v132 - 8);
  __chkstk_darwin();
  v130 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for NoticeView(0);
  v119 = *(v144 - 8);
  __chkstk_darwin();
  v142 = v9;
  v143 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1004DAB0C();
  __chkstk_darwin();
  v116 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100004CB8(&qword_10063FD30, &qword_10052BF48);
  __chkstk_darwin();
  v129 = &v106 - v11;
  v12 = type metadata accessor for NoticeView.Content(0) - 8;
  __chkstk_darwin();
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004CB8(&qword_10063FD38, &qword_10052BF50) - 8;
  __chkstk_darwin();
  v17 = &v106 - v16;
  v18 = sub_100004CB8(&qword_10063FD40, &qword_10052BF58) - 8;
  __chkstk_darwin();
  v20 = &v106 - v19;
  *&v114 = sub_100004CB8(&qword_10063FD48, &qword_10052BF60);
  __chkstk_darwin();
  v22 = &v106 - v21;
  v115 = sub_100004CB8(&qword_10063FD50, &qword_10052BF68);
  __chkstk_darwin();
  v24 = &v106 - v23;
  v141 = sub_100004CB8(&qword_10063FD58, &qword_10052BF70);
  __chkstk_darwin();
  v140 = &v106 - v25;
  v126 = sub_100004CB8(&qword_10063FD60, &qword_10052BF78);
  v123 = *(v126 - 8);
  __chkstk_darwin();
  v120 = &v106 - v26;
  v127 = sub_100004CB8(&qword_10063FD68, &qword_10052BF80);
  v124 = *(v127 - 8);
  __chkstk_darwin();
  v121 = &v106 - v27;
  v118 = sub_100004CB8(&qword_10063FD70, &qword_10052BF88);
  __chkstk_darwin();
  v125 = &v106 - v28;
  v122 = sub_100004CB8(&qword_10063FD78, &qword_10052BF90);
  __chkstk_darwin();
  v128 = &v106 - v29;
  v139 = sub_100004CB8(&qword_10063FD80, &qword_10052BF98);
  __chkstk_darwin();
  v138 = &v106 - v30;
  v31 = v2;
  sub_100327670(v2, v14, type metadata accessor for Notice);
  *&v14[*(v12 + 36)] = swift_getKeyPath();
  sub_100004CB8(&unk_100641090, &qword_1005275B0);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v12 + 40)] = swift_getKeyPath();
  sub_100004CB8(&unk_10063DC50, &unk_10052D340);
  swift_storeEnumTagMultiPayload();
  *&v152 = 0x4041000000000000;
  sub_100327560();
  sub_1004D9EDC();
  *&v152 = 0x4010000000000000;
  sub_1003275B4();
  sub_1004D9EDC();
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100327608(v14, v17, type metadata accessor for NoticeView.Content);
  v32 = &v17[*(v15 + 44)];
  v33 = v157;
  *(v32 + 4) = v156;
  *(v32 + 5) = v33;
  *(v32 + 6) = v158;
  v34 = v153;
  *v32 = v152;
  *(v32 + 1) = v34;
  v35 = v155;
  *(v32 + 2) = v154;
  *(v32 + 3) = v35;
  v36 = &v20[*(v18 + 44)];
  sub_1004DBCFC();
  LOBYTE(v18) = sub_1004DAF2C();
  v36[*(sub_100004CB8(&qword_10063FD98, &qword_10052C010) + 36)] = v18;
  sub_100047F38(v17, v20, &qword_10063FD38, &qword_10052BF50);
  if (qword_10063D908 != -1)
  {
    swift_once();
  }

  v37 = static Corner.extraLarge;
  v38 = unk_100673880;
  v39 = byte_100673888;
  sub_100047F38(v20, v22, &qword_10063FD40, &qword_10052BF58);
  v40 = &v22[*(v114 + 36)];
  *v40 = v37;
  *(v40 + 1) = v38;
  v40[16] = v39;
  v41 = v2 + *(v144 + 28);
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  v45 = *(v41 + 24);
  LOBYTE(v148) = *v41;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  sub_100004CB8(&qword_10063FDA0, &qword_10052C018);
  sub_1004D9E9C();
  if (v145)
  {
    v46 = 0.4;
  }

  else
  {
    v46 = 1.0;
  }

  sub_100047F38(v22, v24, &qword_10063FD48, &qword_10052BF60);
  *&v24[*(v115 + 36)] = v46;
  v47 = sub_1004DBD5C();
  LOBYTE(v148) = v42;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  sub_1004D9E9C();
  v48 = v145;
  v49 = v24;
  v50 = v140;
  sub_100047F38(v49, v140, &qword_10063FD50, &qword_10052BF68);
  v51 = v50 + *(v141 + 36);
  *v51 = v47;
  *(v51 + 8) = v48;
  sub_1004DAC3C();
  v52 = v129;
  sub_1004D9DBC();
  LOBYTE(v148) = v42;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  sub_1004D9EAC();
  LODWORD(v116) = v145;
  v115 = v146;
  v114 = v147;
  v113 = v31;
  v53 = v143;
  v117 = type metadata accessor for NoticeView;
  sub_100327670(v31, v143, type metadata accessor for NoticeView);
  v54 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v55 = swift_allocObject();
  v119 = type metadata accessor for NoticeView;
  sub_100327608(v53, v55 + v54, type metadata accessor for NoticeView);
  v56 = sub_100004CB8(&qword_10063FDA8, &qword_10052C020);
  v57 = v52 + *(v56 + 44);
  *v57 = v116;
  *(v57 + 8) = v115;
  *(v57 + 16) = v114;
  v58 = (v52 + *(v56 + 48));
  *v58 = sub_1003276DC;
  v58[1] = v55;
  v59 = v130;
  sub_1004D9D1C();
  sub_100327670(v31, v53, type metadata accessor for NoticeView);
  v60 = swift_allocObject();
  sub_100327608(v53, v60 + v54, type metadata accessor for NoticeView);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_100327960;
  *(v61 + 24) = v60;
  v62 = v133;
  v63 = v132;
  sub_1004DBC4C();

  (*(v131 + 8))(v59, v63);
  sub_1004D9DDC();
  v64 = sub_1003279B0();
  v65 = sub_100042B08(&qword_10063FDF8, &qword_10063FD30, &qword_10052BF48, &protocol conformance descriptor for SequenceGesture<A, B>);
  v66 = v120;
  v67 = v141;
  v68 = v140;
  sub_1004DB6AC();
  sub_10001074C(v52, &qword_10063FD30, &qword_10052BF48);
  sub_10001074C(v68, &qword_10063FD58, &qword_10052BF70);
  v69 = v113;
  v70 = v143;
  sub_100327670(v113, v143, v117);
  v71 = swift_allocObject();
  sub_100327608(v70, v71 + v54, v119);
  type metadata accessor for Notice(0);
  v148 = v67;
  v149 = v62;
  v150 = v64;
  v151 = v65;
  swift_getOpaqueTypeConformance2();
  sub_100327D74(&qword_10063FE00, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
  v72 = v121;
  v73 = v126;
  sub_1004DB70C();

  (*(v123 + 8))(v66, v73);
  v74 = v125;
  v75 = &v125[*(v118 + 36)];
  sub_100004CB8(&qword_10063FE08, &qword_10052C030);
  sub_1004DA49C();
  *v75 = swift_getKeyPath();
  (*(v124 + 32))(v74, v72, v127);
  v76 = (v69 + *(v144 + 24));
  v77 = *v76;
  v78 = v76[1];
  v148 = v77;
  v149 = v78;
  sub_100004CB8(&qword_10063FE10, &qword_10052C068);
  sub_1004DB9EC();
  v79 = v145;
  sub_1004DBE7C();
  v81 = v80;
  v83 = v82;
  v84 = v74;
  v85 = v128;
  sub_100047F38(v84, v128, &qword_10063FD70, &qword_10052BF88);
  v86 = (v85 + *(v122 + 36));
  *v86 = v79;
  v86[1] = v79;
  v86[2] = v81;
  v86[3] = v83;
  sub_1004DBD3C();
  v87 = sub_1004DBD4C();

  v88 = v138;
  v89 = &v138[*(v139 + 36)];
  v90 = sub_100004CB8(&qword_10063FE18, &unk_10052C070);
  sub_100327670(v69, v89 + *(v90 + 36), type metadata accessor for Notice);
  *v89 = v87;
  sub_100047F38(v85, v88, &qword_10063FD78, &qword_10052BF90);
  v91 = v136;
  v92 = *(v136 + 104);
  v93 = v134;
  v94 = v137;
  v92(v134, enum case for DynamicTypeSize.xSmall(_:), v137);
  v95 = v135;
  v92(v135, enum case for DynamicTypeSize.accessibility2(_:), v94);
  sub_100327D74(&qword_10063E998, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1004DD33C();
  if (result)
  {
    v97 = v93;
    v98 = *(v91 + 32);
    v99 = v109;
    v98(v109, v97, v94);
    v100 = v111;
    v98((v99 + *(v111 + 48)), v95, v94);
    v101 = v110;
    sub_1000108DC(v99, v110, &qword_10063FD20, &qword_10052BF38);
    v102 = *(v100 + 48);
    v103 = v107;
    v98(v107, v101, v94);
    v104 = *(v91 + 8);
    v104(v101 + v102, v94);
    sub_100047F38(v99, v101, &qword_10063FD20, &qword_10052BF38);
    v98((v103 + *(v108 + 36)), (v101 + *(v100 + 48)), v94);
    v104(v101, v94);
    sub_100327EF0();
    sub_100042B08(&qword_10063FE48, &qword_10063FD28, &qword_10052BF40, &protocol conformance descriptor for ClosedRange<A>);
    v105 = v138;
    sub_1004DB4AC();
    sub_10001074C(v103, &qword_10063FD28, &qword_10052BF40);
    return sub_10001074C(v105, &qword_10063FD80, &qword_10052BF98);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10032427C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  if ((*(a4 + *(result + 10)) & 1) != 0 || *(a4 + *(result + 8)) && (type metadata accessor for NoticeView(0), sub_100004CB8(&qword_100640118, &qword_10052F6B0), result = sub_1004DB9EC(), (v7 & 1) == 0))
  {
    *a2 = 1;
  }

  return result;
}

double sub_100324318(uint64_t a1)
{
  type metadata accessor for NoticeView(0);
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9EC();
  if ((v5 & 1) == 0)
  {
    sub_1004DB9FC();
    v2 = *(a1 + *(type metadata accessor for Notice(0) + 32));
    if (v2)
    {
      v2();
    }
  }

  if (*(a1 + *(type metadata accessor for Notice(0) + 40)) == 1)
  {
    NoticeView.dismiss.getter();
    if (v4)
    {
      sub_100004CB8(&qword_100643290, &qword_10052B360);
      sub_1004DBB6C();
    }
  }

  return result;
}

void sub_100324458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(type metadata accessor for NoticeView(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  sub_1004DBD3C();
  v10 = a3;
  sub_1004DA0EC();

  sub_100329910();
  v6 = sub_1004DE14C();
  sub_100327670(a3, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoticeView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_100327608(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for NoticeView);
  OS_dispatch_queue.asyncAfter(_:block:)(sub_10032995C, v8, 0.215);
}

double sub_100324604(uint64_t a1)
{
  sub_1004DBD3C();
  sub_1004DA0EC();

  return result;
}

uint64_t sub_10032468C(double a1)
{
  type metadata accessor for NoticeView(0);
  sub_100004CB8(&qword_10063FE10, &qword_10052C068);
  return sub_1004DB9FC();
}

uint64_t sub_100324714@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DA74C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&unk_100641090, &qword_1005275B0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for NoticeView.Content(0);
  sub_1000108DC(v1 + *(v9 + 28), v8, &unk_100641090, &qword_1005275B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1004DA25C();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_1004DDF8C();
    v13 = sub_1004DAECC();
    sub_1004D953C(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10032491C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DA74C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&unk_10063DC50, &unk_10052D340);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for NoticeView.Content(0);
  sub_1000108DC(v1 + *(v9 + 32), v8, &unk_10063DC50, &unk_10052D340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1004DA30C();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_1004DDF8C();
    v13 = sub_1004DAECC();
    sub_1004D953C(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_100324B24@<Q0>(uint64_t a1@<X8>)
{
  sub_100004CB8(&qword_10063FFF0, &qword_10052C208);
  __chkstk_darwin();
  v4 = &v15 - v3;
  sub_1004DA25C();
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100327670(v1, v8, type metadata accessor for Notice);
  sub_100324714(v6);
  sub_100328DE0(v8, v6, v16);
  if (sub_100324D08())
  {
    v9 = sub_1004DA7AC();
  }

  else
  {
    v9 = sub_1004DA7CC();
  }

  v10 = v17;
  *v4 = v9;
  *(v4 + 1) = v10;
  v4[16] = 0;
  v11 = sub_100004CB8(&qword_10063FFF8, &qword_10052C210);
  sub_100324F1C(v1, v16, &v4[*(v11 + 44)]);
  v12 = sub_1004DAF2C();
  sub_100047F38(v4, a1, &qword_10063FFF0, &qword_10052C208);
  v13 = a1 + *(sub_100004CB8(&qword_100640000, &qword_10052C218) + 36);
  *v13 = v12;
  result = v16[0];
  *(v13 + 24) = v16[1];
  *(v13 + 8) = result;
  *(v13 + 40) = 0;
  return result;
}

BOOL sub_100324D08()
{
  v1 = v0;
  sub_100004CB8(&qword_1006400D0, &qword_10052C338);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = sub_1004DA25C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100324714(v7);
  v8 = sub_1004DA24C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = type metadata accessor for Notice(0);
    v10 = (v1 + *(v9 + 28));
    v11 = v10[1];
    if (v11)
    {
      v12 = *v10 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v12)
      {
        sub_1000108DC(v1 + *(v9 + 20), v3, &qword_1006400D0, &qword_10052C338);
        v14 = type metadata accessor for Notice.Thumbnail(0);
        if ((*(*(v14 - 8) + 48))(v3, 1, v14) != 1)
        {
          v16 = swift_getEnumCaseMultiPayload() == 1;
          sub_10032988C(v3, type metadata accessor for Notice.Thumbnail);
          return v16;
        }

        sub_10001074C(v3, &qword_1006400D0, &qword_10052C338);
      }
    }
  }

  return 0;
}

uint64_t sub_100324F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v33 = a1;
  sub_100004CB8(&qword_100640008, &qword_10052C220);
  __chkstk_darwin();
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v33 - v5;
  v7 = sub_100004CB8(&qword_100640010, &qword_10052C228) - 8;
  __chkstk_darwin();
  v9 = &v33 - v8;
  v10 = sub_100004CB8(&qword_100640018, &qword_10052C230) - 8;
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = sub_100004CB8(&qword_100640020, &qword_10052C238) - 8;
  __chkstk_darwin();
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  __chkstk_darwin();
  v18 = &v33 - v17;
  sub_100325368(a1, v9);
  sub_1004DAFFC();
  sub_1004DB06C();
  v19 = sub_1004DB0BC();

  KeyPath = swift_getKeyPath();
  v21 = &v9[*(sub_100004CB8(&qword_100640028, &qword_10052C270) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  *&v9[*(v7 + 44)] = sub_1004DABEC();
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v9, v12, &qword_100640010, &qword_10052C228);
  v22 = &v12[*(v10 + 44)];
  v23 = v43;
  *(v22 + 4) = v42;
  *(v22 + 5) = v23;
  *(v22 + 6) = v44;
  v24 = v39;
  *v22 = v38;
  *(v22 + 1) = v24;
  v25 = v41;
  *(v22 + 2) = v40;
  *(v22 + 3) = v25;
  sub_100047F38(v12, v16, &qword_100640018, &qword_10052C230);
  v26 = &v16[*(v13 + 44)];
  *v26 = 0x3FF0000000000000;
  *(v26 + 4) = 0;
  sub_100047F38(v16, v18, &qword_100640020, &qword_10052C238);
  *v6 = sub_1004DA91C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v27 = sub_100004CB8(&qword_100640030, &qword_10052C278);
  sub_100325DA4(v33, v36, &v6[*(v27 + 44)]);
  v28 = v34;
  sub_1000108DC(v18, v34, &qword_100640020, &qword_10052C238);
  v29 = v35;
  sub_1000108DC(v6, v35, &qword_100640008, &qword_10052C220);
  v30 = v37;
  sub_1000108DC(v28, v37, &qword_100640020, &qword_10052C238);
  v31 = sub_100004CB8(&qword_100640038, &qword_10052C280);
  sub_1000108DC(v29, v30 + *(v31 + 48), &qword_100640008, &qword_10052C220);
  sub_10001074C(v6, &qword_100640008, &qword_10052C220);
  sub_10001074C(v18, &qword_100640020, &qword_10052C238);
  sub_10001074C(v29, &qword_100640008, &qword_10052C220);
  return sub_10001074C(v28, &qword_100640020, &qword_10052C238);
}

uint64_t sub_100325368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = sub_100004CB8(&qword_100640098, &qword_10052C300);
  __chkstk_darwin();
  v4 = &v46 - v3;
  v63 = sub_100004CB8(&qword_1006400A0, &qword_10052C308);
  __chkstk_darwin();
  v6 = &v46 - v5;
  v50 = sub_1004D866C();
  v48 = *(v50 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_1006400A8, &qword_10052C310);
  __chkstk_darwin();
  v51 = &v46 - v9;
  v61 = sub_100004CB8(&qword_1006400B0, &qword_10052C318);
  __chkstk_darwin();
  v54 = &v46 - v10;
  v55 = sub_1004DCC9C();
  v53 = *(v55 - 8);
  __chkstk_darwin();
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v46 - v12;
  v13 = sub_100004CB8(&qword_1006400B8, &qword_10052C320);
  __chkstk_darwin();
  v15 = &v46 - v14;
  v57 = sub_100004CB8(&qword_1006400C0, &qword_10052C328);
  __chkstk_darwin();
  v58 = (&v46 - v16);
  v17 = sub_100004CB8(&qword_1006400C8, &qword_10052C330);
  __chkstk_darwin();
  v59 = &v46 - v18;
  sub_100004CB8(&qword_1006400D0, &qword_10052C338);
  __chkstk_darwin();
  v20 = (&v46 - v19);
  v21 = *(type metadata accessor for Notice(0) + 20);
  v52 = a1;
  sub_1000108DC(a1 + v21, v20, &qword_1006400D0, &qword_10052C338);
  v22 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_100329570();
    sub_1004DAADC();
    v23 = &qword_1006400A0;
    v24 = &qword_10052C308;
    sub_1000108DC(v6, v15, &qword_1006400A0, &qword_10052C308);
    swift_storeEnumTagMultiPayload();
    sub_10032962C();
    sub_100329800();
    sub_1004DAADC();
    v25 = v6;
LABEL_9:
    v41 = v23;
    v42 = v24;
    return sub_10001074C(v25, v41, v42);
  }

  v46 = v15;
  v56 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v58 = *v20;
    swift_storeEnumTagMultiPayload();
    sub_1003296B8();

    v40 = v59;
    sub_1004DAADC();
    v23 = &qword_1006400C8;
    v24 = &qword_10052C330;
    sub_1000108DC(v40, v46, &qword_1006400C8, &qword_10052C330);
    swift_storeEnumTagMultiPayload();
    sub_10032962C();
    sub_100329800();
    sub_1004DAADC();

    v25 = v40;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1004DB87C();
    (*(v48 + 104))(v49, enum case for CircularProgressView.LineStyle.round(_:), v50);
    LOBYTE(v65) = 1;
    v43 = v51;
    sub_1004D865C();
    sub_1004DBD1C();
    sub_1004D9F5C();
    v44 = (v43 + *(v8 + 36));
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    v44[2] = v67;
    sub_1000108DC(v43, v4, &qword_1006400A8, &qword_10052C310);
    swift_storeEnumTagMultiPayload();
    sub_100329570();
    sub_1004DAADC();
    sub_1000108DC(v6, v46, &qword_1006400A0, &qword_10052C308);
    swift_storeEnumTagMultiPayload();
    sub_10032962C();
    sub_100329800();
    sub_1004DAADC();
    sub_10001074C(v6, &qword_1006400A0, &qword_10052C308);
    v25 = v43;
    v41 = &qword_1006400A8;
    v42 = &qword_10052C310;
    return sub_10001074C(v25, v41, v42);
  }

  v62 = v13;
  v27 = v53;
  v28 = v60;
  v29 = v55;
  (*(v53 + 32))(v60, v20, v55);
  (*(v27 + 16))(v47, v28, v29);
  type metadata accessor for NoticeView.Content(0);
  sub_100004CB8(&qword_10063FF18, &qword_10052C130);
  sub_1004D9EEC();
  v30 = v54;
  sub_1004D935C();
  sub_100004CB8(&qword_10063FF20, &qword_10052C138);
  sub_1004D9EEC();
  v31 = v65;
  v32 = v30 + *(sub_100004CB8(&qword_100640100, &unk_10052C340) + 36);
  *v32 = v31;
  *(v32 + 8) = -1;
  *(v32 + 16) = 0;
  if (qword_10063D910 != -1)
  {
    swift_once();
  }

  v33 = static Border.artwork;
  v34 = qword_100673898;
  v35 = byte_1006738A0;
  sub_1004D9EEC();
  v36 = v65;
  v37 = v30 + *(v61 + 36);
  *v37 = v33;
  *(v37 + 8) = v34;
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  *(v37 + 32) = -1;
  *(v37 + 40) = 0;
  sub_1000108DC(v30, v58, &qword_1006400B0, &qword_10052C318);
  swift_storeEnumTagMultiPayload();
  sub_1003296B8();

  v38 = v59;
  sub_1004DAADC();
  sub_1000108DC(v38, v46, &qword_1006400C8, &qword_10052C330);
  swift_storeEnumTagMultiPayload();
  sub_10032962C();
  sub_100329800();
  sub_1004DAADC();
  sub_10001074C(v38, &qword_1006400C8, &qword_10052C330);
  sub_10001074C(v30, &qword_1006400B0, &qword_10052C318);
  return (*(v27 + 8))(v60, v29);
}

void sub_100325DA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v63 = a3;
  v64 = sub_1004DB0CC();
  v61 = *(v64 - 8);
  __chkstk_darwin();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100640040, &qword_10052C288);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v73 = &v57 - v7;
  v72 = sub_100004CB8(&qword_100640048, &qword_10052C290);
  __chkstk_darwin();
  v77 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v57 - v9;
  __chkstk_darwin();
  v76 = &v57 - v10;
  v11 = *(type metadata accessor for Notice(0) + 28);
  v71 = a1;
  v12 = (a1 + v11);
  v13 = v12[1];
  if (v13)
  {
    *&v79 = *v12;
    *(&v79 + 1) = v13;
    sub_1002E6780();

    v14 = sub_1004DB34C();
    v16 = v15;
    v18 = v17;
    sub_1004DB10C();
    v19 = sub_1004DB2AC();
    v21 = v20;
    v23 = v22;

    sub_100051E10(v14, v16, v18 & 1);

    LODWORD(v79) = sub_1004DAC1C();
    v24 = sub_1004DB24C();
    v26 = v25;
    LOBYTE(v14) = v27;
    v29 = v28;
    sub_100051E10(v19, v21, v23 & 1);

    KeyPath = swift_getKeyPath();
    v69 = v24;
    v68 = v26;
    v65 = v14 & 1;
    sub_100051E00(v24, v26, v14 & 1);
    v67 = v29;

    v66 = KeyPath;

    v62 = 2;
  }

  else
  {
    v69 = 0;
    v68 = 0;
    v65 = 0;
    v67 = 0;
    v66 = 0;
    v62 = 0;
  }

  sub_1003264B4(v71, &v79);
  v78 = *(&v79 + 1);
  v31 = v79;
  v32 = v81;
  v59 = v80;
  v58 = v82;
  v33 = v83;
  sub_1004DAFFC();
  v34 = v61;
  v35 = v64;
  (*(v61 + 104))(v5, enum case for Font.Leading.tight(_:), v64);
  sub_1004DB0FC();

  v36 = v5;
  v37 = v32;
  v38 = v59;
  v39 = v35;
  v40 = v58;
  (*(v34 + 8))(v36, v39);
  sub_1004DB06C();
  v41 = sub_1004DB0BC();

  v42 = swift_getKeyPath();
  v90 = v33;
  v60 = v31;
  *&v79 = v31;
  *(&v79 + 1) = v78;
  v80 = v38;
  v81 = v37;
  v61 = v37;
  v82 = v40;
  LODWORD(v64) = v33;
  v83 = v33;
  v84 = v88;
  v85 = v89;
  v86 = v42;
  v87 = v41;
  if (sub_100324D08())
  {
    type metadata accessor for NoticeView.Content(0);
    sub_100004CB8(&qword_10063FF18, &qword_10052C130);
    sub_1004D9EEC();
  }

  sub_100004CB8(&qword_100640050, &qword_10052C298);
  sub_100329198();
  v43 = v73;
  sub_1004DB49C();
  sub_1003293DC(v60, v78, v38, v61, v40, v64);

  v44 = swift_getKeyPath();
  v45 = v70;
  (*(v74 + 32))(v70, v43, v75);
  v46 = v45 + *(v72 + 36);
  *v46 = v44;
  *(v46 + 8) = 4;
  *(v46 + 16) = 0;
  v47 = v76;
  sub_100047F38(v45, v76, &qword_100640048, &qword_10052C290);
  v48 = v77;
  sub_1000108DC(v47, v77, &qword_100640048, &qword_10052C290);
  v49 = v69;
  v50 = v63;
  v51 = v68;
  *v63 = v69;
  v50[1] = v51;
  v52 = v65;
  v53 = v67;
  v50[2] = v65;
  v50[3] = v53;
  v54 = v66;
  v55 = v62;
  v50[4] = v66;
  v50[5] = v55;
  *(v50 + 48) = 0;
  v56 = sub_100004CB8(&qword_100640090, &unk_10052C2F0);
  sub_1000108DC(v48, v50 + *(v56 + 48), &qword_100640048, &qword_10052C290);
  sub_1003294D0(v49, v51, v52, v53);
  sub_100329520(v49, v51, v52, v53, v54);
  sub_10001074C(v47, &qword_100640048, &qword_10052C290);
  sub_10001074C(v48, &qword_100640048, &qword_10052C290);
  sub_100329520(v49, v51, v52, v53, v54);
}

void sub_1003264B4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v130 = a2;
  v3 = sub_1004D83DC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v128 = &v122[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004DA30C();
  v129 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v122[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v122[-v9];
  sub_100004CB8(&qword_10063E7B8, &qword_100529878);
  __chkstk_darwin();
  v12 = &v122[-v11];
  v13 = type metadata accessor for Notice(0);
  if (*(a1 + *(v13 + 32)))
  {
    v126 = v3;
    sub_100324714(v12);
    v14 = sub_1004DA25C();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
    v15 = sub_1004DE30C();
    v16 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v15];

    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v18];
    v20 = [v19 fontDescriptorWithSymbolicTraits:32770];

    v127 = v4;
    if (v20)
    {

      v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    }

    else
    {
      v21 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v18];
      v20 = v18;
    }

    v22 = v21;

    v23 = [objc_opt_self() configurationWithFont:v22 scale:1];
    v24 = sub_1004DD3FC();
    v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

    if (v25)
    {
      v26 = [v25 imageWithRenderingMode:2];

      v27 = v127;
      if (v26)
      {
        sub_10032491C(v10);
        v28 = v129;
        (v129)[13](v8, enum case for LayoutDirection.rightToLeft(_:), v6);
        v29 = sub_1004DA2FC();
        v30 = v28[1];
        v30(v8, v6);
        v30(v10, v6);
        v125 = v26;
        if (v29)
        {
          v31 = objc_opt_self();
          v32 = (a1 + *(v13 + 24));
          v34 = *v32;
          v33 = v32[1];
          v35 = sub_1004DD3FC();
          v36 = [v31 dominantLanguageForString:v35];

          if (v36)
          {
            sub_1004DD43C();
            v37 = v128;
            sub_1004D839C();
            v38 = sub_1004D83BC();
            (*(v27 + 8))(v37, v126);
            if (v38 == 1)
            {
              v39 = v26;
              sub_1004DB8DC();
              v40 = sub_1004DB35C();
              v42 = v41;
              v129 = v36;
              v44 = v43;
              LODWORD(v134) = sub_1004DAC1C();
              v45 = sub_1004DB24C();
              v47 = v46;
              v49 = v48;
              sub_100051E10(v40, v42, v44 & 1);

              String.nonBreakingSpace.unsafeMutableAddressor();

              v128 = sub_1004DB27C();
              v127 = v50;
              LODWORD(v124) = v51;
              v126 = v52;

              sub_100051E10(v45, v47, v49 & 1);

              *&v134 = v34;
              *(&v134 + 1) = v33;
              sub_1002E6780();

              v53 = sub_1004DB34C();
              v55 = v54;
              v57 = v56;
              LODWORD(v134) = sub_1004DABEC();
              v58 = sub_1004DB24C();
              v60 = v59;
              LOBYTE(v40) = v61;
              sub_100051E10(v53, v55, v57 & 1);

              v62 = v128;
              v63 = v127;
              v64 = sub_1004DB27C();
              v66 = v65;
              v123 = v67;
              v69 = v68;
              sub_100051E10(v58, v60, v40 & 1);

              sub_100051E10(v62, v63, v124 & 1);

              LOBYTE(v40) = v123 & 1;
              *&v131 = v64;
              *(&v131 + 1) = v66;
              *&v132 = v123 & 1;
              *(&v132 + 1) = v69;
              LOBYTE(v133) = 0;
              sub_100051E00(v64, v66, v123 & 1);

              sub_100051E00(v64, v66, v40);

              sub_1004DAADC();

              sub_100051E10(v64, v66, v40);

              sub_100051E10(v64, v66, v40);

LABEL_15:
              v132 = v135;
              v131 = v134;
              v133 = v136;
              sub_100004CB8(&qword_100640080, &unk_10052C2B0);
              sub_100329360();
              sub_1004DAADC();

              v84 = v134;
              v85 = v135;
              goto LABEL_16;
            }
          }
        }

        v86 = (a1 + *(v13 + 24));
        v87 = v86[1];
        *&v134 = *v86;
        *(&v134 + 1) = v87;
        sub_1002E6780();

        v88 = sub_1004DB34C();
        v90 = v89;
        v92 = v91;
        LODWORD(v134) = sub_1004DABEC();
        v93 = sub_1004DB24C();
        v95 = v94;
        v97 = v96;
        sub_100051E10(v88, v90, v92 & 1);

        String.nonBreakingSpace.unsafeMutableAddressor();

        v129 = sub_1004DB27C();
        v128 = v98;
        LODWORD(v126) = v99;
        v127 = v100;

        sub_100051E10(v93, v95, v97 & 1);

        v101 = v26;
        sub_1004DB8DC();
        v102 = sub_1004DB35C();
        v104 = v103;
        v106 = v105;
        LODWORD(v134) = sub_1004DAC1C();
        v107 = sub_1004DB24C();
        v109 = v108;
        LOBYTE(v90) = v110;
        sub_100051E10(v102, v104, v106 & 1);

        v111 = v129;
        v112 = v128;
        v124 = sub_1004DB27C();
        v114 = v113;
        v116 = v115;
        v118 = v117;
        sub_100051E10(v107, v109, v90 & 1);

        sub_100051E10(v111, v112, v126 & 1);

        *&v131 = v124;
        *(&v131 + 1) = v114;
        *&v132 = v116 & 1;
        *(&v132 + 1) = v118;
        LOBYTE(v133) = 1;
        sub_1004DAADC();
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v70 = (a1 + *(v13 + 24));
  v71 = v70[1];
  *&v134 = *v70;
  *(&v134 + 1) = v71;
  sub_1002E6780();

  v72 = sub_1004DB34C();
  v74 = v73;
  v76 = v75;
  LODWORD(v134) = sub_1004DABEC();
  v77 = sub_1004DB24C();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_100051E10(v72, v74, v76 & 1);

  *&v131 = v77;
  *(&v131 + 1) = v79;
  *&v132 = v81 & 1;
  *(&v132 + 1) = v83;
  v133 = 256;
  sub_100004CB8(&qword_100640080, &unk_10052C2B0);
  sub_100329360();
  sub_1004DAADC();
  v84 = v134;
  v85 = v135;
LABEL_16:
  v119 = v136;
  v120 = v137;
  v121 = v130;
  *v130 = v84;
  v121[1] = v85;
  *(v121 + 32) = v119;
  *(v121 + 33) = v120;
}

uint64_t NoticeDismissal.presented.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB5C();
  return v4;
}

void (*NoticeDismissal.presented.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 19) = a4 & 1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4 & 1;

  *(v9 + 64) = sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB5C();
  return sub_1003271D8;
}

void sub_1003271D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_1004DBB6C();

  free(v1);
}

uint64_t NoticeDismissal.$presented.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB7C();
  return v4;
}

void sub_1003272A4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.noticeDismissal.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_100322B98();
  sub_1004DA75C();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_100327354;
}

void sub_100327354(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    sub_100322E64(v4, v5);
    sub_1004DA76C();
    sub_100322E20(*v3, v3[1]);
  }

  else
  {
    sub_1004DA76C();
  }

  free(v3);
}

unint64_t sub_100327560()
{
  result = qword_10063FD88;
  if (!qword_10063FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FD88);
  }

  return result;
}

unint64_t sub_1003275B4()
{
  result = qword_10063FD90;
  if (!qword_10063FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FD90);
  }

  return result;
}

uint64_t sub_100327608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100327670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1003276DC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10032427C(a1, a2, a3, v8);
}

uint64_t sub_100327764()
{
  v1 = type metadata accessor for NoticeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for Notice(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1004DCC9C();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  sub_100322E14(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

uint64_t sub_100327978()
{

  return swift_deallocObject();
}

unint64_t sub_1003279B0()
{
  result = qword_10063FDB0;
  if (!qword_10063FDB0)
  {
    sub_100008DE4(&qword_10063FD58, &qword_10052BF70);
    sub_100327A68();
    sub_100042B08(&qword_10063FDE8, &qword_10063FDF0, &qword_10052C028, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDB0);
  }

  return result;
}

unint64_t sub_100327A68()
{
  result = qword_10063FDB8;
  if (!qword_10063FDB8)
  {
    sub_100008DE4(&qword_10063FD50, &qword_10052BF68);
    sub_100327AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDB8);
  }

  return result;
}

unint64_t sub_100327AF4()
{
  result = qword_10063FDC0;
  if (!qword_10063FDC0)
  {
    sub_100008DE4(&qword_10063FD48, &qword_10052BF60);
    sub_100327B80();
    sub_100312414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDC0);
  }

  return result;
}

unint64_t sub_100327B80()
{
  result = qword_10063FDC8;
  if (!qword_10063FDC8)
  {
    sub_100008DE4(&qword_10063FD40, &qword_10052BF58);
    sub_100327C38();
    sub_100042B08(&qword_10063FDE0, &qword_10063FD98, &qword_10052C010, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDC8);
  }

  return result;
}

unint64_t sub_100327C38()
{
  result = qword_10063FDD0;
  if (!qword_10063FDD0)
  {
    sub_100008DE4(&qword_10063FD38, &qword_10052BF50);
    sub_100327D74(&qword_10063FDD8, type metadata accessor for NoticeView.Content, &unk_10052C17C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDD0);
  }

  return result;
}

void sub_100327CF4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100324458(a1, a2, v6);
}

uint64_t sub_100327D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100327DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

unint64_t sub_100327EF0()
{
  result = qword_10063FE20;
  if (!qword_10063FE20)
  {
    sub_100008DE4(&qword_10063FD80, &qword_10052BF98);
    sub_100327FA8();
    sub_100042B08(&qword_10063FE40, &qword_10063FE18, &unk_10052C070, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FE20);
  }

  return result;
}

unint64_t sub_100327FA8()
{
  result = qword_10063FE28;
  if (!qword_10063FE28)
  {
    sub_100008DE4(&qword_10063FD78, &qword_10052BF90);
    sub_100328034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FE28);
  }

  return result;
}

unint64_t sub_100328034()
{
  result = qword_10063FE30;
  if (!qword_10063FE30)
  {
    sub_100008DE4(&qword_10063FD70, &qword_10052BF88);
    sub_100008DE4(&qword_10063FD60, &qword_10052BF78);
    type metadata accessor for Notice(255);
    sub_100008DE4(&qword_10063FD58, &qword_10052BF70);
    sub_100008DE4(&qword_10063FD30, &qword_10052BF48);
    sub_1003279B0();
    sub_100042B08(&qword_10063FDF8, &qword_10063FD30, &qword_10052BF48, &protocol conformance descriptor for SequenceGesture<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_100327D74(&qword_10063FE00, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&qword_10063FE38, &qword_10063FE08, &qword_10052C030, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FE30);
  }

  return result;
}

uint64_t sub_100328244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100328318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

void sub_1003283D4(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    sub_10032850C(319);
    if (v2 <= 0x3F)
    {
      sub_100328570(319, &qword_10063FEC8, &type metadata for Double, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100328570(319, &qword_10063FED0, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v4 <= 0x3F)
        {
          sub_100328570(319, &unk_10063FED8, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10032850C(uint64_t a1)
{
  if (!qword_10063FEB8)
  {
    sub_100008DE4(&qword_10063FEC0, &qword_10052C0F0);
    v1 = sub_1004D9DCC();
    if (!v2)
    {
      atomic_store(v1, &qword_10063FEB8);
    }
  }
}

void sub_100328570(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1003285C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100328608(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100328658()
{
  sub_100008DE4(&qword_10063FD80, &qword_10052BF98);
  sub_100008DE4(&qword_10063FD28, &qword_10052BF40);
  sub_100327EF0();
  sub_100042B08(&qword_10063FE48, &qword_10063FD28, &qword_10052BF40, &protocol conformance descriptor for ClosedRange<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100328730(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100004CB8(&qword_10063FF18, &qword_10052C130);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100004CB8(&qword_10063FF20, &qword_10052C138);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100004CB8(&qword_10063FF28, &qword_10052C140);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_100004CB8(&qword_10063FF30, &qword_10052C148);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_100328944(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100004CB8(&qword_10063FF18, &qword_10052C130);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100004CB8(&qword_10063FF20, &qword_10052C138);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_100004CB8(&qword_10063FF28, &qword_10052C140);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_100004CB8(&qword_10063FF30, &qword_10052C148);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_100328B50(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    sub_100328C9C(319, &qword_10063FFA0, sub_100327560, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_100328C9C(319, &qword_10063FFA8, sub_1003275B4, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_100328CFC(319, &qword_1006415A0, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          sub_100328CFC(319, &qword_10063FFB0, &type metadata accessor for LayoutDirection);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100328C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1004D9EFC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100328CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004D9DCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100328D7C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1004DA6FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100328DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  sub_100004CB8(&qword_1006400D0, &qword_10052C338);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for Notice(0);
  sub_1000108DC(a1 + *(v8 + 20), v7, &qword_1006400D0, &qword_10052C338);
  v9 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_10001074C(v7, &qword_1006400D0, &qword_10052C338);
    v10 = 0;
  }

  else
  {
    v10 = swift_getEnumCaseMultiPayload() == 1;
    sub_10032988C(v7, type metadata accessor for Notice.Thumbnail);
  }

  v11 = sub_1004DA25C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(a2, v11);
  if (v13 == enum case for DynamicTypeSize.xSmall(_:) || v13 == enum case for DynamicTypeSize.small(_:))
  {
    result = sub_10032988C(a1, type metadata accessor for Notice);
    v16 = 6.0;
    if (!v10)
    {
      v16 = 0.0;
    }

    v17 = 4.0;
    v18 = 12.0;
    if (v10)
    {
      v19 = 12.0;
    }

    else
    {
      v19 = 4.0;
    }
  }

  else
  {
    if (v13 == enum case for DynamicTypeSize.medium(_:) || v13 == enum case for DynamicTypeSize.large(_:) || v13 == enum case for DynamicTypeSize.xLarge(_:))
    {
      goto LABEL_29;
    }

    if (v13 != enum case for DynamicTypeSize.xxLarge(_:) && v13 != enum case for DynamicTypeSize.xxxLarge(_:) && v13 != enum case for DynamicTypeSize.accessibility1(_:) && v13 != enum case for DynamicTypeSize.accessibility2(_:) && v13 != enum case for DynamicTypeSize.accessibility3(_:) && v13 != enum case for DynamicTypeSize.accessibility4(_:) && v13 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v12 + 8))(a2, v11);
LABEL_29:
      if (v10)
      {
        v19 = 10.0;
      }

      else
      {
        v19 = 12.0;
      }

      v22 = (a1 + *(v8 + 32));
      v23 = *v22;
      v24 = v22[1];
      sub_10000DE64(*v22, v24);
      result = sub_10032988C(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = sub_10000DE74(v23, v24);
        v18 = 19.0;
      }

      else
      {
        v18 = 20.0;
      }

      v17 = 4.0;
      if (v10)
      {
        v16 = 10.0;
      }

      else
      {
        v16 = 4.0;
      }

      goto LABEL_41;
    }

    result = sub_10032988C(a1, type metadata accessor for Notice);
    v16 = 10.0;
    if (!v10)
    {
      v16 = 6.0;
    }

    v18 = 20.0;
    v19 = 12.0;
    v17 = 8.0;
  }

LABEL_41:
  *a3 = v17;
  a3[1] = v19;
  a3[2] = v17;
  a3[3] = v18;
  a3[4] = v16;
  return result;
}

unint64_t sub_100329198()
{
  result = qword_100640058;
  if (!qword_100640058)
  {
    sub_100008DE4(&qword_100640050, &qword_10052C298);
    sub_100329250();
    sub_100042B08(&unk_100641BF0, &qword_100640088, &qword_10052D3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640058);
  }

  return result;
}

unint64_t sub_100329250()
{
  result = qword_100640060;
  if (!qword_100640060)
  {
    sub_100008DE4(&qword_100640068, &unk_10052C2A0);
    sub_1003292D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640060);
  }

  return result;
}

unint64_t sub_1003292D4()
{
  result = qword_100640070;
  if (!qword_100640070)
  {
    sub_100008DE4(&qword_100640078, &unk_10052EE50);
    sub_100329360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640070);
  }

  return result;
}

unint64_t sub_100329360()
{
  result = qword_100641EE0;
  if (!qword_100641EE0)
  {
    sub_100008DE4(&qword_100640080, &unk_10052C2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641EE0);
  }

  return result;
}

void sub_1003293DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_100051E10(a1, a2, a3 & 1);
  }

  else
  {

    sub_100329430(a1, a2, a3, a4);
  }
}

double sub_100329430(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100051E10(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_10032946C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1004DA6FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_1003294D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100051E00(a1, a2, a3 & 1);
  }

  return result;
}

double sub_100329520(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_100051E10(a1, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100329570()
{
  result = qword_1006400D8;
  if (!qword_1006400D8)
  {
    sub_100008DE4(&qword_1006400A8, &qword_10052C310);
    sub_100327D74(&qword_1006400E0, &type metadata accessor for CircularProgressView, &protocol conformance descriptor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006400D8);
  }

  return result;
}

unint64_t sub_10032962C()
{
  result = qword_1006400E8;
  if (!qword_1006400E8)
  {
    sub_100008DE4(&qword_1006400C8, &qword_10052C330);
    sub_1003296B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006400E8);
  }

  return result;
}

unint64_t sub_1003296B8()
{
  result = qword_1006400F0;
  if (!qword_1006400F0)
  {
    sub_100008DE4(&qword_1006400B0, &qword_10052C318);
    sub_100329744();
    sub_100312488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006400F0);
  }

  return result;
}

unint64_t sub_100329744()
{
  result = qword_1006400F8;
  if (!qword_1006400F8)
  {
    sub_100008DE4(&qword_100640100, &unk_10052C340);
    sub_100327D74(&qword_100640108, &type metadata accessor for ArtworkImage, &protocol conformance descriptor for ArtworkImage);
    sub_100312414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006400F8);
  }

  return result;
}

unint64_t sub_100329800()
{
  result = qword_100640110;
  if (!qword_100640110)
  {
    sub_100008DE4(&qword_1006400A0, &qword_10052C308);
    sub_100329570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640110);
  }

  return result;
}

uint64_t sub_10032988C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100329910()
{
  result = qword_100642240;
  if (!qword_100642240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100642240);
  }

  return result;
}

uint64_t sub_100329974(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoticeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100329A0C()
{
  result = qword_100640120;
  if (!qword_100640120)
  {
    sub_100008DE4(&qword_100640000, &qword_10052C218);
    sub_100042B08(&qword_100640128, &qword_10063FFF0, &qword_10052C208, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640120);
  }

  return result;
}

uint64_t Optional<A>.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.body(_:);
  v3 = sub_1004DB11C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100329B64(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MusicUIContentConfiguration.makeContentView()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v4 + 16))(v6, v2, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t MusicUIContentView.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 40);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1000357EC(a3);
  return v6(a1, a2);
}

uint64_t MusicUIContentView.configuration.setter(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v7 = &v10[-v6 - 8];
  sub_100035868(a1, v10);
  sub_100004CB8(&qword_10063E480, &unk_100529140);
  swift_dynamicCast();
  (*(a3 + 48))(v7, a2, a3);
  return sub_100008D24(a1);
}

void (*MusicUIContentView.configuration.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  MusicUIContentView.configuration.getter(a2, a3, v7);
  return sub_100329F4C;
}

void sub_100329F4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11];
    v4 = v2[10];
    sub_100035868(*a1, (v2 + 5));
    MusicUIContentView.configuration.setter(v2 + 5, v4, v3);
    sub_100008D24(v2);
  }

  else
  {
    MusicUIContentView.configuration.setter(*a1, v2[10], v2[11]);
  }

  free(v2);
}

uint64_t MPModelPlaylistType.variant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v3 = &enum case for Playlist.Variant.genius(_:);
      }

      else
      {
        v3 = &enum case for Playlist.Variant.folder(_:);
      }

      goto LABEL_12;
    }

    if (!a1)
    {
      v4 = enum case for Playlist.Variant.regular(_:);
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v3 = &enum case for Playlist.Variant.smart(_:);
      goto LABEL_12;
    }
  }

  else
  {
    if (a1 < 7)
    {
      goto LABEL_11;
    }

    switch(a1)
    {
      case 7:
        v3 = &enum case for Playlist.Variant.personalMix(_:);
        goto LABEL_12;
      case 8:
LABEL_11:
        v3 = &enum case for Playlist.Variant.subscribed(_:);
        goto LABEL_12;
      case 9:
        v3 = &enum case for Playlist.Variant.favoriteSongs(_:);
LABEL_12:
        v4 = *v3;
LABEL_13:
        v5 = sub_1004DCEEC();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_14;
    }
  }

  v11 = sub_1004DCEEC();
  v6 = *(*(v11 - 8) + 56);
  v9 = v11;
  v7 = a2;
  v8 = 1;
LABEL_14:

  return v6(v7, v8, 1, v9);
}

uint64_t Playlist.Variant.symbolName.getter()
{
  v1 = v0;
  v2 = sub_1004DCEEC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Playlist.Variant.smart(_:))
  {
    return 0x7061687372616567;
  }

  if (v7 == enum case for Playlist.Variant.genius(_:))
  {
    return 0x7375696E6567;
  }

  if (v7 == enum case for Playlist.Variant.folder(_:))
  {
    return 0x7265646C6F66;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6F6E2E636973756DLL;
}

uint64_t ArtworkImage.ViewModel.init(artwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004DCC9C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ArtworkImage.ViewModel(0);
  return sub_100047F38(a2, a3 + *(v7 + 20), &qword_100641A60, &qword_10052C450);
}

uint64_t sub_10032A40C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_100035430(v5, a3);
}

uint64_t sub_10032A4F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1004DA74C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(a1, a2);
  __chkstk_darwin();
  v15 = &v20 - v14;
  sub_1000108DC(v8, &v20 - v14, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = a3(0);
    return (*(*(v16 - 8) + 32))(a4, v15, v16);
  }

  else
  {
    v18 = sub_1004DDF8C();
    v19 = sub_1004DAECC();
    sub_1004D953C(v18, &_mh_execute_header, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10032A6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004DA74C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063DBB8, &qword_100527500);
  __chkstk_darwin();
  v9 = &v13 - v8;
  sub_1000108DC(v2, &v13 - v8, &qword_10063DBB8, &qword_100527500);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100047F38(v9, a1, &qword_100640150, &unk_10052C4D0);
  }

  v11 = sub_1004DDF8C();
  v12 = sub_1004DAECC();
  sub_1004D953C(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_1004DA73C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArtworkImage.ViewModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DCC9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkImage.ViewModel.init(optionalArtwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004DCC9C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1, v6) == 1)
  {
    sub_10001074C(a2, &qword_100641A60, &qword_10052C450);
    sub_10001074C(a1, &unk_100642930, &unk_1005294A0);
    v8 = type metadata accessor for ArtworkImage.ViewModel(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a3;
    v12 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, a1, v6);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100047F38(a2, a3 + *(v13 + 20), &qword_100641A60, &qword_10052C450);
    v9 = *(*(v13 - 8) + 56);
    v11 = a3;
    v12 = 0;
    v10 = v13;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t ArtworkImage.ViewModel.init(artworkCatalog:cropStyle:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1004DCC9C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    sub_1004DCB5C();
    (*(v6 + 32))(a3, v8, v5);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100047F38(a2, a3 + *(v10 + 20), &qword_100641A60, &qword_10052C450);
    return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  else
  {
    sub_10001074C(a2, &qword_100641A60, &qword_10052C450);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

uint64_t ArtworkImage.ViewModel.calculatedAspectRatio.getter()
{
  if (sub_1004DCC2C() < 1 || sub_1004DCC3C() < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v0 = sub_1004DCC2C();
    *&result = v0 / sub_1004DCC3C();
  }

  return result;
}

uint64_t ArtworkImage.Info.size.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArtworkImage.Info(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 41) = a7;
  return result;
}

__n128 ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_100047F38(a1, a9, &qword_100642C70, &qword_100527540);
  v17 = type metadata accessor for ArtworkImage.Info(0);
  sub_100336DD4(a2, a9 + v17[5], type metadata accessor for ArtworkImage.Placeholder);
  v18 = a9 + v17[6];
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  v19 = a9 + v17[7];
  v20 = *(a5 + 16);
  *v19 = *a5;
  *(v19 + 16) = v20;
  result = *(a5 + 26);
  *(v19 + 26) = result;
  v22 = a9 + v17[8];
  *v22 = a6;
  *(v22 + 8) = a7;
  *(v22 + 16) = a8;
  return result;
}

uint64_t ArtworkImage.Size.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.fittingAspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.init(cgSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3 & 1;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a4 = v5;
  *(a4 + 8) = v4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  *(a4 + 16) = v6;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 513;
  return result;
}

uint64_t ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result / a6;
    if ((a4 & 1) == 0 && a3 > a6)
    {
      v6 = *&result / a3;
      *&result = *&result / a3 * a6;
    }
  }

  *a5 = *&result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v6;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t ArtworkImage.Size.init(height:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result * a6;
    if ((a4 & 1) == 0 && a3 < a6)
    {
      v6 = *&result * a3;
      *&result = *&result * a3 / a6;
    }
  }

  *a5 = v6;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = *&result;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t sub_10032B140(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v5, &v7) & 1;
}

uint64_t ArtworkImage.init(artwork:width:height:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  if (a3)
  {
    sub_1000108DC(a1, &v10 - v8, &unk_100642930, &unk_1005294A0);
    if (a5)
    {
      sub_1004D933C();
    }

    else
    {
      sub_1004D932C();
    }
  }

  else
  {
    sub_1000108DC(a1, &v10 - v8, &unk_100642930, &unk_1005294A0);
    if (a5)
    {
      sub_1004D931C();
    }

    else
    {
      sub_1004D930C();
    }
  }

  return sub_10001074C(a1, &unk_100642930, &unk_1005294A0);
}

double static ArtworkImage.with(_:placeholder:size:reusePolicy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  sub_1003368E0(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_100336DD4(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ArtworkImage.Placeholder);
  v14 = (v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = a3[1];
  *v14 = *a3;
  v14[1] = v15;
  *(v14 + 26) = *(a3 + 26);
  sub_10032B920(a1, sub_1003366B0, v13, a3, a4, a5);

  return result;
}

uint64_t sub_10032B4B8(uint64_t a1)
{
  v3 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  sub_100004CB8(&qword_100640888, &qword_10052D3C0);
  __chkstk_darwin();
  v6 = (v29 - v5);
  v7 = sub_100004CB8(&unk_100641AA0, &qword_10052C888);
  __chkstk_darwin();
  v9 = (v29 - v8);
  if (*(a1 + 8) & 1) != 0 || (*(a1 + 24))
  {
    sub_1003368E0(v1, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    sub_100336DD4(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ArtworkImage.Placeholder);
    v12 = (v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
    v13 = *(a1 + 16);
    *v12 = *a1;
    v12[1] = v13;
    *(v12 + 26) = *(a1 + 26);
    *v6 = sub_100339D1C;
    v6[1] = v11;
    swift_storeEnumTagMultiPayload();
    sub_100004CB8(&qword_100640710, &qword_10052E8B0);
    sub_1003384E0();
    sub_100042B08(&unk_100641AD0, &qword_100640710, &qword_10052E8B0, &protocol conformance descriptor for GeometryReader<A>);
    return sub_1004DAADC();
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 16);
    v17 = sub_10032D3B4();
    v19 = v18;
    sub_10032D3B4();
    v21 = v20;

    sub_10032D3B4();
    v23 = v22;

    v24 = type metadata accessor for ArtworkImage.Placeholder.View(0);
    v25 = *(v24 + 32);
    *(v9 + v25) = swift_getKeyPath();
    sub_100004CB8(&qword_10063DBB8, &qword_100527500);
    swift_storeEnumTagMultiPayload();
    v26 = *(v24 + 36);
    *(v9 + v26) = swift_getKeyPath();
    sub_100004CB8(&unk_10063DBC0, &unk_10052C4C0);
    swift_storeEnumTagMultiPayload();
    *v9 = v17;
    v9[1] = v19;
    v9[2] = v21;
    v9[3] = v15;
    v9[4] = v16;
    v9[5] = v23;
    *(v9 + *(sub_100004CB8(&unk_100641AB0, &unk_10052E8A0) + 36)) = 0;
    sub_1004DBD1C();
    sub_1004D9F5C();
    v27 = (v9 + *(v7 + 36));
    v28 = v29[1];
    *v27 = v29[0];
    v27[1] = v28;
    v27[2] = v29[2];
    sub_1000108DC(v9, v6, &unk_100641AA0, &qword_10052C888);
    swift_storeEnumTagMultiPayload();
    sub_100004CB8(&qword_100640710, &qword_10052E8B0);
    sub_1003384E0();
    sub_100042B08(&unk_100641AD0, &qword_100640710, &qword_10052E8B0, &protocol conformance descriptor for GeometryReader<A>);
    sub_1004DAADC();
    return sub_10001074C(v9, &unk_100641AA0, &qword_10052C888);
  }
}

uint64_t sub_10032B920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  __chkstk_darwin();
  v57 = &v45 - v8;
  v9 = sub_1004DCC0C();
  v58 = *(v9 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v18 = sub_1004D934C();
  v61 = *(v18 - 8);
  __chkstk_darwin();
  v59 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v45 - v20;
  __chkstk_darwin();
  v54 = &v45 - v21;
  __chkstk_darwin();
  v23 = &v45 - v22;
  __chkstk_darwin();
  v60 = &v45 - v24;
  v52 = a1;
  sub_1000108DC(a1, v13, &qword_100642C70, &qword_100527540);
  v25 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v25 - 8) + 48);
  v26 = v46(v13, 1, v25);
  v55 = v18;
  if (v26 == 1)
  {
    sub_10001074C(v13, &qword_100642C70, &qword_100527540);
    v27 = sub_1004DCC9C();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = sub_1004DCC9C();
    v29 = *(v28 - 8);
    v45 = v9;
    v30 = v29;
    (*(v29 + 16))(v17, v13, v28);
    sub_100336880(v13, type metadata accessor for ArtworkImage.ViewModel);
    (*(v30 + 56))(v17, 0, 1, v28);
    v9 = v45;
  }

  v31 = *(a4 + 8);
  v32 = *(a4 + 24);
  sub_1000108DC(v17, v15, &unk_100642930, &unk_1005294A0);
  if (v31)
  {
    if (v32)
    {
      sub_1004D933C();
    }

    else
    {
      sub_1004D932C();
    }
  }

  else if (v32)
  {
    sub_1004D931C();
  }

  else
  {
    sub_1004D930C();
  }

  v33 = v55;
  sub_10001074C(v17, &unk_100642930, &unk_1005294A0);
  (*(v61 + 32))(v60, v23, v33);
  sub_1004D92EC();
  v34 = v47;
  sub_1000108DC(v52, v47, &qword_100642C70, &qword_100527540);
  v35 = v46(v34, 1, v25);
  v36 = v56;
  if (v35 == 1)
  {
    sub_10001074C(v34, &qword_100642C70, &qword_100527540);
    v38 = v57;
    v37 = v58;
    (*(v58 + 56))(v57, 1, 1, v9);
  }

  else
  {
    v38 = v57;
    sub_1000108DC(v34 + *(v25 + 20), v57, &qword_100641A60, &qword_10052C450);
    sub_100336880(v34, type metadata accessor for ArtworkImage.ViewModel);
    v37 = v58;
    if ((*(v58 + 48))(v38, 1, v9) != 1)
    {
      (*(v37 + 32))(v36, v38, v9);
      goto LABEL_19;
    }
  }

  if (qword_10063D958 != -1)
  {
    swift_once();
  }

  v39 = sub_100035430(v9, static Artwork.CropStyle.fallback);
  (*(v37 + 16))(v36, v39, v9);
  if ((*(v37 + 48))(v38, 1, v9) != 1)
  {
    sub_10001074C(v38, &qword_100641A60, &qword_10052C450);
  }

LABEL_19:
  v40 = v53;
  v41 = v59;
  sub_1004D92CC();
  (*(v37 + 8))(v36, v9);
  v42 = *(v61 + 8);
  v42(v41, v33);
  v43 = v54;
  sub_1004D92FC();
  v42(v40, v33);
  sub_100004CB8(&qword_1006406E8, &qword_10052C880);
  sub_100338428();
  sub_1004D92DC();
  v42(v43, v33);
  return (v42)(v60, v33);
}

uint64_t sub_10032C0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  __chkstk_darwin();
  v57 = &v45 - v8;
  v9 = sub_1004DCC0C();
  v58 = *(v9 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v18 = sub_1004D934C();
  v61 = *(v18 - 8);
  __chkstk_darwin();
  v59 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v45 - v20;
  __chkstk_darwin();
  v54 = &v45 - v21;
  __chkstk_darwin();
  v23 = &v45 - v22;
  __chkstk_darwin();
  v60 = &v45 - v24;
  v52 = a1;
  sub_1000108DC(a1, v13, &qword_100642C70, &qword_100527540);
  v25 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v25 - 8) + 48);
  v26 = v46(v13, 1, v25);
  v55 = v18;
  if (v26 == 1)
  {
    sub_10001074C(v13, &qword_100642C70, &qword_100527540);
    v27 = sub_1004DCC9C();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = sub_1004DCC9C();
    v29 = *(v28 - 8);
    v45 = v9;
    v30 = v29;
    (*(v29 + 16))(v17, v13, v28);
    sub_100336880(v13, type metadata accessor for ArtworkImage.ViewModel);
    (*(v30 + 56))(v17, 0, 1, v28);
    v9 = v45;
  }

  v31 = *(a4 + 8);
  v32 = *(a4 + 24);
  sub_1000108DC(v17, v15, &unk_100642930, &unk_1005294A0);
  if (v31)
  {
    if (v32)
    {
      sub_1004D933C();
    }

    else
    {
      sub_1004D932C();
    }
  }

  else if (v32)
  {
    sub_1004D931C();
  }

  else
  {
    sub_1004D930C();
  }

  v33 = v55;
  sub_10001074C(v17, &unk_100642930, &unk_1005294A0);
  (*(v61 + 32))(v60, v23, v33);
  sub_1004D92EC();
  v34 = v47;
  sub_1000108DC(v52, v47, &qword_100642C70, &qword_100527540);
  v35 = v46(v34, 1, v25);
  v36 = v56;
  if (v35 == 1)
  {
    sub_10001074C(v34, &qword_100642C70, &qword_100527540);
    v38 = v57;
    v37 = v58;
    (*(v58 + 56))(v57, 1, 1, v9);
  }

  else
  {
    v38 = v57;
    sub_1000108DC(v34 + *(v25 + 20), v57, &qword_100641A60, &qword_10052C450);
    sub_100336880(v34, type metadata accessor for ArtworkImage.ViewModel);
    v37 = v58;
    if ((*(v58 + 48))(v38, 1, v9) != 1)
    {
      (*(v37 + 32))(v36, v38, v9);
      goto LABEL_19;
    }
  }

  if (qword_10063D958 != -1)
  {
    swift_once();
  }

  v39 = sub_100035430(v9, static Artwork.CropStyle.fallback);
  (*(v37 + 16))(v36, v39, v9);
  if ((*(v37 + 48))(v38, 1, v9) != 1)
  {
    sub_10001074C(v38, &qword_100641A60, &qword_10052C450);
  }

LABEL_19:
  v40 = v53;
  v41 = v59;
  sub_1004D92CC();
  (*(v37 + 8))(v36, v9);
  v42 = *(v61 + 8);
  v42(v41, v33);
  v43 = v54;
  sub_1004D92FC();
  v42(v40, v33);
  sub_1003386E4();
  sub_1004D92DC();
  v42(v43, v33);
  return (v42)(v60, v33);
}

uint64_t static ArtworkImage.with<A>(_:placeholderViewBuilder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v65 = a5;
  v80 = a4;
  v77 = a2;
  v78 = a3;
  v67 = a8;
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  __chkstk_darwin();
  v70 = v59 - v11;
  v12 = sub_1004DCC0C();
  v71 = *(v12 - 8);
  v72 = v12;
  __chkstk_darwin();
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a6;
  v81 = a6;
  v82 = a7;
  v66 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  v76 = OpaqueTypeMetadata2;
  __chkstk_darwin();
  v73 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = v59 - v17;
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v61 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v59 - v19;
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v59 - v23;
  v68 = sub_1004D934C();
  v25 = *(v68 - 8);
  __chkstk_darwin();
  v27 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = v59 - v28;
  __chkstk_darwin();
  v64 = v59 - v29;
  __chkstk_darwin();
  v31 = v59 - v30;
  __chkstk_darwin();
  v33 = v59 - v32;
  v62 = a1;
  sub_1000108DC(a1, v20, &qword_100642C70, &qword_100527540);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v35 = *(v34 - 8);
  v60 = *(v35 + 48);
  v59[1] = v35 + 48;
  v36 = v60(v20, 1, v34);
  v69 = v14;
  if (v36 == 1)
  {
    sub_10001074C(v20, &qword_100642C70, &qword_100527540);
    v37 = sub_1004DCC9C();
    (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  }

  else
  {
    v38 = sub_1004DCC9C();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v24, v20, v38);
    sub_100336880(v20, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v24, 0, 1, v38);
  }

  v40 = *(v80 + 8);
  v41 = *(v80 + 24);
  sub_1000108DC(v24, v22, &unk_100642930, &unk_1005294A0);
  if (v40)
  {
    if (v41)
    {
      sub_1004D933C();
    }

    else
    {
      sub_1004D932C();
    }
  }

  else if (v41)
  {
    sub_1004D931C();
  }

  else
  {
    sub_1004D930C();
  }

  v42 = v69;
  sub_10001074C(v24, &unk_100642930, &unk_1005294A0);
  v43 = v68;
  (*(v25 + 32))(v33, v31, v68);
  sub_1004D92EC();
  v44 = v61;
  sub_1000108DC(v62, v61, &qword_100642C70, &qword_100527540);
  if (v60(v44, 1, v34) == 1)
  {
    sub_10001074C(v44, &qword_100642C70, &qword_100527540);
    v45 = v70;
    v46 = v71;
    v47 = v72;
    (*(v71 + 56))(v70, 1, 1, v72);
  }

  else
  {
    v45 = v70;
    sub_1000108DC(v44 + *(v34 + 20), v70, &qword_100641A60, &qword_10052C450);
    sub_100336880(v44, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v71;
    v47 = v72;
    if ((*(v71 + 48))(v45, 1, v72) != 1)
    {
      (*(v46 + 32))(v42, v45, v47);
      goto LABEL_19;
    }
  }

  if (qword_10063D958 != -1)
  {
    swift_once();
  }

  v48 = sub_100035430(v47, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v42, v48, v47);
  if ((*(v46 + 48))(v45, 1, v47) != 1)
  {
    sub_10001074C(v45, &qword_100641A60, &qword_10052C450);
  }

LABEL_19:
  v49 = v63;
  sub_1004D92CC();
  (*(v46 + 8))(v42, v47);
  v50 = *(v25 + 8);
  v50(v27, v43);
  v51 = v64;
  sub_1004D92FC();
  v50(v49, v43);
  v52 = v73;
  sub_1004D92DC();
  v50(v51, v43);
  v50(v33, v43);
  v54 = v74;
  v53 = v75;
  v55 = *(v75 + 16);
  v56 = v76;
  v55(v74, v52, v76);
  v57 = *(v53 + 8);
  v57(v52, v56);
  v55(v67, v54, v56);
  return (v57)(v54, v56);
}

double static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_10032C0F8(a1, sub_100336778, v12, a4, a5, a6);

  return result;
}

double sub_10032D290@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t ArtworkImage.Placeholder.view(availableSize:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>)
{
  v4 = a2.n128_u64[0];
  v6 = sub_10032D3B4();
  v8 = v7;
  sub_10032D3B4();
  v10 = v9;

  sub_10032D3B4();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8, &qword_100527500);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0, &unk_10052C4C0);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v4;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = sub_100004CB8(&unk_100641AB0, &unk_10052E8A0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10032D3B4()
{
  v1 = v0;
  v2 = sub_1004DCEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v23 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003368E0(v1, v13, type metadata accessor for ArtworkImage.Placeholder);
  v14 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
  v15 = (*(*(v14 - 8) + 48))(v13, 11, v14);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v16 = 0x6F69646172;
        sub_1004DB05C();
        return v16;
      }

      if (v15 != 10)
      {
        sub_1004DB04C();
        return 0xD000000000000013;
      }

      v16 = 0x73726174697567;
      goto LABEL_5;
    }

    if (v15 == 6)
    {
      v16 = 30324;
      sub_1004DB05C();
      return v16;
    }

    if (v15 == 7)
    {
      sub_1004DB05C();
      return 0x696D2E636973756DLL;
    }

    v16 = 0x662E6E6F73726570;
LABEL_24:
    sub_1004DB05C();
    return v16;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v16 = 0xD000000000000011;
      sub_1004DB04C();
      return v16;
    }

    if (v15 == 4)
    {
      v16 = 1937075312;
      sub_1004DB04C();
      return v16;
    }

    v16 = 0x6F6E2E636973756DLL;
    goto LABEL_24;
  }

  if (v15)
  {
    v16 = 0x636973756DLL;
LABEL_5:
    sub_1004DB04C();
    return v16;
  }

  sub_100047F38(v13, v11, &qword_10063E508, &qword_1005291A0);
  sub_1000108DC(v11, v9, &qword_10063E508, &qword_1005291A0);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) == 1)
  {
    (*(v3 + 104))(v7, enum case for Playlist.Variant.regular(_:), v2);
    if (v17(v9, 1, v2) != 1)
    {
      sub_10001074C(v9, &qword_10063E508, &qword_1005291A0);
    }
  }

  else
  {
    (*(v3 + 32))(v7, v9, v2);
  }

  (*(v3 + 16))(v5, v7, v2);
  v18 = (*(v3 + 88))(v5, v2);
  if (v18 == enum case for Playlist.Variant.smart(_:))
  {
    (*(v3 + 8))(v7, v2);
    v16 = 0x7061687372616567;
  }

  else if (v18 == enum case for Playlist.Variant.genius(_:))
  {
    (*(v3 + 8))(v7, v2);
    v16 = 0x7375696E6567;
  }

  else
  {
    v19 = enum case for Playlist.Variant.folder(_:);
    v20 = *(v3 + 8);
    v21 = v18;
    v20(v7, v2);
    if (v21 == v19)
    {
      v16 = 0x7265646C6F66;
    }

    else
    {
      v16 = 0x6F6E2E636973756DLL;
      v20(v5, v2);
    }
  }

  sub_1004DB04C();
  sub_10001074C(v11, &qword_10063E508, &qword_1005291A0);
  return v16;
}

uint64_t ArtworkImage.Placeholder.View.init(name:weight:availableSize:scaleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v10 = a4.n128_u64[0];
  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a3 + v15) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8, &qword_100527500);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a3 + v16) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0, &unk_10052C4C0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v10;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

double sub_10032DA90@<D0>(uint64_t *a2@<X8>)
{
  sub_1004D9FFC();
  v4 = v3;
  v6 = v5;
  v7 = sub_10032D3B4();
  v9 = v8;
  sub_10032D3B4();
  v11 = v10;

  sub_10032D3B4();
  v13 = v12;

  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a2 + v15) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8, &qword_100527500);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a2 + v16) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0, &unk_10052C4C0);
  swift_storeEnumTagMultiPayload();
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = v13;
  *(a2 + *(sub_100004CB8(&unk_100641AB0, &unk_10052E8A0) + 36)) = 0;
  sub_1004DBD1C();
  sub_1004D9F5C();
  v17 = (a2 + *(sub_100004CB8(&unk_100641AA0, &qword_10052C888) + 36));
  *v17 = v19;
  v17[1] = v20;
  result = *&v21;
  v17[2] = v21;
  return result;
}

uint64_t EnvironmentValues.placeholderStyle.getter()
{
  sub_10033680C();

  return sub_1004DA75C();
}

uint64_t sub_10032DCAC(uint64_t a1)
{
  sub_100004CB8(&qword_100640150, &unk_10052C4D0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1000108DC(a1, &v7 - v4, &qword_100640150, &unk_10052C4D0);
  sub_1000108DC(v5, v3, &qword_100640150, &unk_10052C4D0);
  sub_10033680C();
  sub_1004DA76C();
  return sub_10001074C(v5, &qword_100640150, &unk_10052C4D0);
}

uint64_t EnvironmentValues.placeholderStyle.setter(uint64_t a1)
{
  sub_100004CB8(&qword_100640150, &unk_10052C4D0);
  __chkstk_darwin();
  sub_1000108DC(a1, &v4 - v2, &qword_100640150, &unk_10052C4D0);
  sub_10033680C();
  sub_1004DA76C();
  return sub_10001074C(a1, &qword_100640150, &unk_10052C4D0);
}

uint64_t ArtworkImage.Placeholder.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004DA8BC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100640150, &unk_10052C4D0);
  __chkstk_darwin();
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v33 - v9;
  v33[3] = type metadata accessor for ArtworkImage.Placeholder.View(0);
  sub_10032A6F4(v10);
  v11 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_10001074C(v10, &qword_100640150, &unk_10052C4D0);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  else
  {
    sub_1000108DC((v10 + 40), &v36, &qword_100641D90, &unk_10052ED50);
    sub_100336880(v10, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    if (*(&v37 + 1))
    {
      sub_100035850(&v36, v39);
      v33[2] = v41;
      sub_100008C70(v39, v40);
      v33[1] = v33;
      v13 = __chkstk_darwin();
      (*(v15 + 16))(v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
      v16 = sub_1004D9F6C();
      sub_100008D24(v39);
      goto LABEL_6;
    }
  }

  sub_10001074C(&v36, &qword_100641D90, &unk_10052ED50);
  sub_10032A4F4(&unk_10063DBC0, &unk_10052C4C0, &type metadata accessor for ColorSchemeContrast, v6);
  v17 = [objc_opt_self() secondarySystemFillColor];
  v18 = sub_1004DB8CC();
  (*(v34 + 8))(v6, v35);
  v39[0] = v18;
  v16 = sub_1004D9F6C();
LABEL_6:
  sub_10032A6F4(v8);
  if (v12(v8, 1, v11) == 1)
  {
    sub_10001074C(v8, &qword_100640150, &unk_10052C4D0);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
LABEL_10:
    sub_10001074C(&v36, &qword_100641D90, &unk_10052ED50);
    sub_10032A4F4(&unk_10063DBC0, &unk_10052C4C0, &type metadata accessor for ColorSchemeContrast, v6);
    v23 = [objc_opt_self() tertiaryLabelColor];
    v24 = sub_1004DB8CC();
    (*(v34 + 8))(v6, v35);
    v39[0] = v24;
    v22 = sub_1004D9F6C();
    goto LABEL_11;
  }

  sub_1000108DC(v8, &v36, &qword_100641D90, &unk_10052ED50);
  sub_100336880(v8, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if (!*(&v37 + 1))
  {
    goto LABEL_10;
  }

  sub_100035850(&v36, v39);
  sub_100008C70(v39, v40);
  v19 = __chkstk_darwin();
  (*(v21 + 16))(v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = sub_1004D9F6C();
  sub_100008D24(v39);
LABEL_11:
  v25 = sub_1004DB85C();
  v26 = sub_1004DAF2C();

  v27 = sub_1004DBD1C();
  v29 = v28;
  v30 = a1 + *(sub_100004CB8(&qword_100640158, &qword_10052C4E0) + 36);
  sub_10032E4C4(v2, v22, v30);

  result = sub_100004CB8(&qword_100640160, &qword_10052C4E8);
  v32 = (v30 + *(result + 36));
  *v32 = v27;
  v32[1] = v29;
  *a1 = v25;
  *(a1 + 8) = v16;
  *(a1 + 16) = v26;
  return result;
}

uint64_t sub_10032E4C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  sub_100004CB8(&qword_100640150, &unk_10052C4D0);
  __chkstk_darwin();
  v39 = v36 - v6;
  sub_100004CB8(&qword_100640168, &qword_10052C4F0);
  __chkstk_darwin();
  v43 = v36 - v7;
  v8 = sub_1004DBDAC();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin();
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641CB0, &qword_10052D350);
  __chkstk_darwin();
  v11 = v36 - v10;
  v12 = sub_100004CB8(&qword_100640840, &qword_10052D358);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  __chkstk_darwin();
  v15 = v36 - v14;
  sub_100004CB8(&qword_100640848, &qword_10052D360);
  __chkstk_darwin();
  v17 = v36 - v16;
  v36[1] = a1;

  v18 = sub_1004DB90C();
  v19 = sub_1004DB02C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);

  v20 = sub_1004DB07C();
  sub_10001074C(v11, &qword_100641CB0, &qword_10052D350);
  KeyPath = swift_getKeyPath();
  v45 = v18;
  v46 = a2;
  v47 = KeyPath;
  v48 = v20;
  v22 = sub_100004CB8(&qword_100640850, &qword_10052D398);
  v23 = sub_1003399C0();
  sub_1004DB3AC();

  v45 = v22;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v37;
  sub_1004DB44C();
  (*(v38 + 8))(v15, v24);
  type metadata accessor for ArtworkImage.Placeholder.View(0);
  v25 = v39;
  sub_10032A6F4(v39);
  v26 = v25;
  v27 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    sub_10001074C(v26, &qword_100640150, &unk_10052C4D0);
    v29 = v40;
    v28 = v41;
    v30 = v43;
    (*(v40 + 56))(v43, 1, 1, v41);
  }

  else
  {
    v31 = v26 + *(v27 + 24);
    v30 = v43;
    sub_1000108DC(v31, v43, &qword_100640168, &qword_10052C4F0);
    sub_100336880(v26, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v29 = v40;
    v28 = v41;
    if ((*(v40 + 48))(v30, 1, v41) != 1)
    {
      v32 = v42;
      (*(v29 + 32))(v42, v30, v28);
      goto LABEL_7;
    }
  }

  v32 = v42;
  (*(v29 + 104))(v42, enum case for BlendMode.normal(_:), v28);
  if ((*(v29 + 48))(v30, 1, v28) != 1)
  {
    sub_10001074C(v30, &qword_100640168, &qword_10052C4F0);
  }

LABEL_7:
  v33 = sub_100004CB8(&qword_100640880, &qword_10052D3B8);
  v34 = v44;
  (*(v29 + 32))(v44 + *(v33 + 36), v32, v28);
  return sub_100339B30(v17, v34);
}

uint64_t ArtworkImage.Placeholder.View.Style.init(foreground:background:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  v9 = *(v8 + 24);
  v10 = sub_1004DBDAC();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  sub_1000107AC(a1, a4, &qword_100641D90, &unk_10052ED50);
  sub_1000107AC(a2, (a4 + 40), &qword_100641D90, &unk_10052ED50);
  return sub_1000107AC(a3, &a4[v9], &qword_100640168, &qword_10052C4F0);
}

uint64_t sub_10032ED64()
{
  sub_100004CB8(&qword_100640168, &qword_10052C4F0);
  __chkstk_darwin();
  v1 = v10 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100035718(v2, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  v3 = sub_100035430(v2, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  sub_1004DB87C();
  v4 = sub_1004DB88C();

  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v4;
  sub_1004DB84C();
  v5 = sub_1004DB88C();

  v10[3] = &type metadata for Color;
  v10[4] = &protocol witness table for Color;
  v10[0] = v5;
  v6 = sub_1004DBDAC();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v8 = *(v2 + 24);
  v7(&v3[v8], 1, 1, v6);
  sub_1000107AC(v11, v3, &qword_100641D90, &unk_10052ED50);
  sub_1000107AC(v10, (v3 + 40), &qword_100641D90, &unk_10052ED50);
  return sub_1000107AC(v1, &v3[v8], &qword_100640168, &qword_10052C4F0);
}

uint64_t sub_10032EFA4()
{
  sub_100004CB8(&qword_100640168, &qword_10052C4F0);
  __chkstk_darwin();
  v1 = v13 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100035718(v2, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v3 = sub_100035430(v2, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v4 = objc_opt_self();
  v5 = [v4 quaternaryLabelColor];
  v6 = sub_1004DB8CC();
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v6;
  v7 = [v4 tertiarySystemFillColor];
  v8 = sub_1004DB8CC();
  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v8;
  v9 = sub_1004DBDAC();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v11 = *(v2 + 24);
  v10(&v3[v11], 1, 1, v9);
  sub_1000107AC(v14, v3, &qword_100641D90, &unk_10052ED50);
  sub_1000107AC(v13, (v3 + 40), &qword_100641D90, &unk_10052ED50);
  return sub_1000107AC(v1, &v3[v11], &qword_100640168, &qword_10052C4F0);
}

uint64_t sub_10032F1E8()
{
  sub_100004CB8(&qword_100640168, &qword_10052C4F0);
  __chkstk_darwin();
  v1 = v12 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100035718(v2, static ArtworkImage.Placeholder.View.Style.widgets);
  v3 = sub_100035430(v2, static ArtworkImage.Placeholder.View.Style.widgets);
  sub_1004DB87C();
  v4 = sub_1004DB88C();

  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v4;
  sub_1004DB87C();
  v5 = sub_1004DB88C();

  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  v6 = enum case for BlendMode.plusLighter(_:);
  v7 = sub_1004DBDAC();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v1, v6, v7);
  v9 = *(v8 + 56);
  v9(v1, 0, 1, v7);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v10 = *(v2 + 24);
  v9(&v3[v10], 1, 1, v7);
  sub_1000107AC(v13, v3, &qword_100641D90, &unk_10052ED50);
  sub_1000107AC(v12, (v3 + 40), &qword_100641D90, &unk_10052ED50);
  return sub_1000107AC(v1, &v3[v10], &qword_100640168, &qword_10052C4F0);
}

uint64_t sub_10032F460()
{
  sub_100004CB8(&qword_100640168, &qword_10052C4F0);
  __chkstk_darwin();
  v1 = v9 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100035718(v2, static ArtworkImage.Placeholder.View.Style.accentuated);
  v3 = sub_100035430(v2, static ArtworkImage.Placeholder.View.Style.accentuated);
  v4 = sub_1004DB7FC();
  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v4;
  v5 = sub_1004DBDAC();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v7 = *(v2 + 24);
  v6(&v3[v7], 1, 1, v5);
  sub_1000107AC(v11, v3, &qword_100641D90, &unk_10052ED50);
  sub_1000107AC(v9, (v3 + 40), &qword_100641D90, &unk_10052ED50);
  return sub_1000107AC(v1, &v3[v7], &qword_100640168, &qword_10052C4F0);
}

uint64_t sub_10032F668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v7 = sub_100035430(v6, a2);
  return sub_1003368E0(v7, a4, type metadata accessor for ArtworkImage.Placeholder.View.Style);
}

uint64_t sub_10032F6D0@<X0>(char *a1@<X8>)
{
  sub_100004CB8(&qword_100640168, &qword_10052C4F0);
  __chkstk_darwin();
  v3 = v13 - v2;
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v4 = objc_opt_self();
  v5 = [v4 tertiaryLabelColor];
  v6 = sub_1004DB8CC();
  v13[4] = &protocol witness table for Color;
  v14[0] = v6;
  v13[3] = &type metadata for Color;
  v7 = [v4 secondarySystemFillColor];
  v13[0] = sub_1004DB8CC();
  v8 = sub_1004DBDAC();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v11 = *(v10 + 24);
  v9(&a1[v11], 1, 1, v8);
  sub_1000107AC(v14, a1, &qword_100641D90, &unk_10052ED50);
  sub_1000107AC(v13, (a1 + 40), &qword_100641D90, &unk_10052ED50);
  return sub_1000107AC(v3, &a1[v11], &qword_100640168, &qword_10052C4F0);
}

uint64_t sub_10032F890(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F69646172;
    v7 = 0x65726E6567;
    if (a1 != 10)
    {
      v7 = 0x7265736F706D6F63;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 30324;
    v9 = 0x6F68706F7263696DLL;
    if (a1 != 7)
    {
      v9 = 0x6E6F73726570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636973756DLL;
    v2 = 0x6C79616C5077656ELL;
    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x646956636973756DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6979616C50776F6ELL;
    if (a1 != 1)
    {
      v4 = 0x65646C6F4677656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10032FA10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003395F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10032FA44(uint64_t a1)
{
  v2 = sub_100336948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FA80(uint64_t a1)
{
  v2 = sub_100336948();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FABC(uint64_t a1)
{
  v2 = sub_10033699C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FAF8(uint64_t a1)
{
  v2 = sub_10033699C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FB64(uint64_t a1)
{
  v2 = sub_1003369F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FBA0(uint64_t a1)
{
  v2 = sub_1003369F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FBDC(uint64_t a1)
{
  v2 = sub_100336AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FC18(uint64_t a1)
{
  v2 = sub_100336AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FC54(uint64_t a1)
{
  v2 = sub_100336D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FC90(uint64_t a1)
{
  v2 = sub_100336D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FCCC(uint64_t a1)
{
  v2 = sub_100336B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FD08(uint64_t a1)
{
  v2 = sub_100336B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FD44(uint64_t a1)
{
  v2 = sub_100336C90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FD80(uint64_t a1)
{
  v2 = sub_100336C90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FDBC(uint64_t a1)
{
  v2 = sub_100336C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FDF8(uint64_t a1)
{
  v2 = sub_100336C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FE34(uint64_t a1)
{
  v2 = sub_100336CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FE70(uint64_t a1)
{
  v2 = sub_100336CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FEAC(uint64_t a1)
{
  v2 = sub_100336A98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FEE8(uint64_t a1)
{
  v2 = sub_100336A98();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10032FF34(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1004DF08C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10032FFBC(uint64_t a1)
{
  v2 = sub_100336BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FFF8(uint64_t a1)
{
  v2 = sub_100336BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100330034(uint64_t a1)
{
  v2 = sub_100336A44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100330070(uint64_t a1)
{
  v2 = sub_100336A44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003300AC(uint64_t a1)
{
  v2 = sub_100336B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003300E8(uint64_t a1)
{
  v2 = sub_100336B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArtworkImage.Placeholder.encode(to:)(void *a1)
{
  v2 = sub_100004CB8(&qword_100640170, &qword_10052C4F8);
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin();
  v81 = &v51 - v3;
  v4 = sub_100004CB8(&qword_100640178, &qword_10052C500);
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin();
  v78 = &v51 - v5;
  v6 = sub_100004CB8(&qword_100640180, &qword_10052C508);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin();
  v75 = &v51 - v7;
  v8 = sub_100004CB8(&qword_100640188, &qword_10052C510);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin();
  v72 = &v51 - v9;
  v10 = sub_100004CB8(&qword_100640190, &qword_10052C518);
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin();
  v69 = &v51 - v11;
  v68 = sub_100004CB8(&qword_100640198, &qword_10052C520);
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v64 = &v51 - v12;
  v63 = sub_100004CB8(&qword_1006401A0, &qword_10052C528);
  v61 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v51 - v13;
  v66 = sub_100004CB8(&qword_1006401A8, &unk_10052C530);
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v62 = &v51 - v14;
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v59 = &v51 - v15;
  v58 = sub_100004CB8(&qword_1006401B0, &qword_10052C540);
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v51 - v16;
  v55 = sub_100004CB8(&qword_1006401B8, &qword_10052C548);
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v18 = &v51 - v17;
  v53 = sub_100004CB8(&qword_1006401C0, &qword_10052C550);
  v52 = *(v53 - 8);
  __chkstk_darwin();
  v20 = &v51 - v19;
  v21 = sub_100004CB8(&qword_1006401C8, &qword_10052C558);
  v51 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v51 - v22;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100004CB8(&qword_1006401D0, &qword_10052C560);
  v27 = *(v26 - 8);
  v86 = v26;
  v87 = v27;
  __chkstk_darwin();
  v29 = &v51 - v28;
  sub_100008C70(a1, a1[3]);
  sub_100336948();
  v85 = v29;
  sub_1004DF30C();
  sub_1003368E0(v84, v25, type metadata accessor for ArtworkImage.Placeholder);
  v30 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
  v31 = (*(*(v30 - 8) + 48))(v25, 11, v30);
  if (v31 <= 5)
  {
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v90 = 2;
        sub_100336C90();
        v37 = v85;
        v36 = v86;
        sub_1004DEEEC();
        v41 = *(v54 + 8);
        v42 = v18;
        v43 = &v87;
      }

      else if (v31 == 4)
      {
        v91 = 3;
        sub_100336C3C();
        v40 = v56;
        v37 = v85;
        v36 = v86;
        sub_1004DEEEC();
        v41 = *(v57 + 8);
        v42 = v40;
        v43 = v92;
      }

      else
      {
        v92[17] = 5;
        sub_100336B94();
        v50 = v60;
        v37 = v85;
        v36 = v86;
        sub_1004DEEEC();
        v41 = *(v61 + 8);
        v42 = v50;
        v43 = &v93;
      }
    }

    else
    {
      if (!v31)
      {
        v44 = v59;
        sub_100047F38(v25, v59, &qword_10063E508, &qword_1005291A0);
        v92[16] = 4;
        sub_100336BE8();
        v45 = v62;
        v47 = v85;
        v46 = v86;
        sub_1004DEEEC();
        sub_1004DCEEC();
        sub_100336D8C(&qword_100640220, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v48 = v66;
        sub_1004DEF0C();
        (*(v65 + 8))(v45, v48);
        sub_10001074C(v44, &qword_10063E508, &qword_1005291A0);
        return (*(v87 + 8))(v47, v46);
      }

      if (v31 == 1)
      {
        v88 = 0;
        sub_100336D38();
        v32 = v85;
        v33 = v86;
        sub_1004DEEEC();
        (*(v51 + 8))(v23, v21);
        return (*(v87 + 8))(v32, v33);
      }

      v89 = 1;
      sub_100336CE4();
      v37 = v85;
      v36 = v86;
      sub_1004DEEEC();
      v41 = *(v52 + 8);
      v42 = v20;
      v43 = &v85;
    }

    goto LABEL_23;
  }

  if (v31 > 8)
  {
    if (v31 == 9)
    {
      v92[21] = 9;
      sub_100336A44();
      v35 = v75;
      v37 = v85;
      v36 = v86;
      sub_1004DEEEC();
      v39 = v76;
      v38 = v77;
    }

    else if (v31 == 10)
    {
      v92[22] = 10;
      sub_1003369F0();
      v35 = v78;
      v37 = v85;
      v36 = v86;
      sub_1004DEEEC();
      v39 = v79;
      v38 = v80;
    }

    else
    {
      v92[23] = 11;
      sub_10033699C();
      v35 = v81;
      v37 = v85;
      v36 = v86;
      sub_1004DEEEC();
      v39 = v82;
      v38 = v83;
    }

    goto LABEL_25;
  }

  if (v31 != 6)
  {
    if (v31 == 7)
    {
      v92[19] = 7;
      sub_100336AEC();
      v35 = v69;
      v37 = v85;
      v36 = v86;
      sub_1004DEEEC();
      v39 = v70;
      v38 = v71;
    }

    else
    {
      v92[20] = 8;
      sub_100336A98();
      v35 = v72;
      v37 = v85;
      v36 = v86;
      sub_1004DEEEC();
      v39 = v73;
      v38 = v74;
    }

LABEL_25:
    v41 = *(v39 + 8);
    v42 = v35;
    goto LABEL_26;
  }

  v92[18] = 6;
  sub_100336B40();
  v49 = v64;
  v37 = v85;
  v36 = v86;
  sub_1004DEEEC();
  v41 = *(v67 + 8);
  v42 = v49;
  v43 = &v94;
LABEL_23:
  v38 = *(v43 - 32);
LABEL_26:
  v41(v42, v38);
  return (*(v87 + 8))(v37, v36);
}

void ArtworkImage.Placeholder.hash(into:)(uint64_t a1)
{
  v2 = sub_1004DCEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003368E0(v1, v11, type metadata accessor for ArtworkImage.Placeholder);
  v12 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
  v13 = (*(*(v12 - 8) + 48))(v11, 11, v12);
  if (v13 > 5)
  {
    if (v13 > 8)
    {
      if (v13 == 9)
      {
        v14 = 9;
      }

      else if (v13 == 10)
      {
        v14 = 10;
      }

      else
      {
        v14 = 11;
      }
    }

    else if (v13 == 6)
    {
      v14 = 6;
    }

    else if (v13 == 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    goto LABEL_23;
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = 2;
    }

    else if (v13 == 4)
    {
      v14 = 3;
    }

    else
    {
      v14 = 5;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    v14 = v13 != 1;
LABEL_23:
    sub_1004DF27C(v14);
    return;
  }

  sub_100047F38(v11, v9, &qword_10063E508, &qword_1005291A0);
  sub_1004DF27C(4uLL);
  sub_1000108DC(v9, v7, &qword_10063E508, &qword_1005291A0);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    sub_1004DF28C(1u);
    sub_100336D8C(&qword_100640248, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
    sub_1004DD2BC();
    (*(v3 + 8))(v5, v2);
  }

  sub_10001074C(v9, &qword_10063E508, &qword_1005291A0);
}

Swift::Int ArtworkImage.Placeholder.hashValue.getter()
{
  sub_1004DF26C();
  ArtworkImage.Placeholder.hash(into:)(v1);
  return sub_1004DF2BC();
}

uint64_t ArtworkImage.Placeholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = sub_100004CB8(&qword_100640250, &qword_10052C568);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v99 = &v67 - v4;
  v5 = sub_100004CB8(&qword_100640258, &qword_10052C570);
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin();
  v100 = &v67 - v6;
  v87 = sub_100004CB8(&qword_100640260, &qword_10052C578);
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v103 = &v67 - v7;
  v85 = sub_100004CB8(&qword_100640268, &qword_10052C580);
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v98 = &v67 - v8;
  v83 = sub_100004CB8(&qword_100640270, &qword_10052C588);
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v97 = &v67 - v9;
  v81 = sub_100004CB8(&qword_100640278, &qword_10052C590);
  v79 = *(v81 - 8);
  __chkstk_darwin();
  v96 = &v67 - v10;
  v77 = sub_100004CB8(&qword_100640280, &qword_10052C598);
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v94 = &v67 - v11;
  v80 = sub_100004CB8(&qword_100640288, &qword_10052C5A0);
  v78 = *(v80 - 8);
  __chkstk_darwin();
  v95 = &v67 - v12;
  v74 = sub_100004CB8(&qword_100640290, &qword_10052C5A8);
  v75 = *(v74 - 8);
  __chkstk_darwin();
  v102 = &v67 - v13;
  v73 = sub_100004CB8(&qword_100640298, &qword_10052C5B0);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v93 = &v67 - v14;
  v71 = sub_100004CB8(&qword_1006402A0, &qword_10052C5B8);
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v92 = &v67 - v15;
  v69 = sub_100004CB8(&qword_1006402A8, &qword_10052C5C0);
  v68 = *(v69 - 8);
  __chkstk_darwin();
  v17 = &v67 - v16;
  v18 = sub_100004CB8(&qword_1006402B0, &qword_10052C5C8);
  v104 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v67 - v19;
  v21 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v67 - v24;
  v26 = a1[3];
  v106 = a1;
  sub_100008C70(a1, v26);
  sub_100336948();
  v27 = v105;
  sub_1004DF2FC();
  if (!v27)
  {
    v67 = v23;
    v29 = v102;
    v28 = v103;
    v105 = v25;
    v30 = sub_1004DEEDC();
    if (*(v30 + 16) == 1)
    {
      v31 = *(v30 + 32);
      if (v31 != 12)
      {
        if (*(v30 + 32) > 5u)
        {
          v40 = v104;
          if (*(v30 + 32) > 8u)
          {
            v32 = v101;
            if (v31 == 9)
            {
              v116 = 9;
              sub_100336A44();
              sub_1004DEE4C();
              (*(v86 + 8))(v28, v87);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v53 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
              v36 = v105;
              (*(*(v53 - 8) + 56))(v105, 9, 11, v53);
            }

            else if (v31 == 10)
            {
              v117 = 10;
              sub_1003369F0();
              v47 = v100;
              sub_1004DEE4C();
              (*(v88 + 8))(v47, v89);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v48 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
              v36 = v105;
              (*(*(v48 - 8) + 56))(v105, 10, 11, v48);
            }

            else
            {
              v59 = v101;
              v118 = 11;
              sub_10033699C();
              v60 = v99;
              sub_1004DEE4C();
              (*(v90 + 8))(v60, v91);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v65 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
              v36 = v105;
              (*(*(v65 - 8) + 56))(v105, 11, 11, v65);
              v32 = v59;
            }
          }

          else
          {
            v32 = v101;
            if (v31 == 6)
            {
              v113 = 6;
              sub_100336B40();
              v49 = v96;
              sub_1004DEE4C();
              (*(v79 + 8))(v49, v81);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v50 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
              v36 = v105;
              (*(*(v50 - 8) + 56))(v105, 6, 11, v50);
            }

            else if (v31 == 7)
            {
              v114 = 7;
              sub_100336AEC();
              v41 = v97;
              sub_1004DEE4C();
              (*(v82 + 8))(v41, v83);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v42 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
              v36 = v105;
              (*(*(v42 - 8) + 56))(v105, 7, 11, v42);
            }

            else
            {
              v115 = 8;
              sub_100336A98();
              v56 = v98;
              sub_1004DEE4C();
              (*(v84 + 8))(v56, v85);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v57 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
              v36 = v105;
              (*(*(v57 - 8) + 56))(v105, 8, 11, v57);
            }
          }

          goto LABEL_29;
        }

        if (*(v30 + 32) <= 2u)
        {
          v32 = v101;
          if (*(v30 + 32))
          {
            if (v31 == 1)
            {
              v108 = 1;
              sub_100336CE4();
              v33 = v92;
              sub_1004DEE4C();
              v34 = v104;
              (*(v70 + 8))(v33, v71);
              (*(v34 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v35 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
              v36 = v105;
              (*(*(v35 - 8) + 56))(v105, 2, 11, v35);
            }

            else
            {
              v109 = 2;
              sub_100336C90();
              v54 = v93;
              sub_1004DEE4C();
              v55 = v104;
              (*(v72 + 8))(v54, v73);
              (*(v55 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v63 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
              v36 = v105;
              (*(*(v63 - 8) + 56))(v105, 3, 11, v63);
            }
          }

          else
          {
            v107 = 0;
            sub_100336D38();
            sub_1004DEE4C();
            (*(v68 + 8))(v17, v69);
            (*(v104 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v62 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
            v36 = v105;
            (*(*(v62 - 8) + 56))(v105, 1, 11, v62);
          }

          goto LABEL_29;
        }

        if (v31 == 3)
        {
          v110 = 3;
          sub_100336C3C();
          sub_1004DEE4C();
          v51 = v104;
          (*(v75 + 8))(v29, v74);
          (*(v51 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v52 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
          v36 = v105;
          (*(*(v52 - 8) + 56))(v105, 4, 11, v52);
        }

        else
        {
          v43 = v104;
          if (v31 == 4)
          {
            v111 = 4;
            sub_100336BE8();
            v44 = v95;
            sub_1004DEE4C();
            sub_1004DCEEC();
            sub_100336D8C(&qword_1006402C0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
            v45 = v67;
            v46 = v80;
            sub_1004DEE7C();
            (*(v78 + 8))(v44, v46);
            (*(v43 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v66 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
            (*(*(v66 - 8) + 56))(v45, 0, 11, v66);
            v36 = v105;
            sub_100336DD4(v45, v105, type metadata accessor for ArtworkImage.Placeholder);
            v32 = v101;
LABEL_29:
            sub_100336DD4(v36, v32, type metadata accessor for ArtworkImage.Placeholder);
            return sub_100008D24(v106);
          }

          v112 = 5;
          sub_100336B94();
          v58 = v94;
          sub_1004DEE4C();
          (*(v76 + 8))(v58, v77);
          (*(v43 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v64 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
          v36 = v105;
          (*(*(v64 - 8) + 56))(v105, 5, 11, v64);
        }

        v32 = v101;
        goto LABEL_29;
      }
    }

    v37 = sub_1004DEB5C();
    swift_allocError();
    v39 = v38;
    sub_100004CB8(&qword_1006402B8, &qword_10052C5D0);
    *v39 = v21;
    sub_1004DEE5C();
    sub_1004DEB4C();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    (*(v104 + 8))(v20, v18);
    swift_unknownObjectRelease();
  }

  return sub_100008D24(v106);
}

uint64_t sub_100332660()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1003326C8()
{
  sub_1004DF26C();
  ArtworkImage.Placeholder.hash(into:)(v1);
  return sub_1004DF2BC();
}

uint64_t GenericMusicItem.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DD05C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D8BFC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v44 - v11;
  v13 = *(v8 + 16);
  v13(&v44 - v11, v1, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 == enum case for GenericMusicItem.album(_:))
  {
    goto LABEL_2;
  }

  v48 = a1;
  if (v14 == enum case for GenericMusicItem.artist(_:))
  {
LABEL_5:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    v18 = 7;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.composer(_:))
  {
    v20 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    (*(*(v20 - 8) + 56))(v48, 11, 11, v20);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.editorialItem(_:))
  {
LABEL_15:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    goto LABEL_3;
  }

  if (v14 == enum case for GenericMusicItem.genre(_:))
  {
    v22 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    (*(*(v22 - 8) + 56))(v48, 10, 11, v22);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.musicMovie(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v24 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    (*(*(v24 - 8) + 56))(v48, 5, 11, v24);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v8 + 96))(v12, v7);
    (*(v4 + 32))(v6, v12, v3);
    v25 = v48;
    sub_1004DCF0C();
    (*(v4 + 8))(v6, v3);
    v26 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    return (*(*(v26 - 8) + 56))(v25, 0, 11, v26);
  }

  if (v14 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v27 = enum case for Playlist.Variant.folder(_:);
    v28 = sub_1004DCEEC();
    v29 = *(v28 - 8);
    v30 = v48;
    (*(v29 + 104))(v48, v27, v28);
    (*(v29 + 56))(v30, 0, 1, v28);
    v31 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    (*(*(v31 - 8) + 56))(v30, 0, 11, v31);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.radioShow(_:))
  {
    goto LABEL_27;
  }

  if (v14 == enum case for GenericMusicItem.recordLabel(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v33 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    (*(*(v33 - 8) + 56))(v48, 8, 11, v33);
    return (*(v8 + 8))(v12, v7);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.song(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for GenericMusicItem.station(_:))
  {
LABEL_27:
    (*(v8 + 8))(v12, v7);
    v32 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    return (*(*(v32 - 8) + 56))(v48, 9, 11, v32);
  }

  if (v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:))
  {
LABEL_19:
    (*(v8 + 8))(v12, v7);
    v23 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    return (*(*(v23 - 8) + 56))(v48, 6, 11, v23);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
LABEL_2:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1;
LABEL_3:
    v18 = 1;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    goto LABEL_15;
  }

  if (qword_10063D968 != -1)
  {
    swift_once();
  }

  v34 = sub_1004D966C();
  sub_100035430(v34, static Logger.artwork);
  (v13)(v47, v1, v7);
  v35 = sub_1004D964C();
  v46 = sub_1004DDF8C();
  if (os_log_type_enabled(v35, v46))
  {
    v36 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v36 = 136315394;
    *(v36 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v49);
    *(v36 + 12) = 2080;
    sub_100336D8C(&qword_10063E770, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v37 = v47;
    v38 = sub_1004DEFFC();
    v40 = v39;
    v41 = *(v8 + 8);
    v41(v37, v7);
    v42 = sub_1002E5CC4(v38, v40, &v49);

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v35, v46, "Unhandled case for %s: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v8 + 8);
    v41(v47, v7);
  }

  v43 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
  (*(*(v43 - 8) + 56))(v48, 1, 11, v43);
  return (v41)(v12, v7);
}

uint64_t GenericMusicItem.aspectRatio.getter()
{
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v2 = &v33[-v1];
  v3 = sub_1004D916C();
  v35 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004D8BFC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin();
  v12 = &v33[-v11];
  v13 = *(v7 + 16);
  v13(&v33[-v11], v0, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  v20 = v14 == enum case for GenericMusicItem.album(_:) || v14 == enum case for GenericMusicItem.artist(_:) || v14 == enum case for GenericMusicItem.composer(_:) || v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:) || v14 == enum case for GenericMusicItem.editorialItem(_:) || v14 == enum case for GenericMusicItem.genre(_:);
  if (v20 || v14 == enum case for GenericMusicItem.musicMovie(_:) || v14 == enum case for GenericMusicItem.musicVideo(_:) || v14 == enum case for GenericMusicItem.playlist(_:) || v14 == enum case for GenericMusicItem.playlistFolder(_:) || v14 == enum case for GenericMusicItem.radioShow(_:) || v14 == enum case for GenericMusicItem.recordLabel(_:) || v14 == enum case for GenericMusicItem.socialProfile(_:) || v14 == enum case for GenericMusicItem.song(_:) || v14 == enum case for GenericMusicItem.station(_:) || v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:) || v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v7 + 96))(v12, v6);
    v22 = v35;
    (*(v35 + 32))(v5, v12, v3);
    sub_1002E0490(v2);
    v23 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v23 - 8) + 48))(v2, 1, v23) == 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_10001074C(v2, &qword_100642C70, &qword_100527540);
    }

    else if (sub_1004DCC2C() < 1 || sub_1004DCC3C() < 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_100336880(v2, type metadata accessor for ArtworkImage.ViewModel);
    }

    else
    {
      sub_1004DCC2C();
      sub_1004DCC3C();
      (*(v22 + 8))(v5, v3);
      return sub_100336880(v2, type metadata accessor for ArtworkImage.ViewModel);
    }
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (qword_10063D968 != -1)
  {
    swift_once();
  }

  v24 = sub_1004D966C();
  sub_100035430(v24, static Logger.artwork);
  (v13)(v9, v0, v6);
  v25 = sub_1004D964C();
  v26 = sub_1004DDF8C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v27 = 136315394;
    *(v27 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v36);
    *(v27 + 12) = 2080;
    sub_100336D8C(&qword_10063E770, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v34 = v26;
    v28 = sub_1004DEFFC();
    v30 = v29;
    v31 = *(v7 + 8);
    v31(v9, v6);
    v32 = sub_1002E5CC4(v28, v30, &v36);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v25, v34, "Unhandled case for %s: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v9, v6);
  }

  return (v31)(v12, v6);
}

void Playlist.Variant.symbolImage.getter()
{
  v1 = v0;
  v2 = sub_1004DCEEC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for Playlist.Variant.smart(_:) && v7 != enum case for Playlist.Variant.genius(_:) && v7 != enum case for Playlist.Variant.folder(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  v8 = sub_1004DD3FC();

  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ArtworkImage.ViewModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DCC9C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v9;
    v13 = a1;
    sub_1004DCB5C();
    v14 = [v13 token];
    sub_1004DE8DC();
    swift_unknownObjectRelease();
    sub_100006F10(0, &qword_1006402C8, MPStoreArtworkRequestToken_ptr);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = v22, v16 = [v22 cropStyle], v15, v16))
    {
      (*(v5 + 16))(v12, v7, v4);
      Artwork.CropStyle.init(_:)(v16, &v12[*(v8 + 20)]);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      v17 = *(v8 + 20);
      v18 = sub_1004DCC0C();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
      (*(v5 + 32))(v12, v7, v4);
    }

    sub_100336DD4(v12, a2, type metadata accessor for ArtworkImage.ViewModel);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v9 + 56);

    return v20(a2, 1, 1, v8, v10);
  }
}

uint64_t Artwork.CropStyle.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DCC0C();
  v6 = __chkstk_darwin();
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_53;
  }

  v61 = v5;
  v9 = sub_1004DD43C();
  v11 = v10;
  if (v9 == sub_1004DD43C() && v11 == v12)
  {
    v26 = a1;

    goto LABEL_16;
  }

  v14 = sub_1004DF08C();
  v15 = a1;

  if (v14)
  {
LABEL_16:
    sub_1004DCB8C();
LABEL_17:

    (*(v61 + 32))(a2, v8, v4);
    return (*(v61 + 56))(a2, 0, 1, v4);
  }

  v16 = sub_1004DD43C();
  v18 = v17;
  if (v16 == sub_1004DD43C() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = sub_1004DF08C();

  if (v21)
  {
LABEL_19:
    sub_1004DCBAC();
    goto LABEL_17;
  }

  v22 = sub_1004DD43C();
  v24 = v23;
  if (v22 == sub_1004DD43C() && v24 == v25)
  {

LABEL_21:
    sub_1004DCBBC();
    goto LABEL_17;
  }

  v28 = sub_1004DF08C();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = sub_1004DD43C();
  v31 = v30;
  if (v29 == sub_1004DD43C() && v31 == v32)
  {

LABEL_26:
    sub_1004DCBEC();
    goto LABEL_17;
  }

  v33 = sub_1004DF08C();

  if (v33)
  {
    goto LABEL_26;
  }

  v34 = sub_1004DD43C();
  v36 = v35;
  if (v34 == sub_1004DD43C() && v36 == v37)
  {

LABEL_31:
    sub_1004DCBDC();
    goto LABEL_17;
  }

  v38 = sub_1004DF08C();

  if (v38)
  {
    goto LABEL_31;
  }

  v39 = sub_1004DD43C();
  v41 = v40;
  if (v39 == sub_1004DD43C() && v41 == v42)
  {

LABEL_36:
    sub_1004DCBFC();
    goto LABEL_17;
  }

  v43 = sub_1004DF08C();

  if (v43)
  {
    goto LABEL_36;
  }

  v44 = sub_1004DD43C();
  v46 = v45;
  if (v44 == sub_1004DD43C() && v46 == v47)
  {

LABEL_41:
    sub_1004DCB9C();
    goto LABEL_17;
  }

  v48 = sub_1004DF08C();

  if (v48)
  {
    goto LABEL_41;
  }

  v49 = sub_1004DD43C();
  v51 = v50;
  if (v49 == sub_1004DD43C() && v51 == v52)
  {

LABEL_46:
    sub_1004DCBCC();
    goto LABEL_17;
  }

  v53 = sub_1004DF08C();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = sub_1004DD43C();
  v56 = v55;
  if (v54 == sub_1004DD43C() && v56 == v57)
  {

LABEL_51:
    sub_1004DCB7C();
    goto LABEL_17;
  }

  v58 = sub_1004DF08C();

  if (v58)
  {
    goto LABEL_51;
  }

  v5 = v61;
LABEL_53:
  v59 = *(v5 + 56);

  return v59(a2, 1, 1, v4, v6);
}

uint64_t sub_1003343B4()
{
  v0 = sub_1004DCC0C();
  sub_100035718(v0, static Artwork.CropStyle.fallback);
  sub_100035430(v0, static Artwork.CropStyle.fallback);
  return sub_1004DCB8C();
}

uint64_t sub_100334438()
{
  v0 = sub_1004DCB6C();
  sub_100035718(v0, static Artwork.ImageFormat.fallback);
  v1 = sub_100035430(v0, static Artwork.ImageFormat.fallback);
  v2 = enum case for Artwork.ImageFormat.heic(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Artwork.monogramArtwork(for:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_100006F10(0, &qword_10063E4A8, MPArtworkCatalog_ptr);
  if (static MPArtworkCatalog.monogram(for:layoutDirection:)(a1, a2, a3, a4 & 1))
  {
    sub_1004DCB5C();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1004DCC9C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_1003345EC()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.artwork);
  sub_100035430(v0, static Logger.artwork);
  return static Logger.music(_:)(0x6B726F77747241, 0xE700000000000000);
}

uint64_t sub_1003346A8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100035430(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10033474C()
{
  v0 = sub_100004CB8(&qword_100640150, &unk_10052C4D0);
  sub_100035718(v0, qword_100640130);
  v1 = sub_100035430(v0, qword_100640130);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1003347EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D970 != -1)
  {
    swift_once();
  }

  v2 = sub_100004CB8(&qword_100640150, &unk_10052C4D0);
  v3 = sub_100035430(v2, qword_100640130);
  return sub_1000108DC(v3, a1, &qword_100640150, &unk_10052C4D0);
}

void (*EnvironmentValues.placeholderStyle.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(sub_100004CB8(&qword_100640150, &unk_10052C4D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_10033680C();
  sub_1004DA75C();
  return sub_100334994;
}

void sub_100334994(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1000108DC((*a1)[3], (*a1)[2], &qword_100640150, &unk_10052C4D0);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1000108DC(v3[2], v3[1], &qword_100640150, &unk_10052C4D0);
    sub_1004DA76C();
    sub_10001074C(v6, &qword_100640150, &unk_10052C4D0);
  }

  else
  {
    sub_1004DA76C();
  }

  sub_10001074C(v4, &qword_100640150, &unk_10052C4D0);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_100334AA4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  sub_100004CB8(&qword_100640168, &qword_10052C4F0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_1004DBDAC();
  v19 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100640150, &unk_10052C4D0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108DC(a2, v9, &qword_100640150, &unk_10052C4D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10001074C(v9, &qword_100640150, &unk_10052C4D0);
  }

  sub_100336DD4(v9, v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  sub_1000108DC(v13, &v21, &qword_100641D90, &unk_10052ED50);
  if (v22)
  {
    sub_100035850(&v21, v23);
    v15 = v20;
    sub_10001074C(v20, &qword_100641D90, &unk_10052ED50);
    sub_100035850(v23, v15);
  }

  else
  {
    sub_10001074C(&v21, &qword_100641D90, &unk_10052ED50);
    v15 = v20;
  }

  v16 = v19;
  sub_1000108DC((v13 + 40), &v21, &qword_100641D90, &unk_10052ED50);
  if (v22)
  {
    sub_100035850(&v21, v23);
    sub_10001074C(v15 + 40, &qword_100641D90, &unk_10052ED50);
    sub_100035850(v23, v15 + 40);
  }

  else
  {
    sub_10001074C(&v21, &qword_100641D90, &unk_10052ED50);
  }

  sub_1000108DC(&v13[*(v10 + 24)], v4, &qword_100640168, &qword_10052C4F0);
  sub_100336880(v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if ((*(v16 + 48))(v4, 1, v5) == 1)
  {
    return sub_10001074C(v4, &qword_100640168, &qword_10052C4F0);
  }

  v17 = *(v16 + 32);
  v17(v7, v4, v5);
  v18 = *(v10 + 24);
  sub_10001074C(v15 + v18, &qword_100640168, &qword_10052C4F0);
  v17((v15 + v18), v7, v5);
  return (*(v16 + 56))(v15 + v18, 0, 1, v5);
}

uint64_t PlaceholderStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(sub_100004CB8(&qword_1006402D0, &qword_10052C5D8) + 36));
  v6 = *(sub_100004CB8(&qword_1006402D8, &qword_10052C5E0) + 28);
  sub_100334FEC(&v5[v6]);
  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 0, 1, v7);
  *v5 = KeyPath;
  v8 = sub_100004CB8(&qword_1006402E0, &qword_10052C5E8);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_100334FEC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_100004CB8(&qword_100640168, &qword_10052C4F0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  sub_100004CB8(&qword_100640150, &unk_10052C4D0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  type metadata accessor for PlaceholderStyleModifier(0);
  sub_10032A6F4(v7);
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) == 1)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v10 = sub_1004DBDAC();
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v11 = *(*(v10 - 8) + 56);
    v11(v5, 1, 1, v10);
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v16 = v2;
    v12 = *(v8 + 24);
    v11(&a1[v12], 1, 1, v10);
    sub_1000107AC(v19, a1, &qword_100641D90, &unk_10052ED50);
    sub_1000107AC(v17, (a1 + 40), &qword_100641D90, &unk_10052ED50);
    v13 = &a1[v12];
    v2 = v16;
    sub_1000107AC(v5, v13, &qword_100640168, &qword_10052C4F0);
    if (v9(v7, 1, v8) != 1)
    {
      sub_10001074C(v7, &qword_100640150, &unk_10052C4D0);
    }
  }

  else
  {
    sub_100336DD4(v7, a1, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  }

  return (*v2)(a1);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v4 = *(sub_100004CB8(&qword_100640150, &unk_10052C4D0) - 8);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000108DC(a1, v6, &qword_100640150, &unk_10052C4D0);
  v10 = *(v7 + 20);
  *(v9 + v10) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8, &qword_100527500);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_100047F38(v6, v12 + v11, &qword_100640150, &unk_10052C4D0);
  *v9 = sub_100336E60;
  v9[1] = v12;
  sub_1004DB6EC();
  return sub_100336880(v9, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(sub_100004CB8(&qword_100640150, &unk_10052C4D0) - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for PlaceholderStyleModifier(0);
  v9 = __chkstk_darwin();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1(v9);
  v12 = *(v8 + 20);
  *(v11 + v12) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8, &qword_100527500);
  swift_storeEnumTagMultiPayload();
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_100047F38(v7, v14 + v13, &qword_100640150, &unk_10052C4D0);
  *v11 = sub_100339DD4;
  v11[1] = v14;
  sub_1004DB6EC();
  return sub_100336880(v11, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v9 + 20);
  *(v8 + v10) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8, &qword_100527500);
  swift_storeEnumTagMultiPayload();
  *v8 = a1;
  v8[1] = a2;

  sub_1004DB6EC();
  return sub_100336880(v8, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    v3 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v3 = 1;
      }

      if (v3)
      {
        return 0;
      }
    }

    v4 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    v5 = *(a2 + 41);
    if (*(a1 + 41) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || (sub_1004D9D9C() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4InfoV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v9 = &v37[-1] - v8;
  sub_100004CB8(&unk_100641C70, &qword_10052EBF0);
  __chkstk_darwin();
  v11 = &v37[-1] - v10;
  v13 = *(v12 + 56);
  sub_1000108DC(a1, &v37[-1] - v10, &qword_100642C70, &qword_100527540);
  sub_1000108DC(a2, &v11[v13], &qword_100642C70, &qword_100527540);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000108DC(v11, v9, &qword_100642C70, &qword_100527540);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_100336DD4(&v11[v13], v7, type metadata accessor for ArtworkImage.ViewModel);
      v15 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v9, v7);
      sub_100336880(v7, type metadata accessor for ArtworkImage.ViewModel);
      sub_100336880(v9, type metadata accessor for ArtworkImage.ViewModel);
      sub_10001074C(v11, &qword_100642C70, &qword_100527540);
      if (!v15)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_100336880(v9, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    sub_10001074C(v11, &unk_100641C70, &qword_10052EBF0);
    return 0;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10001074C(v11, &qword_100642C70, &qword_100527540);
LABEL_8:
  v16 = type metadata accessor for ArtworkImage.Info(0);
  if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + v16[5], a2 + v16[5]))
  {
    v17 = v16[6];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = *(a2 + v17 + 8);
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 != *v20)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    v22 = (a1 + v16[7]);
    v23 = *(v22 + 26);
    v24 = v22[1];
    v36 = *v22;
    v37[0] = v24;
    *(v37 + 10) = v23;
    v25 = (a2 + v16[7]);
    *&v39[10] = *(v25 + 26);
    v26 = v25[1];
    v38 = *v25;
    *v39 = v26;
    if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v36, &v38))
    {
      v27 = v16[8];
      v28 = a1 + v27;
      v29 = *(a1 + v27);
      v30 = *(a1 + v27 + 16);
      v31 = a2 + v27;
      v32 = *(a2 + v27);
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v30)
      {
        if (v30 == 1)
        {
          if (v34 != 1 || v29 != v32)
          {
            return 0;
          }
        }

        else if (v34 != 2 || v33 | *&v32)
        {
          return 0;
        }
      }

      else if (v34 || v29 != v32 || *(v28 + 8) != v33)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DCEEC();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = sub_100004CB8(&qword_100640890, &qword_10052D3C8);
  __chkstk_darwin();
  v11 = &v28 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100640898, &unk_10052D3D0);
  __chkstk_darwin();
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  sub_1003368E0(a1, &v28 - v14, type metadata accessor for ArtworkImage.Placeholder);
  sub_1003368E0(a2, &v15[v17], type metadata accessor for ArtworkImage.Placeholder);
  v18 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 11, v18);
  if (v20 <= 5)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        if (v19(&v15[v17], 11, v18) != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v20 == 4)
      {
        if (v19(&v15[v17], 11, v18) != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (v19(&v15[v17], 11, v18) != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 2)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_100336880(v15, type metadata accessor for ArtworkImage.Placeholder);
      return 1;
    }

    sub_1003368E0(v15, v13, type metadata accessor for ArtworkImage.Placeholder);
    if (v19(&v15[v17], 11, v18))
    {
      sub_10001074C(v13, &qword_10063E508, &qword_1005291A0);
      goto LABEL_36;
    }

    v22 = *(v9 + 48);
    sub_100047F38(v13, v11, &qword_10063E508, &qword_1005291A0);
    sub_100047F38(&v15[v17], &v11[v22], &qword_10063E508, &qword_1005291A0);
    v24 = v28;
    v23 = v29;
    v25 = *(v28 + 48);
    if (v25(v11, 1, v29) == 1)
    {
      if (v25(&v11[v22], 1, v23) == 1)
      {
        sub_10001074C(v11, &qword_10063E508, &qword_1005291A0);
        goto LABEL_35;
      }
    }

    else
    {
      sub_1000108DC(v11, v8, &qword_10063E508, &qword_1005291A0);
      if (v25(&v11[v22], 1, v23) != 1)
      {
        (*(v24 + 32))(v6, &v11[v22], v23);
        sub_100336D8C(&qword_1006408A0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v26 = sub_1004DD35C();
        v27 = *(v24 + 8);
        v27(v6, v23);
        v27(v8, v23);
        sub_10001074C(v11, &qword_10063E508, &qword_1005291A0);
        if (v26)
        {
          goto LABEL_35;
        }

LABEL_44:
        sub_100336880(v15, type metadata accessor for ArtworkImage.Placeholder);
        return 0;
      }

      (*(v24 + 8))(v8, v23);
    }

    sub_10001074C(v11, &qword_100640890, &qword_10052D3C8);
    goto LABEL_44;
  }

  if (v20 <= 8)
  {
    if (v20 == 6)
    {
      if (v19(&v15[v17], 11, v18) != 6)
      {
        goto LABEL_36;
      }
    }

    else if (v20 == 7)
    {
      if (v19(&v15[v17], 11, v18) != 7)
      {
        goto LABEL_36;
      }
    }

    else if (v19(&v15[v17], 11, v18) != 8)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 9)
  {
    if (v19(&v15[v17], 11, v18) != 9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 10)
  {
    if (v19(&v15[v17], 11, v18) != 10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v19(&v15[v17], 11, v18) == 11)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_10001074C(v15, &qword_100640898, &unk_10052D3D0);
  return 0;
}

BOOL _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DCC0C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_100004CB8(&qword_1006408A8, &unk_10052D3E0);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if ((sub_1004DCC8C() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v13 = *(type metadata accessor for ArtworkImage.ViewModel(0) + 20);
  v14 = *(v10 + 48);
  sub_1000108DC(a1 + v13, v12, &qword_100641A60, &qword_10052C450);
  sub_1000108DC(a2 + v13, &v12[v14], &qword_100641A60, &qword_10052C450);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_10001074C(v12, &qword_100641A60, &qword_10052C450);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1000108DC(v12, v9, &qword_100641A60, &qword_10052C450);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_7:
    sub_10001074C(v12, &qword_1006408A8, &unk_10052D3E0);
    return 0;
  }

  v17 = v21;
  (*(v5 + 32))(v21, &v12[v14], v4);
  sub_100336D8C(&qword_1006408B0, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
  v18 = sub_1004DD35C();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_10001074C(v12, &qword_100641A60, &qword_10052C450);
  return (v18 & 1) != 0;
}

uint64_t sub_100336740()
{

  return swift_deallocObject();
}

double sub_100336778@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_10033680C()
{
  result = qword_100640148;
  if (!qword_100640148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640148);
  }

  return result;
}

uint64_t sub_100336880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003368E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100336948()
{
  result = qword_1006401D8;
  if (!qword_1006401D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401D8);
  }

  return result;
}

unint64_t sub_10033699C()
{
  result = qword_1006401E0;
  if (!qword_1006401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401E0);
  }

  return result;
}

unint64_t sub_1003369F0()
{
  result = qword_1006401E8;
  if (!qword_1006401E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401E8);
  }

  return result;
}

unint64_t sub_100336A44()
{
  result = qword_1006401F0;
  if (!qword_1006401F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401F0);
  }

  return result;
}

unint64_t sub_100336A98()
{
  result = qword_1006401F8;
  if (!qword_1006401F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401F8);
  }

  return result;
}

unint64_t sub_100336AEC()
{
  result = qword_100640200;
  if (!qword_100640200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640200);
  }

  return result;
}

unint64_t sub_100336B40()
{
  result = qword_100640208;
  if (!qword_100640208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640208);
  }

  return result;
}

unint64_t sub_100336B94()
{
  result = qword_100640210;
  if (!qword_100640210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640210);
  }

  return result;
}

unint64_t sub_100336BE8()
{
  result = qword_100640218;
  if (!qword_100640218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640218);
  }

  return result;
}

unint64_t sub_100336C3C()
{
  result = qword_100640228;
  if (!qword_100640228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640228);
  }

  return result;
}

unint64_t sub_100336C90()
{
  result = qword_100640230;
  if (!qword_100640230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640230);
  }

  return result;
}

unint64_t sub_100336CE4()
{
  result = qword_100640238;
  if (!qword_100640238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640238);
  }

  return result;
}

unint64_t sub_100336D38()
{
  result = qword_100640240;
  if (!qword_100640240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640240);
  }

  return result;
}

uint64_t sub_100336D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100336DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100336E64()
{
  v1 = *(sub_100004CB8(&qword_100640150, &unk_10052C4D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 3))
    {
      sub_100008D24((v0 + v2));
    }

    if (*(v3 + 8))
    {
      sub_100008D24(v3 + 5);
    }

    v5 = *(v4 + 24);
    v6 = sub_1004DBDAC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100337008(uint64_t a1)
{
  v3 = *(sub_100004CB8(&qword_100640150, &unk_10052C4D0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100334AA4(a1, v4);
}

uint64_t sub_100337118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004DCC9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100004CB8(&qword_100641A60, &qword_10052C450);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100337228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004DCC9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100004CB8(&qword_100641A60, &qword_10052C450);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100337330(uint64_t a1)
{
  sub_1004DCC9C();
  if (v1 <= 0x3F)
  {
    sub_10033772C(319, &unk_100640358, &type metadata accessor for Artwork.CropStyle, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1003373F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100642C70, &qword_100527540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 41);
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28) + 41);
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100337530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100004CB8(&qword_100642C70, &qword_100527540);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ArtworkImage.Placeholder(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 41) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100337648(uint64_t a1)
{
  sub_10033772C(319, &qword_1006403F0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v2 <= 0x3F)
    {
      sub_100337790();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10033772C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100337790()
{
  if (!qword_1006403F8)
  {
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1006403F8);
    }
  }
}

uint64_t sub_1003377E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100337834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1003378A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100337934(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1003379C4(uint64_t a1)
{
  sub_100337A1C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100337A1C()
{
  if (!qword_1006404B8)
  {
    sub_10033772C(0, &unk_1006404C0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &qword_1006404B8);
    }
  }
}

uint64_t sub_100337AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_1006404E8, &qword_10052C830);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100004CB8(&qword_1006404F0, &qword_10052C838);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100337BF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_1006404E8, &qword_10052C830);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100004CB8(&qword_1006404F0, &qword_10052C838);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100337D34(uint64_t a1)
{
  _s3__C6CGSizeVMa_1(319);
  if (v1 <= 0x3F)
  {
    sub_1003380CC(319, &qword_100640560, &qword_100640150, &unk_10052C4D0, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10033772C(319, &unk_100640568, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100337E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004CB8(&qword_100640168, &qword_10052C4F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100337F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100004CB8(&qword_100640168, &qword_10052C4F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100337FEC(uint64_t a1)
{
  sub_1003380CC(319, &qword_100640610, &qword_100640618, &unk_10052C850, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10033772C(319, &unk_100640620, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003380CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008DE4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100338144(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_1006404E8, &qword_10052C830);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100338214(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_1006404E8, &qword_10052C830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003382C4(uint64_t a1)
{
  sub_100338374();
  if (v1 <= 0x3F)
  {
    sub_1003380CC(319, &qword_100640560, &qword_100640150, &unk_10052C4D0, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100338374()
{
  result = qword_100641930;
  if (!qword_100641930)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100641930);
  }

  return result;
}

uint64_t sub_1003383C4()
{
  sub_100008DE4(&qword_1006406E8, &qword_10052C880);
  sub_100338428();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100338428()
{
  result = qword_100641A90;
  if (!qword_100641A90)
  {
    sub_100008DE4(&qword_1006406E8, &qword_10052C880);
    sub_1003384E0();
    sub_100042B08(&unk_100641AD0, &qword_100640710, &qword_10052E8B0, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641A90);
  }

  return result;
}

unint64_t sub_1003384E0()
{
  result = qword_1006406F0;
  if (!qword_1006406F0)
  {
    sub_100008DE4(&unk_100641AA0, &qword_10052C888);
    sub_10033856C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006406F0);
  }

  return result;
}

unint64_t sub_10033856C()
{
  result = qword_1006406F8;
  if (!qword_1006406F8)
  {
    sub_100008DE4(&unk_100641AB0, &unk_10052E8A0);
    sub_100336D8C(&qword_100640700, type metadata accessor for ArtworkImage.Placeholder.View, &protocol conformance descriptor for ArtworkImage.Placeholder.View);
    sub_100042B08(&unk_100641AC0, &qword_100640708, &unk_10052C890, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006406F8);
  }

  return result;
}

unint64_t sub_1003386E4()
{
  result = qword_100642CA0;
  if (!qword_100642CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CA0);
  }

  return result;
}

unint64_t sub_100338740()
{
  result = qword_100640718;
  if (!qword_100640718)
  {
    sub_100008DE4(&qword_100640158, &qword_10052C4E0);
    sub_1003387F8();
    sub_100042B08(&qword_100640740, &qword_100640160, &qword_10052C4E8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640718);
  }

  return result;
}

unint64_t sub_1003387F8()
{
  result = qword_100640720;
  if (!qword_100640720)
  {
    sub_100008DE4(&qword_100640728, &qword_10052C8A0);
    sub_100042B08(&qword_100640730, &qword_100640738, &qword_10052C8A8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640720);
  }

  return result;
}

unint64_t sub_1003388B4()
{
  result = qword_100640748;
  if (!qword_100640748)
  {
    sub_100008DE4(&qword_1006402D0, &qword_10052C5D8);
    sub_100042B08(&qword_100640750, &qword_1006402E0, &qword_10052C5E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_100640758, &qword_1006402D8, &qword_10052C5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640748);
  }

  return result;
}

uint64_t sub_100338998(uint64_t *a1)
{
  type metadata accessor for PlaceholderStyleModifier(255);
  sub_1004DA32C();
  sub_100336D8C(&unk_100641D50, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
  return swift_getWitnessTable();
}

uint64_t _s11PlaceholderO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PlaceholderO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100338C58()
{
  result = qword_100640760;
  if (!qword_100640760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640760);
  }

  return result;
}

unint64_t sub_100338CB0()
{
  result = qword_100640768;
  if (!qword_100640768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640768);
  }

  return result;
}

unint64_t sub_100338D08()
{
  result = qword_100640770;
  if (!qword_100640770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640770);
  }

  return result;
}

unint64_t sub_100338D60()
{
  result = qword_100640778;
  if (!qword_100640778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640778);
  }

  return result;
}

unint64_t sub_100338DB8()
{
  result = qword_100640780;
  if (!qword_100640780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640780);
  }

  return result;
}

unint64_t sub_100338E10()
{
  result = qword_100640788;
  if (!qword_100640788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640788);
  }

  return result;
}

unint64_t sub_100338E68()
{
  result = qword_100640790;
  if (!qword_100640790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640790);
  }

  return result;
}

unint64_t sub_100338EC0()
{
  result = qword_100640798;
  if (!qword_100640798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640798);
  }

  return result;
}

unint64_t sub_100338F18()
{
  result = qword_1006407A0;
  if (!qword_1006407A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407A0);
  }

  return result;
}

unint64_t sub_100338F70()
{
  result = qword_1006407A8;
  if (!qword_1006407A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407A8);
  }

  return result;
}

unint64_t sub_100338FC8()
{
  result = qword_1006407B0;
  if (!qword_1006407B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407B0);
  }

  return result;
}

unint64_t sub_100339020()
{
  result = qword_1006407B8;
  if (!qword_1006407B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407B8);
  }

  return result;
}

unint64_t sub_100339078()
{
  result = qword_1006407C0;
  if (!qword_1006407C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407C0);
  }

  return result;
}

unint64_t sub_1003390D0()
{
  result = qword_1006407C8;
  if (!qword_1006407C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407C8);
  }

  return result;
}

unint64_t sub_100339128()
{
  result = qword_1006407D0;
  if (!qword_1006407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407D0);
  }

  return result;
}

unint64_t sub_100339180()
{
  result = qword_1006407D8;
  if (!qword_1006407D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407D8);
  }

  return result;
}

unint64_t sub_1003391D8()
{
  result = qword_1006407E0;
  if (!qword_1006407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407E0);
  }

  return result;
}

unint64_t sub_100339230()
{
  result = qword_1006407E8;
  if (!qword_1006407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407E8);
  }

  return result;
}

unint64_t sub_100339288()
{
  result = qword_1006407F0;
  if (!qword_1006407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407F0);
  }

  return result;
}

unint64_t sub_1003392E0()
{
  result = qword_1006407F8;
  if (!qword_1006407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407F8);
  }

  return result;
}

unint64_t sub_100339338()
{
  result = qword_100640800;
  if (!qword_100640800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640800);
  }

  return result;
}

unint64_t sub_100339390()
{
  result = qword_100640808;
  if (!qword_100640808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640808);
  }

  return result;
}

unint64_t sub_1003393E8()
{
  result = qword_100640810;
  if (!qword_100640810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640810);
  }

  return result;
}

unint64_t sub_100339440()
{
  result = qword_100640818;
  if (!qword_100640818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640818);
  }

  return result;
}

unint64_t sub_100339498()
{
  result = qword_100640820;
  if (!qword_100640820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640820);
  }

  return result;
}

unint64_t sub_1003394F0()
{
  result = qword_100640828;
  if (!qword_100640828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640828);
  }

  return result;
}

unint64_t sub_100339548()
{
  result = qword_100640830;
  if (!qword_100640830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640830);
  }

  return result;
}

unint64_t sub_1003395A0()
{
  result = qword_100640838;
  if (!qword_100640838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640838);
  }

  return result;
}

uint64_t sub_1003395F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (sub_1004DF08C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646C6F4677656ELL && a2 == 0xE900000000000072 || (sub_1004DF08C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79616C5077656ELL && a2 == 0xEB00000000747369 || (sub_1004DF08C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65 || (sub_1004DF08C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL || (sub_1004DF08C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1004DF08C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1003399C0()
{
  result = qword_100640858;
  if (!qword_100640858)
  {
    sub_100008DE4(&qword_100640850, &qword_10052D398);
    sub_100339A78();
    sub_100042B08(&unk_100641BF0, &qword_100640088, &qword_10052D3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640858);
  }

  return result;
}

unint64_t sub_100339A78()
{
  result = qword_100640860;
  if (!qword_100640860)
  {
    sub_100008DE4(&qword_100640868, &qword_10052D3A0);
    sub_100042B08(&qword_100640870, &qword_100640878, &qword_10052D3A8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640860);
  }

  return result;
}