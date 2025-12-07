void Artwork.View.fittingImageSize(in:)(__n128 a1, __n128 a2)
{
  if (a1.n128_f64[0] == 0.0 && a2.n128_f64[0] == 0.0)
  {
    v3 = [v2 artworkCatalog];
    if (v3)
    {
      v4 = v3;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  CGSize.aspectRatio.getter();
  v6 = v5;
  v7 = [*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }

  else
  {
    v10 = [v2 artworkCatalog];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    MPArtworkCatalog.originalSize.getter();
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  CGSize.aspectRatio.getter();
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    CGSize.aspectRatio.getter();
    if (vabdd_f64(v6, v9) > 0.1)
    {
      CGSize.aspectRatio.getter();
    }
  }
}

uint64_t sub_100058744()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012190C8);
  sub_1000060E4(v0, qword_1012190C8);
  return static Logger.nowPlaying(_:)(2003134806, 0xE400000000000000);
}

uint64_t sub_1000587B4(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 1 | (2 * ((v1 >> 8) & 1))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  [v0 bounds];
  v6.n128_u64[0] = v5;
  v8.n128_u64[0] = v7;
  Artwork.View.fittingImageSize(in:)(v6, v8);
  v10 = v9;
  v12 = v11;
  v13 = [v0 contentMode];
  if (v13 > 5)
  {
    if (v13 == 6)
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v32);
      v33.origin.x = v2;
      v33.origin.y = v4;
      v33.size.width = v10;
      v33.size.height = v12;
      v4 = MaxY - CGRectGetHeight(v33);
    }

    else if (v13 == 8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v30);
      v31.origin.x = v2;
      v31.origin.y = v4;
      v31.size.width = v10;
      v31.size.height = v12;
      v2 = MaxX - CGRectGetWidth(v31);
    }
  }

  [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] setFrame:{CGRect.centeringAlong(axes:in:)(v2, v4, v10, v12)}];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v10, v12}];
  }

  v16 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v17 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v20 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v35.origin.x = v21;
  v35.origin.y = v22;
  v35.size.width = v23;
  v35.size.height = v24;
  v34.origin.x = v17;
  v34.origin.y = v18;
  v34.size.width = v19;
  v34.size.height = v20;
  if (!CGRectEqualToRect(v34, v35))
  {
    [v0 bounds];
    *v16 = v25;
    *(v16 + 1) = v26;
    *(v16 + 2) = v27;
    *(v16 + 3) = v28;
    sub_10004BF1C();
  }

  sub_10004AF48();
}

Swift::Void __swiftcall Artwork.Placeholder.View.layoutSubviews()()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v2 = &v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 2);
  v8 = v5;
  v9 = v3;
  v10 = v4;
  [v0 bounds];
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v6 * v13;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() configurationWithPointSize:v16];
  v18 = [v8 configurationByApplyingConfiguration:v17];

  [v1 setPreferredSymbolConfiguration:v18];
  [v1 setContentMode:4];
  [v0 bounds];
  [v1 sizeThatFits:{v19, v20}];
  [v1 setFrame:{CGRect.centeringAlong(axes:in:)(0.0, 0.0, v21, v22)}];
}

void sub_100058CAC(char *a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v4 = &a1[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = a1;
    if (Strong)
    {
      swift_unknownObjectRelease();
      if (Strong == v1)
      {
        *(v4 + 1) = 0;
        swift_unknownObjectWeakAssign();
      }
    }

    v7 = &v6[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_delegate];
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRelease();
      if (v9 == v1)
      {
        *(v7 + 1) = 0;
        swift_unknownObjectWeakAssign();
      }
    }

    v10 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
    if (v10)
    {
      v11 = [v10 view];
      if (!v11)
      {
        __break(1u);
        goto LABEL_20;
      }

      v12 = v11;
      [v11 removeInteraction:v6];
    }
  }

  v13 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction];
  if (!v13)
  {
    return;
  }

  *&v13[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate + 8] = &off_1010BAC48;
  swift_unknownObjectWeakAssign();
  *&v13[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_delegate + 8] = &off_1010BAC78;
  swift_unknownObjectWeakAssign();
  v29 = ObjectType;
  v30 = &off_1010BAC08;
  aBlock[0] = v1;
  v14 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider;
  swift_beginAccess();
  v15 = v1;
  v16 = v13;
  sub_10006B010(aBlock, &v13[v14], &qword_101194670, &qword_100ED2258);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController;
  v18 = *&v15[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (v18)
  {
    v19 = [v18 view];
    if (v19)
    {
      v20 = v19;
      [v19 addInteraction:v16];

      v21 = *&v15[v17];
      if (v21)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v16;
        v23 = objc_allocWithZone(UISpringLoadedInteraction);
        v30 = sub_1006CCC14;
        v31 = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1006BE4C0;
        v29 = &unk_1010BB078;
        v24 = _Block_copy(aBlock);
        v25 = v16;
        v26 = v21;
        v27 = [v23 initWithInteractionBehavior:0 interactionEffect:v26 activationHandler:v24];
        _Block_release(v24);

        sub_1000592E0(v27);
      }

      goto LABEL_17;
    }

LABEL_20:
    __break(1u);
    return;
  }

LABEL_17:
}

uint64_t sub_100058F9C()
{

  return swift_deallocObject();
}

void sub_100059054(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view;
  v4 = *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view);
  if (v4)
  {
    if (!a1 || (sub_100009F78(0, &qword_101181620, UIView_ptr), v6 = v4, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      [v4 removeGestureRecognizer:*(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_tapGestureRecognizer)];
      v9 = *(v2 + v3);
      if (v9)
      {
        v10 = *(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer);

        [v9 removeGestureRecognizer:v10];
      }
    }
  }
}

void sub_1000591B4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view;
  v5 = *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view);
  if (v5)
  {
    if (!a1)
    {
      *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view) = 0;
      v13 = 0;

      v11 = *(v1 + v4);
      if (!v11)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_100009F78(0, &qword_101181620, UIView_ptr);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }

    v9 = *(v2 + v4);
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v9 = 0;
  }

  *(v2 + v4) = a1;
  v10 = a1;

  [v10 addGestureRecognizer:*(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_tapGestureRecognizer)];
  v11 = *(v2 + v4);
  if (!v11)
  {
    return;
  }

LABEL_8:
  v12 = *(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer);

  [v11 addGestureRecognizer:v12];
}

void sub_1000592E0(void *a1)
{
  v2 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction;
  v3 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction];
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction] = a1;
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    v6 = [v1 view];
    if (!v6)
    {
      __break(1u);
      goto LABEL_12;
    }

    v7 = v6;
    [v6 removeInteraction:v5];

    v8 = *&v1[v2];
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = v8;
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addInteraction:v13];

      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v9 = a1;
  v8 = a1;
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_8:
}

double sub_1000593FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext;
  v3 = *(v0 + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);
  if (v3)
  {
    v4 = type metadata accessor for ApplicationMainMenu();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC5Music19ApplicationMainMenu____lazy_storage___submenus] = 0;
    *&v5[OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders] = _swiftEmptyArrayStorage;
    *&v5[OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext] = v3;
    v11.receiver = v5;
    v11.super_class = v4;
    swift_retain_n();
    v6 = objc_msgSendSuper2(&v11, "init");
    sub_100059768();

    v7 = *(v1 + OBJC_IVAR____TtC5Music17MainSceneDelegate_responder);
    *(v1 + OBJC_IVAR____TtC5Music17MainSceneDelegate_responder) = v6;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC5Music17MainSceneDelegate_responder);
    *(v0 + OBJC_IVAR____TtC5Music17MainSceneDelegate_responder) = 0;
  }

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v8 = qword_101218AD0;
  swift_beginAccess();
  sub_100008FE4(v8 + 16, v14);
  sub_10010FC20(&qword_101190BE8, &qword_100ECDA78);
  _s11CoordinatorCMa_0();
  if (swift_dynamicCast())
  {
    *(v13 + 16) = *(v1 + v2);
  }

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  sub_100008FE4(qword_101218AD8 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, v14);
  sub_10010FC20(&qword_101190BF0, &qword_100ECDA80);
  _s11CoordinatorCMa_1();
  if (swift_dynamicCast())
  {
    *(v13 + 16) = *(v1 + v2);
  }

  if (qword_10117F610 != -1)
  {
    swift_once();
  }

  v9 = qword_101218AE0;

  swift_beginAccess();
  sub_100008FE4(v9 + 16, v14);
  sub_10010FC20(&qword_101190BF8, &qword_100ECDA88);
  _s11CoordinatorCMa();
  if (swift_dynamicCast())
  {
    *(v12 + 16) = *(v1 + v2);
  }

  return result;
}

void sub_100059768()
{
  if (qword_10117F580 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218A28);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders;
    swift_beginAccess();
    if (*(*&v2[v7] + 16))
    {
      swift_getObjectType();
      swift_getWitnessTable();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_1000105AC(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Rebuilding the main menu with submenuProvider: %{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v12 = [objc_opt_self() mainSystem];
  [v12 setNeedsRebuild];
}

uint64_t sub_100059964()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218A28);
  sub_1000060E4(v0, qword_101218A28);
  return static Logger.music(_:)(0x726142756E654DLL, 0xE700000000000000);
}

uint64_t sub_1000599C8()
{
  v0 = _s11CoordinatorCMa();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v5 = v0;
  v6 = &off_1010AC958;
  *&v4 = v1;
  type metadata accessor for Collaboration.Manager();
  v2 = swift_allocObject();
  result = sub_100059A8C(&v4, v2 + 16);
  qword_101218AE0 = v2;
  return result;
}

uint64_t sub_100059A8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100059B3C(void (*a1)(void *, _BYTE *), void (*a2)(void *, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v9 = v4;
  v17 = 0;
  v18 = 0;
  v10 = [v4 presentedViewController];
  if (v10 && (v11 = v10, __chkstk_darwin(), v16[2] = &v17, UIViewController.traverseViewControllerHierarchy(_:)(a1, v16), v11, (v12 = v17) != 0))
  {
    v13 = v18;
    v14 = qword_10117F228;
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    sub_1002B5C00(v9, v12, v13, qword_101218668, a2, a3);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_10117F228 != -1)
    {
      swift_once();
    }

    return a4(v9, qword_101218668);
  }
}

void *sub_100059CA4(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 32);
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  if (!v9 || *(v7 + 16 * v8) != result)
  {
    if (qword_10117F230 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, qword_101181F90);
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      v16 = v11;
      sub_10010FC20(&qword_101182128, &unk_100EBDF10);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000105AC(v17, v18, &v26);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Become active container=%{public}s", v14, 0xCu);
      sub_10000959C(v15);
    }

    v20 = *(a2 + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100059EE8(0, v20[2] + 1, 1, v20);
    }

    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_100059EE8((v21 > 1), v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    v23 = &v20[2 * v22];
    v23[4] = v11;
    v23[5] = a3;
    v24 = *(a2 + 32);
    *(a2 + 32) = v20;
    v25 = v11;
    sub_100059F0C(v24);
  }

  return result;
}

double sub_100059F0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  v6 = *(a1 + 16);
  v4 = a1 + 16;
  v5 = v6;
  if (v6)
  {
    v7 = (v4 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(v1 + 32);
    v47 = (v3 + 32);
    v11 = *(v10 + 16);
    swift_unknownObjectRetain();
    if (!v11)
    {
      if (!v9)
      {
        return result;
      }

LABEL_14:

      goto LABEL_17;
    }
  }

  else
  {
    v10 = *(v1 + 32);
    v47 = (v3 + 32);
    v11 = *(v10 + 16);
    if (!v11)
    {
      return result;
    }

    v8 = 0;
    v9 = 0;
  }

  v13 = *(v10 + 16 * v11 + 24);
  v14 = v9 == 0;
  v15 = swift_unknownObjectRetain();
  if (v9)
  {
    if (v15)
    {
      v16 = v9 == v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return result;
    }

    if (!v15)
    {
      goto LABEL_14;
    }
  }

  else if (!v15)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  v18 = *(v13 + 8);

  swift_unknownObjectRetain();
  v18(v2, ObjectType, v13);
  swift_unknownObjectRelease();
  v10 = *v47;
  if (!v14)
  {
LABEL_17:
    if (!*(v10 + 16))
    {
      v19 = swift_getObjectType();
      v20 = *(v8 + 16);
      swift_unknownObjectRetain();
      v20(v2, v19, v8);
      swift_unknownObjectRelease();
    }
  }

  if (qword_10117F230 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v21 = type metadata accessor for Logger();
    sub_1000060E4(v21, qword_101181F90);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v49 = v25;
      *v24 = 136446210;
      v26 = *(*v2 + 240);

      v28 = v26(v27);
      v30 = v29;

      v31 = sub_1000105AC(v28, v30, &v49);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "╭ Updated containers chain for videoContext=%{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }

    v32 = *v47;
    v33 = *(*v47 + 16);

    if (!v33)
    {
      break;
    }

    v34 = 0;
    v2 = v32 + 32;
    v45 = v32 + 32;
    v46 = v33;
    while (v34 < *(v32 + 16))
    {
      v48 = *(v2 + 16 * v34);
      swift_unknownObjectRetain_n();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v37 = 136315394;
        if (v34 == *(*v47 + 16) - 1)
        {
          v38 = 11572706;
        }

        else
        {
          v38 = 10393058;
        }

        v39 = v3;
        v40 = sub_1000105AC(v38, 0xA300000000000000, &v50);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2082;
        v49 = v48;
        swift_unknownObjectRetain();
        sub_10010FC20(&qword_101182128, &unk_100EBDF10);
        v41 = String.init<A>(describing:)();
        v43 = v32;
        v44 = sub_1000105AC(v41, v42, &v50);
        v3 = v39;
        v33 = v46;

        *(v37 + 14) = v44;
        v32 = v43;
        _os_log_impl(&_mh_execute_header, v35, v36, "%s %{public}s", v37, 0x16u);
        swift_arrayDestroy();

        v2 = v45;
      }

      swift_unknownObjectRelease();

      if (v33 == ++v34)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_31:

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

void sub_10005A43C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v2 = [Strong presentingViewController];
    if (v2)
    {
      v3 = v2;
      sub_1007EA6C8(v2, v12);
      if (v13)
      {
        v4 = v11;
        v11 = v3;
      }

      else
      {
        v5 = *(v0 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController);
        if (v5)
        {
          v6 = *v12;
          v7 = *&v12[1];
          v8 = *&v12[2];
          v9 = *&v12[3];
          v10 = v5;
          [v10 setSourceFrame:{v6, v7, v8, v9}];
        }

        v4 = v3;
      }
    }
  }
}

uint64_t sub_10005A544()
{
  if (qword_10117FD70 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A3E60))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_1000095E8(v5, &unk_101183F30, qword_100EBF960);
    return 0;
  }

  return result;
}

uint64_t sub_10005A630()
{
  result = swift_slowAlloc();
  qword_1011A3E60 = result;
  return result;
}

id sub_10005A6C0(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for TraitNavigationController();
  v3 = objc_msgSendSuper2(&v18, "_traitCollectionForChildEnvironment:", a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  swift_unknownObjectRetain();
  v6 = [v1 childViewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = v5;
  __chkstk_darwin();
  v16[2] = &v17;
  LOBYTE(v6) = sub_10044AC70(sub_1007E9F0C, v16, v7);

  if ((v6 & 1) != 0 || (v8 = [v1 overrideTraitCollectionForChildViewController:v5]) == 0)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  v9 = v8;
  if (v3)
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100EBC6D0;
    *(v10 + 32) = v3;
    *(v10 + 40) = v9;
    sub_100009F78(0, &unk_101183B00, UITraitCollection_ptr);
    v11 = v3;
    v12 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [objc_opt_self() traitCollectionWithTraitsFromCollections:isa];
    swift_unknownObjectRelease();

    return v14;
  }

  else
  {
    swift_unknownObjectRelease();
    return v9;
  }
}

void sub_10005AA14()
{
  v1 = [v0 window];
  if (!v1)
  {
    return;
  }

  v2 = &v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize];
  v3 = *&v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize];
  v4 = *&v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 8];
  v5 = v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16];
  v6 = [v0 window];
  if (!v6)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_11;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;

  if ((v5 & 1) != 0 || (v3 == v9 ? (v12 = v4 == v11) : (v12 = 0), !v12))
  {
LABEL_11:
    v13 = [v0 window];
    v14 = v13;
    if (v13)
    {
      [v13 bounds];
      v18 = v15;
      v19 = v16;

      *&v17 = v18;
      *(&v17 + 1) = v19;
    }

    else
    {
      v17 = 0uLL;
    }

    *v2 = v17;
    v2[16] = v14 == 0;
  }
}

id sub_10005AB4C()
{
  result = [objc_allocWithZone(type metadata accessor for GroupActivitiesManager.SuggestionProvider()) init];
  static GroupActivitiesManager.suggestionProvider = result;
  return result;
}

void sub_10005AC24()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  __chkstk_darwin();
  v7 = &v22 - v6;
  v8 = static StagedInstall.current()();
  if (v8 != 2 && (v8 & 1) == 0)
  {
    v23 = v1;
    v25 = v0;
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v24 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v11 = String._bridgeToObjectiveC()();
    v30 = sub_10045D7C0;
    v31 = 0;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10027D328;
    v29 = &unk_1010ACE50;
    v12 = _Block_copy(&aBlock);

    v13 = objc_opt_self();
    v14 = [v13 actionWithTitle:v11 style:2 handler:v12];
    _Block_release(v12);

    v15 = v24;
    [v24 addAction:v14];

    v16 = String._bridgeToObjectiveC()();
    v30 = UIScreen.Dimensions.size.getter;
    v31 = 0;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10027D328;
    v29 = &unk_1010ACE78;
    v17 = _Block_copy(&aBlock);

    v18 = [v13 actionWithTitle:v16 style:0 handler:v17];
    _Block_release(v17);

    [v15 addAction:v18];
    if (*(v25 + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext))
    {
      *v7 = v15;
      v7[8] = 1;
      *(v7 + 2) = &_swiftEmptySetSingleton;
      swift_storeEnumTagMultiPayload();
      sub_100115B50(v7, v5);
      sub_100115B50(v5, v3);
      v19 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      sub_100115BB4(v3, v20 + v19);

      v21 = v15;
      sub_100706900(v5, sub_100115C18, v20);

      sub_100115C8C(v5);
      sub_100115C8C(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_10005B050()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290, &unk_100EC73D0) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

void sub_10005B4CC(uint64_t a1)
{
  sub_10005B57C(319);
  if (v1 <= 0x3F)
  {
    sub_10005B86C(319);
    if (v2 <= 0x3F)
    {
      sub_10005B8F8(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PlaylistCreation.Context(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PlaylistPicker.Context(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10005B57C(uint64_t a1)
{
  if (!qword_10119FF20)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(255);
    sub_1001109D0(&qword_101199BD0, &qword_100ED8550);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FF20);
    }
  }
}

void sub_10005B61C(uint64_t a1)
{
  sub_10005B6C0();
  if (v1 <= 0x3F)
  {
    sub_10005B724();
    if (v2 <= 0x3F)
    {
      sub_10005B774(319);
      if (v3 <= 0x3F)
      {
        sub_10005B7DC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10005B6C0()
{
  if (!qword_10119FE60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FE60);
    }
  }
}

void sub_10005B724()
{
  if (!qword_10118A150)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10118A150);
    }
  }
}

void sub_10005B774(uint64_t a1)
{
  if (!qword_10119FE68)
  {
    type metadata accessor for Artist();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FE68);
    }
  }
}

void sub_10005B7DC(uint64_t a1)
{
  if (!qword_10119FE70)
  {
    sub_100009F78(255, &qword_101183D40, UIViewController_ptr);
    sub_1001109D0(&unk_10119F3A0, &qword_100EC7CD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FE70);
    }
  }
}

void sub_10005B86C(uint64_t a1)
{
  if (!qword_10119FF28)
  {
    sub_1001109D0(&qword_1011815E0, &qword_100EBD050);
    sub_1001109D0(&qword_10119FD30, &unk_100EDF1A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FF28);
    }
  }
}

void sub_10005B8F8(uint64_t a1)
{
  if (!qword_10119FF30)
  {
    sub_100009F78(255, &qword_101183D40, UIViewController_ptr);
    sub_1001109D0(&unk_10119FF38, "XC\v");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10119FF30);
    }
  }
}

unint64_t sub_10005B9A0()
{
  result = qword_10119FF70;
  if (!qword_10119FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FF70);
  }

  return result;
}

void sub_10005BA18(uint64_t a1)
{
  sub_10005BAFC(319);
  if (v1 <= 0x3F)
  {
    sub_10002F678();
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_10118F6F8, &unk_1011841D0, &qword_100EC5DB0);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &qword_1011A11C0, &unk_10118F700, "dM\n");
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10005BAFC(uint64_t a1)
{
  if (!qword_101183080)
  {
    type metadata accessor for Playlist.Folder();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101183080);
    }
  }
}

void sub_10005BB74(uint64_t a1)
{
  type metadata accessor for PlaylistPicker.Mode(319);
  if (v1 <= 0x3F)
  {
    sub_10005BD4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005BC18(uint64_t a1)
{
  sub_10005BC8C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Playlist.Folder.Item();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10005BC8C(uint64_t a1)
{
  if (!qword_10118A500)
  {
    type metadata accessor for Track();
    v1 = type metadata accessor for MusicItemCollection();
    if (!v2)
    {
      atomic_store(v1, &qword_10118A500);
    }
  }
}

void sub_10005BCEC(uint64_t a1)
{
  if (!qword_1011AE490)
  {
    type metadata accessor for Track();
    v1 = type metadata accessor for MusicItemCollection();
    if (!v2)
    {
      atomic_store(v1, &qword_1011AE490);
    }
  }
}

void sub_10005BD4C()
{
  if (!qword_101191270)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101191270);
    }
  }
}

uint64_t static StagedInstall.current()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v45 - v4;
  __chkstk_darwin();
  v7 = &v45 - v6;
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_1011A69A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_1011AB0C0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Checking for a staged install of Music", v11, 2u);
  }

  URL.init(fileURLWithPath:)();
  v12 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 fileExistsAtPath:v13];

  v15 = Logger.logObject.getter();
  if (v14)
  {
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Found Music.app in staged_system_apps", v17, 2u);
    }

    v18 = Data.init(contentsOf:options:)();
    v23 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v23 != 2 || *(v18 + 16) == *(v18 + 24))
      {
LABEL_23:
        sub_10002C064(v18, v19);
        v15 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v15, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v23)
    {
      if (v18 == v18 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v24 = v18;
    v47 = v19;
    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 executableURL];

    if (!v26)
    {
LABEL_39:
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v29 = 2;
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to read data of running executable", v38, 2u);

        sub_10002C064(v24, v47);
        (*(v1 + 8))(v7, v0);
        return v29;
      }

      sub_10002C064(v24, v47);

      goto LABEL_27;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v5, v3, v0);
    v27 = Data.init(contentsOf:options:)();
    v31 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_38;
      }

      v32 = *(v27 + 16);
      v33 = *(v27 + 24);
    }

    else
    {
      if (!v31)
      {
        if ((v28 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v45 = v27;
        v46 = v28;
        v39 = sub_1009AC704(v27, v28, v24, v47);
        v40 = Logger.logObject.getter();
        if (v39)
        {
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);
          }
        }

        else
        {
          v41 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_10002C064(v45, v46);
        sub_10002C064(v24, v47);
        v44 = *(v1 + 8);
        v44(v5, v0);
        v44(v7, v0);
        return v39;
      }

      v32 = v27;
      v33 = v27 >> 32;
    }

    if (v32 != v33)
    {
      goto LABEL_42;
    }

LABEL_38:
    v34 = v27;
    v35 = v28;
    (*(v1 + 8))(v5, v0);
    sub_10002C064(v34, v35);
    goto LABEL_39;
  }

  v20 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v15, v20))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v7, v0);
    return 2;
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v15, v20, v22, v21, 2u);

  (*(v1 + 8))(v7, v0);
  return 2;
}

uint64_t sub_10005C4C8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AB0C0);
  sub_1000060E4(v0, qword_1011AB0C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005C54C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009F78(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10005C59C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = a1;
    v10 = Logger.scenes.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39[0] = v14;
      *v13 = 136446210;
      sub_100009F78(0, &qword_101189758, UIOpenURLContext_ptr);
      v34 = v3;
      sub_10005C54C(&qword_101189760, &qword_101189758, UIOpenURLContext_ptr);
      v15 = Set.description.getter();
      v17 = sub_1000105AC(v15, v16, v39);

      *(v13 + 4) = v17;
      v3 = v34;
      _os_log_impl(&_mh_execute_header, v11, v12, "[MainSceneDelegate] openURLContexts: %{public}s", v13, 0xCu);
      sub_10000959C(v14);
    }

    (*(v7 + 8))(v9, v6);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = __CocoaSet.count.getter() != 0;
      *(v3 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = v18;
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100009F78(0, &qword_101189758, UIOpenURLContext_ptr);
      sub_10005C54C(&qword_101189760, &qword_101189758, UIOpenURLContext_ptr);
      Set.Iterator.init(_cocoa:)();
      a2 = v39[0];
      v19 = v39[1];
      v21 = v39[2];
      v20 = v39[3];
      v22 = v39[4];
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = *(a2 + 16) != 0;
      v23 = -1 << *(a2 + 32);
      v19 = a2 + 56;
      v21 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(a2 + 56);

      v20 = 0;
    }

    if (a2 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v26 = v20;
      v27 = v22;
      v28 = v20;
      if (!v22)
      {
        break;
      }

LABEL_15:
      v29 = (v27 - 1) & v27;
      v30 = *(*(a2 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      if (!v30)
      {
LABEL_21:
        sub_10005C9F8(a2);

        return;
      }

      while (1)
      {
        v32 = v36;
        v33 = v30;
        sub_1002CFAEC(v33, v35);
        sub_1002C5A04();

        v20 = v28;
        v22 = v29;
        if ((a2 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v31 = __CocoaSet.Iterator.next()();
        if (v31)
        {
          v37 = v31;
          sub_100009F78(0, &qword_101189758, UIOpenURLContext_ptr);
          swift_dynamicCast();
          v30 = v38;
          v28 = v20;
          v29 = v22;
          if (v38)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= ((v21 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v27 = *(v19 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t Player.SnapshotController.init(windowScene:player:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  *(v3 + 32) = _swiftEmptyArrayStorage;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = a2;
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBE270;
  sub_10010FC20(&unk_1011A9FB0, &unk_100EF1D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  UIScreen.Dimensions.size.getter();
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  UIScreen.Dimensions.size.getter();
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v12 = UISceneDidEnterBackgroundNotification;
  v13 = UISceneWillEnterForegroundNotification;

  v14 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_10005CE5C, v11);

  *(v5 + 32) = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_100EBC6B0;
  UIScreen.Dimensions.size.getter();
  *(v15 + 56) = &type metadata for NotificationTrigger;
  *(v15 + 64) = &protocol witness table for NotificationTrigger;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v18 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v19 = UIScreenBrightnessDidChangeNotification;

  v20 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v15, 1, sub_10005D680, v18);

  *(v5 + 40) = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100EBC6B0;
  UIScreen.Dimensions.size.getter();
  *(v21 + 56) = &type metadata for NotificationTrigger;
  *(v21 + 64) = &protocol witness table for NotificationTrigger;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = UIApplicationProtectedDataDidBecomeAvailable;

  swift_allocObject();

  v26 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v21, 1, sub_10005DC8C, v24);

  *(v5 + 48) = v26;

  *(v3 + 32) = v5;

  return v3;
}

uint64_t sub_10005CDCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_10005CE04(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10005CE64();
  }

  return result;
}

double sub_10005CE64()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A90D0, &qword_100EEF678);
  __chkstk_darwin();
  v3 = &v36 - v2;
  v4 = sub_10010FC20(&unk_1011AFA60, &qword_100EF6D20);
  v38 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = sub_10010FC20(&qword_1011AC9B8, &qword_100EF6D28);
  v39 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v36 - v8;
  v10 = sub_10010FC20(&qword_1011AC9C0, &qword_100EF6D30);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin();
  v12 = &v36 - v11;
  v13 = sub_10010FC20(&qword_1011AC9C8, &qword_100EF6D38);
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = Strong, v18 = [Strong activationState], v17, v18 == 2))
  {
    if (*(v1 + 40))
    {
      return result;
    }

    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v37 = v3;
    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, qword_101219D38);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "[📸👁️] App is backgrounded: Observing for now playing changes", v23, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v44);

    v24 = *(v1 + 48);
    *(v1 + 48) = v44;

    swift_beginAccess();
    sub_10010FC20(&qword_1011ACC50, &qword_100EF7370);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100020674(&qword_1011AD130, &unk_1011AFA60, &qword_100EF6D20, &protocol conformance descriptor for Published<A>.Publisher);
    Publisher.dropFirst(_:)();
    (*(v38 + 8))(v6, v4);
    sub_100020674(&qword_1011AC9D0, &qword_1011AC9B8, &qword_100EF6D28, &protocol conformance descriptor for Publishers.Drop<A>);
    sub_100A37964();
    Publisher<>.removeDuplicates()();
    (*(v39 + 8))(v9, v7);
    sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v44 = v25;
    v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v27 = v37;
    (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
    sub_100020674(&qword_1011AC9F0, &qword_1011AC9C0, &qword_100EF6D30, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    sub_10001C070(&qword_1011AD100, &qword_1011A9F80, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v28 = v41;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v27, &qword_1011A90D0, &qword_100EEF678);

    (*(v40 + 8))(v12, v28);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_1011AC9F8, &qword_1011AC9C8, &qword_100EF6D38, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v29 = v43;
    v30 = Publisher<>.sink(receiveValue:)();

    (*(v42 + 8))(v15, v29);
    *(v1 + 40) = v30;
  }

  else
  {
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000060E4(v31, qword_101219D38);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[📸👁️] App is foregrounded: Stopping now playing changes observation", v34, 2u);
    }

    v35 = *(v1 + 64);
    *(v1 + 64) = 0;
    if (v35 == 1)
    {
      *(v1 + 72) = 0;
      *(v1 + 80) = 1;
    }

    *(v1 + 40) = 0;
  }

  return result;
}

double sub_10005D620(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10005D6A0(v2);
  }

  return result;
}

void sub_10005D6A0(char a1)
{
  if (*(v1 + 64) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 sharedApplication];
    v5 = [v4 isProtectedDataAvailable];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v7 = Strong, v8 = [Strong screen], v7, objc_msgSend(v8, "brightness"), v10 = v9, v8, v10 > 0.0))
      {
        v11 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (v11 == 1)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 1;
        }

        if (qword_1011A6A80 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_1000060E4(v12, qword_101219D38);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46 = v16;
          *v15 = 134349314;
          *(v15 + 4) = v10;
          *(v15 + 12) = 2080;
          v17 = [v3 sharedApplication];
          v18 = [v17 isProtectedDataAvailable];

          if (v18)
          {
            v19 = 0x64656B636F6C6E75;
          }

          else
          {
            v19 = 0x64656B636F6CLL;
          }

          if (v18)
          {
            v20 = 0xE800000000000000;
          }

          else
          {
            v20 = 0xE600000000000000;
          }

          v21 = sub_100010678(v19, v20, &v46);

          *(v15 + 14) = v21;
          _os_log_impl(&_mh_execute_header, v13, v14, "[📸] Brightness is at %{public}f, device is %s", v15, 0x16u);
          sub_10000959C(v16);
        }

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v46 = v25;
          *v24 = 136446210;
          v26 = String.init<A>(describing:)();
          v28 = sub_100010678(v26, v27, &v46);

          *(v24 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "[📸✅:%{public}s] Taking Snapshot!", v24, 0xCu);
          sub_10000959C(v25);
        }

        v29 = [v3 sharedApplication];
        [v29 _updateSnapshotForBackgroundApplication:0];
      }

      else
      {
        if (qword_1011A6A80 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_1000060E4(v37, qword_101219D38);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = v41;
          *v40 = 136446210;
          v42 = String.init<A>(describing:)();
          v44 = sub_100010678(v42, v43, &v46);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "[📸❌:%{public}s] Skipping: Screen brightness is 0", v40, 0xCu);
          sub_10000959C(v41);
        }
      }
    }

    else
    {
      if (qword_1011A6A80 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000060E4(v30, qword_101219D38);
      oslog = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47[0] = v33;
        *v32 = 136446210;
        LOBYTE(v46) = a1;
        v34 = String.init<A>(describing:)();
        v36 = sub_100010678(v34, v35, v47);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, oslog, v31, "[📸❌:%{public}s] Skipping Snapshot Request: Device is locked", v32, 0xCu);
        sub_10000959C(v33);
      }

      else
      {
      }
    }
  }
}

void sub_10005DD8C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v96 - v6;
  __chkstk_darwin();
  v99 = &v96 - v7;
  __chkstk_darwin();
  v98 = &v96 - v8;
  __chkstk_darwin();
  v10 = &v96 - v9;
  v11 = Logger.scenes.unsafeMutableAddressor();
  v12 = *(v3 + 16);
  v102 = v11;
  v106 = v3 + 16;
  v105 = v12;
  (v12)(v10);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v107 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v101 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136446210;
    v20 = v2;
    v21 = [v13 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v2 = v20;
    v25 = sub_1000105AC(v22, v24, &aBlock);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Main scene will enter foreground %{public}s", v18, 0xCu);
    sub_10000959C(v19);

    v5 = v101;
    v26 = v107;

    v27 = *(v26 + 8);
    v27(v10, v20);
  }

  else
  {

    v27 = *(v3 + 8);
    v27(v10, v2);
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v30 = qword_10117FC88;
    v31 = v13;
    if (v30 != -1)
    {
      swift_once();
    }

    v101 = v27;
    swift_beginAccess();
    v102 = v31;
    sub_10005EF28(&v114, v29);
    v32 = v114;
    swift_endAccess();

    sub_10005EDE8();
    v33 = [objc_opt_self() sharedCloudController];
    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = v33;
    [v33 becomeActive];

    [objc_opt_self() beginDiscoveringMediaLibraries];
    v35 = [objc_opt_self() currentNotificationCenter];
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v112 = sub_10006043C;
    v113 = v36;
    aBlock = _NSConcreteStackBlock;
    v109 = 1107296256;
    v110 = sub_1000603D0;
    v111 = &unk_1010ACEF0;
    v37 = _Block_copy(&aBlock);
    v38 = v35;

    v100 = v38;
    [v38 getBadgeNumberWithCompletionHandler:v37];
    _Block_release(v37);
    ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

    ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()();

    v39 = objc_opt_self();
    v40 = [v39 standardUserDefaults];
    SharePlayTogetherSession.needsDisplayNameAckDefaultsKey.unsafeMutableAddressor();

    v41 = String._bridgeToObjectiveC()();

    v42 = [v40 BOOLForKey:v41];

    v43 = [v39 standardUserDefaults];
    SharePlayTogetherSession.didShowDisplayNameAck.unsafeMutableAddressor();

    v44 = String._bridgeToObjectiveC()();

    v45 = [v43 BOOLForKey:v44];

    v46 = [objc_opt_self() sharedPrivacyInfo];
    LOBYTE(v44) = [v46 privacyAcknowledgementRequiredForMusic];

    if ((v44 & 1) == 0 && v42 && (v45 & 1) == 0)
    {
      v97 = v2;
      v47 = [objc_opt_self() sharedApplication];
      v48 = [v47 openSessions];
      sub_100009F78(0, &qword_101190C00, UISceneSession_ptr);
      sub_10005C54C(&unk_101190C08, &qword_101190C00, UISceneSession_ptr);
      v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10045BB4C(v49);
      v51 = v50;

      aBlock = _UIWindowSceneSessionRoleCarPlay;
      __chkstk_darwin();
      *(&v96 - 2) = &aBlock;
      LOBYTE(v49) = sub_10044D018(sub_10045DD68, (&v96 - 4), v51);

      if ((v49 & 1) == 0)
      {
        v66 = [objc_opt_self() shared];
        v67 = [v66 activeUserState];

        v68 = v97;
        if (v67 && (v69 = [v67 music], v67, v69) && (v70 = objc_msgSend(v69, "userProfile"), v69, v70) && (v71 = objc_msgSend(v70, "displayNameAccepted"), v70, v71))
        {
          v72 = Logger.sharePlayTogether.unsafeMutableAddressor();
          v73 = v98;
          v105(v98, v72, v68);
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          v76 = os_log_type_enabled(v74, v75);
          v77 = v101;
          if (v76)
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&_mh_execute_header, v74, v75, "[MainSceneDelegate] [TermsAckFlow] Tried to display but term was already accepted, removing defaults key", v78, 2u);
          }

          v77(v73, v68);
          v79 = [v39 standardUserDefaults];

          v80 = String._bridgeToObjectiveC()();

          [v79 removeObjectForKey:v80];
        }

        else
        {
          v81 = Logger.sharePlayTogether.unsafeMutableAddressor();
          v82 = v99;
          v105(v99, v81, v68);
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          v85 = os_log_type_enabled(v83, v84);
          v86 = v101;
          if (v85)
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "[MainSceneDelegate] [TermsAckFlow] Displaying ack flow", v87, 2u);
          }

          v86(v82, v68);
          sub_100761BE4(v29, 0, sub_10045BFC8, 0, sub_10045BFDC, 0);
        }

        goto LABEL_29;
      }

      v2 = v97;
    }

    v55 = Logger.sharePlayTogether.unsafeMutableAddressor();
    v56 = v104;
    v105(v104, v55, v2);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 67240704;
      *(v59 + 4) = v42;
      *(v59 + 8) = 1026;
      *(v59 + 10) = v45;
      *(v59 + 14) = 1026;
      v60 = [objc_opt_self() sharedApplication];
      v61 = [v60 openSessions];
      sub_100009F78(0, &qword_101190C00, UISceneSession_ptr);
      sub_10005C54C(&unk_101190C08, &qword_101190C00, UISceneSession_ptr);
      v62 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10045BB4C(v62);
      v64 = v63;

      aBlock = _UIWindowSceneSessionRoleCarPlay;
      __chkstk_darwin();
      *(&v96 - 2) = &aBlock;
      v65 = sub_10044D018(sub_10045D96C, (&v96 - 4), v64);

      *(v59 + 16) = v65 & 1;
      _os_log_impl(&_mh_execute_header, v57, v58, "[MainSceneDelegate] [TermsAckFlow] Not displaying ack flow. needsDisplayNameAck=%{BOOL,public}d, didShowDisplayNameAck=%{BOOL,public}d, CarPlay attached=%{BOOL,public}d", v59, 0x14u);
      v56 = v104;
    }

    (v101)(v56, v2);
LABEL_29:
    v88 = v103;
    v89 = v102;
    v90 = v100;
    v91 = [objc_opt_self() defaultCenter];
    if (qword_10117F748 != -1)
    {
      swift_once();
    }

    v92 = qword_101218D48;
    sub_10010FC20(&unk_1011839E0, &unk_100EBF440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    aBlock = 0xD000000000000018;
    v109 = 0x8000000100E4C560;
    AnyHashable.init<A>(_:)();
    v94 = *(v88 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction);
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v94;
    sub_100060CB0(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011801C8, &unk_100EBA510);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v91 postNotificationName:v92 object:0 userInfo:isa];

    return;
  }

  v105(v5, v102, v2);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Unsupported scene type", v54, 2u);
  }

  v27(v5, v2);
}

uint64_t sub_10005EBDC()
{

  return swift_deallocObject();
}

uint64_t sub_10005EC38()
{
  type metadata accessor for RoutingControllerWorkaround();
  swift_allocObject();
  result = sub_10005EC74();
  qword_101219500 = result;
  return result;
}

uint64_t sub_10005EC74()
{
  v1 = v0;
  *(v0 + 16) = &_swiftEmptySetSingleton;
  v2 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
  v3 = objc_allocWithZone(MPAVRoutingController);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithDataSource:v2 name:v4];

  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  sub_10005EDE8();
  v6 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 32) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, 0, 1, 1, sub_1007350B0, v7);

  return v1;
}

uint64_t sub_10005EDB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10005EDE8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.count.getter();

    if (v2)
    {
LABEL_3:
      v3 = objc_opt_self();
      aBlock[4] = sub_10006B1FC;
      aBlock[5] = v0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000603D0;
      aBlock[3] = &unk_1010BCF30;
      v4 = _Block_copy(aBlock);

      [v3 getActiveRouteWithTimeout:v4 completion:1.0];
      _Block_release(v4);
      return;
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_3;
  }

  [*(v0 + 24) setDiscoveryMode:0];
}

uint64_t sub_10005EF28(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10066F294(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1003B1538(v20 + 1, &qword_101183248, &qword_100EBED80);
    }

    v18 = v8;
    sub_100670AFC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1003B7164(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

void sub_10005F170(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10010FC20(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

Swift::Void __swiftcall ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v3 = &v6[-v2];
  v9 = 0;
  v7 = v0;
  v8 = &v9;
  UnfairLock.locked<A>(_:)(sub_10005F51C);
  if (v9 == 1)
  {
    static TaskPriority.userInitiated.getter();
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v1;

    sub_1008A3074(0, 0, v3, &unk_100EF1890, v5);

    sub_1000095E8(v3, &qword_1011A7F00, &qword_100EEDE10);
  }
}

void sub_10005F51C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if ((*(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) & 1) == 0)
  {
    **(v0 + 24) = 1;
    *(v1 + v2) = 1;
  }
}

uint64_t Logger.sharePlayTogether.unsafeMutableAddressor()
{
  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.sharePlayTogether);
}

uint64_t sub_10005F5C0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.sharePlayTogether);
  sub_1000060E4(v0, static Logger.sharePlayTogether);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005F640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10005F6F4(a1, v4, v5, v6);
}

uint64_t sub_10005F714()
{
  UnfairLock.locked<A>(_:)(sub_10005FD0C);
  v1 = *(v0 + 8);

  return v1();
}

void sub_10005F7AC(uint64_t a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v4 = v43 - v3;
  v5 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if (*(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) == 1)
  {
    if (qword_1011A6838 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_1011A9CE8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Needs Network Reachability Update", v9, 2u);
    }

    *(a1 + v5) = 0;
    v10 = [objc_opt_self() sharedCloudController];
    if (v10)
    {
      v11 = v10;
      if ([v10 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = [v11 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v49);

    v48[4] = v53;
    v48[5] = v54;
    v48[6] = v55;
    v48[7] = v56;
    v48[0] = v49;
    v48[1] = v50;
    v48[2] = v51;
    v48[3] = v52;
    sub_100014984(v48);
    v13 = BYTE1(v48[0]);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    if (v12 == v13)
    {
      if (v16)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Network Reachability status does not differ from currently known capabilities.", v42, 2u);
      }
    }

    else
    {
      v57 = v4;
      if (v16)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v43[1] = v1;
        v19 = v18;
        *&v49 = v18;
        *v17 = 136315138;
        if (v12)
        {
          v20 = 0x1000000000000012;
        }

        else
        {
          v20 = 0x1000000000000016;
        }

        v21 = v12;
        if (v12)
        {
          v12 = "Not Reachable 🔌👎";
        }

        else
        {
          v12 = "hangeNotification";
        }

        v22 = sub_100010678(v20, v12 | 0x8000000000000000, &v49);
        LOBYTE(v12) = v21;

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "Updating Network Reachability to: %s", v17, 0xCu);
        sub_10000959C(v19);
      }

      v23 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v45[4] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v45[5] = v24;
      v25 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v45[6] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v45[7] = v25;
      v26 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v45[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v45[1] = v26;
      v27 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v45[2] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v45[3] = v27;
      *(&v46[4] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 66);
      *(&v46[5] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 82);
      *(&v46[6] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 98);
      v46[7] = v25;
      *(v46 + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 2);
      *(&v46[1] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 18);
      *(&v46[2] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 34);
      *(&v46[3] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 50);
      LOBYTE(v46[0]) = v45[0];
      BYTE1(v46[0]) = v12;
      v28 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v51 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v52 = v28;
      v29 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v49 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v50 = v29;
      v30 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v55 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v56 = v30;
      v31 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v53 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v54 = v31;
      v47[0] = v49;
      v47[1] = v29;
      v47[2] = v51;
      v47[3] = v28;
      v47[4] = v53;
      v47[5] = v31;
      v47[6] = v55;
      v47[7] = v30;
      v32 = v46[0];
      v33 = v46[1];
      v34 = v46[3];
      v23[2] = v46[2];
      v23[3] = v34;
      *v23 = v32;
      v23[1] = v33;
      v35 = v46[4];
      v36 = v46[5];
      v37 = v46[7];
      v23[6] = v46[6];
      v23[7] = v37;
      v23[4] = v35;
      v23[5] = v36;
      sub_10001494C(v45, v44);
      sub_10001494C(&v49, v44);
      sub_10001494C(v46, v44);
      sub_100014984(v47);
      sub_10001645C(&v49);
      sub_100014984(&v49);
      sub_100014984(v46);
      v38 = type metadata accessor for TaskPriority();
      v39 = v57;
      (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
      type metadata accessor for MainActor();

      v40 = static MainActor.shared.getter();
      v41 = swift_allocObject();
      v41[2] = v40;
      v41[3] = &protocol witness table for MainActor;
      v41[4] = a1;
      sub_100969440(0, 0, v39, &unk_100EF1D38, v41);
    }
  }
}

uint64_t sub_10005FD28()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011A9CE8);
  sub_1000060E4(v0, qword_1011A9CE8);
  return Logger.init(subsystem:category:)();
}

void sub_1000603D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10006043C(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    result = [result integerValue];
    if (result >= 1)
    {

      return [v2 setBadgeCount:0 withCompletionHandler:0];
    }
  }

  return result;
}

uint64_t sub_100060AA8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

NSString sub_100060C78()
{
  result = String._bridgeToObjectiveC()();
  qword_101218D48 = result;
  return result;
}

unint64_t sub_100060CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011801C0, &qword_100EDD960);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, v13, &qword_1011801C8, &unk_100EBA510);
      result = sub_1000160B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100016270(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100060DEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8628, &qword_100EED8F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, v13, &unk_1011A8630, &qword_100EED8F8);
      result = sub_1000160B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100016270(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

double sub_100060F2C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Whitetail.Binding.setNeedsUpdate()();
  }

  return result;
}

Swift::Void __swiftcall Whitetail.Binding.setNeedsUpdate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 32));
  swift_endAccess();
  if ((*(v0 + 36) & 1) == 0)
  {
    *(v0 + 36) = 1;
    sub_100027140();
    v12 = v5;
    v9 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_10006B30C;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010F0758;
    v10 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100024844();
    sub_10010FC20(&unk_1011BADE0, &qword_100F0C060);
    sub_100024A2C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 32));
  swift_endAccess();
}

Swift::Void __swiftcall Application.startedTest(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  if (a1.value._object)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for Application();
  objc_msgSendSuper2(&v10, "startedTest:", v4);

  if (![v1 delegate] || (sub_10010FC20(&qword_10118C400, &qword_100EC7BF8), sub_10010FC20(&qword_10118C408, &qword_100EC7C00), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  v5 = *(&v8 + 1);
  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_1000095E8(&v7, &qword_10118C3F8, &unk_100EC7BE8);
    return;
  }

  v6 = v9;
  sub_10000954C(&v7, *(&v8 + 1));
  if (object)
  {
    (*(v6 + 8))(v1, countAndFlagsBits, object, v5, v6);
    sub_10000959C(&v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_100061494(void *a1, char *a2, char *a3)
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v8 = v36 - v7;

  v9 = sub_100061BE0(a2, a3);
  if (v10 == -1)
  {
    v16 = [a1 _extendLaunchTest];
    if (!v16)
    {
      return;
    }

    v17 = [a1 connectedScenes];
    sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
    sub_100061F5C();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v18);
    v20 = v19;

    if (v20 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = sub_1007E90D4(0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_41:
            if (_CocoaArrayWrapper.endIndex.getter())
            {

              sub_10010EFBC(_swiftEmptyArrayStorage);
              v30 = v33;
              goto LABEL_33;
            }

LABEL_32:

            v30 = &_swiftEmptySetSingleton;
LABEL_33:
            v31 = swift_allocObject();
            *(v31 + 16) = v30;
            __chkstk_darwin();
            v36[-4] = v32;
            v36[-3] = sub_10059FA7C;
            v34 = v3;
            UIViewController.traverseViewControllerHierarchy(_:)(sub_10059FA84, &v36[-6]);
            sub_10059DF88(v31, sub_10059FA7C, v3, &unk_1010B4148, sub_100029B6C, &unk_1010B4160);

            return;
          }

          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = [v22 delegate];

        if (v23 && (v36[0] = v23, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
        {
          if (*(&v38 + 1))
          {
            v24 = *(*sub_10000954C(&v37, *(&v38 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(&v37);
            if (v24)
            {
              v25 = *(v24 + 32);
              if ((v25 & 0x8000000000000000) != 0)
              {

                return;
              }

              v18 = v25;
              v26 = [v18 selectedTab];
              if (!v26)
              {
                goto LABEL_34;
              }

              v27 = v26;
              v28 = sub_10003F0FC();

              if (v28 > 3u)
              {
                if (v28 > 5u && v28 != 6)
                {
                  goto LABEL_34;
                }
              }

              else if (!v28)
              {

LABEL_30:
                v20 = [v18 selectedViewController];

                if (v20)
                {
                  v3 = swift_allocObject();
                  *(v3 + 16) = a2;
                  *(v3 + 24) = a3;
                  if (!(_swiftEmptyArrayStorage >> 62))
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_41;
                }

LABEL_35:

                return;
              }

              v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v29)
              {
                goto LABEL_30;
              }

LABEL_34:

              goto LABEL_35;
            }

LABEL_45:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }
        }

        else
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
        }

        sub_1000095E8(&v37, &unk_101184EA0, &unk_100EBFA20);
        goto LABEL_45;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

  if (v10 == 2 && v9 == 3 && (*&v37 = a2, *(&v37 + 1) = a3, v36[0] = 0x7262694C6D6F7246, v36[1] = 0xEB00000000797261, v11 = type metadata accessor for Locale(), (*(*(v11 - 8) + 56))(v8, 1, 1, v11), v35 = sub_100009838(), StringProtocol.range<A>(of:options:range:locale:)(), v13 = v12, sub_1000095E8(v8, &unk_101182EA0, &unk_100EBE980), (v13 & 1) == 0))
  {
    *&v37 = a2;
    *(&v37 + 1) = a3;

    String.removeSubrange(_:)();
    v15 = *(&v37 + 1);
    v14 = v37;
  }

  else
  {

    v14 = a2;
    v15 = a3;
  }

  sub_10059F378(v14, v15);
}

uint64_t sub_100061B34()
{

  return swift_deallocObject();
}

uint64_t sub_100061B6C()
{

  return swift_deallocObject();
}

uint64_t sub_100061BA4()
{

  return swift_deallocObject();
}

uint64_t sub_100061BE0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v5 = v21 - v4;
  v6._countAndFlagsBits = 0x657370616C6C6F43;
  v6._object = 0xEE00646E61707845;
  if (String.hasPrefix(_:)(v6))
  {

    return 0;
  }

  v8._countAndFlagsBits = 0x746E6573657250;
  v8._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v8))
  {

    return 1;
  }

  v9._countAndFlagsBits = 0x7373696D736944;
  v9._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v9))
  {
    goto LABEL_6;
  }

  v10._countAndFlagsBits = 0x6574616C756D6953;
  v10._object = 0xEE006C6C6F726353;
  if (String.hasPrefix(_:)(v10))
  {
    v21[2] = a1;
    v21[3] = a2;
    v21[0] = 0x746E6F7A69726F48;
    v21[1] = 0xEA00000000006C61;
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_100009838();
    StringProtocol.range<A>(of:options:range:locale:)();
    v13 = v12;
    sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980);

    return (v13 & 1) == 0;
  }

  v14._countAndFlagsBits = 0x6C6C6F726353;
  v14._object = 0xE600000000000000;
  if (String.hasPrefix(_:)(v14))
  {
LABEL_6:

    return 2;
  }

  v15._countAndFlagsBits = 0x6F54686374697753;
  v15._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v15) || (v16._countAndFlagsBits = 0x6154686374697753, v16._object = 0xE900000000000062, String.hasPrefix(_:)(v16)))
  {

    return 3;
  }

  v17._countAndFlagsBits = 0x657461746F52;
  v17._object = 0xE600000000000000;
  if (!String.hasPrefix(_:)(v17))
  {
    v19._countAndFlagsBits = 0x657A69736552;
    v19._object = 0xE600000000000000;
    v20 = String.hasPrefix(_:)(v19);

    if (v20)
    {
      return 4;
    }

    return 0;
  }

  result = sub_10059F220(a1, a2);
  if (v18)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100061F5C()
{
  result = qword_101183DE0;
  if (!qword_101183DE0)
  {
    sub_100009F78(255, &qword_1011839F0, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183DE0);
  }

  return result;
}

void sub_100061FC4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100062364();
    sub_100061F5C();
    Set.Iterator.init(_cocoa:)();
    v1 = v29;
    v2 = v30;
    v3 = v31;
    v4 = v32;
    v5 = v33;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v26 = v1;
LABEL_8:
  v9 = v4;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100062364(), swift_dynamicCast(), v13 = v28, v4 = v9, v12 = v5, !v28))
      {
LABEL_35:
        sub_10005C9F8(v1);
        return;
      }

      goto LABEL_19;
    }

    v10 = v9;
    v11 = v5;
    v4 = v9;
    if (!v5)
    {
      break;
    }

LABEL_15:
    v12 = (v11 - 1) & v11;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v13)
    {
      goto LABEL_35;
    }

LABEL_19:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v27 = v12;
      v16 = v13;
      v17 = [v15 session];
      v18 = [v17 role];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {

LABEL_27:
        v5 = v27;
        if ([v16 delegate])
        {
          type metadata accessor for MainSceneDelegate();
          v25 = swift_dynamicCastClass();

          if (v25)
          {
            swift_unknownObjectRelease();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v1 = v26;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v9 = v4;
        v1 = v26;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_27;
        }

        v9 = v4;
        v1 = v26;
        v5 = v27;
      }
    }

    else
    {

      v9 = v4;
      v5 = v12;
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_100062364()
{
  result = qword_1011839F0;
  if (!qword_1011839F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011839F0);
  }

  return result;
}

Swift::Void __swiftcall Window.layoutSubviews()()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  v2 = [v0 screen];
  v3 = UIScreen.dimensions.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = &v1[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions];
  v11.n128_u64[0] = *&v1[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions + 16];
  v12.n128_u64[0] = *&v1[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions + 24];
  if ((static UIScreen.Dimensions.== infix(_:_:)(v11, v12, *&v1[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions + 32], *&v1[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions + 40], v3, v5, v7, v9) & 1) == 0)
  {
    v10[2] = v3;
    v10[3] = v5;
    v10[4] = v7;
    v10[5] = v9;
    v13 = &v1[OBJC_IVAR____TtC5Music6Window_screenDimensionsDidChangeHandler];
    swift_beginAccess();
    v14 = *v13;
    if (*v13)
    {
      v15 = *(v13 + 1);

      v14(v16, v3, v5, v7, v9);
      sub_100020438(v14, v15);
    }
  }

  [v1 bounds];
  v18 = v17;
  v20 = v19;
  type metadata accessor for CGSize(0);
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    *v10 = v18;
    v10[1] = v20;
    v21 = &v1[OBJC_IVAR____TtC5Music6Window_boundsSizeDidChangeHandler];
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = *(v21 + 1);

      v22(v24, v18, v20);
      sub_100020438(v22, v23);
    }
  }
}

uint64_t static UIScreen.Dimensions.== infix(_:_:)(__n128 a1, __n128 a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((static CGSize.==~ infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static CGSize.==~ infix(_:_:)();
}

void sub_100062670()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v48, "viewDidLayoutSubviews");
  v2 = [v0 selectedViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (!v4)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v49.origin.x = v7;
    v49.origin.y = v9;
    v49.size.width = v11;
    v49.size.height = v13;
    CGRectGetWidth(v49);
    v14 = HI.SizeClass.init(_:)();
    v15 = HI.SizeClass.margin.getter(v14);
    v16 = [v1 bottomAccessory];
    if (v16)
    {
    }

    v17 = [v1 traitCollection];
    v18 = [v17 userInterfaceIdiom];

    if (v18 == 6)
    {
      HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor();
      v19 = [v1 bottomAccessory];
      if (v19)
      {
      }
    }

    [v3 additionalSafeAreaInsets];
    [v3 setAdditionalSafeAreaInsets:?];
    v20 = [v3 view];
    if (!v20)
    {
      goto LABEL_31;
    }

    v21 = v20;
    [v20 setDirectionalLayoutMargins:{0.0, v15, 0.0, v15}];
  }

  v22 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (v22)
  {
    v23 = v22;
    v24 = [v1 traitCollection];
    v25 = [v24 horizontalSizeClass];

    if (v25 >= 2)
    {
      if (v25 != 2)
      {
LABEL_18:
        v29 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction];
        if (v29)
        {
          v30 = v29;
          sub_10005A43C();
        }

        goto LABEL_21;
      }

      v28 = [v23 view];
      if (!v28)
      {
LABEL_33:
        __break(1u);
        return;
      }

      v27 = v28;
      [v28 setDirectionalLayoutMargins:{12.0, 8.0, 12.0, 8.0}];
    }

    else
    {
      v26 = [v23 view];
      if (!v26)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v27 = v26;
      [v26 setDirectionalLayoutMargins:{9.0, 16.0, 9.0, 20.0}];
    }

    goto LABEL_18;
  }

LABEL_21:
  v31 = [v1 selectedViewController];
  if (v31)
  {
    v32 = v31;
    type metadata accessor for NavigationController();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      [v33 _layoutTopViewController];
    }
  }

  v34 = [v1 view];
  if (!v34)
  {
    __break(1u);
    goto LABEL_30;
  }

  v35 = v34;
  v36 = UIView.noticePresenter.getter();

  if (v36)
  {
    sub_100062AB8();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = (*(*v36 + 304))(v47);
    v46[3] = v38;
    v46[4] = v40;
    v46[5] = v42;
    v46[6] = v44;
    v45(v47, 0);
  }
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

void sub_100062AB8()
{
  v2 = [v0 presentedViewController];
  if (!v2)
  {
LABEL_4:
    v3 = [v0 selectedViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 view];

      if (!v5)
      {
        __break(1u);
        goto LABEL_7;
      }
    }

    else
    {
      v7 = [v0 view];
      if (!v7)
      {
        goto LABEL_14;
      }

      v5 = v7;
    }

    [v5 directionalLayoutMargins];
    goto LABEL_12;
  }

  v1 = v2;
  if ([v2 isBeingDismissed])
  {

    goto LABEL_4;
  }

LABEL_7:
  v6 = [v1 view];
  if (v6)
  {
    v5 = v6;
    [v6 directionalLayoutMargins];

LABEL_12:
    return;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_100062D6C(void *a1, void (*a2)(id))
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = [objc_opt_self() systemRoute];
  }

  v4 = a1;
  a2(v5);
}

void sub_100062E00(void *a1)
{
  if (qword_1011A6A80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219D38);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v6 = 136446210;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100010678(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating playerPath with route=%{public}s", v6, 0xCu);
    sub_10000959C(v13);
  }

  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(sub_100063008);
}

void sub_100063028(uint64_t a1, void *a2)
{
  v4 = sub_10002E360();
  v5 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];

  v6 = [v5 route];
  if (v6 && (sub_100009F78(0, &qword_1011ADA28, MPAVRoute_ptr), v7 = v6, v8 = a2, v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9 & 1) != 0) && ((v10 = [v7 connection]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, "isInvalidated"), v11, (v12 & 1) == 0)))
  {
  }

  else
  {
    v13 = [a2 isDeviceRoute];
    v14 = objc_opt_self();
    if (v13)
    {
      v15 = v14;
      if (qword_1011A6A50 != -1)
      {
        swift_once();
      }

      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 systemMusicPathWithRoute:a2 playerID:v16];
    }

    else
    {
      v17 = [v14 pathWithRoute:a2 bundleID:0 playerID:0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;

    static Published.subscript.setter();
    sub_100A5A9A8();

    v19 = *(a1 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
    v20 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
    v21 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
    *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v18;
    sub_100009F78(0, &qword_1011A8538, MPCPlayerPath_ptr);
    v22 = v18;
    v23 = v19;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v24 = *&v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
      v25 = [v24 request];
      if (v25)
      {
        v26 = *&v19[v20];
        v27 = v25;
        [v25 setPlayerPath:v26];
      }

      [v24 setNeedsReloadForSignificantRequestChange];
    }

    v28 = _MPAVRouteConnectionDidInvalidateNotification;
    v29 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v30 = v22;
    *(a1 + OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, v22, 1, 1, sub_100A6FD84, v29);

    v31 = [v30 route];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v31 outputDeviceRoute:0];
      v34 = [objc_opt_self() sharedController];
      [v34 setActiveDataSource:v33];
    }

    else
    {
    }
  }
}

void sub_100063448(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t sub_1000634F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009740(a1, v4);
}

uint64_t sub_1000635A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100063660(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100063718(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009740(a1, v4);
}

uint64_t sub_1000637D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100063888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100063940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1000639F4(a1, v4, v5, v6);
}

uint64_t sub_1000639F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_100A5A490;

  return Player.startEngineIfNeeded()();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_100063B40, v3, v2);
}

uint64_t sub_100063B40()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      sub_100063C5C(0);
    }

    v3 = static MainActor.shared.getter();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(sub_100064108, v4, v6);
  }
}

void sub_100063C5C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    if (qword_1011A6A80 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v5 = type metadata accessor for Logger();
      sub_1000060E4(v5, qword_101219D38);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "╭ Updated Engine State", v8, 2u);
      }

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v38[0] = v12;
        *v11 = 136446210;
        if (*(v2 + v4) > 1u)
        {
          if (*(v2 + v4) == 2)
          {
            v13 = 0xA900000000000079;
            v14 = 0x6461655220859CE2;
          }

          else
          {
            v13 = 0xAE0064656C6C6174;
            v14 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v2 + v4))
        {
          v13 = 0xAD0000676E697472;
          v14 = 0x61745320809A9FF0;
        }

        else
        {
          v13 = 0xA700000000000000;
          v14 = 0x66664F208C9DE2;
        }

        v15 = sub_100010678(v14, v13, v38);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "╰ %{public}s", v11, 0xCu);
        sub_10000959C(v12);
      }

      if (*(v2 + v4) <= 1u)
      {
        break;
      }

      if (*(v2 + v4) != 2)
      {
        return;
      }

      v26 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
      swift_beginAccess();
      v27 = *(v2 + v26);
      v28 = *(v27 + 16);

      if (!v28)
      {
LABEL_28:

        *(v2 + v26) = _swiftEmptyArrayStorage;

        return;
      }

      v29 = 0;
      v30 = v27 + 40;
      while (v29 < *(v27 + 16))
      {
        ++v29;
        v31 = *(v30 - 8);

        v31(v32);

        v30 += 16;
        if (v28 == v29)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    if (*(v2 + v4))
    {
      [*(v2 + OBJC_IVAR____TtC9MusicCore6Player_engine) start];
      v33 = sub_10001B5D8();
      v34 = v33;
      v35 = v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if (v35 != 1)
      {
        [*&v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller] beginAutomaticResponseLoading];
      }

      v22 = sub_10002E360();
      v36 = v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if ((v36 & 1) == 0)
      {
        v24 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v25 = "beginAutomaticResponseLoading";
        goto LABEL_34;
      }
    }

    else
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "❌ Stopped engine… which is not supposed to happen", v18, 2u);
      }

      v19 = sub_10001B5D8();
      v20 = v19;
      v21 = v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v21)
      {
        [*&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller] endAutomaticResponseLoading];
      }

      v22 = sub_10002E360();
      v23 = v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v23)
      {
        v24 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v25 = "endAutomaticResponseLoading";
LABEL_34:
        v37 = v22;
        [v24 v25];

        return;
      }
    }
  }
}

uint64_t sub_100064108()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_100A5A634;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1000642C0(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000642C0((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = sub_100A6DDA0;
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2, v10);
}

void *sub_1000642E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_1011B7CA0, &qword_100F09E50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011B6050, &qword_100F07030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100064418(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_1011BC0D8, &qword_100F0F008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10006454C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10006460C(a1, v4, v5, v7, v6);
}

uint64_t sub_10006460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000646A4, v7, v6);
}

uint64_t sub_1000646A4()
{
  v1 = *(v0 + 24);

  sub_100064710(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_100064710(void *a1)
{
  if (!a1 || (v3 = [a1 tracklist]) == 0)
  {
LABEL_8:
    v6 = v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor;
    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
    v8 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 8);
    v9 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16);
    v10 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 24);
    v11 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 32);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;

    sub_100065164(v7, v8, v9, v10, v11);
    return;
  }

  v107 = v3;
  v4 = [v3 playingItem];
  if (!v4)
  {
    v5 = v107;
    goto LABEL_7;
  }

  v5 = v4;
  if ([v4 isPlaceholder])
  {

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v107 uniqueIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = (v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  if (!*(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16))
  {

LABEL_17:
    v18 = [v5 contentItemIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v107 uniqueIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = *v16;
    v27 = v16[1];
    v28 = v16[2];
    v29 = v16[3];
    v30 = v16[4];
    *v16 = 1;
    v16[1] = v19;
    v16[2] = v21;
    v16[3] = v23;
    v16[4] = v25;
    sub_100065164(v26, v27, v28, v29, v30);
    goto LABEL_18;
  }

  if (v13 == v16[3] && v15 == v16[4])
  {

    goto LABEL_18;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v31 = [v5 contentItemIdentifier];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = v16[2];
  if (v35)
  {
    if (v32 == v16[1] && v34 == v35)
    {
      v36 = 1;
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v36 = 0;
  }

  if (v16[2])
  {
    v37 = *v16;
  }

  else
  {
    v37 = 0;
  }

  if ([a1 videoOutput])
  {
    v110 = &OBJC_PROTOCOL___MPCVideoOutput_0;
    v38 = swift_dynamicCastObjCProtocolConditional();
    if (!v38 || (v39 = v38, swift_getObjectType(), sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr), !swift_dynamicCastMetatype()))
    {

      swift_unknownObjectRelease();
      return;
    }

    v106 = v1;
    type metadata accessor for MPCPlayerResponse.VideoContext(0);
    swift_allocObject();
    v40 = MPCPlayerResponse.VideoContext.init(output:)(v39);
    if ((v37 & 1) == 0 || (v36 & 1) == 0 || (v100 = v40, [a1 state] != 2))
    {

LABEL_40:

      return;
    }

    v99 = objc_opt_self();
    v41 = [v99 sharedApplication];
    v42 = [v41 openSessions];

    sub_100009F78(0, &qword_1011ACC58, UISceneSession_ptr);
    sub_100A53570();
    v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v43 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v43 = v111;
      v44 = v112;
      v45 = v113;
      v46 = v114;
      v47 = v115;
    }

    else
    {
      v48 = -1 << *(v43 + 32);
      v44 = v43 + 56;
      v45 = ~v48;
      v49 = -v48;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      else
      {
        v50 = -1;
      }

      v47 = v50 & *(v43 + 56);

      v46 = 0;
    }

    v51 = (v45 + 64) >> 6;
    v102 = v44;
    if (v43 < 0)
    {
      goto LABEL_51;
    }

LABEL_46:
    v52 = v46;
    v53 = v47;
    v54 = v46;
    if (!v47)
    {
      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v54 >= v51)
        {
LABEL_61:
          sub_10005C9F8(v43);

          return;
        }

        v53 = *(v44 + 8 * v54);
        ++v52;
        if (v53)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_93:
      v92 = v105;
      v91 = v106;
      v71 = v54;
LABEL_89:
      sub_10005C9F8(v71);

      v104 = 0;
      if (!v16[2])
      {
        goto LABEL_91;
      }

LABEL_90:
      *v16 = 0;
LABEL_91:
      v93 = *(v91 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
      v94 = *(v91 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
      sub_10000954C((v91 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v93);
      v108[0] = v100;
      v109 = 1;
      v95 = *(v94 + 8);

      v95(v108, v93, v94);

      sub_100A52D6C(v108);
      return;
    }

LABEL_50:
    v55 = (v53 - 1) & v53;
    v56 = *(*(v43 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v53)))));
    while (1)
    {
      if (!v56)
      {
        goto LABEL_61;
      }

      v58 = v43;
      v105 = v56;
      v59 = [v56 role];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
      if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
      {
        break;
      }

      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v65)
      {
        goto LABEL_63;
      }

      v46 = v54;
      v47 = v55;
      v43 = v58;
      v44 = v102;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_51:
      v57 = __CocoaSet.Iterator.next()();
      if (!v57)
      {
        goto LABEL_61;
      }

      v116 = v57;
      swift_dynamicCast();
      v56 = v108[0];
      v54 = v46;
      v55 = v47;
    }

LABEL_63:
    sub_10005C9F8(v58);

    v66 = [v105 scene];
    if (!v66 || (v67 = v66, v68 = [v66 activationState], v67, v68))
    {

      goto LABEL_40;
    }

    v69 = [v99 sharedApplication];
    v70 = [v69 openSessions];

    v71 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v71 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v71 = v116;
      v72 = v117;
      v73 = v118;
      v74 = v119;
      v75 = v120;
    }

    else
    {
      v76 = -1 << *(v71 + 32);
      v72 = v71 + 56;
      v73 = ~v76;
      v77 = -v76;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      else
      {
        v78 = -1;
      }

      v75 = v78 & *(v71 + 56);

      v74 = 0;
    }

    v79 = (v73 + 64) >> 6;
    v101 = v72;
    if (v71 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    v80 = v74;
    v81 = v75;
    v82 = v74;
    if (v75)
    {
LABEL_77:
      v103 = (v81 - 1) & v81;
      v83 = *(*(v71 + 48) + ((v82 << 9) | (8 * __clz(__rbit64(v81)))));
      while (1)
      {
        v54 = v71;
        if (!v83)
        {
          goto LABEL_93;
        }

        v104 = v83;
        v84 = [v83 role];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;
        if (v85 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v87 == v88)
        {
          break;
        }

        v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v90)
        {
          goto LABEL_95;
        }

        v74 = v82;
        v71 = v54;
        v72 = v101;
        v75 = v103;
        if ((v71 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_88;
        }

        swift_dynamicCast();
        v83 = v108[0];
        v82 = v74;
        v103 = v75;
      }

LABEL_95:
      sub_10005C9F8(v54);

      v96 = [v104 scene];
      if (v96)
      {
        v97 = v96;
        v98 = [v96 activationState];

        if (v98 == -1)
        {
          v92 = v105;
          v91 = v106;
          if (!v16[2])
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }
      }

      else
      {
      }

      goto LABEL_40;
    }

    while (1)
    {
      v82 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v82 >= v79)
      {
LABEL_88:
        v92 = v105;
        v91 = v106;
        goto LABEL_89;
      }

      v81 = *(v72 + 8 * v82);
      ++v80;
      if (v81)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_100065164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1000651A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1000652A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    *(Strong + 16) = v2;

    sub_100065328(v5);
  }

  return result;
}

double sub_100065328(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin();
  v92 = &v81 - v5;
  v6 = sub_10010FC20(&unk_101183B20, &unk_100EBDF20);
  v96 = *(v6 - 8);
  __chkstk_darwin();
  v95 = &v81 - v7;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v91 = &v81 - v8;
  v9 = sub_10010FC20(&qword_101182148, &qword_100EBDF30);
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  __chkstk_darwin();
  v86 = &v81 - v11;
  v12 = *(sub_10010FC20(&unk_101182150, &qword_100EBDF38) - 8);
  __chkstk_darwin();
  v89 = &v81 - v14;
  v90 = v13;
  v15 = *(v1 + 32);
  v18 = *(v15 + 16);
  v16 = v15 + 16;
  v17 = v18;
  if (v18)
  {
    v19 = *(v1 + 16);
    v97 = *(v16 + 16 * v17);
    if (v19)
    {
      v20 = *(*v19 + 216);
      swift_unknownObjectRetain();

      v22 = v20(v21);

      if (a1)
      {
        v24 = (*(*a1 + 216))(v23);
        ObjectType = swift_getObjectType();
        *&v99 = v24;
        v25 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_10000959C(&v99);
      }

      else
      {
        v25 = 0;
      }

      v26 = [v22 isEqual:v25];

      swift_unknownObjectRelease();
      if (v26)
      {
        goto LABEL_21;
      }

      v27 = *(v2 + 16);
      if (v27)
      {
        v28 = qword_10117F230;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000060E4(v29, qword_101181F90);
        swift_unknownObjectRetain();

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v85 = v6;
          v33 = v32;
          v98[0] = swift_slowAlloc();
          *v33 = 136446466;
          v34 = *(*v27 + 240);
          v84 = v12;

          v36 = v34(v35);
          v38 = v37;

          v39 = sub_1000105AC(v36, v38, v98);

          *(v33 + 4) = v39;
          *(v33 + 12) = 2082;
          v99 = v97;
          swift_unknownObjectRetain();
          sub_10010FC20(&qword_101182128, &unk_100EBDF10);
          v40 = String.init<A>(describing:)();
          v42 = sub_1000105AC(v40, v41, v98);

          *(v33 + 14) = v42;
          v12 = v84;
          _os_log_impl(&_mh_execute_header, v30, v31, "Adding videoContext==%{public}s to container=%{public}s", v33, 0x16u);
          swift_arrayDestroy();

          v6 = v85;
        }

        v43 = swift_getObjectType();
        (*(*(&v97 + 1) + 8))(v27, v43);
        goto LABEL_20;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (!a1)
    {
LABEL_21:
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    v44 = qword_10117F230;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000060E4(v45, qword_101181F90);
    swift_unknownObjectRetain();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v85 = v6;
      v49 = v48;
      v98[0] = swift_slowAlloc();
      *v49 = 136446466;
      v50 = *(*a1 + 240);
      v84 = v12;

      v52 = v50(v51);
      v54 = v53;

      v55 = sub_1000105AC(v52, v54, v98);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2082;
      v99 = v97;
      swift_unknownObjectRetain();
      sub_10010FC20(&qword_101182128, &unk_100EBDF10);
      v56 = String.init<A>(describing:)();
      v58 = sub_1000105AC(v56, v57, v98);

      *(v49 + 14) = v58;
      v12 = v84;
      _os_log_impl(&_mh_execute_header, v46, v47, "Removing videoContext=%{public}s from container=%{public}s", v49, 0x16u);
      swift_arrayDestroy();

      v6 = v85;
    }

    v59 = swift_getObjectType();
    (*(*(&v97 + 1) + 16))(a1, v59);
LABEL_20:

    goto LABEL_21;
  }

LABEL_22:
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010E5A8(_swiftEmptyArrayStorage);
    v60 = v80;
  }

  else
  {
    v60 = &_swiftEmptySetSingleton;
  }

  swift_beginAccess();
  *(v2 + 24) = v60;

  v62 = *(v2 + 16);
  if (v62)
  {
    v63 = *(*v62 + 192);

    v65 = v86;
    v63(v64);
    sub_100027010();
    v66 = static OS_dispatch_queue.main.getter();
    v85 = v6;
    v67 = v66;
    v98[0] = v66;
    v84 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v68 = *(v84 - 8);
    v83 = *(v68 + 56);
    *&v97 = v68 + 56;
    v69 = v12;
    v70 = v91;
    v83(v91, 1, 1, v84);
    v82 = &protocol conformance descriptor for Published<A>.Publisher;
    sub_100020674(&unk_101182160, &qword_101182148, &qword_100EBDF30, &protocol conformance descriptor for Published<A>.Publisher);
    v81 = sub_1000206BC();
    v71 = v89;
    v72 = v87;
    Publisher.receive<A>(on:options:)();
    sub_10013A3C8(v70);

    (*(v88 + 8))(v65, v72);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&unk_101182170, &unk_101182150, &qword_100EBDF38, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v73 = v90;
    Publisher<>.sink(receiveValue:)();

    (*(v69 + 8))(v71, v73);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v75 = v92;
    (*(*v62 + 144))(v74);
    v76 = static OS_dispatch_queue.main.getter();
    v98[0] = v76;
    v83(v70, 1, 1, v84);
    sub_100020674(&qword_101184280, &unk_101182130, &unk_100EBF5B0, v82);
    v78 = v94;
    v77 = v95;
    Publisher.receive<A>(on:options:)();
    sub_10013A3C8(v70);

    (*(v93 + 8))(v75, v78);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&unk_101182180, &unk_101183B20, &unk_100EBDF20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v79 = v85;
    Publisher<>.sink(receiveValue:)();

    (*(v96 + 8))(v77, v79);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100065F88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_100065FC0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = objc_allocWithZone(type metadata accessor for MCDSharePlayTogetherViewModel());
    v3 = v1;
    v4 = sub_10013A078(v3);
    v5 = qword_101218AE8;
    qword_101218AE8 = v4;
    v6 = v4;

    v7 = [objc_opt_self() defaultCenter];
    if (qword_10117F208 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_101218648 object:0];

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *((swift_isaMask & *v3) + 0x360);

    v9(sub_10035F630, v8);
  }

  else
  {
    v10 = qword_101218AE8;
    qword_101218AE8 = 0;

    v11 = [objc_opt_self() defaultCenter];
    v12 = v11;
    if (qword_10117F208 != -1)
    {
      swift_once();
      v11 = v12;
    }

    [v11 postNotificationName:qword_101218648 object:0];
  }
}

uint64_t sub_1000661F4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

NSString sub_10006622C()
{
  result = String._bridgeToObjectiveC()();
  qword_101218648 = result;
  return result;
}

void sub_1000662D0(id *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music22QuickActionsController_nowPlaying);
    *(Strong + OBJC_IVAR____TtC5Music22QuickActionsController_nowPlaying) = v2;
    if (v5)
    {
      if (v2)
      {
        sub_100009F78(0, &qword_10118D500, MPCPlayerResponse_ptr);
        v2 = v2;
        v6 = v5;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {

          v4 = v6;
LABEL_9:

          return;
        }
      }
    }

    else
    {
      if (!v2)
      {
        goto LABEL_9;
      }

      v2 = v2;
    }

    sub_10001C32C();

    v4 = v5;
    goto LABEL_9;
  }
}

uint64_t sub_1000663CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  v4[7] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_10118D4D0, &qword_100EC91F0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_10118D4D8, &unk_100EC91F8);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Variant();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_101181AC8, &qword_100EBD570);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000666E4, v10, v9);
}

uint64_t sub_100066630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1000663CC(a1, v4, v5, v6);
}

uint64_t sub_1000666E4()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v17 = v0[12];
  v18 = v0[18];
  v16 = v0[11];
  v6 = v0[10];
  v15 = v0[9];
  v13 = v0[8];
  v14 = v0[13];
  v12 = v0[7];
  v7 = v0[6];

  type metadata accessor for Playlist();
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  (*(v3 + 104))(v4, enum case for Playlist.Variant.favoriteSongs(_:), v5);
  sub_100066AD0();
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  (*(v3 + 8))(v4, v5);
  sub_100020674(&qword_10118D4E0, &qword_101181AC8, &qword_100EBD570, &protocol conformance descriptor for MusicLibraryRequest<A>);
  *(v7 + OBJC_IVAR____TtC5Music22QuickActionsController_fspAutoupdatingResponse) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

  dispatch thunk of MusicAutoupdatingResponse.$response.getter();

  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v0[5] = v8;
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v9 - 8) + 56))(v12, 1, 1, v9);
  sub_100020674(&qword_10118D4E8, &qword_10118D4D0, &qword_100EC91F0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000206BC();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v12, &qword_101182140, &unk_100EBD2A0);

  (*(v15 + 8))(v6, v13);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_10118D4F0, &qword_10118D4D8, &unk_100EC91F8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  Publisher<>.sink(receiveValue:)();

  (*(v17 + 8))(v14, v16);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v18 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

unint64_t sub_100066AD0()
{
  result = qword_10118A3C0;
  if (!qword_10118A3C0)
  {
    type metadata accessor for Playlist.Variant();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A3C0);
  }

  return result;
}

double sub_100066B2C(__int128 *a1, uint64_t a2)
{
  v2 = a1[5];
  v39 = a1[4];
  v40 = v2;
  v3 = a1[7];
  v41 = a1[6];
  v42 = v3;
  v4 = a1[1];
  v35 = *a1;
  v36 = v4;
  v5 = a1[3];
  v37 = a1[2];
  v38 = v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v28[8] = v35;
    v28[9] = v36;
    v28[10] = v37;
    v28[11] = v38;
    UIScreen.Dimensions.size.getter();
    v9 = (v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
    v10 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
    v11 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
    v12 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
    v34[2] = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
    v34[3] = v12;
    v34[0] = v10;
    v34[1] = v11;
    v13 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
    v14 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
    v15 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
    v34[6] = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
    v34[7] = v15;
    v34[4] = v13;
    v34[5] = v14;
    v16 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
    v17 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
    v18 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
    v33[2] = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
    v33[3] = v18;
    v33[0] = v16;
    v33[1] = v17;
    v19 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
    v21 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
    v20 = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
    v33[6] = *(v8 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
    v33[7] = v19;
    v33[4] = v21;
    v33[5] = v20;
    v22 = v35;
    v23 = v36;
    v24 = v38;
    v9[2] = v37;
    v9[3] = v24;
    *v9 = v22;
    v9[1] = v23;
    v25 = v29;
    v26 = v30;
    v27 = v32;
    v9[6] = v31;
    v9[7] = v27;
    v9[4] = v25;
    v9[5] = v26;
    sub_1000148F0(&v35, v28);
    sub_1000148F0(&v35, v28);
    sub_1000089F8(v34, v28, &qword_101182BC0, qword_100EBE5D8);
    sub_1000095E8(v33, &qword_101182BC0, qword_100EBE5D8);
    sub_100066CB0(v34);
    sub_1000095E8(v34, &qword_101182BC0, qword_100EBE5D8);
    sub_100014984(&v35);
  }

  return result;
}

void sub_100066CB0(_OWORD *a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
  v5 = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
  v46[4] = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
  v46[5] = v5;
  v6 = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
  v46[6] = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
  v46[7] = v6;
  v7 = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
  v46[0] = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
  v46[1] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
  v46[2] = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
  v46[3] = v8;
  if (sub_100066F78(v46) == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4[1];
  }

  v10 = a1[5];
  v45[4] = a1[4];
  v45[5] = v10;
  v11 = a1[7];
  v45[6] = a1[6];
  v45[7] = v11;
  v12 = a1[1];
  v45[0] = *a1;
  v45[1] = v12;
  v13 = a1[3];
  v45[2] = a1[2];
  v45[3] = v13;
  if (sub_100066F78(v45) == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 ^ BYTE1(v45[0]);
  }

  v15 = *(v4 + 5);
  v40[4] = *(v4 + 4);
  v40[5] = v15;
  v16 = *(v4 + 7);
  v40[6] = *(v4 + 6);
  v40[7] = v16;
  v17 = *(v4 + 1);
  v40[0] = *v4;
  v40[1] = v17;
  v18 = *(v4 + 3);
  v40[2] = *(v4 + 2);
  v40[3] = v18;
  if (sub_100066F78(v40) == 1)
  {
    v19 = 4;
  }

  else
  {
    v19 = v4[96];
  }

  v20 = a1[5];
  v42[4] = a1[4];
  v42[5] = v20;
  v21 = a1[7];
  v43 = a1[6];
  v44 = v21;
  v22 = a1[1];
  v42[0] = *a1;
  v42[1] = v22;
  v23 = a1[3];
  v42[2] = a1[2];
  v42[3] = v23;
  v24 = sub_100066F78(v42);
  v25 = v19 == 4 && v24 == 1;
  if (v24 != 1 && v19 != 4)
  {
    v25 = sub_100017618(v43, v19);
  }

  v26 = *(v4 + 5);
  v39[4] = *(v4 + 4);
  v39[5] = v26;
  v27 = *(v4 + 7);
  v39[6] = *(v4 + 6);
  v39[7] = v27;
  v28 = *(v4 + 1);
  v39[0] = *v4;
  v39[1] = v28;
  v29 = *(v4 + 3);
  v39[2] = *(v4 + 2);
  v39[3] = v29;
  if (sub_100066F78(v39) == 1)
  {
    v30 = 2;
  }

  else
  {
    v30 = *v4;
  }

  v31 = a1[5];
  v41[4] = a1[4];
  v41[5] = v31;
  v32 = a1[7];
  v41[6] = a1[6];
  v41[7] = v32;
  v33 = a1[1];
  v41[0] = *a1;
  v41[1] = v33;
  v34 = a1[3];
  v41[2] = a1[2];
  v41[3] = v34;
  if (sub_100066F78(v41) == 1)
  {
    if (!((v30 != 2) | v14 & 1) && ((v25 ^ 1) & 1) == 0)
    {
      return;
    }
  }

  else if (v30 != 2 && !(v14 & 1 | ((v25 & 1) == 0)) && ((LOBYTE(v41[0]) ^ v30) & 1) == 0)
  {
    return;
  }

  if (qword_10117F6B0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_101218BD8);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Triggering profile fetch…", v38, 2u);
  }

  sub_100066FF4();
}

uint64_t sub_100066F78(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100066F90()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218BD8);
  sub_1000060E4(v0, qword_101218BD8);
  return static Logger.music(_:)(0x746E756F636341, 0xE700000000000000);
}

void sub_100066FF4()
{
  sub_10010FC20(&qword_101183AD0, &qword_100EBE4D8);
  __chkstk_darwin();
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v38 - v3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v6 = &v38 - v5;
  v7 = [objc_opt_self() sharedPrivacyInfo];
  v8 = [v7 privacyAcknowledgementRequiredForMusic];

  if (v8)
  {
    if (qword_10117F6B0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218BD8);
    v39 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v39, v10, "GDPR has not been accepted - Bypassing profile fetch", v11, 2u);
    }

    v12 = v39;
  }

  else
  {
    v13 = v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities;
    v14 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
    v41[4] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
    v41[5] = v14;
    v15 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
    v41[6] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
    v41[7] = v15;
    v16 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
    v41[0] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
    v41[1] = v16;
    v17 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
    v41[2] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
    v41[3] = v17;
    if (sub_100066F78(v41) == 1 || *(v13 + 1) != 1)
    {
      if (qword_10117F6B0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000060E4(v29, qword_101218BD8);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "No network connection - Bypassing profile fetch", v32, 2u);
      }
    }

    else
    {
      v18 = *(v13 + 80);
      v40[4] = *(v13 + 64);
      v40[5] = v18;
      v19 = *(v13 + 112);
      v40[6] = *(v13 + 96);
      v40[7] = v19;
      v20 = *(v13 + 16);
      v40[0] = *v13;
      v40[1] = v20;
      v21 = *(v13 + 48);
      v40[2] = *(v13 + 32);
      v40[3] = v21;
      if (sub_100066F78(v40) == 1 || *v13 != 1)
      {
        if (qword_10117F6B0 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_1000060E4(v33, qword_101218BD8);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Not signed in — Clearing existing profile", v36, 2u);
        }

        v37 = type metadata accessor for UserProfile();
        (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000089F8(v4, v2, &qword_101183AD0, &qword_100EBE4D8);

        static Published.subscript.setter();
        sub_1000095E8(v4, &qword_101183AD0, &qword_100EBE4D8);
      }

      else
      {
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
        v23 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for MainActor();

        v24 = v0;
        v25 = static MainActor.shared.getter();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = &protocol witness table for MainActor;
        v26[4] = v23;

        v27 = sub_1001F4CB8(0, 0, v6, &unk_100EBE5B0, v26);
        v28 = *(v24 + OBJC_IVAR____TtC5Music19UserProfileObserver_task);
        *(v24 + OBJC_IVAR____TtC5Music19UserProfileObserver_task) = v27;
        if (v28)
        {

          if ((static Task.== infix(_:_:)() & 1) == 0)
          {
            Task.cancel()();
          }
        }
      }
    }
  }
}

uint64_t sub_100067618()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100067658()
{

  if (qword_10117F8A0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_100067F80, 0, 0);
}

void *sub_1000676F0()
{
  result = sub_100067718(_swiftEmptyArrayStorage);
  off_101196190 = result;
  return result;
}

unint64_t sub_100067718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011804B8, &qword_100EBA760);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100067814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&unk_1011A85E0, &qword_100EED8B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001FD3C(v5, v6, sub_10000F930);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100067924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1618, "d)\n");
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000F8B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100067A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B9BB8, &qword_100F0BD78);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C40(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

void sub_100067B1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100067B80(a2);
  }
}

void sub_100067B80(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = [a1 dictionaryForBagKey:SSMetricsURLBagKey];
  if (v9)
  {
    v10 = v9;
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v11 + 16))
    {

      return;
    }

    v12 = [a1 dictionaryForBagKey:SSVURLBagKeyMusicCommon];
    if (v12)
    {
      v13 = v12;
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v27[0] = 0xD000000000000023;
      *(&v27[0] + 1) = 0x8000000100E5C330;
      AnyHashable.init<A>(_:)();
      if (*(v14 + 16))
      {
        v15 = sub_1000160B4(v28);
        if (v16)
        {
          sub_10000DD18(*(v14 + 56) + 32 * v15, v27);
          sub_10001621C(v28);

          sub_100016270(v27, v29);
          strcpy(v27, "postFrequency");
          HIWORD(v27[0]) = -4864;
          AnyHashable.init<A>(_:)();
          sub_10000DD18(v29, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v11;
          sub_100068158(v27, v28, isUniquelyReferenced_nonNull_native);
          sub_10001621C(v28);
          sub_10000959C(v29);
          v18 = 1;
          goto LABEL_11;
        }
      }

      sub_10001621C(v28);
    }

    v18 = 0;
LABEL_11:
    v19 = objc_allocWithZone(SSMetricsConfiguration);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v19 initWithGlobalConfiguration:isa];

    if (v21)
    {
      v22 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
      *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration) = v21;
      v23 = v21;

      [v23 setDisableEventDecoration:{objc_msgSend(v23, "_decorateITMLEvents") ^ 1}];
      v24 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
      [v24 setGlobalConfiguration:v23];
      [v24 setFlushTimerEnabled:1];
      if (v18)
      {
        v25 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
        [v25 setGlobalConfiguration:v23];

        [v25 setFlushTimerEnabled:1];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100067F80(uint64_t a1)
{
  *(v1 + 64) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006C5E8, v3, v2);
}

_OWORD *sub_10006800C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000160B4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1006C8CD0();
      goto LABEL_7;
    }

    sub_1006C199C(v13, a3 & 1);
    v19 = sub_1000160B4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000160F8(a2, v21);
      return sub_1006C793C(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000959C(v17);

  return sub_100016270(a1, v17);
}

_OWORD *sub_100068158(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000160B4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1008BA888();
      goto LABEL_7;
    }

    sub_1008B71C4(v13, a3 & 1);
    v19 = sub_1000160B4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000160F8(a2, v21);
      return sub_1006C793C(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000959C(v17);

  return sub_100016270(a1, v17);
}

uint64_t sub_1000682A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100068364(a1, v4, v5, v7, v6);
}

uint64_t sub_100068364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  sub_10010FC20(&unk_10118B980, &qword_100ECA530);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for Notice(0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for MusicNotice();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_10010FC20(&qword_10118E170, &qword_100ECA538);
  v5[15] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_10118E178, &qword_100ECA540);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_10118E180, &qword_100ECA548);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[21] = v10;
  v5[22] = type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v5[24] = v11;
  *v11 = v5;
  v11[1] = sub_1003E3338;

  return MusicPageProvider.notices()(v10);
}

uint64_t sub_100068654(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_100068708();
}

uint64_t sub_100068708()
{
  v1 = type metadata accessor for LibraryImportStatus();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  sub_10010FC20(&qword_10118E158, &qword_100ECA518);
  v0[8] = swift_task_alloc();
  v2 = sub_10010FC20(&qword_10118E160, &qword_100ECA520);
  v0[9] = v2;
  v0[10] = *(v2 - 8);
  v0[11] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_10118E168, &qword_100ECA528);
  v0[12] = v3;
  v0[13] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v0[15] = type metadata accessor for MainActor();
  v0[16] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1003E4358;

  return MusicPageProvider.libraryImportStatus.getter(v4);
}

void sub_100068948(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying;
  v5 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (v5)
  {
    v6 = [v5 tracklist];
    if (a1)
    {
      v7 = [a1 tracklist];
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_1007D3644(v7);
    v9 = v10;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  sub_1002B2290(v8, v9 & 1);
  v11 = *&v2[v4];
  v48[3] = &_s18NowPlayingUISourceON;
  v48[4] = &off_10109D788;
  LOBYTE(v48[0]) = 2;
  v12 = v11;

  sub_100069390(v11, v48);

  sub_1000095E8(v48, &unk_101183910, &unk_100EBDD00);
  sub_1002B06E4();
  LOBYTE(v48[0]) = 10;
  v13 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v13))
  {
    v14 = *&v2[v4];
    v15 = *(*&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager] + OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService);
    v16 = *(v15 + 24);
    *(v15 + 24) = v14;
    v17 = v14;

    sub_100069C14();
    goto LABEL_9;
  }

  v18 = [v2 view];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 window];

    if (!v20 || (v17 = [v20 windowScene], v20, !v17))
    {
LABEL_15:
      v25 = *&v2[v4];
      if (v25 && (v26 = [v25 tracklist], v27 = objc_msgSend(v26, "playingItem"), v26, v27))
      {
        [v27 duration];
        v28 = v49;
      }

      else
      {
        v28 = 0;
      }

      sub_10006A548(v28);
      v29 = *&v2[v4];
      swift_beginAccess();
      v30 = v29;
      sub_10019B380(v29, a1);
      swift_endAccess();

      v31 = *&v2[v4];
      if (v31)
      {
        v32 = [v31 tracklist];
        v33 = [v32 playingItem];

        if (!a1)
        {
          if (!v33)
          {
            v33 = 0;
            v34 = 0;
LABEL_40:

            v33 = v34;
            goto LABEL_41;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        if (!a1)
        {
          goto LABEL_40;
        }
      }

      v35 = [a1 tracklist];
      a1 = [v35 playingItem];

      if (!v33)
      {
        v39 = 0;
        v37 = 0;
        v34 = 0;
        if (!a1)
        {
          goto LABEL_40;
        }

        goto LABEL_29;
      }

LABEL_25:
      v36 = [v33 contentItemIdentifier];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      if (!a1)
      {
        v34 = 0;
        if (!v39)
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }

LABEL_29:
      v40 = [a1 contentItemIdentifier];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v39)
      {
        if (v43)
        {
          if (v37 == v41 && v39 == v43)
          {

LABEL_41:

            return;
          }

          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v47)
          {

            goto LABEL_41;
          }

LABEL_37:
          v44 = v33;
          v33 = a1;
          type metadata accessor for ApplicationMainMenu();
          v45 = sub_100314AEC();
          if (v45)
          {
            v46 = v45;
            sub_100059768();
          }

          goto LABEL_41;
        }
      }

      else
      {
        v34 = a1;
        if (!v43)
        {
          goto LABEL_40;
        }
      }

LABEL_36:

      goto LABEL_37;
    }

    if (UISceneActivationState.isForeground.getter([v17 activationState]))
    {
      v21 = *&v2[v4];
      v22 = *(*&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager] + OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService);
      v23 = *(v22 + 24);
      *(v22 + 24) = v21;
      v24 = v21;

      sub_100069C14();
      v17 = v24;
    }

LABEL_9:

    goto LABEL_15;
  }

  __break(1u);
}

id UIWindowScene.rootViewController.getter()
{
  v0 = UIWindowScene.mainWindow.getter();
  v1 = [v0 rootViewController];

  return v1;
}

void sub_100068E6C(void *a1)
{
  v18 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog;
  v5 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog];
  v6 = v5;
  LOBYTE(v5) = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v18);

  if ((v5 & 1) == 0)
  {
    v7 = *&v1[v4];
    v8 = v18;
    *&v1[v4] = v18;
    v18 = v8;

    if (v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates])
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v11 = v1;
      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v10;

      v14 = sub_1001F4CB8(0, 0, v3, &unk_100EDADB8, v13);
      v15 = *&v11[OBJC_IVAR____TtC5Music21NowPlayingContentView_updateConfigurationTask];
      *&v11[OBJC_IVAR____TtC5Music21NowPlayingContentView_updateConfigurationTask] = v14;
      if (v15)
      {

        Task.cancel()();
      }

      return;
    }

    sub_10004C8F4();
    [v1 setNeedsLayout];
  }

  v16 = v18;
}

uint64_t sub_1000690BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000690F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id UIWindowScene.mainWindow.getter()
{
  if ([v0 delegate])
  {
    v1 = swift_dynamicCastObjCProtocolConditional();
    if (v1)
    {
      v2 = v1;
      if ([v1 respondsToSelector:"window"])
      {
        v3 = [v2 window];
        swift_unknownObjectRelease();
        return v3;
      }
    }

    swift_unknownObjectRelease();
  }

  v4 = [v0 windows];
  sub_100009F78(0, &qword_1011BAD28, UIWindow_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_11:
    v3 = v7;

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1000692A4(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath);
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath) = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v7 = v3;
  if (!a1 || (sub_100009F78(0, &qword_10119C150, MPCPlayerPath_ptr), a1 = a1, v4 = v7, v5 = static NSObject.== infix(_:_:)(), v4, (v5 & 1) == 0))
  {
LABEL_7:
    sub_10004C8F4();

    v6 = v7;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_8:
}

void sub_100069390(void *a1, void *a2)
{
  v3 = v2;
  if (!a1)
  {
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = 0;

    v2[5] = 0;
    v2[6] = 0;
    v2[7] = 0;

    v2[8] = 0;
    v2[9] = 0;
    v2[10] = 0;

    v16 = v2[11];
    if (v16)
    {
      v17 = v2[12];

      v16(v18);

      sub_100020438(v16, v17);
    }

    return;
  }

  v72 = a1;
  v5 = [v72 tracklist];
  v6 = [v5 playingItem];

  v7 = [v6 seekCommand];
  sub_10010FC20(&qword_1011A4138, "pR\v");
  inited = swift_initStackObject();
  v71 = xmmword_100EBDC20;
  *(inited + 1) = xmmword_100EBDC20;
  v9 = 0;
  v10 = 0;
  if (!v7)
  {
    goto LABEL_15;
  }

  v11 = [v7 preferredBackwardJumpIntervals];
  sub_100345730();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_70:
    v13 = sub_1007E9138(0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_73;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  [v14 doubleValue];
  v10 = v15;

LABEL_15:
  inited[4] = v10;
  *(inited + 40) = 0;
  inited[6] = -1;
  *(inited + 56) = 1;
  v12 = swift_initStackObject();
  *(v12 + 16) = v71;
  v69 = v6;
  v68[1] = v7;
  if (v7)
  {
    v19 = [v7 preferredForwardJumpIntervals];
    sub_100345730();
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_1007E9138(0, v20);
        goto LABEL_21;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v20 + 32);
LABEL_21:
        v22 = v21;

        [v22 doubleValue];
        v9 = v23;

        goto LABEL_24;
      }

LABEL_73:
      __break(1u);
      return;
    }
  }

LABEL_24:
  v6 = v68;
  *(v12 + 32) = v9;
  *(v12 + 40) = 0;
  *(v12 + 48) = 1;
  v70 = v12;
  *(v12 + 56) = 1;
  __chkstk_darwin();
  v66 = v72;
  v67 = a2;
  *&v71 = a2;
  v24 = 0;
  sub_1001FAAB8(sub_1007F08CC, v65, inited);
  v26 = v25;

  v7 = 0;
  a2 = *(v26 + 16);
  inited = _swiftEmptyArrayStorage;
LABEL_25:
  v27 = 24 * v7;
  while (a2 != v7)
  {
    if (v7 >= *(v26 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    ++v7;
    v28 = v27 + 24;
    v29 = *(v26 + v27 + 48);
    v27 += 24;
    if (*(v29 + 16))
    {
      v68[0] = v24;
      v30 = *(v26 + v28 + 8);
      v12 = *(v26 + v28 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = inited;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10066C920(0, inited[2] + 1, 1);
        inited = v73;
      }

      v6 = inited[2];
      v32 = inited[3];
      if (v6 >= v32 >> 1)
      {
        sub_10066C920((v32 > 1), v6 + 1, 1);
        inited = v73;
      }

      inited[2] = v6 + 1;
      v33 = &inited[3 * v6];
      v33[4] = v30;
      *(v33 + 40) = v12;
      v33[6] = v29;
      v24 = v68[0];
      goto LABEL_25;
    }
  }

  if (inited[2])
  {
    v34 = inited[4];
    v6 = *(inited + 40);
    v35 = inited[6];
  }

  else
  {
    v34 = 0;
    v6 = 0;
    v35 = 0;
  }

  v36 = v71;

  v3[2] = v34;
  v3[3] = v6;
  v3[4] = v35;

  __chkstk_darwin();
  v66 = v72;
  v67 = v36;
  sub_1001FAAB8(sub_1007F031C, v65, &off_1010991E8);
  v38 = v37;
  v68[0] = v24;
  v7 = 0;
  a2 = *(v37 + 16);
  inited = _swiftEmptyArrayStorage;
LABEL_38:
  v39 = 24 * v7;
  while (a2 != v7)
  {
    if (v7 >= *(v38 + 16))
    {
      goto LABEL_68;
    }

    ++v7;
    v40 = v39 + 24;
    v41 = *(v38 + v39 + 48);
    v39 += 24;
    if (*(v41 + 16))
    {
      v12 = *(v38 + v40 + 8);
      v42 = *(v38 + v40 + 16);

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v73 = inited;
      if ((v43 & 1) == 0)
      {
        sub_10066C920(0, inited[2] + 1, 1);
        inited = v73;
      }

      v6 = inited[2];
      v44 = inited[3];
      if (v6 >= v44 >> 1)
      {
        sub_10066C920((v44 > 1), v6 + 1, 1);
        inited = v73;
      }

      inited[2] = v6 + 1;
      v45 = &inited[3 * v6];
      v45[4] = v12;
      *(v45 + 40) = v42;
      v45[6] = v41;
      goto LABEL_38;
    }
  }

  v12 = v70;
  if (inited[2])
  {
    v46 = inited[4];
    v6 = *(inited + 40);
    v47 = inited[6];
  }

  else
  {
    v46 = 0;
    v6 = 0;
    v47 = 0;
  }

  v48 = v71;
  v49 = v68[0];

  v3[5] = v46;
  v3[6] = v6;
  v3[7] = v47;

  __chkstk_darwin();
  v66 = v72;
  v67 = v48;
  sub_1001FAAB8(sub_1007F08CC, v65, v12);
  a2 = v50;
  *&v71 = v49;
  swift_setDeallocating();
  v7 = 0;
  v51 = a2[2];
  inited = _swiftEmptyArrayStorage;
LABEL_51:
  v52 = 3 * v7;
  while (v51 != v7)
  {
    if (v7 >= a2[2])
    {
      goto LABEL_69;
    }

    ++v7;
    v53 = v52 * 8 + 24;
    v12 = a2[v52 + 6];
    v52 += 3;
    if (*(v12 + 16))
    {
      v54 = *(a2 + v53 + 8);
      v6 = *(a2 + v53 + 16);

      v55 = swift_isUniquelyReferenced_nonNull_native();
      v73 = inited;
      if ((v55 & 1) == 0)
      {
        sub_10066C920(0, inited[2] + 1, 1);
        inited = v73;
      }

      v57 = inited[2];
      v56 = inited[3];
      if (v57 >= v56 >> 1)
      {
        sub_10066C920((v56 > 1), v57 + 1, 1);
        inited = v73;
      }

      inited[2] = v57 + 1;
      v58 = &inited[3 * v57];
      v58[4] = v54;
      *(v58 + 40) = v6;
      v58[6] = v12;
      goto LABEL_51;
    }
  }

  if (inited[2])
  {
    v59 = inited[4];
    v60 = *(inited + 40);
    v61 = inited[6];
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
  }

  v3[8] = v59;
  v3[9] = v60;
  v3[10] = v61;

  v62 = v3[11];
  if (v62)
  {
    v63 = v3[12];

    v62(v64);

    swift_unknownObjectRelease();
    sub_100020438(v62, v63);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_100069C14()
{
  if (*(v0 + 16) != 1 || (v1 = *(v0 + 24)) == 0)
  {
    v12 = 0;
LABEL_9:
    v11 = (v0 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
    *v11 = 0;
    v11[1] = 0;

    sub_100069DB0();

    return;
  }

  v12 = v1;
  sub_1005765AC(v12);
  if (!v2)
  {

    goto LABEL_9;
  }

  v4 = v2;
  v5 = v3;
  v6 = (v0 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
  v7 = *(v0 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
  if (v7)
  {
    v8 = v6[1];

    sub_10047BEF8(v4, v7);
    v10 = v9;

    if ((v10 & 1) != 0 && v5 == v8)
    {

      swift_bridgeObjectRelease_n();
      return;
    }
  }

  else
  {
  }

  *v6 = v4;
  v6[1] = v5;

  sub_100069DB0();
  sub_100577AE8(v4, v5);
}

uint64_t sub_100069DB0()
{
  v1 = v0;
  sub_10010FC20(&qword_10118EB40, &qword_100ECAFA0);
  __chkstk_darwin();
  v3 = &v48 - v2;
  v52 = type metadata accessor for Date();
  v4 = *(v52 - 8);
  __chkstk_darwin();
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v64 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(sub_10010FC20(&qword_101191960, &qword_100ECEA50) - 8);
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v48 - v12;
  v13 = *(v1 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
  if (v13)
  {
    v65 = v4;
    v14 = *(v1 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState + 8);
    v15 = *(v13 + 16);
    v16 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v49 = *(v1 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState + 8);
      v69 = _swiftEmptyArrayStorage;
      swift_bridgeObjectRetain_n();
      v57 = v11;
      sub_10066CA84(0, v15, 0);
      v17 = v57;
      v16 = v69;
      v53 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_cache;
      v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v48 = v13;
      v19 = v13 + v18;
      v20 = *(v9 + 72);
      v62 = (v7 + 48);
      v63 = v20;
      v50 = (v65 + 40);
      v55 = v3;
      v56 = v1;
      v54 = v6;
      do
      {
        v21 = v66;
        sub_1000089F8(v19, v66, &qword_101191960, &qword_100ECEA50);
        sub_1000089F8(v21, v17, &qword_101191960, &qword_100ECEA50);
        if ((*v62)(v17, 1, v6) == 1)
        {
          sub_1000095E8(v21, &qword_101191960, &qword_100ECEA50);
          sub_1000095E8(v17, &qword_101191960, &qword_100ECEA50);
          v22 = 0;
          v23 = 0;
          v24 = 0;
        }

        else
        {
          v25 = v64;
          sub_10057E118(v17, v64, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
          v26 = v25[1];
          v60 = *v25;
          v27 = *(v1 + v53);
          v61 = v26;

          v28 = Album.id.getter();
          v30 = v29;
          swift_beginAccess();
          v58 = v28;
          v65 = v30;
          v31 = sub_100576274(&v67, v28, v30);
          v33 = v32;
          v34 = type metadata accessor for Cache.Entry(0);
          v35 = *(v34 - 8);
          v59 = *(v35 + 48);
          if (!v59(v33, 1, v34))
          {
            v36 = v51;
            Date.init()();
            (*v50)(v33, v36, v52);
          }

          (v31)(&v67, 0);
          v37 = v55;
          swift_endAccess();
          swift_beginAccess();
          v38 = *(v27 + 16);
          if (*(v38 + 16) && (v39 = sub_100019C10(v58, v65), (v40 & 1) != 0))
          {
            sub_10057E060(*(v38 + 56) + *(v35 + 72) * v39, v37);
            v41 = 0;
          }

          else
          {
            v41 = 1;
          }

          (*(v35 + 56))(v37, v41, 1, v34);
          v42 = v59(v37, 1, v34);
          v17 = v57;
          if (v42)
          {
            sub_1000095E8(v37, &qword_10118EB40, &qword_100ECAFA0);
            swift_endAccess();
            v24 = _swiftEmptyDictionarySingleton;
          }

          else
          {
            v24 = *(v37 + *(v34 + 20));

            sub_1000095E8(v37, &qword_10118EB40, &qword_100ECAFA0);
            swift_endAccess();
          }

          v1 = v56;
          v6 = v54;

          sub_10057E180(v64, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
          sub_1000095E8(v66, &qword_101191960, &qword_100ECEA50);
          v22 = v60;
          v23 = v61;
        }

        v69 = v16;
        v44 = v16[2];
        v43 = v16[3];
        if (v44 >= v43 >> 1)
        {
          v61 = v23;
          v46 = v22;
          sub_10066CA84((v43 > 1), v44 + 1, 1);
          v23 = v61;
          v22 = v46;
          v17 = v57;
          v16 = v69;
        }

        v16[2] = v44 + 1;
        v45 = &v16[3 * v44];
        v45[4] = v22;
        v45[5] = v23;
        v45[6] = v24;
        v19 += v63;
        --v15;
      }

      while (v15);
      swift_bridgeObjectRelease_n();
      v14 = v49;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v16;
    v68 = v14;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = 0;
    v68 = 0;
  }

  return static Published.subscript.setter();
}

uint64_t sub_10006A4CC(uint64_t a1)
{
  result = type metadata accessor for Album();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_10006A548(char a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&result = __chkstk_darwin().n128_u64[0];
  v5 = &v13 - v4;
  v6 = v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isInTransition];
  v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isInTransition] = a1;
  if (v6 == 1 && (a1 & 1) == 0)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v1;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    v11 = sub_1001F4CB8(0, 0, v5, &unk_100EC58F8, v10);
    v12 = *&v8[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask];
    *&v8[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask] = v11;
    if (v12)
    {

      Task.cancel()();
    }
  }

  return result;
}

void sub_10006A6D8()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v18 - v2;
  sub_10010FC20(&unk_101183B90, &unk_100EBD478);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession);
  if (v8)
  {
    v18 = v4;
    v19 = v5;
    type metadata accessor for SharePlayTogetherSession(0);
    sub_1002B7108(&unk_101189E70, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
    v9 = v8;
    v21 = ObservableObject<>.objectWillChange.getter();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v10 = static OS_dispatch_queue.main.getter();
    v20 = v10;
    v11 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    type metadata accessor for ObservableObjectPublisher();
    sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v3, &qword_101182140, &unk_100EBD2A0);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v12;
    sub_100020674(&qword_101183BA0, &unk_101183B90, &unk_100EBD478, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v14 = v9;
    v15 = v18;
    v16 = Publisher<>.sink(receiveValue:)();

    (*(v19 + 8))(v7, v15);
    *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherParticipantsSubscription) = v16;
  }

  else
  {
    v17 = *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount);
    *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount) = 0;
    if (v17)
    {
      sub_10004F27C();
    }

    *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherParticipantsSubscription) = 0;

    sub_10004F27C();
  }
}

uint64_t sub_10006AA9C()
{

  return swift_deallocObject();
}

uint64_t sub_10006AADC()
{
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1000060E4(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚦 Initiating group session observer", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  static GroupActivity.sessions()();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v0[17] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
  v0[18] = v8;
  v0[19] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v0[20] = static MainActor.shared.getter();
  v9 = sub_100020674(&qword_1011AF970, &qword_1011AF968, &qword_100EFB968, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_100ABA050;
  v11 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v9);
}

uint64_t sub_10006AD2C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.groupActivities);
  sub_1000060E4(v0, static Logger.groupActivities);
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

void sub_10006ADD4()
{
  v1 = v0;
  v13 = 11;
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground);
  }

  else
  {
    v3 = sub_10065F7F8();
  }

  [*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView) setClipsToBounds:v3 & 1];
  v12 = 11;
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2) & 1) == 0 && (v3 & 1) == 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
    *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot) = 0;
    if (v4)
    {
      [v4 removeFromSuperview];
    }
  }

  v11 = 11;
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2) & 1) != 0 && (sub_10065F7F8() & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
    *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot) = 0;
    if (v5)
    {
      [v5 removeFromSuperview];
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData) || (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(&v9), , , , v6 = v10, v10 == 255) || (sub_10004ADFC(v9, v10), (v6 & 1) != 0))
  {
    if (*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion))
    {
      *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_needsSquareMotionUpdate) = 1;
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
      *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView) = 0;
      if (v7)
      {
        [v7 removeFromSuperview];
      }

      v8 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
      *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot) = 0;
      if (v8)
      {
        [v8 removeFromSuperview];
      }

      sub_10065CE7C(0, 1);
    }
  }
}

uint64_t sub_10006B010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10010FC20(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10006B078(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10006B204(void *a1, uint64_t a2)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = [objc_opt_self() systemRoute];
  }

  v4 = *(a2 + 24);
  v5 = a1;
  if ([v7 isDeviceRoute])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [v4 setDiscoveryMode:v6];
}

uint64_t sub_10006B2A8(uint64_t a1)
{
  swift_beginAccess();
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 36) = 0;
  os_unfair_lock_unlock((a1 + 32));
  v2 = swift_endAccess();
  return (*(a1 + 16))(v2);
}

double sub_10006B3B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostError();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin();
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignposter();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.scenes.unsafeMutableAddressor();
  (*(v13 + 16))(v15, v16, v12);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v48 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v47 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v9;
    v24 = v23;
    v56 = v23;
    *v22 = 136446210;
    v25 = [v17 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v12;
    v27 = v10;
    v28 = v26;
    v30 = v29;

    v31 = sub_1000105AC(v28, v30, &v56);

    *(v22 + 4) = v31;
    v10 = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Main sceneDidBecomeActive %{public}s", v22, 0xCu);
    sub_10000959C(v24);
    v9 = v51;

    v2 = v47;

    (*(v13 + 8))(v15, v46);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v32 = OBJC_IVAR____TtC5Music17MainSceneDelegate_signpostDidBecomeActiveIntervalState;
  v33 = v54;
  if (*(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_signpostDidBecomeActiveIntervalState))
  {

    v34 = OSSignposter.launch.unsafeMutableAddressor();
    (*(v10 + 16))(v55, v34, v9);
    v35 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v36 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v51 = v9;

      v37 = v48;
      checkForErrorAndConsumeState(state:)();

      v39 = v49;
      v38 = v50;
      v40 = (*(v49 + 88))(v37, v50);
      v45 = v10;
      if (v40 == enum case for OSSignpostError.doubleEnd(_:))
      {
        v41 = "[Error] Interval already ended";
      }

      else
      {
        (*(v39 + 8))(v37, v38);
        v41 = "";
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v43, "MainScene.DidBecomeActive", v41, v42, 2u);

      v9 = v51;
      v10 = v45;
    }

    (*(v52 + 8))(v33, v53);
    (*(v10 + 8))(v55, v9);
    *(v2 + v32) = 0;
  }

  return static AppReview.recordAppOpened()();
}

double static AppReview.recordAppOpened()()
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v1 = &v5 - v0;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_100969440(0, 0, v1, &unk_100EFC7F0, v3);

  return result;
}

uint64_t sub_10006B9D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006BA08(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10006BABC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002F3F4;

  return sub_10006BB68();
}

uint64_t sub_10006BB84()
{
  if (qword_1011A7020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return StoreReviewGatingController.didEnterForeground()();
}

uint64_t sub_10006BC4C()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v5[4] = sub_10006BF5C;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10006BD7C;
  v5[3] = &unk_1010DF718;
  v1 = _Block_copy(v5);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v2];

    v4 = objc_allocWithZone(type metadata accessor for StoreReviewGatingController());
    result = StoreReviewGatingController.init(bag:)();
    qword_1011AFC18 = result;
  }

  return result;
}

void sub_10006BD7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_10006BDC8(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (qword_1011A6990 != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void *sub_10006BF60()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10006C044();
  swift_dynamicCast();
  v1 = String._bridgeToObjectiveC()();
  [v3 setBagProfileVersion:v1];

  return v3;
}

void *sub_10006C024()
{
  result = sub_10006BF60();
  static ICClientInfo.storeFlow = result;
  return result;
}

unint64_t sub_10006C044()
{
  result = qword_1011AAE88;
  if (!qword_1011AAE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AAE88);
  }

  return result;
}

void sub_10006C090(char a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  v4 = sub_1002AE644();
  v5 = (*((swift_isaMask & *v4) + 0xE8))(v15);
  *(v6 + 24) = 1;
  v5(v15, 0);

  v7 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView];
  v8 = *((swift_isaMask & *v7) + 0x100);
  v9 = v7;
  v10 = v8(v15);
  *(v11 + 24) = 1;
  v10(v15, 0);

  v12 = [v2 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 window];

    sub_1002D9810(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006C27C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&qword_101181BE8, &unk_100EBD710);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v18 - v5;
  sub_10010FC20(&qword_10118D4F8, &qword_100EC9238);
  __chkstk_darwin();
  v8 = v18 - v7;
  v9 = sub_10010FC20(&qword_101181AC0, &unk_100EC9240);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v18 - v11;
  sub_10006C578(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000095E8(v8, &qword_10118D4F8, &qword_100EC9238);
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    MusicLibraryResponse.items.getter();
    sub_100020674(&unk_10118C130, &qword_101181BE8, &unk_100EBD710, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v4 + 8))(v6, v3);
    v16 = v18[2] != v18[1];
    v17 = v15[OBJC_IVAR____TtC5Music22QuickActionsController_hasFavorites];
    v15[OBJC_IVAR____TtC5Music22QuickActionsController_hasFavorites] = v16;
    if (v16 != v17)
    {
      sub_10001C32C();
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10006C578(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118D4F8, &qword_100EC9238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C5E8()
{

  swift_beginAccess();
  v1 = off_101196190;
  *(v0 + 72) = off_101196190;
  *(v0 + 40) = v1;

  return _swift_task_switch(sub_10006C7F4, 0, 0);
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    sub_10000988C();
    v6 = StringProtocol.contains<A>(_:)();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v10 & 1;
}

uint64_t sub_10006C7F4()
{
  v37 = v0;
  if ((EnvironmentVariable.isEnabled.getter(0, 0, 2) & 1) == 0)
  {
    LOBYTE(v35) = 0;
    sub_10058870C(&v35, v0 + 5);
    LOBYTE(v35) = 1;
    sub_10058870C(&v35, v0 + 5);
    LOBYTE(v35) = 2;
    sub_10058870C(&v35, v0 + 5);
    LOBYTE(v35) = 3;
    sub_10058870C(&v35, v0 + 5);
    LOBYTE(v35) = 4;
    sub_10058870C(&v35, v0 + 5);
    LOBYTE(v35) = 5;
    sub_10058870C(&v35, v0 + 5);
    LOBYTE(v35) = 6;
    sub_10058870C(&v35, v0 + 5);
    LOBYTE(v35) = 7;
    sub_10058870C(&v35, v0 + 5);
    goto LABEL_35;
  }

  v1 = 0;
  v2 = _swiftEmptyDictionarySingleton;
  do
  {
    v5 = *(&off_10109B9A0 + v1 + 32);
    if ((v5 - 3) >= 4)
    {
      if (v5 == 1)
      {

        v6 = 0xD000000000000025;
        v7 = 0x8000000100E50760;
      }

      else
      {
        v35 = 0;
        v36 = 0xE000000000000000;

        _StringGuts.grow(_:)(17);
        v8 = 0xD000000000000027;
        if (v5 == 2)
        {
          v8 = 0xD000000000000029;
        }

        v9 = "com.apple.Music.Tooltip.Sing";
        if (v5 != 2)
        {
          v9 = "anslationAndTransliteration";
        }

        if (v5)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0xD00000000000002CLL;
        }

        if (v5)
        {
          v11 = v9;
        }

        else
        {
          v11 = "llPlaylists";
        }

        v12 = v11 | 0x8000000000000000;
        String.append(_:)(*&v10);

        v13._countAndFlagsBits = 0x6F6E6B634173692ELL;
        v13._object = 0xEF64656764656C77;
        String.append(_:)(v13);
        v6 = v35;
        v7 = v36;
      }
    }

    else
    {

      v6 = 0xD000000000000029;
      v7 = 0x8000000100E3C7F0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v2;
    v15 = sub_100019C10(v6, v7);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = v16;
    if (v2[3] < v20)
    {
      sub_1006BFFAC(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_100019C10(v6, v7);
      if ((v21 & 1) != (v22 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_25:
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v27 = v15;
    sub_1006C7E3C();
    v15 = v27;
    if (v21)
    {
LABEL_3:
      v3 = v15;

      v4 = v35;
      *(v35[7] + v3) = 0;

      v2 = v4;
      goto LABEL_4;
    }

LABEL_26:
    v23 = v35;
    v35[(v15 >> 6) + 8] |= 1 << v15;
    v24 = (v23[6] + 16 * v15);
    *v24 = v6;
    v24[1] = v7;
    *(v23[7] + v15) = 0;

    v25 = v23[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_42;
    }

    v23[2] = v26;
    v2 = v23;
LABEL_4:
    ++v1;
  }

  while (v1 != 8);

  v0[5] = v2;
  if (qword_10117F8B0 == -1)
  {
    goto LABEL_32;
  }

LABEL_43:
  swift_once();
LABEL_32:
  v28 = type metadata accessor for Logger();
  sub_1000060E4(v28, qword_1011961A0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "🤖 Debugging Mode Active — Setting all tips as non acknowledged", v31, 2u);
  }

LABEL_35:
  v0[10] = v0[5];
  v0[11] = static MainActor.shared.getter();
  v33 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100588628, v33, v32);
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = sub_100019C28(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

void sub_10006D1B4(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(Strong + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint);

        v6 = [v5 outputDevices];
        if (v6)
        {
          sub_100009F78(0, &qword_1011AF008, MRAVOutputDevice_ptr);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      v7 = objc_opt_self();
      sub_100009F78(0, &qword_1011AF008, MRAVOutputDevice_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v7 symbolNameForOutputDevices:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }
}

uint64_t type metadata accessor for EnvironmentMonitor(uint64_t a1)
{
  result = qword_1011AFE48;
  if (!qword_1011AFE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10006D3A8()
{
  result = qword_1011AFDF8;
  if (!qword_1011AFDF8)
  {
    type metadata accessor for EnvironmentMonitor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFDF8);
  }

  return result;
}

char *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor()
{
  if (qword_1011A7118 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.hasExtendedColorDisplay;
}

double sub_10006D450(char a1)
{
  if (qword_100EFCFE0[*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)] == qword_100EFCFE0[a1])
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10006D3A8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10006D578(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10006D3A8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006D68C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t NSUserDefaults.showAllTVShows.getter()
{
  strcpy(v1, "showAllTVShows");
  v1[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1[0];
    }
  }

  else
  {
    sub_100011E58(&v2);
    return 0;
  }

  return result;
}

uint64_t sub_10006D798()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v16[-v4];
  __chkstk_darwin();
  v7 = &v16[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v1 + 16);
  v8(v5, v7, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v9 = qword_101219808;
  v8(v3, v5, v0);
  v10 = v9;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  v14 = *(v1 + 8);
  v14(v5, v0);
  result = (v14)(v7, v0);
  static AccessibilityString.favoriteBadgeLabel = v11;
  unk_10121B1E0 = v13;
  return result;
}

id sub_10006D9D8(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10006DA24(void **a1)
{
  v1 = *a1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v2];
}

void NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter()
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void sub_10006DB24(void **a1)
{
  v1 = *a1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v2];
}

char *DeviceCapabilities.deviceType.unsafeMutableAddressor()
{
  if (qword_1011A70F8 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceType;
}

char *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor()
{
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.isInternalInstall;
}

id NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

BOOL sub_10006DD74(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10006DDA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10006DDD0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10006DEEC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10006DF18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10006DF38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100111C74(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10006DF78(uint64_t *a1)
{
  if (sub_100DEE674(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_10006E0DC(uint64_t *a1)
{
  if (sub_100DEE674(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for SmartTransitionAnimation.CircleDrawing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SmartTransitionAnimation.CircleDrawing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t _s5SpecsV22SpringTimingParametersVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E3B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E3D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10006E444()
{

  return swift_deallocObject();
}

uint64_t sub_10006E484()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10006E4BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_10006E5EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10006E710()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290, &unk_100EC73D0) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

uint64_t sub_10006EB8C()
{

  return swift_deallocObject();
}

uint64_t sub_10006EBF8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483644)
  {
    v4 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
    v5 = -4 - v4;
    if ((-4 - v4) < 0)
    {
      v5 = -1;
    }

    if (v4 > 0x80000000)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_10010FC20(&qword_10119F0B0, "lf\n");
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t *sub_10006ECC8(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483644)
  {
    result[1] = 0;
    result[2] = 0;
    *result = (4 * (-3 - a2)) & 0x3FFFFFE00 | (2 * ((-3 - a2) & 0x7FLL));
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0, "lf\n");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006EDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101180F40, &qword_100EBCA68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006EE34(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101180F40, &qword_100EBCA68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006EE9C()
{

  return swift_deallocObject();
}

uint64_t sub_10006EEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 34);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10010FC20(&qword_10119F0B0, "lf\n");
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006EF98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 34) = a2 + 1;
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0, "lf\n");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006F04C()
{

  return swift_deallocObject();
}

uint64_t sub_10006F09C()
{
  v1 = type metadata accessor for MusicVideo();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006F1A0()
{

  return swift_deallocObject();
}

uint64_t sub_10006F1D8()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}