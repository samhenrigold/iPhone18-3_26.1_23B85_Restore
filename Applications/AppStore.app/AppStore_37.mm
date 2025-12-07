void sub_10041AFC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
      v8 = Strong;

      v9 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {

        sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(a1, 1, v7, v5);

        (*(v10 + 8))(v5, v9);
      }
    }
  }
}

uint64_t sub_10041B17C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_10097CCA0, &unk_1007B70F0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100118188(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1001181EC(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
  sub_100118248(&v9[*(v19 + 48)], v18);
  DiffablePagePresenter.pageUrl.getter();
  v20 = *(v4 + 48);
  sub_100031660(v15, v6, &qword_100982460, &unk_1007B5C90);
  sub_100031660(v18, &v6[v20], &qword_100982460, &unk_1007B5C90);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100031660(v6, v12, &qword_100982460, &unk_1007B5C90);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_10000782C(&qword_100975040, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = v21;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
      v27(v12, v2);
      sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
      return v23 & 1;
    }

    sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10002B894(v6, &unk_10097CCA0, &unk_1007B70F0);
    goto LABEL_9;
  }

  sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
  v23 = 1;
  return v23 & 1;
}

double sub_10041B638()
{

  sub_10001F63C(*(v0 + qword_100984B58), *(v0 + qword_100984B58 + 8));

  return result;
}

double sub_10041B6FC(uint64_t a1)
{

  sub_10001F63C(*(a1 + qword_100984B58), *(a1 + qword_100984B58 + 8));

  return result;
}

uint64_t type metadata accessor for ArcadeDiffablePageViewController(uint64_t a1)
{
  result = qword_100984BE0;
  if (!qword_100984BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10041B91C(char a1, char a2, char a3)
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
    *(v14 + 16) = sub_10041D4E0;
    *(v14 + 24) = v9;
    v24 = sub_100116A08;
    v25 = v14;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1006D1458;
    v23 = &unk_1008C2108;
    v15 = _Block_copy(&v20);

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v11;
    *(v17 + 25) = v10;
    v24 = sub_10041D4F0;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1006D1458;
    v23 = &unk_1008C2158;
    v18 = _Block_copy(&v20);

    [v13 animateAlongsideTransition:v15 completion:v18];

    _Block_release(v18);
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10041BF34(v8, v10, a2 & 1);
  }

  return result;
}

void sub_10041BBC4(uint64_t a1, double a2)
{
  v3 = type metadata accessor for Feature.iOS();
  v25[3] = v3;
  v25[4] = sub_10000782C(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v4 = sub_1000056E0(v25);
  (*(*(v3 - 8) + 104))(v4, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v3);
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_100007000(v25);
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

    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
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

          else if (v13 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v14 = *(v10 + 8 * v13 + 32);
            goto LABEL_11;
          }

          __break(1u);
          return;
        }

        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

        sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
        v16 = static NSObject.== infix(_:_:)();

        if ((v16 & 1) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    if (*&v17[qword_1009D01C8])
    {

      goto LABEL_21;
    }

    v18 = v17;
    v19 = [v17 traitCollection];
    v20 = UITraitCollection.isRegularPad.getter();

    if (v20)
    {
LABEL_21:
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v23 = *(v21 + qword_1009D01C8);
        if (v23)
        {
          [*(v23 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:a2];
        }

        sub_10070BF90(a2 == 1.0);
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
  sub_100417B78();
LABEL_27:
}

void sub_10041BF34(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_10006230C() & 1) == 0)
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
        v10 = *(v9 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_1009D01C8]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_10070BF90(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_1009D01D0];
        if (v13)
        {
          v14 = *&v6[qword_1009D01C8];

          if (v14 || (v15 = [v6 traitCollection], v16 = UITraitCollection.isRegularPad.getter(), v15, (v16 & 1) != 0))
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

        v24 = *&v6[qword_1009D01C8];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_10041C194(void *a1, uint64_t a2, char a3, char a4)
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
        sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
        v13 = v8;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          swift_unknownObjectWeakInit();
          sub_10070BD28(&v15, (a4 & 1) == 0, (a3 & 1) == 0);
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

unint64_t sub_10041C2F4(uint64_t a1)
{
  type metadata accessor for EditorialPageKey();
  sub_10000782C(&qword_100983C58, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10041C38C(a1, v2);
}

unint64_t sub_10041C38C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for EditorialPageKey();
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
      sub_10000782C(&qword_100983C60, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
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

unint64_t sub_10041C550(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009851A8, &qword_1007CC758);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_1009851B0, &qword_1007CC760);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_1009851A8, &qword_1007CC758);
      result = sub_10041C2F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EditorialPageKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for URL();
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

char *sub_10041C770(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v5 - 8);
  v31 = type metadata accessor for StoreTab.Identifier();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StoreTab();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  *(v2 + qword_100984B50) = 1;
  v14 = (v2 + qword_100984B58);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + qword_100984B60) = 2;
  v15 = (v2 + qword_1009D01C8);
  *v15 = 0;
  v15[1] = 0;
  *(v2 + qword_1009D01D0) = 0;
  *(v2 + qword_100984B70) = 0;
  *(v2 + qword_100984B78) = _swiftEmptySetSingleton;
  v16 = v2 + qword_100984B80;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v2 + qword_100984B88) = 0;
  *(v2 + qword_1009D01D8) = 0;
  v17 = v2 + qword_100984B90;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_100984B98;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v2 + qword_100984BA0) = 0;
  v19 = v2 + qword_100984BA8;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 1;
  type metadata accessor for InAppMessagesManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v2 + qword_100984B48) = v35;
  type metadata accessor for ArcadeTitleEffectCollectionElementsObserver();
  swift_allocObject();

  *(v2 + qword_100984BB0) = ArcadeTitleEffectCollectionElementsObserver.init(presenter:)();
  (*(v6 + 104))(v8, enum case for StoreTab.Identifier.arcade(_:), v31);

  DiffablePagePresenter.pageUrl.getter();

  sub_10041C550(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v20 = v32;
  (*(v34 + 16))(v10, v13, v32);
  v21 = objc_allocWithZone(type metadata accessor for ArcadeHeaderButtonContainer());

  *(v2 + qword_100984B68) = sub_1005FB7C4(v10, a2);

  v22 = sub_1003BA8C0(a1, a2);
  type metadata accessor for FloatingUnifiedMessageCoordinator();
  v23 = v22;
  inject<A, B>(_:from:)();
  v24 = v35;
  v25 = *(*&v23[qword_100984B68] + OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_accountButton);
  FloatingUnifiedMessageCoordinator.register(accountButton:with:for:)();

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007B10D0;
  v27 = type metadata accessor for UITraitHorizontalSizeClass();
  *(v26 + 32) = v27;
  *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B1E00;
  *(v28 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v28 + 48) = type metadata accessor for UITraitLayoutDirection();
  *(v28 + 56) = &protocol witness table for UITraitLayoutDirection;
  *(v28 + 64) = v27;
  *(v28 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  (*(v34 + 8))(v13, v20);
  return v23;
}

void sub_10041CCEC(__n128 a1)
{
  v2 = v1;
  v3 = qword_1009D01D0;
  if (!*&v1[qword_1009D01D0])
  {
    CompoundScrollObserver.removeChild(_:)();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NavigationBarVisibilityScrollObserver();
    v5 = swift_allocObject();
    *(v5 + 32) = xmmword_1007CC620;
    *(v5 + 16) = sub_10041D4D8;
    *(v5 + 24) = v4;
    *&v1[v3] = v5;

    sub_10000782C(&qword_1009851D0, type metadata accessor for NavigationBarVisibilityScrollObserver, &unk_1007B2DA8);
    CompoundScrollObserver.addChild(_:)();
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

  v9 = *(v8 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v9 & 1) == 0)
  {
    v10 = [v2 navigationController];
    if (v10)
    {

      if (sub_10006230C())
      {
        swift_unknownObjectWeakInit();
        sub_10070BD28(v42, 0, 0);
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
    sub_100072908(v23, MinY);
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
      sub_10070BD28(v42, 1, 1);
      swift_unknownObjectWeakDestroy();
      v40 = type metadata accessor for Feature.iOS();
      v42[3] = v40;
      v42[4] = sub_10000782C(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
      v41 = sub_1000056E0(v42);
      (*(*(v40 - 8) + 104))(v41, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v40);
      LOBYTE(v40) = isFeatureEnabled(_:)();
      sub_100007000(v42);
      if (v40)
      {
        sub_100417B78();
      }
    }
  }

  sub_100417B78();
}

void sub_10041D164(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + qword_100984B98;
  if ((*(a1 + qword_100984B98 + 16) & 1) == 0)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v16 = v8;
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v15 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10041D478;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C1FA0;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000782C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v15;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v16);
  }
}

id sub_10041D488()
{
  result = *(*(v0 + 16) + qword_100984B88);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

id sub_10041D4B4(id result)
{
  if ((*(v1 + 16) & 1) == 0 && !result)
  {
    return [*(v1 + 24) setHidden:1];
  }

  return result;
}

CGFloat sub_10041D8D8()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_1009D01E0 = v2;
  return v2.m21;
}

uint64_t type metadata accessor for RevealingImageMirrorView(uint64_t a1)
{
  result = qword_1009852E8;
  if (!qword_1009852E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10041DA04(uint64_t a1)
{
  if (!a1)
  {
    sub_1002F62D8();
    goto LABEL_7;
  }

  SearchResultsMessage.primaryText.getter();
  v1 = LinkableText.linkedSubstrings.getter();
  sub_1000D6F24(v1, sub_1000C17B0);
  v3 = v2;

  v4 = LinkableText.styledText.getter();
  sub_1002F6004(v4, 0, v3);

  if (!SearchResultsMessage.secondaryText.getter())
  {
LABEL_7:
    sub_1002F62D8();
    return;
  }

  v5 = LinkableText.linkedSubstrings.getter();
  sub_1000D6F24(v5, sub_10041DBBC);
  v7 = v6;

  v8 = LinkableText.styledText.getter();
  sub_1002F6004(v8, 0, v7);
}

uint64_t sub_10041DBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    [a1 pageMarginInsets];
    v8 = [a1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 != 1)
    {
      v10 = [a1 traitCollection];
      [v10 userInterfaceIdiom];
    }
  }

  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for StaticDimension();
  v12 = sub_1000056A8(v11, qword_1009D2460);
  v82[3] = v11;
  v82[4] = &protocol witness table for StaticDimension;
  v13 = sub_1000056E0(v82);
  v14 = *(v11 - 8);
  v43 = *(v14 + 16);
  v44 = v12;
  v42 = v14 + 16;
  v43(v13, v12, v11);
  if (qword_10096E380 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v54 = sub_1000056A8(v15, qword_1009D1A00);
  v16 = *(v15 - 8);
  v51 = *(v16 + 16);
  v47 = v16 + 16;
  v51(v7, v54, v15);
  v50 = enum case for FontSource.useCase(_:);
  v46 = v4[13];
  v46(v7);
  v81[3] = v11;
  v81[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v81);
  v79 = v3;
  v80 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v78);
  v18 = v4[2];
  v18(v17, v7, v3);
  StaticDimension.init(_:scaledLike:)();
  v19 = v4[1];
  v19(v7, v3);
  v41 = v15;
  v51(v7, v54, v15);
  v52 = v4 + 13;
  v20 = v46;
  (v46)(v7, v50, v3);
  v21 = v20;
  v40 = v11;
  v79 = v11;
  v80 = &protocol witness table for StaticDimension;
  sub_1000056E0(v78);
  v76 = v3;
  v77 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v75);
  v53 = v18;
  v54 = (v4 + 2);
  v18(v22, v7, v3);
  v23 = v19;
  StaticDimension.init(_:scaledLike:)();
  v49 = v4 + 1;
  v19(v7, v3);
  if (qword_10096E388 != -1)
  {
    swift_once();
  }

  v24 = v41;
  v25 = sub_1000056A8(v41, qword_1009D1A18);
  v51(v7, v25, v24);
  (v21)(v7, v50, v3);
  v26 = v40;
  v76 = v40;
  v77 = &protocol witness table for StaticDimension;
  sub_1000056E0(v75);
  v73 = v3;
  v74 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v72);
  v53(v27, v7, v3);
  StaticDimension.init(_:scaledLike:)();
  v23(v7, v3);
  v48 = v23;
  if (qword_10096E390 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v24, qword_1009D1A30);
  v51(v7, v28, v24);
  (v21)(v7, v50, v3);
  v73 = v26;
  v74 = &protocol witness table for StaticDimension;
  sub_1000056E0(v72);
  v70 = v3;
  v71 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(v69);
  v53(v29, v7, v3);
  StaticDimension.init(_:scaledLike:)();
  v48(v7, v3);
  v70 = v26;
  v71 = &protocol witness table for StaticDimension;
  v30 = sub_1000056E0(v69);
  v32 = v43;
  v31 = v44;
  v43(v30, v44, v26);
  v68[3] = v26;
  v68[4] = &protocol witness table for StaticDimension;
  v33 = sub_1000056E0(v68);
  v32(v33, v31, v26);
  *v7 = UIFontTextStyleFootnote;
  LODWORD(v51) = enum case for FontSource.textStyle(_:);
  v21(v7);
  v67[3] = v26;
  v67[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v67);
  v65 = v3;
  v66 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v64);
  v35 = v53;
  v53(v34, v7, v3);
  v36 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v37 = v48;
  v48(v7, v3);
  *v7 = v36;
  (v46)(v7, v51, v3);
  v65 = v26;
  v66 = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v62 = v3;
  v63 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v61);
  v35(v38, v7, v3);
  StaticDimension.init(_:scaledLike:)();
  v37(v7, v3);
  v62 = &type metadata for Double;
  v63 = &protocol witness table for Double;
  v60 = &protocol witness table for Double;
  v61[0] = 0x4077700000000000;
  v59 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v58 = 0x4034000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4077C00000000000;
  return GameCenterReengagementLayout.Metrics.init(layoutMargins:shelfTopSpace:badgeGlyphSpace:badgeTopSpace:titleTopSpace:subtitleTopSpace:heroContentTopSpace:separatorTopSpace:footerTopSpace:footerBottomSpace:maxColumnWidth:columnSpace:maxHeight:)();
}

char *sub_10041E3B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for UUID();
  v115 = *(v11 - 8);
  v116 = v11;
  __chkstk_darwin(v11);
  v114 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100983508, &unk_1007CC950);
  __chkstk_darwin(v13 - 8);
  v15 = &v109 - v14;
  v16 = type metadata accessor for AchievementCardLayout.Metrics();
  __chkstk_darwin(v16 - 8);
  v17 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  *&v4[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_pageTraits] = 0;
  v19 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *&v4[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge;
  *&v4[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title;
  *&v4[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent;
  v24 = type metadata accessor for AchievementCard();
  static AchievementCard.defaultMetrics.getter();
  v25 = enum case for AchievementsTheme.vibrant(_:);
  v26 = type metadata accessor for AchievementsTheme();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v15, v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  v28 = objc_allocWithZone(v24);
  *&v5[v23] = AchievementCard.init(frame:metrics:theme:)();
  v29 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView(0);
  *&v5[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView(0);
  *&v5[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button;
  type metadata accessor for DynamicTypeButton();
  *&v5[v31] = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v32 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect;
  *&v5[v32] = [objc_allocWithZone(UIVisualEffectView) init];
  v33 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage;
  type metadata accessor for ArtworkView();
  *&v5[v33] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v35 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  v113 = sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v5[v34] = v36;
  v119.receiver = v5;
  v119.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v119, "initWithFrame:", a1, a2, a3, a4);
  v38 = [v37 contentView];
  [v38 setOverrideUserInterfaceStyle:2];

  v39 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v40 = *&v37[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  [v42 setPreferredSymbolConfiguration:v43];

  v44 = *&v37[v39];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTintColor:v47];

  v48 = [*&v37[v39] layer];
  v49 = kCAFilterPlusL;
  [v48 setCompositingFilter:kCAFilterPlusL];

  v50 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge;
  v51 = *&v37[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge];
  v52 = [v45 secondaryLabelColor];
  [v51 setTextColor:v52];

  v53 = [*&v37[v50] layer];
  v111 = v49;
  [v53 setCompositingFilter:v49];

  [*&v37[v50] setAdjustsFontForContentSizeCategory:1];
  v112 = v50;
  v54 = qword_10096E380;
  v55 = *&v37[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for FontUseCase();
  sub_1000056A8(v56, qword_1009D1A00);
  v57 = v37;
  v58 = [v57 traitCollection];
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v58).super.isa;

  v60 = objc_opt_self();
  v61 = [v60 fontWithDescriptor:isa size:0.0];

  [v55 setFont:v61];
  v62 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title;
  v63 = qword_10096E388;
  v64 = *&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title];
  if (v63 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v56, qword_1009D1A18);
  v65 = [v57 traitCollection];
  v66 = FontUseCase.makeFontDescriptor(compatibleWith:)(v65).super.isa;

  v67 = [v60 fontWithDescriptor:v66 size:0.0];
  [v64 setFont:v67];

  v68 = *&v57[v62];
  v69 = [v45 labelColor];
  [v68 setTextColor:v69];

  [*&v57[v62] setAdjustsFontForContentSizeCategory:1];
  v110 = v62;
  v70 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle;
  v71 = qword_10096E390;
  v72 = *&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle];
  if (v71 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v56, qword_1009D1A30);
  v73 = [v57 traitCollection];

  v74 = FontUseCase.makeFontDescriptor(compatibleWith:)(v73).super.isa;
  v75 = [v60 fontWithDescriptor:v74 size:0.0];

  [v72 setFont:v75];
  [*&v57[v70] setNumberOfLines:2];
  [*&v57[v70] setAdjustsFontForContentSizeCategory:1];
  v76 = *&v57[v70];
  v77 = [v45 secondaryLabelColor];
  [v76 setTextColor:v77];

  v78 = [*&v57[v70] layer];
  v79 = v111;
  [v78 setCompositingFilter:v111];

  v80 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator;
  v81 = *&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator];
  v82 = objc_allocWithZone(UIColor);
  v83 = v81;
  v84 = [v82 initWithWhite:1.0 alpha:0.12];
  [v83 setBackgroundColor:v84];

  v85 = [*&v57[v80] layer];
  [v85 setCompositingFilter:v79];

  v86 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage;
  [*&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage] setContentMode:2];
  [*&v57[v86] setClipsToBounds:1];
  v87 = [v57 contentView];
  [v87 addSubview:*&v57[v86]];

  v88 = [v57 contentView];
  v89 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect;
  [v88 addSubview:*&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect]];

  v90 = [v57 contentView];
  [v90 addSubview:*&v37[v112]];

  v91 = [v57 contentView];
  [v91 addSubview:*&v57[v110]];

  v92 = [v57 contentView];
  [v92 addSubview:*&v57[v70]];

  v93 = [v57 contentView];
  v94 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent;
  [v93 addSubview:*&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent]];

  v95 = [v57 contentView];
  [v95 addSubview:*&v57[v80]];

  v96 = [v57 contentView];
  [v96 addSubview:*&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup]];

  v97 = *&v57[v89];

  v98 = Array._bridgeToObjectiveC()().super.isa;

  [v97 setBackgroundEffects:v98];

  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v117 = 0xD000000000000019;
  v118 = 0x80000001008129B0;
  v99 = v114;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v102 = v101;
  (*(v115 + 8))(v99, v116);
  v103._countAndFlagsBits = v100;
  v103._object = v102;
  String.append(_:)(v103);

  v104 = *&v57[v89];
  v105 = String._bridgeToObjectiveC()();
  [v104 _setGroupName:v105];

  v106 = *&v57[v94];
  AchievementCard.backgroundEffectsGroup.setter();

  v107 = *&v57[v94];
  AchievementCard.alwaysShowShadow.setter();

  return v57;
}

uint64_t sub_10041F0EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GameCenterReengagementLayout();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GameCenterReengagementLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v41 - v13;
  v74.receiver = v1;
  v74.super_class = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v12);
  v15 = swift_unknownObjectRetain();
  sub_10041DBC0(v15, v14);
  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v18 = [v17 image];
  if (v18)
  {

    v19 = v17;
    [*&v1[v16] sizeToFit];
    v17 = [v1 contentView];
    [v17 insertSubview:*&v1[v16] belowSubview:*&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge]];
  }

  else
  {
    [v17 removeFromSuperview];
    v19 = 0;
  }

  (*(v8 + 16))(v10, v14, v7);
  v48 = v7;
  v45 = v14;
  v46 = v8;
  v41 = v10;
  if (v19)
  {
    v20 = sub_100005744(0, &qword_100973120, UIImageView_ptr);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v70 = 0;
    v71 = 0;
  }

  v69 = v19;
  v72 = v20;
  v73 = v21;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge];
  v67 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
  v68 = &protocol witness table for UILabel;
  v66 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title];
  v64 = v67;
  v65 = &protocol witness table for UILabel;
  v62 = &protocol witness table for UILabel;
  v63 = v23;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle];
  v61 = v67;
  v60 = v24;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent];
  v58 = type metadata accessor for AchievementCard();
  v59 = &protocol witness table for UIView;
  v57 = v25;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator];
  v55 = type metadata accessor for SeparatorView(0);
  v56 = &protocol witness table for UIView;
  v54 = v26;
  v27 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup];
  v52 = type metadata accessor for SmallLockupView(0);
  v53 = &protocol witness table for UIView;
  v51 = v27;
  v28 = v19;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v47;
  GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)();
  v36 = [v1 contentView];
  [v36 bounds];

  v37 = v42;
  GameCenterReengagementLayout.placeChildren(relativeTo:in:)();
  (*(v43 + 8))(v37, v44);
  [v1 frame];
  CGRectGetWidth(v75);
  [v1 frame];
  CGRectGetHeight(v76);
  ArtworkView.frame.setter();
  v38 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect];
  [v1 frame];
  Width = CGRectGetWidth(v77);
  [v1 frame];
  [v38 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v78)}];

  (*(v49 + 8))(v35, v50);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_10041F6B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v15.receiver = v4;
  v15.super_class = swift_getObjectType();
  v10 = objc_msgSendSuper2(&v15, "focusItemsInRect:", a1, a2, a3, a4);
  sub_10002849C(&qword_100985340, &qword_1007CC948);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v11;
  v12 = *&v5[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *&v5[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v16;
}

uint64_t type metadata accessor for GameCenterReengagementCollectionViewCell(uint64_t a1)
{
  result = qword_100985328;
  if (!qword_100985328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10041FA24(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10041FAEC()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100983508, &unk_1007CC950);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for AchievementCardLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v7 = type metadata accessor for ItemLayoutContext();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_pageTraits) = 0;
  v8 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *(v1 + v8) = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge;
  *(v1 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title;
  *(v1 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent;
  v13 = type metadata accessor for AchievementCard();
  static AchievementCard.defaultMetrics.getter();
  v14 = enum case for AchievementsTheme.vibrant(_:);
  v15 = type metadata accessor for AchievementsTheme();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  v17 = objc_allocWithZone(v13);
  *(v1 + v12) = AchievementCard.init(frame:metrics:theme:)();
  v18 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView(0);
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView(0);
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button;
  type metadata accessor for DynamicTypeButton();
  *(v1 + v20) = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v21 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect;
  *(v1 + v21) = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage;
  type metadata accessor for ArtworkView();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v24 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v1 + v23) = v25;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_10041FEA4(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v17 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v8 + 8))(v10, v7);
  if ((*(v4 + 88))(v6, v3) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v11 = sub_1004200DC(a1, v16);
    sub_100394594(v11, v12);
  }

  else
  {
    v13 = sub_1001190B0(a1, v16);
    sub_100394594(v13, v14);
    (*(v4 + 8))(v6, v3);
  }

  return v17;
}

unint64_t sub_1004200DC(uint64_t a1, uint64_t a2)
{
  v134 = a2;
  v3 = type metadata accessor for ComponentSeparator.Position();
  v132 = *(v3 - 8);
  v133 = v3;
  __chkstk_darwin(v3);
  v131 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PageGrid();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for Shelf.ContentType();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v113 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v123);
  v125 = &v112 - v7;
  v8 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v8 - 8);
  v116 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v112 - v11;
  __chkstk_darwin(v12);
  v138 = &v112 - v13;
  v14 = type metadata accessor for Uber.Style();
  v136 = *(v14 - 8);
  __chkstk_darwin(v14);
  v112 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10002849C(&qword_1009704D8, &qword_1007B1B68);
  __chkstk_darwin(v119);
  v17 = &v112 - v16;
  v18 = sub_10002849C(&qword_1009704E0, qword_1007B1B70);
  __chkstk_darwin(v18 - 8);
  v115 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v112 - v21;
  __chkstk_darwin(v23);
  v135 = &v112 - v24;
  v25 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v25);
  v122 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v112 - v28;
  v30 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v30 - 8);
  v121 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v112 - v33;
  v144 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v139 = a1;
  ItemLayoutContext.subscript.getter();

  v120 = v25;
  v35 = *(v25 + 48);
  sub_1000476A0(v29, v34, &unk_10098FFB0, qword_1007B3890);
  v36 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v118 = v37 + 48;
  v117 = v38;
  v39 = v38(v34, 1, v36);
  v114 = v37;
  if (v39 == 1)
  {
    sub_10002B894(&v29[v35], &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v34, &unk_10098FFB0, qword_1007B3890);
    v141 = 0u;
    v142 = 0u;
    v143 = 0;
    v40 = v135;
LABEL_10:
    sub_10002B894(&v141, &unk_10097DBE0, &unk_1007BCA00);
    goto LABEL_11;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v41 = v140;
  (*(v37 + 8))(v34, v36);
  if (*(v41 + 16))
  {
    sub_10002C0AC(v41 + 32, &v141);
  }

  else
  {

    v143 = 0;
    v141 = 0u;
    v142 = 0u;
  }

  v40 = v135;
  sub_10002B894(&v29[v35], &unk_10098FFB0, qword_1007B3890);
  if (!*(&v142 + 1))
  {
    goto LABEL_10;
  }

  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ProductTopLockup();
  if (swift_dynamicCast())
  {
    v42 = ProductTopLockup.uber.getter();

    if (v42)
    {
      v43 = v36;

      Uber.style.getter();
      v127 = v42;

      v44 = 0;
      goto LABEL_12;
    }
  }

LABEL_11:
  v43 = v36;
  v127 = 0;
  v44 = 1;
LABEL_12:
  v45 = v136;
  v46 = *(v136 + 56);
  v46(v40, v44, 1, v14);
  (*(v45 + 104))(v22, enum case for Uber.Style.inline(_:), v14);
  v46(v22, 0, 1, v14);
  v47 = *(v119 + 48);
  sub_100031660(v40, v17, &qword_1009704E0, qword_1007B1B70);
  sub_100031660(v22, &v17[v47], &qword_1009704E0, qword_1007B1B70);
  v48 = v40;
  v49 = *(v45 + 48);
  if (v49(v17, 1, v14) == 1)
  {
    sub_10002B894(v22, &qword_1009704E0, qword_1007B1B70);
    sub_10002B894(v48, &qword_1009704E0, qword_1007B1B70);
    v50 = v49(&v17[v47], 1, v14);
    v51 = v124;
    v52 = v121;
    v53 = v43;
    if (v50 == 1)
    {
      sub_10002B894(v17, &qword_1009704E0, qword_1007B1B70);
      LODWORD(v119) = 1;
LABEL_18:
      v55 = v125;
      v57 = v137;
      v56 = v138;
      goto LABEL_20;
    }

LABEL_17:
    sub_10002B894(v17, &qword_1009704D8, &qword_1007B1B68);
    LODWORD(v119) = 0;
    goto LABEL_18;
  }

  v54 = v115;
  sub_100031660(v17, v115, &qword_1009704E0, qword_1007B1B70);
  v53 = v43;
  if (v49(&v17[v47], 1, v14) == 1)
  {
    sub_10002B894(v22, &qword_1009704E0, qword_1007B1B70);
    sub_10002B894(v135, &qword_1009704E0, qword_1007B1B70);
    (*(v136 + 8))(v54, v14);
    v51 = v124;
    v52 = v121;
    goto LABEL_17;
  }

  v58 = v136;
  v59 = v112;
  (*(v136 + 32))(v112, &v17[v47], v14);
  sub_100422710(&qword_1009704E8, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  LODWORD(v119) = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v58 + 8);
  v60(v59, v14);
  sub_10002B894(v22, &qword_1009704E0, qword_1007B1B70);
  sub_10002B894(v135, &qword_1009704E0, qword_1007B1B70);
  v60(v54, v14);
  sub_10002B894(v17, &qword_1009704E0, qword_1007B1B70);
  v56 = v138;
  v55 = v125;
  v51 = v124;
  v57 = v137;
  v52 = v121;
LABEL_20:
  swift_getKeyPath();
  v61 = v122;
  ItemLayoutContext.subscript.getter();

  sub_1000476A0(v61 + *(v120 + 48), v52, &unk_10098FFB0, qword_1007B3890);
  if (v117(v52, 1, v53) == 1)
  {
    sub_10002B894(v61, &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v52, &unk_10098FFB0, qword_1007B3890);
    v62 = *(v51 + 56);
    v63 = v126;
    v62(v56, 1, 1, v126);
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v114 + 8))(v52, v53);
    v62 = *(v51 + 56);
    v63 = v126;
    v62(v56, 0, 1, v126);
    sub_10002B894(v61, &unk_10098FFB0, qword_1007B3890);
  }

  (*(v51 + 104))(v57, enum case for Shelf.ContentType.productMediaItem(_:), v63);
  v62(v57, 0, 1, v63);
  v64 = *(v123 + 48);
  sub_100031660(v56, v55, &unk_100992460, &qword_1007B6BF0);
  sub_100031660(v57, v55 + v64, &unk_100992460, &qword_1007B6BF0);
  v65 = v57;
  v66 = *(v51 + 48);
  if (v66(v55, 1, v63) == 1)
  {
    sub_10002B894(v65, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v56, &unk_100992460, &qword_1007B6BF0);
    v67 = v66(v55 + v64, 1, v63);
    v68 = v139;
    if (v67 == 1)
    {
      sub_10002B894(v55, &unk_100992460, &qword_1007B6BF0);
      v69 = 1;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v70 = v116;
  sub_100031660(v55, v116, &unk_100992460, &qword_1007B6BF0);
  v71 = v66(v55 + v64, 1, v63);
  v68 = v139;
  if (v71 == 1)
  {
    sub_10002B894(v137, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v138, &unk_100992460, &qword_1007B6BF0);
    (*(v51 + 8))(v70, v63);
LABEL_28:
    sub_10002B894(v55, &qword_100975F10, &unk_1007CE130);
    v69 = 0;
    goto LABEL_30;
  }

  v72 = v113;
  (*(v51 + 32))(v113, v55 + v64, v63);
  sub_100422710(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();
  v73 = *(v51 + 8);
  v73(v72, v63);
  sub_10002B894(v137, &unk_100992460, &qword_1007B6BF0);
  sub_10002B894(v138, &unk_100992460, &qword_1007B6BF0);
  v73(v70, v63);
  sub_10002B894(v55, &unk_100992460, &qword_1007B6BF0);
LABEL_30:
  v74 = objc_opt_self();
  v75 = [v74 fractionalWidthDimension:1.0];
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v76 = v141;
  static ComponentSeparator.thickness(compatibleWith:)();
  v78 = v77;

  v79 = [v74 absoluteDimension:v78];
  v80 = [objc_opt_self() sizeWithWidthDimension:v75 heightDimension:v79];

  if ((v119 & 1) == 0)
  {
    LODWORD(v138) = v69;
    swift_getKeyPath();
    v81 = v128;
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v83 = v82;
    (*(v129 + 8))(v81, v130);
    v84 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v83 * -0.5}];
    type metadata accessor for SeparatorSupplementaryView(0);
    v86 = v132;
    v85 = v133;
    v87 = v131;
    (*(v132 + 104))(v131, enum case for ComponentSeparator.Position.top(_:), v133);
    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    v88 = v80;
    _print_unlocked<A, B>(_:_:)();
    v89._countAndFlagsBits = 95;
    v89._object = 0xE100000000000000;
    String.append(_:)(v89);
    v90._countAndFlagsBits = static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)();
    String.append(_:)(v90);

    (*(v86 + 8))(v87, v85);
    v91 = v84;
    v92 = String._bridgeToObjectiveC()();

    v93 = [objc_opt_self() supplementaryItemWithLayoutSize:v88 elementKind:v92 containerAnchor:v91];

    v94 = v93;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v68 = v139;
    LOBYTE(v69) = v138;
  }

  if ((v69 & 1) == 0)
  {
    swift_getKeyPath();
    v95 = v128;
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v97 = v96;
    (*(v129 + 8))(v95, v130);
    v98 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v97 * 0.5}];
    type metadata accessor for SeparatorSupplementaryView(0);
    v100 = v131;
    v99 = v132;
    v101 = v133;
    (*(v132 + 104))(v131, enum case for ComponentSeparator.Position.bottom(_:), v133);
    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    v102 = v80;
    _print_unlocked<A, B>(_:_:)();
    v103._countAndFlagsBits = 95;
    v103._object = 0xE100000000000000;
    String.append(_:)(v103);
    v104._countAndFlagsBits = static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)();
    String.append(_:)(v104);

    (*(v99 + 8))(v100, v101);
    v105 = v98;
    v106 = String._bridgeToObjectiveC()();

    v107 = [objc_opt_self() supplementaryItemWithLayoutSize:v102 elementKind:v106 containerAnchor:v105];

    v108 = v107;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v109 = sub_1001190B0(v68, v134);
  sub_100394594(v109, v110);

  return v144;
}

void sub_1004214D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v36 = a1;
  v37 = a2;
  v35 = a5;
  v6 = type metadata accessor for ItemLayoutContext();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Shelf.ContentType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v13 + 8))(v15, v12);
  v16 = *(v9 + 88);
  v32 = v8;
  if (v16(v11, v8) == enum case for Shelf.ContentType.productBadge(_:))
  {
    sub_1004218C0(v36, v37, a3, v33, v35);
  }

  else
  {
    v17 = a3;
    type metadata accessor for SeparatorSupplementaryView(0);
    if (static UICollectionReusableView.matchesItemElementKind(_:)())
    {

      v34 = static UICollectionReusableView.defaultReuseIdentifier.getter();
      v28 = v18;
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v29;
      v21 = v30;
      v22 = v31;
      (*(v30 + 16))(v29, v17, v31);
      v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      (*(v21 + 32))(v24 + v23, v20, v22);
      *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
      v25 = sub_10002849C(&qword_1009751D0, qword_1007B7350);
      v26 = v35;
      v35[3] = v25;
      v26[4] = sub_10011A820();
      sub_1000056E0(v26);

      ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    }

    else
    {
      v27 = v35;
      v35[4] = 0;
      *v27 = 0u;
      *(v27 + 1) = 0u;
    }

    (*(v9 + 8))(v11, v32);
  }
}

double sub_1004218C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v78 = a5;
  v7 = type metadata accessor for ItemLayoutContext();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v66 = v8;
  v67 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ComponentSeparator.Position();
  v73 = *(v83 - 8);
  __chkstk_darwin(v83);
  v70 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10002849C(&qword_100985410, &unk_1007CC9E0);
  __chkstk_darwin(v72);
  v11 = v64 - v10;
  v12 = sub_10002849C(&qword_1009751C8, &unk_1007B7220);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - v13;
  v15 = type metadata accessor for ComponentSeparator();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_100985418, &qword_1007CC9F0);
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  __chkstk_darwin(v19 - 8);
  v75 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v71 = v64 - v22;
  __chkstk_darwin(v23);
  v25 = v64 - v24;
  __chkstk_darwin(v26);
  v28 = v64 - v27;
  v29 = type metadata accessor for SeparatorSupplementaryView(0);
  v82 = a1;
  v79 = a2;
  v77 = v29;
  sub_100503A20(a1, a2, v28);
  v30 = *(v76 + 56);
  sub_10011A02C(v14);
  v31 = *(v16 + 48);
  v76 = v15;
  if (v31(v14, 1, v15) == 1)
  {
    sub_10002B894(v14, &qword_1009751C8, &unk_1007B7220);
LABEL_10:

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v38 = v75;
    sub_100031660(v28, v75, &qword_100985418, &qword_1007CC9F0);
    v39 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v40 = swift_allocObject();
    sub_1000476A0(v38, v40 + v39, &qword_100985418, &qword_1007CC9F0);
    v41 = sub_10002849C(&qword_1009751D0, qword_1007B7350);
    v42 = v28;
    v43 = v78;
    v78[3] = v41;
    v43[4] = sub_10011A820();
    sub_1000056E0(v43);
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    v44 = v42;
    goto LABEL_11;
  }

  v64[1] = v30;
  (*(v16 + 32))(v18, v14, v76);
  v65 = v18;
  ComponentSeparator.position.getter();
  v32 = v73;
  v33 = v83;
  (*(v73 + 56))(v25, 0, 1, v83);
  v34 = *(v72 + 48);
  sub_100031660(v25, v11, &qword_100985418, &qword_1007CC9F0);
  sub_100031660(v28, &v11[v34], &qword_100985418, &qword_1007CC9F0);
  v35 = *(v32 + 48);
  if (v35(v11, 1, v33) != 1)
  {
    v37 = v71;
    sub_100031660(v11, v71, &qword_100985418, &qword_1007CC9F0);
    if (v35(&v11[v34], 1, v83) != 1)
    {
      v46 = &v11[v34];
      v47 = v70;
      v48 = v37;
      v49 = v83;
      (*(v32 + 32))(v70, v46, v83);
      sub_100422710(&qword_100985420, &type metadata accessor for ComponentSeparator.Position, &protocol conformance descriptor for ComponentSeparator.Position);
      LODWORD(v72) = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v32 + 8);
      v50(v47, v49);
      sub_10002B894(v25, &qword_100985418, &qword_1007CC9F0);
      v50(v48, v49);
      sub_10002B894(v11, &qword_100985418, &qword_1007CC9F0);
      v36 = v65;
      if (v72)
      {
        goto LABEL_14;
      }

LABEL_9:
      (*(v16 + 8))(v36, v76);
      goto LABEL_10;
    }

    sub_10002B894(v25, &qword_100985418, &qword_1007CC9F0);
    (*(v32 + 8))(v37, v83);
LABEL_8:
    sub_10002B894(v11, &qword_100985410, &unk_1007CC9E0);
    v36 = v65;
    goto LABEL_9;
  }

  sub_10002B894(v25, &qword_100985418, &qword_1007CC9F0);
  if (v35(&v11[v34], 1, v83) != 1)
  {
    goto LABEL_8;
  }

  sub_10002B894(v11, &qword_100985418, &qword_1007CC9F0);
  v36 = v65;
LABEL_14:
  if ((static UICollectionReusableView.matchesItemElementKind(_:)() & 1) == 0)
  {
    (*(v16 + 8))(v36, v76);
    sub_10002B894(v28, &qword_100985418, &qword_1007CC9F0);
    result = 0.0;
    v63 = v78;
    *v78 = 0u;
    *(v63 + 1) = 0u;
    v63[4] = 0;
    return result;
  }

  v51 = static UICollectionReusableView.defaultReuseIdentifier.getter();
  v83 = v28;
  v79 = v51;
  v75 = v52;
  v53 = swift_allocObject();
  swift_weakInit();
  v55 = v67;
  v54 = v68;
  v56 = v69;
  (*(v68 + 16))(v67, v80, v69);
  v57 = v16;
  v58 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v59 = (v66 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  (*(v54 + 32))(v60 + v58, v55, v56);
  *(v60 + v59) = v81;
  v61 = sub_10002849C(&qword_1009751D0, qword_1007B7350);
  v62 = v78;
  v78[3] = v61;
  v62[4] = sub_10011A820();
  sub_1000056E0(v62);

  ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  (*(v57 + 8))(v65, v76);
  v44 = v83;
LABEL_11:
  sub_10002B894(v44, &qword_100985418, &qword_1007CC9F0);
  return result;
}

uint64_t sub_1004221F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a5;
  v5 = type metadata accessor for ComponentSeparator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10002849C(&qword_100985418, &qword_1007CC9F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for ComponentSeparator.Position();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  sub_100031660(v28, v14, &qword_100985418, &qword_1007CC9F0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10002B894(v14, &qword_100985418, &qword_1007CC9F0);
  }

  (*(v16 + 32))(v21, v14, v15);
  (*(v16 + 16))(v18, v21, v15);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  (*(v6 + 16))(v8, v11, v5);
  v23 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  v24 = v27;
  swift_beginAccess();
  (*(v6 + 24))(v24 + v23, v8, v5);
  swift_endAccess();
  sub_100503F40();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_100422524()
{
  sub_100007000((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100422590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10002849C(&qword_100985418, &qword_1007CC9F0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1004221F8(a1, a2, a3, a4, v10);
}

uint64_t sub_100422638()
{
  v1 = type metadata accessor for ItemLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100422710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10042275C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_pageView;
  type metadata accessor for ArcadeDownloadPackSuggestionsPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton;
  v7 = objc_opt_self();
  *&v2[v6] = [v7 boldButton];
  v8 = OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton;
  *&v2[v8] = [objc_opt_self() linkButton];
  v9 = OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton;
  *&v2[v9] = [v7 boldButton];
  v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 0;
  v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = 3;
  *&v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_presenter] = a1;
  v10 = *&v2[v5];
  swift_retain_n();
  v11 = v10;

  v13 = sub_10054A368(a1, v11, a2, v2, v12);
  sub_100423AEC(&qword_1009854A0, v14, type metadata accessor for ArcadeDownloadPackSuggestionsViewController, &unk_1007CCB6C);
  v15 = v13;

  dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.view.setter();

  [*&v15[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton] addTarget:v15 action:"didTapDoneButton" forControlEvents:64];
  [*&v15[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton] addTarget:v15 action:"didTapDoneButton" forControlEvents:64];
  [*&v15[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton] addTarget:v15 action:"didTapGetAllButtonWithSender:" forControlEvents:64];
  v16 = *(*&v15[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_pageView] + OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v21[3] = ObjectType;
  v21[4] = &off_1008C2938;
  v17 = v16;

  v21[0] = v15;
  v18 = qword_1009CF450;
  swift_beginAccess();
  sub_100423A7C(v21, v17 + v18);
  swift_endAccess();

  return v15;
}

void sub_100422A14()
{
  v0 = type metadata accessor for Feature.iOS();
  v7[3] = v0;
  v7[4] = sub_100423AEC(&qword_10097CC80, 255, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v1 = sub_1000056E0(v7);
  (*(*(v0 - 8) + 104))(v1, enum case for Feature.iOS.arcade_choose_your_favorites_brick_Future(_:), v0);
  LOBYTE(v0) = isFeatureEnabled(_:)();
  sub_100007000(v7);
  if (v0)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = static ArcadePageScrollToShelfNotification.notificationName.getter();
    sub_10002849C(&unk_10097E340, &unk_1007C9830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v7[0] = static ArcadePageScrollToShelfNotification.shelfId.getter();
    v7[1] = v5;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0xD000000000000017;
    *(inited + 80) = 0x8000000100812BB0;
    sub_100397CE8(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_1009827A0, &unk_1007B2F90);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 postNotificationName:v3 object:0 userInfo:isa];
  }
}

id sub_100422CCC(void *a1)
{
  v25 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v1[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 1;
  dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.didTapGetAllButton()();
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  ASKBagContract.arcadeDownloadPacksGetAllCTADismissDelay.getter();
  v17 = v16;

  if (v17 <= 0.0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  v18 = dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.hasAskToBuy.getter();
  if (v18 == 2 || (v18 & 1) != 0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  [v25 showsBusyIndicator];
  sub_1000076C0();
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_10013B73C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C2970;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100423AEC(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v25;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v28 + 8))(v4, v2);
  (*(v27 + 8))(v8, v26);
  return (v20)(v15, v9);
}

void sub_100423180(uint64_t a1)
{
  v2 = v1;
  sub_10074BBD4(a1, *(v1 + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_objectGraph));
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
  v5 = ArcadeDownloadPackSuggestionsPage.getAllAction.getter();
  if (v5)
  {
    Action.title.getter();
    v7 = v6;

    if (v7)
    {
      v5 = String._bridgeToObjectiveC()();
    }

    else
    {
      v5 = 0;
    }
  }

  [v4 setTitle:v5 forState:0];

  v8 = *(v2 + OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton);
  v9 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *(v2 + OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton);
  v11 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v11];

  v12 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v12];

  ArcadeDownloadPackSuggestionsPage.primaryActionSecondaryTitle.getter();
  if (!v13)
  {
    ArcadeDownloadPackSuggestionsPage.primaryAction.getter();
    v14 = Action.title.getter();
    v16 = v15;

    sub_100423360(a1, v14, v16);
  }

  sub_1005D9478();
}

void sub_100423360(uint64_t a1, uint64_t a2, NSString a3)
{
  v5 = sub_10002849C(&qword_100985498, qword_1007CCBA8);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for ArcadeDownloadPackSuggestionsPagePrimaryActionKind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v3[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
  v21 = v3;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v20 setTitle:v12 forState:{0, v20}];

  v13 = *&v21[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v13 setTitle:a3 forState:0];

  ArcadeDownloadPackSuggestionsPage.primaryActionKind.getter();
  v14 = ArcadeDownloadPackSuggestionsPage.getAllAction.getter();
  if (v14)
  {
  }

  v15 = *(v5 + 48);
  (*(v9 + 32))(v7, v11, v8);
  v7[v15] = v14 != 0;
  v16 = (*(v9 + 88))(v7, v8);
  if (v16 == enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.done(_:))
  {
    goto LABEL_9;
  }

  if (v16 != enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:))
  {
    sub_10002B894(v7, &qword_100985498, qword_1007CCBA8);
    goto LABEL_14;
  }

  if (!v14)
  {
LABEL_9:
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    (*(v9 + 8))(v7, v8);
    v17 = v21;
    v18 = [v21 buttonTray];
    [v18 addButton:*&v17[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

    v20 = v13;
  }

LABEL_14:
  v19 = [v21 buttonTray];
  [v19 addButton:v20];
}

double sub_100423650(unsigned __int8 a1)
{
  v2 = v1;
  v4 = dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.page.getter();
  if (!v4)
  {
    return result;
  }

  v6 = v4;
  v7 = ArcadeDownloadPackSuggestionsPage.primaryActionSecondaryTitle.getter();
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = v1[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus];
  if (v10 != 3 && v10 == a1)
  {
  }

  else
  {
    v12 = v7;
    v1[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = a1;
    v13 = [v1 buttonTray];
    [v13 removeAllButtons];

    if (a1)
    {
      if (a1 == 1)
      {
        if ((v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] & 1) == 0)
        {
          sub_100423360(v6, v12, v9);
        }
      }

      else if (v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] == 1)
      {

        v17 = [v2 buttonTray];
        [v17 addButton:*&v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

        v18 = [v2 buttonTray];
        [v18 addButton:*&v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton]];
      }

      else
      {
        v19 = *&v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
        v20 = String._bridgeToObjectiveC()();

        [v19 setTitle:v20 forState:0];

        v21 = [v2 buttonTray];
        [v21 addButton:v19];
      }

LABEL_21:

      return result;
    }

    ArcadeDownloadPackSuggestionsPage.primaryAction.getter();
    v14 = Action.title.getter();
    v16 = v15;

    sub_100423360(v6, v14, v16);
  }

  return result;
}

void sub_1004238D8()
{

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
}

uint64_t sub_100423A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097F860, &qword_1007C6CD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100423AEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100423BBC()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v5 = static UIColor.defaultBackground.getter();
    [v4 setBackgroundColor:v5];

    sub_100424ECC(&qword_100985510, v6, type metadata accessor for PurchasesLoadingViewController, &unk_1007CCC18);
    swift_unknownObjectRetain();
    dispatch thunk of PurchasesPresenter.view.setter();
    dispatch thunk of BasePresenter.didLoad()();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v7 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v8 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v9 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v11 = *&v1[v9];
    *&v1[v9] = v8;
    v12 = v8;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v24 = v16;
      v25 = v18;
      v26 = v20;
      v27 = v22;
      v28 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100423E94(uint64_t a1)
{
  v44.receiver = v1;
  v44.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v44, "viewDidLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [v5 setFrame:{v9, v11, v13, v15}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v16 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v17 view];
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v1 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v19 setFrame:{v23, v25, v27, v29}];
LABEL_9:
  v30 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases];
  if (!v30)
  {
    return;
  }

  v31 = v30;
  v32 = [v31 view];
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  v34 = [v1 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v35 = v34;
  [v34 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  [v33 setFrame:{v37, v39, v41, v43}];
}

id sub_100424108()
{
  v1 = v0;
  v2 = type metadata accessor for Dependency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v8 = *&v0[v6];
  *&v0[v6] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v46[5] = v12;
  v46[6] = v14;
  v46[7] = v16;
  v46[8] = v18;
  v47 = 0;
  result = static ViewControllerContainment.add(_:to:frame:)();
  v19 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases;
  if (*&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases])
  {
    return result;
  }

  sub_10002849C(&unk_100975540, &qword_1007B77A0);
  v20 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_objectGraph];
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  type metadata accessor for ASDPurchaseHistoryContext(0);
  v45[0] = 1;
  Dependency.init<A>(satisfying:with:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v21 = *(v3 + 8);
  v21(v5, v2);
  LOBYTE(v45[0]) = 1;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v21(v5, v2);
  v44[0] = v22;
  v44[1] = sub_10074EA28(v22);
  v44[2] = v23;
  sub_100005744(0, &qword_10098D1A0, ACAccountStore_ptr);

  inject<A, B>(_:from:)();
  sub_10002C0AC(v46, v45);
  sub_10002849C(&qword_1009835D8, &qword_1007CAED8);
  v24 = type metadata accessor for PurchasesContentMode();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B1890;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for PurchasesContentMode.all(_:), v24);
  v30(v29 + v26, enum case for PurchasesContentMode.notOnDevice(_:), v24);
  type metadata accessor for PurchasesContentPresenter();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = PurchasesContentPresenter.init(objectGraph:accountStore:appStateController:familyMember:purchaseHistory:showMacOSCompatibleIOSApps:appleSilicon:contentModes:)();
  v32 = sub_100424ECC(&qword_1009835E0, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);

  v33 = sub_10054A47C(v20, v31, v32, _swiftEmptyArrayStorage, 0xD000000000000014, 0x8000000100812C50);
  v34 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
  sub_10044B830(v31, v33, v35);
  v36 = *&v1[v19];
  *&v1[v19] = v37;
  v38 = v37;

  v39 = v38;
  [v39 willMoveToParentViewController:v1];
  [v1 addChildViewController:v39];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v40 = result;
  result = [v39 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v41 = result;
  [v40 addSubview:result];

  [v39 didMoveToParentViewController:v1];
  v42 = [v39 title];

  [v1 setTitle:v42];
  v43 = [v39 collectionView];
  [v1 setContentScrollView:v43 forEdge:15];
  swift_unknownObjectRelease();

  return sub_100007000(v46);
}

void sub_1004246CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for Bag();
  __chkstk_darwin(v5);
  v6 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v3[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v8 = *&v3[v6];
  *&v3[v6] = 0;

  v9 = [v3 view];
  if (!v9)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  [v9 bounds];

  static ViewControllerContainment.add(_:to:frame:)();
  v11 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases;
  if (*&v3[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases])
  {
    return;
  }

  v12 = *&v3[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_objectGraph];
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  type metadata accessor for FamilyPurchasesPresenter();
  swift_allocObject();
  v13 = FamilyPurchasesPresenter.init(objectGraph:familyPurchasesError:iCloudMemberAppleId:bag:)();
  v14 = sub_100424ECC(&qword_100985508, 255, &type metadata accessor for FamilyPurchasesPresenter, &protocol conformance descriptor for BasePresenter);

  v15 = sub_10054A47C(v12, v13, v14, _swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100812C30);
  v16 = objc_allocWithZone(type metadata accessor for FamilyPurchasesViewController());
  v17 = sub_1001FE400(v13, v15);
  v18 = *&v4[v11];
  *&v4[v11] = v17;
  v19 = v17;

  v20 = v19;
  [v20 willMoveToParentViewController:v4];
  [v4 addChildViewController:v20];
  v21 = [v4 view];
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  v23 = [v20 view];
  if (!v23)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v24 = v23;
  [v22 addSubview:v23];

  [v20 didMoveToParentViewController:v4];
  v25 = [v20 title];

  [v4 setTitle:v25];
  v26 = [v20 collectionView];
  [v4 setContentScrollView:v26 forEdge:15];
}

void sub_100424A54()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v3 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v4 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v5 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100424BAC()
{
  v1 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100424CA4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PurchasesLoadingViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100424DE0(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_objectGraph] = a2;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_artworkLoader] = v6;
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_presenter] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PurchasesLoadingViewController();

  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100424ECC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100424F14()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009D02C8);
  sub_1000056A8(v0, qword_1009D02C8);
  return PreferenceKey.init(_:)();
}

char *sub_100424F8C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (qword_10096DBE8 != -1)
  {
    swift_once();
  }

  v10 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_1000056A8(v10, qword_1009D02C8);
  Preferences.subscript.getter();

  if (v25 == 2 || (v25 & 1) == 0)
  {
    v11 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v11 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v12 = [objc_allocWithZone(v11) init];
  *&v4[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_materialView] = v12;
  v13 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView;
  *&v5[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  v17 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  v24.receiver = v5;
  v24.super_class = type metadata accessor for InteractiveSectionBackgroundView(0);
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v19 = v18;
  v20 = static UIColor.defaultBackground.getter();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView;
  [*&v19[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  [v19 addSubview:*&v19[v21]];
  v22 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView;
  [*&v19[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  [*&v19[v22] setAlpha:1.0];
  [v19 addSubview:*&v19[v22]];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_materialView]];

  return v19;
}

id sub_100425288(__n128 a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractiveSectionBackgroundView(0);
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_materialView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView];
  [v1 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_10042538C()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for InteractiveSectionBackgroundView(0);
  v10.receiver = v0;
  v10.super_class = v5;
  objc_msgSendSuper2(&v10, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  ArtworkView.image.setter();
  [*&v0[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  ArtworkView.image.setter();
  v6 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  sub_1002AE7D4(v4, &v1[v7]);
  return swift_endAccess();
}

uint64_t sub_100425544(uint64_t a1, uint64_t a2)
{
  v137 = a1;
  v114 = type metadata accessor for AspectRatio();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfBackground();
  v131 = *(v3 - 8);
  __chkstk_darwin(v3);
  v115 = (&v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v116 = (&v108 - v6);
  __chkstk_darwin(v7);
  v111 = &v108 - v8;
  v132 = sub_10002849C(&qword_100981220, &qword_1007C8C38);
  __chkstk_darwin(v132);
  v129 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v108 - v11;
  v13 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v17 - 8);
  v124 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v123 = &v108 - v20;
  __chkstk_darwin(v21);
  v23 = &v108 - v22;
  v24 = sub_10002849C(&qword_100981228, &unk_1007C8C40);
  __chkstk_darwin(v24 - 8);
  v110 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = &v108 - v27;
  __chkstk_darwin(v28);
  v127 = &v108 - v29;
  __chkstk_darwin(v30);
  v109 = &v108 - v31;
  __chkstk_darwin(v32);
  v34 = &v108 - v33;
  __chkstk_darwin(v35);
  v37 = &v108 - v36;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v38 = v138;
  inject<A, B>(_:from:)();
  v130 = v139;
  v39 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  v133 = v39;
  sub_100031660(&v38[v39], v23, &qword_10097E110, qword_1007C5430);
  v125 = v14;
  v40 = *(v14 + 48);
  v135 = v13;
  v120 = v14 + 48;
  v119 = v40;
  v41 = v40(v23, 1, v13);
  v126 = v16;
  if (v41)
  {
    sub_10002B894(v23, &qword_10097E110, qword_1007C5430);
    v42 = v131;
    v43 = *(v131 + 56);
    v44 = (v131 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v43(v37, 1, 1, v3);
    v45 = *(v42 + 16);
    v46 = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    sub_1002AE770(v23, v16);
    sub_10002B894(v23, &qword_10097E110, qword_1007C5430);
    v42 = v131;
    v45 = *(v131 + 16);
    v46 = (v131 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v37, v16, v3);
    sub_1002B81D0(v16);
    v43 = *(v42 + 56);
    v44 = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v43(v37, 0, 1, v3);
  }

  v134 = v45;
  v136 = v46;
  v45(v34, v137, v3);
  v122 = v43;
  v121 = v44;
  v43(v34, 0, 1, v3);
  v47 = *(v132 + 48);
  sub_100031660(v37, v12, &qword_100981228, &unk_1007C8C40);
  sub_100031660(v34, &v12[v47], &qword_100981228, &unk_1007C8C40);
  v48 = v42;
  v49 = *(v42 + 48);
  v50 = v49(v12, 1, v3);
  v118 = v49;
  v117 = v42 + 48;
  if (v50 == 1)
  {
    sub_10002B894(v34, &qword_100981228, &unk_1007C8C40);
    sub_10002B894(v37, &qword_100981228, &unk_1007C8C40);
    v51 = v42;
    if (v49(&v12[v47], 1, v3) == 1)
    {
      sub_10002B894(v12, &qword_100981228, &unk_1007C8C40);
      v52 = v128;
      v53 = v129;
      v54 = v126;
      v55 = v127;
      v56 = v134;
      v57 = v135;
      goto LABEL_18;
    }
  }

  else
  {
    v108 = v37;
    v58 = v109;
    sub_100031660(v12, v109, &qword_100981228, &unk_1007C8C40);
    if (v49(&v12[v47], 1, v3) != 1)
    {
      v70 = v42;
      v71 = v111;
      (*(v42 + 32))(v111, &v12[v47], v3);
      sub_100427760(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
      v72 = dispatch thunk of static Equatable.== infix(_:_:)();
      v73 = *(v48 + 8);
      v73(v71, v3);
      sub_10002B894(v34, &qword_100981228, &unk_1007C8C40);
      sub_10002B894(v108, &qword_100981228, &unk_1007C8C40);
      v73(v58, v3);
      v51 = v70;
      v57 = v135;
      sub_10002B894(v12, &qword_100981228, &unk_1007C8C40);
      v52 = v128;
      v53 = v129;
      v54 = v126;
      v55 = v127;
      v56 = v134;
      if (v72)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    sub_10002B894(v34, &qword_100981228, &unk_1007C8C40);
    sub_10002B894(v108, &qword_100981228, &unk_1007C8C40);
    v51 = v42;
    (*(v42 + 8))(v58, v3);
  }

  sub_10002B894(v12, &qword_100981220, &qword_1007C8C38);
  v52 = v128;
  v53 = v129;
  v55 = v127;
  v56 = v134;
LABEL_10:
  v59 = *&v138[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView];
  v60 = v116;
  v56(v116, v137, v3);
  v61 = (*(v51 + 88))(v60, v3);
  if (v61 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v51 + 96))(v60, v3);
    v62 = *(sub_10002849C(&qword_100978420, qword_1007BF850) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_100427760(&unk_1009855F0, type metadata accessor for InteractiveBackgroundContentView, "ŷ\r");
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    ArtworkView.image.setter();
    [v138 frame];
    v63 = v112;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();
    (*(v113 + 8))(v63, v114);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v64 = Artwork.backgroundColor.getter();
    [v59 setBackgroundColor:v64];

    v57 = v135;
    v55 = v127;
    v52 = v128;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v54 = v126;
    v56 = v134;

    v53 = v129;

    v65 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v65 - 8) + 8))(v116 + v62, v65);
  }

  else
  {
    if (v61 == enum case for ShelfBackground.color(_:))
    {
      (*(v51 + 96))(v60, v3);
      v66 = *v60;
      v67 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
      ArtworkView.image.setter();
      [v59 setBackgroundColor:v66];

      v56 = v134;
      v68 = type metadata accessor for ShelfBackgroundStyle();
      v69 = v60 + v67;
      v57 = v135;
      v52 = v128;
      (*(*(v68 - 8) + 8))(v69, v68);
    }

    else
    {
      v74 = v60;
      ArtworkView.image.setter();
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v75 = static UIColor.defaultBackground.getter();
      [v59 setBackgroundColor:v75];

      v76 = v74;
      v57 = v135;
      (*(v51 + 8))(v76, v3);
    }

    v54 = v126;
  }

LABEL_18:
  v77 = v123;
  sub_100031660(&v138[v133], v123, &qword_10097E110, qword_1007C5430);
  if (v119(v77, 1, v57))
  {
    sub_10002B894(v77, &qword_10097E110, qword_1007C5430);
    v78 = 1;
  }

  else
  {
    sub_1002AE770(v77, v54);
    sub_10002B894(v77, &qword_10097E110, qword_1007C5430);
    v56(v55, v54 + *(v57 + 28), v3);
    sub_1002B81D0(v54);
    v78 = 0;
  }

  v79 = v122;
  v122(v55, v78, 1, v3);
  v128 = *(v57 + 28);
  v56(v52, v137 + v128, v3);
  v79(v52, 0, 1, v3);
  v80 = *(v132 + 48);
  sub_100031660(v55, v53, &qword_100981228, &unk_1007C8C40);
  sub_100031660(v52, v53 + v80, &qword_100981228, &unk_1007C8C40);
  v81 = v118;
  if (v118(v53, 1, v3) == 1)
  {
    sub_10002B894(v52, &qword_100981228, &unk_1007C8C40);
    sub_10002B894(v55, &qword_100981228, &unk_1007C8C40);
    v82 = v81(v53 + v80, 1, v3);
    v83 = v131;
    if (v82 == 1)
    {
      sub_10002B894(v53, &qword_100981228, &unk_1007C8C40);
      goto LABEL_35;
    }
  }

  else
  {
    v84 = v110;
    sub_100031660(v53, v110, &qword_100981228, &unk_1007C8C40);
    if (v81(v53 + v80, 1, v3) != 1)
    {
      v83 = v131;
      v95 = v53 + v80;
      v96 = v111;
      (*(v131 + 32))(v111, v95, v3);
      sub_100427760(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
      v97 = v55;
      v98 = dispatch thunk of static Equatable.== infix(_:_:)();
      v99 = *(v83 + 8);
      v99(v96, v3);
      sub_10002B894(v52, &qword_100981228, &unk_1007C8C40);
      sub_10002B894(v97, &qword_100981228, &unk_1007C8C40);
      v99(v84, v3);
      sub_10002B894(v129, &qword_100981228, &unk_1007C8C40);
      v85 = v115;
      if (v98)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    sub_10002B894(v52, &qword_100981228, &unk_1007C8C40);
    sub_10002B894(v55, &qword_100981228, &unk_1007C8C40);
    v83 = v131;
    (*(v131 + 8))(v84, v3);
  }

  sub_10002B894(v53, &qword_100981220, &qword_1007C8C38);
  v85 = v115;
LABEL_27:
  v86 = *&v138[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView];
  v134(v85, (v137 + v128), v3);
  v87 = (*(v83 + 88))(v85, v3);
  if (v87 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v83 + 96))(v85, v3);
    v88 = *(sub_10002849C(&qword_100978420, qword_1007BF850) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_100427760(&unk_1009855F0, type metadata accessor for InteractiveBackgroundContentView, "ŷ\r");
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    ArtworkView.image.setter();
    [v138 frame];
    v89 = v112;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();
    (*(v113 + 8))(v89, v114);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v90 = Artwork.backgroundColor.getter();
    [v86 setBackgroundColor:v90];

    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v91 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v91 - 8) + 8))(v85 + v88, v91);
  }

  else if (v87 == enum case for ShelfBackground.color(_:))
  {
    (*(v83 + 96))(v85, v3);
    v92 = *v85;
    v93 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
    ArtworkView.image.setter();
    [v86 setBackgroundColor:v92];

    v94 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v94 - 8) + 8))(v85 + v93, v94);
  }

  else
  {
    ArtworkView.image.setter();
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v100 = static UIColor.defaultBackground.getter();
    [v86 setBackgroundColor:v100];

    (*(v83 + 8))(v85, v3);
  }

LABEL_35:
  v101 = v137;
  v102 = v138;
  v103 = v135;
  [*&v138[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView] setAlpha:*(v137 + *(v135 + 20))];

  v104 = v101;
  v105 = v124;
  sub_1002AE770(v104, v124);
  (*(v125 + 56))(v105, 0, 1, v103);
  v106 = v133;
  swift_beginAccess();
  sub_1002AE7D4(v105, &v102[v106]);
  return swift_endAccess();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundView(uint64_t a1)
{
  result = qword_100985558;
  if (!qword_100985558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004269C0(uint64_t a1)
{
  sub_1002AE2E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100426A64@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  return sub_100031660(v3 + v4, a1, &qword_10097E110, qword_1007C5430);
}

char *sub_100426AF4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView];
  v13 = v10;
  [v12 setContentMode:4];
  v14 = [*&v10[v11] layer];
  CGAffineTransformMakeScale(&v16, 3.0, 3.0);
  [v14 setAffineTransform:&v16];

  [v13 addSubview:*&v10[v11]];
  return v13;
}

void (*sub_100426EE8(uint64_t *a1, __n128 a2))(id *a1, char a2)
{
  a1[1] = *(v2 + OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView);
  *a1 = ArtworkView.image.getter();
  return sub_100426F3C;
}

void sub_100426F3C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    ArtworkView.image.setter();
  }

  else
  {
    ArtworkView.image.setter();
  }
}

id sub_100426FD0()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SemiLightMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 56) = sub_100005744(0, &qword_100982738, CAFilter_ptr);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v13 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 0.4).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  LODWORD(v17) = 1.0;
  [v16 setOpacity:v17];

  return v5;
}

id sub_100427350()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AccessoryDarkMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 56) = sub_100005744(0, &qword_100982738, CAFilter_ptr);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v13 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.58824, 0.58824, 0.15).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  if (v16)
  {
    LODWORD(v17) = 1.0;
    [v16 setOpacity:v17];
  }

  return v5;
}

id sub_1004276B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100427760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004277A8()
{
  v1 = v0;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (qword_10096DBE8 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_1000056A8(v2, qword_1009D02C8);
  Preferences.subscript.getter();

  if (v11 == 2 || (v11 & 1) == 0)
  {
    v3 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v3 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v4 = [objc_allocWithZone(v3) init];
  *(v0 + OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_materialView) = v4;
  v5 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  v9 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10042798C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &v4[*a3];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v4[*a4];
  if (v7)
  {
    if (*(v6 + 1))
    {
      v8 = v7;

      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = v7;
      v9 = 0;
    }

    [v8 setText:v9];
  }

  return [v4 setNeedsLayout];
}

void sub_100427A6C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *&v2[*a2];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = a1;
  v7 = a1;

  if (a1)
  {
    [v2 addSubview:v7];
  }
}

void sub_100427B10(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *(v1 + v2);
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
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer);
    v7 = v5;
    [v6 insertSubview:v7 atIndex:0];
  }

LABEL_4:
}

void sub_100427BCC()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
    v15 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer];
      v4 = v2;
      [v3 insertSubview:v15 aboveSubview:v4];
      v5 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v5)
      {
        v6 = v5;
        [v3 insertSubview:v6 aboveSubview:v4];
      }
    }

    else
    {
      v7 = v1;
      v8 = [v0 contentView];
      [v8 insertSubview:v7 atIndex:0];

      v9 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v9)
      {
        [*&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v9 atIndex:0];
      }
    }

    v10 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView];
    if (v10)
    {
      [*&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v10 aboveSubview:v15];
    }

    v11 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView];
    v12 = v15;
    if (v11)
    {
      v13 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer];
      v14 = v11;
      [v13 insertSubview:v14 aboveSubview:v15];

      v12 = v15;
    }
  }
}

uint64_t sub_100427D7C()
{
  v1 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce;
  if (*(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) == 1)
  {
    swift_unknownObjectWeakInit();
    sub_10042F71C(v3);
    result = swift_unknownObjectWeakDestroy();
    *(v0 + v1) = 0;
  }

  return result;
}

id sub_100427DD4()
{
  result = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  if (result)
  {
    qword_100985600 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100427E24()
{
  result = [objc_opt_self() colorEffectSaturate:2.0];
  qword_100985608 = result;
  return result;
}

void sub_100427E64()
{
  sub_100005744(0, &unk_1009856A0, UIColorEffect_ptr);
  v0 = [objc_opt_self() blackColor];
  v1 = [swift_getObjCClassFromMetadata() effectCompositingColor:v0 withMode:23 alpha:1.0];

  if (v1)
  {
    qword_100985610 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_100427F00(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v112 = type metadata accessor for AutomationSemantics();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v116 = type metadata accessor for WordmarkView.Alignment();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontSource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = type metadata accessor for StaticDimension();
  v17 = *(v110 - 1);
  __chkstk_darwin(v110);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v20 - 8);
  v109 = &v108 - v21;
  v22 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_itemLayoutContext;
  v23 = type metadata accessor for ItemLayoutContext();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = 0;
  v24 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v25 = [objc_allocWithZone(UIView) init];
  v114 = objc_opt_self();
  v26 = [v114 systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  *&v5[v24] = v25;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView] = 0;
  v27 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v5[v27] = DynamicTypeLabel.__allocating_init(frame:)();
  v28 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  v29[1] = 0u;
  v30 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel;
  *&v5[v30] = DynamicTypeLabel.__allocating_init(frame:)();
  v31 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel;
  *&v5[v31] = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v108 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView;
  v32 = type metadata accessor for Wordmark();
  (*(*(v32 - 8) + 56))(v109, 1, 1, v32);
  *v16 = UIFontTextStyleFootnote;
  (*(v14 + 104))(v16, enum case for FontSource.textStyle(_:), v13);
  *(&v123 + 1) = v13;
  v124 = &protocol witness table for FontSource;
  v33 = sub_1000056E0(&v122);
  (*(v14 + 16))(v33, v16, v13);
  v34 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  (*(v14 + 8))(v16, v13);
  (*(v115 + 104))(v113, enum case for WordmarkView.Alignment.center(_:), v116);
  v35 = v110;
  *(&v123 + 1) = v110;
  v124 = &protocol witness table for StaticDimension;
  v36 = sub_1000056E0(&v122);
  (*(v17 + 16))(v36, v19, v35);
  v37 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v38 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v17 + 8))(v19, v35);
  *&v5[v108] = v38;
  v39 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton;
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v39] = sub_1000F5284(0, v41);
  v42 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *&v5[v42] = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = 0;
  v43 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer;
  *&v5[v43] = [objc_allocWithZone(UIView) init];
  v44 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurEffect;
  *&v5[v44] = [objc_opt_self() effectWithStyle:7];
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView] = 0;
  v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView] = 0;
  v45 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  *v45 = 0;
  v45[1] = 0;
  v46 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView;
  type metadata accessor for ArtworkView();
  *&v5[v46] = static ArtworkView.iconArtworkView.getter();
  v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer] = 0;
  v47 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleText];
  *v47 = 0;
  v47[1] = 0;
  v48 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleText];
  *v48 = 0;
  v48[1] = 0;
  v49 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_theme;
  v50 = enum case for ProductPageTheme.infer(_:);
  v51 = type metadata accessor for ProductPageTheme();
  (*(*(v51 - 8) + 104))(&v5[v49], v50, v51);
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel] = 0;
  v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
  makeNetworkInquiry()();
  v52 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkObservation];
  *v52 = 0u;
  *(v52 + 1) = 0u;
  *(v52 + 4) = 0;
  v53 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler];
  *v53 = 0;
  v53[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce] = 1;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = 0;
  v121.receiver = v5;
  v121.super_class = ObjectType;
  v54 = objc_msgSendSuper2(&v121, "initWithFrame:", a1, a2, a3, a4);
  v55 = [v54 contentView];
  v56 = [v55 layer];

  [v56 setAllowsGroupBlending:0];
  v57 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel;
  [*(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel) setHidden:1];
  v58 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel;
  [*(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel) setHidden:1];
  [*(v54 + v57) setLineBreakMode:4];
  v59 = *(v54 + v57);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v60 = v59;
  v61 = static UIColor.secondaryText.getter();
  [v60 setTextColor:v61];

  *&v116 = v57;
  [*(v54 + v57) setUserInteractionEnabled:1];
  v62 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v54 action:"developerLabelTapped:"];
  v113 = v62;

  [*(v54 + v57) addGestureRecognizer:v62];
  [*(v54 + v58) setLineBreakMode:4];
  v63 = *(v54 + v58);
  v64 = static UIColor.secondaryText.getter();
  [v63 setTextColor:v64];

  [*(v54 + v58) setUserInteractionEnabled:1];
  v110 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v54 action:"taglineLabelTapped:"];
  v65 = *(v54 + v58);
  v66 = v58;
  v108 = v58;
  [v65 addGestureRecognizer:v110];
  v67 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();
  v115 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel;
  v68 = *(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel);
  v69 = static UIColor.secondaryText.getter();
  [v68 setTextColor:v69];

  v109 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView;
  v70 = *(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView);
  v122 = 0u;
  v123 = 0u;
  v119 = 0u;
  v120 = 0u;
  v71 = v70;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v119, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v122, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v72 = *(v111 + 8);
  v73 = v112;
  v72(v11, v112);
  v111 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel;
  v74 = *(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
  v122 = 0u;
  v123 = 0u;
  v119 = 0u;
  v120 = 0u;
  v75 = v74;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v119, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v122, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v72(v11, v73);
  v76 = *(v54 + v116);
  v122 = 0u;
  v123 = 0u;
  v119 = 0u;
  v120 = 0u;
  v77 = v76;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v119, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v122, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v72(v11, v73);
  v78 = *(v54 + v66);
  v122 = 0u;
  v123 = 0u;
  v119 = 0u;
  v120 = 0u;
  v79 = v78;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v119, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v122, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v72(v11, v73);
  v80 = *(v54 + v67);
  v122 = 0u;
  v123 = 0u;
  v119 = 0u;
  v120 = 0u;
  v81 = v80;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v119, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v122, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v72(v11, v73);
  v82 = *(v54 + v115);
  v122 = 0u;
  v123 = 0u;
  v119 = 0u;
  v120 = 0u;
  v83 = v82;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v119, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v122, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v72(v11, v73);
  v84 = [v54 contentView];
  v85 = v114;
  v86 = [v114 clearColor];
  [v84 setBackgroundColor:v86];

  v87 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer;
  v88 = *(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer);
  v89 = [v85 clearColor];
  [v88 setBackgroundColor:v89];

  v90 = [v54 contentView];
  [v90 addSubview:*(v54 + v87)];

  v91 = [v54 contentView];
  [v91 addSubview:*(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupContentBackgroundView)];

  v92 = [v54 contentView];
  [v92 addSubview:*&v109[v54]];

  v93 = [v54 contentView];
  [v93 addSubview:*(v54 + v111)];

  v94 = [v54 contentView];
  [v94 addSubview:*(v54 + v116)];

  v95 = [v54 contentView];
  [v95 addSubview:*(v54 + v67)];

  v96 = [v54 contentView];
  [v96 addSubview:*(v54 + v115)];

  v97 = [v54 contentView];
  [v97 addSubview:*(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView)];

  v98 = [v54 contentView];
  [v98 addSubview:*(v54 + v108)];

  sub_1004291F4();
  sub_10002C0AC(v54 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkInquiry, &v119);
  sub_10002A400(&v119, *(&v120 + 1));
  v99 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v100 = static OS_dispatch_queue.main.getter();
  v118[3] = v99;
  v118[4] = &protocol witness table for OS_dispatch_queue;
  v118[0] = v100;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of NetworkInquiry.observe(on:_:)();

  sub_100007000(v118);
  v101 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkObservation;
  swift_beginAccess();
  sub_100435E00(&v122, v54 + v101);
  swift_endAccess();
  sub_100007000(&v119);
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v102 = swift_allocObject();
  v116 = xmmword_1007B10D0;
  *(v102 + 16) = xmmword_1007B10D0;
  *(v102 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v102 + 40) = &protocol witness table for UITraitLayoutDirection;
  v103 = ObjectType;
  *(&v123 + 1) = ObjectType;
  *&v122 = v54;
  v104 = v54;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(&v122);
  v105 = swift_allocObject();
  *(v105 + 16) = v116;
  *(v105 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v105 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(&v123 + 1) = v103;
  *&v122 = v104;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(&v122);
  v106 = swift_allocObject();
  *(v106 + 16) = v116;
  *(v106 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v106 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v104;
}

void sub_1004291F4()
{
  v1 = type metadata accessor for ProductPageTheme();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for ProductPageTheme.infer(_:))
  {
    sub_10042F218();
    return;
  }

  if (v6 == enum case for ProductPageTheme.blue(_:))
  {
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = qword_10096D6E8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_1009CF518;
    goto LABEL_13;
  }

  if (v6 == enum case for ProductPageTheme.orange(_:))
  {
    v11 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = qword_10096D6F0;
    v9 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v10 = qword_1009CF520;
LABEL_13:
    [v9 setTextColor:v10];

LABEL_14:
    v13 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v14 = v0;
    v15 = static UIColor.primaryText.getter();
    [v13 setTextColor:v15];

    v16 = *(v14 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
    v17 = static UIColor.secondaryText.getter();
    [v16 setTextColor:v17];

    v18 = *(v14 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView);
    v19 = static UIColor.secondaryText.getter();
    [v18 setTintColor:v19];

    v20 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v21 = *(v14 + v20);
    if (v21)
    {
      v22 = v21;
      v23 = static UIColor.tertiaryText.getter();
      [v22 setTextColor:v23];
    }

    return;
  }

  if (v6 == enum case for ProductPageTheme.white(_:))
  {
    v24 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v25 = v0;
    v26 = static UIColor.primaryText.getter();
    [v24 setTextColor:v26];

    v27 = *(v25 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_10096D6F8 != -1)
    {
      v31 = *(v25 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
      swift_once();
      v27 = v31;
    }

    v28 = qword_1009CF528;
    [v27 setTextColor:qword_1009CF528];
    [*(v25 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView) setTintColor:v28];
    v29 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if (v30)
    {
      [v30 setTextColor:v28];
    }
  }

  else
  {
    sub_10042F218();
    (*(v2 + 8))(v4, v1);
  }
}

void sub_10042961C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10002A400((Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkInquiry), *(Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkInquiry + 24));
    if ((dispatch thunk of NetworkInquiry.isLikelyReachable.getter() & 1) == 0)
    {
      v4 = v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible];
      v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
      sub_10042AF44(v4);
    }
  }
}

void sub_1004296B8()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v5 = [v0 traitCollection];
    v6 = UITraitCollection.isSizeClassCompact.getter();

    if (v6)
    {
      sub_10042B4A0();
    }

    else
    {
      sub_10042BF38();
    }

    sub_100427BCC();
  }
}

id sub_1004297D8()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v0;
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();

    swift_unknownObjectRelease();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ProductLockupCollectionViewCell(uint64_t a1)
{
  result = qword_100985678;
  if (!qword_100985678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100429BD8(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  if (v3)
  {
    v4 = *(*&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v14 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
    if (a1)
    {
      sub_100435DB0(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v5 = v2;
      v6 = v14;
      v7 = [v5 superview];
      if (v7)
      {
        v8 = v7;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v9 = v4;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v11 = v3;
    }

    v12 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v2;
    v13 = v2;
    sub_10047C6C8(v12);

    if (v2)
    {
      *&v13[qword_100988CB8 + 8] = &off_1008B4C68;
      swift_unknownObjectWeakAssign();
    }

    a1 = v14;
  }
}

uint64_t sub_100429D8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(*(v1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = v2;
    return v4;
  }

  return result;
}

uint64_t (*sub_100429E10(uint64_t *a1))(id *a1, char a2)
{
  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4 && (v5 = *(*(*(v4 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents)) != 0)
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
  return sub_100429EC0;
}

uint64_t sub_100429EC0(id *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[1]);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v25 = *a1;
      if (v2)
      {
        sub_100435DB0(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
        v5 = v25;
        v6 = v3;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_100005744(0, &qword_100972EB0, UIView_ptr);
          v9 = v4;
          v10 = static NSObject.== infix(_:_:)();

          if (v10)
          {
            [v5 removeFromSuperview];
          }
        }

        else
        {
        }
      }

      else
      {
        v18 = v3;
        v5 = 0;
      }

      v20 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
      *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v25;
      v21 = v5;
      sub_10047C6C8(v20);

      if (v25)
      {
        *&v21[qword_100988CB8 + 8] = &off_1008B4C68;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else if (v3)
  {
    v11 = *(*&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v26 = *a1;
    if (v2)
    {
      sub_100435DB0(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v12 = v26;
      v13 = v3;
      v14 = [v12 superview];
      if (v14)
      {
        v15 = v14;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v16 = v11;
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = v3;
      v12 = 0;
    }

    v22 = *&v11[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v11[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v26;
    v23 = v12;
    sub_10047C6C8(v22);

    if (v26)
    {
      *&v23[qword_100988CB8 + 8] = &off_1008B4C68;
      swift_unknownObjectWeakAssign();
    }
  }

  return _objc_release_x2();
}

void sub_10042A1FC()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v1)
  {
    v2 = v0;
    v3 = v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v10 = v1;
    v4 = static UIColor.secondaryText.getter();
    [v10 setTextColor:v4];

    if (v3 == 1)
    {
      if (qword_10096D740 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_1009CF5E0];
      v5 = [v2 contentView];
      v6 = [v5 traitCollection];

      [v6 userInterfaceStyle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();

      v8 = [v10 layer];
      v9 = v7;
      [v8 setCompositingFilter:v9];
    }

    else
    {
      if (qword_10096D738 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_1009CF5D8];
      v9 = [v10 layer];
      [v9 setCompositingFilter:0];
    }
  }
}

void sub_10042A450()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  if (v5)
  {
    v6 = v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v7 = v5;
    v8 = static UIColor.secondaryText.getter();
    [v7 setTextColor:v8];

    if (v6 == 1)
    {
      if (qword_10096DED8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for FontUseCase();
      v10 = sub_1000056A8(v9, qword_1009D0C08);
      v11 = *(v9 - 8);
      (*(v11 + 16))(v4, v10, v9);
      (*(v11 + 56))(v4, 0, 1, v9);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      [v7 setTextAlignment:1];
      v12 = [v1 contentView];
      v13 = [v12 traitCollection];

      [v13 userInterfaceStyle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();

      v15 = [v7 layer];
      v16 = v14;
      [v15 setCompositingFilter:v16];
    }

    else
    {
      if (qword_10096DED0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for FontUseCase();
      v18 = sub_1000056A8(v17, qword_1009D0BF0);
      v19 = *(v17 - 8);
      (*(v19 + 16))(v4, v18, v17);
      (*(v19 + 56))(v4, 0, 1, v17);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      v16 = [v7 layer];
      [v16 setCompositingFilter:0];
    }
  }
}

void sub_10042A7C8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v53 - v13;
  if (v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer] != v3)
  {
    if (v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer])
    {
      if (qword_10096DEC8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for FontUseCase();
      v16 = sub_1000056A8(v15, qword_1009D0BD8);
      v17 = *(v15 - 8);
      v18 = *(v17 + 16);
      v53 = v16;
      v60 = v18;
      v61 = v17 + 16;
      (v18)(v14);
      v19 = *(v17 + 56);
      v62 = v17 + 56;
      v59 = v19;
      v19(v14, 0, 1, v15);
      if (qword_10096D898 != -1)
      {
        swift_once();
      }

      v20 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
      sub_1000056A8(v20, qword_1009CFA18);
      v63 = v2;
      v21 = v2;
      v57 = v20;
      Conditional.evaluate(with:)();

      v22 = *(v5 + 104);
      v56 = enum case for DirectionalTextAlignment.none(_:);
      v58 = v5 + 104;
      v55 = v22;
      v22(v7);
      v54 = type metadata accessor for DynamicTypeLabel();
      v23 = objc_allocWithZone(v54);
      v24 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v25 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v26 = *&v21[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v26)
      {
        [v26 removeFromSuperview];
        v27 = *&v21[v25];
      }

      else
      {
        v27 = 0;
      }

      *&v21[v25] = v24;
      v31 = v24;

      v60(v14, v53, v15);
      v59(v14, 0, 1, v15);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      v32 = [v21 contentView];
      [v32 addSubview:v31];

      [v21 setNeedsLayout];
      v33 = *&v21[v25];
      v34 = &selRef_setRequiresColorStatistics_;
      if (v33)
      {
        if (*&v21[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleText + 8])
        {
          v35 = v33;

          v36 = String._bridgeToObjectiveC()();
        }

        else
        {
          v35 = v33;
          v36 = 0;
        }

        v34 = &selRef_setRequiresColorStatistics_;
        [v35 setText:v36];
      }

      if (v21[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] == 1)
      {
        if (qword_10096DED8 != -1)
        {
          swift_once();
        }

        v40 = qword_1009D0C08;
      }

      else
      {
        if (qword_10096DED0 != -1)
        {
          swift_once();
        }

        v40 = qword_1009D0BF0;
      }

      v41 = sub_1000056A8(v15, v40);
      v60(v10, v41, v15);
      v59(v10, 0, 1, v15);
      if (qword_10096D8A0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v57, qword_1009CFA30);
      v63 = v21;
      v42 = v21;
      Conditional.evaluate(with:)();

      v55(v7, v56, v4);
      v43 = objc_allocWithZone(v54);
      v44 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v45 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v46 = *&v42[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v46)
      {
        [v46 removeFromSuperview];
        v47 = *&v42[v45];
      }

      else
      {
        v47 = 0;
      }

      *&v42[v45] = v44;
      v48 = v44;

      sub_10042A450();
      v49 = [v42 contentView];
      [v49 addSubview:v48];

      [v42 setNeedsLayout];
      v50 = *&v42[v45];
      if (v50)
      {
        if (*&v42[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleText + 8])
        {
          v51 = v50;

          v52 = String._bridgeToObjectiveC()();
        }

        else
        {
          v51 = v50;
          v52 = 0;
        }

        [v51 v34[11]];
      }

      [*&v42[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel] setHidden:1];
      sub_1004291F4();
    }

    else
    {
      v28 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v29 = *&v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v29)
      {
        [v29 removeFromSuperview];
        v30 = *&v2[v28];
      }

      else
      {
        v30 = 0;
      }

      *&v2[v28] = 0;

      [v2 setNeedsLayout];
      v37 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v38 = *&v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v38)
      {
        [v38 removeFromSuperview];
        v39 = *&v2[v37];
      }

      else
      {
        v39 = 0;
      }

      *&v2[v37] = 0;

      [v2 setNeedsLayout];
    }

    [v2 setNeedsLayout];
  }
}

void sub_10042AF44(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible;
  if (*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible) == (a1 & 1))
  {
    return;
  }

  v22 = v2;
  if ([v22 isHidden])
  {
    if ((*(v1 + v3) & 1) == 0)
    {

      return;
    }
  }

  else if (!*(v1 + v3))
  {
    v4 = 1.0;
    tx = 0.0;
    ty = 0.0;
    [v22 setHidden:{0, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000}];
    goto LABEL_11;
  }

  v4 = 0.0;
  CGAffineTransformMakeTranslation(&aBlock, 0.0, 2.0);
  tx = aBlock.tx;
  ty = aBlock.ty;
  [v22 setHidden:{0, *&aBlock.a, *&aBlock.b, *&aBlock.c, *&aBlock.d}];
LABEL_11:
  [v22 setAlpha:v4];
  *&aBlock.a = v20;
  *&aBlock.c = v21;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v22 setTransform:&aBlock];
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow);
  if (v7)
  {
    v7[OBJC_IVAR____TtC8AppStore11ChevronView_shouldAnimate] = (*(v1 + v3) & 1) == 0;
    v8 = v7;
    sub_10002C6BC();
  }

  if (*(v1 + v3))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v22;
  v12 = objc_allocWithZone(UIViewPropertyAnimator);
  *&aBlock.tx = sub_100435E70;
  *&aBlock.ty = v11;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100007A08;
  *&aBlock.d = &unk_1008C2B88;
  v13 = _Block_copy(&aBlock);
  v14 = v22;

  v15 = [v12 initWithDuration:v9 curve:v13 animations:0.2];
  _Block_release(v13);

  aBlock.a = 1.0;
  aBlock.b = 0.0;
  aBlock.c = 0.0;
  aBlock.d = 1.0;
  aBlock.tx = 0.0;
  aBlock.ty = 0.0;
  [v14 setTransform:&aBlock];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *&aBlock.tx = sub_100435E78;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10007FFE8;
  *&aBlock.d = &unk_1008C2BD8;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  [v15 addCompletion:v18];
  _Block_release(v18);
  [v15 startAnimation];
}

void sub_10042B328(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible;
    v6 = 0.0;
    if (*(Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible))
    {
      v6 = 1.0;
    }

    [a2 setAlpha:v6];
    if (v4[v5])
    {
      v7 = xmmword_1007C2720;
      v8 = xmmword_1007C2400;
      v9 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v10, 0.0, 2.0);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [a2 setTransform:&v10];
  }
}

void sub_10042B404(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible) & 1) == 0)
    {
      [a3 setHidden:1];
      [a3 setText:0];
      [v5 setNeedsLayout];
    }
  }
}

void sub_10042B4A0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView;
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView);
  *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView) = v2;

  v5 = *(v0 + v3);
  if (v5)
  {
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B15F0;
    v7 = qword_10096DBF0;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_100985600;
    *(v6 + 32) = qword_100985600;
    v10 = qword_10096DBF8;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_100985608;
    *(v6 + 40) = qword_100985608;
    sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
    v13 = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setBackgroundEffects:isa];
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView) = 0;

  v16 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView) = 0;

  v17 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007B0B70;
  if (qword_10096DC00 != -1)
  {
    swift_once();
  }

  v19 = qword_100985610;
  *(v18 + 32) = qword_100985610;
  sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
  v20 = v19;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v17 setBackgroundEffects:v21];

  v22 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  v96 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = v17;
  v97 = v17;

  v23 = type metadata accessor for GradientView();
  v24 = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView;
  v26 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView) = v24;

  v27 = *(v1 + v25);
  v28 = &StringUserDefaultsDebugSetting;
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1007BB060;
    v30 = objc_opt_self();
    v31 = v27;
    *(v29 + 32) = [v30 clearColor];
    v32 = [v30 blackColor];
    v33 = [v32 colorWithAlphaComponent:0.5];

    *(v29 + 40) = v33;
    v34 = [v30 blackColor];
    v35 = [v34 colorWithAlphaComponent:0.85];

    *(v29 + 48) = v35;
    v28 = &StringUserDefaultsDebugSetting;
    *(v29 + 56) = [v30 blackColor];
    *&v31[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v29;

    sub_1001C0CEC();

    v36 = *(v1 + v25);
    if (v36)
    {
      v37 = v36;
      sub_1001C0B48(&off_1008AFAB0);

      v38 = *(v1 + v25);
      if (v38)
      {
        v39 = v38;
        v40 = [v39 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v41 = *(v1 + v25);
        if (v41)
        {
          v42 = v41;
          v43 = [v42 layer];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v44 = *(v1 + v3);
  if (v44)
  {
    v45 = [v44 v28[43].base_prots];
    v46 = *(v1 + v25);
    if (v46)
    {
      v47 = [v46 v28[43].base_prots];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v48 = 0;
    }

    [v45 setMask:v48];
  }

  v49 = [objc_allocWithZone(v23) init];
  v50 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView;
  v51 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = v49;

  v52 = *(v1 + v50);
  if (v52)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1007BB060;
    v54 = objc_opt_self();
    v55 = v52;
    *(v53 + 32) = [v54 clearColor];
    v56 = [v54 blackColor];
    v57 = v23;
    v58 = v28;
    v59 = [v56 colorWithAlphaComponent:0.4];

    *(v53 + 40) = v59;
    v60 = [v54 blackColor];
    v61 = [v60 colorWithAlphaComponent:0.68];

    *(v53 + 48) = v61;
    v28 = v58;
    v23 = v57;
    v62 = [v54 blackColor];
    v63 = [v62 colorWithAlphaComponent:0.8];

    *(v53 + 56) = v63;
    *&v55[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v53;

    sub_1001C0CEC();

    v64 = *(v1 + v50);
    if (v64)
    {
      v65 = v64;
      sub_1001C0B48(&off_1008AFAF0);

      v66 = *(v1 + v50);
      if (v66)
      {
        v67 = v66;
        v68 = [v67 v28[43].base_prots];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v69 = *(v1 + v50);
        if (v69)
        {
          v70 = v69;
          v71 = [v70 v28[43].base_prots];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v72 = *(v1 + v96);
  if (v72)
  {
    v73 = [v72 v28[43].base_prots];
    v74 = *(v1 + v50);
    if (v74)
    {
      v75 = [v74 v28[43].base_prots];
      objc_opt_self();
      v76 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v76 = 0;
    }

    [v73 setMask:v76];
  }

  v77 = [objc_allocWithZone(v23) init];
  v78 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v79 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = v77;

  v80 = *(v1 + v78);
  if (v80)
  {
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1007B48F0;
    v82 = objc_opt_self();
    v83 = v80;
    *(v81 + 32) = [v82 blackColor];
    *(v81 + 40) = [v82 blackColor];
    *(v81 + 48) = [v82 blackColor];
    *&v83[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v81;

    sub_1001C0CEC();

    v84 = *(v1 + v78);
    if (v84)
    {
      v85 = v84;
      sub_1001C0B48(&off_1008AFB30);

      v86 = *(v1 + v78);
      if (v86)
      {
        v87 = v86;
        v88 = [v87 v28[43].base_prots];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v89 = *(v1 + v78);
        if (v89)
        {
          v90 = v89;
          v91 = [v90 v28[43].base_prots];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v92 = [*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer) v28[43].base_prots];
  v93 = *(v1 + v78);
  if (v93)
  {
    v94 = [v93 v28[43].base_prots];
    objc_opt_self();
    v95 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v95 = 0;
  }

  v98 = v95;
  [v92 setMask:?];
}

void sub_10042BF38()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurEffect)];
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView) = v5;

  v7 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;

  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView) = v8;

  v11 = *(v1 + v9);
  if (v11)
  {
    v12 = objc_allocWithZone(UIColor);
    v13 = v11;
    v14 = [v12 initWithWhite:1.0 alpha:0.1];
    [v13 setBackgroundColor:v14];
  }

  type metadata accessor for ShadowView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView;
  v17 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView) = v15;

  v18 = *(v1 + v16);
  if (v18)
  {
    v19 = qword_10096DA50;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Shadow();
    v22 = sub_1000056A8(v21, qword_1009CFD50);
    v23 = *(v21 - 8);
    (*(v23 + 16))(v4, v22, v21);
    (*(v23 + 56))(v4, 0, 1, v21);
    dispatch thunk of ShadowView.shadow.setter();

    v24 = *(v1 + v16);
    if (v24)
    {
      v25 = [v24 layer];
      v26 = [*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView) layer];
      v27 = [v26 maskedCorners];

      [v25 setMaskedCorners:v27];
      v28 = *(v1 + v16);
      if (v28)
      {
        v29 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView);
        v30 = v28;
        [v29 _continuousCornerRadius];
        [v30 _setContinuousCornerRadius:?];

        v31 = *(v1 + v16);
        if (v31)
        {
          [v31 setAutoresizingMask:18];
        }
      }
    }
  }

  v32 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;

  v33 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;

  v34 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;

  v35 = [*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer) layer];
  [v35 setMask:0];
}

uint64_t sub_10042C2D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for FloatingPointRoundingRule();
  v179 = *(v181 - 8);
  *&v7 = __chkstk_darwin(v181).n128_u64[0];
  v180 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190.receiver = v1;
  v190.super_class = ObjectType;
  objc_msgSendSuper2(&v190, "layoutSubviews", v7);
  if ([*&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel] isHidden])
  {
    v9 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
    if ([v9 isHidden])
    {
      [v9 setHidden:0];
    }
  }

  v10 = &selRef_setRequiresColorStatistics_;
  v11 = [v1 traitCollection];
  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

  sub_100433694(v1, v1);
  sub_100433BEC(v1, v1);
  v13 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16 + 0.0;
  v24 = v18 + 0.0;
  v178 = v20;
  v25 = v20 + 0.0;
  v26 = v13 + v22;
  v27 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber;
  if (v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v28 = [v1 traitCollection];
    v29 = UITraitCollection.isSizeClassRegular.getter();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView;
      v31 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
      if (v31)
      {
        v32 = qword_10096D8B0;
        v33 = v31;
        if (v32 != -1)
        {
          swift_once();
        }

        v34 = sub_10002849C(&qword_100979010, qword_1007BE140);
        sub_1000056A8(v34, qword_1009CFA60);
        v35 = v180;
        static Dimensions.defaultRoundingRule.getter();
        Conditional<>.value(in:rounded:)();
        v37 = v36;
        v38 = *(v179 + 8);
        *&v183 = v179 + 8;
        y = *&v38;
        v38(v35, v181);
        [v33 _setCornerRadius:v37];

        v39 = *&v1[v30];
        if (v39)
        {
          v40 = [v39 contentView];
          v41 = [v40 layer];

          if (qword_10096D8C8 != -1)
          {
            swift_once();
          }

          [v41 setBorderColor:qword_1009CFAA8];

          v42 = *&v1[v30];
          if (v42)
          {
            v43 = [v42 contentView];
            v44 = [v43 layer];

            if (qword_10096D8B8 != -1)
            {
              swift_once();
            }

            v45 = sub_10002849C(&qword_100979010, qword_1007BE140);
            sub_1000056A8(v45, qword_1009CFA78);
            v46 = v180;
            static Dimensions.defaultRoundingRule.getter();
            Conditional<>.value(in:rounded:)();
            v48 = v47;
            (*&y)(v46, v181);
            v49 = [v1 traitCollection];
            [v49 displayScale];
            v51 = v50;

            [v44 setBorderWidth:v48 / v51];
          }
        }
      }
    }

    v185 = sub_10042D128(v189, v23, v24, v25, v26);
    v186 = v52;
    v187 = v53;
    v188 = v54;
    v55 = v13 + v52;
    v10 = &selRef_setRequiresColorStatistics_;
  }

  else
  {
    v56 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
    if (v56)
    {
      v57 = [v56 contentView];
      v58 = [v57 layer];

      [v58 setBorderWidth:0.0];
    }

    if (v12)
    {
      v59 = sub_10042DDF0(v189, v23, v24, v25);
    }

    else
    {
      v59 = sub_10042E45C(v189, v23, v24, v25, v26);
    }

    v55 = v60;
    v185 = v59;
    v186 = v60;
    v187 = v61;
    v188 = v62;
  }

  v63 = v13;
  v191.origin.x = v23;
  v191.origin.y = v24;
  v191.size.width = v25;
  v191.size.height = v26;
  v64 = CGRectGetMaxY(v191) - v55;
  v192.origin.x = v23;
  v192.origin.y = v24;
  v192.size.width = v25;
  v192.size.height = v26;
  MinX = CGRectGetMinX(v192);
  v193.origin.y = v24;
  v66 = v23;
  v193.origin.x = v23;
  v193.size.width = v25;
  v193.size.height = v26;
  y = v193.origin.y;
  v67 = v55;
  Width = CGRectGetWidth(v193);
  sub_10002A400(v189, v189[3]);
  v176 = MinX;
  v177 = v64;
  v175 = Width;
  v69 = v67;
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v4 + 8))(v6, v3);
  v70 = [v1 v10[35]];
  v71 = UITraitCollection.isSizeClassRegular.getter();

  v72 = &OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel;
  v183 = v63;
  if ((v71 & 1) != 0 && v1[v27] == 1)
  {
    if (v26 >= v178)
    {
      v73 = v25;
    }

    else
    {
      v73 = v26;
    }

    if (v73 <= 31.0)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v73 * 0.5;
    }

    ArtworkView.frame.getter();
    v75 = CGRectGetMinY(v194) + -34.0;
    v76 = 30.0;
    if (v73 <= 60.0)
    {
      v76 = v74;
    }

    v77 = v75 - v76;
    v78 = v66;
    v195.origin.x = v66;
    v79 = y;
    v195.origin.y = y;
    v195.size.width = v25;
    v195.size.height = v26;
    MidY = CGRectGetMidY(v195);
    v81 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
    if (v77 >= MidY)
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
        v91 = &v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
        v92 = v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v91 = 0;
        v91[8] = 1;
        if ((v92 & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
        v83 = &v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
        MidY = *&v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
        v84 = v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v83 = v77;
        *(v83 + 8) = 0;
        if ((v84 & 1) != 0 || v77 != MidY)
        {
LABEL_45:
          [v82 setNeedsLayout];
        }
      }
    }
  }

  else
  {
    v85 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
    v78 = v66;
    v79 = y;
    if (v85)
    {
      v86 = *(*(*(v85 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v86)
      {
        type metadata accessor for VideoView(0);
        v87 = swift_dynamicCastClass();
        if (v87)
        {
          v88 = v87 + qword_1009D21B8;
          v89 = *(v87 + qword_1009D21B8 + 16);
          *v88 = 0;
          *(v88 + 8) = 0;
          *(v88 + 16) = 1;
          if ((v89 & 1) == 0)
          {
            v90 = v86;
            sub_1004E1028();
          }
        }
      }
    }
  }

  v93 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer];
  [v93 setFrame:{v78, v79, v25, v26}];
  v94 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v95 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
  if (v95)
  {
    v96 = v95;
    [v93 bounds];
    [v96 setFrame:?];
  }

  v97 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
  v98 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
  if (v1[v27] == 1)
  {
    if (v98)
    {
      v99 = v98;
      [v1 bounds];
      v100 = CGRectGetMinX(v196);
      [v1 bounds];
      v101 = CGRectGetWidth(v197);
      [v1 bounds];
      [v99 setFrame:{v100, 0.0, v101, v63 + CGRectGetHeight(v198)}];

      v102 = *&v1[v97];
      if (v102)
      {
        v103 = v102;
        v104 = [v1 traitCollection];
        v105 = UITraitCollection.isSizeClassRegular.getter();

        v106 = 418.0;
        if (v105)
        {
          v106 = 0.0;
        }

        *&v103[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] = v106;
        v107 = *&v103[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView];
        v108 = *(v107 + OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount);
        *(v107 + OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount) = v106;
        if (v106 != v108)
        {
          sub_10047B37C();
        }
      }
    }

    v109 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView];
    if (v109)
    {
      v110 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
      v111 = v109;
      if (v110)
      {
        [v110 bounds];
      }

      else
      {
        v112 = 0.0;
        v113 = 0.0;
        v114 = 0.0;
        v115 = 0.0;
      }

      [v111 setFrame:{v112, v113, v114, v115}];
    }

    v128 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView];
    if (v128)
    {
      v129 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      v119 = v128;
      if (v129)
      {
        [v129 bounds];
      }

      else
      {
        v125 = 0.0;
        v127 = 0.0;
        v123 = 0.0;
        v126 = 0.0;
      }

      goto LABEL_71;
    }
  }

  else if (v98)
  {
    v116 = 0.0;
    if (*&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight] != 0.0)
    {
      goto LABEL_64;
    }

    if (qword_10096D780 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009CF690, qword_1009CF6A8);
    v117 = v180;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v116 = v118;
    (*(v179 + 8))(v117, v181);
    v98 = *&v1[v97];
    v72 = &OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel;
    if (v98)
    {
LABEL_64:
      v119 = v98;
      [v1 bounds];
      v120 = CGRectGetMinX(v199);
      [v1 bounds];
      v121 = CGRectGetWidth(v200);
      v201.origin.x = v176;
      v201.origin.y = v177;
      v201.size.width = v175;
      v201.size.height = v69;
      MinY = CGRectGetMinY(v201);
      v123 = v121;
      v124 = MinY;
      v125 = v120;
      v126 = v124 - v116;
      v127 = 0.0;
LABEL_71:
      [v119 setFrame:{v125, v127, v123, v126}];
    }
  }

  v130 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupContentBackgroundView];
  v131 = [v1 contentView];
  [v131 bounds];
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;

  v202.origin.x = v133;
  v202.origin.y = v135;
  v202.size.width = v137;
  v202.size.height = v139;
  v140 = CGRectGetMinX(v202);
  v141 = v72[95];
  v142 = *&v1[v141];
  v143 = 0.0;
  MaxY = 0.0;
  if (v142)
  {
    [v142 frame];
    MaxY = CGRectGetMaxY(v203);
  }

  v145 = [v1 contentView];
  [v145 bounds];
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v153 = v152;

  v204.origin.x = v147;
  v204.origin.y = v149;
  v204.size.width = v151;
  v204.size.height = v153;
  v154 = CGRectGetWidth(v204);
  v155 = [v1 contentView];
  [v155 bounds];
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v163 = v162;

  v205.origin.x = v157;
  v205.origin.y = v159;
  v205.size.width = v161;
  v205.size.height = v163;
  Height = CGRectGetHeight(v205);
  v165 = *&v1[v141];
  if (v165)
  {
    [v165 frame];
    v143 = CGRectGetMaxY(v206);
  }

  v166 = v183;
  [v130 setFrame:{v140, MaxY, v154, v183 + Height - v143}];
  v167 = *&v1[v94];
  if (v167)
  {
    v168 = v167;
    [v1 bounds];
    v169 = v166 + CGRectGetHeight(v207);
    v170 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
    v171 = type metadata accessor for OfferButton();
    v184.receiver = v170;
    v184.super_class = v171;
    objc_msgSendSuper2(&v184, "frame");
    v172 = CGRectGetMinY(v208) / v169;
    sub_10002849C(&unk_1009856C0, qword_1007C9C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B1E00;
    *(inited + 32) = v172;
    *(inited + 40) = 1.0 - v166 / v169;
    *(inited + 48) = 0x3FF0000000000000;
    sub_1001C0B48(inited);
  }

  return sub_10002B894(&v185, &qword_1009856B8, &unk_1007CCF20);
}

double sub_10042D128(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v153 = a5;
  v148 = a1;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v149 = *(v8 - 8);
  v150 = v8;
  __chkstk_darwin(v8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v11);
  v152 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v134 - v18;
  v20 = [v5 contentView];
  [v20 layoutMargins];

  v21 = [v6 contentView];
  [v21 layoutMargins];
  v23 = v22;

  v24 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v25 = [v6 contentView];
  [v25 layoutMargins];
  v27 = v26;

  v28 = &v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  v29 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  v30 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize + 8];
  v147 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight;
  v31 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight];
  v146 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight;
  v32 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  if (qword_10096D6D8 != -1)
  {
    swift_once();
  }

  v145 = sub_1000056A8(v11, qword_1009CF4E8);
  sub_100435C80(v145, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  *(v19 + 4) = v29;
  *(v19 + 5) = v30;
  *(v19 + 1) = v23;
  *(v19 + 2) = v24;
  *(v19 + 3) = v27;
  *v19 = 0;
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v31;
  v33 = v11[15];
  sub_100007000(&v19[v33]);
  sub_100005A38(&v176, &v19[v33]);
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v32;
  v34 = v11[16];
  sub_100007000(&v19[v34]);
  sub_100005A38(&v176, &v19[v34]);
  *&v176 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel];
  v151 = v176;
  v35 = [v6 traitCollection];
  v36 = UITraitCollection.isSizeClassRegular.getter();

  v37 = v19;
  if (v36)
  {
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v149 + 8))(v10, v150);
  }

  CGSize.subtracting(insets:)();
  CGSize.subtracting(insets:)();
  v38 = v151;
  [v151 measurementsWithFitting:v6 in:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = type metadata accessor for DynamicTypeLabel();
  v181.var0 = v40;
  v181.var1 = v42;
  v181.var2 = v44;
  v181.var3 = v46;
  v48 = LayoutTextView.estimatedNumberOfLines(from:)(v181);

  v150 = v37;
  if (v48 >= 2)
  {
    v49 = *v28;
    v50 = *(v28 + 1);
    v51 = *&v6[v147];
    v52 = *&v6[v146];
    sub_100435C80(v145, v15, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    *(v15 + 4) = v49;
    *(v15 + 5) = v50;
    *(v15 + 1) = v23;
    *(v15 + 2) = v24;
    *(v15 + 3) = v27;
    *v15 = 0;
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v51;
    v53 = v11[15];
    sub_100007000(&v15[v53]);
    sub_100005A38(&v176, &v15[v53]);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v52;
    v54 = v11[16];
    sub_100007000(&v15[v54]);
    sub_100005A38(&v176, &v15[v54]);
    if (qword_10096D7F8 != -1)
    {
      swift_once();
    }

    v55 = sub_10002849C(&qword_100979010, qword_1007BE140);
    v56 = sub_1000056A8(v55, qword_1009CF838);
    v57 = *(*(v55 - 8) + 24);
    v57(&v15[v11[7]], v56, v55);
    if (qword_10096D7E8 != -1)
    {
      swift_once();
    }

    v58 = sub_1000056A8(v55, qword_1009CF808);
    v57(&v15[v11[6]], v58, v55);
    if (qword_10096D810 != -1)
    {
      swift_once();
    }

    v59 = sub_1000056A8(v55, qword_1009CF880);
    v57(&v15[v11[8]], v59, v55);
    if (qword_10096D7B8 != -1)
    {
      swift_once();
    }

    v60 = sub_10002849C(&unk_100980420, &qword_1007E0730);
    v61 = sub_1000056A8(v60, qword_1009CF778);
    (*(*(v60 - 8) + 24))(&v15[v11[13]], v61, v60);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = 0x401C000000000000;
    v37 = v150;
    sub_100435D50(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v62 = v11[9];
    sub_100007000(&v15[v62]);
    sub_100005A38(&v176, &v15[v62]);
    sub_100435CE8(v15, v37, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    if (qword_10096D710 != -1)
    {
      swift_once();
    }

    v63 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
    sub_1000056A8(v63, qword_1009CF560);
    v175 = v6;
    v64 = v6;
    Conditional.evaluate(with:)();

    v65 = v176;
    v38 = v151;
    [v151 setFont:v176];
  }

  sub_100435C80(v37, v152, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v66 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView];
  if (v66)
  {
    v146 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v145 = &protocol witness table for UIView;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  v67 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
  v68 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v173 = v68;
  v174 = &protocol witness table for UIView;
  if (v67)
  {
    v69 = v66;
    v70 = v67;
  }

  else
  {
    v71 = objc_allocWithZone(UIView);
    v72 = v66;
    v70 = [v71 init];
  }

  *&v172 = v70;
  v151 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  v147 = v66;
  if (v151)
  {
    v144 = sub_100005744(0, &qword_10097E628, UIVisualEffectView_ptr);
    v143 = &protocol witness table for UIView;
  }

  else
  {
    v143 = 0;
    v144 = 0;
  }

  v73 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView];
  v170 = type metadata accessor for WordmarkView();
  v171 = &protocol witness table for UIView;
  *&v169 = v73;
  v74 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
  v167 = type metadata accessor for ArtworkView();
  v168 = &protocol witness table for UIView;
  *&v166 = v74;
  v164 = v47;
  v165 = &protocol witness table for UILabel;
  v162 = &protocol witness table for UILabel;
  *&v163 = v38;
  v75 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel];
  v149 = v47;
  v161 = v47;
  *&v160 = v75;
  v76 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
  v158 = type metadata accessor for OfferButton();
  v159 = &protocol witness table for UIView;
  *&v157 = v76;
  v77 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v78 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  v142 = v77;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = v67;
    v82 = v151;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    [v80 transform];
    v176 = 0x3FF0000000000000uLL;
    v177 = 0;
    v178 = 0x3FF0000000000000;
    v179 = 0;
    v180 = 0;
    if (static CGAffineTransform.== infix(_:_:)())
    {
      *(&v155 + 1) = v68;
      v156 = &protocol witness table for UIView;
      *&v154 = v80;
      v87 = v149;
      goto LABEL_32;
    }

    UIView.withUntransformedFrame.getter();
  }

  else
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v88 = v77;
    v89 = v67;
    v90 = v151;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    v94 = v76;
  }

  v87 = v149;
LABEL_32:
  v95 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow];
  if (v95)
  {
    v149 = type metadata accessor for ChevronView();
    v141 = &protocol witness table for UIView;
  }

  else
  {
    v141 = 0;
    v149 = 0;
  }

  v96 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView];
  v97 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView];
  v98 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView];
  if (v98)
  {
    v139 = type metadata accessor for ShadowView();
    v140 = &protocol witness table for UIView;
  }

  else
  {
    v139 = 0;
    v140 = 0;
  }

  if (v97)
  {
    v99 = v68;
  }

  else
  {
    v99 = 0;
  }

  if (v97)
  {
    v100 = &protocol witness table for UIView;
  }

  else
  {
    v100 = 0;
  }

  v137 = v100;
  v138 = v99;
  if (v96)
  {
    v101 = v68;
  }

  else
  {
    v101 = 0;
  }

  if (v96)
  {
    v102 = &protocol witness table for UIView;
  }

  else
  {
    v102 = 0;
  }

  v135 = v102;
  v136 = v101;
  v103 = v142;
  v104 = &protocol witness table for UILabel;
  if (!v142)
  {
    v104 = 0;
  }

  v134 = v104;
  if (!v142)
  {
    v87 = 0;
  }

  v105 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v106 = v148;
  v148[3] = v105;
  v106[4] = sub_100435DB0(&qword_1009856D0, type metadata accessor for ProductLockupInlineUberLayout, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  v107 = sub_1000056E0(v106);
  sub_100435CE8(v152, v107, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v108 = (v107 + v105[5]);
  v109 = v146;
  *v108 = v147;
  v108[1] = 0;
  v108[2] = 0;
  v108[3] = v109;
  v108[4] = v145;
  sub_100005A38(&v172, v107 + v105[6]);
  v110 = (v107 + v105[7]);
  *v110 = v151;
  v110[1] = 0;
  v111 = v143;
  v112 = v144;
  v110[2] = 0;
  v110[3] = v112;
  v110[4] = v111;
  sub_100005A38(&v169, v107 + v105[10]);
  sub_100005A38(&v166, v107 + v105[8]);
  sub_100005A38(&v163, v107 + v105[9]);
  sub_100005A38(&v160, v107 + v105[11]);
  v113 = v107 + v105[12];
  *(v113 + 4) = 0;
  *v113 = 0u;
  *(v113 + 1) = 0u;
  sub_100005A38(&v157, v107 + v105[13]);
  v114 = (v107 + v105[14]);
  *v114 = v103;
  v114[1] = 0;
  v114[2] = 0;
  v114[3] = v87;
  v114[4] = v134;
  v115 = v107 + v105[15];
  v116 = v155;
  *v115 = v154;
  *(v115 + 1) = v116;
  *(v115 + 4) = v156;
  v117 = (v107 + v105[16]);
  *v117 = v95;
  v117[1] = 0;
  v118 = v149;
  v117[2] = 0;
  v117[3] = v118;
  v117[4] = v141;
  v119 = (v107 + v105[17]);
  *v119 = v96;
  v119[1] = 0;
  v120 = v135;
  v121 = v136;
  v119[2] = 0;
  v119[3] = v121;
  v119[4] = v120;
  v122 = (v107 + v105[18]);
  *v122 = v97;
  v122[1] = 0;
  v123 = v137;
  v124 = v138;
  v122[2] = 0;
  v122[3] = v124;
  v122[4] = v123;
  v125 = (v107 + v105[19]);
  *v125 = v98;
  v125[1] = 0;
  v127 = v139;
  v126 = v140;
  v125[2] = 0;
  v125[3] = v127;
  v125[4] = v126;
  v128 = v98;
  v129 = v95;
  v130 = v96;
  v131 = v97;
  v132 = sub_100430850(v6, v107, a4, v153);
  sub_100435D50(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  return v132;
}

double sub_10042DDF0(uint64_t *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  v86 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize + 8];
  v84 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight];
  v85 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v83 = v12;
  v15 = [v5 contentView];
  [v15 layoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (qword_10096D6E0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v8, qword_1009CF500);
  __chkstk_darwin(v24);
  *&v25 = v86.n128_u64[0];
  *&v26 = v85.n128_u64[0];
  *(&v25 + 1) = v84.n128_u64[0];
  *(&v26 + 1) = v83.n128_u64[0];
  *(&v71 - 4) = v25;
  *(&v71 - 3) = v26;
  *(&v71 - 4) = v17;
  *(&v71 - 3) = v19;
  *(&v71 - 2) = v21;
  *(&v71 - 1) = v23;
  sub_100435DB0(&qword_1009856D8, type metadata accessor for ProductLockupAccessibilityLayout.Metrics, &protocol conformance descriptor for ProductLockupAccessibilityLayout.Metrics);
  Copyable.copyWithOverrides(in:)();
  v27 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v27)
  {
    v28 = v27;
    if (([v28 isHidden] & 1) == 0)
    {
      [v28 transform];
      v107 = 0x3FF0000000000000;
      v108 = 0;
      v109 = 0;
      v110 = 0x3FF0000000000000;
      v111 = 0;
      v112 = 0;
      if (static CGAffineTransform.== infix(_:_:)())
      {
        v105 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v106 = &protocol witness table for UIView;

        v104[0] = v28;
      }

      else
      {
        UIView.withUntransformedFrame.getter();
      }

      goto LABEL_7;
    }
  }

  v29 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v105 = type metadata accessor for DynamicTypeLabel();
  v106 = &protocol witness table for UIView;
  v104[0] = v29;
  v30 = v29;
LABEL_7:
  v86.n128_u64[0] = v10;
  sub_100435C80(v14, v10, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  v31 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
  v102 = type metadata accessor for ArtworkView();
  v103 = &protocol witness table for UIView;
  v85.n128_u64[0] = v31;
  *&v101 = v31;
  v32 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel];
  v33 = type metadata accessor for DynamicTypeLabel();
  v99 = v33;
  v100 = &protocol witness table for UILabel;
  v84.n128_u64[0] = v32;
  v97 = &protocol witness table for UILabel;
  *&v98 = v32;
  v34 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
  v35 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel];
  v96 = v33;
  v82 = v35;
  v83.n128_u64[0] = v34;
  v94 = &protocol witness table for UILabel;
  *&v95 = v34;
  v93 = v33;
  *&v92 = v35;
  v36 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v37 = *&v5[v36];
  v38 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
  v90 = type metadata accessor for OfferButton();
  v91 = &protocol witness table for UIView;
  v81 = v38;
  *&v89 = v38;
  sub_10002C0AC(v104, v88);
  v39 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v40 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v80 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView];
  if (v80)
  {
    v78 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v79 = &protocol witness table for UIView;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v41 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView];
  v87 = v14;
  if (v41)
  {
    v76 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v77 = &protocol witness table for UIView;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  if (v40)
  {
    v42 = v33;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
  }

  v74 = v43;
  v75 = v42;
  if (v39)
  {
    v44 = &protocol witness table for UILabel;
  }

  else
  {
    v44 = 0;
  }

  v72 = v40;
  v73 = v44;
  if (v39)
  {
    v45 = v33;
  }

  else
  {
    v45 = 0;
  }

  v71 = v45;
  v46 = v37 == 0;
  v47 = v37;
  if (v37)
  {
    v48 = &protocol witness table for UILabel;
  }

  else
  {
    v48 = 0;
  }

  v49 = v39;
  if (v46)
  {
    v50 = 0;
  }

  else
  {
    v50 = v33;
  }

  v51 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  a1[3] = v51;
  a1[4] = sub_100435DB0(&qword_10097E8C0, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  v52 = sub_1000056E0(a1);
  sub_100435CE8(v86.n128_i64[0], v52 + *(v51 + 64), type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_100005A38(&v101, v52);
  sub_100005A38(&v98, (v52 + 5));
  sub_100005A38(&v95, (v52 + 10));
  sub_100005A38(&v92, (v52 + 15));
  v52[20] = v47;
  v52[21] = 0;
  v52[22] = 0;
  v52[23] = v50;
  v52[24] = v48;
  sub_100005A38(&v89, (v52 + 25));
  *(v52 + 15) = 0u;
  *(v52 + 16) = 0u;
  v52[34] = 0;
  sub_100005A38(v88, (v52 + 35));
  v52[40] = v49;
  v52[41] = 0;
  v53 = v71;
  v54 = v72;
  v52[42] = 0;
  v52[43] = v53;
  v52[44] = v73;
  v52[45] = v54;
  v52[46] = 0;
  v52[47] = 0;
  v55 = v74;
  v52[48] = v75;
  v52[49] = v55;
  v56 = v80;
  v52[50] = v80;
  v52[51] = 0;
  v58 = v78;
  v57 = v79;
  v52[52] = 0;
  v52[53] = v58;
  v52[54] = v57;
  v52[55] = v41;
  v52[56] = 0;
  v52[57] = 0;
  v59 = v77;
  v52[58] = v76;
  v52[59] = v59;
  v60 = v41;
  v61 = v85.n128_u64[0];
  v62 = v84.n128_u64[0];
  v63 = v83.n128_u64[0];
  v64 = v82;
  v65 = v47;
  v66 = v81;
  v67 = v49;
  v68 = v54;
  v69 = v56;
  sub_10043510C(v5, v52, a4);
  sub_100435D50(v87, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_100007000(v104);
  return a4;
}

double sub_10042E45C(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = a1;
  v9 = sub_10002849C(&unk_100987150, &qword_1007CCF18);
  __chkstk_darwin(v9 - 8);
  v11 = &v108 - v10;
  v129 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v129);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  __chkstk_darwin(v17);
  v19 = &v108 - v18;
  *&v126 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v20 = *(v126 - 8);
  *&v21 = __chkstk_darwin(v126).n128_u64[0];
  v23 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  v25 = &selRef_setRequiresColorStatistics_;
  v127 = v13;
  v128 = v23;
  if (!v24)
  {
LABEL_4:
    v27 = [v6 v25[35]];
    sub_10030AEE4(v27, v19);

    sub_100435C80(&v19[*(v129 + 19)], v23, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
    sub_100435D50(v19, type metadata accessor for ProductLockupLayout.Metrics);
    v28 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
    v147 = type metadata accessor for DynamicTypeLabel();
    v148 = &protocol witness table for UIView;
    v146[0] = v28;
    v29 = [v28 text];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v32;
      v124 = v31;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v41 = v126;
    goto LABEL_19;
  }

  v26 = v24;
  if ([v26 isHidden])
  {

    v25 = &selRef_setRequiresColorStatistics_;
    goto LABEL_4;
  }

  v124 = v20;
  v23[3] = &type metadata for Double;
  v23[4] = &protocol witness table for Double;
  *v23 = 0;
  v33 = v23;
  if (qword_10096D738 != -1)
  {
    swift_once();
  }

  v149 = qword_1009CF5D8;
  v34 = v126;
  v35 = qword_1009CF5D8;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  Conditional<>.init(value:)();
  v36 = (v23 + *(v34 + 24));
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x7FF0000000000000;
  if (qword_10096D838 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for StaticDimension();
  v38 = sub_1000056A8(v37, qword_1009CF8F8);
  v39 = (v33 + *(v34 + 28));
  v39[3] = v37;
  v39[4] = &protocol witness table for StaticDimension;
  v40 = sub_1000056E0(v39);
  (*(*(v37 - 8) + 16))(v40, v38, v37);
  [v26 transform];
  v149 = 0x3FF0000000000000;
  v150 = 0;
  v151 = 0;
  v152 = 0x3FF0000000000000;
  v153 = 0;
  v154 = 0;
  if (static CGAffineTransform.== infix(_:_:)())
  {
    v147 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v148 = &protocol witness table for UIView;
    v146[0] = v26;
  }

  else
  {
    UIView.withUntransformedFrame.getter();
  }

  v20 = v124;
  v42 = [v26 text];
  v23 = v128;
  v41 = v126;
  if (v42)
  {
    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v45;
    v124 = v44;
  }

  else
  {

    v123 = 0;
    v124 = 0;
  }

  v13 = v127;
LABEL_19:
  v126 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  *&v46 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight];
  *(&v46 + 1) = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v122 = v46;
  v47 = [v6 contentView];
  [v47 layoutMargins];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_100435C80(v23, v11, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  (*(v20 + 56))(v11, 0, 1, v41);
  v56 = [v6 traitCollection];
  v57 = sub_10030AEE4(v56, v19);
  __chkstk_darwin(v57);
  v58 = v122;
  *(&v108 - 5) = v126;
  *(&v108 - 4) = v58;
  *(&v108 - 6) = v49;
  *(&v108 - 5) = v51;
  *(&v108 - 4) = v53;
  *(&v108 - 3) = v55;
  *(&v108 - 2) = v11;
  sub_100435DB0(&qword_1009856E8, type metadata accessor for ProductLockupLayout.Metrics, &protocol conformance descriptor for ProductLockupLayout.Metrics);
  Copyable.copyWithOverrides(in:)();

  sub_100435D50(v19, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10002B894(v11, &unk_100987150, &qword_1007CCF18);
  v129 = v16;
  sub_100435C80(v16, v13, type metadata accessor for ProductLockupLayout.Metrics);
  v59 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
  v144 = type metadata accessor for ArtworkView();
  v145 = &protocol witness table for UIView;
  *&v126 = v59;
  *&v143 = v59;
  v60 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel];
  v61 = type metadata accessor for DynamicTypeLabel();
  v141 = v61;
  v142 = &protocol witness table for UILabel;
  v139 = &protocol witness table for UILabel;
  *&v140 = v60;
  v62 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
  v63 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel];
  v138 = v61;
  v121 = v62;
  *&v122 = v60;
  v136 = &protocol witness table for UILabel;
  *&v137 = v62;
  v135 = v61;
  v120 = v63;
  *&v134 = v63;
  v64 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v65 = *&v6[v64];
  v66 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
  v132 = type metadata accessor for OfferButton();
  v133 = &protocol witness table for UIView;
  v119 = v66;
  *&v131 = v66;
  sub_10002C0AC(v146, v130);
  v67 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v68 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v117 = v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer];
  v118 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView];
  if (v118)
  {
    v115 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v116 = &protocol witness table for UIView;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v69 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView];
  if (v69)
  {
    v113 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v114 = &protocol witness table for UIView;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  if (v68)
  {
    v70 = v61;
  }

  else
  {
    v70 = 0;
  }

  if (v68)
  {
    v71 = &protocol witness table for UILabel;
  }

  else
  {
    v71 = 0;
  }

  v111 = v71;
  v112 = v70;
  if (v67)
  {
    v72 = &protocol witness table for UILabel;
  }

  else
  {
    v72 = 0;
  }

  if (v67)
  {
    v73 = v61;
  }

  else
  {
    v73 = 0;
  }

  v109 = v73;
  v110 = v72;
  if (v65)
  {
    v74 = &protocol witness table for UILabel;
  }

  else
  {
    v74 = 0;
  }

  if (v65)
  {
    v75 = v61;
  }

  else
  {
    v75 = 0;
  }

  v76 = type metadata accessor for ProductLockupLayout(0);
  v77 = v125;
  v125[3] = v76;
  v77[4] = sub_100435DB0(&qword_1009856F0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  v78 = sub_1000056E0(v77);
  sub_100435CE8(v127, v78, type metadata accessor for ProductLockupLayout.Metrics);
  sub_100005A38(&v143, v78 + v76[5]);
  sub_100005A38(&v140, v78 + v76[6]);
  sub_100005A38(&v137, v78 + v76[7]);
  sub_100005A38(&v134, v78 + v76[8]);
  v79 = (v78 + v76[9]);
  *v79 = v65;
  v79[1] = 0;
  v79[2] = 0;
  v79[3] = v75;
  v79[4] = v74;
  v80 = v78 + v76[10];
  *(v80 + 4) = 0;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  sub_100005A38(&v131, v78 + v76[11]);
  sub_100005A38(v130, v78 + v76[12]);
  v81 = (v78 + v76[13]);
  *v81 = v67;
  v81[1] = 0;
  v83 = v109;
  v82 = v110;
  v81[2] = 0;
  v81[3] = v83;
  v81[4] = v82;
  v84 = (v78 + v76[14]);
  *v84 = v68;
  v84[1] = 0;
  v85 = v111;
  v86 = v112;
  v84[2] = 0;
  v84[3] = v86;
  v84[4] = v85;
  *(v78 + v76[15]) = v117;
  v87 = (v78 + v76[16]);
  v88 = v123;
  *v87 = v124;
  v87[1] = v88;
  v89 = (v78 + v76[17]);
  v90 = v118;
  *v89 = v118;
  v89[1] = 0;
  v92 = v115;
  v91 = v116;
  v89[2] = 0;
  v89[3] = v92;
  v89[4] = v91;
  v93 = (v78 + v76[18]);
  *v93 = v69;
  v93[1] = 0;
  v95 = v113;
  v94 = v114;
  v93[2] = 0;
  v93[3] = v95;
  v93[4] = v94;
  v96 = v69;
  v97 = v126;
  v98 = v122;
  v99 = v121;
  v100 = v120;
  v101 = v65;
  v102 = v119;
  v103 = v67;
  v104 = v68;
  v105 = v90;
  v106 = sub_100431918(v6, v78, a4, a5);
  sub_100435D50(v129, type metadata accessor for ProductLockupLayout.Metrics);
  sub_100435D50(v128, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_100007000(v146);
  return v106;
}

uint64_t sub_10042EF30(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = sub_10002849C(&unk_100987150, &qword_1007CCF18);
  __chkstk_darwin(v20 - 8);
  v22 = &v29 - v21;
  v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 112) = a3;
  *(a1 + 120) = a4;
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a5;
  sub_100007000((a1 + 32));
  sub_100005A38(&v30, a1 + 32);
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a6;
  sub_100007000((a1 + 72));
  sub_100005A38(&v30, a1 + 72);
  *a1 = a7;
  *(a1 + 8) = a8;
  *(a1 + 16) = a9;
  *(a1 + 24) = a10;
  sub_100031660(a2, v22, &unk_100987150, &qword_1007CCF18);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10002B894(v22, &unk_100987150, &qword_1007CCF18);
  }

  sub_100435CE8(v22, v26, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  return sub_100430708(v26, a1 + *(v28 + 76));
}

uint64_t sub_10042F168(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a4;
  sub_100007000((a1 + 32));
  sub_100005A38(&v16, a1 + 32);
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a5;
  sub_100007000((a1 + 72));
  result = sub_100005A38(&v16, a1 + 72);
  *a1 = a6;
  *(a1 + 8) = a7;
  *(a1 + 16) = a8;
  *(a1 + 24) = a9;
  return result;
}

void sub_10042F218()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
  if (v2)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v3 = v2;
    v4 = static UIColor.primaryText.getter();
    [v3 setTextColor:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v6 = static UIColor.primaryText.getter();
  [v5 setTextColor:v6];

  v7 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
  v8 = static UIColor.secondaryText.getter();
  [v7 setTextColor:v8];

  v9 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView);
  v10 = static UIColor.secondaryText.getter();
  [v9 setTintColor:v10];

  v11 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = static UIColor.tertiaryText.getter();
    [v13 setTextColor:v14];
  }
}

void sub_10042F38C(void *a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  v4 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
  if (v3)
  {
    if (v5)
    {
      v6 = v3;
      v7 = *(v3 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v5 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v7;
      v10 = a1;
      if (v7 == v9)
      {
        v11 = *&v1[v4];
        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      [v8 setNeedsLayout];
      v11 = *&v1[v4];
      if (v11)
      {
LABEL_16:
        v18 = *(v6 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding);
        *(v11 + OBJC_IVAR____TtC8AppStore14UberHeaderView_isRubberbanding) = v18;
        v19 = *(v11 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
        *(v19 + OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding) = v18;
        if (*(*(v19 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
        {
          type metadata accessor for VideoView(0);
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            *(v20 + qword_100988CD0) = v18;
          }
        }

        return;
      }
    }

    else
    {
      v17 = a1;
    }

LABEL_14:

    return;
  }

  if (v5)
  {
    v12 = *(*(v5 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v13 = *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
    *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
    if (v13 != 0.0)
    {
      [v12 setNeedsLayout];
    }

    v14 = *&v1[v4];
    if (v14)
    {
      *(v14 + OBJC_IVAR____TtC8AppStore14UberHeaderView_isRubberbanding) = 0;
      v15 = *(v14 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
      *(v15 + OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding) = 0;
      if (*(*(v15 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
      {
        type metadata accessor for VideoView(0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          *(v16 + qword_100988CD0) = 0;
        }
      }
    }
  }
}

void sub_10042F71C(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel;
    v12 = [*(Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel) text];
    if (v12 && (v12, ([*&v10[v11] isHidden] & 1) != 0))
    {
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      v22 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v21 = *(v3 + 8);
      v21(v5, v2);
      v13 = *&v10[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
      v14 = *&v10[v11];
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      aBlock[4] = sub_10043076C;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C2A20;
      v20[1] = _Block_copy(aBlock);
      v23 = _swiftEmptyArrayStorage;
      sub_100435DB0(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v16 = v13;
      v17 = v14;
      v18 = v16;
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      DispatchWorkItem.init(flags:block:)();

      v19 = v22;
      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      v21(v8, v2);
    }

    else
    {
    }
  }
}

void sub_10042FAA4(void *a1, void *a2)
{
  [a1 setAlpha:0.0];
  [a1 setHidden:0];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v16 = sub_100430774;
  v17 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100007A08;
  v15 = &unk_1008C2A70;
  v6 = _Block_copy(&v12);
  v7 = a2;
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v16 = sub_100369170;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100504C5C;
  v15 = &unk_1008C2AC0;
  v10 = _Block_copy(&v12);
  v11 = v7;

  [v4 animateWithDuration:v6 animations:v10 completion:1.0];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_10042FC60(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      [v6 setAlpha:a3];
      --v3;
    }

    while (v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_10042FCF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v9;
  }

  if ((a3 & 1) != 0 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = *&v10[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount];

    v12 = v11 == 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  v14 = (a4 + 32);
  do
  {
    v15 = *v14++;
    [v15 setHidden:v12];
    --v13;
  }

  while (v13);
}

void sub_10042FF94(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ProductPageTheme();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_100430118()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  v2 = v1;
  return v1;
}

uint64_t (*sub_100430154(uint64_t **a1))()
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
  v2[4] = sub_100429E10(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1004301C4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100435DB0(&qword_1009856B0, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007CCEB8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100430238(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100435DB0(&qword_1009856B0, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007CCEB8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004302C4(uint64_t *a1))()
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
  sub_100435DB0(&qword_1009856B0, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007CCEB8);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100430380(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  if (v2 && a1)
  {
    v3 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView];
    v5 = v2;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v9 = v8;
      v10 = static NSObject.== infix(_:_:)();

      v5 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_100430530(void *a1, double *a2, void *a3, double a4, double a5)
{
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a3 traitCollection];
  v13 = UITraitCollection.isSizeClassRegular.getter();

  if (v13)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v8 + 8))(v11, v7);
  }

  CGSize.subtracting(insets:)();
  CGSize.subtracting(insets:)();
  sub_10002A400(a1, a1[3]);
  sub_10002A400(a1, a1[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  return LayoutTextView.estimatedNumberOfLines(from:)(v16) > 1;
}

uint64_t sub_100430708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100430774()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_1004307C0(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (UITraitCollection.isSizeClassRegular.getter() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

double sub_100430850(void *a1, double *a2, double a3, double a4)
{
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v50 = v46 - v8;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = UITraitCollection.isSizeClassCompact.getter();

  v49 = v10;
  if ((v15 & 1) == 0)
  {
    v16 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10002A400((a2 + v16[15]), *(a2 + v16[15] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v17 = *(v10 + 8);
    v17(v13, v9);
    sub_10002A400((a2 + v16[16]), *(a2 + v16[16] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v17(v13, v9);
    sub_10002A400((a2 + v16[17]), *(a2 + v16[17] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v18 = v50;
    AnyDimension.value(in:rounded:)();
    v17(v13, v9);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v17(v13, v9);
    sub_10002849C(&unk_100980420, &qword_1007E0730);
    Conditional<>.value.getter();
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v17(v13, v9);
    v10 = v49;
    (*(v51 + 8))(v18, v52);
  }

  CGSize.subtracting(insets:)();
  v20 = v19;
  v21 = [a1 traitCollection];
  v22 = UITraitCollection.isSizeClassRegular.getter();

  if (v22)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v10 + 8))(v13, v9);
  }

  v48 = v20;
  v23 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10002A400((a2 + *(v23 + 36)), *(a2 + *(v23 + 36) + 24));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v46[2] = v24;
  v46[4] = v25;
  v46[1] = v26;
  v46[3] = v27;
  v47 = v23;
  v28 = (a2 + *(v23 + 44));
  sub_10002A400(v28, v28[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(v28, v28[3]);
  if (dispatch thunk of LayoutView.hasContent.getter())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v30 = v29;
    (*(v10 + 8))(v13, v9);
    v55[0] = v30;
    AnyDimension.topMargin(from:in:)();
  }

  sub_10072D10C(&v53);
  if (v54)
  {
    sub_100005A38(&v53, v55);
    sub_10002A400(v55, v56);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v31 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10002A400((a2 + *(v31 + 44)), *(a2 + *(v31 + 44) + 24));
    AnyDimension.topMargin(from:in:)();
    sub_10002A400((a2 + *(v31 + 48)), *(a2 + *(v31 + 48) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v10 + 8))(v13, v9);
    sub_100007000(v55);
  }

  else
  {
    sub_10002B894(&v53, &qword_100975610, &qword_1007B5690);
  }

  v32 = v51;
  sub_10072D10C(v55);
  v33 = v56;
  sub_10002B894(v55, &qword_100975610, &qword_1007B5690);
  if (!v33)
  {
    v34 = [a1 traitCollection];
    v35 = UITraitCollection.isSizeClassRegular.getter();

    if (v35 & 1) != 0 || (v36 = [a1 traitCollection], v37 = UITraitCollection.prefersAccessibilityLayouts.getter(), v36, (v37))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      static Dimensions.defaultRoundingRule.getter();
      Conditional<>.value(in:rounded:)();
      (*(v10 + 8))(v13, v9);
    }
  }

  v38 = [a1 traitCollection];
  v39 = UITraitCollection.isSizeClassCompact.getter();

  if (v39)
  {
    sub_10072D10C(v55);
    sub_10002B894(v55, &qword_100975610, &qword_1007B5690);
  }

  v40 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10002849C(&unk_100980420, &qword_1007E0730);
  v41 = v50;
  Conditional<>.value.getter();
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v42 = *(v49 + 8);
  v42(v13, v9);
  (*(v32 + 8))(v41, v52);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v42(v13, v9);
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v44 = v43;
  v42(v13, v9);
  v55[0] = v44;
  AnyDimension.topMargin(from:in:)();
  sub_10002A400((a2 + v40[9]), *(a2 + v40[9] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v42(v13, v9);
  sub_10002A400((a2 + *(v47 + 52)), *(a2 + *(v47 + 52) + 24));
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400((a2 + v40[15]), *(a2 + v40[15] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v42(v13, v9);
  sub_10002A400((a2 + v40[16]), *(a2 + v40[16] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v42(v13, v9);
  return a3;
}

double sub_100431390(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 35, a2[38]);
  v10 = dispatch thunk of LayoutView.isHidden.getter();
  v11 = 0.0;
  v12 = 0.0;
  if ((v10 & 1) == 0)
  {
    sub_10002A400(a2 + 35, a2[38]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v14 = v13;
    v11 = v15;
    v16 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400(&v16[*(v17 + 56)], *&v16[*(v17 + 56) + 24]);
    AnyDimension.topMargin(from:in:)();
    v12 = v14 - v11 + v18;
  }

  v48 = v12;
  sub_100031660((a2 + 40), &v50, &unk_10097E890, qword_1007B4270);
  if (v51)
  {
    sub_100005A38(&v50, v52);
    sub_10002A400(v52, v53);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v20 = v19;
    v11 = v21;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v49 = a1;
    sub_10002849C(&qword_100979010, qword_1007BE140);
    Conditional.evaluate(with:)();
    v49 = v50;
    v22 = v20;
    AnyDimension.topMargin(from:in:)();
    v24 = v23;
    sub_100007000(v52);
    v47 = v11;
  }

  else
  {
    sub_10002B894(&v50, &unk_10097E890, qword_1007B4270);
    v22 = JUMeasurementsZero[1];
    v47 = JUMeasurementsZero[3];
    v24 = 0.0;
  }

  sub_100031660((a2 + 45), &v50, &unk_10097E890, qword_1007B4270);
  if (v51)
  {
    sub_100005A38(&v50, v52);
    sub_10002A400(v52, v53);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v26 = v25;
    v46 = v24;
    v11 = v27;
    v28 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v29 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400(&v28[*(v29 + 64)], *&v28[*(v29 + 64) + 24]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v31 = v30;
    (*(v7 + 8))(v9, v6);
    *&v50 = v31;
    v24 = v46;
    AnyDimension.topMargin(from:in:)();
    v33 = v32;
    sub_100007000(v52);
    v34 = v11;
  }

  else
  {
    sub_10002B894(&v50, &unk_10097E890, qword_1007B4270);
    v26 = JUMeasurementsZero[1];
    v34 = JUMeasurementsZero[3];
    v33 = 0.0;
  }

  sub_10002A400(a2 + 25, a2[28]);
  Measurable.measuredSize(fitting:in:)();
  v36 = v26 - v34 + v33 + v22 - v47 + v24 + v48 + v35;
  v37 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10002A400(v37 + 9, *(v37 + 12));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v39 = v38;
  v40 = *(v7 + 8);
  v40(v9, v6);
  v41 = v36 + v39;
  v42 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10002A400(&v37[*(v42 + 68)], *&v37[*(v42 + 68) + 24]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v44 = v43;
  v40(v9, v6);
  return v11 + v41 + v44;
}

double sub_100431918(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.isSizeClassRegular.getter();

  sub_10002A400((a2 + 32), *(a2 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_10002A400((a2 + 72), *(a2 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15(v12, v8);
  v16 = a3 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v19[0] = a1;
  sub_10002849C(&qword_100979010, qword_1007BE140);
  Conditional.evaluate(with:)();
  sub_100431BFC(a1, a2, v16 - *&v19[1], a4);
  sub_10002A400((a2 + *(v17 + 96)), *(a2 + *(v17 + 96) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15(v12, v8);
  if (v14 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_10043217C(a1, a2, a3, a4);
  }

  return a3;
}

double sub_100431BFC(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.isSizeClassRegular.getter();

  v44 = type metadata accessor for ProductLockupLayout(0);
  v15 = v44[10];
  sub_100031660(a2 + v15, v45, &qword_100975610, &qword_1007B5690);
  if (v46)
  {
    sub_10002A400(v45, v46);
    Measurable.measuredSize(fitting:in:)();
    v17 = v16;
    sub_100007000(v45);
  }

  else
  {
    sub_10002B894(v45, &qword_100975610, &qword_1007B5690);
    v17 = 0.0;
  }

  v18 = sub_1004330B4(a1, a2, a3, a4);
  sub_100031660(a2 + v15, v45, &qword_100975610, &qword_1007B5690);
  v19 = v46;
  sub_10002B894(v45, &qword_100975610, &qword_1007B5690);
  if (v19)
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      if (*(a2 + v44[15]))
      {
        v21 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_10002A400((a2 + *(v21 + 92)), *(a2 + *(v21 + 92) + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v23 = v22;
        (*(v9 + 8))(v12, v8);
        v18 = v18 + v17 + v23;
      }

LABEL_9:
      if (*(a2 + v20[15]))
      {
        return v18;
      }
    }
  }

  else
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v43 = *(a2 + 120);
  v24 = (a2 + v20[11]);
  sub_10002A400(v24, v24[3]);
  Measurable.measuredSize(fitting:in:)();
  v26 = v25;
  sub_100031660(a2 + v15, v45, &qword_100975610, &qword_1007B5690);
  v27 = v46;
  sub_10002B894(v45, &qword_100975610, &qword_1007B5690);
  if (v27)
  {
    v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10002A400((a2 + *(v28 + 80)), *(a2 + *(v28 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v9 + 8))(v12, v8);
  }

  v29 = a2;
  v30 = v8;
  v41 = v29;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v31 = v29 + *(v42 + 76);
  v32 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_10002A400((v31 + *(v32 + 28)), *(v31 + *(v32 + 28) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v33 = *(v9 + 8);
  v33(v12, v30);
  sub_10002A400((v31 + *(v32 + 24)), *(v31 + *(v32 + 24) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v33(v12, v30);
  v34 = v41;
  sub_10002A400((v41 + v44[12]), *(v41 + v44[12] + 24));
  Measurable.measuredSize(fitting:in:)();
  v36 = v35;
  sub_10002A400(v24, v24[3]);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    v26 = v36;
  }

  sub_10002A400((v34 + *(v42 + 72)), *(v34 + *(v42 + 72) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v38 = v37;
  v33(v12, v30);
  if (v18 < v43 - v38 - v26)
  {
    v18 = v43 - v38 - v26;
  }

  return sub_10043217C(a1, v34, a3, a4) + v18;
}

double sub_10043217C(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v41 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v42[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = UITraitCollection.isSizeClassRegular.getter();

  v14 = type metadata accessor for ProductLockupLayout(0);
  sub_10002A400((a2 + v14[11]), *(a2 + v14[11] + 24));
  Measurable.measuredSize(fitting:in:)();
  v16 = v15;
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((a2 + v17[18]), *(a2 + v17[18] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  v18 = v8;
  v19 = v41;
  AnyDimension.value(in:rounded:)();
  v21 = v20;
  v22 = *(v19 + 8);
  v22(v11, v18);
  if ((v13 & 1) != 0 || *(a2 + v14[15]) == 1)
  {
    v23 = a2 + v17[19];
    v24 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v23 + *(v24 + 28)), *(v23 + *(v24 + 28) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v26 = v25;
    v22(v11, v18);
    sub_1004325B8(a1, a2, a3, a4, a3 - (v16 + v26));
    v28 = v27;
    v29 = sub_100432E38(a1, a2, a3, a4);
    if (v28 > v29)
    {
      v29 = v28;
    }
  }

  else
  {
    v30 = v14[10];
    sub_100031660(a2 + v30, v42, &qword_100975610, &qword_1007B5690);
    if (v43)
    {
      sub_10002A400(v42, v43);
      Measurable.measuredSize(fitting:in:)();
      v32 = v31;
      sub_100007000(v42);
    }

    else
    {
      sub_10002B894(v42, &qword_100975610, &qword_1007B5690);
      v32 = 0.0;
    }

    sub_100031660(a2 + v30, v42, &qword_100975610, &qword_1007B5690);
    v33 = v43;
    sub_10002B894(v42, &qword_100975610, &qword_1007B5690);
    if (v33)
    {
      sub_10002A400((a2 + v17[20]), *(a2 + v17[20] + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v35 = v34;
      v22(v11, v18);
    }

    else
    {
      v35 = 0.0;
    }

    v36 = a2 + v17[19];
    v37 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v36 + *(v37 + 28)), *(v36 + *(v37 + 28) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v39 = v38;
    v22(v11, v18);
    sub_1004325B8(a1, a2, a3, a4, a3 - (v35 + v32 + v16 + v39));
  }

  return v21 + 0.0 + v29;
}

void sub_1004325B8(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v71 - v12;
  v13 = type metadata accessor for FloatingPointRoundingRule();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CharacterSet();
  v80 = *(v16 - 8);
  v81 = v16;
  __chkstk_darwin(v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProductLockupLayout(0);
  v20 = (a2 + v19[11]);
  sub_10002A400(v20, v20[3]);
  Measurable.measuredSize(fitting:in:)();
  v21 = (a2 + v19[16]);
  v79 = v21[1];
  if (v79)
  {
    v74 = v14;
    v75 = v13;
    v76 = *v21;
    v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v84[0] = a1;
    sub_10002849C(&unk_100980410, &unk_1007CCF30);
    v71 = v22;
    Conditional.evaluate(with:)();
    v23 = v87;
    v72 = v19;
    v24 = v19[15];
    v73 = a2;
    v25 = *(a2 + v24);
    sub_10002A400(v20, v20[3]);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
    }

    else
    {
      v26 = v25;
      v27 = objc_opt_self();
      v28 = v79;

      v29 = [v27 mainScreen];
      [v29 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v88.origin.x = v31;
      v88.origin.y = v33;
      v88.size.width = v35;
      v88.size.height = v37;
      Width = CGRectGetWidth(v88);
      JUScreenClassGetPortraitWidth();
      v39 = v23;
      if (Width > v40 || (CharacterSet.init(charactersIn:)(), v84[0] = v76, v84[1] = v28, sub_10007FED4(), StringProtocol.rangeOfCharacter(from:options:range:)(), v42 = v41, v80[1](v18, v81), (v42)) && (!v26 || (v43 = [a1 traitCollection], v44 = UITraitCollection.isSizeClassRegular.getter(), v43, (v44)))
      {
        v45 = sub_100530150(v76, v28);
        v46 = *(v45 + 16);
        v80 = (v82 + 8);
        LODWORD(v81) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v47 = v45 + 40;
        v82 = -v46;
        v48 = -1;
        while (v82 + v48 != -1)
        {
          if (++v48 >= *(v45 + 16))
          {
            __break(1u);
            return;
          }

          v49 = v47 + 16;
          v50 = a1;
          v51 = type metadata accessor for Feature();
          v85 = v51;
          v86 = sub_100435DB0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v52 = sub_1000056E0(v84);
          (*(*(v51 - 8) + 104))(v52, v81, v51);
          v53 = v39;

          v54 = v39;
          isFeatureEnabled(_:)();
          sub_100007000(v84);
          a1 = v50;
          LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
          sub_100435DB0(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
          v55 = v83;
          dispatch thunk of Measurable.measurements(fitting:in:)();
          v57 = v56;
          v58 = v55;
          v39 = v54;
          (*v80)(v10, v58);
          v47 = v49;
          if (v57 > a5)
          {

            goto LABEL_13;
          }
        }

        v64 = type metadata accessor for Feature();
        v85 = v64;
        v86 = sub_100435DB0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v65 = sub_1000056E0(v84);
        (*(*(v64 - 8) + 104))(v65, v81, v64);
        v66 = v39;
        isFeatureEnabled(_:)();
        sub_100007000(v84);
        v67 = v77;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        sub_100435DB0(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v68 = v83;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v70 = v69;

        (*v80)(v67, v68);
        v59 = v75;
        v60 = v74;
        v61 = v73;
        v62 = v72;
        if (v70 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v59 = v75;
        v60 = v74;
        v61 = v73;
        v62 = v72;
LABEL_14:
        sub_10002A400((v61 + v62[12]), *(v61 + v62[12] + 24));
        dispatch thunk of Measurable.measurements(fitting:in:)();
        sub_10002A400(v71, v71[3]);
        v63 = v78;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        (*(v60 + 8))(v63, v59);
      }
    }
  }
}

double sub_100432E38(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductLockupLayout(0);
  sub_100031660(a2 + *(v9 + 52), &v24, &unk_10097E890, qword_1007B4270);
  if (!v25)
  {
    sub_10002B894(&v24, &unk_10097E890, qword_1007B4270);
    return 0.0;
  }

  sub_100005A38(&v24, v26);
  sub_100031660(a2 + *(v9 + 56), &v22, &unk_10097E890, qword_1007B4270);
  if (!v23)
  {
    sub_10002B894(&v22, &unk_10097E890, qword_1007B4270);
    sub_100007000(v26);
    return 0.0;
  }

  sub_100005A38(&v22, &v24);
  sub_10002A400(v26, v26[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v11 = v10;
  v13 = v12;
  sub_10002A400(&v24, v25);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v15 = v14;
  v16 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((a2 + *(v16 + 84)), *(a2 + *(v16 + 84) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = v15 + v11 - v13 + v18;
  sub_100007000(&v24);
  sub_100007000(v26);
  return v19;
}

double sub_1004330B4(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v56 = UITraitCollection.isSizeClassRegular.getter();

  v12 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v57 = a1;
  v13 = sub_10002849C(&qword_100979010, qword_1007BE140);
  Conditional.evaluate(with:)();
  v14 = *v60;
  v15 = v12;
  *&v57 = a1;
  v55 = v13;
  Conditional.evaluate(with:)();
  v16 = *v60;
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = v17[10];
  sub_100031660(a2 + v18, v60, &qword_100975610, &qword_1007B5690);
  if (v61)
  {
    sub_10002A400(v60, v61);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v60);
  }

  else
  {
    sub_10002B894(v60, &qword_100975610, &qword_1007B5690);
  }

  sub_100031660(a2 + v18, v60, &qword_100975610, &qword_1007B5690);
  v19 = v61;
  sub_10002B894(v60, &qword_100975610, &qword_1007B5690);
  if (v19)
  {
    sub_10002A400((a2 + *(v15 + 80)), *(a2 + *(v15 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v7 + 8))(v10, v6);
  }

  v20 = (a2 + v17[6]);
  sub_10002A400(v20, v20[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v23 = v22;
  v25 = v24;
  v26 = v21;
  v28 = v27;
  if (v14 - v21 > 0.0)
  {
    v29 = v14 - v21;
  }

  else
  {
    v29 = 0.0;
  }

  sub_10002A400(v20, v20[3]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  v31 = v25 - v28 + v29 + v30;
  sub_10002C0AC(v20, v60);
  *&v57 = a1;
  sub_10002849C(&unk_100973B30, &qword_1007B5248);
  Conditional.evaluate(with:)();
  v32 = v17[9];
  sub_100031660(a2 + v32, &v57, &unk_10097E890, qword_1007B4270);
  sub_10002B894(&v57, &unk_10097E890, qword_1007B4270);
  sub_10002A400(v60, v61);
  v62.var0 = v23;
  v62.var1 = v25;
  v62.var2 = v26;
  v62.var3 = v28;
  LayoutTextView.estimatedNumberOfLines(from:)(v62);
  sub_100007000(v60);
  v33 = (a2 + v17[8]);
  sub_10002A400(v33, v33[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  v34 = (a2 + v17[7]);
  sub_10002A400(v34, v34[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  sub_10002A400(v33, v33[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10002A400(v34, v34[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v42 = v41;
  v43 = v16 - v38 + v36 - v40;
  v46 = v16 - v44 + v45 - v41;
  if (v43 > v46)
  {
    v47 = v43;
  }

  else
  {
    v47 = v46;
  }

  v48 = v31 + v47;
  sub_100031660(a2 + v32, &v57, &unk_10097E890, qword_1007B4270);
  if (v58)
  {
    sub_100005A38(&v57, v60);
    v59 = a1;
    Conditional.evaluate(with:)();
    v49 = *&v57;
    sub_10002A400(v60, v61);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v51 = v50;
    v48 = v48 + v49 - v52 + v53 - v50;
    sub_100007000(v60);
  }

  else
  {
    if (v43 >= v46)
    {
      v51 = v40;
    }

    else
    {
      v51 = v42;
    }

    sub_10002B894(&v57, &unk_10097E890, qword_1007B4270);
  }

  return v48 + v51;
}

void sub_100433694(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (*(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_10096D750 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for FontUseCase();
    v8 = sub_1000056A8(v7, qword_1009CF600);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v6, v8, v7);
    (*(v9 + 56))(v6, 0, 1, v7);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    v10 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_10096D720 != -1)
    {
      swift_once();
    }

    v11 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
    sub_1000056A8(v11, qword_1009CF590);
    v23 = a1;
    Conditional.evaluate(with:)();
    v12 = v24;
    [v10 setFont:v24];
  }

  else
  {
    if (qword_10096D748 != -1)
    {
      swift_once();
    }

    v13 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
    sub_1000056A8(v13, qword_1009CF5E8);
    v24 = a1;
    Conditional.evaluate(with:)();
    v14 = type metadata accessor for FontUseCase();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 0, 1, v14);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    if (qword_10096D758 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v13, qword_1009CF618);
    v24 = a1;
    Conditional.evaluate(with:)();
    v15(v6, 0, 1, v14);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  if (qword_10096D758 != -1)
  {
    swift_once();
  }

  v16 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_1000056A8(v16, qword_1009CF618);
  v24 = a1;
  Conditional.evaluate(with:)();
  v17 = type metadata accessor for FontUseCase();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 0, 1, v17);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  if (qword_10096D770 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v16, qword_1009CF660);
  v24 = a1;
  Conditional.evaluate(with:)();
  v18(v6, 0, 1, v17);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v19 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (v20)
  {
    v21 = qword_10096D768;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v16, qword_1009CF648);
    v23 = a1;
    Conditional.evaluate(with:)();
    v18(v6, 0, 1, v17);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }
}

void sub_100433BEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
  if (*(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_10096D880 != -1)
    {
      swift_once();
    }

    v5 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
    v6 = qword_1009CF9D0;
  }

  else
  {
    if (qword_10096D878 != -1)
    {
      swift_once();
    }

    v5 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
    v6 = qword_1009CF9B8;
  }

  sub_1000056A8(v5, v6);
  Conditional.evaluate(with:)();
  [v4 setNumberOfLines:v18];
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel);
  if (qword_10096D8A8 != -1)
  {
    swift_once();
  }

  v8 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_1000056A8(v8, qword_1009CFA48);
  Conditional.evaluate(with:)();
  [v7 setNumberOfLines:v18];
  v9 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel);
  if (qword_10096D888 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v8, qword_1009CF9E8);
  Conditional.evaluate(with:)();
  [v9 setNumberOfLines:v18];
  v10 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
  Conditional.evaluate(with:)();
  [v10 setNumberOfLines:v18];
  v11 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (v12)
  {
    v13 = qword_10096D890;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v8, qword_1009CFA00);
    Conditional.evaluate(with:)();
    [v14 setNumberOfLines:a1];
  }

  v15 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v15)
  {
    v16 = qword_10096D870;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v8, qword_1009CF9A0);
    Conditional.evaluate(with:)();
    [v17 setNumberOfLines:a1];
  }
}

void sub_100433F8C(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5)
{
  LODWORD(v7) = a3;
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v41 = a4;
    v14 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel;
    v15 = *&a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
    if (v15)
    {
      goto LABEL_3;
    }

    v39 = a1;
    type metadata accessor for DynamicTypeLabel();
    v23 = DynamicTypeLabel.__allocating_init(frame:)();
    v24 = v23;
    v25 = *&a5[v14];
    *&a5[v14] = v23;
    if (v23)
    {
      v40 = v7;
      if (!v25)
      {
        v29 = v23;
        v30 = v24;
        if (v24)
        {
LABEL_22:
          v31 = v30;
          v32 = [a5 contentView];
          [v32 addSubview:v31];

          sub_10042A1FC();
          goto LABEL_23;
        }

LABEL_19:

LABEL_23:
        v7 = v25;
        goto LABEL_24;
      }

      v38 = v11;
      v26 = v23;
      v7 = v25;
      v37 = v26;
      v27 = static NSObject.== infix(_:_:)();

      if (v27)
      {

        v11 = v38;
LABEL_24:

        v24 = *&a5[v14];
        LOBYTE(v7) = v40;
        goto LABEL_25;
      }

      v11 = v38;
    }

    else
    {
      if (!v25)
      {
LABEL_25:
        if (!v24 || (memset(v43, 0, sizeof(v43)), memset(v42, 0, sizeof(v42)), v33 = v24, static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)(), sub_10002B894(v42, &unk_1009711D0, &unk_1007B1A10), sub_10002B894(v43, &unk_1009711D0, &unk_1007B1A10), UIView.setAutomationSemantics(_:)(), v33, (*(v11 + 8))(v13, v10), (v34 = *&a5[v14]) == 0) || ([v34 setHidden:v7 & 1], (v15 = *&a5[v14]) == 0))
        {
LABEL_28:
          [a5 setNeedsLayout];
          goto LABEL_29;
        }

LABEL_3:
        v16 = v15;
        v17 = String._bridgeToObjectiveC()();
        [v16 setText:v17];

        v18 = *&a5[v14];
        if (v18)
        {
          v19 = a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer];
          v20 = v18;
          v21 = [v41 traitCollection];
          if ((a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] & 1) != 0 || (v19 & 1) != 0 && (UITraitCollection.isSizeClassRegular.getter() & 1) == 0)
          {

            v22 = 1;
          }

          else
          {
            v28 = UITraitCollection.prefersRightToLeftLayouts.getter();

            if (v28)
            {
              v22 = 2;
            }

            else
            {
              v22 = 0;
            }
          }

          [v20 setTextAlignment:v22];
        }

        goto LABEL_28;
      }

      v40 = v7;
      v7 = v25;
    }

    [v7 removeFromSuperview];
    v30 = *&a5[v14];
    if (v30)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_29:
  v35 = a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible];
  a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] = v7 & 1;
  sub_10042AF44(v35);
}

void sub_100434330(char a1, void *a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = type metadata accessor for LegacyAppState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = type metadata accessor for AdamId();
  v19 = (*(*(v18 - 8) + 48))(a5, 1, v18);
  v54 = v11;
  v55 = v17;
  if (v19 == 1 || !*&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine])
  {
    (*(v12 + 104))(v17, enum case for LegacyAppState.unknown(_:), v11);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = v54;
    v17 = v55;
    dispatch thunk of AppStateMachine.currentState.getter();
    swift_unknownObjectRelease();
  }

  v20 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
  [*&v20[OBJC_IVAR____TtC8AppStore11OfferButton_imageView] setContentMode:1];
  if (a4)
  {
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v22 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v22 && v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v14, v17, v11);
  v22 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v23 = [v22 text];
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = LegacyAppState.isBuyable.getter();
  (*(v12 + 8))(v14, v11);
  if (v27)
  {
    if (v26)
    {

LABEL_16:
      v28 = v22;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v22 = 0;
LABEL_19:
  sub_10002849C(&unk_100985700, qword_1007C32D0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007B1E00;
  v30 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
  *(v29 + 32) = v30;
  *(v29 + 40) = v20;
  *(v29 + 48) = v22;
  v31 = v30;
  v32 = v31;
  if (a3)
  {
    v33 = a1 & 1;
    if (a1)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = 1.0;
    }

    [v31 setAlpha:v34];
    [v32 setHidden:a1 & 1];

    v35 = *(v29 + 40);
    [v35 setAlpha:v34];
    [v35 setHidden:v33];

    v36 = *(v29 + 48);
    [v36 setAlpha:v34];
    [v36 setHidden:v33];

    [v6 setNeedsLayout];
LABEL_31:

    (*(v12 + 8))(v55, v54);
    return;
  }

  v37 = 0.0;
  if (a1)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  [v31 setAlpha:v38];
  [v32 setHidden:0];

  v39 = *(v29 + 40);
  [v39 setAlpha:v38];
  [v39 setHidden:0];

  v40 = *(v29 + 48);
  [v40 setAlpha:v38];
  [v40 setHidden:0];

  v41 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (!v42)
  {
    v52 = a1 & 1;
    if ((a1 & 1) == 0)
    {
      v37 = 1.0;
    }

    v44 = *&v53;
    *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v43;
    v53 = objc_opt_self();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    *(v46 + 24) = v29;
    *(v46 + 32) = v45;
    v60 = sub_100435E80;
    v61 = v46;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100007A08;
    v59 = &unk_1008C2C28;
    v47 = _Block_copy(&aBlock);

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v52;
    *(v49 + 32) = v29;
    v60 = sub_100435E8C;
    v61 = v49;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100504C5C;
    v59 = &unk_1008C2C78;
    v50 = _Block_copy(&aBlock);

    [v53 animateWithDuration:4 delay:v47 options:v50 animations:v44 completion:0.0];
    _Block_release(v50);
    _Block_release(v47);
    goto LABEL_31;
  }

  __break(1u);
}

void sub_10043497C()
{
  v1 = v0;
  v2 = type metadata accessor for WordmarkView.Alignment();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StaticDimension();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v12 - 8);
  v46 = &v45 - v13;
  v14 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance) = 0;
  v16 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v17 = [objc_allocWithZone(UIView) init];
  v18 = [objc_opt_self() systemBackgroundColor];
  [v17 setBackgroundColor:v18];

  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView) = 0;
  v19 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v1 + v19) = DynamicTypeLabel.__allocating_init(frame:)();
  v20 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel;
  *(v1 + v22) = DynamicTypeLabel.__allocating_init(frame:)();
  v23 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel;
  *(v1 + v23) = DynamicTypeLabel.__allocating_init(frame:)();
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v45 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView;
  v24 = type metadata accessor for Wordmark();
  (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
  *v7 = UIFontTextStyleFootnote;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v51 = v4;
  v52 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v50);
  (*(v5 + 16))(v25, v7, v4);
  v26 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  (*(v5 + 8))(v7, v4);
  (*(v48 + 104))(v47, enum case for WordmarkView.Alignment.center(_:), v49);
  v51 = v8;
  v52 = &protocol witness table for StaticDimension;
  v27 = sub_1000056E0(v50);
  (*(v9 + 16))(v27, v11, v8);
  v28 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v29 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v9 + 8))(v11, v8);
  *(v1 + v45) = v29;
  v30 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton;
  v31 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v30) = sub_1000F5284(0, v32);
  v33 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *(v1 + v33) = DynamicTypeLabel.__allocating_init(frame:)();
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight) = 0;
  v34 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer;
  *(v1 + v34) = [objc_allocWithZone(UIView) init];
  v35 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurEffect;
  *(v1 + v35) = [objc_opt_self() effectWithStyle:7];
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView) = 0;
  v36 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView;
  type metadata accessor for ArtworkView();
  *(v1 + v37) = static ArtworkView.iconArtworkView.getter();
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer) = 0;
  v38 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleText);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleText);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_theme;
  v41 = enum case for ProductPageTheme.infer(_:);
  v42 = type metadata accessor for ProductPageTheme();
  (*(*(v42 - 8) + 104))(v1 + v40, v41, v42);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible) = 0;
  makeNetworkInquiry()();
  v43 = v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkObservation;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  v44 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler);
  *v44 = 0;
  v44[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10043510C(void *a1, void *a2, double a3)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v92 = *(v6 - 8);
  __chkstk_darwin(v6);
  v91 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v9 = *v8;
  v10 = a3 - v8[1] - v8[3];
  v87 = v8[2];
  v88 = v9;
  v11 = a3 - v9 - v87;
  v12 = [a1 traitCollection];
  v13 = UITraitCollection.isSizeClassRegular.getter();

  sub_100031660((a2 + 30), v102, &qword_100975610, &qword_1007B5690);
  if (v103)
  {
    sub_10002A400(v102, v103);
    Measurable.measuredSize(fitting:in:)();
    v15 = v14;
    sub_100007000(v102);
  }

  else
  {
    sub_10002B894(v102, &qword_100975610, &qword_1007B5690);
    v15 = 0.0;
  }

  sub_100031660((a2 + 30), v102, &qword_100975610, &qword_1007B5690);
  v16 = v103;
  sub_10002B894(v102, &qword_100975610, &qword_1007B5690);
  v93 = a2;
  v89 = v6;
  if (v16)
  {
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400((v8 + *(v17 + 48)), *(v8 + *(v17 + 48) + 24));
    v18 = v91;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v20 = v19;
    (*(v92 + 8))(v18, v6);
    if (v13)
    {
LABEL_6:
      v21 = v8;
      v22 = v10 - v15 - v20;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 0.0;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  v21 = v8;
  v22 = v10;
LABEL_9:
  v90 = v22;
  v23 = v93;
  sub_10002A400(v93 + 5, v93[8]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v100 = a1;
  sub_10002849C(&qword_100979010, qword_1007BE140);
  Conditional.evaluate(with:)();
  *&v100 = v102[0];
  v85 = v25;
  v83 = v27;
  AnyDimension.topMargin(from:in:)();
  v82 = v29;
  sub_10002A400(v23 + 5, v23[8]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  v81 = v30;
  v31 = v23[13];
  v80[0] = (v23 + 10);
  sub_10002A400(v23 + 10, v31);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v33 = v32;
  v35 = v34;
  v36 = *(v28 + 36);
  v37 = v28;
  *&v100 = a1;
  v38 = v21;
  v80[1] = v36;
  Conditional.evaluate(with:)();
  *&v100 = v102[0];
  AnyDimension.topMargin(from:in:)();
  v39 = v11;
  v41 = v33 - v35 + v40;
  v42 = (v23 + 15);
  sub_10002A400(v23 + 15, v23[18]);
  v86 = v39;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v44 = v43;
  v46 = v45;
  v84 = v37;
  *&v100 = a1;
  Conditional.evaluate(with:)();
  *&v100 = v102[0];
  AnyDimension.topMargin(from:in:)();
  v48 = v44 - v46 + v47;
  if (v48 >= v41)
  {
    sub_10002C0AC(v42, &v100);
    v42 = v80[0];
  }

  else
  {
    sub_10002C0AC(v80[0], &v100);
  }

  sub_10002C0AC(v42, &v98);
  v97[0] = a1;
  Conditional.evaluate(with:)();
  v49 = v102[0];
  v97[0] = a1;
  Conditional.evaluate(with:)();
  v50 = v102[0];
  if (v48 >= v41)
  {
    v51 = v102[0];
  }

  else
  {
    v51 = v49;
  }

  v97[3] = &type metadata for CGFloat;
  v97[4] = &protocol witness table for CGFloat;
  v97[0] = v51;
  if (v48 >= v41)
  {
    v50 = v49;
  }

  v95 = &type metadata for CGFloat;
  v96 = &protocol witness table for CGFloat;
  *&v94 = v50;
  sub_100005A38(&v100, v102);
  sub_10002C0AC(v97, v104);
  sub_100005A38(&v98, &v105);
  sub_100005A38(&v94, &v106);
  sub_100007000(v97);
  sub_10002A400(v102, v103);
  v52 = v90;
  v53 = v86;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v55 = v54;
  v57 = v56;
  sub_10002A400(v104, v104[3]);
  AnyDimension.topMargin(from:in:)();
  v59 = v58;
  v60 = v93;
  sub_100031660((v93 + 20), &v98, &unk_10097E890, qword_1007B4270);
  v61 = v89;
  if (v99)
  {
    sub_100005A38(&v98, &v100);
    sub_10002A400(&v100, v101);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v63 = v62;
    v65 = v64;
    v66 = v84;
    v97[0] = a1;
    Conditional.evaluate(with:)();
    v97[0] = v98;
    v52 = v90;
    AnyDimension.topMargin(from:in:)();
    v68 = v63 - v65 + v67;
    sub_100007000(&v100);
    v69 = v92;
  }

  else
  {
    sub_10002B894(&v98, &unk_10097E890, qword_1007B4270);
    v68 = 0.0;
    v69 = v92;
    v66 = v84;
  }

  v70 = v68 + v55 - v57 + v59 + v85 - v83 + v82 + v81 + v21[15];
  sub_10002A400((v21 + *(v66 + 52)), *(v21 + *(v66 + 52) + 24));
  v71 = v91;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v73 = v72;
  v74 = *(v69 + 8);
  v74(v71, v61);
  v75 = v70 + v73 + sub_100431390(a1, v60, v52, v53);
  sub_10002A400(v38 + 4, *(v38 + 7));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v77 = v76;
  v74(v71, v61);
  v78 = v87 + v88 + v75 + v77;
  sub_10002B894(v102, &qword_1009856E0, &qword_1007C6240);
  return v78;
}

id sub_100435978()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel);
  result = [v7 isHidden];
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) & 1) == 0)
    {
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      v9 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v10 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v10;
      aBlock[4] = sub_100435EB8;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C2B10;
      _Block_copy(aBlock);
      v14[1] = _swiftEmptyArrayStorage;
      sub_100435DB0(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v12 = v7;
      v13 = v10;
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      DispatchWorkItem.init(flags:block:)();

      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_100435C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100435CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100435D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100435DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100435E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009856F8, &qword_1007CCF40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_100435ED8(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();

  return sub_1005397D8(v10, a8, ObjectType, v12, a3);
}

id sub_100435F40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContingentOffer();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    sub_100539A70(v6, a3);
  }

  else
  {
    type metadata accessor for OfferItem();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v7;

    sub_100539C84(v8, a3);
  }

LABEL_6:

  return [v3 setNeedsLayout];
}

uint64_t sub_100436158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004361A0(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v10 = v9;
  v11 = [a5 traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    sub_100438080(&unk_1009CEDC8, a5, v10, a2);
    if (qword_10096EBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    v18 = sub_1000056A8(v17, qword_1009D31A8);
    sub_10057992C(v10, a2, v18, a5);
    goto LABEL_28;
  }

  v14 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    do
    {
      sub_10002C0AC(v16, v28);
      sub_100005A38(v28, v27);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for AppPromotion();
      if ((swift_dynamicCast() & 1) != 0 && v27[5])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = v29;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  if (!(v14 >> 62))
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v25 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v26 = [v25 absoluteDimension:?];
    static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

    return;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v14 + 8 * v20 + 32);
      }

      ++v20;
      sub_1005397D8(v22, a5, ObjectType, v10, a2);
      v24 = v23;

      if (v21 <= v24)
      {
        v21 = v24;
      }
    }

    while (v19 != v20);
    goto LABEL_27;
  }

  __break(1u);
}

unint64_t sub_100436538()
{
  result = qword_100985758;
  if (!qword_100985758)
  {
    type metadata accessor for GameCenterLeaderboardsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985758);
  }

  return result;
}

uint64_t sub_100436590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    type metadata accessor for GameCenter();
    v8 = a1;
    GameCenterLeaderboardsAction.bundleID.getter();
    static GameCenter.fetchGameRecord(for:with:)();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a2;
    v9[4] = a4;
    v10 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    swift_retain_n();

    v14[3] = v10;
    v14[4] = &protocol witness table for OS_dispatch_queue;
    v14[0] = static OS_dispatch_queue.main.getter();
    Promise.then(perform:orCatchError:on:)();

    return sub_100007000(v14);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for OSLogger();
    sub_1000056A8(v12, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100437698();
    swift_allocError();
    *v13 = 0;
    Promise.reject(_:)();
  }
}

void sub_100436864(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [objc_allocWithZone(GKGameInternal) init];
  GameCenterLeaderboardsAction.bundleID.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setBundleIdentifier:v8];

  v9 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v7];
  v10 = objc_opt_self();
  sub_10002849C(&qword_10096FC50, &unk_1007B1280);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B10D0;
  *(v11 + 32) = GameCenterLeaderboardsAction.leaderboardID.getter();
  *(v11 + 40) = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v6;
  v14[4] = a4;
  v18[4] = sub_100437700;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100437388;
  v18[3] = &unk_1008C2E20;
  v15 = _Block_copy(v18);
  v16 = v9;

  v17 = v6;

  [v10 loadLeaderboardsWithIDs:isa setIdentifier:0 game:v16 completionHandler:v15];
  _Block_release(v15);
}

void sub_100436A70(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v59 = a5;
  v57 = a4;
  v62 = a1;
  v63 = a3;
  v58 = type metadata accessor for FlowOrigin();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAnimationBehavior();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowPresentationContext();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v20 - 8);
  v22 = &v50 - v21;
  v23 = type metadata accessor for FlowPage();
  __chkstk_darwin(v23);
  v26 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for OSLogger();
    sub_1000056A8(v27, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    swift_getErrorValue();
    v28 = v64;
    v29 = v65;
    *(&v70 + 1) = v65;
    v30 = sub_1000056E0(&v69);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    static LogMessage.sensitive(_:)();
    sub_10003D444(&v69);
    Logger.error(_:)();

    Promise.reject(_:)();

    return;
  }

  v53 = v11;
  v54 = v16;
  v55 = v8;
  v32 = v60;
  v31 = v61;
  v33 = v62;
  if (v62)
  {
    if (v62 >> 62)
    {
      v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v13;
      v46 = v25;
      v47 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v46;
      v13 = v52;
      v26 = v51;
      if (v47)
      {
LABEL_8:
        v52 = v13;
        v62 = v19;
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = v25;
          v35 = v26;
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v34 = v25;
          v35 = v26;
          v36 = *(v33 + 32);
        }

        v37 = v36;
        v38 = v57;
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
        v39 = *(v34 + 104);
        v51 = v35;
        v39(v35, enum case for FlowPage.gameCenterLeaderboards(_:), v23);
        v40 = type metadata accessor for URL();
        (*(*(v40 - 8) + 56))(v22, 1, 1, v40);
        v41 = type metadata accessor for ReferrerData();
        (*(*(v41 - 8) + 56))(v62, 1, 1, v41);
        v68 = &type metadata for GameCenterLeaderboardsPage;
        v66 = v37;
        v67 = v38;
        v42 = v37;
        v43 = v38;
        v44 = v42;
        v57 = v43;
        static ActionMetrics.notInstrumented.getter();
        (*(v56 + 104))(v52, enum case for FlowPresentationContext.infer(_:), v53);
        (*(v32 + 104))(v10, enum case for FlowAnimationBehavior.infer(_:), v55);
        (*(v31 + 104))(v7, enum case for FlowOrigin.inapp(_:), v58);
        static FlowActionPresentation.stackPush.getter();
        type metadata accessor for FlowAction();
        swift_allocObject();
        v45 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
        sub_1005D01FC(v45, 1, v59);
        Promise.pipe(to:)();

        return;
      }
    }

    else if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }
  }

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for OSLogger();
  sub_1000056A8(v48, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100437698();
  swift_allocError();
  *v49 = 1;
  Promise.reject(_:)();
}