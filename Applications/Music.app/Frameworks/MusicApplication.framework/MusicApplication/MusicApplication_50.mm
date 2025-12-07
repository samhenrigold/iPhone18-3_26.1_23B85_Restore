void sub_43BDE0()
{
  v1 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v10);
  [v1 displayScale];
  sub_AB3A00();
  v4 = v3;
  type metadata accessor for CGSize(0);
  v5 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView];
  [v5 frame];
  v8 = v6;
  v9 = v7;
  if (sub_AB38D0())
  {
    [v5 frame];
    [v5 setFrame:?];
  }
}

id sub_43BF74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShowEpisodeCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TVShowEpisodeCell(uint64_t a1)
{
  result = qword_E07118;
  if (!qword_E07118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43C180(uint64_t a1)
{
  sub_7D678(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_43C28C()
{
  swift_beginAccess();

  return result;
}

double sub_43C2D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_43B328();

  return result;
}

double (*sub_43C344(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_43C3A8;
}

double sub_43C3A8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_43B328();
  }

  return result;
}

double sub_43C3DC(double a1)
{
  v3 = a1 / 1.77777778;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView) sizeThatFits:{a1, 1.79769313e308}];
  v5 = v4 + 0.0;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView) sizeThatFits:{a1, 1.79769313e308}];
  v7 = v6;
  v8 = v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents;
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 8);
  swift_beginAccess();
  v10 = v5 + v7 + *(v9 + 104);
  [*(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView) sizeThatFits:{a1, 1.79769313e308}];
  v12 = v11;
  v13 = *(v8 + 16);
  swift_beginAccess();
  return v3 + v10 + v12 + *(v13 + 104);
}

uint64_t sub_43C4F8()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v24 = v1;
  *&v37[0] = v1;
  *(&v37[0] + 1) = v4;
  v37[1] = xmmword_AF7C20;
  v37[2] = xmmword_AF82C0;
  v38 = v0;
  v39 = 1;
  v40 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v37);
  v23 = v3;
  v22 = v4;
  v21 = v0;
  sub_2F118(v37, v55);
  v19 = v5;

  v6 = sub_ABA580();
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v7 = qword_E718D8;
  v8 = qword_E718D8;
  v9 = [v2 clearColor];
  *&v31[0] = v7;
  *(&v31[0] + 1) = v9;
  v31[1] = xmmword_AF7C20;
  v32 = 0;
  v33 = 0;
  v34 = v6;
  v35 = 2;
  v36 = xmmword_B0F750;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v31);
  v18 = v8;
  v17 = v9;
  v16 = v6;
  sub_2F118(v31, v55);

  v11 = sub_ABA560();
  v12 = [v2 clearColor];
  *&v25[0] = v1;
  *(&v25[0] + 1) = v12;
  v25[1] = xmmword_AF7C20;
  v26 = 0;
  v27 = 0;
  v28 = v11;
  v29 = 3;
  v30 = xmmword_AFB160;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0x7470697263736564, 0xEB000000006E6F69, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF82E0;
  *(v14 + 32) = v19;
  *(v14 + 40) = v10;
  *(v14 + 48) = v13;
  sub_2F118(v25, v55);

  v41[0] = v24;
  v41[1] = v12;
  v42 = xmmword_AF7C20;
  v43 = 0;
  v44 = 0;
  v45 = v11;
  v46 = 3;
  v47 = xmmword_AFB160;
  sub_2F174(v41);
  v48[0] = v7;
  v48[1] = v9;
  v49 = xmmword_AF7C20;
  v50 = 0;
  v51 = 0;
  v52 = v6;
  v53 = 2;
  v54 = xmmword_B0F750;
  sub_2F174(v48);
  v55[0] = v24;
  v55[1] = v4;
  v56 = xmmword_AF7C20;
  v57 = xmmword_AF82C0;
  v58 = v20;
  v59 = 1;
  v60 = xmmword_AF7C30;
  sub_2F174(v55);

  return v19;
}

void sub_43C954()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isBottomHairlineHidden) = 1;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkCornerTreatment;
  v6 = sub_ABA680();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkPlaceholder);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_lockupImageArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playbackPosition) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_hasBeenPlayed) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache) = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents);
  *v8 = sub_43C4F8();
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  v12 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView;
  *(v0 + v12) = [objc_allocWithZone(type metadata accessor for VideoHeaderLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView;
  *(v0 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_43CB7C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_lockupImageArtworkCatalog);
  *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_lockupImageArtworkCatalog) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView);
  v6 = *(v5 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog);
  *(v5 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = a1;
  v7 = v4;

  sub_74EA4(a1);

  return result;
}

uint64_t sub_43CC20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_43CDCC()
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(MPStoreSocialServiceController) init];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = sub_976C4(_swiftEmptyArrayStorage);
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = &_swiftEmptySetSingleton;
  sub_43FD10();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = qword_DE67B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_DE67A8;
  v5 = qword_E70D40;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E70D38;
  v7 = swift_allocObject();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = sub_441A2C;
  v8[4] = v2;
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + 24) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v6, 1, 1, sub_441A74, v8);

  sub_43CFD0(v2);

  return v1;
}

double sub_43CFD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8, qword_B0F8E0);
    UnfairLock.locked<A>(_:)(sub_199998);
    if (v16)
    {
      swift_beginAccess();

      sub_44065C(v4);

      v5 = *JSSocialProfile.NotificationNames.didUpdateFollowees.unsafeMutableAddressor();
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v16;
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v8 = v16;
      v9 = v5;

      v3[4] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v9, v16, 1, 1, sub_441AC0, v7);

      v10 = *JSSocialProfile.NotificationNames.didUpdateFollowState.unsafeMutableAddressor();
      v11 = swift_allocObject();
      swift_weakInit();
      swift_allocObject();
      v3[5] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, 0, 1, 1, sub_441AC8, v11);

      v12 = *JSSocialProfile.NotificationNames.didUpdateHasRequestedToFollowCurrentUser.unsafeMutableAddressor();
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = v12;

      swift_allocObject();

      v15 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v14, 0, 1, 1, sub_441AF8, v13);

      v3[6] = v15;
    }
  }

  return result;
}

double sub_43D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    sub_44065C(v4);
  }

  return result;
}

void sub_43D378(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = sub_AB2BC0();
  if (!v4)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_11:
    sub_12E1C(&v10, &unk_DE8E40, &unk_AF8050);
    return;
  }

  v5 = v4;
  JSSocialProfile.NotificationNames.UserInfoKeys.socialProfile.unsafeMutableAddressor();

  sub_ABAD10();
  if (*(v5 + 16) && (v6 = sub_2EC004(v9), (v7 & 1) != 0))
  {
    sub_808B0(*(v5 + 56) + 32 * v6, &v10);
    sub_8085C(v9);
  }

  else
  {
    sub_8085C(v9);
    v10 = 0u;
    v11 = 0u;
  }

  if (!*(&v11 + 1))
  {
    goto LABEL_11;
  }

  type metadata accessor for JSSocialProfile(0);
  if (swift_dynamicCast())
  {
    v8 = v9[0];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      a3(v8);
    }

    else
    {
    }
  }
}

double sub_43D4D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_44002C();
    *(v6 + 32) = 0;

    v7 = [objc_allocWithZone(MPStoreSocialServiceController) init];
    v8 = *(v6 + 16);
    *(v6 + 16) = v7;
    if (v7 != v8)
    {
      v9 = v7;
      sub_43FD10();

      v8 = v9;
    }

    a3();
  }

  return result;
}

void sub_43D5A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E71818 = v4;
}

uint64_t sub_43D66C()
{
  type metadata accessor for SocialStatesCoordinator();
  swift_allocObject();
  result = sub_43CDCC();
  qword_E71820 = result;
  return result;
}

unint64_t sub_43D6A8(void *a1)
{
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v5 = sub_ABA150();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = sub_AB7CF0();
  v9 = *(v3 + 8);
  result = v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if ([a1 hasLightweightProfile])
  {
    return 4;
  }

  *v5 = sub_ABA150();
  v7(v5, v6, v2);
  v11 = sub_AB7CF0();
  result = v9(v5, v2);
  if ((v11 & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = v25;
  v13 = *(v25 + 64);
  if (v13)
  {
    result = sub_43EB04([v13 transientFollowStateForPerson:a1]);
    if (result != 4)
    {
      return result;
    }
  }

  v14 = [a1 identifiers];
  v15 = [v14 universalStore];

  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = [v15 socialProfileID];
  if (!v16)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v18 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sub_AB92A0();
  v20 = v19;
  swift_unknownObjectRelease();

LABEL_12:
  swift_beginAccess();
  v21 = *(v12 + 72);
  if (*(v21 + 16))
  {

    v22 = sub_2EBF88(v18, v20);
    if (v23)
    {
      v24 = *(*(v21 + 56) + v22);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t sub_43D968(void *a1)
{
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v5 = sub_ABA150();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = sub_AB7CF0();
  v9 = *(v3 + 8);
  result = v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  *v5 = sub_ABA150();
  v7(v5, v6, v2);
  v11 = sub_AB7CF0();
  result = v9(v5, v2);
  if ((v11 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v12 = v25;
  v13 = *(v25 + 64);
  if (v13)
  {
    v14 = [v13 transientFollowPendingRequestStateForPerson:a1] == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = [a1 identifiers];
  v16 = [v15 universalStore];

  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = [v16 socialProfileID];
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v19 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_11;
  }

  v18 = v17;
  v19 = sub_AB92A0();
  v21 = v20;
  swift_unknownObjectRelease();

LABEL_11:
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 == 0 && v14;
  if (v22)
  {
    if (v14)
    {
      swift_beginAccess();
      v24 = *(v12 + 80);

      v23 = sub_472F00(v19, v21, v24);
    }
  }

  return v23 & 1;
}

void sub_43DC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB7CC0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v11 = sub_ABA150();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = sub_AB7CF0();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v13 = *(v4 + 16);
    sub_1116A8(a1, v18);
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v4;
    sub_111814(v18, (v14 + 4));
    v14[16] = a2;
    v14[17] = a3;
    aBlock[4] = sub_441FB0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3FC190;
    aBlock[3] = &block_descriptor_109_0;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    sub_307CC(a2, a3);

    [v16 acceptAllFollowRequestsWithCompletion:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

double sub_43DE40(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  sub_1116A8(a5, v17);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a2;
  sub_111814(v17, v14 + 48);
  *(v14 + 144) = a6;
  *(v14 + 152) = a7;
  v15 = a3;

  swift_errorRetain();
  sub_307CC(a6, a7);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_442068, v14);

  return result;
}

void sub_43DF3C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t))
{
  v12 = *(sub_AB7CC0() - 8);
  v14 = __chkstk_darwin();
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 1) != 0 && *(a3 + 16) == a2)
  {
    v17 = v13;
    swift_beginAccess();
    *(a3 + 80) = &_swiftEmptySetSingleton;

    v18 = [objc_opt_self() defaultCenter];
    if (qword_DE6BF8 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:qword_E71830 object:a3];

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    *v16 = sub_ABA150();
    (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v17);
    v19 = sub_AB7CF0();
    (*(v12 + 8))(v16, v17);
    if ((v19 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v20 = *JSBridge.shared.unsafeMutableAddressor();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = -64;
    v22 = *&stru_B8.segname[(swift_isaMask & *v20) + 16];
    v23 = v20;
    v22(sub_442150, v21);

    if (a6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (a4)
    {
      sub_441630(a5);
    }

    if (a6)
    {
LABEL_6:
      (a6)(a1 & 1, a4, v14);
    }
  }
}

double sub_43E1F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  sub_1116A8(a5, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  sub_111814(v21, v17 + 48);
  *(v17 + 144) = a6;
  *(v17 + 152) = a7 & 1;
  *(v17 + 160) = a8;
  *(v17 + 168) = a9;

  v18 = a4;
  swift_errorRetain();
  v19 = a6;
  sub_307CC(a8, a9);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4415F4, v17);

  return result;
}

void sub_43E308(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, uint64_t))
{
  v16 = sub_43D968(a2);
  if (a3)
  {
    v17 = a4 == 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if (a4)
  {
    sub_441630(a5);
    goto LABEL_21;
  }

  if ((v18 & 1) != 0 && *(a1 + 16) == a6)
  {
    sub_440D8C(0, a2, 1);
    v19 = [a2 identifiers];
    v20 = [v19 universalStore];

    if (v20)
    {
      v21 = [v20 socialProfileID];
      if (v21)
      {
        v27 = sub_AB92A0();
        v23 = v22;
        swift_unknownObjectRelease();

        v21 = v27;
        if (a7)
        {
          goto LABEL_20;
        }

LABEL_18:
        swift_beginAccess();
        v24 = *(a1 + 88);

        v25 = sub_472F00(v21, v23, v24);

        if (v25)
        {
          swift_beginAccess();
          sub_2EF424(v21, v23);
          swift_endAccess();
        }

        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      v23 = 0xE000000000000000;
      if ((a7 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
      if ((a7 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (a8)
  {
    a8(v18, a4);
  }

  if ((v16 ^ sub_43D968(a2)))
  {
    v26 = [objc_opt_self() defaultCenter];
    if (qword_DE6BF8 != -1)
    {
      swift_once();
    }

    [v26 postNotificationName:qword_E71830 object:a1];
  }
}

void sub_43E588(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v13 = a4;
    v14 = a5;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_199560;
    v12 = &block_descriptor_139;
    v7 = _Block_copy(&v9);

    v8 = &selRef_declineFollowRequestFromPerson_completion_;
  }

  else
  {
    v13 = a4;
    v14 = a5;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_199560;
    v12 = &block_descriptor_42;
    v7 = _Block_copy(&v9);

    v8 = &selRef_acceptFollowRequestFromPerson_completion_;
  }

  [a2 *v8];
  _Block_release(v7);
}

void sub_43E6CC(void *a1, uint64_t a2, void (*a3)(void, uint64_t, void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB7CC0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v13 = sub_ABA150();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_AB7CF0();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_DE6BE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  if ([a1 hasLoadedValuesForPropertySet:qword_E71818])
  {
    v15 = sub_43D6A8(a1);
    v16 = *(v5 + 16);
    sub_1116A8(a2, v23);
    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = a1;
    sub_111814(v23, (v17 + 4));
    v17[16] = v16;
    v17[17] = a3;
    v17[18] = a4;
    v18 = v16;

    v19 = a1;
    sub_307CC(a3, a4);
    v20 = sub_43D6A8(v19);
    sub_43EC9C(v15, v19, v18, sub_441D7C, v17);
    v21 = sub_43D6A8(v19);
    if (v20 == 4)
    {
      if (v21 != 4)
      {
        goto LABEL_12;
      }
    }

    else if (v21 == 4 || v20 != v21)
    {
LABEL_12:
      v22 = [objc_opt_self() defaultCenter];
      if (qword_DE6BF0 != -1)
      {
        swift_once();
      }

      [v22 postNotificationName:qword_E71828 object:v5];

      goto LABEL_15;
    }

LABEL_15:

    return;
  }

  if (a3)
  {
    a3(0, 1, 0);
  }
}

double sub_43E9F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  sub_1116A8(a5, v20);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a2;
  sub_111814(v20, (v16 + 6));
  v16[18] = a6;
  v16[19] = a7;
  v16[20] = a8;

  v17 = a4;
  swift_errorRetain();
  v18 = a6;
  sub_307CC(a7, a8);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_441E40, v16);

  return result;
}

unint64_t sub_43EB04(unint64_t a1)
{
  if (a1 < 7)
  {
    return 0x30001000204uLL >> (8 * a1);
  }

  sub_ABAD90(24);
  v2._object = 0x8000000000B4AB80;
  v2._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v2);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x8000000000B65610;
  sub_AB94A0(v3);
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_AB94A0(v4);
  type metadata accessor for MPStoreSocialTransientFollowState(0);
  sub_ABAF70();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void sub_43EC14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t, void, uint64_t), uint64_t a8, uint64_t a9)
{
  if (result)
  {
    sub_441630(a3);
  }

  else if (a4 != 4 && *(a2 + 16) == a5)
  {
    sub_440A48(a4, a6, 1);
  }

  if (a7)
  {
    a7(a9, 0, result);
  }
}

void sub_43EC9C(unsigned __int8 a1, id a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v15 = a4;
      v16 = a5;
      v11 = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_43EF70;
      v14 = &block_descriptor_94_1;
      v8 = _Block_copy(&v11);

      v9 = &selRef_cancelFollowRequestOnPerson_completion_;
    }

    else if ([a2 isPrivate])
    {
      v15 = a4;
      v16 = a5;
      v11 = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_43EF70;
      v14 = &block_descriptor_100_0;
      v8 = _Block_copy(&v11);

      v9 = &selRef_requestFollowPerson_completion_;
    }

    else
    {
      v15 = a4;
      v16 = a5;
      v11 = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_43EF70;
      v14 = &block_descriptor_97;
      v8 = _Block_copy(&v11);

      v9 = &selRef_followPerson_completion_;
    }
  }

  else if (a1 == 2)
  {
    v15 = a4;
    v16 = a5;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_43EF70;
    v14 = &block_descriptor_91;
    v8 = _Block_copy(&v11);

    v9 = &selRef_unfollowPerson_completion_;
  }

  else
  {
    if (a1 != 3)
    {
      return;
    }

    v15 = a4;
    v16 = a5;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_43EF70;
    v14 = &block_descriptor_88_1;
    v8 = _Block_copy(&v11);

    v9 = &selRef_unblockPerson_completion_;
  }

  [a3 *v9];
  _Block_release(v8);
}

void sub_43EF70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_43EFE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB7CC0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v13 = sub_ABA150();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_AB7CF0();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = *(v5 + 16);
    sub_1116A8(a2, aBlock);
    v16 = swift_allocObject();
    v16[2] = v5;
    sub_111814(aBlock, (v16 + 3));
    v16[15] = v15;
    v16[16] = a1;
    v16[17] = a3;
    v16[18] = a4;
    aBlock[4] = sub_441BFC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3A5920;
    aBlock[3] = &block_descriptor_79_0;
    v17 = _Block_copy(aBlock);
    v18 = v15;

    v19 = a1;
    sub_307CC(a3, a4);

    [v18 removeFollower:v19 completion:v17];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

double sub_43F23C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  sub_1116A8(a3, v18);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  sub_111814(v18, (v14 + 4));
  v14[16] = a4;
  v14[17] = a5;
  v14[18] = a6;
  v14[19] = a7;
  swift_errorRetain();

  v15 = a4;
  v16 = a5;
  sub_307CC(a6, a7);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_441CC0, v14);

  return result;
}

void sub_43F338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  if (result)
  {
    sub_441630(a3);
  }

  else if (*(a2 + 16) == a4)
  {
    sub_4410EC(a5);
  }

  if (a6)
  {
    a6(result);
  }
}

void sub_43F3A4(char *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 1);
  __chkstk_darwin();
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  v11 = type metadata accessor for JSModelSocialPersonProfileBuilder();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
  *&v12[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v10;
  v13 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
  v14 = v10;
  v15 = [v13 initWithRequestedPropertySet:v14];
  if (v15)
  {
    *&v12[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v15;
    v21.receiver = v12;
    v21.super_class = v11;
    v4 = objc_msgSendSuper2(&v21, "init");

    v16 = [objc_opt_self() activeAccount];
    sub_21B8E0(a1, v16);
    v7 = v17;

    if (!v7)
    {
LABEL_9:

      return;
    }

    v18 = sub_43D968(v7) & 1;
    v19 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_hasRequestedToFollowCurrentUser;
    swift_beginAccess();
    sub_440D8C(a1[v19], v7, 0);
    if (v18 == (sub_43D968(v7) & 1))
    {
      v8 = v7;
      goto LABEL_8;
    }

    v8 = [objc_opt_self() defaultCenter];
    if (qword_DE6BF8 == -1)
    {
LABEL_6:
      [v8 postNotificationName:qword_E71830 object:v2];

      v4 = v7;
LABEL_8:

      v4 = v8;
      goto LABEL_9;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_43F6C8(char *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v7 = sub_ABA150();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v5 + 104);
  (v9)(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = sub_AB7CF0();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = v8;
  v12 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_followState;
  swift_beginAccess();
  v13 = a1[v12];
  if (v13 == 6)
  {
    return;
  }

  v44 = v9;
  v45 = v11;
  v46 = v2;
  sub_13C80(0, &qword_DF4BC8, MPStoreModelSocialPersonBuilder_ptr);
  v14 = [swift_getObjCClassFromMetadata() allSupportedProperties];
  if (!v14)
  {
    __break(1u);
    goto LABEL_37;
  }

  v15 = v14;
  v16 = type metadata accessor for JSModelSocialPersonProfileBuilder();
  v17 = objc_allocWithZone(v16);
  v17[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
  *&v17[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v15;
  v18 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
  v19 = v15;
  v20 = [v18 initWithRequestedPropertySet:v19];
  if (!v20)
  {
LABEL_37:
    __break(1u);
    return;
  }

  *&v17[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v20;
  v49.receiver = v17;
  v49.super_class = v16;
  v2 = objc_msgSendSuper2(&v49, "init");

  v21 = [objc_opt_self() activeAccount];
  sub_21B8E0(a1, v21);
  a1 = v22;

  v9 = v46;
  if (a1)
  {
    v23 = sub_43D6A8(a1);
    if ([a1 hasLightweightProfile])
    {
      *v7 = sub_ABA150();
      (v44)(v7, v47, v4);
      v10 = sub_AB7CF0();
      v45(v7, v4);
      if (v10)
      {
        v24 = [a1 identifiers];
        v25 = [v24 universalStore];

        if (v25)
        {
          v26 = [v25 socialProfileID];
          if (v26)
          {
            v27 = v26;
            v28 = sub_AB92A0();
            v30 = v29;
            swift_unknownObjectRelease();

LABEL_17:
            swift_beginAccess();
            v39 = 4;
            v40 = v28;
            v41 = v30;
            goto LABEL_21;
          }

          swift_unknownObjectRelease();
        }

        v28 = 0;
        v30 = 0xE000000000000000;
        goto LABEL_17;
      }

      goto LABEL_33;
    }

    *v7 = sub_ABA150();
    (v44)(v7, v47, v4);
    v10 = sub_AB7CF0();
    v45(v7, v4);
    if ((v10 & 1) == 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v31 = 0x30201000404uLL >> (8 * v13);
    v32 = [a1 identifiers];
    v33 = [v32 universalStore];

    if (v33)
    {
      v34 = [v33 socialProfileID];
      if (v34)
      {
        v35 = v34;
        v36 = sub_AB92A0();
        v38 = v37;
        swift_unknownObjectRelease();

LABEL_20:
        swift_beginAccess();
        v39 = v31;
        v40 = v36;
        v41 = v38;
LABEL_21:
        sub_2E5254(v39, v40, v41);
        swift_endAccess();
        v42 = sub_43D6A8(a1);
        if (v23 == 4)
        {
          if (v42 != 4)
          {
            goto LABEL_27;
          }
        }

        else if (v42 == 4 || v23 != v42)
        {
LABEL_27:
          v10 = [objc_opt_self() defaultCenter];
          if (qword_DE6BF0 == -1)
          {
LABEL_28:
            [v10 postNotificationName:qword_E71828 object:v9];

            v2 = a1;
            goto LABEL_29;
          }

LABEL_35:
          swift_once();
          goto LABEL_28;
        }

        v10 = a1;
LABEL_29:

        v2 = v10;
        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    v36 = 0;
    v38 = 0xE000000000000000;
    goto LABEL_20;
  }

LABEL_30:
}

NSString sub_43FC68()
{
  result = sub_AB9260();
  qword_E71828 = result;
  return result;
}

NSString sub_43FCA0()
{
  result = sub_AB9260();
  qword_E71830 = result;
  return result;
}

NSString sub_43FCD8()
{
  result = sub_AB9260();
  qword_E71838 = result;
  return result;
}

double sub_43FD10()
{
  v1 = v0;
  v2 = MPStoreSocialServiceControllerTransientStatesDidChangeNotification;
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v5 = v2;
  v6 = v3;
  *(v1 + 56) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v3, 1, 1, sub_441B4C, v4);

  return result;
}

void sub_43FDE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = sub_AB2BC0();
  if (v4)
  {
    v5 = v4;
    *&v16 = sub_AB92A0();
    *(&v16 + 1) = v6;
    sub_ABAD10();
    if (*(v5 + 16) && (v7 = sub_2EC004(v15), (v8 & 1) != 0))
    {
      sub_808B0(*(v5 + 56) + 32 * v7, &v16);
      sub_8085C(v15);
    }

    else
    {
      sub_8085C(v15);
      v16 = 0u;
      v17 = 0u;
    }

    if (*(&v17 + 1))
    {
      sub_13C80(0, &unk_E073B0, MPStoreSocialServiceTransientStatesSnapshot_ptr);
      v9 = swift_dynamicCast();
      v10 = v15[0];
      if (!v9)
      {
        v10 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_12E1C(&v16, &unk_DE8E40, &unk_AF8050);
  v10 = 0;
LABEL_13:
  v11 = *(v3 + 64);
  *(v3 + 64) = v10;

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  if (qword_DE6BF0 != -1)
  {
    swift_once();
  }

  [v13 postNotificationName:qword_E71828 object:v3];

  v14 = [v12 defaultCenter];
  if (qword_DE6BF8 != -1)
  {
    swift_once();
  }

  [v14 postNotificationName:qword_E71830 object:v3];
}

void sub_44002C()
{
  v1 = sub_AB7C10();
  v17 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB7C50();
  v4 = *(v16 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_AB7CF0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v12 = sub_976C4(_swiftEmptyArrayStorage);
    swift_beginAccess();
    v0[9] = v12;

    swift_beginAccess();
    v0[10] = &_swiftEmptySetSingleton;

    swift_beginAccess();
    v0[11] = &_swiftEmptySetSingleton;

    v13 = sub_ABA150();
    aBlock[4] = sub_441B44;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_72_1;
    v14 = _Block_copy(aBlock);

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    (*(v17 + 8))(v3, v1);
    (*(v4 + 8))(v6, v16);
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_4403F8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  if (qword_DE6BF0 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_E71828 object:a1];

  v4 = [v2 defaultCenter];
  v5 = v4;
  if (qword_DE6BF8 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_E71830 object:a1];
}

void sub_44051C(void *a1, void (*a2)(void))
{
  v5 = sub_43D6A8(a1);
  a2();
  v6 = sub_43D6A8(a1);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      return;
    }
  }

  else if (v6 != 4 && v5 == v6)
  {
    return;
  }

  v7 = [objc_opt_self() defaultCenter];
  v8 = v7;
  if (qword_DE6BF0 != -1)
  {
    swift_once();
    v7 = v8;
  }

  [v7 postNotificationName:qword_E71828 object:v2];
}

void sub_44065C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_38;
  }

  v9 = sub_976C4(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v2 + 72) = v9;

  if (!a1)
  {
    return;
  }

  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v45 = a1;
  while (v13)
  {
LABEL_12:
    while (1)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = (v15 << 10) | (16 * v17);
      v19 = (*(a1 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a1 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];

      v25._rawValue = &off_CEFC70;
      v48._countAndFlagsBits = v23;
      v48._object = v24;
      v26 = sub_ABB140(v25, v48);

      if (v26 > 2)
      {
        break;
      }

      if (v26 == 2)
      {
        v46 = 0;
        goto LABEL_22;
      }

LABEL_7:

      if (!v13)
      {
        goto LABEL_8;
      }
    }

    switch(v26)
    {
      case 3:
        v27 = 1;
        break;
      case 4:
        v27 = 2;
        break;
      case 5:
        v27 = 3;
        break;
      default:
        goto LABEL_7;
    }

    v46 = v27;
LABEL_22:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v2 + 72);
    v29 = v47;
    *(v2 + 72) = 0x8000000000000000;
    v30 = sub_2EBF88(v21, v20);
    v32 = v29[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_37;
    }

    v36 = v31;
    if (v29[3] < v35)
    {
      sub_328818(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_2EBF88(v21, v20);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_40;
      }

LABEL_27:
      a1 = v45;
      if (v36)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v40 = v30;
    sub_331B48();
    v30 = v40;
    a1 = v45;
    if (v36)
    {
LABEL_28:
      v38 = v30;

      v39 = v47;
      *(v47[7] + v38) = v46;
      goto LABEL_32;
    }

LABEL_30:
    v39 = v47;
    v47[(v30 >> 6) + 8] |= 1 << v30;
    v41 = (v39[6] + 16 * v30);
    *v41 = v21;
    v41[1] = v20;
    *(v39[7] + v30) = v46;
    v42 = v39[2];
    v34 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v34)
    {
      goto LABEL_39;
    }

    v39[2] = v43;
LABEL_32:
    *(v2 + 72) = v39;
    swift_endAccess();
  }

LABEL_8:
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_ABB4C0();
  __break(1u);
}

void sub_440A48(int a1, void *a2, char a3)
{
  v30 = a1;
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v8 = sub_ABA150();
  v10 = *(v6 + 104);
  v29 = enum case for DispatchPredicate.onQueue(_:);
  v28 = v10;
  v10(v8);
  v11 = sub_AB7CF0();
  v27 = *(v6 + 8);
  v27(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v12 = [a2 identifiers];
  v13 = [v12 universalStore];

  v26[1] = v9;
  if (v13)
  {
    v14 = [v13 socialProfileID];
    if (v14)
    {
      v15 = v14;
      v16 = sub_AB92A0();
      v18 = v17;
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_7:
  swift_beginAccess();

  v19 = v30;
  sub_2E5254(v30, v16, v18);
  swift_endAccess();
  if ((a3 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v19 <= 1u)
  {
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    if (v19 != 2)
    {
      if (v19 == 3)
      {
        v20 = 5;
        goto LABEL_17;
      }

LABEL_12:

      return;
    }

    v20 = 4;
  }

LABEL_17:
  *v8 = sub_ABA150();
  v28(v8, v29, v5);
  v21 = sub_AB7CF0();
  v27(v8, v5);
  if ((v21 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v22 = *JSBridge.shared.unsafeMutableAddressor();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = v18;
  *(v23 + 32) = v20;
  v24 = *&stru_B8.segname[(swift_isaMask & *v22) + 16];
  v25 = v22;
  v24(sub_442150, v23);
}

void sub_440D8C(int a1, void *a2, char a3)
{
  v29 = a1;
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v8 = sub_ABA150();
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v28 = *(v6 + 104);
  v28(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = sub_AB7CF0();
  v27 = *(v6 + 8);
  v27(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v9;
  v12 = a3;
  v13 = [a2 identifiers];
  v14 = [v13 universalStore];

  HIDWORD(v25) = v10;
  if (v14)
  {
    v15 = [v14 socialProfileID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_AB92A0();
      v19 = v18;
      swift_unknownObjectRelease();

      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      swift_beginAccess();

      sub_1A9FC(&v30, v17, v19);
      swift_endAccess();

      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v17 = 0;
  v19 = 0xE000000000000000;
  if (v29)
  {
    goto LABEL_9;
  }

LABEL_5:
  swift_beginAccess();
  sub_2EF424(v17, v19);
  swift_endAccess();

  if ((v12 & 1) == 0)
  {
LABEL_6:

    return;
  }

LABEL_10:
  *v8 = sub_ABA150();
  v28(v8, HIDWORD(v25), v5);
  v20 = sub_AB7CF0();
  v27(v8, v5);
  if ((v20 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v21 = *JSBridge.shared.unsafeMutableAddressor();
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = 64;
  v23 = *&stru_B8.segname[(swift_isaMask & *v21) + 16];
  v24 = v21;
  v23(sub_442150, v22);
}

void sub_4410EC(void *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v7 = sub_ABA150();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = sub_AB7CF0();
  v25 = *(v5 + 8);
  v25(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = [a1 identifiers];
  v12 = [v11 universalStore];

  v24 = v9;
  if (v12)
  {
    v13 = [v12 socialProfileID];
    if (v13)
    {
      HIDWORD(v23) = v8;
      v14 = v2;
      v15 = v13;
      v16 = sub_AB92A0();
      v18 = v17;
      swift_unknownObjectRelease();

      v2 = v14;
      v8 = HIDWORD(v23);
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_7:
  swift_beginAccess();

  sub_1A9FC(&v26, v16, v18);
  swift_endAccess();

  *v7 = sub_ABA150();
  v24(v7, v8, v4);
  v10 = sub_AB7CF0();
  v25(v7, v4);
  if ((v10 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = *JSBridge.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v18;
  *(v20 + 32) = 0x80;
  v21 = *&stru_B8.segname[(swift_isaMask & *v19) + 16];
  v22 = v19;
  v21(sub_441B40, v20);

  v10 = [objc_opt_self() defaultCenter];
  if (qword_DE6C00 != -1)
  {
LABEL_12:
    swift_once();
  }

  [v10 postNotificationName:qword_E71838 object:v2];
}

uint64_t sub_44146C()
{

  return v0;
}

uint64_t sub_4414D4()
{
  sub_44146C();

  return swift_deallocClassInstance();
}

double block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_441544()
{

  if (*(v0 + 112) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
    }

    if (*(v0 + 112))
    {
    }

    if (*(v0 + 128))
    {
    }
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

void sub_441630(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v5 = sub_ABA150();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_AB7CF0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_1116A8(a1, aBlock);
    if (aBlock[8] == 1)
    {
      sub_12E1C(aBlock, &unk_DEA520, &unk_AFDBF0);
    }

    else
    {
      sub_17704(aBlock, v14);
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v7 = sub_AB9260();

      v8 = [objc_opt_self() alertControllerWithTitle:0 message:v7 preferredStyle:1];

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v9 = sub_AB9260();

      aBlock[4] = UIScreen.Dimensions.size.getter;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1546C;
      aBlock[3] = &block_descriptor_45_2;
      v10 = _Block_copy(aBlock);

      v11 = [objc_opt_self() actionWithTitle:v9 style:1 handler:v10];
      _Block_release(v10);

      [v8 addAction:v11];
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v8, 1, 1, 0, 0);
      sub_1611C(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4419F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_441A34()
{

  return swift_deallocObject();
}

uint64_t sub_441A80()
{

  return swift_deallocObject();
}

double sub_441B28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_441B54()
{

  if (*(v0 + 88) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 72);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
    }

    if (*(v0 + 88))
    {
    }

    if (*(v0 + 104))
    {
    }
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_441C10()
{

  if (*(v0 + 96) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
    }

    if (*(v0 + 96))
    {
    }

    if (*(v0 + 112))
    {
    }
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_441CD4()
{

  if (*(v0 + 96) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
    }

    if (*(v0 + 96))
    {
    }

    if (*(v0 + 112))
    {
    }
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_441D90()
{

  if (*(v0 + 112) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
    }

    if (*(v0 + 112))
    {
    }

    if (*(v0 + 128))
    {
    }
  }

  if (*(v0 + 152))
  {
  }

  return swift_deallocObject();
}

void sub_441E40()
{
  v1 = *(v0 + 32);
  sub_43EB04(*(v0 + 16));
  sub_44051C(v1, sub_441ED4);
}

uint64_t sub_441F10()
{

  if (*(v0 + 96) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
    }

    if (*(v0 + 96))
    {
    }

    if (*(v0 + 112))
    {
    }
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_441FC0()
{

  if (*(v0 + 112) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
    }

    if (*(v0 + 112))
    {
    }

    if (*(v0 + 128))
    {
    }
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_60Tm()
{
  sub_441B28(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

double sub_442154(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSDeepLinkSegue_viewIdentifier;
  swift_beginAccess();
  v5 = v1[v3];
  if (v5 == 7)
  {
    return result;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v7 = v1;
  sub_4148FC(v24);
  if (v26 == 1)
  {
    sub_111898(v24);
LABEL_15:
    if (v5 > 5)
    {
      sub_442694();
    }

    else
    {
      sub_4424E0();
    }

    return result;
  }

  sub_17704(v24, v27);
  PresentationSource.windowScene.getter();
  if (!v8)
  {
    sub_1611C(v27);
    goto LABEL_15;
  }

  v9 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v11 = Strong, v12 = UIViewController.canBeDismissed.getter(), v11, !v12))
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = [v13 presentedViewController];

    if (!v14)
    {
      sub_1611C(v27);

      goto LABEL_15;
    }
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = OBJC_IVAR____TtC11MusicJSCore15JSDeepLinkSegue_animated;
    swift_beginAccess();
    v18 = v7[v17];
    sub_2D384(a1, v24);
    v19 = swift_allocObject();
    v20 = v24[1];
    *(v19 + 16) = v24[0];
    *(v19 + 32) = v20;
    *(v19 + 48) = v24[2];
    *(v19 + 64) = v25;
    *(v19 + 72) = v9;
    *(v19 + 80) = sub_442434;
    *(v19 + 88) = v6;
    v23[4] = sub_4428B0;
    v23[5] = v19;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_1B5EB4;
    v23[3] = &block_descriptor_140;
    v21 = _Block_copy(v23);
    v22 = v9;

    [v16 dismissViewControllerAnimated:v18 completion:v21];

    sub_1611C(v27);
    _Block_release(v21);
  }

  else
  {
    sub_1611C(v27);
    v16 = v9;
  }

  return result;
}

uint64_t sub_4423FC()
{

  return swift_deallocObject();
}

void sub_442434(uint64_t a1)
{
  if (*(v1 + 16) > 5u)
  {
    sub_442694();
  }

  else
  {
    sub_4424E0();
  }
}

uint64_t sub_442448(uint64_t a1, void *a2, void (*a3)(_BYTE *))
{
  sub_2D384(a1, v7);
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v10 = xmmword_AF7710;
  PresentationSource.init(windowScene:position:)(a2, v8, v6);
  sub_4161A4(v6);
  a3(v7);
  return sub_16170(v7);
}

void sub_4424E0()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.jsBridge.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_425E68(0xD000000000000028, 0x8000000000B65640, &v10);
    _os_log_impl(&dword_0, v5, v6, "Attempted to perform %s within Legacy Music (picker environment) which is unexpected.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  (*(v1 + 8))(v3, v0);
}

void sub_442694()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.jsBridge.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_425E68(0xD000000000000024, 0x8000000000B65670, &v10);
    _os_log_impl(&dword_0, v5, v6, "Attempted to perform %s within Legacy Music (picker environment) which is unexpected.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_442848()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  return swift_deallocObject();
}

double block_copy_helper_140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void Track.identifierSet.getter()
{
  v1 = [objc_opt_self() kindWithVariants:1];
  v7 = v0;
  v2 = objc_allocWithZone(MPIdentifierSet);
  v3 = sub_AB9260();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_57B7C;
  *(v4 + 24) = &v6;
  aBlock[4] = sub_3F328C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_141;
  v5 = _Block_copy(aBlock);

  [v2 initWithSource:v3 modelKind:v1 block:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void Track.fetchModelObject(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = sub_AB8860();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v47 = v7;
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB8440();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v44 - v12;
  sub_AB8510();
  sub_AB8500();
  sub_AB8390();

  sub_AB84B0();

  (*(v9 + 104))(v11, enum case for MusicLibrary.AddStatus.added(_:), v8);
  v14 = sub_AB8430();
  v15 = *(v9 + 8);
  v15(v11, v8);
  v15(v13, v8);
  if (v14)
  {
    v45 = v6;
    v46 = a2;
    v16 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 kindWithVariants:3];
    [v18 setItemKind:v19];

    if (qword_DE6C08 != -1)
    {
      swift_once();
    }

    [v18 setItemProperties:qword_E073C0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_AF82B0;
    v21 = [v17 kindWithVariants:1];
    v44 = &v44;
    __chkstk_darwin();
    v22 = v3;
    *(&v44 - 2) = v3;
    v23 = objc_allocWithZone(MPIdentifierSet);
    v24 = sub_AB9260();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_44545C;
    *(v25 + 24) = &v44 - 4;
    v54 = sub_445458;
    v55 = v25;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_41A314;
    v53 = &block_descriptor_16_3;
    v26 = _Block_copy(&aBlock);

    v27 = [v23 initWithSource:v24 modelKind:v21 block:v26];
    _Block_release(v26);

    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if ((v26 & 1) == 0)
    {
      *(v20 + 32) = v27;
      sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
      isa = sub_AB9740().super.isa;

      [v18 setAllowedItemIdentifiers:isa];

      v29 = sub_AB9260();
      [v18 setLabel:v29];

      sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
      v30 = static MPMediaLibrary.device.getter();
      [v18 setMediaLibrary:v30];

      v31 = v45;
      v32 = v48;
      (*(v45 + 16))(v48, v22, v5);
      v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v34 = (v47 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      (*(v31 + 32))(v35 + v33, v32, v5);
      v36 = (v35 + v34);
      v37 = v46;
      *v36 = v49;
      v36[1] = v37;
      v54 = sub_44508C;
      v55 = v35;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_151E0;
      v53 = &block_descriptor_22_1;
      v38 = _Block_copy(&aBlock);

      [v18 performWithResponseHandler:v38];
      _Block_release(v38);
LABEL_8:

      return;
    }

    __break(1u);
  }

  else
  {
    v39 = [objc_opt_self() kindWithVariants:1];
    __chkstk_darwin();
    *(&v44 - 2) = v3;
    v40 = objc_allocWithZone(MPIdentifierSet);
    v41 = sub_AB9260();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_44545C;
    *(v42 + 24) = &v44 - 4;
    v54 = sub_445458;
    v55 = v42;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_41A314;
    v53 = &block_descriptor_8_3;
    v43 = _Block_copy(&aBlock);

    v18 = [v40 initWithSource:v41 modelKind:v39 block:v43];
    _Block_release(v43);

    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if ((v40 & 1) == 0)
    {
      sub_443284(v18, v49, a2);
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_443284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v5 = sub_AB8860();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v42 = v7;
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v39 - v8;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E70DC0);
  v11 = *(v6 + 16);
  v44 = v3;
  v41 = v11;
  v11(v9, v3, v5);
  v12 = sub_AB4BA0();
  v13 = sub_AB9F50();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    sub_4450A4();
    v17 = sub_ABB330();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_425E68(v17, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "Falling back to catalog request for track: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);

    a1 = v40;
  }

  else
  {
    (*(v6 + 8))(v9, v5);
  }

  v21 = [objc_allocWithZone(MPModelSong) initWithIdentifiers:a1];
  v22 = type metadata accessor for StoreModelItemRequest();
  v23 = objc_allocWithZone(v22);
  v24 = OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model;
  *&v23[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = 0;
  v25 = OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching;
  *&v23[v24] = v21;
  v23[v25] = 0;
  v48.receiver = v23;
  v48.super_class = v22;
  v26 = v21;
  v27 = objc_msgSendSuper2(&v48, "init");
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 kindWithVariants:3];
  [v29 setItemKind:v30];

  if (qword_DE6C08 != -1)
  {
    swift_once();
  }

  [v29 setItemProperties:qword_E073C0];
  v31 = sub_AB9260();
  [v29 setLabel:v31];

  v32 = v43;
  v41(v43, v44, v5);
  v33 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v34 = (v42 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v6 + 32))(v35 + v33, v32, v5);
  v36 = (v35 + v34);
  v37 = v46;
  *v36 = v45;
  v36[1] = v37;
  aBlock[4] = sub_44519C;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_36_1;
  v38 = _Block_copy(aBlock);

  [v29 performWithResponseHandler:v38];
  _Block_release(v38);
}

void sub_44375C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_AB8860();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = [a1 results];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 firstItem];

      if (v17)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a4();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v38 = a4;
  v18 = sub_AB4BC0();
  __swift_project_value_buffer(v18, qword_E70DC0);
  v19 = *(v11 + 16);
  v39 = a3;
  v19(v14, a3, v10);
  swift_errorRetain();
  v20 = sub_AB4BA0();
  v21 = sub_AB9F30();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = a5;
    v23 = v22;
    aBlock[0] = swift_slowAlloc();
    *v23 = 136446466;
    sub_4450A4();
    v24 = sub_ABB330();
    v26 = v25;
    (*(v11 + 8))(v14, v10);
    v27 = sub_425E68(v24, v26, aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v40 = a2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0, &qword_B0EB40);
    v28 = sub_AB9350();
    v30 = sub_425E68(v28, v29, aBlock);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_0, v20, v21, "Failed to resolve library song model for track: %{public}s with error = %{public}s", v23, 0x16u);
    swift_arrayDestroy();

    a5 = v37;
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  v31 = [objc_opt_self() kindWithVariants:1];
  __chkstk_darwin();
  *(&v37 - 2) = v39;
  v32 = objc_allocWithZone(MPIdentifierSet);
  v33 = sub_AB9260();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_44545C;
  *(v34 + 24) = &v37 - 4;
  aBlock[4] = sub_445458;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_30_2;
  v35 = _Block_copy(aBlock);

  v36 = [v32 initWithSource:v33 modelKind:v31 block:v35];
  _Block_release(v35);

  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  else
  {
    sub_443284(v36, v38, a5);
  }
}

void sub_443C6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_AB8860();
  v8 = *(v7 - 8);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    v13 = [v9 results];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 firstItem];

      if (v15)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a4();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v16 = sub_AB4BC0();
  __swift_project_value_buffer(v16, qword_E70DC0);
  (*(v8 + 16))(v12, a3, v7);
  swift_errorRetain();
  v17 = sub_AB4BA0();
  v18 = sub_AB9F30();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v19 = 136446466;
    sub_4450A4();
    v20 = sub_ABB330();
    v22 = v21;
    (*(v8 + 8))(v12, v7);
    v23 = sub_425E68(v20, v22, &v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v27 = a2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0, &qword_B0EB40);
    v24 = sub_AB9350();
    v26 = sub_425E68(v24, v25, &v28);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_0, v17, v18, "Failed to resolve catalog song model for song: %{public}s = %{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    (*(v8 + 8))(v12, v7);
  }
}

void sub_443FD0(uint64_t isEscapingClosureAtFileLocation, unint64_t a2)
{
  v4 = sub_AB8860();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB87D0();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_4453F0;
    *(v4 + 24) = v12;
    aBlock[4] = sub_C3FB8;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_4522E8;
    aBlock[3] = &block_descriptor_64_0;
    v7 = _Block_copy(aBlock);

    [isEscapingClosureAtFileLocation setUniversalStoreIdentifiersWithBlock:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  static ApplicationCapabilities.shared.getter(aBlock);
  sub_70C54(aBlock);
  if ((aBlock[0] & 0x10000) != 0)
  {
    (*(v5 + 16))(v7, a2, v4);
    a2 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v14 = *(v5 + 32);
    v5 += 32;
    v14(v13 + a2, v7, v4);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_44531C;
    *(v4 + 24) = v13;
    v26 = sub_57B84;
    v27 = v4;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_4522E8;
    v25 = &block_descriptor_54_0;
    v7 = _Block_copy(&v22);

    [isEscapingClosureAtFileLocation setUniversalStoreIdentifiersWithBlock:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
  v15 = static MPMediaLibrary.device.getter();
  v16 = [v15 uniqueIdentifier];

  if (v16)
  {
    (*(v5 + 16))(v7, a2, v4);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, v7, v4);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_44527C;
    *(v19 + 24) = v18;
    v26 = sub_445458;
    v27 = v19;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_444B84;
    v25 = &block_descriptor_45_3;
    v20 = _Block_copy(&v22);

    [isEscapingClosureAtFileLocation setLibraryIdentifiersWithDatabaseID:v16 block:v20];
    _Block_release(v20);
    v21 = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
    }
  }
}

id sub_4444DC(id result, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  v5 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = v5;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v28 = result;

    sub_44F40C(a2, a3, 10);
    v31 = v30;
    v33 = v32;

    result = v28;
    if ((v33 & 1) == 0)
    {
      v9 = v31;
      return [result setAdamID:v9];
    }

    goto LABEL_63;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v34 = result;
      v4 = sub_ABAE60();
      result = v34;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v16 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v17 = (v4 + 1);
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v16)
            {
LABEL_53:
              LOBYTE(v4) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_69;
    }

    if (v5)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v23 = *v4 - 48;
        if (v23 > 9)
        {
          break;
        }

        v24 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_61;
  }

  v35[0] = a2;
  v35[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 == 45)
    {
      if (!v4)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (--v4)
      {
        v9 = 0;
        v13 = v35 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v4)
    {
      v9 = 0;
      v25 = v35;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    v9 = 0;
    LOBYTE(v4) = 1;
LABEL_62:
    v36 = v4;
    if ((v4 & 1) == 0)
    {
      return [result setAdamID:v9];
    }

LABEL_63:
    v9 = 0;
    return [result setAdamID:v9];
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v20 = v35 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

void sub_4447F8(void *a1)
{
  sub_AB8810();
  v2 = sub_AB9260();

  [a1 setUniversalCloudLibraryID:v2];
}

unint64_t sub_444864(void *a1)
{
  result = sub_AB8810();
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_63;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v32 = 0;
    sub_44F40C(result, v3, 10);
    v8 = v27;
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      return [a1 setPersistentID:v8];
    }

    goto LABEL_63;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_ABAE60();
      v5 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v32 = v5;
      v26 = v5;

      if ((v26 & 1) == 0)
      {
        return [a1 setPersistentID:v8];
      }

LABEL_63:
      v8 = 0;
      return [a1 setPersistentID:v8];
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v31[0] = result;
  v31[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v18 = v31 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

double sub_444B84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  swift_unknownObjectRelease();
  return result;
}

void sub_444BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  v10 = MPModelRelationshipSongArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  v41 = v10;
  isa = sub_AB9740().super.isa;
  v15 = objc_opt_self();
  v16 = [v15 propertySetWithProperties:isa];

  *(inited + 48) = v16;
  v17 = MPModelRelationshipSongComposer;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  v21 = v17;
  v22 = sub_AB9740().super.isa;
  v23 = [v15 propertySetWithProperties:v22];

  *(inited + 72) = v23;
  v24 = MPModelRelationshipSongAlbum;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_AF85F0;
  *(v26 + 32) = sub_AB92A0();
  *(v26 + 40) = v27;
  *(v26 + 48) = sub_AB92A0();
  *(v26 + 56) = v28;
  v29 = v24;
  v30 = sub_AB9740().super.isa;
  v31 = [v15 propertySetWithProperties:v30];

  *(inited + 96) = v31;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MPPropertySet);
  v33 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v34 = sub_AB8FD0().super.isa;

  v35 = [v32 initWithProperties:v33 relationships:v34];

  v36 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v37 = sub_10F414(v36);
  v38 = [v35 propertySetByCombiningWithPropertySet:v37];

  v39 = sub_2BAFF8(v36);
  v40 = [v38 propertySetByCombiningWithPropertySet:v39];

  qword_E073C0 = v40;
}

double block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_4450A4()
{
  result = qword_E073D0;
  if (!qword_E073D0)
  {
    sub_AB8860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E073D0);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_AB8860();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_4451B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_AB8860() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t objectdestroy_38Tm_0()
{
  v1 = sub_AB8860();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_445334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_AB8860() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_4453B8()
{

  return swift_deallocObject();
}

void sub_445460(uint64_t a1)
{
  *(a1 + qword_E074A0) = 0;
  v1 = a1 + qword_E074B0;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (a1 + qword_E074B8);
  *v2 = 0;
  v2[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_4454F0()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for JSFlowcaseViewController(0);
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_E074B8];
  v12 = *&v1[qword_E074B8];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  v11 = &v1[qword_E074B0];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
}

void sub_445618(void *a1)
{
  v1 = a1;
  sub_4454F0();
}

void sub_445660(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for JSFlowcaseViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 viewBackgroundColor];
    [v3 setBackgroundColor:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_445718(void *a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for JSFlowcaseViewController(0);
  objc_msgSendSuper2(&v25, "traitCollectionDidChange:", a1);
  v3 = &selRef__authenticateReturningError_;
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (!a1 || v5 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = [a1 preferredContentSizeCategory];
  v9 = sub_AB92A0();
  v11 = v10;
  if (v9 == sub_AB92A0() && v11 == v12)
  {

    v3 = &selRef__authenticateReturningError_;
    goto LABEL_9;
  }

  v13 = sub_ABB3C0();

  v3 = &selRef__authenticateReturningError_;
  if ((v13 & 1) == 0)
  {
LABEL_7:
    [v1 loadViewIfNeeded];
    v14 = *&v1[qword_DFE2F8];
    if (!v14)
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = [v14 collectionViewLayout];
    v16 = &v1[qword_E074B0];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = 1;
  }

LABEL_9:
  if (![v1 isViewLoaded])
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v17 = *&v1[qword_DFE2F8];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v18 = [v17 collectionViewLayout];
  type metadata accessor for ShelfCollectionViewLayout(0);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = [v1 v3[334]];
    v22 = [v21 horizontalSizeClass];

    LODWORD(v21) = v22 == &dword_0 + 1;
    v23 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
    swift_beginAccess();
    v24 = *(v20 + v23);
    *(v20 + v23) = v21;
    if (v21 != v24)
    {
      sub_32533C();
    }
  }
}

void sub_4459BC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_445718(a3);
}

id sub_445A28(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_AB9260();

  return v1;
}

Class sub_445AB8()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void *sub_445B30()
{
  v1 = qword_E074A0;
  if (*&v0[qword_E074A0])
  {
    v2 = *&v0[qword_E074A0];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07AC8, &qword_B0F9C8);
    swift_allocObject();
    v2 = sub_2BFB80(v0, v4, 0, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_445BFC@<D0>(_OWORD *a1@<X8>)
{
  if (*(v1 + qword_DFE2F0))
  {
    type metadata accessor for JSFlowcaseModelResponse();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_jsResults);
      isa = sub_AB3770().super.isa;
      v6 = [v4 itemAtIndexPath:isa];

      if (v6)
      {
        type metadata accessor for JSFlowcaseItem(0);
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = v7;
          v9 = (v7 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_headlineText);
          swift_beginAccess();
          v10 = *v9;
          v11 = v9[1];

          swift_unknownObjectRetain();
          v28 = IndexPath.safeItem.getter();
          v12 = sub_27EEA4(v8);
          v14 = v13;
          if (!v11)
          {
            v15 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
            swift_beginAccess();
            v16 = *(v8 + v15);
            if (v16)
            {
              v17 = v16;
              v18 = [v17 name];
              if (v18)
              {
                v27 = v18;
                v10 = sub_AB92A0();
                v11 = v19;

                goto LABEL_14;
              }
            }

            v10 = 0;
            v11 = 0;
          }

LABEL_14:
          v25 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
          swift_beginAccess();
          v26 = *(v8 + v25) != 0;
          *&v29 = v12;
          *(&v29 + 1) = v14;
          *&v30 = v10;
          *(&v30 + 1) = v11;
          *&v31 = v8;
          *(&v31 + 1) = v28;
          LOBYTE(v32) = v26;
          *(&v32 + 1) = 5122;
          *(&v32 + 1) = 0;
          *&v33 = 0;
          *(&v33 + 1) = v8;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37[0] = 1;
          *&v37[8] = 0;
          *&v37[16] = 0;
          v37[24] = 2;
          v38[0] = v12;
          v38[1] = v14;
          v38[2] = v10;
          v38[3] = v11;
          v38[4] = v8;
          v38[5] = v28;
          v39 = v26;
          v40 = 5122;
          v41 = 0;
          v42 = 0;
          v43 = v8;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 1;
          v48 = 0;
          v49 = 0;
          v50 = 2;
          sub_465F4(&v29, &v60);
          sub_46650(v38);
          v57 = v35;
          v58 = v36;
          v59[0] = *v37;
          *(v59 + 9) = *&v37[9];
          v53 = v31;
          v54 = v32;
          v55 = v33;
          v56 = v34;
          v51 = v29;
          v52 = v30;
          UIScreen.Dimensions.size.getter();
          v66 = v57;
          v67 = v58;
          v68[0] = v59[0];
          *(v68 + 9) = *(v59 + 9);
          v62 = v53;
          v63 = v54;
          v64 = v55;
          v65 = v56;
          v60 = v51;
          v61 = v52;
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  sub_465CC(&v60);
LABEL_11:
  v20 = v67;
  a1[6] = v66;
  a1[7] = v20;
  a1[8] = v68[0];
  *(a1 + 137) = *(v68 + 9);
  v21 = v63;
  a1[2] = v62;
  a1[3] = v21;
  v22 = v65;
  a1[4] = v64;
  a1[5] = v22;
  result = *&v60;
  v24 = v61;
  *a1 = v60;
  a1[1] = v24;
  return result;
}

void sub_445F14(void *a1)
{
  sub_3B316C(a1);
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];

  [a1 setAlwaysBounceVertical:0];
  [a1 setAlwaysBounceHorizontal:1];
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  [a1 setClipsToBounds:0];
  type metadata accessor for FlowcaseCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.reuseIdentifier.getter();
  v5 = sub_AB9260();

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

  sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_AB9260();
  [a1 registerClass:v6 forCellWithReuseIdentifier:v7];
}

_BYTE *sub_446098()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for ShelfCollectionViewLayout(0)) init];
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  LODWORD(v3) = v4 == &dword_0 + 1;
  v5 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  swift_beginAccess();
  v6 = v2[v5];
  v2[v5] = v3;
  if (v3 != v6)
  {
    sub_32533C();
  }

  return v2;
}

void sub_446154(_BYTE *a1, id a2)
{
  v5 = [a2 contentItem];
  v6 = 0;
  v7 = &selRef__authenticateReturningError_;
  v139 = v2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v8 = v5;
  v9 = MPModelStoreBrowseContentItem.kind.getter();
  v11 = v9;
  if (v10 > 6u)
  {
    if (v10 > 8u)
    {
      if (v10 != 9)
      {
        if (v10 == 12)
        {
          v58 = sub_4A3F1C();
          sub_10AC20(v11);
          v60 = v59;

          v138 = [v11 shouldVisuallyDisableFor:v60];
          v61 = [v11 title];
          if (v61)
          {
            v62 = v61;
            v63 = sub_AB92A0();
            v19 = v64;

            v20 = v11;
            v21 = v63;
            v22 = 12;
            goto LABEL_35;
          }

          v85 = v11;
          v86 = 12;
          goto LABEL_64;
        }

        if (v10 == 255)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v52 = [v9 title];
      if (v52)
      {
        v53 = v52;
        v41 = sub_AB92A0();
        v19 = v54;
      }

      else
      {
        v41 = 0;
        v19 = 0;
      }

      v80 = [a2 subtitleText];
      if (v80)
      {
        v81 = v80;
        v28 = sub_AB92A0();
        v29 = v82;

        v78 = v11;
        v79 = 9;
        goto LABEL_69;
      }

      v83 = v11;
      v84 = 9;
LABEL_71:
      sub_3EB30(v83, v84);

      v138 = 0;
      v28 = 0;
      v29 = 0;
      goto LABEL_72;
    }

    if (v10 != 7)
    {
      if (v10 != 8)
      {
        goto LABEL_36;
      }

      v30 = sub_4A3F1C();
      sub_10AC20(v11);
      v32 = v31;

      v138 = [v11 shouldVisuallyDisableFor:v32];
      v33 = [v11 title];
      if (v33)
      {
        v34 = v33;
        v35 = sub_AB92A0();
        v19 = v36;
      }

      else
      {
        v35 = 0;
        v19 = 0;
      }

      v65 = [v11 show];
      if (v65)
      {
        v66 = v65;
        v67 = [v65 title];
        if (v67)
        {
          v68 = v67;
          v28 = sub_AB92A0();
          v29 = v69;

          sub_3EB30(v11, 8);
LABEL_75:
          v137 = 1;
          v21 = v35;
          v7 = &selRef__authenticateReturningError_;
          goto LABEL_85;
        }
      }

      sub_3EB30(v11, 8);

      v28 = 0;
      v29 = 0;
      goto LABEL_75;
    }

    v43 = sub_4A3F1C();
    sub_10AC20(v11);
    v45 = v44;

    v138 = [v11 shouldVisuallyDisableFor:v45];
    v46 = [v11 title];
    if (v46)
    {
      v47 = v46;
      v136 = sub_AB92A0();
      v19 = v48;
    }

    else
    {
      v136 = 0;
      v19 = 0;
    }

    v70 = [v11 artist];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 name];
      if (v72)
      {
        v73 = v72;
        v28 = sub_AB92A0();
        v29 = v74;

LABEL_78:
        if ([v11 hasVideo])
        {
          [v11 duration];
          v6 = v95;
          sub_3EB30(v11, 7);

          v137 = 0;
LABEL_84:
          v21 = v136;
          goto LABEL_85;
        }

        sub_3EB30(v11, 7);

LABEL_83:
        v137 = 1;
        goto LABEL_84;
      }
    }

    v28 = 0;
    v29 = 0;
    goto LABEL_78;
  }

  if (v10 > 2u)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        if (v10 == 5)
        {
          v12 = sub_4A3F1C();
          sub_10AC20(v11);
          v14 = v13;

          v138 = [v11 shouldVisuallyDisableFor:v14];
          v15 = [v11 name];
          if (v15)
          {
            v16 = v15;
            v17 = sub_AB92A0();
            v19 = v18;

            v20 = v11;
            v21 = v17;
            v22 = 5;
LABEL_35:
            sub_3EB30(v20, v22);

            v28 = 0;
            v29 = 0;
LABEL_40:
            v137 = 1;
            goto LABEL_85;
          }

          v85 = v11;
          v86 = 5;
LABEL_64:
          sub_3EB30(v85, v86);

          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v55 = [v9 name];
      if (v55)
      {
        v56 = v55;
        v136 = sub_AB92A0();
        v19 = v57;
      }

      else
      {
        v136 = 0;
        v19 = 0;
      }

      v87 = [v11 curator];
      if (v87)
      {
        v88 = v87;
        v89 = [v87 name];
        if (v89)
        {
          v90 = v89;
          v28 = sub_AB92A0();
          v29 = v91;

          sub_3EB30(v11, 4);
          v138 = 0;
          goto LABEL_83;
        }
      }

      sub_3EB30(v11, 4);

      v138 = 0;
      v28 = 0;
      v29 = 0;
      goto LABEL_83;
    }

    v49 = [v9 shortName];
    if (v49)
    {
      v50 = v49;
      v41 = sub_AB92A0();
      v19 = v51;
    }

    else
    {
      v41 = 0;
      v19 = 0;
    }

    v75 = [v11 shortEditorNotes];
    if (v75)
    {
      v76 = v75;
      v28 = sub_AB92A0();
      v29 = v77;

      v78 = v11;
      v79 = 3;
LABEL_69:
      sub_3EB30(v78, v79);

      v138 = 0;
LABEL_72:
      v137 = 1;
      v21 = v41;
      goto LABEL_85;
    }

    v83 = v11;
    v84 = 3;
    goto LABEL_71;
  }

  if (!v10)
  {
    v37 = [v9 artist];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 name];
      if (v39)
      {
        v40 = v39;
        v41 = sub_AB92A0();
        v19 = v42;

LABEL_67:
        v92 = [v11 title];
        if (v92)
        {
          v93 = v92;
          v28 = sub_AB92A0();
          v29 = v94;

          v78 = v11;
          v79 = 0;
          goto LABEL_69;
        }

        v83 = v11;
        v84 = 0;
        goto LABEL_71;
      }
    }

    v41 = 0;
    v19 = 0;
    goto LABEL_67;
  }

  if (v10 != 1)
  {
LABEL_36:
    sub_3EB30(v9, v10);
LABEL_37:

LABEL_38:
    v138 = 0;
LABEL_39:
    v28 = 0;
    v29 = 0;
    v21 = 0;
    v19 = 0;
    goto LABEL_40;
  }

  v23 = [v9 name];
  if (v23)
  {
    v24 = v23;
    v25 = sub_AB92A0();
    v19 = v26;

    v137 = 1;
    v27 = v11;
    v21 = v25;
    sub_3EB30(v27, 1);

    v138 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v137 = 1;
    sub_3EB30(v11, 1);

    v138 = 0;
    v28 = 0;
    v29 = 0;
    v21 = 0;
    v19 = 0;
  }

LABEL_85:
  v96 = [a2 titleText];
  if (v96)
  {
    v97 = v96;
    v21 = sub_AB92A0();
    v99 = v98;

    v19 = v99;
  }

  v100 = [a2 v7[318]];
  if (v100)
  {
    v101 = v100;
    v28 = sub_AB92A0();
    v103 = v102;

    v29 = v103;
  }

  v104 = [a2 thumbnailHorizontalAlignment];
  *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailHorizontalAlignment] = v104;
  sub_86C88();
  v105 = [a2 headlineText];
  if (v105)
  {
    v106 = v105;
    v107 = sub_AB92A0();
    v109 = v108;
  }

  else
  {
    v107 = 0;
    v109 = 0xE000000000000000;
  }

  v110 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline];
  v111 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline];
  v112 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline + 8];
  *v110 = v107;
  v110[1] = v109;
  sub_855D0(v111, v112);

  if (v19)
  {
    v113 = v21;
  }

  else
  {
    v113 = 0;
  }

  if (v19)
  {
    v114 = v19;
  }

  else
  {
    v114 = 0xE000000000000000;
  }

  v115 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title];
  v116 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title];
  v117 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title + 8];
  *v115 = v113;
  v115[1] = v114;
  sub_85784(v116, v117);

  if (v29)
  {
    v118 = v28;
  }

  else
  {
    v118 = 0;
  }

  if (v29)
  {
    v119 = v29;
  }

  else
  {
    v119 = 0xE000000000000000;
  }

  v120 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle];
  v121 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle];
  v122 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle + 8];
  *v120 = v118;
  v120[1] = v119;
  sub_8590C(v121, v122);

  v123 = [a2 descriptionTitleText];
  if (v123)
  {
    v124 = v123;
    v125 = sub_AB92A0();
    v127 = v126;
  }

  else
  {
    v125 = 0;
    v127 = 0;
  }

  v128 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTitle];
  *v128 = v125;
  v128[1] = v127;

  sub_85BCC();
  v129 = [a2 descriptionText];
  if (v129)
  {
    v130 = v129;
    v131 = sub_AB92A0();
    v133 = v132;
  }

  else
  {
    v131 = 0;
    v133 = 0;
  }

  v134 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionText];
  *v134 = v131;
  v134[1] = v133;

  sub_863A4();
  v135 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_duration];
  *v135 = v6;
  v135[8] = v137;
  sub_864E0();
  a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_isDisabled] = v138;
  sub_86E70();
  v140 = [v139 viewBackgroundColor];
  [a1 setBackgroundColor:v140];
}

void sub_446B98(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v113 = a3;
  v6 = sub_AB3430();
  v107 = *(v6 - 8);
  v108 = v6;
  __chkstk_darwin();
  v106 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB3820();
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin();
  v104 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v109 = &v96 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v105 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v96 - v14;
  v16 = type metadata accessor for PlaybackIntentDescriptor(0);
  v103 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v96 - v21;
  v22 = *&v3[qword_DFE2F0];
  if (v22)
  {
    type metadata accessor for JSFlowcaseModelResponse();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v102 = a1;
      v24 = *(v23 + OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_jsResults);
      v25 = v22;
      isa = sub_AB3770().super.isa;
      v27 = [v24 itemAtIndexPath:isa];

      type metadata accessor for JSFlowcaseItem(0);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v99 = v15;
        v100 = v25;
        v101 = v27;
        v29 = v102;
        v30 = v28;
        v31 = [v102 contentItem];
        v32 = [v31 innerObject];

        v98 = v30;
        sub_2641C4(v32, v4, static MPMediaLibraryFilteringOptions.none.getter, 0, v114);

        v33 = [v4 traitCollection];
        v34 = UITraitCollection.mediaPickerConfiguration.getter();

        if (v34)
        {
          v35 = *&v4[qword_DFE298];
          if (v35)
          {

            v36 = [v29 pickableObjectFor:{objc_msgSend(v34, "selectionMode")}];
            if (v36)
            {
              v37 = v36;
              *&v97 = v35;
              v38 = [v36 musicTypeIdentifier];
              if (v38)
              {
                v39 = v38;

                v40 = v114;
                sub_15F84(v114, v20, &unk_DEA510, "\b]\r");
                if ((v103[6])(v20, 1, v16) == 1)
                {
                  sub_12E1C(v40, &unk_DEA510, "\b]\r");
                  sub_12E1C(v20, &unk_DEA510, "\b]\r");

                  swift_unknownObjectRelease();

                  return;
                }

                sub_140E58(v20, v18);
                [v4 loadViewIfNeeded];
                v88 = *&v4[qword_DFE2F8];
                if (v88)
                {
                  v89 = v88;
                  v90 = sub_AB3770().super.isa;
                  v91 = [v89 cellForItemAtIndexPath:v90];

                  if (v91)
                  {
                    swift_getObjectType();
                    v92 = swift_conformsToProtocol2();
                    v93 = v102;
                    if (v92)
                    {
                      v94 = v92;
                    }

                    else
                    {
                      v95 = v102;

                      v93 = v95;
                      v91 = 0;
                      v94 = 0;
                    }
                  }

                  else
                  {
                    v94 = 0;
                    v93 = v102;
                  }

                  sub_3B8FA0(v18, v93, v91, v94);
                  sub_1DF5E8(v18, type metadata accessor for PlaybackIntentDescriptor);
                  sub_12E1C(v40, &unk_DEA510, "\b]\r");

                  swift_unknownObjectRelease();

LABEL_37:
                  swift_unknownObjectRelease();
                  return;
                }

LABEL_48:
                __break(1u);
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

        v41 = JSSegueCoordinator.shared.unsafeMutableAddressor();
        [v4 loadViewIfNeeded];
        v42 = qword_DFE2F8;
        v43 = *&v4[qword_DFE2F8];
        if (v43)
        {
          v103 = v41;
          v44 = v43;
          v45 = sub_AB3770().super.isa;
          v46 = [v44 cellForItemAtIndexPath:v45];

          v47 = v99;
          if (v46)
          {
            sub_D5958(v120);
            v96 = v120[1];
            v97 = v120[0];
            v48 = v121;
            v49 = v122;
            v50 = v123;

            v52 = v96;
            v51 = v97;
          }

          else
          {
            v48 = 0;
            v50 = 0;
            v51 = 0uLL;
            v49 = 255;
            v52 = 0uLL;
          }

          v124[0] = v51;
          v124[1] = v52;
          v125 = v48;
          v126 = v49;
          v127 = v50;
          v53 = v4;
          [v53 loadViewIfNeeded];
          if (*&v4[v42])
          {
            v54 = _s30CollectionViewSelectionHandlerVMa(0);
            v118[3] = v54;
            v118[4] = &off_CF7E60;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v118);
            v57 = v110;
            v56 = v111;
            v58 = *(v110 + 16);
            v58(boxed_opaque_existential_0 + *(v54 + 20), v113, v111);
            swift_unknownObjectWeakInit();
            sub_15F84(v118, &v115, &unk_DE8E30, "\b]\r");
            if (*(&v116 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
              v59 = v109;
              v60 = swift_dynamicCast();
              v61 = *(v54 - 8);
              (*(v61 + 56))(v59, v60 ^ 1u, 1, v54);
              if ((*(v61 + 48))(v59, 1, v54) != 1)
              {
                v58(v47, v59 + *(v54 + 20), v56);
                sub_1DF5E8(v59, _s30CollectionViewSelectionHandlerVMa);
                v62 = 0;
                goto LABEL_26;
              }
            }

            else
            {
              sub_12E1C(&v115, &unk_DE8E30, "\b]\r");
              v59 = v109;
              (*(*(v54 - 8) + 56))(v109, 1, 1, v54);
            }

            sub_12E1C(v59, &qword_E037A0, &unk_AF8B30);
            v62 = 1;
LABEL_26:
            (*(v57 + 56))(v47, v62, 1, v56);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong && (v64 = Strong, sub_12B2FC(), v66 = v65, v68 = v67, v64, v66))
            {
              ObjectType = swift_getObjectType();
              (*(v68 + 8))(ObjectType, v68);
              v71 = v70;
              swift_unknownObjectRelease();
              v72 = v105;
              sub_15F84(v47, v105, &unk_DE8E20, &qword_AF7990);
              if ((*(v57 + 48))(v72, 1, v56) == 1)
              {
                sub_12E1C(v72, &unk_DE8E20, &qword_AF7990);
                v115 = 0u;
                v116 = 0u;
                v117 = 0;
              }

              else
              {
                (*(v57 + 32))(v104, v72, v56);
                sub_449708(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                sub_ABAD10();
              }

              v74 = swift_getObjectType();
              v75 = v106;
              sub_3B8F68(v74);
              v73 = sub_21CCAC(1, v75, &v115, v74, v71);
              (*(v107 + 8))(v75, v108);
              sub_12E1C(&v115, &qword_DF2BD0, &unk_AFDC00);
              sub_12E1C(v47, &unk_DE8E20, &qword_AF7990);
              swift_unknownObjectRelease();
            }

            else
            {
              sub_12E1C(v47, &unk_DE8E20, &qword_AF7990);
              v73 = 0;
            }

            v76 = swift_unknownObjectWeakLoadStrong();
            if (v76)
            {
              v77 = v76;
              sub_12AFE8();
              v79 = v78;
            }

            else
            {
              v79 = 0;
            }

            sub_15F28(v119, &v115);
            sub_15F84(v118, (v11 + 104), &unk_DE8E30, "\b]\r");
            v80 = v112;
            v81 = v114;
            sub_15F84(v114, &v11[*(v112 + 28)], &unk_DEA510, "\b]\r");
            *v11 = 0u;
            *(v11 + 1) = 0u;
            *(v11 + 2) = 0u;
            *(v11 + 3) = 0u;
            *(v11 + 8) = 1;
            *(v11 + 9) = 0;
            *(v11 + 10) = 0;
            *(v11 + 11) = 0;
            sub_2D594(&v115, v11);
            v83 = v102;
            v82 = v103;
            *(v11 + 12) = v102;
            v84 = *v82;
            *(&v116 + 1) = v80;
            v85 = __swift_allocate_boxed_opaque_existential_0(&v115);
            sub_2D604(v11, v85);
            v86 = v83;
            v87 = v84;
            JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v98, 0, v73, v79, &v115);
            sub_1611C(v119);
            sub_12E1C(v81, &unk_DEA510, "\b]\r");
            sub_1DF5E8(v11, _s23MusicPerformanceContextVMa);

            sub_12E1C(&v115, &unk_DE8E40, &unk_AF8050);

            sub_12E1C(v118, &unk_DE8E30, "\b]\r");
            goto LABEL_37;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_48;
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_4478BC()
{
  v1 = *(v0 + qword_E074A8);
  v2 = type metadata accessor for JSFlowcaseModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel] = v1;
  v200.receiver = v3;
  v200.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v200, "init");
  sub_13C80(0, &unk_E07B80, off_CE5570);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v198 = v5;
  v8 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v198 setItemKind:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_B00DB0;
  *(v195 + 32) = sub_AB92A0();
  *(v195 + 40) = v9;
  *(v195 + 48) = sub_AB92A0();
  *(v195 + 56) = v10;
  *(v195 + 64) = sub_AB92A0();
  *(v195 + 72) = v11;
  *(v195 + 80) = sub_AB92A0();
  *(v195 + 88) = v12;
  *(v195 + 96) = sub_AB92A0();
  *(v195 + 104) = v13;
  *(v195 + 112) = sub_AB92A0();
  *(v195 + 120) = v14;
  *(v195 + 128) = sub_AB92A0();
  *(v195 + 136) = v15;
  *(v195 + 144) = sub_AB92A0();
  *(v195 + 152) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v196 = inited;
  v197 = inited + 32;
  *(inited + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_AF85E0;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF4EC0;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  isa = sub_AB9740().super.isa;
  v26 = objc_opt_self();
  v27 = [v26 propertySetWithProperties:isa];

  v28 = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
  v29 = sub_10F414(v28);
  v30 = [v27 propertySetByCombiningWithPropertySet:v29];

  v31 = swift_getObjCClassFromMetadata();
  v32 = [v31 requiredLibraryNavigationHandlerProperties];
  v33 = [v31 requiredStoreNavigationHandlerProperties];
  v34 = [v32 propertySetByCombiningWithPropertySet:v33];

  v35 = [v30 propertySetByCombiningWithPropertySet:v34];
  *(v21 + 48) = v35;
  *(v21 + 56) = sub_AB92A0();
  *(v21 + 64) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_AF85F0;
  *(v37 + 32) = sub_AB92A0();
  *(v37 + 40) = v38;
  *(v37 + 48) = sub_AB92A0();
  *(v37 + 56) = v39;
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_AF4EC0;
  *(v40 + 32) = sub_AB92A0();
  *(v40 + 40) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_AF4EC0;
  *(v42 + 32) = sub_AB92A0();
  *(v42 + 40) = v43;
  v44 = sub_AB9740().super.isa;
  v45 = [v26 propertySetWithProperties:v44];

  *(v40 + 48) = v45;
  sub_96EA4(v40);
  swift_setDeallocating();
  sub_12E1C(v40 + 32, &unk_DE8E80, &unk_AF87C0);
  v46 = objc_allocWithZone(MPPropertySet);
  v47 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v48 = sub_AB8FD0().super.isa;

  v49 = [v46 initWithProperties:v47 relationships:v48];

  v50 = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v51 = sub_10F414(v50);
  v52 = [v49 propertySetByCombiningWithPropertySet:v51];

  v53 = swift_getObjCClassFromMetadata();
  v54 = [v53 requiredLibraryNavigationHandlerProperties];
  v55 = [v53 requiredStoreNavigationHandlerProperties];
  v56 = [v54 propertySetByCombiningWithPropertySet:v55];

  v57 = [v52 propertySetByCombiningWithPropertySet:v56];
  *(v21 + 72) = v57;
  *(v21 + 80) = sub_AB92A0();
  *(v21 + 88) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_AF8820;
  *(v59 + 32) = sub_AB92A0();
  *(v59 + 40) = v60;
  *(v59 + 48) = sub_AB92A0();
  *(v59 + 56) = v61;
  *(v59 + 64) = sub_AB92A0();
  *(v59 + 72) = v62;
  v63 = sub_AB9740().super.isa;
  v64 = [v26 propertySetWithProperties:v63];

  v65 = sub_13C80(0, &unk_E04570, MPModelCurator_ptr);
  v66 = sub_10F414(v65);
  v67 = [v64 propertySetByCombiningWithPropertySet:v66];

  v68 = swift_getObjCClassFromMetadata();
  v69 = [v68 requiredLibraryNavigationHandlerProperties];
  v70 = [v68 requiredStoreNavigationHandlerProperties];
  v71 = [v69 propertySetByCombiningWithPropertySet:v70];

  v72 = [v67 propertySetByCombiningWithPropertySet:v71];
  *(v21 + 96) = v72;
  *(v21 + 104) = sub_AB92A0();
  *(v21 + 112) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_AF85D0;
  *(v74 + 32) = sub_AB92A0();
  *(v74 + 40) = v75;
  *(v74 + 48) = sub_AB92A0();
  *(v74 + 56) = v76;
  *(v74 + 64) = sub_AB92A0();
  *(v74 + 72) = v77;
  *(v74 + 80) = sub_AB92A0();
  *(v74 + 88) = v78;
  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_AF4EC0;
  *(v79 + 32) = sub_AB92A0();
  *(v79 + 40) = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_AF4EC0;
  *(v81 + 32) = sub_AB92A0();
  *(v81 + 40) = v82;
  v83 = sub_AB9740().super.isa;
  v84 = [v26 propertySetWithProperties:v83];

  *(v79 + 48) = v84;
  sub_96EA4(v79);
  swift_setDeallocating();
  sub_12E1C(v79 + 32, &unk_DE8E80, &unk_AF87C0);
  v85 = objc_allocWithZone(MPPropertySet);
  v86 = sub_AB9740().super.isa;

  v87 = sub_AB8FD0().super.isa;

  v88 = [v85 initWithProperties:v86 relationships:v87];

  v89 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
  v90 = sub_10F414(v89);
  v91 = [v88 propertySetByCombiningWithPropertySet:v90];

  v92 = swift_getObjCClassFromMetadata();
  v93 = [v92 requiredLibraryNavigationHandlerProperties];
  v94 = [v92 requiredStoreNavigationHandlerProperties];
  v95 = [v93 propertySetByCombiningWithPropertySet:v94];

  v96 = [v91 propertySetByCombiningWithPropertySet:v95];
  *(v21 + 120) = v96;
  *(v21 + 128) = sub_AB92A0();
  *(v21 + 136) = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_AF4EC0;
  *(v98 + 32) = sub_AB92A0();
  *(v98 + 40) = v99;
  v100 = sub_AB9740().super.isa;
  v101 = [v26 propertySetWithProperties:v100];

  v102 = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
  v103 = sub_10F414(v102);
  v104 = [v101 propertySetByCombiningWithPropertySet:v103];

  v105 = swift_getObjCClassFromMetadata();
  v106 = [v105 requiredLibraryNavigationHandlerProperties];
  v107 = [v105 requiredStoreNavigationHandlerProperties];
  v108 = [v106 propertySetByCombiningWithPropertySet:v107];

  v109 = [v104 propertySetByCombiningWithPropertySet:v108];
  *(v21 + 144) = v109;
  *(v21 + 152) = sub_AB92A0();
  *(v21 + 160) = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_AF8600;
  *(v111 + 32) = sub_AB92A0();
  *(v111 + 40) = v112;
  *(v111 + 48) = sub_AB92A0();
  *(v111 + 56) = v113;
  *(v111 + 64) = sub_AB92A0();
  *(v111 + 72) = v114;
  *(v111 + 80) = sub_AB92A0();
  *(v111 + 88) = v115;
  *(v111 + 96) = sub_AB92A0();
  *(v111 + 104) = v116;
  v117 = swift_initStackObject();
  *(v117 + 16) = xmmword_AF4EC0;
  *(v117 + 32) = sub_AB92A0();
  *(v117 + 40) = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_AF4EC0;
  *(v119 + 32) = sub_AB92A0();
  *(v119 + 40) = v120;
  v121 = sub_AB9740().super.isa;
  v122 = [v26 propertySetWithProperties:v121];

  *(v117 + 48) = v122;
  sub_96EA4(v117);
  swift_setDeallocating();
  sub_12E1C(v117 + 32, &unk_DE8E80, &unk_AF87C0);
  v123 = objc_allocWithZone(MPPropertySet);
  v124 = sub_AB9740().super.isa;

  v125 = sub_AB8FD0().super.isa;

  v126 = [v123 initWithProperties:v124 relationships:v125];

  v127 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v128 = sub_10F414(v127);
  v129 = [v126 propertySetByCombiningWithPropertySet:v128];

  v130 = swift_getObjCClassFromMetadata();
  v131 = [v130 requiredLibraryNavigationHandlerProperties];
  v132 = [v130 requiredStoreNavigationHandlerProperties];
  v133 = [v131 propertySetByCombiningWithPropertySet:v132];

  v134 = [v129 propertySetByCombiningWithPropertySet:v133];
  *(v21 + 168) = v134;
  *(v21 + 176) = sub_AB92A0();
  *(v21 + 184) = v135;
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_AF85F0;
  *(v136 + 32) = sub_AB92A0();
  *(v136 + 40) = v137;
  *(v136 + 48) = sub_AB92A0();
  *(v136 + 56) = v138;
  v139 = sub_AB9740().super.isa;
  v140 = [v26 propertySetWithProperties:v139];

  v141 = sub_13C80(0, &unk_DE8EC0, MPModelTVShow_ptr);
  v142 = sub_10F414(v141);
  v143 = [v140 propertySetByCombiningWithPropertySet:v142];

  v144 = swift_getObjCClassFromMetadata();
  v145 = [v144 requiredLibraryNavigationHandlerProperties];
  v146 = [v144 requiredStoreNavigationHandlerProperties];
  v147 = [v145 propertySetByCombiningWithPropertySet:v146];

  v148 = [v143 propertySetByCombiningWithPropertySet:v147];
  *(v21 + 192) = v148;
  *(v21 + 200) = sub_AB92A0();
  *(v21 + 208) = v149;
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_AF85F0;
  *(v150 + 32) = sub_AB92A0();
  *(v150 + 40) = v151;
  *(v150 + 48) = sub_AB92A0();
  *(v150 + 56) = v152;
  v153 = swift_initStackObject();
  *(v153 + 16) = xmmword_AF4EC0;
  *(v153 + 32) = sub_AB92A0();
  *(v153 + 40) = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_AF4EC0;
  *(v155 + 32) = sub_AB92A0();
  *(v155 + 40) = v156;
  v157 = sub_AB9740().super.isa;
  v158 = [v26 propertySetWithProperties:v157];

  *(v153 + 48) = v158;
  sub_96EA4(v153);
  swift_setDeallocating();
  sub_12E1C(v153 + 32, &unk_DE8E80, &unk_AF87C0);
  v159 = objc_allocWithZone(MPPropertySet);
  v160 = sub_AB9740().super.isa;

  v161 = sub_AB8FD0().super.isa;

  v162 = [v159 initWithProperties:v160 relationships:v161];

  v163 = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v164 = sub_10F414(v163);
  v165 = [v162 propertySetByCombiningWithPropertySet:v164];

  v166 = swift_getObjCClassFromMetadata();
  v167 = [v166 requiredLibraryNavigationHandlerProperties];
  v168 = [v166 requiredStoreNavigationHandlerProperties];
  v169 = [v167 propertySetByCombiningWithPropertySet:v168];

  v170 = [v165 propertySetByCombiningWithPropertySet:v169];
  *(v21 + 216) = v170;
  *(v21 + 224) = sub_AB92A0();
  *(v21 + 232) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_AF85F0;
  *(v172 + 32) = sub_AB92A0();
  *(v172 + 40) = v173;
  *(v172 + 48) = sub_AB92A0();
  *(v172 + 56) = v174;
  v175 = sub_AB9740().super.isa;
  v176 = [v26 propertySetWithProperties:v175];

  v177 = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v178 = sub_10F414(v177);
  v179 = [v176 propertySetByCombiningWithPropertySet:v178];

  v180 = swift_getObjCClassFromMetadata();
  v181 = [v180 requiredLibraryNavigationHandlerProperties];
  v182 = [v180 requiredStoreNavigationHandlerProperties];
  v183 = [v181 propertySetByCombiningWithPropertySet:v182];

  v184 = [v179 propertySetByCombiningWithPropertySet:v183];
  *(v21 + 240) = v184;
  sub_96EA4(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v185 = objc_allocWithZone(MPPropertySet);
  v186 = sub_AB9740().super.isa;

  v187 = sub_AB8FD0().super.isa;

  v188 = [v185 initWithProperties:v186 relationships:v187];

  *(v196 + 48) = v188;
  sub_96EA4(v196);
  swift_setDeallocating();
  sub_12E1C(v197, &unk_DE8E80, &unk_AF87C0);
  v189 = objc_allocWithZone(MPPropertySet);
  v190 = sub_AB9740().super.isa;

  v191 = sub_AB8FD0().super.isa;

  v192 = [v189 initWithProperties:v190 relationships:v191];

  [v198 setItemProperties:v192];
  v193 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_449978;
  aBlock[5] = v193;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_142;
  v194 = _Block_copy(aBlock);

  [v198 performWithResponseHandler:v194];
  _Block_release(v194);
}

double sub_448F1C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v5);

  return result;
}

void sub_448FC0()
{
  v1 = &v0[qword_E074B0];
  if (v0[qword_E074B0 + 16])
  {
    v2 = v0;
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v0 traitCollection];
      v13 = [v12 horizontalSizeClass];

      if (v13 == &dword_0 + 2)
      {
        v14 = [v2 traitCollection];
        v15 = UITraitCollection.isAccessibilitySizeCategory.getter();

        HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, v15 & 1, v24, v9);
        v16 = *&v24[6];
      }

      else
      {
        sub_3D2824(2.0);
        v16 = v17;
      }

      v25.origin.x = v5;
      v25.origin.y = v7;
      v25.size.width = v9;
      v25.size.height = v11;
      v18 = [v2 traitCollection];
      sub_89B20();
      v20 = v19;
      if (qword_DE6760 != -1)
      {
        swift_once();
      }

      [qword_DEB918 valueForReferenceMetric:v16];
      [v18 displayScale];
      sub_AB3A00();
      v22 = v21 + 0.0;
      v23 = sub_2F48A4(v20, v18, 0, 0);

      *v1 = v16 + 0.0;
      v1[1] = v22 + v23;
      *(v1 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_449224()
{

  v1 = *(v0 + qword_E074A8);
}

id sub_449264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFlowcaseViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_44929C(uint64_t a1)
{

  v2 = *(a1 + qword_E074A8);
}

uint64_t type metadata accessor for JSFlowcaseViewController(uint64_t a1)
{
  result = qword_E074E8;
  if (!qword_E074E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4493D4(id *a1)
{
  v1 = [*a1 backgroundArtworkCatalog];

  return v1;
}

double sub_44940C()
{
  v1 = [*v0 traitCollection];
  sub_448FC0();
  v3 = v2;
  if (qword_DE6760 != -1)
  {
    swift_once();
  }

  [qword_DEB918 valueForReferenceMetric:v3];
  [v1 displayScale];
  sub_AB3A00();

  return v3;
}

uint64_t sub_449520(void *a1)
{
  [a1 bounds];
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, &v3, v1);
  return 1;
}

double sub_449574@<D0>(_OWORD *a1@<X8>)
{
  sub_445BFC(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

unint64_t sub_449620()
{
  result = qword_E07AC0;
  if (!qword_E07AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E07AC8, &qword_B0F9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07AC0);
  }

  return result;
}

uint64_t sub_449684(uint64_t a1)
{
  *(a1 + 8) = sub_449708(&qword_E07AF8, type metadata accessor for JSFlowcaseViewController, &unk_B0F9A8);
  result = sub_449708(&qword_E07B00, type metadata accessor for JSFlowcaseViewController, &unk_B0F9D0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_449708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_449750(char *a1)
{
  v2 = [a1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, v9, v4);
    v5 = v10;
    v6 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
    swift_beginAccess();
    *&a1[v6] = v5;
    v7 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
    if (sub_AB38D0())
    {
      *&a1[v7] = *&a1[v6];
      [a1 invalidateLayout];
    }
  }

  return [a1 invalidateLayout];
}

void sub_449854(uint64_t a1, id a2)
{
  v4 = [a2 backgroundArtworkCatalog];
  v5 = [a2 thumbnailArtworkCatalog];
  v6 = *(a1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkCatalog) = v4;
  v7 = v4;

  sub_74EA4(v4);
  v8 = *(a1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog) = v5;
  v9 = v5;

  sub_8681C();
}

uint64_t sub_449940()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_449998()
{

  return swift_deallocObject();
}

char *sub_4499D8(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
LABEL_25:
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_ABB060();
    if (v4)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v5 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v24 = result;
    for (i = v5; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_361248(i, a1);
      }

      else
      {
        if (i >= *(v25 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = MPModelObject.bestIdentifier(for:)(3, 2u);
      if (v11)
      {
        break;
      }

LABEL_6:
      if (v5 == v4)
      {
        return v24;
      }
    }

    v12 = v11;
    v13 = v10;
    swift_beginAccess();
    v14 = *a2;
    if (!*(*a2 + 16) || (v15 = sub_2EBF88(v13, v12), (v16 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_6;
    }

    v17 = *(*(v14 + 56) + 48 * v15);
    swift_endAccess();

    v18 = v17;

    v19 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_6CEBC(0, *(v24 + 2) + 1, 1, v24);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    v22 = v19;
    if (v21 >= v20 >> 1)
    {
      v22 = sub_6CEBC((v20 > 1), v21 + 1, 1, v19);
    }

    result = v22;
    *(v22 + 2) = v21 + 1;
    v23 = &v22[16 * v21];
    *(v23 + 4) = v18;
    *(v23 + 5) = v9;
  }

  while (v5 != v4);
  return result;
}

NSString sub_449C24()
{
  result = sub_AB9260();
  qword_E71840 = result;
  return result;
}

char *sub_449C5C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center;
  *&v0[v2] = [objc_allocWithZone(SLHighlightCenter) init];
  v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_isSeeAllButtonHidden] = 0;
  v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_automaticallyFetchObjectsForHighlights] = 0;
  v3 = &v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v4 = &v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_importResultAssertions];
  *v4 = 0u;
  v4[1] = 0u;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");
  [*&v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center] setDelegate:v5];
  return v5;
}

void sub_449D54(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v7 = 132;
  }

  else
  {
    v7 = 21;
  }

  if (qword_DE6C48 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E71878);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_0, v9, v10, "Will fetch %{public}ld highlights", v11, 0xCu);
  }

  v12 = *&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v4;
  v13[4] = a2;
  v13[5] = a3;
  v16[4] = sub_44F0F4;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_44B878;
  v16[3] = &block_descriptor_143;
  v14 = _Block_copy(v16);
  v15 = v4;

  [v12 fetchHighlightsWithLimit:v7 completionBlock:v14];
  _Block_release(v14);
}

void sub_449F30(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v11 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      v12 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v12 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      }

      v13 = v12 < a4;
      goto LABEL_7;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v40 = sub_ABB060();
  if (v40 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v40;
  }

  if (v7 < 0)
  {
    goto LABEL_43;
  }

  v41 = v40;
  if (sub_ABB060() < 0)
  {
    __break(1u);
    return;
  }

  v13 = v41 < a4;
  if (sub_ABB060() < v7)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_7:
  if ((a1 & 0xC000000000000001) == 0 || !v7)
  {

    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_15:

    v17 = sub_ABB070();
    v16 = v20;
    v19 = v21;
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_16:
    sub_130DF4(v17, v18, v16, v19);
    v7 = v22;
    goto LABEL_23;
  }

  sub_13C80(0, &unk_E07CB0, SLHighlight_ptr);

  v14 = 0;
  do
  {
    v15 = v14 + 1;
    sub_ABAE00(v14);
    v14 = v15;
  }

  while (v7 != v15);
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_12:
  v16 = 0;
  v17 = a1 & 0xFFFFFFFFFFFFFF8;
  v18 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v19 = (2 * v7) | 1;
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v42 = v18;
  sub_ABB3F0();
  swift_unknownObjectRetain_n();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = _swiftEmptyArrayStorage;
  }

  v24 = v23[2];

  if (__OFSUB__(v19 >> 1, v16))
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v24 != (v19 >> 1) - v16)
  {
LABEL_46:
    swift_unknownObjectRelease();
    v18 = v42;
    goto LABEL_16;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_24;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_23:
  swift_unknownObjectRelease();
LABEL_24:
  *(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_isSeeAllButtonHidden) = v13;
  if (qword_DE6C48 != -1)
  {
LABEL_44:
    swift_once();
  }

  v25 = sub_AB4BC0();
  __swift_project_value_buffer(v25, qword_E71878);

  v26 = sub_AB4BA0();
  v27 = sub_AB9F50();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134349312;
    if (v11)
    {
      v29 = sub_ABB060();
    }

    else
    {
      v29 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v28 + 4) = v29;

    *(v28 + 12) = 2050;
    *(v28 + 14) = a4;
    _os_log_impl(&dword_0, v26, v27, "Fetched %{public}ld highlights, limiting to %{public}ld", v28, 0x16u);
  }

  else
  {
  }

  v30 = sub_44A384(v7);
  v32 = v31;
  v33 = (a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v34 = *(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v35 = *(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver + 8);
  v36 = *(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver + 16);
  *v33 = v30;
  v33[1] = v31;
  v33[2] = v37;

  sub_44F118(v34, v35, v36);
  if (*(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_automaticallyFetchObjectsForHighlights) == 1)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a6;
    *(v38 + 24) = a7;

    sub_44B344(v32, sub_70638, v38);
  }

  else
  {

    a6(v39);
  }
}

_BYTE *sub_44A384(unint64_t a1)
{
  v2 = sub_AB31C0();
  v93 = *(v2 - 8);
  __chkstk_darwin();
  v92 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v91 - v4;
  __chkstk_darwin();
  v6 = &v91 - v5;
  __chkstk_darwin();
  v8 = &v91 - v7;
  result = sub_99D94(_swiftEmptyArrayStorage);
  v10 = result;
  v119 = result;
  v118 = &_swiftEmptySetSingleton;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = result)
  {
    v108 = a1;
    v99 = v2;
    if (i)
    {
      break;
    }

    v13 = 0;
    v96 = _swiftEmptyArrayStorage;
LABEL_49:

    v70 = 0;
    v71 = v10 + 64;
    v72 = 1 << v10[32];
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & *(v10 + 8);
    v6 = ((v72 + 63) >> 6);
    v106 = (v93 + 16);
    v105 = v93 + 8;
    v104 = v93 + 32;
    v107 = _swiftEmptyArrayStorage;
    *&v69 = 136446210;
    v109 = v69;
    v110 = v6;
    if (v74)
    {
      while (2)
      {
        v75 = v70;
LABEL_58:
        v76 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v77 = v76 | (v75 << 6);
        v78 = *(*(v10 + 7) + 8 * v77);
        v79 = *(*(v10 + 6) + v77);

        sub_44D5DC(v79, v78, v94);
        if (v13)
        {
          v112 = v78;
          if (qword_DE6C48 != -1)
          {
            swift_once();
          }

          v80 = sub_AB4BC0();
          __swift_project_value_buffer(v80, qword_E71878);
          swift_errorRetain();
          v81 = sub_AB4BA0();
          v8 = sub_AB9F50();

          if (os_log_type_enabled(v81, v8))
          {
            v82 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *&aBlock = v111;
            *v82 = v109;
            v117 = v13;
            swift_errorRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
            v83 = sub_AB9350();
            v85 = v71;
            v86 = v10;
            v87 = sub_425E68(v83, v84, &aBlock);
            v2 = v99;

            *(v82 + 4) = v87;
            v10 = v86;
            v71 = v85;
            _os_log_impl(&dword_0, v81, v8, "unable to build a catalog URL to fetch %{public}s", v82, 0xCu);
            v8 = v111;
            __swift_destroy_boxed_opaque_existential_0(v111);
            a1 = v108;

            v6 = v110;
          }

          v13 = 0;
          v70 = v75;
          if (v74)
          {
            continue;
          }
        }

        else
        {
          v112 = v10;
          (*v106)(v92, v94, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_6CD74(0, v107[2] + 1, 1, v107);
          }

          v89 = v107[2];
          v88 = v107[3];
          if (v89 >= v88 >> 1)
          {
            v107 = sub_6CD74((v88 > 1), v89 + 1, 1, v107);
          }

          v8 = v93;
          (*(v93 + 1))(v94, v2);
          v90 = v107;
          v107[2] = v89 + 1;
          (*(v8 + 4))(v90 + ((v8[80] + 32) & ~v8[80]) + *(v8 + 9) * v89, v92, v2);

          v70 = v75;
          v13 = 0;
          v10 = v112;
          v6 = v110;
          if (v74)
          {
            continue;
          }
        }

        break;
      }
    }

    while (1)
    {
      v75 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v75 >= v6)
      {

        return a1;
      }

      v74 = *&v71[8 * v75];
      ++v70;
      if (v74)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    result = sub_ABB060();
  }

  if (i >= 1)
  {
    v12 = 0;
    v13 = 0;
    v111 = (a1 & 0xC000000000000001);
    v100 = (v93 + 16);
    *&v109 = v93 + 8;
    v98 = &v114;
    v96 = _swiftEmptyArrayStorage;
    *(&v14 + 1) = 2;
    v95 = xmmword_AF4EC0;
    *&v14 = 136446466;
    v97 = v14;
    v110 = v6;
    v104 = v8;
    v103 = i;
    while (1)
    {
      if (v111)
      {
        v16 = sub_361AA0(v12, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = [v16 resourceURL];
      sub_AB3150();

      sub_450810(&aBlock);
      v112 = v17;
      if (v13)
      {
        if (qword_DE6C48 != -1)
        {
          swift_once();
        }

        v19 = sub_AB4BC0();
        __swift_project_value_buffer(v19, qword_E71878);
        (*v100)(v6, v8, v2);
        swift_errorRetain();
        v20 = sub_AB4BA0();
        v21 = sub_AB9F50();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v22 = v97;
          sub_451E68(&unk_E07CD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v23 = sub_ABB330();
          v25 = v24;
          v107 = v12;
          v26 = *v109;
          (*v109)(v110, v2);
          v27 = sub_425E68(v23, v25, &aBlock);

          *(v22 + 4) = v27;
          *(v22 + 12) = 2082;
          v117 = v13;
          swift_errorRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
          v28 = sub_AB9350();
          v30 = sub_425E68(v28, v29, &aBlock);

          *(v22 + 14) = v30;
          _os_log_impl(&dword_0, v20, v21, "unable to interpret %{public}s Error=%{public}s", v22, 0x16u);
          swift_arrayDestroy();

          v8 = v104;

          v26(v8, v2);
          a1 = v108;
          v12 = v107;
          i = v103;
          v6 = v110;
        }

        else
        {

          v15 = *v109;
          (*v109)(v6, v2);
          v15(v8, v2);
        }

        v13 = 0;
      }

      else
      {
        v31 = aBlock;
        v32 = v114;
        v33 = *(&v115 + 1);
        *&v120 = v17;
        BYTE8(v120) = v114;
        v121 = aBlock;
        v122 = v115;
        v34 = v119;
        v35 = *(v119 + 16);

        v102 = v33;
        if (v35 && (sub_2ECBE0(v32), (v36 & 1) != 0))
        {
          v38 = sub_44D518(&aBlock, v32);
          v39 = *v37;
          if (*v37)
          {
            v40 = v37;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v40 = v39;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v39 = sub_6B0F0(0, *(v39 + 2) + 1, 1, v39);
              *v40 = v39;
            }

            v43 = *(v39 + 2);
            v42 = *(v39 + 3);
            if (v43 >= v42 >> 1)
            {
              v39 = sub_6B0F0((v42 > 1), v43 + 1, 1, v39);
              *v40 = v39;
            }

            *(v39 + 2) = v43 + 1;
            *&v39[16 * v43 + 32] = v31;
            (v38)(&aBlock, 0);
            v13 = 0;
          }

          else
          {

            (v38)(&aBlock, 0);
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
          v44 = swift_allocObject();
          *(v44 + 16) = v95;
          *(v44 + 32) = v31;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v34;
          sub_94F14(v44, v32, v45);
          v119 = aBlock;
        }

        v105 = [objc_opt_self() sharedServerObjectDatabase];
        v8 = [objc_opt_self() kindWithVariants:7];
        v46 = [objc_opt_self() kindWithSongKind:v8];
        v47 = objc_opt_self();
        sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
        v48 = static MPModelPlaylistEntry.defaultMusicKind.getter();
        v49 = [v47 kindWithPlaylistEntryKind:v48 options:0];

        sub_13C80(0, &unk_E25110, MPModelRadioStationKind_ptr);
        v50 = [swift_getObjCClassFromMetadata() identityKind];
        v51 = v50;
        v106 = v13;
        v101 = *(&v31 + 1);
        v107 = v49;
        if (v32 <= 1)
        {
          v52 = v46;
          v49 = v46;
          if (!v32)
          {
            v49 = v8;
          }
        }

        else
        {
          v52 = v46;
          if (v32 != 2)
          {
            v49 = v8;
            if (v32 != 3)
            {
              v49 = v50;
            }
          }
        }

        v53 = v49;
        __chkstk_darwin();
        *(&v91 - 2) = &v120;
        v6 = objc_allocWithZone(MPIdentifierSet);
        v2 = swift_allocObject();
        *(v2 + 16) = sub_451114;
        *(v2 + 24) = &v91 - 4;
        *(&v115 + 1) = sub_57B84;
        v116 = v2;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v114 = sub_41A314;
        *&v115 = &block_descriptor_43_8;
        v54 = _Block_copy(&aBlock);
        a1 = v53;

        v10 = [v6 initWithModelKind:a1 block:v54];

        _Block_release(v54);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_71;
        }

        if (qword_DE6C40 != -1)
        {
          swift_once();
        }

        v56 = v105;
        v57 = [v105 modelObjectMatchingIdentifierSet:v10 propertySet:qword_E71870];

        a1 = v108;
        v2 = v99;
        v13 = v106;
        v6 = v110;
        i = v103;
        if (v57 && (v58 = MPModelObject.bestIdentifier(for:)(3, 2u), v60 = v59, v57, v60))
        {
          v61 = sub_472F00(v58, v60, v118);
          v62 = v112;
          if ((v61 & 1) == 0)
          {
            sub_1A9FC(&aBlock, v58, v60);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v96 = sub_6CD9C(0, *(v96 + 2) + 1, 1, v96);
            }

            v64 = *(v96 + 2);
            v63 = *(v96 + 3);
            v8 = v104;
            if (v64 >= v63 >> 1)
            {
              v96 = sub_6CD9C((v63 > 1), v64 + 1, 1, v96);
            }

            (*v109)(v8, v2);
            v65 = v96;
            *(v96 + 2) = v64 + 1;
            v66 = &v65[48 * v64];
            v67 = v120;
            v68 = v122;
            *(v66 + 3) = v121;
            *(v66 + 4) = v68;
            *(v66 + 2) = v67;
            goto LABEL_8;
          }

          v8 = v104;
          (*v109)(v104, v2);
        }

        else
        {
          v8 = v104;
          (*v109)(v104, v2);
        }
      }

LABEL_8:
      if (i == ++v12)
      {
        v10 = v119;
        goto LABEL_49;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_44B344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v36 = a2;
  v4 = sub_AB7C10();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin();
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin();
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = dispatch_group_create();
  v9 = swift_allocObject();
  *(v9 + 16) = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (v10)
  {
    v46 = sub_13C80(0, &qword_DF4F60, ICMusicKitRequestContext_ptr);
    v45 = sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
    v11 = *(sub_AB31C0() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      dispatch_group_enter(v8);
      v14 = static ICMusicKitRequestContext.music.getter();
      v15 = objc_allocWithZone(ICMusicKitURLRequest);
      sub_AB30F0(v16);
      v18 = v17;
      v19 = [v15 initWithURL:v17 requestContext:v14];

      v20 = static ICURLSessionManager.musicSession.getter();
      v21 = swift_allocObject();
      v21[2] = v8;
      v21[3] = v19;
      v21[4] = v9;
      v52 = sub_44F21C;
      v53 = v21;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_151E0;
      v51 = &block_descriptor_31_1;
      v22 = _Block_copy(&aBlock);
      v23 = v8;
      v24 = v19;

      [v20 enqueueDataRequest:v24 withCompletionHandler:v22];
      _Block_release(v22);

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v25 = sub_ABA150();
  v26 = swift_allocObject();
  v27 = v36;
  v28 = v37;
  v26[2] = v37;
  v26[3] = v9;
  v29 = v38;
  v26[4] = v27;
  v26[5] = v29;
  v52 = sub_44F270;
  v53 = v26;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_1B5EB4;
  v51 = &block_descriptor_37_2;
  v30 = _Block_copy(&aBlock);

  v31 = v28;

  v32 = v39;
  sub_AB7C30();
  v47 = _swiftEmptyArrayStorage;
  sub_451E68(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
  v33 = v42;
  v34 = v44;
  sub_ABABB0();
  sub_ABA0F0();

  (*(v43 + 8))(v33, v34);
  (*(v40 + 8))(v32, v41);
  _Block_release(v30);
}

void sub_44B878(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_13C80(0, &unk_E07CB0, SLHighlight_ptr);
  v8 = sub_AB9760();

  v9 = a2;
  v10 = a4;
  v7(v8, a3, a4);
}

void sub_44B93C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_AB2BD0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6C10 != -1)
  {
    swift_once();
  }

  v11[3] = ObjectType;
  v11[0] = v1;
  v7 = qword_E71840;
  v8 = v1;
  sub_AB2BA0();
  v9 = [objc_opt_self() defaultCenter];
  isa = sub_AB2B80().super.isa;
  [v9 postNotification:isa];
  (*(v4 + 8))(v6, v3);
}

void sub_44BAB8(void *a1, uint64_t a2, NSObject *a3, void *a4, uint64_t a5)
{
  if (!a1 || (v9 = [a1 bodyData]) == 0)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_DE6C48 != -1)
      {
        swift_once();
      }

      v29 = sub_AB4BC0();
      __swift_project_value_buffer(v29, qword_E71878);
      swift_errorRetain();
      v30 = sub_AB4BA0();
      v31 = sub_AB9F30();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v61[0] = v33;
        *v32 = 136446210;
        *&v59 = a2;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
        v34 = sub_AB9350();
        v36 = sub_425E68(v34, v35, v61);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_0, v30, v31, "url request error: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
      }
    }

    else
    {
      if (qword_DE6C48 != -1)
      {
        swift_once();
      }

      v37 = sub_AB4BC0();
      __swift_project_value_buffer(v37, qword_E71878);
      v30 = sub_AB4BA0();
      v38 = sub_AB9F30();
      if (os_log_type_enabled(v30, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v30, v38, "Missing response data", v39, 2u);
      }
    }

    goto LABEL_24;
  }

  v10 = v9;
  v11 = sub_AB3260();
  v13 = v12;

  v14 = objc_opt_self();
  isa = sub_AB3250().super.isa;
  *&v59 = 0;
  v16 = [v14 JSONObjectWithData:isa options:0 error:&v59];
  v17 = v59;

  if (!v16)
  {
    v40 = sub_AB3050();

    swift_willThrow();
    if (qword_DE6C48 != -1)
    {
      swift_once();
    }

    v41 = sub_AB4BC0();
    __swift_project_value_buffer(v41, qword_E71878);
    swift_errorRetain();
    v30 = sub_AB4BA0();
    v42 = sub_AB9F30();

    if (os_log_type_enabled(v30, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v59 = v44;
      *v43 = 136446210;
      *&v57 = v40;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
      v45 = sub_AB9350();
      v47 = sub_425E68(v45, v46, &v59);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v30, v42, "JSON deserialize error: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    sub_466B8(v11, v13);
LABEL_24:

    goto LABEL_25;
  }

  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_15F84(v61, &v57, &unk_DE8E40, &unk_AF8050);
  if (!v58)
  {
    sub_12E1C(v61, &unk_DE8E40, &unk_AF8050);
    sub_466B8(v11, v13);
    sub_12E1C(&v57, &unk_DE8E40, &unk_AF8050);
    goto LABEL_25;
  }

  sub_9ACFC(&v57, &v59);
  v18 = objc_allocWithZone(MPServerObjectDatabaseMediaKitImportRequest);
  __swift_project_boxed_opaque_existential_1(&v59, v60);
  v19 = [v18 initWithPayload:sub_ABB3A0()];
  swift_unknownObjectRelease();
  v20 = v19;
  v21 = [a4 requestContext];
  v22 = [v21 identity];

  [v20 setUserIdentity:v22];
  v23 = [objc_opt_self() sharedServerObjectDatabase];
  *&v57 = 0;
  v24 = [v23 importObjectsFromRequest:v20 options:1 error:&v57];
  v25 = v57;
  if (!v24)
  {
    v48 = v57;
    sub_AB3050();

    swift_willThrow();
    if (qword_DE6C48 != -1)
    {
      swift_once();
    }

    v49 = sub_AB4BC0();
    __swift_project_value_buffer(v49, qword_E71878);
    swift_errorRetain();
    v30 = sub_AB4BA0();
    v50 = sub_AB9F30();

    if (!os_log_type_enabled(v30, v50))
    {

      __swift_destroy_boxed_opaque_existential_0(&v59);
      sub_12E1C(v61, &unk_DE8E40, &unk_AF8050);
      sub_466B8(v11, v13);

      goto LABEL_25;
    }

    v56 = v23;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v57 = v52;
    *v51 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    v53 = sub_AB9350();
    v55 = sub_425E68(v53, v54, &v57);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_0, v30, v50, "object database import error: %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);

    __swift_destroy_boxed_opaque_existential_0(&v59);
    sub_12E1C(v61, &unk_DE8E40, &unk_AF8050);
    sub_466B8(v11, v13);

    goto LABEL_24;
  }

  v26 = v24;
  swift_beginAccess();
  v27 = v25;
  v28 = v26;
  sub_AB9730();
  if (*(&dword_10 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(&v59);
  sub_12E1C(v61, &unk_DE8E40, &unk_AF8050);
  sub_466B8(v11, v13);

LABEL_25:
  dispatch_group_leave(a3);
}

uint64_t sub_44C36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07CC8, &unk_B0FC60);
  v10[0] = v6;
  v7 = OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_importResultAssertions;
  swift_beginAccess();

  sub_44F27C(v10, a1 + v7);
  v8 = swift_endAccess();
  return a3(v8);
}

void sub_44C4A4(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver];
  v2 = *&a1[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver];
  v3 = *&a1[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver + 8];
  v4 = *&a1[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver + 16];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  v5 = a1;
  sub_44F118(v2, v3, v4);
  sub_44B93C();
}

unint64_t sub_44C600()
{
  result = qword_E07C50;
  if (!qword_E07C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07C50);
  }

  return result;
}

id sub_44C654()
{
  result = [objc_allocWithZone(type metadata accessor for Interstellar.HighlightsSource()) init];
  qword_E71848 = result;
  return result;
}

double sub_44C684@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  a3[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_automaticallyFetchObjectsForHighlights] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B8, qword_B077B8);
  v10 = swift_allocBox();
  sub_44D0F0();
  v11 = a3;
  sub_AB5110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  if (qword_DE6C10 != -1)
  {
    swift_once();
  }

  v13 = qword_E71840;
  UIScreen.Dimensions.size.getter();
  *(v12 + 56) = &type metadata for NotificationTrigger;
  *(v12 + 64) = &protocol witness table for NotificationTrigger;
  *(v12 + 32) = v14;
  *(v12 + 40) = v15;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v16 = v13;
  v17 = BindingRequestResponseInvalidation.init(triggers:)(v12);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = a4 & 1;
  *(v18 + 32) = v10;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = v17;
  v19 = v11;

  sub_449D54(a4 & 1, sub_44D194, v18);

  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;

  return result;
}

double sub_44C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver))
  {
    v10 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver + 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;

  sub_4515FC(v10, sub_4515EC, v11);

  return result;
}

uint64_t sub_44C96C(uint64_t a1, char a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D80, &qword_B0FC80);
  __chkstk_darwin();
  v11 = v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B8, qword_B077B8);
  v13 = swift_projectBox();
  if ((a2 & 1) == 0 && *(a1 + 16))
  {
    swift_beginAccess();
    v14._rawValue = &off_CF1890;
    sub_AB50D0(v14);
    v17[1] = 0;
    v17[2] = 0;
    sub_AB5090();
    swift_endAccess();
  }

  swift_beginAccess();
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  swift_storeEnumTagMultiPayload();
  v15 = sub_451E68(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  a4(v11, a6, v15);
  return sub_12E1C(v11, &qword_E07D80, &qword_B0FC80);
}

double sub_44CB48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a5;
  swift_errorRetain();
  v11 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_451E58, v10);

  return result;
}

void sub_44CC20(uint64_t a1, void (*a2)(uint64_t, uint64_t), int a3, id a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v8 = [a4 results];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 allItems];

    v11 = sub_AB9760();
    v13 = sub_12DBC0(v11, v12);

    if (!v13)
    {
LABEL_8:

      v13 = _swiftEmptyArrayStorage;
    }

    v14 = sub_4499D8(v13, (a5 + 16));
    if (qword_DE6C48 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, qword_E71878);

    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = *(v14 + 2);

      _os_log_impl(&dword_0, v16, v17, "Personalized %{public}ld highlights", v18, 0xCu);
    }

    else
    {
    }

    a2(v14, 0);
  }
}

Swift::Int sub_44CE70()
{
  sub_ABB5C0();
  sub_ABA7A0();
  return sub_ABB610();
}

Swift::Int sub_44CED8(uint64_t a1)
{
  sub_ABB5C0();
  sub_ABA7A0();
  return sub_ABB610();
}

unint64_t sub_44CF70()
{
  result = qword_E07C58;
  if (!qword_E07C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07C58);
  }

  return result;
}

uint64_t sub_44CFC4()
{
  v0 = qword_E07B90;

  return v0;
}

uint64_t sub_44D008(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  return sub_ABA790() & ~(v2 ^ v3) & 1;
}

unint64_t sub_44D074(uint64_t a1)
{
  result = sub_44D09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_44D09C()
{
  result = qword_E07C90;
  if (!qword_E07C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07C90);
  }

  return result;
}

unint64_t sub_44D0F0()
{
  result = qword_E07CA0;
  if (!qword_E07CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07CA0);
  }

  return result;
}

uint64_t sub_44D144()
{

  return swift_deallocObject();
}

Swift::Int sub_44D1B4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_44D294(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_44D360(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_44D43C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4507C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_44D46C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1735290739;
  v5 = 0xE800000000000000;
  v6 = 0x7473696C79616C70;
  v7 = 0xEB000000006F6564;
  v8 = 0x69762D636973756DLL;
  if (v2 != 3)
  {
    v8 = 0x6E6F6974617473;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D75626C61;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t (*sub_44D518(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_44FE0C(v4, a2);
  return sub_44D590;
}

void sub_44D590(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_44D5DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  LODWORD(v55) = a1;
  v51 = a3;
  v5 = sub_AB2C10();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin();
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40, &unk_AFD280);
  __chkstk_darwin();
  v8 = &v47 - v7;
  v60 = sub_AB2CE0();
  v58 = *(v60 - 8);
  __chkstk_darwin();
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = sub_AB31C0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4511DC(v17);
  URL.init(string:)(v18, v12);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    v20 = sub_12E1C(v12, &unk_DF2AE0, &qword_AFC930);
    v21 = sub_4511DC(v20);
    v23 = v22;
    sub_4514A4();
    swift_allocError();
    *v24 = v21;
    v24[1] = v23;
    return swift_willThrow();
  }

  v50 = v3;
  v49 = *(v14 + 32);
  v49(v16, v12, v13);
  if (!*(a2 + 16))
  {
    sub_4514A4();
    swift_allocError();
    v37 = xmmword_AF82C0;
    goto LABEL_19;
  }

  v48 = a2;
  v26 = 0xE400000000000000;
  v27 = 1735290739;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v28 = 0xE800000000000000;
  v29 = 0x7473696C79616C70;
  v30 = 0xEB000000006F6564;
  v31 = 0x69762D636973756DLL;
  if (v55 != 3)
  {
    v31 = 0x6E6F6974617473;
    v30 = 0xE700000000000000;
  }

  if (v55 != 2)
  {
    v29 = v31;
    v28 = v30;
  }

  if (v55)
  {
    v27 = 0x6D75626C61;
    v26 = 0xE500000000000000;
  }

  if (v55 <= 1u)
  {
    v32._countAndFlagsBits = v27;
  }

  else
  {
    v32._countAndFlagsBits = v29;
  }

  if (v55 <= 1u)
  {
    v33 = v26;
  }

  else
  {
    v33 = v28;
  }

  v32._object = v33;
  sub_AB94A0(v32);

  v61._countAndFlagsBits = 115;
  v61._object = 0xE100000000000000;
  sub_AB94A0(v61);
  sub_AB3100(v59);

  sub_AB2C40();
  v34 = v58;
  v35 = v60;
  if ((*(v58 + 48))(v8, 1, v60) == 1)
  {
    sub_12E1C(v8, &unk_E07D40, &unk_AFD280);
    sub_4514A4();
    swift_allocError();
    v37 = xmmword_AFB300;
LABEL_19:
    *v36 = v37;
    swift_willThrow();
    return (*(v14 + 8))(v16, v13);
  }

  v55 = v14 + 32;
  (*(v34 + 32))(v56, v8, v35);
  v59._countAndFlagsBits = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
  sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
  sub_AB9140();
  v38 = v57;
  sub_AB2BE0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEA98, &unk_B0D760);
  v39 = v53;
  v40 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_AF4EC0;
  v42 = v38;
  v43 = v54;
  (*(v39 + 16))(v41 + v40, v42, v54);
  v44 = v56;
  URLComponents.appendQueryItems(_:)(v41);

  v45 = v52;
  sub_AB2C50();
  if (v19(v45, 1, v13) == 1)
  {
    sub_12E1C(v45, &unk_DF2AE0, &qword_AFC930);
    sub_4514A4();
    swift_allocError();
    *v46 = xmmword_AFB300;
    swift_willThrow();
    (*(v39 + 8))(v57, v43);
    (*(v58 + 8))(v44, v60);
    return (*(v14 + 8))(v16, v13);
  }

  (*(v39 + 8))(v57, v43);
  (*(v58 + 8))(v44, v60);
  (*(v14 + 8))(v16, v13);
  return (v49)(v51, v45, v13);
}

void sub_44DD1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v4 = MPModelRelationshipAlbumArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF4EC0;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  v8 = v4;
  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v10;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v11 = objc_allocWithZone(MPPropertySet);
  v12 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v13 = sub_AB8FD0().super.isa;

  v14 = [v11 initWithProperties:v12 relationships:v13];

  if (qword_DE6CE8 != -1)
  {
    swift_once();
  }

  v15 = qword_E719D8;
  v16 = [v14 propertySetByCombiningWithPropertySet:v15];

  qword_E71850 = v16;
}

void sub_44DFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  if (qword_DE6D00 != -1)
  {
    swift_once();
  }

  v5 = qword_E719F0;
  v6 = [v4 propertySetByCombiningWithPropertySet:v5];

  qword_E71858 = v6;
}

void sub_44E0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v7 = MPModelRelationshipSongArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  v11 = v7;
  isa = sub_AB9740().super.isa;
  v13 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v13;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v14 = objc_allocWithZone(MPPropertySet);
  v15 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v16 = sub_AB8FD0().super.isa;

  v17 = [v14 initWithProperties:v15 relationships:v16];

  if (qword_DE6D10 != -1)
  {
    swift_once();
  }

  v18 = qword_E71A00;
  v19 = [v17 propertySetByCombiningWithPropertySet:v18];

  qword_E71860 = v19;
}

void sub_44E3C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v13 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  v15 = [v10 propertySetByCombiningWithPropertySet:v14];
  qword_E71868 = v15;
}

void sub_44E5B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  v1 = MPModelRelationshipGenericAlbum;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v2;
  v3 = qword_DE6C20;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_E71850;
  *(inited + 48) = qword_E71850;
  v6 = MPModelRelationshipGenericPlaylist;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v7;
  v8 = qword_DE6C28;
  v9 = v5;
  v10 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_E71858;
  *(inited + 72) = qword_E71858;
  v12 = MPModelRelationshipGenericSong;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v13;
  v14 = qword_DE6C30;
  v15 = v11;
  v16 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = qword_E71860;
  *(inited + 96) = qword_E71860;
  v18 = MPModelRelationshipGenericRadioStation;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v19;
  v20 = qword_DE6C38;
  v21 = v17;
  v22 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  v23 = qword_E71868;
  *(inited + 120) = qword_E71868;
  v24 = v23;

  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v27 = sub_AB8FD0().super.isa;

  v28 = [v25 initWithProperties:isa relationships:v27];

  qword_E71870 = v28;
}

void sub_44E87C(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  v31 = *(a2 + 32);
  v32 = v5;
  v6 = swift_allocObject();
  v7 = *(a2 + 16);
  v6[1] = *a2;
  v6[2] = v7;
  v6[3] = *(a2 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_451130;
  *(v8 + 24) = v6;
  v29 = sub_445458;
  v30 = v8;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_4522E8;
  v28 = &block_descriptor_52_0;
  v9 = _Block_copy(&aBlock);
  v10 = v4;
  sub_C8C3C(&v32, v24);

  sub_15F84(&v31, v24, &unk_DEE6F0, &unk_AF8970);

  [a1 setUniversalStoreIdentifiersWithBlock:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    return;
  }

  if (*(a2 + 8) == 4)
  {
    v11 = swift_allocObject();
    v12 = *(a2 + 16);
    v11[1] = *a2;
    v11[2] = v12;
    v11[3] = *(a2 + 32);
    v13 = swift_allocObject();
    v14 = sub_451180;
    *(v13 + 16) = sub_451180;
    *(v13 + 24) = v11;
    v29 = sub_3F328C;
    v30 = v13;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_4522E8;
    v28 = &block_descriptor_64_1;
    v15 = _Block_copy(&aBlock);
    v16 = v10;
    sub_C8C3C(&v32, v24);
    sub_15F84(&v31, v24, &unk_DEE6F0, &unk_AF8970);

    [a1 setRadioIdentifiersWithBlock:v15];
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v14 = 0;
  v11 = 0;
LABEL_6:
  sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
  v18 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 stringValue];
    sub_AB92A0();

    v21 = sub_AB9260();
    v29 = UIScreen.Dimensions.size.getter;
    v30 = 0;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_4522E8;
    v28 = &block_descriptor_55_2;
    v22 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v21 block:v22];
    _Block_release(v22);
    v23 = swift_isEscapingClosureAtFileLocation();

    sub_17654(v14, v11);
    if ((v23 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_17654(v14, v11);
}

void sub_44ECC0(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = HIBYTE(v4) & 0xF;
    v7 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_69;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v37 = a1;
      v31 = v4;

      sub_44F40C(v5, v31, 10);
      v33 = v32;
      v35 = v34;

      a1 = v37;
      if ((v35 & 1) == 0)
      {
        v12 = v33;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v39 = v5;
      v40 = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v5 == 43)
      {
        if (!v6)
        {
LABEL_78:
          __break(1u);
          return;
        }

        v9 = v6 - 1;
        if (v6 != 1)
        {
          v12 = 0;
          v23 = &v39 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v9)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else if (v5 == 45)
      {
        if (!v6)
        {
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v9 = v6 - 1;
        if (v6 != 1)
        {
          v12 = 0;
          v16 = &v39 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v9)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else if (v6)
      {
        v12 = 0;
        v28 = &v39;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          v28 = (v28 + 1);
          if (!--v6)
          {
LABEL_66:
            LOBYTE(v9) = 0;
            goto LABEL_68;
          }
        }
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v9 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v36 = a1;
        v9 = sub_ABAE60();
        a1 = v36;
      }

      v10 = *v9;
      if (v10 == 43)
      {
        if (v7 >= 1)
        {
          v19 = v7 - 1;
          if (v7 != 1)
          {
            v12 = 0;
            if (!v9)
            {
              goto LABEL_68;
            }

            v20 = (v9 + 1);
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v19)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_67;
        }

        goto LABEL_77;
      }

      if (v10 == 45)
      {
        if (v7 >= 1)
        {
          v11 = v7 - 1;
          if (v7 != 1)
          {
            v12 = 0;
            if (!v9)
            {
              goto LABEL_68;
            }

            v13 = (v9 + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_67;
        }

        __break(1u);
        goto LABEL_76;
      }

      if (v7)
      {
        v12 = 0;
        if (!v9)
        {
          goto LABEL_68;
        }

        while (1)
        {
          v26 = *v9 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++v9;
          if (!--v7)
          {
            goto LABEL_66;
          }
        }
      }
    }

LABEL_67:
    v12 = 0;
    LOBYTE(v9) = 1;
LABEL_68:
    LOBYTE(v41) = v9;
    if ((v9 & 1) == 0)
    {
LABEL_70:
      [a1 setAdamID:{v12, v37, v39, v40, v41}];
      return;
    }

LABEL_69:
    v12 = 0;
    goto LABEL_70;
  }

  if (v2 < 2)
  {
    goto LABEL_7;
  }

  v3 = a1;
  v38 = sub_AB9260();
  [v3 setGlobalPlaylistID:v38];
}

uint64_t sub_44F044()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71878);
  __swift_project_value_buffer(v0, qword_E71878);
  return static Logger.music(_:)(0x6957646572616853, 0xED0000756F596874);
}

uint64_t sub_44F0B4()
{

  return swift_deallocObject();
}

double block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_44F118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_44F164()
{

  return swift_deallocObject();
}

uint64_t sub_44F19C()
{

  return swift_deallocObject();
}

uint64_t sub_44F1D4()
{

  return swift_deallocObject();
}

uint64_t sub_44F228()
{

  return swift_deallocObject();
}

uint64_t sub_44F27C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40, &unk_AF8050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_44F2EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    if (!__OFSUB__(v13, a2))
    {
      result = v10 + 40 * a3;
      v14 = v9 + 32 + 40 * a2;
      if (result < v14 || result >= v14 + 40 * (v13 - a2))
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v14)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_12E1C(a4, &qword_E07D88, &unk_B0FC88);
  }

  result = sub_8FEC8(a4, v10);
  if (a3 == 1)
  {
    return sub_12E1C(a4, &qword_E07D88, &unk_B0FC88);
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_44F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_AB9580();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_44F998(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_ABAE60();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_44F998(uint64_t a1, unint64_t a2)
{
  v2 = sub_AB9590();
  v6 = sub_44FA18(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_44FA18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_ABA9E0();
    if (!v9 || (v10 = v9, v11 = sub_284478(v9, 0), v12 = sub_44FB70(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_AB93D0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_AB93D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_ABAE60();
LABEL_4:

  return sub_AB93D0();
}

unint64_t sub_44FB70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_44FD90(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_AB94F0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_ABAE60();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_44FD90(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_AB94D0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_44FD90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_AB9510();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_AB94E0();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void (*sub_44FE0C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_450074(v5);
  v5[9] = sub_44FF10((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_44FEB0;
}

void sub_44FEB0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_44FF10(uint64_t a1, uint64_t a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_2ECBE0(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_334CC8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_32EEF0(v14, a3 & 1);
    v9 = sub_2ECBE0(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_45002C;
}

Swift::Int sub_45002C(Swift::Int result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_95C5C(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_27E4CC(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_450074(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_45009C;
}

uint64_t sub_4500A8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0() & 1;
  }
}

unint64_t sub_450100(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D90, &qword_AF9030);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 16 * a3;
  v15 = (v9 + 32 + 16 * a2);
  if (result != v15 || result >= v15 + 16 * v14)
  {
    result = memmove(result, v15, 16 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_450224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  _s9ComponentCMa(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_ABB060();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_ABB060();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_450324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for TextStackView.Component();
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v20 = sub_ABB060();
    v15 = v20 - v7;
    if (!__OFSUB__(v20, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        v19 = sub_ABB060();
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v11))
      {
        v5[2] = v19 + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }
}