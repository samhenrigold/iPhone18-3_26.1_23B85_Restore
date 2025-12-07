void sub_9D3B4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_9CB10(a3);
}

void sub_9D408(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else if ([v1 isViewLoaded])
  {
    sub_A0BA0(1, 1, a1 & 1);
    v4 = sub_7653A0();
    v6[3] = v4;
    v6[4] = sub_A287C(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
    v5 = sub_B1B4(v6);
    (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v4);
    LOBYTE(v4) = sub_765C30();
    sub_BEB8(v6);
    if (v4)
    {
      sub_9D10C();
    }
  }
}

void sub_9D53C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_9D408(a3);
}

void sub_9D590(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillLayoutSubviews");
  v2 = *&v1[qword_99A4B0];
  if (v2)
  {
    v3 = v2;
    sub_8D6AC();
    [v3 setHeight:{v4, v5.receiver, v5.super_class}];

    v1 = v3;
  }
}

id sub_9D618()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_9435D0, qword_782630);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_769ED0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_769EB0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_769EC0();
  sub_10A2C(v5, &unk_9435D0, qword_782630);
  sub_769F10();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_942610];
  v19 = *&v1[qword_942610];
  v20 = v1[qword_942610 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_A287C(&qword_942C68, type metadata accessor for ArcadeDiffablePageViewController, &unk_7A2710);
      return sub_763A70();
    }

LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_9D908(void *a1)
{
  v1 = a1;
  sub_9D618();
}

void sub_9D950(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = &v3[qword_942620];
    if ((v3[qword_942620 + 16] & 1) != 0 || *v7 != a2 || v7[1] != a3)
    {
      *v7 = a2;
      v7[1] = a3;
      *(v7 + 16) = 0;
      sub_9C4D0();
    }
  }
}

void sub_9D9FC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_9D950(a3, a4, a5);
  swift_unknownObjectRelease();
}

uint64_t sub_9DA7C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_BD88(&qword_942C90, &qword_79DED0);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_BD88(&qword_942C98, &unk_7825B0);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_BD88(&qword_942CA0, &unk_78A360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1BAC84();
  sub_75F1B0();
  sub_BD88(&unk_959600, &qword_7825C0);
  sub_16194(&qword_942CA8, &unk_959600, &qword_7825C0, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  sub_768720();

  sub_BEB8(v18);
  (*(v5 + 8))(v7, v4);
  sub_762020();
  sub_BD88(&qword_942CB0, &qword_7825C8);
  sub_16194(&qword_942CB8, &qword_942CB0, &qword_7825C8, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v8 = v12;
  sub_768720();

  sub_BEB8(v18);
  (*(v13 + 8))(v8, v14);
  sub_762030();
  sub_BD88(&qword_942CC0, &unk_7825D0);
  sub_16194(&unk_955610, &qword_942CC0, &unk_7825D0, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v9 = v15;
  sub_768720();

  sub_BEB8(v18);
  return (*(v16 + 8))(v9, v17);
}

void sub_9DEB4()
{
  v0 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v0 - 8);
  v43 = &v37 - v1;
  v2 = sub_764930();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v37 - v5;
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = sub_BD88(&qword_93FF08, qword_77F350);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_BD88(&unk_9595E0, &qword_7825E0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  sub_BD88(&unk_959560, &qword_7A2870);
  sub_75B030();
  sub_764410();
  v16 = *(v13 + 8);
  v16(v15, v12);
  v17 = sub_7678E0();
  (*(v9 + 8))(v11, v8);
  if (v17 < 1)
  {
    goto LABEL_4;
  }

  sub_75B030();
  v18 = v43;
  sub_764430();
  v16(v15, v12);
  v19 = sub_BD88(&unk_94F1F0, &qword_782290);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10A2C(v18, &qword_963790, qword_77EBC0);
LABEL_4:
    v21 = v44;
    *(v44 + qword_942608) = _swiftEmptySetSingleton;

    *(v21 + qword_942600) = 0;
    return;
  }

  swift_getKeyPath();
  v22 = v38;
  sub_768750();

  (*(v20 + 8))(v18, v19);
  v24 = v40;
  v23 = v41;
  v25 = v42;
  (*(v41 + 32))(v40, v22, v42);
  v26 = v39;
  (*(v23 + 16))(v39, v24, v25);
  v27 = (*(v23 + 88))(v26, v25);
  if (v27 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v27 == enum case for Shelf.ContentType.upsellBreakout(_:) || v27 == enum case for Shelf.ContentType.heroCarousel(_:) || v27 == enum case for Shelf.ContentType.uber(_:))
  {
    sub_BD88(&unk_941A18, &qword_78A3D0);
    v30 = sub_757640();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_77B6D0;
    sub_7575B0();
    v35 = sub_1A275C(v33, v34);
    swift_setDeallocating();
    (*(v31 + 8))(v33 + v32, v30);
    swift_deallocClassInstance();
    (*(v23 + 8))(v24, v25);
    v36 = v44;
    *(v44 + qword_942608) = v35;

    *(v36 + qword_942600) = 1;
  }

  else
  {
    v28 = *(v23 + 8);
    v28(v24, v25);
    v29 = v44;
    *(v44 + qword_942608) = _swiftEmptySetSingleton;

    *(v29 + qword_942600) = 0;
    v28(v26, v25);
  }
}

void (*sub_9E4F0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_A2970;
}

double sub_9E554()
{
  if (qword_93DEF0 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_9A0400);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  return result;
}

double (*sub_9E698(void *a1))(uint64_t *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_A2928;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_A2968;
}

double sub_9E728(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_46344, v5);

  return result;
}

uint64_t (*sub_9E7B8(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_A28C4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1F81C;
}

uint64_t sub_9E848()
{
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_782440;
  *(v1 + 32) = *(v0 + qword_942640);
  *(v1 + 40) = &protocol witness table for ArcadeTitleEffectCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_882588;
  swift_unknownObjectWeakAssign();
  v3 = sub_A287C(&qword_942C80, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver, &unk_7B012C);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = sub_A287C(&qword_942C88, type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver, &unk_7A4F60);
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;

  *(v1 + 80) = sub_5FBF50();
  *(v1 + 88) = v6;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

id sub_9E9CC(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_BD88(&qword_942C60, &qword_7A9340);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_5FE984(a1);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_9EBF4();
  }

  else if (v7 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7642E0();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_A287C(&qword_942C68, type metadata accessor for ArcadeDiffablePageViewController, &unk_7A2710);
    return sub_763A70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_9EBF4()
{
  v1 = v0;
  sub_762050();
  if (v2)
  {
    v3 = sub_769210();
  }

  else
  {
    v3 = 0;
  }

  [v1 setTitle:v3];

  v4 = sub_7594A0();
  sub_9EEDC(v4);
  v5 = [v1 tabBarItem];
  if (v5)
  {
    v6 = v5;
    sub_762040();
    if (v7)
    {
      v8 = sub_769210();
    }

    else
    {
      v8 = 0;
    }

    [v6 setTitle:v8];

    sub_762050();
    if (v9)
    {

      v10 = [v1 navigationItem];
      sub_762050();
      if (v11)
      {
        v12 = sub_769210();
      }

      else
      {
        v12 = 0;
      }

      [v10 setTitle:v12];

      v16 = [v1 navigationItem];
      sub_27CCF4();
    }

    else
    {
      v13 = [v1 navigationItem];
      sub_762040();
      if (v14)
      {
        v15 = sub_769210();
      }

      else
      {
        v15 = 0;
      }

      [v13 setTitle:v15];

      v16 = [v1 navigationItem];
      sub_27CE0C();
    }

    v17 = [v1 navigationItem];
    v18 = [v17 standardAppearance];

    if (!v18)
    {
      v18 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v22 = v18;
    if (sub_762010())
    {

      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    [v22 _setOverrideUserInterfaceStyle:v19];

    v20 = [v1 navigationItem];
    [v20 setStandardAppearance:v22];

    sub_9F178(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_9EEDC(char a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = 1;
    v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 1;
    goto LABEL_8;
  }

  if ((a1 & 2) != 0)
  {
    v5 = sub_71DFF0();
    v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = v5 & 1;
    if (v5)
    {
      v4 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 0;
  }

  v4 = 2;
LABEL_8:
  v6 = [v2 navigationItem];
  [v6 setLargeTitleDisplayMode:v4];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = v7;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_19;
  }

  *(v9 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_71DDE4();
  sub_A22DC(v10);
  if (sub_762010())
  {

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver();
    v12 = swift_allocObject();
    v12[3] = v11;
    v12[4] = 0;
    v12[2] = sub_A2754;
    *&v2[qword_99A4C0] = v12;

    sub_A287C(&qword_942C70, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver, &unk_79F2C0);
    sub_75FA40();
  }

  else
  {
    v13 = qword_99A4C0;
    if (*&v2[qword_99A4C0])
    {
      sub_A287C(&qword_942C70, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver, &unk_79F2C0);
    }

    sub_75FA30();

    *&v2[v13] = 0;
  }
}

void sub_9F178(uint64_t a1)
{
  v2 = v1;
  v3 = sub_762010();
  if (!v3)
  {
    v14 = [v1 navigationItem];
    [v14 setTitleView:0];

    v15 = &v2[qword_99A4B0];
    v16 = *&v2[qword_99A4B0];
    *v15 = 0;
    *(v15 + 1) = 0;

    v17 = qword_942618;
    v18 = *&v2[qword_942618];
    *&v2[qword_942618] = 0;
    if (!v18)
    {
      return;
    }

    v35 = v18;
    [v18 removeFromSuperview];
    v19 = *&v2[v17];
    if (!v19)
    {
      goto LABEL_27;
    }

    v12 = v19;
    v20 = [v2 view];
    if (v20)
    {
      v34 = v20;
      [v20 addSubview:v12];
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

  v4 = v3;
  v5 = [v1 traitCollection];
  v6 = sub_7699D0();

  if ((v6 & 1) == 0)
  {
    v8 = [objc_allocWithZone(type metadata accessor for ArcadeFloatingBannerView()) init];
    [v8 setHidden:1];
    sub_579E1C(v4, *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph]);
    v22 = qword_942618;
    v23 = *&v2[qword_942618];
    *&v2[qword_942618] = v8;
    if (v23)
    {
      v24 = v8;
      v25 = v23;
      v26 = sub_76A1C0();

      if (v26)
      {

LABEL_25:
        sub_9F754(0);
        [v8 setFrame:?];

        v32 = [v2 navigationItem];
        [v32 setTitleView:0];

        v33 = &v2[qword_99A4B0];
        v35 = *&v2[qword_99A4B0];
        *v33 = 0;
        *(v33 + 1) = 0;
LABEL_26:

LABEL_27:
        v21 = v35;
        goto LABEL_28;
      }

      [v25 removeFromSuperview];
      v28 = *&v2[v22];
      if (!v28)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = v8;
      v28 = v8;
      if (!v8)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    v29 = v28;
    v30 = [v2 view];
    if (v30)
    {
      v31 = v30;
      [v30 addSubview:v29];

LABEL_24:
      v25 = v23;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v7 = [objc_allocWithZone(type metadata accessor for ArcadePageTitleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_579E1C(v4, *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph]);
  swift_unknownObjectWeakAssign();
  v8 = v7;
  sub_9F5D0(v7, &off_881FD0);

  v9 = qword_942618;
  v10 = *&v2[qword_942618];
  *&v2[qword_942618] = 0;
  if (v10)
  {
    v35 = v10;
    [v10 removeFromSuperview];
    v11 = *&v2[v9];
    if (v11)
    {
      v12 = v11;
      v13 = [v2 view];
      if (v13)
      {
        v34 = v13;
        [v13 addSubview:v12];

LABEL_11:

        v21 = v34;
LABEL_28:

        return;
      }

LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_26;
  }
}

void sub_9F5D0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v2 navigationItem];
    [v6 setTitleView:v5];

    v7 = &v2[qword_99A4B0];
    v8 = *&v2[qword_99A4B0];
    *v7 = a1;
    *(v7 + 1) = a2;
    v20 = v5;

    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationBar];

      [v11 _titleOpacity];
      v13 = v12;

      v14 = *v7;
      if (*v7)
      {
        v15 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView];
        v16 = v14;
        [v15 setAlpha:v13];
      }
    }

    v17 = v20;
  }

  else
  {
    v18 = [v2 navigationItem];
    [v18 setTitleView:0];

    v19 = &v2[qword_99A4B0];
    v17 = *&v2[qword_99A4B0];
    *v19 = 0;
    *(v19 + 1) = a2;
  }
}

void sub_9F754(char a1)
{
  v2 = *&v1[qword_942618];
  if (v2)
  {
    v4 = v2;
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v67.origin.x = v8;
      v67.origin.y = v10;
      v67.size.width = v12;
      v67.size.height = v14;
      CGRectGetWidth(v67);
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v68.origin.x = v18;
        v68.origin.y = v20;
        v68.size.width = v22;
        v68.size.height = v24;
        CGRectGetHeight(v68);
        v25 = &v1[qword_942628];
        if (v1[qword_942628 + 16])
        {
          v26 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeFloatingBannerView_lockupView];
          [v4 layoutMargins];
          sub_769DA0();
          [v26 sizeThatFits:?];
          [v4 layoutMargins];
          sub_769DC0();
          v28 = v27;
          v30 = v29;
        }

        else
        {
          v28 = *v25;
          v30 = *(v25 + 1);
        }

        *v25 = v28;
        *(v25 + 1) = v30;
        v25[16] = 0;
        v31 = [v1 view];
        if (v31)
        {
          v32 = v31;
          [v31 safeAreaInsets];
          v34 = v33;

          if (v34 <= 28.0)
          {
            if ((a1 & 1) == 0)
            {
LABEL_12:
              v37 = [v1 view];
              if (!v37)
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v38 = v37;
              [v37 bounds];
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v46 = v45;

              v69.origin.x = v40;
              v69.origin.y = v42;
              v69.size.width = v44;
              v69.size.height = v46;
              CGRectGetMaxY(v69);
              goto LABEL_17;
            }
          }

          else
          {
            v35 = [v1 view];
            if (!v35)
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v36 = v35;
            [v35 safeAreaInsets];

            if ((a1 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v47 = [v1 view];
          if (!v47)
          {
LABEL_25:
            __break(1u);
            return;
          }

          v48 = v47;
          [v47 bounds];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v70.origin.x = v50;
          v70.origin.y = v52;
          v70.size.width = v54;
          v70.size.height = v56;
          CGRectGetMaxY(v70);
LABEL_17:
          v57 = [v1 view];
          if (v57)
          {
            v58 = v57;
            [v57 bounds];
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;

            v71.origin.x = v60;
            v71.origin.y = v62;
            v71.size.width = v64;
            v71.size.height = v66;
            CGRectGetMidX(v71);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_9FAB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    if (v3)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        v6 = *&v4[qword_99A4C0];
        if (v6)
        {

          [v3 _systemContentInset];
          v8 = v7;
          [v3 contentOffset];
          v10 = v9;
          [v3 contentInset];
          (*(v6 + 16))(v8 + v10 + v11 > *(v6 + 32));
        }

        else
        {
        }
      }
    }
  }
}

void sub_9FBD8(char a1)
{
  v2 = *&v1[qword_942618];
  if (!v2)
  {
    return;
  }

  v56 = v2;
  sub_9F754(a1 & 1);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = &v1[qword_942638];
  if ((v1[qword_942638 + 32] & 1) == 0 && CGRectEqualToRect(*&v4, *v12))
  {
    goto LABEL_26;
  }

  v55 = v11;
  v56 = v56;
  [v56 frame];
  MinY = CGRectGetMinY(v64);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v65.origin.x = v17;
  v65.origin.y = v19;
  v65.size.width = v21;
  v65.size.height = v23;
  MaxY = CGRectGetMaxY(v65);
  v66.origin.x = v8;
  v66.origin.y = v9;
  v66.size.width = v10;
  v66.size.height = v55;
  v54 = CGRectGetMinY(v66);
  v25 = [v1 view];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = MaxY <= MinY;
  [v25 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v67.origin.x = v29;
  v67.origin.y = v31;
  v67.size.width = v33;
  v67.size.height = v35;
  v36 = CGRectGetMaxY(v67) <= v54 || v27;
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v55;
  *(v12 + 32) = 0;
  v37 = qword_942630;
  v38 = *&v1[qword_942630];
  if (v38)
  {
    v39 = v38;
    if ([v39 isRunning])
    {
      [v39 stopAnimation:1];

      v39 = *&v1[v37];
      *&v1[v37] = 0;
    }
  }

  if (a1)
  {
    [v56 setHidden:0];
    if (v36)
    {
      v40 = 2;
LABEL_18:

      v41 = swift_allocObject();
      *(v41 + 2) = v1;
      v41[3] = v8;
      v41[4] = v9;
      v41[5] = v10;
      v41[6] = v55;
      v42 = objc_allocWithZone(UIViewPropertyAnimator);
      v61 = sub_A2794;
      v62 = v41;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_23F0CC;
      v60 = &unk_882698;
      v43 = _Block_copy(&aBlock);
      v44 = v1;

      v45 = [v42 initWithDuration:v40 curve:v43 animations:0.2];
      _Block_release(v43);
      v46 = *&v1[v37];
      *&v1[v37] = v45;

      v47 = *&v1[v37];
      if (v47 && (v48 = swift_allocObject(), *(v48 + 16) = a1 & 1, *(v48 + 24) = v56, v61 = sub_A27F8, v62 = v48, aBlock = _NSConcreteStackBlock, v58 = 1107296256, v59 = sub_19EE34, v60 = &unk_8826E8, v49 = _Block_copy(&aBlock), v50 = v56, v51 = v47, , [v51 addCompletion:v49], _Block_release(v49), v51, (v52 = *&v1[v37]) != 0))
      {
        v53 = v52;
        [v53 startAnimation];
      }

      else
      {
      }

      return;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
  }

  else
  {
    if (v36)
    {
      v40 = 1;
      goto LABEL_18;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
    [v56 setHidden:1];
  }

LABEL_26:
}

void sub_A00BC(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_9FBD8(a1 & 1);
  }
}

void sub_A0118(void *a1)
{
  v3 = a1;
  v1 = [v3 collectionView];
  [v1 reloadData];

  sub_9F178(v2);
}

void sub_A01A4()
{
  if (*(*&v0[qword_942608] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_A0244(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
      v8 = Strong;

      v9 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {

        sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32A6C0(a1, 1, v7, v5);

        (*(v10 + 8))(v5, v9);
      }
    }
  }
}

uint64_t sub_A0400(uint64_t a1)
{
  v2 = sub_7570A0();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A40, &unk_780300);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  sub_61B4C(a1, v9, v17);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_61BB0(v9, v20);
LABEL_9:
    v25 = 0;
    return v25 & 1;
  }

  v21 = sub_BD88(&qword_940A50, &qword_782590);
  sub_50774(&v9[*(v21 + 48)], v19);
  sub_75F250();
  v22 = *(v4 + 48);
  sub_1ED18(v15, v6, &unk_93FD30, qword_77F240);
  sub_1ED18(v19, &v6[v22], &unk_93FD30, qword_77F240);
  v23 = v31;
  v24 = *(v31 + 48);
  if (v24(v6, 1, v2) != 1)
  {
    sub_1ED18(v6, v12, &unk_93FD30, qword_77F240);
    if (v24(&v6[v22], 1, v2) != 1)
    {
      v27 = v30;
      (*(v23 + 32))(v30, &v6[v22], v2);
      sub_A287C(&qword_947410, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = v23;
      v25 = sub_7691C0();
      v29 = *(v28 + 8);
      v29(v27, v2);
      sub_10A2C(v15, &unk_93FD30, qword_77F240);
      sub_10A2C(v19, &unk_93FD30, qword_77F240);
      v29(v12, v2);
      sub_10A2C(v6, &unk_93FD30, qword_77F240);
      return v25 & 1;
    }

    sub_10A2C(v15, &unk_93FD30, qword_77F240);
    sub_10A2C(v19, &unk_93FD30, qword_77F240);
    (*(v23 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10A2C(v15, &unk_93FD30, qword_77F240);
  sub_10A2C(v19, &unk_93FD30, qword_77F240);
  if (v24(&v6[v22], 1, v2) != 1)
  {
LABEL_8:
    sub_10A2C(v6, &qword_940A40, &unk_780300);
    goto LABEL_9;
  }

  sub_10A2C(v6, &unk_93FD30, qword_77F240);
  v25 = 1;
  return v25 & 1;
}

double sub_A08BC()
{

  sub_F704(*(v0 + qword_9425E8), *(v0 + qword_9425E8 + 8));

  return result;
}

double sub_A0980(uint64_t a1)
{

  sub_F704(*(a1 + qword_9425E8), *(a1 + qword_9425E8 + 8));

  return result;
}

uint64_t type metadata accessor for ArcadeDiffablePageViewController(uint64_t a1)
{
  result = qword_942670;
  if (!qword_942670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_A0BA0(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a1 & 1;
  *(v9 + 24) = a1;
  v11 = a2 & 1;
  *(v9 + 25) = a2;

  if ((a3 & 1) != 0 && (v12 = [v4 transitionCoordinator]) != 0)
  {
    v13 = v12;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_A285C;
    *(v14 + 24) = v9;
    v24 = sub_1F81C;
    v25 = v14;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_6C6800;
    v23 = &unk_882788;
    v15 = _Block_copy(&v20);

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v11;
    *(v17 + 25) = v10;
    v24 = sub_A286C;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_6C6800;
    v23 = &unk_8827D8;
    v18 = _Block_copy(&v20);

    [v13 animateAlongsideTransition:v15 completion:v18];

    _Block_release(v18);
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_A11B8(v8, v10, a2 & 1);
  }

  return result;
}

void sub_A0E48(uint64_t a1, double a2)
{
  v3 = sub_7653A0();
  v25[3] = v3;
  v25[4] = sub_A287C(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v4 = sub_B1B4(v25);
  (*(*(v3 - 8) + 104))(v4, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v3);
  LOBYTE(v3) = sub_765C30();
  sub_BEB8(v25);
  if ((v3 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6 && (v7 = v6, v8 = [v6 navigationController], v7, v8))
  {
    v9 = [v8 viewControllers];

    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v10 = sub_769460();

    if (v10 >> 62)
    {
      v11 = sub_76A860();
      if (v11)
      {
LABEL_6:
        v12 = __OFSUB__(v11, 1);
        v13 = v11 - 1;
        if (v12)
        {
          __break(1u);
        }

        else if ((v10 & 0xC000000000000001) == 0)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v13 < *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            v14 = *(v10 + 8 * v13 + 32);
            goto LABEL_11;
          }

          __break(1u);
          return;
        }

        v14 = sub_76A770();
LABEL_11:
        v15 = v14;

        if (!Strong)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (!v15)
        {
          goto LABEL_27;
        }

        sub_BE70(0, &qword_9434E0, UIViewController_ptr);
        v16 = sub_76A1C0();

        if ((v16 & 1) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v11)
      {
        goto LABEL_6;
      }
    }

    v15 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  if (v15)
  {
    Strong = v15;
    goto LABEL_27;
  }

LABEL_17:
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    if (*&v17[qword_99A4B0])
    {

      goto LABEL_21;
    }

    v18 = v17;
    v19 = [v17 traitCollection];
    v20 = sub_7699B0();

    if (v20)
    {
LABEL_21:
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v23 = *(v21 + qword_99A4B0);
        if (v23)
        {
          [*(v23 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:a2];
        }

        sub_3B76B0(a2 == 1.0);
      }
    }
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24)
  {
    return;
  }

  Strong = v24;
  sub_9D10C();
LABEL_27:
}

void sub_A11B8(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_71DFF0() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_99A4B0]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_3B76B0(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_99A4B8];
        if (v13)
        {
          v14 = *&v6[qword_99A4B0];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_7699B0(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_99A4B0];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_A1418(void *a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = &UITransitionContextFromViewControllerKey;
    if ((a3 & 1) == 0)
    {
      v9 = &UITransitionContextToViewControllerKey;
    }

    v10 = *v9;
    if ([a1 isCancelled])
    {
      v11 = [a1 viewControllerForKey:v10];
      if (v11)
      {
        v12 = v11;
        sub_BE70(0, &qword_9434E0, UIViewController_ptr);
        v13 = v8;
        v14 = sub_76A1C0();

        if (v14)
        {
          swift_unknownObjectWeakInit();
          sub_3B7448(&v15, (a4 & 1) == 0, (a3 & 1) == 0);
          swift_unknownObjectWeakDestroy();

          return;
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

unint64_t sub_A1578(uint64_t a1)
{
  sub_75BB40();
  sub_A287C(&qword_942C50, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
  v2 = sub_769150();

  return sub_A1610(a1, v2);
}

unint64_t sub_A1610(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_75BB40();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_A287C(&qword_942C58, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
      v16 = sub_7691C0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_A17D4(uint64_t a1)
{
  v2 = sub_BD88(&qword_942C40, &qword_782598);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_942C48, &unk_7825A0);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_942C40, &qword_782598);
      result = sub_A1578(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_75BB40();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_7570A0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_A19F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v5 - 8);
  v31 = sub_758800();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_758880();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  *(v2 + qword_9425E0) = 1;
  v14 = (v2 + qword_9425E8);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + qword_9425F0) = 2;
  v15 = (v2 + qword_99A4B0);
  *v15 = 0;
  v15[1] = 0;
  *(v2 + qword_99A4B8) = 0;
  *(v2 + qword_942600) = 0;
  *(v2 + qword_942608) = _swiftEmptySetSingleton;
  v16 = v2 + qword_942610;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v2 + qword_942618) = 0;
  *(v2 + qword_99A4C0) = 0;
  v17 = v2 + qword_942620;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_942628;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v2 + qword_942630) = 0;
  v19 = v2 + qword_942638;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 1;
  type metadata accessor for InAppMessagesManager();
  sub_768900();
  sub_768ED0();
  *(v2 + qword_9425D8) = v35;
  sub_764300();
  swift_allocObject();

  *(v2 + qword_942640) = sub_7642F0();
  (*(v6 + 104))(v8, enum case for StoreTab.Identifier.arcade(_:), v31);

  sub_75F250();

  sub_A17D4(_swiftEmptyArrayStorage);
  sub_758810();
  v20 = v32;
  (*(v34 + 16))(v10, v13, v32);
  v21 = objc_allocWithZone(type metadata accessor for ArcadeHeaderButtonContainer());

  *(v2 + qword_9425F8) = sub_4EE6F0(v10, a2);

  v22 = sub_468BF0(a1, a2);
  sub_763730();
  v23 = v22;
  sub_768ED0();
  v24 = v35;
  v25 = *(*&v23[qword_9425F8] + OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_accountButton);
  sub_763720();

  sub_BD88(&qword_9477F0, qword_780200);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_77B6D0;
  v27 = sub_767890();
  *(v26 + 32) = v27;
  *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_7698F0();
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77DC20;
  *(v28 + 32) = sub_767B80();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v28 + 48) = sub_7676E0();
  *(v28 + 56) = &protocol witness table for UITraitLayoutDirection;
  *(v28 + 64) = v27;
  *(v28 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769900();

  swift_unknownObjectRelease();

  (*(v34 + 8))(v13, v20);
  return v23;
}

void sub_A1F70(uint64_t a1)
{
  v2 = sub_768380();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7683C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + qword_942628;
  if ((*(a1 + qword_942628 + 16) & 1) == 0)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v16 = v8;
    sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    v15 = sub_769970();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_A22BC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_882620;
    v13 = _Block_copy(aBlock);

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A287C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350, &unk_77F850);
    sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
    sub_76A5A0();
    v14 = v15;
    sub_769980();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v16);
  }
}

uint64_t sub_A2284()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_A22C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_A22DC(__n128 a1)
{
  v2 = v1;
  v3 = qword_99A4B8;
  if (!*&v1[qword_99A4B8])
  {
    sub_75FA30();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NavigationBarVisibilityScrollObserver();
    v5 = swift_allocObject();
    *(v5 + 32) = xmmword_782450;
    *(v5 + 16) = sub_A281C;
    *(v5 + 24) = v4;
    *&v1[v3] = v5;

    sub_A287C(&qword_942C78, type metadata accessor for NavigationBarVisibilityScrollObserver, &unk_792F98);
    sub_75FA40();
  }

  v6 = [v1 view];
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *(v8 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v9 & 1) == 0)
  {
    v10 = [v2 navigationController];
    if (v10)
    {

      if (sub_71DFF0())
      {
        swift_unknownObjectWeakInit();
        sub_3B7448(v42, 0, 0);
        swift_unknownObjectWeakDestroy();
        goto LABEL_16;
      }
    }
  }

  v11 = [v2 view];
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = v11;
  v13 = [v11 safeAreaLayoutGuide];

  [v13 layoutFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  MinY = CGRectGetMinY(v43);
  if (*&v2[v3])
  {

    v23 = [v2 collectionView];
    if (!v23)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v24 = v23;
    sub_2ED8B8(v23, MinY);
  }

  v25 = [v2 collectionView];
  if (!v25)
  {
    goto LABEL_28;
  }

  v26 = v25;
  [v25 _pocketInsets];
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [v2 collectionView];
  if (!v33)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = v33;
  [v33 _setPocketInsets:{MinY, v28, v30, v32}];

LABEL_16:
  v35 = [v2 viewIfLoaded];
  if (!v35 || (v36 = v35, v37 = [v35 window], v36, !v37) || (v38 = objc_msgSend(v37, "isHidden"), v37, v38))
  {
    v39 = [v2 presentedViewController];
    if (v39)
    {
    }

    else if ([v2 isViewLoaded])
    {
      swift_unknownObjectWeakInit();
      sub_3B7448(v42, 1, 1);
      swift_unknownObjectWeakDestroy();
      v40 = sub_7653A0();
      v42[3] = v40;
      v42[4] = sub_A287C(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
      v41 = sub_B1B4(v42);
      (*(*(v40 - 8) + 104))(v41, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v40);
      LOBYTE(v40) = sub_765C30();
      sub_BEB8(v42);
      if (v40)
      {
        sub_9D10C();
      }
    }
  }

  sub_9D10C();
}

uint64_t sub_A275C()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_A2794()
{
  result = *(*(v0 + 16) + qword_942618);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_A27C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_A27F8(id result)
{
  if ((*(v1 + 16) & 1) == 0 && !result)
  {
    return [*(v1 + 24) setHidden:1];
  }

  return result;
}

uint64_t sub_A2824()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_A287C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A28F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A2930()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A2A50()
{
  v0 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  sub_A2FE8(&qword_9411C8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_7A67EC);
  sub_A2FE8(&qword_9411D0, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_7A66C8);
  sub_A2FE8(&qword_9411D8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_7A67A4);
  return v0;
}

uint64_t sub_A2B1C()
{
  sub_765B70();
  sub_A2FE8(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_75C750();
  if (!v2)
  {
    return 0;
  }

  sub_765B20();
  v0 = sub_75B080();

  result = 0;
  if (v0 > 6)
  {
    if (v0 == 7)
    {
      return type metadata accessor for GridTodayBrickCollectionViewCell(0);
    }

    else if (v0 == 8)
    {
      return type metadata accessor for VideoTodayBrickCollectionViewCell(0);
    }
  }

  else if (v0)
  {
    if (v0 == 1)
    {
      return type metadata accessor for BrandedAppTodayBrickCollectionViewCell(0);
    }
  }

  else
  {
    return type metadata accessor for TodayBrickCollectionViewCellWithBackground(0);
  }

  return result;
}

uint64_t sub_A2C28()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = sub_BD88(&unk_94F1F0, &qword_782290);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.smallStoryCard(_:), v0);
  sub_A2FE8(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
  }

  else
  {
    v12 = sub_76A950();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_A2B1C();
  if (result)
  {
    v15 = result;
    sub_A2FE8(&qword_9411C8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_7A67EC);
    sub_A2FE8(&qword_9411D0, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_7A66C8);
    sub_A2FE8(&qword_9411D8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_7A67A4);
    return v15;
  }

  return result;
}

uint64_t sub_A2FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_A3030()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 _usesMinimumSafeAreas];

  v4 = [v0 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = &selRef__minimumSafeAreaInsets;
LABEL_7:
      [v4 *v6];

      return;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v6 = &selRef_safeAreaInsets;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_A310C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v4 - 8);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = &v85 - v8;
  v9 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v9 - 8);
  v101 = &v85 - v10;
  v11 = sub_75A6B0();
  __chkstk_darwin(v11 - 8);
  v100 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v99 = &v85 - v14;
  v15 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v15 - 8);
  v107 = &v85 - v16;
  v98 = sub_75A6E0();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_75DC30();
  v19 = *(v103 - 8);
  __chkstk_darwin(v103);
  v106 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_766690();
  v104 = *(v21 - 8);
  v105 = v21;
  __chkstk_darwin(v21);
  v96 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_7656A0();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v85 - v25;
  v95 = sub_7656C0();
  v26 = *(v95 - 8);
  __chkstk_darwin(v95);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v85 - v30;
  sub_759490();
  sub_A4190(&unk_93EC00, &type metadata accessor for FramedVideo, &protocol conformance descriptor for FramedMedia);
  v108 = a1;
  sub_75C750();
  v32 = aBlock[0];
  if (aBlock[0])
  {
    v88 = v6;
    v89 = a2;
    v90 = v19;

    v33 = sub_759450();
    v34 = [v33 length];

    v35 = &selRef_setSpeed_;
    v109 = v18;
    if (v34 < 1)
    {
      v47 = v110;
      [*&v110[qword_964310] setText:0];
      v47[qword_9A0A18] = 0;
      [*&v47[qword_964300] setHidden:1];
    }

    else
    {
      v86 = v28;
      v87 = v26;
      v36 = sub_759450();
      swift_getKeyPath();
      sub_75C7B0();

      v37 = aBlock[6];
      v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
      v39 = [v36 length];
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = v37;
      *(v40 + 32) = v38;
      *(v40 + 40) = 1;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_119AC;
      *(v41 + 24) = v40;
      aBlock[4] = sub_2636C;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10C1C;
      aBlock[3] = &unk_8829B8;
      v42 = _Block_copy(aBlock);
      v43 = v37;
      v44 = v38;

      [v36 enumerateAttributesInRange:0 options:v39 usingBlock:{0x100000, v42}];

      _Block_release(v42);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return;
      }

      v46 = v110;
      [*&v110[qword_964310] setAttributedText:v44];
      v46[qword_9A0A18] = 1;
      [*&v46[qword_964300] setHidden:0];

      v18 = v109;
      v26 = v87;
      v28 = v86;
      v35 = &selRef_setSpeed_;
    }

    v48 = *&v110[qword_964308];
    sub_759460();
    if (v49)
    {
      v50 = sub_769210();
    }

    else
    {
      v50 = 0;
    }

    [v48 v35[511]];

    if (sub_759430())
    {
      v51 = [v110 contentView];
      [v51 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }

    else
    {
      swift_getKeyPath();
      sub_75C7B0();

      sub_765580();
      v52 = *(v26 + 8);
      v53 = v95;
      v52(v31, v95);
      swift_getKeyPath();
      sub_75C7B0();

      sub_7655A0();
      v52(v28, v53);
      v86 = v31;
      v54 = v93;
      v55 = *(v93 + 104);
      v87 = v32;
      v56 = v92;
      v57 = v94;
      v55(v92, enum case for PageGrid.Direction.vertical(_:), v94);
      swift_getKeyPath();
      sub_75C7B0();

      sub_765590();
      v52(v28, v53);
      (*(v54 + 16))(v91, v56, v57);
      sub_40DC7C(0.0);
      v58 = v86;
      sub_765670();
      (*(v54 + 8))(v56, v57);
      v59 = [v110 contentView];
      sub_765620();
      [v59 setLayoutMargins:?];

      v52(v58, v53);
      v18 = v109;
    }

    v60 = v106;
    v61 = v104;
    v62 = sub_759480();
    v63 = v105;
    if (v62)
    {
      v64 = v110;
      v65 = [v110 contentView];
      sub_2630C();
      sub_75D650();

      sub_765260();
      v66 = v96;
      sub_7666A0();
      sub_766600();
      v68 = v67;
      v70 = v69;

      (*(v61 + 8))(v66, v63);
      v71 = &v64[qword_99C4E0];
      *v71 = v68;
      *(v71 + 1) = v70;
    }

    if (sub_759470())
    {
      (*(v97 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v98);
      if (sub_759480())
      {
        sub_765260();
        sub_7666A0();

        v72 = 0;
      }

      else
      {
        v72 = 1;
      }

      (*(v61 + 56))(v107, v72, 1, v63);
      sub_764B60();
      sub_764BA0();
      sub_764B70();
      sub_764B50();
      sub_764BB0();
      sub_75DC10();
      sub_75C360();
      sub_768880();
      sub_764B40();
      v73 = v101;
      sub_764BD0();
      v74 = sub_7570A0();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      v75 = v102;
      sub_764B90();
      v76 = v88;
      sub_764B80();
      type metadata accessor for VideoView(0);
      sub_A4190(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v77 = sub_75C340();
      sub_10A2C(v76, &unk_948710, &qword_77FF90);
      sub_10A2C(v75, &unk_948710, &qword_77FF90);
      sub_10A2C(v73, &unk_93FD30, qword_77F240);
      sub_10A2C(aBlock, &unk_9443A0, &unk_77E240);
      sub_287808();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v79 = Strong;
        v80 = *&v110[qword_94C798];
        v81 = v90;
        if (v80)
        {
          v82 = *&v110[qword_94C798];
        }

        else
        {
          v82 = [v110 contentView];
          v80 = 0;
        }

        v83 = v80;
        [v82 addSubview:v79];
        [v110 setNeedsLayout];
      }

      else
      {

        v81 = v90;
      }

      (*(v81 + 8))(v60, v103);
    }

    v84 = sub_759440();

    v110[qword_9A0A10] = v84 & 1;
    sub_26698();
  }
}

uint64_t sub_A4024@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_9A0A08;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_A4080(uint64_t a1)
{
  v3 = qword_9A0A08;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_A4148()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_286FD0(0);
}

uint64_t sub_A4190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A41DC()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_A4234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_A4340(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionViewTableLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_A4398()
{
  v0 = sub_BD88(&qword_942DB0, &qword_782810);
  __chkstk_darwin(v0);
  v1 = sub_BD88(&qword_942DB8, &qword_782818);
  sub_161DC(v1, qword_942D98);
  sub_BE38(v1, qword_942D98);
  sub_A44DC();
  sub_7667C0();
  sub_A4528();
  sub_767480();
  return result;
}

void sub_A4478(void *a1@<X8>)
{
  v2 = objc_allocWithZone(LPLinkView);
  sub_757040(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  *a1 = v6;
}

unint64_t sub_A44DC()
{
  result = qword_942DC0;
  if (!qword_942DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_942DC0);
  }

  return result;
}

unint64_t sub_A4528()
{
  result = qword_942DC8;
  if (!qword_942DC8)
  {
    sub_133D8(&qword_942DB0, &qword_782810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942DC8);
  }

  return result;
}

char *sub_A458C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackIconView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_gradientView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackGradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25[0] = sub_39ED38;
  v25[1] = 0;
  v25[2] = sub_756A94;
  v25[3] = 0;
  v25[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[5] = 0;
  v25[6] = sub_39ED38;
  v25[7] = 0;
  v25[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[9] = 0;
  v25[10] = sub_234F64;
  v25[11] = 0;
  v26 = 0x4000000000000000uLL;
  v27 = 0;
  v28 = 0x4018000000000000;
  v29 = 0;
  v30 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] = sub_367388(v25, &v26);
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_gradientView;
  v15 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_gradientView];
  v16 = v13;
  v17 = v15;
  [v17 frame];
  [v17 setFrame:?];

  [*&v13[v14] setClipsToBounds:1];
  [*&v13[v14] _setContinuousCornerRadius:20.0];
  [v16 _setContinuousCornerRadius:20.0];
  v18 = [v16 contentView];
  [v18 addSubview:*&v13[v14]];

  v19 = [v16 contentView];
  [v19 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView]];

  v20 = [v16 contentView];
  [v20 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView]];

  v21 = [v16 contentView];
  [v21 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer]];

  v22 = [v16 contentView];
  [v22 setClipsToBounds:1];

  sub_BE70(0, &qword_941EC8, UITraitCollection_ptr);
  sub_769A40();
  sub_769F40();
  swift_unknownObjectRelease();

  sub_28053C();

  return v16;
}

id sub_A4990()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning);
  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView) + qword_950CC0) = v1 & 1;
  sub_36851C();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning;
  v2[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] = v1 & 1;
  [v2 setHidden:(v2[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v1 ^ 1u)];
  v2[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isLayoutRequired] = (v2[v3] & 1) == 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_A4A94()
{
  v1 = [v0 traitCollection];
  v2 = v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_4C0ED8(v1, v0[*v4], &v31);
  v5 = v34;

  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind];
  v9 = v0[v3];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = v0[v10];
  v12 = v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
  v13 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v26 = v31;
  v27 = v32;
  v28 = v33;
  *&v29 = v5;
  *(&v29 + 1) = v6;
  *v30 = v7;
  *&v30[8] = v8;
  v30[16] = v12;
  v30[17] = v11;
  v30[18] = v13;
  v30[19] = v9;
  v30[20] = 0;
  v35 = v31;
  v36 = v32;
  *&v39[13] = *&v30[13];
  v38 = v29;
  *v39 = *v30;
  v37 = v33;
  v14 = v6;
  v15 = v7;
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v0 traitCollection];
  sub_11CCCC(v24, v17, v19, v21, v23);

  return sub_A91BC(&v26);
}

void sub_A4C38()
{
  v1 = v0;
  v2 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v61 - v7;
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
    v12 = *(v10 + 24);
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v13] == 6 && (v14 = [v0 traitCollection], v15 = sub_769A00(), v14, (v15 & 1) == 0))
    {
      [v1 bounds];
      sub_A5234(v12, v37, v38);
      [v1 bounds];
      CGRectGetMidX(v68);
      [v1 bounds];
      CGRectGetMinY(v69);
      [v1 bounds];
      CGRectGetWidth(v70);
      [v1 bounds];
      CGRectGetHeight(v71);
      v39 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v1[v39], v8);
      if (v1[v11])
      {
        v40 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v40 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v41 = v1[*v40];
      v42 = [v1 traitCollection];
      sub_28423C(v8, v41, v42);

      sub_10A2C(v8, &unk_955AA0, &qword_783ED0);
      sub_5FC64(&v1[v39], v4);
      if (v1[v11])
      {
        v43 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v43 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v44 = v1[*v43];
      v45 = [v1 traitCollection];
      sub_28423C(v4, v44, v45);

      sub_10A2C(v4, &unk_955AA0, &qword_783ED0);
      sub_769D10();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = [v9 traitCollection];
      sub_31CCA4(v54, v51, v53);

      v72.origin.x = v47;
      v72.origin.y = v49;
      v72.size.width = v51;
      v72.size.height = v53;
      CGRectGetMidX(v72);
      v73.origin.x = v47;
      v73.origin.y = v49;
      v73.size.width = v51;
      v73.size.height = v53;
      CGRectGetMinY(v73);
      v55 = [v1 traitCollection];
      [v1 bounds];
      sub_769CA0();
      v57 = v56;
      MinY = v58;
      v27 = v59;
      v29 = v60;

      v36 = v57;
    }

    else
    {
      [v1 bounds];
      sub_A5234(v12, v16, v17);
      MinY = v18;
      [v1 bounds];
      CGRectGetMinX(v62);
      [v1 bounds];
      CGRectGetMinY(v63);
      [v1 bounds];
      CGRectGetWidth(v64);
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] frame];
      CGRectGetMinY(v65);
      sub_769D10();
      x = v66.origin.x;
      y = v66.origin.y;
      width = v66.size.width;
      height = v66.size.height;
      v24 = CGRectGetHeight(v66);
      v25 = [v9 traitCollection];
      sub_31CCA4(v25, 1.79769313e308, v24);
      v27 = v26;
      v29 = v28;

      if (v1[v11])
      {
        v30 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v30 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v31 = x;
      v32 = y;
      v33 = width;
      v34 = height;
      if (v1[*v30] == 4)
      {
        MinY = CGRectGetMinY(*&v31);
      }

      else
      {
        v35 = CGRectGetMidY(*&v31) + v29 * -0.5;
        if (v35 > MinY)
        {
          MinY = v35;
        }
      }

      [v1 bounds];
      v36 = floor(CGRectGetMidX(v67) + v27 * -0.5);
    }

    [v9 setFrame:{v36, MinY, v27, v29}];
  }
}

uint64_t sub_A5234(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v6 - 8);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v62 - v22;
  v24 = [v3 traitCollection];
  v64 = sub_769A00();

  v25 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v4[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] != 1)
  {
    if (a1 == 3)
    {
      goto LABEL_13;
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

LABEL_18:
    v31 = v4[v25];
    if (v4[v25])
    {
      v32 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v32 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v33 = v4[*v32];
    if (v33 != 4)
    {
      if ((v33 != 6) | v64 & 1)
      {
        goto LABEL_39;
      }

      v37 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v4[v37], v19);
      if (v31)
      {
        v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v39 = v4[*v38];
      v40 = [v4 traitCollection];
      sub_28423C(v19, v39, v40);

      v41 = v19;
      goto LABEL_57;
    }

    return sub_7697D0();
  }

  if ((v4[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v26 = [v4 traitCollection], v27 = sub_7699D0(), v26, (v27 & 1) == 0))
  {
    if (a1 == 1)
    {
LABEL_23:
      v34 = v4[v25];
      if (v4[v25])
      {
        v35 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v35 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v36 = v4[*v35];
      if (v36 == 4)
      {
        return sub_7697D0();
      }

      if ((v36 != 6) | v64 & 1)
      {
LABEL_39:
        if (v4[v25] == 1)
        {
          v46 = [v4 traitCollection];
          sub_7699F0();

          v47 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_5FC64(&v4[v47], v13);
          v48 = [v4 traitCollection];
          sub_28377C(v13, v48);
          goto LABEL_50;
        }

LABEL_41:
        v49 = [v4 traitCollection];
        v50 = sub_7699F0();

        v51 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
        if (v50)
        {
          swift_beginAccess();
          sub_5FC64(&v4[v51], v10);
          if (v4[v25])
          {
            v52 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          else
          {
            v52 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
          }

          v53 = v4[*v52];
          v54 = [v4 traitCollection];
          sub_28423C(v10, v53, v54);

          v13 = v10;
          goto LABEL_51;
        }

        swift_beginAccess();
        v13 = v63;
        sub_5FC64(&v4[v51], v63);
        if (v4[v25])
        {
          v55 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v55 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v56 = v4[*v55];
        v48 = [v4 traitCollection];
        sub_28423C(v13, v56, v48);
LABEL_50:

LABEL_51:
        sub_10A2C(v13, &unk_955AA0, &qword_783ED0);
        return sub_7697D0();
      }

      v58 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v4[v58], v23);
      if (v34)
      {
        v59 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v59 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v60 = v4[*v59];
      v61 = [v4 traitCollection];
      sub_28423C(v23, v60, v61);

      v41 = v23;
LABEL_57:
      sub_10A2C(v41, &unk_955AA0, &qword_783ED0);
      return sub_7697D0();
    }
  }

  else if (a1 == 1)
  {
    goto LABEL_23;
  }

  if (a1 == 2)
  {
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    goto LABEL_39;
  }

LABEL_13:
  v28 = v4[v25];
  if (v4[v25])
  {
    v29 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v29 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v30 = v4[*v29];
  if (v30 != 4)
  {
    if ((v30 != 6) | v64 & 1)
    {
      goto LABEL_39;
    }

    v42 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_5FC64(&v4[v42], v16);
    if (v28)
    {
      v43 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v43 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v44 = v4[*v43];
    v45 = [v4 traitCollection];
    sub_28423C(v16, v44, v45);

    v41 = v16;
    goto LABEL_57;
  }

  return sub_7697D0();
}

double sub_A5930()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration))
  {
    swift_unknownObjectWeakAssign();

    sub_31BE4C();
  }

  *(v1 + v2) = 0;

  sub_4BC094();
  sub_55D954(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;

  return result;
}

void sub_A5A50()
{
  sub_28399C();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  [v0 _setContinuousCornerRadius:v2];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_gradientView] _setContinuousCornerRadius:v2];
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay])
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay + 8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    [v6 _setContinuousCornerRadius:v2];
  }

  *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_950CB8) = v0[v1];
  sub_3680EC();
  *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isExpanded) = v0[v1];

  sub_28053C();
}

id sub_A5B9C()
{
  result = [v0 setNeedsLayout];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v3 = v0[*v2];
  if (v3 != 7)
  {
    *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_950C78) = v3;
    sub_367E48();
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] = v3;
    if (v3 == 4)
    {
      v5 = v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    [v4 setHidden:v5 & 1];
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
    v6[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_sizeCategory] = v3;
    [v6 setNeedsLayout];

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_A5CCC(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_A8F3C(v10, &v4[v12]);
    swift_endAccess();
    v4[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(ObjectType, a2);
    sub_A9030();
    v13 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v13);
  }

  v14 = swift_dynamicCastClass();
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      v15 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
      v16 = v14;
      v17 = a1;
      v18 = v15;
      sub_369B90(v18);

      [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v16, "overrideUserInterfaceStyle")}];

      sub_31BD84(v19);

      sub_55D954(v20);
      *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks] = *&v16[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks];

      [v4 setNeedsLayout];
    }
  }
}

void sub_A5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v167 = a4;
  v7 = a2;
  v9 = sub_760260();
  v164 = *(v9 - 8);
  __chkstk_darwin(v9);
  v177 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765B10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v165 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v174 = &v150 - v15;
  __chkstk_darwin(v16);
  v173 = &v150 - v17;
  v163 = sub_75F730();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v172 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v19 - 8);
  v21 = &v150 - v20;
  v22 = sub_7656C0();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a3, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v21, &v5[v24]);
  swift_endAccess();
  sub_28026C(v7);
  v25 = [v5 backgroundView];
  if (v25)
  {
    v26 = v25;
    v27 = sub_765A30();
    if (!v27)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v27 = sub_76A060();
    }

    v28 = v27;
    [v26 setBackgroundColor:v27];
  }

  sub_765B20();
  v29 = sub_757A30();
  v30 = swift_dynamicCastClass();

  if (!v30)
  {
    sub_765B20();
    sub_75E6F0();
    v31 = swift_dynamicCastClass();

    if (!v31)
    {
      sub_765B20();
      sub_7577E0();
      v32 = swift_dynamicCastClass();

      if (!v32)
      {
        sub_765B20();
        sub_75DB40();
        v33 = swift_dynamicCastClass();

        if (!v33)
        {
          return;
        }
      }
    }
  }

  v159 = v9;
  v170 = v5;
  v34 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v35 = sub_765B50();
  v171 = v36;
  v176 = sub_765B40();
  v168 = v37;
  v152 = sub_765A10();
  v169 = v38;
  sub_765A80();
  v39 = sub_765A60();
  v178 = v40;
  v161 = a3;
  v166 = v11;
  v160 = v12;
  v158 = v29;
  v153 = v39;
  if (v7 == 4)
  {
    (*(v12 + 104))(v173, enum case for TodayCard.Style.dark(_:), v11);
    v157 = sub_64A6C;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v156 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v155 = sub_234F64;
    v154 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    sub_765B30();
    v157 = sub_64A6C;
    v154 = sub_7566F8;
    v41 = sub_7568B4;
    v156 = sub_7568E0;
    v155 = sub_756724;
  }

  v175 = v7;
  v42 = v7;
  sub_765AA0();
  v34[qword_950CA8] = 0;
  v43 = *&v34[qword_950C90];
  *(v43 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v44 = *&v34[qword_950C88];
  sub_728444(v35, v171);
  v45 = sub_760250();
  v46 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v47 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v42 == 4 && (v45 & 1) == 0)
  {
    if (([v47 isHidden] & 1) != 0 || (v44[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v44[v46] setHidden:1];
      goto LABEL_27;
    }

    [*&v44[v46] setHidden:1];
    v44[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_25;
  }

  v48 = [v47 text];
  if (v48)
  {
    v49 = v48;
    sub_769240();
  }

  v50 = sub_7692D0();
  v51 = v50 & 1;

  if (v51 != [*&v44[v46] isHidden] && (v44[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v50 & 1) == 0)
    {
      [*&v44[v46] setAlpha:0.0];
      v151 = objc_opt_self();
      [v151 inheritedAnimationDuration];
      v53 = v52;
      v54 = swift_allocObject();
      *(v54 + 16) = v44;
      v183 = sub_A922C;
      v184 = v54;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_23F0CC;
      v182 = &unk_882B08;
      v150 = _Block_copy(&aBlock);
      v55 = v44;

      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      v183 = sub_A9238;
      v184 = v56;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_3D6D80;
      v182 = &unk_882B58;
      v57 = _Block_copy(&aBlock);
      v58 = v55;

      v59 = v150;
      [v151 animateWithDuration:0 delay:v150 options:v57 animations:v53 completion:0.0];
      _Block_release(v57);
      _Block_release(v59);
    }

    [*&v44[v46] setHidden:v50 & 1];
    v44[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_25:
    [v44 setNeedsLayout];
    goto LABEL_27;
  }

  [*&v44[v46] setHidden:v51];
LABEL_27:
  v60 = &v34[qword_950CB0];
  *v60 = v157;
  v60[1] = 0;
  v60[2] = v154;
  v60[3] = 0;
  v60[4] = v41;
  v60[5] = 0;
  v60[6] = v156;
  v60[7] = 0;
  v60[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v60[9] = 0;
  v60[10] = v155;
  v60[11] = 0;

  sub_3680EC();
  LODWORD(v61) = v175;
  v62 = v178;
  if (v168)
  {
    if (v175 == 4)
    {
      sub_369998();
    }

    else
    {
      sub_3699BC();
    }

    v63 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v64 = *(v43 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v65 = objc_allocWithZone(NSAttributedString);
    v66 = v64;
    v67 = sub_769210();
    type metadata accessor for Key(0);
    sub_A9134(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
    isa = sub_7690E0().super.isa;

    v69 = [v65 initWithString:v67 attributes:isa];

    [v66 setAttributedText:v69];
    [*(v43 + v63) setAdjustsFontSizeToFitWidth:0];
    [*(v43 + v63) setMinimumScaleFactor:0.0];
    [*(v43 + v63) setAttributedText:0];
    if (v169 && v34[qword_950C80] == 4)
    {
      v62 = v178;
      if (v61 == 4)
      {
        v70 = v176;
        v73 = v169;
        v71 = v168;
        v72 = v152;
      }

      else
      {
        v70 = v152;
        v71 = v169;
        v72 = v176;
        v73 = v168;
      }

      sub_72853C(v70, v71, v72, v73);
    }

    else
    {
      sub_728444(v176, v168);
      v62 = v178;
    }
  }

  v74 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v75 = *(v43 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v76 = [v75 text];
  if (v76 || (v76 = [*(v43 + v74) attributedText]) != 0)
  {
    v77 = v166;

    v78 = 0;
  }

  else
  {
    v78 = 1;
    v77 = v166;
  }

  [v75 setHidden:v78];

  [v34 setNeedsLayout];
  v79 = *&v34[qword_950C98];
  [v79 setImage:0];
  [v79 setHidden:1];
  if (v61 != 4 && (sub_760230() & 1) == 0 && v62)
  {
    v80 = a1;
    v81 = v61;
    v82 = HIBYTE(v62) & 0xF;
    if ((v62 & 0x2000000000000000) == 0)
    {
      v82 = v153 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v176) = v82 == 0;
    v83 = *&v34[qword_950CA0];
    v84 = &v83[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v85 = *&v83[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    goto LABEL_49;
  }

  v83 = *&v34[qword_950CA0];
  v84 = &v83[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v85 = *&v83[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v62)
  {
    v80 = a1;
    v81 = v61;
    LODWORD(v176) = 1;
LABEL_49:
    v86 = v85;
    v62 = sub_769210();
    LODWORD(v61) = v81;
    a1 = v80;
    goto LABEL_51;
  }

  v86 = v85;
  LODWORD(v176) = 1;
LABEL_51:
  [v86 setText:v62];

  v87 = [*v84 isHidden];
  if (v176 == v87 || (v83[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v84 setHidden:v176];
  }

  else
  {
    if ((v176 & 1) == 0)
    {
      [*v84 setAlpha:0.0];
      v88 = objc_opt_self();
      [v88 inheritedAnimationDuration];
      v90 = v89;
      v91 = swift_allocObject();
      *(v91 + 16) = v83;
      v183 = sub_A8FE4;
      v184 = v91;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_23F0CC;
      v182 = &unk_882A68;
      v92 = _Block_copy(&aBlock);
      v93 = v83;

      v94 = swift_allocObject();
      *(v94 + 16) = v93;
      v183 = sub_A9004;
      v184 = v94;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_3D6D80;
      v182 = &unk_882AB8;
      v95 = _Block_copy(&aBlock);
      v96 = v93;
      v77 = v166;
      LODWORD(v61) = v175;

      [v88 animateWithDuration:0 delay:v92 options:v95 animations:v90 completion:0.0];
      _Block_release(v95);
      _Block_release(v92);
    }

    [*v84 setHidden:v176];
    v83[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v83 setNeedsLayout];
  }

  v97 = v159;
  v98 = 1;
  v99 = v173;
  sub_366B5C(v173, 1);
  [v34 setNeedsLayout];

  (*(v164 + 8))(v177, v97);
  v100 = v160;
  v101 = *(v160 + 8);
  v101(v99, v77);
  (*(v162 + 8))(v172, v163);
  sub_765B30();
  v102 = v165;
  (*(v100 + 104))(v165, enum case for TodayCard.Style.white(_:), v77);
  sub_A9134(&qword_9409B0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  sub_769430();
  sub_769430();
  if (aBlock != v185 || v180 != v186)
  {
    if (sub_76A950())
    {
      v98 = 1;
    }

    else
    {
      v98 = 2;
    }
  }

  v101(v102, v77);
  v101(v174, v77);

  v103 = v170;
  [v170 setOverrideUserInterfaceStyle:v98];
  sub_73C470(a1, v161, v61, v167);
  sub_765B20();
  v104 = swift_dynamicCastClass();
  if (v104)
  {
    p_aBlock = v104;
    v106 = sub_757A20();
    v107 = v106;
    aBlock = _swiftEmptyArrayStorage;
    v108 = v106 & 0xFFFFFFFFFFFFFF8;
    if (v106 >> 62)
    {
      goto LABEL_184;
    }

    v109 = *(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_65;
  }

  sub_75E6F0();
  v116 = swift_dynamicCastClass();
  if (v116)
  {
    p_aBlock = v116;
    v117 = sub_75E6E0();
    v107 = v117;
    aBlock = _swiftEmptyArrayStorage;
    v108 = v117 & 0xFFFFFFFFFFFFFF8;
    if (v117 >> 62)
    {
      v118 = sub_76A860();
    }

    else
    {
      v118 = *(&dword_10 + (v117 & 0xFFFFFFFFFFFFFF8));
    }

    v119 = 0;
    v120 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v118 == v119)
      {
        goto LABEL_112;
      }

      if ((v107 & 0xC000000000000001) == 0)
      {
        break;
      }

      p_aBlock = sub_76A770();
      v61 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_180;
      }

LABEL_95:

      v121 = sub_764F20();

      ++v119;
      if (v121)
      {
        p_aBlock = &aBlock;
        sub_769440();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v120 = aBlock;
        v119 = v61;
      }
    }

    if (v119 >= *(v108 + 16))
    {
      goto LABEL_181;
    }

    p_aBlock = *(v107 + 8 * v119 + 32);

    v61 = v119 + 1;
    if (!__OFADD__(v119, 1))
    {
      goto LABEL_95;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v109 = sub_76A860();
LABEL_65:
    v110 = 0;
    v111 = _swiftEmptyArrayStorage;
    while (v109 != v110)
    {
      if ((v107 & 0xC000000000000001) != 0)
      {
        p_aBlock = sub_76A770();
        v61 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v110 >= *(v108 + 16))
        {
          goto LABEL_179;
        }

        p_aBlock = *(v107 + 8 * v110 + 32);

        v61 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }
      }

      v112 = sub_764F20();

      ++v110;
      if (v112)
      {
        p_aBlock = &aBlock;
        sub_769440();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v111 = aBlock;
        v110 = v61;
      }
    }

    v113 = v111 >> 62;
    if (!(v111 >> 62))
    {
      v114 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
      if (v114 >= 3)
      {
        v115 = 3;
      }

      else
      {
        v115 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
      }

      while (1)
      {
        LOBYTE(v61) = v175;
        if (v114 < v115)
        {
          goto LABEL_190;
        }

        if ((v111 & 0xC000000000000001) != 0 && v115)
        {
          sub_765390();

          sub_76A750(0);
          if (v115 != 1)
          {
            sub_76A750(1);
            if (v115 != 2)
            {
              sub_76A750(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = sub_76A870();
          v110 = v122;
          v113 = v123;
          v115 = v124;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          v110 = (v111 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v115) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v120 = sub_76A970();
        swift_unknownObjectRetain_n();
        v125 = swift_dynamicCastClass();
        if (!v125)
        {
          swift_unknownObjectRelease();
          v125 = _swiftEmptyArrayStorage;
        }

        v126 = *(v125 + 2);

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_112:

        v113 = v120 >> 62;
        if (v120 >> 62)
        {
          if (v120 < 0)
          {
            p_aBlock = v120;
          }

          else
          {
            p_aBlock = (v120 & 0xFFFFFFFFFFFFFF8);
          }

          v107 = sub_76A860();
          if (sub_76A860() < 0)
          {
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            v131 = sub_76A860();
LABEL_126:
            v110 = 0;
            v111 = _swiftEmptyArrayStorage;
            while (v131 != v110)
            {
              if ((v107 & 0xC000000000000001) != 0)
              {
                p_aBlock = sub_76A770();
                v61 = v110 + 1;
                if (__OFADD__(v110, 1))
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v110 >= *(v108 + 16))
                {
                  goto LABEL_183;
                }

                p_aBlock = *(v107 + 8 * v110 + 32);

                v61 = v110 + 1;
                if (__OFADD__(v110, 1))
                {
                  goto LABEL_182;
                }
              }

              v132 = sub_764F20();

              ++v110;
              if (v132)
              {
                p_aBlock = &aBlock;
                sub_769440();
                if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_7694C0();
                }

                sub_769500();
                v111 = aBlock;
                v110 = v61;
              }
            }

            goto LABEL_148;
          }

          if (v107 >= 3)
          {
            v148 = 3;
          }

          else
          {
            v148 = v107;
          }

          if (v107 >= 0)
          {
            v107 = v148;
          }

          else
          {
            v107 = 3;
          }

          v128 = sub_76A860();
        }

        else
        {
          v128 = *(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8));
          if (v128 >= 3)
          {
            v107 = 3;
          }

          else
          {
            v107 = *(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8));
          }
        }

        LOBYTE(v61) = v175;
        if (v128 < v107)
        {
          goto LABEL_198;
        }

        if ((v120 & 0xC000000000000001) != 0 && v107)
        {
          sub_765390();

          sub_76A750(0);
          if (v107 != 1)
          {
            sub_76A750(1);
            if (v107 != 2)
            {
              sub_76A750(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = sub_76A870();
          v110 = v133;
          v113 = v134;
          v115 = v135;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v120 & 0xFFFFFFFFFFFFFF8);
          v110 = (v120 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v107) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v111 = sub_76A970();
        swift_unknownObjectRetain_n();
        v136 = swift_dynamicCastClass();
        if (!v136)
        {
          swift_unknownObjectRelease();
          v136 = _swiftEmptyArrayStorage;
        }

        v126 = *(v136 + 2);

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_148:

        v113 = v111 >> 62;
        if (v111 >> 62)
        {
          if (v111 < 0)
          {
            p_aBlock = v111;
          }

          else
          {
            p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          }

          v115 = sub_76A860();
          if (sub_76A860() < 0)
          {
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v115 >= 3)
          {
            v149 = 3;
          }

          else
          {
            v149 = v115;
          }

          if ((v115 & 0x8000000000000000) == 0)
          {
            v115 = v149;
          }

          else
          {
            v115 = 3;
          }

          v137 = sub_76A860();
        }

        else
        {
          v137 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
          if (v137 >= 3)
          {
            v115 = 3;
          }

          else
          {
            v115 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
          }
        }

        LOBYTE(v61) = v175;
        if (v137 < v115)
        {
          goto LABEL_205;
        }

        if ((v111 & 0xC000000000000001) != 0 && v115)
        {
          sub_765390();

          sub_76A750(0);
          if (v115 != 1)
          {
            sub_76A750(1);
            if (v115 != 2)
            {
              sub_76A750(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = sub_76A870();
          v110 = v139;
          v113 = v140;
          v115 = v141;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          v110 = (v111 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v115) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v111 = sub_76A970();
        swift_unknownObjectRetain_n();
        v143 = swift_dynamicCastClass();
        if (!v143)
        {
          swift_unknownObjectRelease();
          v143 = _swiftEmptyArrayStorage;
        }

        v126 = *(v143 + 2);

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
LABEL_169:
          if (v126 != v127)
          {
            goto LABEL_191;
          }

          v138 = swift_dynamicCastClass();

          swift_unknownObjectRelease_n();
          if (!v138)
          {
            swift_unknownObjectRelease();
            v138 = _swiftEmptyArrayStorage;
          }

          goto LABEL_172;
        }

LABEL_206:
        __break(1u);
LABEL_207:
        if (v115 >= 3)
        {
          v147 = 3;
        }

        else
        {
          v147 = v115;
        }

        if ((v115 & 0x8000000000000000) == 0)
        {
          v115 = v147;
        }

        else
        {
          v115 = 3;
        }

        v114 = sub_76A860();
      }
    }

    if (v111 < 0)
    {
      p_aBlock = v111;
    }

    else
    {
      p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
    }

    v115 = sub_76A860();
    if ((sub_76A860() & 0x8000000000000000) == 0)
    {
      goto LABEL_207;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    swift_unknownObjectRelease_n();
LABEL_165:
    sub_4A5FC4(p_aBlock, v110, v113, v115);
    v138 = v142;
    swift_unknownObjectRelease();

LABEL_172:
    v103 = v170;
  }

  else
  {
    sub_75DB40();
    v129 = swift_dynamicCastClass();
    if (v129)
    {
      p_aBlock = v129;
      v130 = sub_75DB30();
      v107 = v130;
      aBlock = _swiftEmptyArrayStorage;
      v108 = v130 & 0xFFFFFFFFFFFFFF8;
      if (!(v130 >> 62))
      {
        v131 = *(&dword_10 + (v130 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_126;
      }

      goto LABEL_199;
    }

    sub_7577E0();
    if (swift_dynamicCastClass())
    {
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v138 = swift_allocObject();
      *(v138 + 1) = xmmword_77D9F0;
      *(v138 + 4) = sub_7577D0();
    }

    else
    {

      v138 = _swiftEmptyArrayStorage;
    }
  }

  v144 = OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks;
  v145 = *&v103[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks];

  v146 = sub_117204(v138, v145);

  if (v146)
  {
  }

  else
  {
    *&v103[v144] = v138;

    [v103 setNeedsLayout];
  }
}

double sub_A79F0(uint64_t a1, char a2)
{
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks;
  v22 = v2;
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks);
  if (v3 >> 62)
  {
LABEL_38:
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = sub_75A810();
  type metadata accessor for MultiAppFallbackIconView.Configuration();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 40) = sub_10DBF8(_swiftEmptyArrayStorage);
  v7 = 3;
  if (v4 < 3)
  {
    v7 = v4;
  }

  *(v6 + 24) = v7;
  *(v6 + 32) = v5 & 1;

  sub_31BD84(v8);
  v9 = *(v22 + v21);
  *&v23[0] = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    v10 = sub_76A860();
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_35;
      }

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v14 = sub_7651A0();

    ++v11;
    if (v14)
    {
      sub_769440();
      if (*(&dword_10 + (*&v23[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v23[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v12 = *&v23[0];
      v11 = v13;
    }
  }

  sub_55D954(v12);
  sub_75A110();
  sub_768ED0();
  v15 = *(v22 + v21);
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
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v17 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v22 + v21) >> 62)
      {
        sub_76A860();
      }

      sub_765330();
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v17;

      sub_75A040();

      sub_10A2C(v23, &unk_9443A0, &unk_77E240);
      ++v17;
    }

    while (v19 != v16);
  }

  return result;
}

void sub_A7E84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && (a6 & 0x8000000000000000) == 0 && *(a5 + 24) > a6)
  {
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a5 + 40);
    *(a5 + 40) = 0x8000000000000000;
    sub_4595C0(v9, a6, isUniquelyReferenced_nonNull_native);
    *(a5 + 40) = v13;
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_31C03C(a1, a6);
    }
  }
}

void sub_A7F54()
{
  sub_765B70();
  sub_A9134(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_75C750();
  if (v22)
  {
    sub_765B20();

    sub_757A30();
    if (swift_dynamicCastClass())
    {

      if (sub_757A20() >> 62)
      {
LABEL_73:
        sub_76A860();
      }

      v0 = sub_757A20();
      v1 = v0;
      v2 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
        v3 = sub_76A860();
        if (v3)
        {
LABEL_11:
          v4 = 0;
          do
          {
            v5 = v4;
            while (1)
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                sub_76A770();
                v4 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                if (v5 >= *(v2 + 16))
                {
                  goto LABEL_68;
                }

                v4 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (sub_764EE0())
              {
                break;
              }

              ++v5;
              if (v4 == v3)
              {
                goto LABEL_79;
              }
            }

            sub_765330();

            sub_769440();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
          }

          while (v4 != v3);
        }
      }

      else
      {
        v3 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
        if (v3)
        {
          goto LABEL_11;
        }
      }

LABEL_79:

      v21._rawValue = _swiftEmptyArrayStorage;
      sub_75A070(v21);

LABEL_80:

      return;
    }

    sub_75E6F0();
    if (!swift_dynamicCastClass())
    {
      sub_75DB40();
      if (!swift_dynamicCastClass())
      {
        sub_7577E0();
        if (!swift_dynamicCastClass())
        {

          return;
        }

        sub_BD88(&unk_93F5C0, &unk_77C600);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_77D9F0;

        sub_7577D0();
        v13 = sub_765330();

        *(v12 + 32) = v13;
        v14._rawValue = v12;
        sub_75A070(v14);

        goto LABEL_80;
      }

      if (sub_75DB30() >> 62)
      {
        sub_76A860();
      }

      v15 = sub_75DB30();
      v16 = v15;
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        v18 = sub_76A860();
        if (!v18)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v18 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
        if (!v18)
        {
          goto LABEL_79;
        }
      }

      v19 = 0;
      do
      {
        v20 = v19;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            sub_76A770();
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_72;
            }

            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }
          }

          if (sub_764EE0())
          {
            break;
          }

          ++v20;
          if (v19 == v18)
          {
            goto LABEL_79;
          }
        }

        sub_765330();

        sub_769440();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
      }

      while (v19 != v18);
      goto LABEL_79;
    }

    if (sub_75E6E0() >> 62)
    {
      sub_76A860();
    }

    v6 = sub_75E6E0();
    v7 = v6;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v9 = sub_76A860();
      if (!v9)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v9 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (!v9)
      {
        goto LABEL_79;
      }
    }

    v10 = 0;
    do
    {
      v11 = v10;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          sub_76A770();
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v11 >= *(v8 + 16))
          {
            goto LABEL_70;
          }

          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        if (sub_764EE0())
        {
          break;
        }

        ++v11;
        if (v10 == v9)
        {
          goto LABEL_79;
        }
      }

      sub_765330();

      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }

    while (v10 != v9);
    goto LABEL_79;
  }
}

void sub_A86B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a4 + 16))(ObjectType, a4);
    [v10 removeFromSuperview];
  }

  if (a1)
  {
    v11 = swift_getObjectType();
    v12 = *(a2 + 16);
    swift_unknownObjectRetain();
    v13 = v12(v11, a2);
    v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v15 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView;
    v16 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView];
    *&v14[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView] = v13;
    v17 = v13;

    [v17 setAnchorPoint:{0.0, 1.0}];
    v18 = *&v14[v15];
    if (v18)
    {
      v20[0] = 0x3FF0000000000000;
      v20[1] = 0;
      v20[2] = 0;
      v20[3] = 0x3FF0000000000000;
      v20[4] = 0;
      v20[5] = 0;
      [v18 setTransform:v20];
    }

    [v14 addSubview:v17];
    [v17 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
    [v5 _continuousCornerRadius];
    [v17 _setContinuousCornerRadius:?];
    v19 = [v17 layer];
    [v19 setMaskedCorners:12];
    swift_unknownObjectRelease();
  }
}

void sub_A8874(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_F704(v4, v5);
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      swift_getObjectType();
      sub_7633B0();
    }
  }
}

void sub_A89BC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_75F4E0();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_F704(v4, v5);
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      swift_getObjectType();
      sub_7633A0();
    }
  }
}

double sub_A8C64()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return result;
}

uint64_t type metadata accessor for MultiAppFallbackCardCollectionViewCell(uint64_t a1)
{
  result = qword_942E20;
  if (!qword_942E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A8E74(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_A8EC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_A8EF0(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t sub_A8F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_955AA0, &qword_783ED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_A8FAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_A8FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_A9030()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = v0[v1];
  if (v4 != 7)
  {
    v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
    *(v5 + qword_950C80) = v4;
    *(*(v5 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_950CA0) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_originalSizeCategory) = v4;
  }

  return result;
}

uint64_t sub_A9134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A917C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_A923C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_99A4F8) = 0;
  sub_B0B7C();
  v5 = qword_942E50;
  v6 = *(v2 + qword_942E50);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
      v9 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v10 = v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
      v8 = *(v10 + 8);
      v9 = *v10;
    }

    ObjectType = swift_getObjectType();
    v12 = *(v8 + 264);
    v13 = v7;
    v14 = v12(ObjectType, v8);

    if (v14)
    {
      *&v14[qword_940588 + 8] = &off_882BA8;
      swift_unknownObjectWeakAssign();
    }

    v15 = *(v3 + v5);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v16 != 0)
      {
        if (a1)
        {
          v18 = swift_getObjectType();
          v19 = *(a2 + 8);
          v20 = v16;
          v19(v18, a2);
          sub_761120();
          sub_768900();
          sub_768ED0();
          swift_getObjectType();
          v21 = sub_75EF20();
          v22 = v20;
          sub_7610C0();
        }

        else
        {
          v23 = v16;
        }

        sub_761120();
        sub_768900();
        sub_768ED0();
        swift_getObjectType();
        v24 = sub_75EF20();
        v25 = v16;
        sub_761100();
      }
    }
  }
}

uint64_t sub_A94F8()
{
  swift_unknownObjectRelease();

  sub_F704(*(v0 + qword_99A508), *(v0 + qword_99A508 + 8));
  sub_F704(*(v0 + qword_99A510), *(v0 + qword_99A510 + 8));

  sub_10A2C(v0 + qword_942E70, &unk_955AA0, &qword_783ED0);

  return sub_10A2C(v0 + qword_99A530, &unk_93FF30, &unk_77DB10);
}

id sub_A9644()
{
  ObjectType = swift_getObjectType();
  if (v0[qword_942E80] == 1)
  {
    v0[qword_942E80] = 0;
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_A9694(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_942E80] == 1)
  {
    a1[qword_942E80] = 0;
  }

  v5.receiver = a1;
  v5.super_class = ObjectType;
  v3 = a1;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_A96F4(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_F704(*(a1 + qword_99A508), *(a1 + qword_99A508 + 8));
  sub_F704(*(a1 + qword_99A510), *(a1 + qword_99A510 + 8));

  sub_10A2C(a1 + qword_942E70, &unk_955AA0, &qword_783ED0);

  return sub_10A2C(a1 + qword_99A530, &unk_93FF30, &unk_77DB10);
}

void sub_A9864(char a1)
{
  v2 = v1;
  v4 = *&v1[qword_942E50];
  if (v4)
  {
    v4[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled] = v1[qword_99A4E8];
    v5 = v4;
    sub_3104E4();
  }

  v6 = *&v2[qword_942E88];
  if (v6)
  {
    [v6 setHidden:v2[qword_99A4E8]];
  }

  v7 = a1 & ~v2[qword_99A4E8];
  sub_A99B0();
  if (v7 & 1) != 0 || (v8)
  {
    v2[qword_99A500] = 1;
    v9 = [v2 viewIfLoaded];
    [v9 setNeedsLayout];

    v2[qword_942E30] = 1;
    v10 = [v2 viewIfLoaded];
    [v10 setNeedsLayout];
  }
}

void sub_A99B0()
{
  v1 = qword_942E50;
  v2 = *&v0[qword_942E50];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      if ((v0[qword_99A4E8] & 1) == 0)
      {
        if (*&v0[v1])
        {
          type metadata accessor for ListTodayCardCollectionViewCell(0);
          if (swift_dynamicCastClass())
          {
            v5 = [v4 superview];
            v6 = [v0 collectionView];
            v7 = v6;
            if (v5)
            {
              if (v6)
              {
                sub_BE70(0, &qword_93E550, UIView_ptr);
                v8 = sub_76A1C0();

                if ((v8 & 1) == 0)
                {
LABEL_28:
                  v24 = objc_opt_self();
                  v25 = swift_allocObject();
                  *(v25 + 16) = v4;
                  *(v25 + 24) = v0;
                  v26 = swift_allocObject();
                  *(v26 + 16) = sub_B29D8;
                  *(v26 + 24) = v25;
                  v35 = sub_47164;
                  v36 = v26;
                  v31 = _NSConcreteStackBlock;
                  v32 = 1107296256;
                  v33 = sub_1EB578;
                  v34 = &unk_882D98;
                  v27 = _Block_copy(&v31);
                  v28 = v0;

                  v18 = v4;

                  [v24 performWithoutAnimation:v27];
                  _Block_release(v27);
                  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

                  if ((v24 & 1) == 0)
                  {
                    v29 = [v28 collectionView];
                    if (v29)
                    {
                      v30 = v29;
                      [v29 insertSubview:v18 atIndex:0];

                      if ([v18 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
                      {
                        v23 = [v18 layer];
                        [v23 setFlipsHorizontalAxis:1];
                        goto LABEL_23;
                      }

                      goto LABEL_32;
                    }

LABEL_39:
                    __break(1u);
                    return;
                  }

                  goto LABEL_36;
                }

LABEL_15:

                return;
              }

              v7 = v5;
            }

            else if (!v6)
            {
              goto LABEL_15;
            }

            goto LABEL_28;
          }
        }
      }

      v9 = [v4 superview];
      v10 = [v0 view];
      v11 = v10;
      if (v9)
      {
        if (v10)
        {
          sub_BE70(0, &qword_93E550, UIView_ptr);
          v12 = sub_76A1C0();

          if (v12)
          {
            goto LABEL_15;
          }

LABEL_18:
          v13 = objc_opt_self();
          v14 = swift_allocObject();
          *(v14 + 16) = v4;
          *(v14 + 24) = v0;
          v15 = swift_allocObject();
          *(v15 + 16) = sub_B29AC;
          *(v15 + 24) = v14;
          v35 = sub_2EC28;
          v36 = v15;
          v31 = _NSConcreteStackBlock;
          v32 = 1107296256;
          v33 = sub_1EB578;
          v34 = &unk_882D20;
          v16 = _Block_copy(&v31);
          v17 = v0;
          v18 = v4;

          [v13 performWithoutAnimation:v16];
          _Block_release(v16);
          LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

          if ((v13 & 1) == 0)
          {
            v19 = [v17 view];
            if (v19)
            {
              v20 = v19;
              v21 = [v17 collectionView];
              if (v21)
              {
                v22 = v21;
                [v20 insertSubview:v18 aboveSubview:v21];

                if ([v18 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
                {
                  v23 = [v18 layer];
                  [v23 setFlipsHorizontalAxis:0];
LABEL_23:

LABEL_33:
                  return;
                }

LABEL_32:

                goto LABEL_33;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v11 = v9;
      }

      else if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }
}

void sub_A9F30(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_761930();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  sub_AA06C();
  sub_761920();

  if (*&v1[v3])
  {
    sub_767160();
    if (swift_dynamicCastClass())
    {
      v7 = *&v1[qword_942E50];
      if (v7)
      {
        v8 = [v7 viewIfLoaded];
        if (v8)
        {
          v9 = v8;
          v10 = [v1 view];
          if (!v10)
          {
            __break(1u);
            return;
          }

          v11 = v10;
          [v10 bringSubviewToFront:v9];
        }
      }
    }
  }
}

void sub_AA06C()
{
  v1 = v0;
  v2 = *&v0[qword_942E50];
  if (!v2 || !*&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController] || (sub_767160(), !swift_dynamicCastClass()))
  {
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;

  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  if (v8)
  {
    v9 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8];
    v10 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
    v10 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
    v8 = 0;
  }

  v13 = v8;
  sub_311270(v10, v9, v7);
}

void sub_AA1FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad", v5);
  v8 = sub_7653A0();
  v23[3] = v8;
  v23[4] = sub_B3548(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v9 = sub_B1B4(v23);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v8);
  LOBYTE(v8) = sub_765C30();
  sub_BEB8(v23);
  if ((v8 & 1) == 0)
  {
    v10 = [v1 view];
    if (!v10)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v14 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  sub_AC0F8();
  v15 = sub_502A78();
  [v15 addTarget:v1 action:"dismissAnimated" forControlEvents:64];
  sub_768C00();
  sub_769E70();
  (*(v4 + 8))(v7, v3);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v16 addSubview:v15];

  v18 = *&v1[qword_99A518];
  *&v1[qword_99A518] = v15;
  v19 = v15;

  type metadata accessor for ArticleLinkLoaderScrollObserver();
  swift_allocObject();
  v20 = sub_211DD0();
  v21 = qword_942E58;
  if (*&v1[qword_942E58])
  {
    sub_B3548(&unk_9435E0, type metadata accessor for ArticleLinkLoaderScrollObserver, &unk_78C120);
  }

  sub_75FA30();

  *&v1[v21] = v20;
  swift_retain_n();

  sub_B3548(&unk_9435E0, type metadata accessor for ArticleLinkLoaderScrollObserver, &unk_78C120);
  sub_75FA40();

  if (*&v1[qword_942E50])
  {
    sub_A99B0();
  }
}

void sub_AA5C0(void *a1)
{
  v1 = a1;
  sub_AA1FC();
}

id sub_AA608(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result panGestureRecognizer];

  [v4 addGestureRecognizer:v6];
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setNavigationBarHidden:1 animated:0];
  }

  *(v1 + qword_942E38) = 1;
  return [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_AA730(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_AA608(a3);
}

void sub_AA784(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidAppear:", a3);
  v4[qword_942E30] = 1;
  v5 = [v4 viewIfLoaded];
  [v5 setNeedsLayout];
}

void sub_AA820(char a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  v3 = [v1 navigationController];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 viewControllers];

  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v6 = sub_769460();

  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v10 = sub_76A860();
  v7 = v6;
  if (!v10)
  {
LABEL_8:

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v19 = sub_76A770();
    swift_unknownObjectRelease();

    v9 = v19 == v1;
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);

    v9 = v8 == v1;
  }

LABEL_10:
  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 viewControllers];

    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v14 = sub_769460();

    if (v14 >> 62)
    {
      v15 = sub_76A860();
    }

    else
    {
      v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    }

    if (v15 > 1 && v9)
    {
      v17 = [v1 navigationController];
      if (v17)
      {
        v18 = v17;
        [v17 setNavigationBarHidden:0 animated:0];
      }
    }
  }
}

void sub_AAA5C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_AA820(a3);
}

void sub_AAAB0(uint64_t a1, void *a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_B3540;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_6C6800;
  v7[3] = &unk_883040;
  v6 = _Block_copy(v7);

  [a2 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
}

double sub_AABB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_AACD0();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_76A770();
        }

        else
        {
          if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_13;
          }

          v8 = *&v5[v7 + 4];
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setAlpha:1.0];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  return result;
}

double *sub_AACD0()
{
  v1 = *(v0 + qword_99A520);
  v10 = *(v0 + qword_99A528);
  v11 = v1;
  v12 = *(v0 + qword_99A518);
  v2 = v12;
  v3 = v10;
  result = v1;
  v5 = 0;
LABEL_2:
  if (v5 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  while (1)
  {
    if (v5 == 3)
    {
      sub_BD88(&qword_9434F8, &unk_782A08);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v6 == v5)
    {
      break;
    }

    v7 = v9[v5++ + 4];
    if (v7)
    {
      v8 = v7;
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      result = sub_769500();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_AAE08(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_AAAB0(v6, a4);

  swift_unknownObjectRelease();
}

void sub_AAE88(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    v10[4] = sub_B3538;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_6C6800;
    v10[3] = &unk_883018;
    v8 = _Block_copy(v10);
    v9 = v3;

    [a1 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
  }
}

void sub_AAFB0(int a1, _BYTE *a2)
{
  a2[qword_99A500] = 1;
  v3 = [a2 viewIfLoaded];
  [v3 setNeedsLayout];

  a2[qword_942E30] = 1;
  v4 = [a2 viewIfLoaded];
  [v4 setNeedsLayout];

  sub_AB050(v5, v6);
}

void sub_AB050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762590();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    v11 = [v3 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 numberOfSections];

      if (v10 >= v13)
      {
        return;
      }
    }

    else if ((v10 & 0x8000000000000000) == 0)
    {
      return;
    }

    v14 = [v3 collectionView];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 collectionViewLayout];

      sub_7575B0();
      isa = sub_757550().super.isa;
      (*(v5 + 8))(v7, v4);
      v18 = [v16 layoutAttributesForItemAtIndexPath:isa];

      if (v18)
      {
        v19 = *&v3[qword_942E90];
        if (v19)
        {

          [v16 collectionViewContentSize];
          v21 = v20;
          [v18 frame];
          *(v19 + 48) = v21 - CGRectGetMinY(v23);
          sub_662A8C(1);
        }
      }

      else
      {
        v18 = v16;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_AB26C(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_AAE88(a3, a4, a5);
  swift_unknownObjectRelease();
}

void sub_AB2EC()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = sub_AACD0();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_14:
    v3 = sub_76A860();
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_76A770();
        }

        else
        {
          if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        v8 = [v0 view];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        [v8 bringSubviewToFront:v6];

        ++v4;
        if (v7 == v3)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_15:

  v10 = *&v0[qword_942E88];
  if (v10)
  {
    v11 = v10;
    v12 = [v0 view];
    if (!v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = v12;
    v14 = [v0 collectionView];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v15 = v14;
    [v13 insertSubview:v11 aboveSubview:v14];
  }
}

void sub_AB4A4(void *a1)
{
  v1 = a1;
  sub_AB2EC();
}

void sub_AB4EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_9435D0, qword_782630);
  __chkstk_darwin(v3 - 8);
  v160 = &v156 - v4;
  v162 = sub_769ED0();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D850();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v156 - v11;
  v12 = sub_75CF00();
  v165 = *(v12 - 8);
  v166 = v12;
  __chkstk_darwin(v12);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v164 = &v156 - v17;
  v168.receiver = v0;
  v168.super_class = ObjectType;
  objc_msgSendSuper2(&v168, "viewDidLayoutSubviews", v16);
  if (v0[qword_942E30] == 1)
  {
    v0[qword_942E30] = 0;
    sub_AC0F8();
  }

  sub_AC57C();
  sub_AC7C0();
  sub_AC9B4();
  v18 = qword_99A4E8;
  v19 = &unk_942000;
  if (v0[qword_99A4E8] != 1)
  {
    goto LABEL_13;
  }

  v20 = *&v0[qword_942E50];
  if (v20)
  {
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      [v21 frame];
      v24 = v23;
      v25 = [v1 view];
      v26 = v25;
      if (v24 >= 0.0)
      {
        if (!v25)
        {
LABEL_59:
          __break(1u);
          return;
        }

        [v25 bounds];
        v28 = v44;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v43 = v50;
        v42 = v48;
        v41 = v46;
      }

      else
      {
        v163 = *&v18;
        v157 = v7;
        if (!v25)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        [v25 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = objc_opt_self();
        [v35 inheritedAnimationDuration];
        v37 = v36 * 0.8;
        v38 = swift_allocObject();
        *(v38 + 2) = v22;
        v38[3] = v28;
        *(v38 + 4) = v30;
        *(v38 + 5) = v32;
        *(v38 + 6) = v34;
        aBlock[4] = sub_B3528;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23F0CC;
        aBlock[3] = &unk_882FC8;
        v39 = _Block_copy(aBlock);
        v40 = v22;

        [v35 animateWithDuration:612 delay:v39 usingSpringWithDamping:0 initialSpringVelocity:v37 options:0.0 animations:0.92 completion:0.0];
        _Block_release(v39);
        [v40 frame];
        [v40 setFrame:?];
        [v40 frame];
        v7 = v157;
        *&v18 = v163;
      }

      [v22 setFrame:{v28, v41, v42, v43}];
    }
  }

  if ((v1[v18] & 1) == 0)
  {
LABEL_13:
    v51 = *&v1[qword_942E60];
    if (v51)
    {
      v52 = *(v51 + 24);

      [v52 _systemContentInset];
      v54 = v53;
      v56 = v55;
      [v52 contentOffset];
      v58 = v57;
      v60 = v59;
      [v52 contentInset];
      v62 = v56 + v58 + v61;
      v64 = v54 + v60 + v63;
      [v52 bounds];
      v66 = sub_56E3E0(v62, v64, v65);
      v68 = v67;
      v70 = v69;
      v72 = v71;
    }

    else
    {
      v66 = 0.0;
      v68 = 0.0;
      v70 = 0.0;
      v72 = 0.0;
    }

    v73 = qword_99A500;
    if ((v1[qword_99A500] & 1) != 0 || (v169.origin.x = v66, v169.origin.y = v68, v169.size.width = v70, v169.size.height = v72, Width = CGRectGetWidth(v169), (v75 = *&v1[qword_942E50]) == 0) || (v76 = Width, (v77 = [v75 view]) == 0) || (v78 = v77, objc_msgSend(v77, "frame"), v80 = v79, v82 = v81, v84 = v83, v163 = v76, v86 = v85, v78, v170.origin.x = v80, v170.origin.y = v82, v170.size.width = v84, v170.size.height = v86, v163 != CGRectGetWidth(v170)))
    {
      v87 = *&v1[qword_942E50];
      if (v87)
      {
        v88 = [v87 view];
      }

      else
      {
        v88 = 0;
      }

      [v88 setFrame:{v66, v68, v70, v72}];

      sub_ACB88(v66, v68, v70, v72);
      v1[v73] = 0;
    }
  }

  v89 = *&v1[qword_942E88];
  if (v89)
  {
    v163 = *&v18;
    v157 = v7;
    v90 = v6;
    v91 = v89;
    v92 = [v1 traitCollection];
    v93 = sub_7699B0();

    if (v93)
    {
      v94 = 80.0;
    }

    else
    {
      v94 = 20.0;
    }

    v95 = [v1 view];
    if (!v95)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v96 = v95;
    [v95 bounds];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;

    v105 = 0.0;
    v171.origin.x = v98;
    v171.origin.y = v100;
    v171.size.width = v102;
    v171.size.height = v104;
    v172 = CGRectInset(v171, v94, 0.0);
    v106 = v172.size.width;
    v107 = *&v91[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
    if (v107)
    {
      v108 = v9;
      v109 = v107;
      v110 = v164;
      sub_11E030(v164);
      [v109 layoutMargins];
      v112 = v111;
      v114 = v113;
      v115 = [v109 traitCollection];
      (*(v165 + 16))(v14, v110, v166);
      v116 = sub_75CE70();
      v19 = &unk_942000;
      if ((v118 & 1) == 0 && ((v116 | v117) & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        if (sub_769A00())
        {
          v119 = v108;
          if (qword_93C440 != -1)
          {
            swift_once();
          }

          v120 = qword_946920;
        }

        else
        {
          v119 = v108;
          if (qword_93C448 != -1)
          {
            swift_once();
          }

          v120 = qword_946938;
        }

        v124 = sub_BE38(v90, v120);
        v125 = v157;
        (*(v157 + 16))(v119, v124, v90);
        v126 = v158;
        (*(v125 + 32))(v158, v119, v90);
        sub_75D800();
        sub_75D830();
        sub_75CE80();
        (*(v125 + 8))(v126, v90);
      }

      sub_75CDB0();
      v128 = v127;

      v129 = v166;
      v130 = *(v165 + 8);
      v130(v14, v166);

      v122 = v114 + v112 + v128;
      v130(v164, v129);
    }

    else
    {
      v121 = *&v91[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView];
      v122 = 0.0;
      v19 = &unk_942000;
      if (!v121)
      {
        goto LABEL_44;
      }

      [v121 sizeThatFits:{v172.size.width, v172.size.height}];
      v122 = v123;
    }

    v105 = v106;
LABEL_44:
    v131 = v91;
    [v131 frame];
    *&v18 = v163;
    if (v105 != v133 || v122 != v132)
    {
      [v131 frame];
      [v131 setFrame:v94];
      [v131 frame];
      [v131 setFrame:?];
    }

    if (*&v1[qword_942E90])
    {

      sub_662A8C(1);
    }
  }

  if ((v1[v18] & 1) == 0)
  {
    v134 = *&v1[v19[458]];
    if (v134)
    {
      type metadata accessor for ListTodayCardCollectionViewCell(0);
      if (swift_dynamicCastClass())
      {
        v135 = v134;
        v136 = [v1 view];
        if (v136)
        {
          v137 = v136;
          v138 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
          v139 = sub_769EB0();
          v140 = *(v139 - 8);
          v141 = v160;
          (*(v140 + 104))(v160, v138, v139);
          (*(v140 + 56))(v141, 0, 1, v139);
          v142 = v159;
          sub_769EC0();
          sub_10A2C(v141, &unk_9435D0, qword_782630);
          sub_769E90();
          v144 = v143;
          v146 = v145;
          v148 = v147;
          v150 = v149;

          (*(v161 + 8))(v142, v162);
          v151 = &v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets];
          v152 = *&v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets];
          v153 = *&v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
          v154 = *&v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
          v155 = *&v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
          *v151 = v144;
          *(v151 + 1) = v146;
          *(v151 + 2) = v148;
          *(v151 + 3) = v150;
          sub_31075C(v152, v153, v154, v155);

          return;
        }

        goto LABEL_57;
      }
    }
  }
}

void sub_AC0F8()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    return;
  }

  v83 = v2;
  [v83 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v0[qword_99A4E8] == 1)
  {
    v10 = *&v0[qword_942E50];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        v15 = v14;

        v16 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
        if (v16)
        {
          v17 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8];
          v18 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
        }

        else
        {
          v17 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
          v18 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
          v16 = 0;
        }

        v75 = v16;
        sub_311270(v18, v17, v15);
        v56 = v76;

        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v19 = *&v0[qword_942E60];
  if (v19)
  {
    v20 = *(v19 + 24);

    [v20 _systemContentInset];
    v22 = v21;
    v24 = v23;
    [v20 contentOffset];
    v26 = v25;
    v28 = v27;
    [v20 contentInset];
    v30 = v24 + v26 + v29;
    v32 = v22 + v28 + v31;
    [v20 bounds];
    v85.origin.x = sub_56E3E0(v30, v32, v33);
    Height = CGRectGetHeight(v85);
    v35 = [v1 view];
    if (v35)
    {
      v36 = v35;
      [v35 safeAreaInsets];
      v38 = v37;

      v39 = *&v1[qword_942E50];
      if (v39)
      {
        v40 = [v39 view];
        if (v40)
        {
          v41 = v40;
          v42 = *(v19 + 24);
          [v42 _systemContentInset];
          v44 = v43;
          v46 = v45;
          [v42 contentOffset];
          v48 = v47;
          v50 = v49;
          [v42 contentInset];
          v52 = v46 + v48 + v51;
          v54 = v44 + v50 + v53;
          [v42 bounds];
          [v41 setFrame:{sub_56E3E0(v52, v54, v55)}];
        }
      }

      v56 = Height - v38;
      v57 = *(v19 + 24);
      [v57 _systemContentInset];
      v59 = v58;
      v61 = v60;
      [v57 contentOffset];
      v63 = v62;
      v65 = v64;
      [v57 contentInset];
      v67 = v61 + v63 + v66;
      v69 = v59 + v65 + v68;
      [v57 bounds];
      v71 = sub_56E3E0(v67, v69, v70);
      sub_ACB88(v71, v72, v73, v74);

      v9 = 0.0;
      v7 = 0.0;
      v5 = 0.0;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_26;
  }

  v56 = v3;
LABEL_17:
  [v83 contentOffset];
  v78 = v77;
  v80 = v79;
  [v83 setContentInset:{v56, v5, v7, v9}];
  [v83 setContentOffset:{v78, v80}];
  if (*&v1[qword_942E50])
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v81 = swift_dynamicCastClass();
    v82 = 0.0;
    if (!v81)
    {
      v82 = v56;
    }
  }

  else
  {
    v82 = v56;
  }

  [v83 setScrollIndicatorInsets:{v82, 0.0, v7, 0.0}];
  [v83 contentOffset];
  [v83 setContentOffset:?];
}

void sub_AC57C()
{
  v1 = *&v0[qword_99A518];
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 currentDevice];
    [v5 userInterfaceIdiom];

    sub_E3BCC();
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = *&v2[qword_942E50];
      if (v16 && (v17 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell), type metadata accessor for ListTodayCardCollectionViewCell(0), swift_dynamicCastClass()))
      {
        v18 = v17;
        [sub_1D656C() frame];
        CGRectGetMaxX(v21);
      }

      else
      {
        v22.origin.x = v9;
        v22.origin.y = v11;
        v22.size.width = v13;
        v22.size.height = v15;
        CGRectGetMaxX(v22);
      }

      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      CGRectGetMinY(v23);
      v19 = v4;
      sub_769D20();
      [v19 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_AC7C0()
{
  v1 = *&v0[qword_99A520];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_E3BCC();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = *&v0[qword_99A518];
      if (v15)
      {
        v16 = v15;
        [v16 frame];
        CGRectGetMinX(v19);
      }

      else
      {
        v20.origin.x = v8;
        v20.origin.y = v10;
        v20.size.width = v12;
        v20.size.height = v14;
        CGRectGetMaxX(v20);
      }

      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      CGRectGetMinY(v21);
      v17 = v3;
      sub_769D20();
      [v17 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_AC9B4()
{
  v1 = *&v0[qword_99A528];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_E3BCC();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = v3;
      [v15 sizeThatFits:{v12, v14}];
      v17.origin.x = v8;
      v17.origin.y = v10;
      v17.size.width = v12;
      v17.size.height = v14;
      CGRectGetMinX(v17);
      v18.origin.x = v8;
      v18.origin.y = v10;
      v18.size.width = v12;
      v18.size.height = v14;
      CGRectGetMinY(v18);
      sub_769D20();
      [v15 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_ACB88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_768A80();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_768AB0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v4[qword_942E68];
  if (v20 || (v20 = sub_7625A0()) != 0)
  {

    sub_765A50();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_10A2C(v15, &unk_93FF30, &unk_77DB10);
      return;
    }

    (*(v17 + 32))(v19, v15, v16);
    v21 = [v4 collectionView];
    if (v21)
    {
      v22 = v21;
      sub_761840();
      v23 = [v4 view];
      if (!v23)
      {
        __break(1u);
        return;
      }

      v24 = v23;
      v36 = v22;
      [v23 convertRect:v22 toCoordinateSpace:{a1, a2, a3, a4}];

      sub_75F4B0();
      sub_768A90();
      v25 = qword_942E50;
      v26 = *&v5[qword_942E50];
      if (v26)
      {
        [*(v26 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell) bounds];
        *(&v28 + 1) = v27;
        *(&v30 + 1) = v29;
      }

      else
      {
        v28 = 0uLL;
        v30 = 0uLL;
      }

      v39 = v28;
      v40 = v30;
      v41 = v26 == 0;
      v31 = sub_75F490();
      (*(v37 + 8))(v12, v10);
      if (v31)
      {
        v32 = *&v5[v25];
        if (v32)
        {
          v33 = *(v32 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
          swift_getObjectType();
          v38[3] = sub_765B70();
          v38[4] = sub_B3548(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
          v38[0] = v20;
          v34 = v33;

          sub_7633B0();

          (*(v17 + 8))(v19, v16);
          sub_BEB8(v38);
        }

        else
        {

          (*(v17 + 8))(v19, v16);
        }

        return;
      }

      (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
    }
  }
}

void sub_AD088(void *a1)
{
  v1 = a1;
  sub_AB4EC();
}

double sub_AD0D0(void *a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v2[qword_942E30] = 1;
  v4 = [v2 viewIfLoaded];
  [v4 setNeedsLayout];

  if (a1)
  {
    v6 = a1;
    if ([v6 horizontalSizeClass] && (v7 = objc_msgSend(v2, "traitCollection"), v8 = objc_msgSend(v7, "horizontalSizeClass"), v7, v8 != objc_msgSend(v6, "horizontalSizeClass")) && ((v9 = *&v2[qword_942E68]) != 0 || (v9 = sub_7625A0()) != 0))
    {
      v10 = *&v2[qword_942E50];
      if (v10)
      {
        v11 = v10 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
        v13 = *v11;
        v12 = *(v11 + 8);

        v14 = v13;
        sub_AD270(v9, v14, v12, 5);
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

uint64_t sub_AD270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a1;
  v9 = sub_766460();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7656C0();
  v57 = *(v13 - 8);
  v58 = v13;
  __chkstk_darwin(v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[qword_942E50];
  v60 = v15;
  if (v16)
  {
    type metadata accessor for ArticleHeaderViewController();
    v17 = v16;
    v18 = v15;
    v19 = v17;
    sub_30FF1C(v17, v18);
  }

  else
  {
    type metadata accessor for ArticleHeaderViewController();
    sub_30FF1C(v4, v15);
    sub_766450();
    v20 = sub_766440();
    v21 = sub_769810();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "ArticleDiffablePageViewController: header page grid derived from self unexpected", v22, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }

  v23 = a4;
  v24 = v59;
  if (a4 == 7)
  {
    v25 = v5;
    v26 = [v5 traitCollection];
    v27 = sub_7699B0();
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v29 = (*(a3 + 160))(ObjectType, a3);

      if (v29 == 6)
      {
        v30 = 6;
LABEL_12:
        if (v27)
        {
          v23 = v30;
        }

        else
        {
          v23 = 5;
        }

        v5 = v25;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v30 = 1;
    goto LABEL_12;
  }

LABEL_16:
  v31 = swift_getObjectType();
  v55 = qword_99A4E8;
  (*(a3 + 96))((v5[qword_99A4E8] & 1) == 0, v31, a3);
  v32 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v33 = v23;
  v34 = v60;
  (*(a3 + 296))(v24, v33, v60, v32, v31, a3);
  v35 = (*(a3 + 264))(v31, a3);
  if (v35)
  {
    *(v35 + qword_940588 + 8) = &off_882BA8;
    v36 = v35;
    swift_unknownObjectWeakAssign();
  }

  swift_getObjectType();
  v37 = swift_conformsToProtocol2();
  if (v37 && a2)
  {
    v38 = v37;
    v56 = v5;
    if (a4 == 7)
    {
      v39 = *(a3 + 136);
      v40 = a2;
      LODWORD(a4) = v39(v31, a3);
    }

    else
    {
      v41 = a2;
    }

    v42 = swift_getObjectType();
    v43 = sub_42E294(v24, v60, a4, v32, v42, v38);
    v44 = *(v38 + 32);
    if (v44(v42, v38, v43))
    {
      v46 = v45;
      v47 = swift_getObjectType();
      (*(v46 + 32))((v56[v55] & 1) == 0, v47, v46);
      swift_unknownObjectRelease();
    }

    if ((v44)(v42, v38))
    {
      v49 = v48;
      v50 = swift_getObjectType();
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = *(v49 + 88);

      v52(sub_B293C, v51, v50, v49);
      swift_unknownObjectRelease();
    }

    v24 = v59;
    v34 = v60;
  }

  v61[3] = sub_765B70();
  v61[4] = &protocol witness table for TodayCard;
  v61[0] = v24;

  sub_75F900();
  (*(v57 + 8))(v34, v58);
  return sub_BEB8(v61);
}

void sub_AD828(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_AD0D0(a3);
}

uint64_t sub_AD894()
{
  ObjectType = swift_getObjectType();
  v0 = sub_BD88(&qword_943548, &qword_782A28);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_BD88(&qword_943550, &qword_782A30);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_BD88(&qword_943558, &qword_782A38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1BB32C();
  sub_762580();
  sub_BD88(&qword_943560, &qword_782A40);
  sub_16194(&qword_943568, &qword_943560, &qword_782A40, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  sub_768720();

  sub_BEB8(v18);
  (*(v5 + 8))(v7, v4);
  sub_762550();
  sub_BD88(&qword_943570, &qword_782A48);
  sub_16194(&qword_943578, &qword_943570, &qword_782A48, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v8 = v12;
  sub_768720();

  sub_BEB8(v18);
  (*(v13 + 8))(v8, v14);
  sub_762570();
  sub_BD88(&qword_943580, &unk_782A50);
  sub_16194(&qword_943588, &qword_943580, &unk_782A50, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v9 = v15;
  sub_768720();

  sub_BEB8(v18);
  return (*(v16 + 8))(v9, v17);
}

void sub_ADCCC(uint64_t a1)
{
  v2 = v1;
  v4 = qword_942E68;
  v5 = *(v1 + qword_942E68);

  v6 = sub_7625A0();
  v7 = sub_B2A04(v5, v6);

  v8 = *(v2 + v4);
  if (!v8 || (v7 & 1) != 0)
  {
    *(v2 + qword_942E48) = a1;

    v9 = *(v2 + qword_99A4F8);

    if (!v8 || v9 == 0)
    {

      sub_B0B7C();
    }
  }
}

uint64_t (*sub_ADDB0(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_B3468;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B34C4;
}

uint64_t sub_ADE40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_762540();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AFF48();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.standard(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = *v10;
    v13 = *(v1 + qword_942E88);
    if (v13)
    {
      v14 = *(v1 + qword_99E1B8);
      v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
      v16 = v13;
      sub_6DF260(v12, v14, v15);
    }

    sub_764E50();
LABEL_9:

    v21 = qword_99A530;
    swift_beginAccess();
    sub_B33C8(v6, v2 + v21, &unk_93FF30, &unk_77DB10);
    return swift_endAccess();
  }

  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.arcade(_:))
  {
    (*(v8 + 96))(v10, v7);
    v17 = *v10;
    v18 = *(v1 + qword_942E88);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
      v20 = v18;
      sub_6DFBAC(v17, v19);
    }

    sub_759BC0();
    goto LABEL_9;
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*sub_AE0F4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_B33A4;
}

void sub_AE158(unint64_t a1)
{
  sub_BD88(&unk_943590, &unk_784940);
  sub_768900();
  sub_768ED0();
  v2 = v11[0];
  if (!(a1 >> 62))
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = sub_76A860();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  if (v3 >= 1)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      ++v6;
      v11[0] = v7;
      sub_758C20();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v8;
      v9[4] = v2;
      swift_retain_n();

      v10 = sub_769970();
      v11[3] = v5;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = v10;
      sub_768F10();

      sub_BEB8(v11);
    }

    while (v3 != v6);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t (*sub_AE374(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_B30F8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B311C;
}

unint64_t sub_AE404@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  a1[3] = &type metadata for ArticlePageGridProvider;
  result = sub_B30A4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_AE45C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArticlePageShelfLayoutSpacingProvider;
  result = sub_B3050();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_AE490()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v2 = sub_B3548(&qword_943528, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for ArticlePageShelfSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v2;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v1;
  sub_B3548(&qword_943530, type metadata accessor for ArticlePageShelfSupplementaryProvider, &unk_7ADC90);

  return v3;
}

void sub_AE590(uint64_t a1)
{
  v2 = sub_BD88(&qword_943500, &qword_782A18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_5FEECC(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  (*(v3 + 8))(v5, v2);
  if (v6 == a1)
  {
    v7 = sub_762560();
    sub_AE6E0(v7 & 1);
    sub_AE7C0();
  }
}

uint64_t sub_AE6E0(uint64_t result)
{
  v2 = *(v1 + qword_942E78);
  v3 = result & 1;
  *(v1 + qword_942E78) = result;
  if (v2 != v3)
  {
    v4 = qword_942E80;
    v5 = *(v1 + qword_942E80);
    *(v1 + qword_942E80) = v3;
    if (v5 != v3)
    {
      v6 = [objc_opt_self() sharedCoordinator];
      v7 = v6;
      if (*(v1 + v4))
      {
        v8 = &selRef_beginDelayingNotifications;
      }

      else
      {
        v8 = &selRef_endDelayingNotifications;
      }

      [v6 *v8];
    }

    sub_762560();
    return sub_768470();
  }

  return result;
}

void sub_AE7C0()
{
  v1 = sub_756AC0();
  __chkstk_darwin(v1);
  v26 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7570A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75AE80();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_762530())
  {
    v25 = v0;
    sub_75C1F0();
    if (swift_dynamicCastClass())
    {
      sub_75C1B0();
      sub_75AE90();

      if ((*(v8 + 88))(v10, v7) == enum case for ShareSheetData.Metadata.article(_:))
      {
        (*(v8 + 96))(v10, v7);
        v11 = *v10;
        v12 = sub_7616F0();
        v24 = v13;
        v14 = sub_761700();
        v23[1] = v15;
        v23[2] = v14;
        v23[0] = v11;
        sub_761720();
        sub_75C1B0();
        sub_75AE70();

        sub_757020();
        v17 = v16;
        (*(v4 + 8))(v6, v3);
        sub_34A130(v12, v24, v17, &v30);
        v33[0] = v30;
        v18 = v31;
        v29 = _swiftEmptyArrayStorage;
        sub_B2F4C(v33, v27);
        sub_B3548(&qword_943508, &type metadata accessor for AppEntityVisualState, &protocol conformance descriptor for AppEntityVisualState);
        v24 = v18;

        sub_BD88(&qword_943510, &qword_782A20);
        sub_16194(&qword_943518, &qword_943510, &qword_782A20, &protocol conformance descriptor for [A]);
        sub_76A5A0();
        v27[0] = v30;
        v27[1] = v31;
        v28 = v32;
        v19 = objc_allocWithZone(sub_766300());
        sub_B2FA8();
        v20 = sub_7662F0();
        v21 = [v25 view];
        if (v21)
        {
          v22 = v21;
          sub_769E60();

          sub_B2FFC(v33);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }
}

void sub_AEC60()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v3 = sub_66DFD8(20.0);
  [v3 setAlpha:0.0];
  [v3 addTarget:v0 action:"toggleMute" forControlEvents:64];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = *&v1[qword_99A520];
    *&v1[qword_99A520] = v3;
    v7 = v3;
    if (v6)
    {
      [v6 removeFromSuperview];
    }

    v8 = [v1 viewIfLoaded];
    [v8 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_AED94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  *(v4 + qword_942E68) = a1;

  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v37 = a4;
  v14(v11, a4, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v15 = qword_942E70;
  swift_beginAccess();

  sub_B33C8(v11, v4 + v15, &unk_955AA0, &qword_783ED0);
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && a2)
  {
    v18 = v17;
    v19 = swift_getObjectType();
    v20 = a2;
    v21 = a1;
    v22 = *(a3 + 136);
    v35 = v20;
    v23 = v20;
    v36 = a3;
    v24 = v22(ObjectType, a3);
    a1 = v21;
    v25 = sub_42E294(v21, v37, v24, *(v4 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph), v19, v18);
    v26 = *(v18 + 32);
    if (v26(v19, v18, v25))
    {
      v28 = v27;
      v29 = swift_getObjectType();
      (*(v28 + 32))((*(v4 + qword_99A4E8) & 1) == 0, v29, v28);
      swift_unknownObjectRelease();
    }

    if ((v26)(v19, v18))
    {
      v31 = v30;
      v32 = swift_getObjectType();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = *(v31 + 88);

      v34(sub_B35C0, v33, v32, v31);
      swift_unknownObjectRelease();
    }

    a2 = v35;
    a3 = v36;
  }

  sub_AF0D0(a1, a2, a3);
  sub_AF4F4();
}

void sub_AF0D0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AFB74(a2, a3, a1);
  v10 = v9;
  v11 = type metadata accessor for ArticleHeaderViewController();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isDisappearing] = 0;
  v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isAppearing] = 0;
  v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled] = 1;
  v13 = &v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets];
  v14 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  v13[1] = v14;
  *&v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_todayCard] = a1;
  v15 = &v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  *v16 = v8;
  v16[1] = v10;
  v44.receiver = v12;
  v44.super_class = v11;

  a2;
  v17 = v8;
  v18 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled] = v4[qword_99A4E8];
  sub_3104E4();
  v19 = [v4 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;

  v23 = [v18 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = &v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  v26 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  if (v26)
  {
    v27 = *(v25 + 1);
    v28 = *v25;
  }

  else
  {
    v27 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
    v28 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
    v26 = 0;
  }

  v29 = v26;
  v30 = sub_311270(v28, v27, v22);
  v32 = v31;

  [v24 setFrame:{0.0, 0.0, v30, v32}];
  v33 = v18;
  sub_AF930(v18);
  v34 = [v4 collectionView];
  if (v34)
  {
    v35 = v34;
    ObjectType = swift_getObjectType();
    v37 = *(a3 + 208);
    v38 = v33;
    v39 = v35;
    LOBYTE(v35) = v37(ObjectType, a3);
    type metadata accessor for ArticleHeaderScrollObserver();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    *(v40 + 32) = v35 & 1;
    v41 = qword_942E60;
    if (*&v4[qword_942E60])
    {
      sub_B3548(&qword_9434E8, type metadata accessor for ArticleHeaderScrollObserver, &unk_7A535C);
    }

    sub_75FA30();

    *&v4[v41] = v40;
    swift_retain_n();

    sub_B3548(&qword_9434E8, type metadata accessor for ArticleHeaderScrollObserver, &unk_7A535C);
    sub_75FA40();
  }

  v4[qword_99A500] = 1;
  v42 = [v4 viewIfLoaded];
  [v42 setNeedsLayout];

  v4[qword_942E30] = 1;
  v43 = [v4 viewIfLoaded];
  [v43 setNeedsLayout];
}

void sub_AF4F4()
{
  v1 = v0;
  v2 = sub_75C330();
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = *(v0 + qword_942E50);
  if (!v10)
  {
    return;
  }

  v41 = v7;
  v42 = v6;
  v11 = &v10[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 272);
  v43 = v10;
  if (v14(ObjectType, v12) & 1) != 0 || (v15 = *(v11 + 1), v16 = swift_getObjectType(), (v17 = (*(v15 + 264))(v16, v15)) != 0) && (v18 = v17, v19 = sub_50D80(), v18, (v19))
  {
    if (!*(v1 + qword_99A520))
    {
      sub_AEC60();
    }
  }

  v20 = *(v1 + qword_99A520);
  if (v20)
  {
    v21 = *(v11 + 1);
    v22 = swift_getObjectType();
    v23 = *(v21 + 264);
    v24 = v20;
    v25 = v23(v22, v21);
    if (v25)
    {
      v26 = v25;
      if (sub_50D80())
      {
        v27 = qword_9405B0;
        v28 = *&v26[qword_9405B0];
        if (v28)
        {
          LOBYTE(v28) = [v28 isMuted];
        }

        v29 = v42;
        sub_66DC84(v28);
        v30 = *&v26[v27];
        if (v30)
        {
          v31 = v30;
          sub_759A20();

          v32 = v41;
          (*(v41 + 32))(v9, v4, v29);
        }

        else
        {
          v32 = v41;
          (*(v41 + 104))(v9, enum case for VideoPlayerState.unknown(_:), v29);
        }

        if ((*(v32 + 88))(v9, v29) != enum case for VideoPlayerState.playing(_:) || (v34 = 1.0, (sub_50D80() & 1) == 0))
        {
          v34 = 0.0;
        }

        (*(v32 + 8))(v9, v29);
        [v24 alpha];
        if (v35 == v34)
        {
        }

        else
        {
          v36 = objc_opt_self();
          v37 = swift_allocObject();
          *(v37 + 16) = v24;
          *(v37 + 24) = v34;
          aBlock[4] = sub_B2390;
          aBlock[5] = v37;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_23F0CC;
          aBlock[3] = &unk_882C80;
          v38 = _Block_copy(aBlock);
          v39 = v24;

          [v36 animateWithDuration:4 delay:v38 options:0 animations:0.15 completion:0.0];

          _Block_release(v38);
        }

        return;
      }
    }

    else
    {
    }
  }

  v33 = v43;
}

void sub_AF930(void *a1)
{
  v3 = qword_942E50;
  v4 = *&v1[qword_942E50];
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    [v5 removeFromParentViewController];
    v6 = [v5 viewIfLoaded];
    [v6 removeFromSuperview];

    [v5 didMoveToParentViewController:0];
    v7 = *&v1[v3];
  }

  else
  {
    v7 = 0;
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    [v8 willMoveToParentViewController:v1];
    [v1 addChildViewController:v8];
    if ([v1 isViewLoaded])
    {
      sub_A99B0();
    }

    [v8 didMoveToParentViewController:v1];
  }
}

id sub_AFA88(void *a1, id a2, SEL *a3, SEL *a4)
{
  result = [a2 *a3];
  if (result)
  {
    v8 = result;
    [a1 frame];
    v10 = v9;
    v12 = v11;
    v13 = [a2 *a4];
    [v8 convertPoint:v13 fromView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    [a1 frame];

    return [a1 setFrame:{v15, v17}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_AFB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 136);
  if (v12(ObjectType, a2) != 4 && v12(ObjectType, a2) != 6)
  {
    return 0;
  }

  (*(a2 + 112))(ObjectType, a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_955AA0, &qword_783ED0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = sub_283ECC(v28, 5);
  v15 = v14;
  v16 = swift_getObjectType();
  if (!v13 || v16 == v13)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = [v27 traitCollection];
  v18 = sub_7699B0();
  v26 = type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

LABEL_15:
    v21 = 1;
    goto LABEL_16;
  }

  v19 = *(v15 + 160);
  v24 = v18;
  v18 = v19(v13, v15);

  v20 = v18 == 6;
  LOBYTE(v18) = v24;
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = 6;
LABEL_16:
  if ((v18 & 1) == 0)
  {
    v21 = 5;
  }

  LODWORD(v25) = v21;
  (*(a2 + 216))(v29, ObjectType, a2);
  (*(v15 + 224))(v29, v13, v15);
  (*(v15 + 296))(v28, v25, v10, *&v27[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph], v13, v15);
  if (swift_dynamicCastClass())
  {
    (*(v15 + 96))(1, v13, v15);
  }

  (*(v8 + 8))(v10, v7);
  return v17;
}

void sub_AFF48()
{
  v1 = v0;
  v2 = qword_942E88;
  v3 = *&v0[qword_942E88];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = [v0 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(type metadata accessor for FooterLockupView()) init];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_672B58(sub_B3430, v8);

    v9 = *&v1[v2];
    *&v1[v2] = v7;
    v10 = v7;

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addSubview:v13];

      type metadata accessor for ArticleFooterViewScrollObserver();
      v14 = swift_allocObject();
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = xmmword_782920;
      *(v14 + 64) = 0x4028000000000000;
      *(v14 + 16) = v13;
      *(v14 + 24) = v6;
      *(v14 + 72) = 0;
      v15 = v13;
      v21 = v6;
      sub_662A8C(0);

      v16 = qword_942E90;
      if (*&v1[qword_942E90])
      {
        sub_B3548(&qword_9435A0, type metadata accessor for ArticleFooterViewScrollObserver, &unk_7AC050);
      }

      sub_75FA30();

      *&v1[v16] = v14;
      swift_retain_n();

      sub_B3548(&qword_9435A0, type metadata accessor for ArticleFooterViewScrollObserver, &unk_7AC050);
      sub_75FA40();

      v17 = *&v1[v16];
      if (v17)
      {
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = *(v17 + 32);
        v20 = *(v17 + 40);
        *(v17 + 32) = sub_B3460;
        *(v17 + 40) = v18;

        sub_F704(v19, v20);

        if (*&v1[v16])
        {

          sub_662A8C(1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_B029C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a2();
  }

  return result;
}

void sub_B0320(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_B037C(a1 & 1, v4);
  }
}

uint64_t sub_B037C(int a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_7572A0();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_768AB0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_99A530;
  swift_beginAccess();
  sub_1ED18(v2 + v13, v8, &unk_93FF30, &unk_77DB10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10A2C(v8, &unk_93FF30, &unk_77DB10);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_761820();
  swift_getObjectType();
  sub_757290();
  v15 = (v18 + 8);
  v16 = (v10 + 8);
  if (v19)
  {
    sub_768B50();
  }

  else
  {
    sub_768B60();
  }

  swift_unknownObjectRelease();
  (*v15)(v5, v3);
  return (*v16)(v12, v9);
}

void sub_B063C()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v1, v3);
  sub_7625B0();
  sub_B3548(&qword_955E90, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  sub_75EBD0();
  (*(v2 + 8))(v5, v1);
  if (v0[qword_942E78] == 1)
  {
    sub_762480();
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v6 = sub_768FF0();
    sub_BE38(v6, qword_9A0400);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }

  else
  {
    v7 = *&v0[qword_99A508];
    if (v7)
    {
      v8 = *&v0[qword_99A508 + 8];

      v7(v9);
      sub_F704(v7, v8);
    }

    else
    {
      [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_B0908(void *a1)
{
  v1 = a1;
  sub_B063C();
}

void sub_B0950()
{
  v1 = *(v0 + qword_942E50);
  if (v1)
  {
    v2 = v0;
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
      v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v6 = v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
      v4 = *(v6 + 8);
      v5 = *v6;
    }

    ObjectType = swift_getObjectType();
    v8 = *(v4 + 264);
    v9 = v3;
    v16 = v8(ObjectType, v4);

    if (v16)
    {
      sub_56974(v10);
      v11 = v16;
      v12 = *(v2 + qword_99A520);
      if (v12)
      {
        v13 = *&v16[qword_9405B0];
        v14 = v12;
        if (v13)
        {
          v15 = [v13 isMuted];
        }

        else
        {
          v15 = 1;
        }

        sub_66DC84(v15);

        v11 = v16;
      }
    }
  }
}

void sub_B0AAC(void *a1)
{
  v1 = a1;
  sub_B0950();
}

char *sub_B0AF4(char *result)
{
  v1 = *&result[qword_99A510];
  if (v1)
  {
    v2 = *&result[qword_99A510 + 8];
    v3 = result;
    v4 = sub_F714(v1, v2);
    v1(v4);

    return sub_F704(v1, v2);
  }

  return result;
}

void sub_B0B7C()
{
  v1 = *(v0 + qword_942E48);
  if (v1)
  {
    v2 = v0;

    sub_765B20();
    v3 = sub_75B080();

    v5 = qword_942E50;
    v6 = *(v2 + qword_942E50);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
      if (v7)
      {
        v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
        v9 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
      }

      else
      {
        v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8);
        v9 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
        v7 = 0;
      }

      v13 = v7;
      v12 = v9;
      v11 = v12;
    }

    else
    {
      sub_44EFD4(v3, v4);
      v8 = v10;
      v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      if (!*(v2 + v5))
      {
        type metadata accessor for RiverTodayCardCollectionViewCell(0);
        if (swift_dynamicCastClass())
        {
          sub_AD270(v1, v11, v8, 7);
        }

        sub_AF0D0(v1, v11, v8);
      }

      v12 = 0;
    }

    sub_AD270(v1, v11, v8, 7);
    v14 = *(v2 + v5);
    if (!v14 || ((v15 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell), swift_getObjectType(), swift_conformsToProtocol2()) ? (v16 = v15 == 0) : (v16 = 1), v16))
    {
    }

    else
    {
      sub_761120();
      sub_768900();
      v17 = v15;
      sub_768ED0();
      swift_getObjectType();
      v18 = sub_75EF20();
      v19 = v17;
      sub_761100();
    }
  }
}

void sub_B0E2C(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_768FF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v32 = a1[1];
  v33 = v13;
  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_9A0418);
  (*(v10 + 16))(v12, v14, v9);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  v34 = a2;
  sub_75A260();
  v15 = sub_7570A0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_10A2C(v8, &unk_93FD30, qword_77F240);
    aBlock = 0u;
    v38 = 0u;
  }

  else
  {
    *(&v38 + 1) = v15;
    v17 = sub_B1B4(&aBlock);
    (*(v16 + 32))(v17, v8, v15);
  }

  sub_7685E0();
  sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
  sub_768E90();

  (*(v10 + 8))(v12, v9);
  v18 = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *&Strong[qword_942E58];
    if (v21)
    {

      v22 = swift_allocObject();
      v23 = v34;
      v24 = v32;
      v25 = v33;
      v22[2] = v35;
      v22[3] = v25;
      v22[4] = v24;
      v22[5] = v23;
      v22[6] = v18;
      v41 = 1;
      v31 = *(v21 + 32);
      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = sub_B3254;
      v26[4] = v22;
      v26[5] = &v41;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_B32A4;
      *(v27 + 24) = v26;
      v39 = sub_47164;
      v40 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v38 = sub_1EB578;
      *(&v38 + 1) = &unk_882EB0;
      v28 = _Block_copy(&aBlock);

      v29 = v24;
      v30 = v35;
      sub_B32C0(v25, v29);

      dispatch_sync(v31, v28);
      _Block_release(v28);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        __break(1u);
      }

      else
      {
        if ((v41 & 1) == 0)
        {
          sub_B137C(v30, v33, v32, v34, v18);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_B137C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_768380();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_7683C0();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v23 = a3;
  v28 = a4;
  sub_758C10();
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v15 = sub_769970();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a4;
  v26 = sub_B3364;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_23F0CC;
  v25 = &unk_882F00;
  v17 = _Block_copy(&aBlock);

  sub_7683A0();
  aBlock = _swiftEmptyArrayStorage;
  sub_B3548(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
  sub_76A5A0();
  sub_769980();
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

void sub_B16A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_762510();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionView];

    if (v6)
    {
      v7 = [v6 collectionViewLayout];

      [v7 invalidateLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_B17A8()
{
  v0 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_768FF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v3, qword_9A0418);
  (*(v4 + 16))(v6, v7, v3);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  sub_75A260();
  v8 = sub_7570A0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_10A2C(v2, &unk_93FD30, qword_77F240);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v8;
    v10 = sub_B1B4(&v12);
    (*(v9 + 32))(v10, v2, v8);
  }

  sub_7685E0();
  sub_10A2C(&v12, &unk_93FBD0, &qword_77DFA0);
  sub_768E90();

  return (*(v4 + 8))(v6, v3);
}

id sub_B1ACC(id result, uint64_t a2, uint64_t a3)
{
  if ((*(result + qword_99A4E8) & 1) == 0)
  {
    v4.receiver = result;
    v4.super_class = swift_getObjectType();
    return objc_msgSendSuper2(&v4, "scrollViewDidScroll:", a3);
  }

  return result;
}

double sub_B1B28()
{
  v0 = sub_AACD0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_76A770();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:1];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

double sub_B1C18()
{
  v0 = sub_AACD0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_76A770();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:0];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

uint64_t sub_B1D08(void *a1)
{
  v1 = a1;
  sub_B063C();

  return 1;
}

uint64_t type metadata accessor for ArticleDiffablePageViewController(uint64_t a1)
{
  result = qword_942EC0;
  if (!qword_942EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B1D84(uint64_t a1)
{
  sub_B1EE4(319, qword_942ED0, &type metadata accessor for PageGrid);
  if (v1 <= 0x3F)
  {
    sub_B1EE4(319, &qword_948530, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_B1EE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_B1F40(int a1)
{
  v3 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_942E68];
  if (!v10)
  {
    return;
  }

  v11 = *&v1[qword_942E50];
  if (!v11)
  {
    return;
  }

  v12 = v11 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = qword_942E70;
  swift_beginAccess();
  sub_1ED18(&v1[v15], v5, &unk_955AA0, &qword_783ED0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10A2C(v5, &unk_955AA0, &qword_783ED0);
    return;
  }

  (*(v7 + 32))(v9, v5, v6);
  v37 = v1;
  v36 = a1;
  if (a1)
  {

    v13;
    v16 = [v1 traitCollection];
    v17 = sub_7699B0();
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v19 = (*(v14 + 160))(ObjectType, v14);

      if (v19 == 6)
      {
        v20 = 6;
LABEL_15:
        v25 = v37;
        v30 = (v17 & 1) == 0;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v20 = 1;
    goto LABEL_15;
  }

  v21 = swift_getObjectType();
  v22 = *(v14 + 160);

  v23 = v13;
  v34 = v21;
  v35 = v23;
  v33 = v22;
  v24 = (v22)(v21, v14);
  v25 = v37;
  v26 = v24;
  if (v24 != 7)
  {
    goto LABEL_22;
  }

  v27 = [v37 traitCollection];
  v28 = sub_7699B0();
  type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_17;
  }

  v29 = v33(v34, v14);

  if (v29 != 6)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_18;
  }

  v20 = 6;
LABEL_18:
  v25 = v37;
  v30 = (v28 & 1) == 0;
LABEL_19:
  if (v30)
  {
    v26 = 5;
  }

  else
  {
    v26 = v20;
  }

LABEL_22:
  v31 = swift_getObjectType();
  (*(v14 + 296))(v10, v26, v9, *&v25[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph], v31, v14);
  if (v36)
  {
    sub_AF4F4();
  }

  [v13 layoutIfNeeded];
  v38 = v13;
  (*(*(v14 + 16) + 8))(v31);

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_B2358()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_B23A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_B23BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_99A4E0;
  *(v2 + v8) = [objc_allocWithZone(type metadata accessor for TodayArticleTransitioningDelegate(0)) init];
  *(v2 + qword_942E30) = 0;
  *(v2 + qword_942E38) = 0;
  *(v2 + qword_99A4E8) = 1;
  v9 = qword_99A4F0;
  sub_BD88(&qword_9434F0, &qword_782A00);
  swift_allocObject();
  *(v2 + v9) = sub_768480();
  *(v2 + qword_99A4F8) = 1;
  *(v2 + qword_99A500) = 0;
  v10 = qword_942E40;
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  v11 = sub_4AB838(2);
  *(v2 + v10) = v11;
  v12 = (v2 + qword_99A508);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + qword_99A510);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + qword_99A518) = 0;
  *(v2 + qword_99A520) = 0;
  *(v2 + qword_99A528) = 0;
  *(v2 + qword_942E48) = 0;
  *(v2 + qword_942E50) = 0;
  *(v2 + qword_942E58) = 0;
  *(v2 + qword_942E60) = 0;
  *(v2 + qword_942E68) = 0;
  v14 = qword_942E70;
  v15 = sub_7656C0();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + qword_942E78) = 0;
  *(v2 + qword_942E80) = 0;
  *(v2 + qword_942E88) = 0;
  *(v2 + qword_942E90) = 0;
  v16 = qword_99A530;
  v17 = sub_768AB0();
  (*(*(v17 - 8) + 56))(v2 + v16, 1, 1, v17);
  v20[1] = v11;

  sub_768490();
  v18 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  return sub_46B3E0(a1, v18);
}

char *sub_B26E8(uint64_t a1, uint64_t a2, char a3)
{
  objc_allocWithZone(type metadata accessor for ArticleDiffablePageViewController(0));

  v6 = sub_B23BC(a1);

  if (a3)
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v7 = type metadata accessor for StoreNavigationController();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = a2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16.receiver = v8;
    v16.super_class = v7;

    v10 = objc_msgSendSuper2(&v16, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v10 setDelegate:{v10, v16.receiver, v16.super_class}];
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77D9F0;
    *(v11 + 32) = v6;
    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v12 = v6;
    isa = sub_769450().super.isa;

    [v10 setViewControllers:isa];

    v6 = sub_150700(v10, v12);
    [v6 setModalPresentationStyle:4];
    [v6 setTransitioningDelegate:*&v12[qword_99A4E0]];
    [v6 setModalPresentationCapturesStatusBarAppearance:1];
  }

  else
  {
    v14 = v6[qword_99A4E8];
    v6[qword_99A4E8] = 0;
    sub_A9864(v14);
    sub_A923C(0, 0);
  }

  return v6;
}

uint64_t sub_B2904()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B296C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B2A04(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v4 = sub_765B60()) == 0 || (v19[0] = v4, sub_75C250(), sub_BD88(&unk_9435C0, qword_782A78), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  if (!a2 || (v5 = sub_765B60()) == 0 || (*&v17[0] = v5, sub_75C250(), sub_BD88(&unk_9435C0, qword_782A78), (swift_dynamicCast() & 1) == 0))
  {
    memset(v19, 0, 40);
  }

  if (!a1 || (*&v15[0] = sub_765B20(), sub_75B090(), sub_BD88(&qword_9435B8, &qword_782A70), (swift_dynamicCast() & 1) == 0))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  if (!a2 || (v13[0] = sub_765B20(), sub_75B090(), sub_BD88(&qword_9435B8, &qword_782A70), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_1ED18(v20, v13, &qword_9435A8, &qword_782A60);
  if (v14)
  {
    sub_B170(v13, v14);
    v6 = sub_762450();
    sub_BEB8(v13);
  }

  else
  {
    sub_10A2C(v13, &qword_9435A8, &qword_782A60);
    v6 = 0;
  }

  sub_1ED18(v19, v13, &qword_9435A8, &qword_782A60);
  if (v14)
  {
    sub_B170(v13, v14);
    v7 = sub_762450();
    sub_BEB8(v13);
    if (v6)
    {
      if (v7)
      {
        v8 = sub_11777C(v6, v7);

LABEL_26:

        goto LABEL_28;
      }

LABEL_23:
      v8 = 0;
      goto LABEL_26;
    }

    if (v7)
    {
      v8 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_10A2C(v13, &qword_9435A8, &qword_782A60);
    if (v6)
    {
      goto LABEL_23;
    }
  }

  v8 = 1;
LABEL_28:
  sub_1ED18(v17, v13, &qword_9435B0, &qword_782A68);
  if (v14)
  {
    sub_B170(v13, v14);
    v9 = sub_7615E0();
    sub_BEB8(v13);
  }

  else
  {
    sub_10A2C(v13, &qword_9435B0, &qword_782A68);
    v9 = 0;
  }

  sub_1ED18(v15, v13, &qword_9435B0, &qword_782A68);
  if (v14)
  {
    sub_B170(v13, v14);
    v10 = sub_7615E0();
    sub_BEB8(v13);
    if (v9)
    {
      if (v10)
      {
        v11 = sub_11777C(v9, v10);

LABEL_39:

        goto LABEL_41;
      }

LABEL_36:
      v11 = 0;
      goto LABEL_39;
    }

    if (v10)
    {
      v11 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    sub_10A2C(v13, &qword_9435B0, &qword_782A68);
    if (v9)
    {
      goto LABEL_36;
    }
  }

  v11 = 1;
LABEL_41:
  sub_1ED18(v20, v13, &qword_9435A8, &qword_782A60);
  if (v14)
  {
    sub_B170(v13, v14);
    sub_762450();
    sub_BEB8(v13);

    if (v8)
    {
      v11 = 1;
      goto LABEL_48;
    }
  }

  else
  {
    sub_10A2C(v13, &qword_9435A8, &qword_782A60);
  }

  sub_1ED18(v17, v13, &qword_9435B0, &qword_782A68);
  if (v14)
  {
    sub_B170(v13, v14);
    sub_7615E0();
    sub_BEB8(v13);
  }

  else
  {
    sub_10A2C(v13, &qword_9435B0, &qword_782A68);
    v11 = 0;
  }

LABEL_48:
  sub_10A2C(v15, &qword_9435B0, &qword_782A68);
  sub_10A2C(v17, &qword_9435B0, &qword_782A68);
  sub_10A2C(v19, &qword_9435A8, &qword_782A60);
  sub_10A2C(v20, &qword_9435A8, &qword_782A60);
  return v11 & 1;
}

unint64_t sub_B2FA8()
{
  result = qword_943520;
  if (!qword_943520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943520);
  }

  return result;
}

unint64_t sub_B3050()
{
  result = qword_943538;
  if (!qword_943538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943538);
  }

  return result;
}

unint64_t sub_B30A4()
{
  result = qword_943540;
  if (!qword_943540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943540);
  }

  return result;
}

uint64_t sub_B3148()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B31A4()
{

  v1 = *(v0 + 24);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_B3204(v1, *(v0 + 32));
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_B3204(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_B3264()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_B32C0(uint64_t result, void *a2)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    sub_B32D4(result, a2);
  }
}

void sub_B32D4(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {

    v3 = a2;
  }

  else
  {
  }
}

uint64_t sub_B3324()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B336C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B33C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BD88(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_B348C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B34F0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_B3548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CappedSizeRoundedTitledButton(uint64_t a1)
{
  result = qword_943600;
  if (!qword_943600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_B3688(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v11 = a1;
  objc_msgSendSuper2(&v16, "sizeThatFits:", a2, a3);
  v13 = v12;
  v14 = *&v11[qword_9435F0 + 24];
  sub_B170(&v11[qword_9435F0], v14);
  sub_33964(v14);
  sub_766700();

  (*(v8 + 8))(v10, v7);
  return v13;
}

void sub_B37F0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_B386C(char *result)
{
  v1 = *&result[qword_9435F8];
  if (v1)
  {
    v2 = *&result[qword_9435F8 + 8];
    v3 = result;
    v4 = sub_F714(v1, v2);
    v1(v4);

    return sub_F704(v1, v2);
  }

  return result;
}

id sub_B38F0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

uint64_t sub_B3988()
{
  sub_BEB8((v0 + qword_9435F0));
  v1 = *(v0 + qword_9435F8);
  v2 = *(v0 + qword_9435F8 + 8);

  return sub_F704(v1, v2);
}

uint64_t sub_B39CC(uint64_t a1)
{
  sub_BEB8((a1 + qword_9435F0));
  v2 = *(a1 + qword_9435F8);
  v3 = *(a1 + qword_9435F8 + 8);

  return sub_F704(v2, v3);
}

void sub_B3A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride];
    if (v7)
    {
      v8 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride + 8];

      v7(v9);

      sub_F704(v7, v8);
    }

    else
    {
      v10 = [Strong presentingViewController];
      if (v10)
      {
        v11 = v10;
        [v10 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }
}

double sub_B3AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_769460();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);

  return result;
}

void sub_B3C30()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_B3DE8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v36, "viewDidAppear:", v3 & 1);
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController;
    if ((v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController] & 1) == 0)
    {
      v6 = v4;
      v7 = [v6 popoverPresentationController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 sourceView];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 window];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 superview];
            if (v13)
            {
              v14 = v13;
              [v10 frame];
              [v14 convertRect:v12 toCoordinateSpace:?];
              v16 = v15;
              v18 = v17;
              v20 = v19;
              v22 = v21;
            }

            else
            {
              v16 = 0.0;
              v18 = 0.0;
              v20 = 0.0;
              v22 = 0.0;
            }

            v23 = [v2 view];
            [v8 setSourceView:v23];

            [v8 sourceRect];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v37.origin.x = v16;
            v37.origin.y = v18;
            v37.size.width = v20;
            v37.size.height = v22;
            MinX = CGRectGetMinX(v37);
            v33 = v16;
            v34 = MinX;
            v38.origin.x = v33;
            v38.origin.y = v18;
            v38.size.width = v20;
            v38.size.height = v22;
            MinY = CGRectGetMinY(v38);
            v39.origin.x = v25;
            v39.origin.y = v27;
            v39.size.width = v29;
            v39.size.height = v31;
            v40 = CGRectOffset(v39, v34, MinY);
            [v8 setSourceRect:{v40.origin.x, v40.origin.y, v40.size.width, v40.size.height}];

            v8 = v10;
          }

          else
          {
            v12 = v10;
          }

          v8 = v12;
        }
      }

      [v2 presentViewController:v6 animated:v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_animatedContext] completion:0];

      v2[v5] = 1;
    }
  }
}