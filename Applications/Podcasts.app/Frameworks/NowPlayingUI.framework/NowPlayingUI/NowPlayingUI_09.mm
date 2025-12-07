id sub_E7308()
{
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = [result text];
  if (v2)
  {
    v3 = v2;
    sub_1448DC();

    v4 = sub_14489C();

    v5 = [v4 _isNaturallyRTL];
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView;
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView);
  if (!result)
  {
    goto LABEL_25;
  }

  [result setAnimationDirection:v5];
  result = *(v0 + v6);
  if (!result)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  [result setSemanticContentAttribute:v7];
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  if (!result)
  {
    goto LABEL_27;
  }

  v8 = [result titleForState:0];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _isNaturallyRTL];
  }

  else
  {
    v10 = 0;
  }

  v11 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView;
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView);
  if (!result)
  {
    goto LABEL_28;
  }

  [result setAnimationDirection:v10];
  result = *(v0 + v11);
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  [result setSemanticContentAttribute:v12];
  result = *(v0 + v6);
  if (!result)
  {
    goto LABEL_30;
  }

  [result invalidateIntrinsicContentSize];
  result = *(v0 + v11);
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return [result invalidateIntrinsicContentSize];
}

id sub_E74C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_E7528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_14429C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D8, &qword_1536A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14[-v9];
  v15[3] = sub_1445EC();
  v15[4] = sub_E7C58(&qword_1C81E0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  v15[0] = a1;
  sub_14442C();

  sub_14474C();
  v11 = sub_140CBC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_14441C();

  sub_15340(v10, &qword_1C81D8, &qword_1536A0);
  sub_1DB40(v15, v14);

  sub_1442AC();
  v12 = sub_14428C();

  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v12;
}

uint64_t sub_E778C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E7800()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E7968()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_E79C8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoOutput);
    if (v2)
    {
      [v2 enterFullScreenWithCompletion:0];
    }
  }
}

uint64_t sub_E7A0C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_E7A50()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_E7A88()
{
  v1 = *(v0 + 16);
  v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode] = *(v0 + 24);
  v2 = sub_C5E80();

  return [v1 layoutIfNeeded];
}

uint64_t objectdestroy_53Tm()
{
  v1 = sub_14236C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_E7BE0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_14236C() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_E7C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_E7CA0(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_bindings] = _swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkLayoutGuide;
  *&v2[v7] = [objc_allocWithZone(UILayoutGuide) init];
  v8 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLayoutGuide;
  *&v2[v8] = [objc_allocWithZone(UILayoutGuide) init];
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoPinchGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepTimerController] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subscriptions] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView] = 0;
  v9 = &v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contentViewSize];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl] = 0;
  v10 = &v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlScrubSpeed];
  *v10 = 0;
  v10[8] = 1;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider] = 0;
  v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible] = 0;
  v11 = &v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverView;
  v13 = [objc_allocWithZone(UIView) init];
  sub_14114C();
  v14 = sub_14108C();
  [v13 setBackgroundColor:v14];

  [v13 setUserInteractionEnabled:0];
  *&v3[v12] = v13;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextActionsHandler] = 0;
  v15 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController;
  type metadata accessor for TransportControlsController();
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0;
  *&v3[v15] = v16;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsStackView] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton] = 0;
  v17 = &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonConfiguration];
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton] = 0;
  v18 = &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonConfiguration];
  v18[1] = 0;
  v18[2] = 0;
  *v18 = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton] = 0;
  v19 = &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonConfiguration];
  v19[1] = 0;
  v19[2] = 0;
  *v19 = 0;
  v20 = &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSlider];
  *v20 = 0;
  v20[1] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryTransportControlsGuide] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton] = 0;
  v21 = &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton];
  *v21 = 0;
  v21[1] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton] = 0;
  v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_isShowingSleepTimer] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_queueControlsView] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_preferredContentSizeDidChangeObserver] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController____lazy_storage___timeFormatter] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesYConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTopMarginConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlLayoutGuideTopAnchor] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlTopAnchor] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkMaxWidthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint] = 0;
  v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_deferArtworkModeUpdates] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_objectGraph] = a1;
  sub_1DB40(a2, &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_configuration]);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  v24 = *(v23 + 8);

  v24(v40, v22, v23);
  v25 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics;
  sub_2B5CC(v40, &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics]);
  sub_1DB40(&v3[v25], v37);
  v26 = v38;
  v27 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v27 + 160))(v40, 0, 0, v26, v27);
  v28 = &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];
  v29 = v40[3];
  v28[2] = v40[2];
  v28[3] = v29;
  v30 = v40[5];
  v28[4] = v40[4];
  v28[5] = v30;
  v31 = v40[1];
  *v28 = v40[0];
  v28[1] = v31;
  __swift_destroy_boxed_opaque_existential_0(v37);
  sub_14227C();
  sub_1446DC();
  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerDataProvider] = v37[0];
  v32 = objc_allocWithZone(type metadata accessor for NowPlayingEpisodeUpsellBannerView(0));

  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView] = sub_7833C(v33);
  sub_14437C();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metricsController] = sub_14436C();
  v36.receiver = v3;
  v36.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", 0, 0);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v34;
}

void sub_E8244(id a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    v4 = [a1 playerPath];
    type metadata accessor for NowPlayingMetadataPlaceholder();
    swift_allocObject();
    *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder) = sub_D9AB0(v4);

    v5 = v3;
    v6 = [v5 playerPath];
    v7 = [v6 isSystemPodcastsPath];

    if ((v7 & 1) == 0)
    {

      v3 = 0;
    }
  }

  else
  {
    type metadata accessor for NowPlayingMetadataPlaceholder();
    swift_allocObject();
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder) = sub_D9AB0(0);
  }

  v8 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse);
  *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse) = v3;
  v9 = v3;

  sub_E4F08();
}

void sub_E83BC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_bindings) = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkLayoutGuide;
  *(v0 + v2) = [objc_allocWithZone(UILayoutGuide) init];
  v3 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLayoutGuide;
  *(v0 + v3) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoTapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoPinchGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepTimerController) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subscriptions) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contentViewSize);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl) = 0;
  v5 = v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlScrubSpeed;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 0;
  v6 = (v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverView;
  v8 = [objc_allocWithZone(UIView) init];
  sub_14114C();
  v9 = sub_14108C();
  [v8 setBackgroundColor:v9];

  [v8 setUserInteractionEnabled:0];
  *(v1 + v7) = v8;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextActionsHandler) = 0;
  v10 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController;
  type metadata accessor for TransportControlsController();
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v1 + v10) = v11;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsStackView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton) = 0;
  v12 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonConfiguration);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton) = 0;
  v13 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonConfiguration);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton) = 0;
  v14 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonConfiguration);
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  v15 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSlider);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryTransportControlsGuide) = 0;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton) = 0;
  v16 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_isShowingSleepTimer) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_queueControlsView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_preferredContentSizeDidChangeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController____lazy_storage___timeFormatter) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesYConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTopMarginConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlLayoutGuideTopAnchor) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlTopAnchor) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkMaxWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_deferArtworkModeUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController) = 0;
  *(v11 + 144) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse) = 0;
  sub_1452FC();
  __break(1u);
}

uint64_t sub_E882C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for NowPlayingBannerView.ViewModel(0);
    v1 = swift_allocObject();
    v2 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
    v3 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
    (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
    _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_E88F0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0, &qword_14EBC0);
  __chkstk_darwin(v7 - 8);
  v60 = &v54 - v8;
  v9 = sub_14236C();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v54 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1442EC();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_140D5C();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8518, &qword_1537C8);
  __chkstk_darwin(v63);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8520, &unk_1537D0);
  __chkstk_darwin(v17 - 8);
  v64 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8508, &qword_1537C0);
  __chkstk_darwin(v25 - 8);
  v27 = &v54 - v26;
  v28 = sub_14440C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_EA3C0(a2, v27, a3);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    v60 = v29;
    v61 = v31;
    v36 = *(v29 + 32);
    v62 = v28;
    v36(v31, v27, v28);
    v59 = v4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for NowPlayingMediaPlayerController(0);
      sub_3CD3C();
      swift_unknownObjectRelease();
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v39 = v64;
    v38 = v65;
    v40 = *(v65 + 56);
    v40(v24, v37, 1, v13);
    (*(v38 + 104))(v21, enum case for NowPlayingPlayerStyle.fullScreen(_:), v13);
    v40(v21, 0, 1, v13);
    v41 = *(v63 + 48);
    sub_1D19C(v24, v16, &qword_1C8520, &unk_1537D0);
    sub_1D19C(v21, &v16[v41], &qword_1C8520, &unk_1537D0);
    v42 = *(v38 + 48);
    if (v42(v16, 1, v13) == 1)
    {
      sub_15340(v21, &qword_1C8520, &unk_1537D0);
      sub_15340(v24, &qword_1C8520, &unk_1537D0);
      if (v42(&v16[v41], 1, v13) == 1)
      {
        sub_15340(v16, &qword_1C8520, &unk_1537D0);
        v43 = v61;
LABEL_22:
        v52 = v56;
        v53 = v43;
        sub_1443EC();
        sub_EA848(v52);
        (*(v57 + 8))(v52, v58);
        return (*(v60 + 8))(v53, v62);
      }
    }

    else
    {
      sub_1D19C(v16, v39, &qword_1C8520, &unk_1537D0);
      if (v42(&v16[v41], 1, v13) != 1)
      {
        v47 = v65;
        v48 = &v16[v41];
        v49 = v55;
        (*(v65 + 32))(v55, v48, v13);
        sub_EDC64(&qword_1C21D0, &type metadata accessor for NowPlayingPlayerStyle, &protocol conformance descriptor for NowPlayingPlayerStyle);
        v50 = sub_14486C();
        v51 = *(v47 + 8);
        v51(v49, v13);
        sub_15340(v21, &qword_1C8520, &unk_1537D0);
        sub_15340(v24, &qword_1C8520, &unk_1537D0);
        v51(v39, v13);
        sub_15340(v16, &qword_1C8520, &unk_1537D0);
        v43 = v61;
        if (v50)
        {
          goto LABEL_22;
        }

        return (*(v60 + 8))(v43, v62);
      }

      sub_15340(v21, &qword_1C8520, &unk_1537D0);
      sub_15340(v24, &qword_1C8520, &unk_1537D0);
      (*(v65 + 8))(v39, v13);
    }

    sub_15340(v16, &qword_1C8518, &qword_1537C8);
    v43 = v61;
    return (*(v60 + 8))(v43, v62);
  }

  sub_15340(v27, &qword_1C8508, &qword_1537C0);
  if (*(v4 + 64))
  {
    goto LABEL_5;
  }

  v32 = v60;
  sub_1D19C(v59, v60, &qword_1C81D0, &qword_14EBC0);
  v34 = v61;
  v33 = v62;
  if (v61[6](v32, 1, v62) == 1)
  {
    sub_15340(v32, &qword_1C81D0, &qword_14EBC0);
LABEL_5:
    sub_E91C8();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_74FA4();
      return swift_unknownObjectRelease();
    }

    return result;
  }

  v44 = v54;
  v34[4](v54, v32, v33);
  sub_E9528(v44);
  if ((sub_14232C() & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v45 = sub_1422FC();
    sub_74D88(v45, v46);

    (v34[1])(v44, v33);
    return swift_unknownObjectRelease();
  }

  return (v34[1])(v44, v33);
}

uint64_t sub_E91C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C84F8, &qword_1537B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = _s9PresenterC11CurrentLinkVMa(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_currentLink;
  swift_beginAccess();
  sub_ED234(v4, v1 + v6);
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_3CB80(0, sub_EDC48, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_E92FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0, &qword_14EBC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_14236C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D19C(a1, v4, &qword_1C81D0, &qword_14EBC0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_15340(v4, &qword_1C81D0, &qword_14EBC0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (sub_14232C())
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return (*(v6 + 8))(v8, v5);
      }

      v9 = sub_1422FC();
      sub_74D88(v9, v10);

      (*(v6 + 8))(v8, v5);
      return swift_unknownObjectRelease();
    }

    (*(v6 + 8))(v8, v5);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_74FA4();
  return swift_unknownObjectRelease();
}

void sub_E9528(uint64_t a1)
{
  v73 = a1;
  v74 = sub_14236C();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v61 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_14243C();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8510, &qword_154190);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v12 - 8);
  v64 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v71 = v1;
  v22 = sub_E882C();
  swift_getKeyPath();
  v78 = v22;
  sub_EDC64(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel, &unk_154078);
  sub_141A4C();

  v23 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  sub_1D19C(v22 + v23, v21, &qword_1C41C8, &qword_14EAF0);

  v67 = *(v72 + 16);
  v68 = v72 + 16;
  v67(v18, v73, v74);
  swift_storeEnumTagMultiPayload();
  v63 = *(v6 + 56);
  v63(v18, 0, 1, v5);
  v24 = *(v9 + 56);
  sub_1D19C(v21, v11, &qword_1C41C8, &qword_14EAF0);
  sub_1D19C(v18, &v11[v24], &qword_1C41C8, &qword_14EAF0);
  v25 = *(v6 + 48);
  if (v25(v11, 1, v5) == 1)
  {
    sub_15340(v18, &qword_1C41C8, &qword_14EAF0);
    sub_15340(v21, &qword_1C41C8, &qword_14EAF0);
    if (v25(&v11[v24], 1, v5) == 1)
    {
      sub_15340(v11, &qword_1C41C8, &qword_14EAF0);
      return;
    }
  }

  else
  {
    sub_1D19C(v11, v70, &qword_1C41C8, &qword_14EAF0);
    if (v25(&v11[v24], 1, v5) != 1)
    {
      v62 = v5;
      v54 = &v11[v24];
      v55 = v60;
      sub_ED984(v54, v60, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
      v56 = v70;
      v58 = sub_FEA34(v70, v55, v57);
      sub_ED87C(v55, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
      sub_15340(v18, &qword_1C41C8, &qword_14EAF0);
      sub_15340(v21, &qword_1C41C8, &qword_14EAF0);
      sub_ED87C(v56, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
      sub_15340(v11, &qword_1C41C8, &qword_14EAF0);
      if (v58)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_15340(v18, &qword_1C41C8, &qword_14EAF0);
    sub_15340(v21, &qword_1C41C8, &qword_14EAF0);
    sub_ED87C(v70, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
  }

  v62 = v5;
  sub_15340(v11, &qword_1C8510, &qword_154190);
LABEL_7:
  v26 = v74;
  v27 = swift_allocBox();
  v29 = v28;
  v30 = v67;
  v67(v28, v73, v26);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v27;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v27;
  swift_beginAccess();
  v70 = v27;
  swift_retain_n();

  v73 = v32;
  sub_14231C();

  sub_14234C();
  swift_endAccess();
  v35 = v64;
  v30(v64, v29, v26);
  v36 = v62;
  swift_storeEnumTagMultiPayload();
  v63(v35, 0, 1, v36);

  sub_FBCD4(v35);

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_3CB80(1, 0, 0);
    swift_unknownObjectRelease();
  }

  v37 = v69;
  sub_1423CC();

  v38 = sub_14242C();
  v39 = sub_144C5C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v40 = 136316163;
    *(v40 + 4) = sub_ED2A4(0xD000000000000027, 0x80000000001672F0, &v75);
    *(v40 + 12) = 2160;
    *(v40 + 14) = 1752392040;
    *(v40 + 22) = 2081;
    v41 = v61;
    v42 = v29;
    v43 = v74;
    v67(v61, v42, v74);
    v44 = sub_1422FC();
    v46 = v45;
    (*(v72 + 8))(v41, v43);
    v76 = v44;
    v77 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400, &qword_154A50);
    v47 = sub_14490C();
    v49 = sub_ED2A4(v47, v48, &v75);

    *(v40 + 24) = v49;
    *(v40 + 32) = 2160;
    *(v40 + 34) = 1752392040;
    *(v40 + 42) = 2081;
    v50 = *(v71 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner + 8);
    v76 = *(v71 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner);
    v77 = v50;

    v51 = sub_14490C();
    v53 = sub_ED2A4(v51, v52, &v75);

    *(v40 + 44) = v53;
    _os_log_impl(&dword_0, v38, v39, "%s showing upsell [%{private,mask.hash}s] for episode %{private,mask.hash}s", v40, 0x34u);
    swift_arrayDestroy();

    (*(v65 + 8))(v69, v66);
  }

  else
  {

    (*(v65 + 8))(v37, v66);
  }
}

double sub_E9F3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_14236C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21[-1] - v7;
  v9 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = *(v3 + 16);
    v13(v8, v9, v2);
    v14 = sub_1422EC();
    v15 = *(v3 + 8);
    v15(v8, v2);
    if (v14)
    {
      swift_beginAccess();
      v13(v5, v9, v2);
      v16 = sub_1422BC();
      v15(v5, v2);
      if (v16)
      {
        v17 = _s9PresenterCMa(0);
        v22 = v17;
        v21[0] = v12;

        sub_ED9EC(v18, v21, 0);

        sub_15340(v21, &qword_1C2F30, &unk_14D1A0);
        v22 = v17;
        v21[0] = v12;

        sub_ED9EC(v19, v21, 0);

        sub_15340(v21, &qword_1C2F30, &unk_14D1A0);
        *(v12 + 64) = 1;
        sub_E91C8();
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_74FA4();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

double sub_EA1F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_14236C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    (*(v3 + 16))(v5, v6, v2);
    v10 = sub_14229C();
    (*(v3 + 8))(v5, v2);
    if (v10)
    {
      v12[3] = _s9PresenterCMa(0);
      v12[0] = v9;

      sub_ED9EC(v11, v12, 0);

      sub_15340(v12, &qword_1C2F30, &unk_14D1A0);
      *(v9 + 64) = 1;
      sub_E91C8();
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_74FA4();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_EA3C0(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8508, &qword_1537C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_14440C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = &v40 - v12;
  v13 = sub_141BDC();
  v14 = v13;
  if (!v13)
  {
    v15 = sub_141BDC();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  [v13 duration];

  v15 = sub_141BDC();
  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = v15;
  v17 = sub_144E2C();

LABEL_6:
  v18 = sub_9037C(a1);
  v19 = sub_903C4(v17);

  *&v47[0] = v18;
  sub_A70C0(v19);
  v20 = sub_144A0C();

  v21 = v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v40 = v21;
    v23 = v21 + 32;
    v24 = (v9 + 56);
    v25 = (v9 + 32);
    v26 = _swiftEmptyArrayStorage;
    v42 = (v9 + 32);
    v43 = (v9 + 56);
    do
    {
      sub_1DB40(v23, v47);
      sub_2C690(v47, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5108, &qword_14FD40);
      v27 = swift_dynamicCast();
      (*v24)(v7, v27 ^ 1u, 1, v8);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_15340(v7, &qword_1C8508, &qword_1537C0);
      }

      else
      {
        v28 = *v25;
        (*v25)(v45, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1347B0(0, v26[2] + 1, 1, v26);
        }

        v30 = v26[2];
        v29 = v26[3];
        if (v30 >= v29 >> 1)
        {
          v26 = sub_1347B0((v29 > 1), v30 + 1, 1, v26);
        }

        v26[2] = v30 + 1;
        v31 = v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30;
        v25 = v42;
        v28(v31, v45, v8);
        v24 = v43;
      }

      v23 += 40;
      --v22;
    }

    while (v22);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
  }

  v32 = v26[2];
  while (1)
  {
    if (!v32)
    {
      v39 = 1;
      v38 = v41;
      goto LABEL_24;
    }

    if (v32 > v26[2])
    {
      break;
    }

    --v32;
    v33 = v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32;
    v34 = *(v9 + 16);
    v35 = v44;
    v34(v44, v33, v8);
    sub_1443FC();
    v37 = v36;
    (*(v9 + 8))(v35, v8);
    if (v37 <= a3)
    {
      v38 = v41;
      v34(v41, v33, v8);
      v39 = 0;
LABEL_24:

      (*(v9 + 56))(v38, v39, 1, v8);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_EA848(uint64_t a1)
{
  v2 = v1;
  v144 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C84F0, &qword_1537A8);
  __chkstk_darwin(v3 - 8);
  v123 = &v121 - v4;
  v135 = sub_1442EC();
  v142 = *(v135 - 8);
  __chkstk_darwin(v135);
  v146 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v121 - v7;
  v130 = sub_14243C();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v136 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v9 - 8);
  v127 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v121 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C84F8, &qword_1537B0);
  __chkstk_darwin(v13 - 8);
  v126 = (&v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v137 = &v121 - v16;
  v143 = _s9PresenterC11CurrentLinkVMa(0);
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = (&v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_1417CC();
  v139 = *(v134 - 8);
  __chkstk_darwin(v134);
  v122 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25B0, &unk_14C900);
  __chkstk_darwin(v131);
  v133 = &v121 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0, &qword_14EB20);
  __chkstk_darwin(v20 - 8);
  v124 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v138 = &v121 - v23;
  __chkstk_darwin(v24);
  v132 = &v121 - v25;
  v26 = sub_1411CC();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v125 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C90, &unk_14BE90);
  v30 = v29 - 8;
  __chkstk_darwin(v29);
  v32 = &v121 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C10C0, &qword_14ACF8);
  __chkstk_darwin(v33 - 8);
  v35 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v121 - v37;
  v39 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_layout;
  swift_beginAccess();
  (*(v27 + 104))(v38, enum case for DeviceMetrics.Layout.regularExtended(_:), v26);
  (*(v27 + 56))(v38, 0, 1, v26);
  v40 = *(v30 + 56);
  v145 = v2;
  sub_1D19C(v2 + v39, v32, &unk_1C10C0, &qword_14ACF8);
  sub_1D19C(v38, &v32[v40], &unk_1C10C0, &qword_14ACF8);
  v41 = *(v27 + 48);
  if (v41(v32, 1, v26) == 1)
  {
    sub_15340(v38, &unk_1C10C0, &qword_14ACF8);
    v42 = v41(&v32[v40], 1, v26);
    v43 = v145;
    if (v42 == 1)
    {
      sub_15340(v32, &unk_1C10C0, &qword_14ACF8);
      goto LABEL_8;
    }

LABEL_6:
    v44 = &qword_1C1C90;
    v45 = &unk_14BE90;
    v46 = v32;
LABEL_16:
    sub_15340(v46, v44, v45);
    v50 = v146;
    v51 = v144;
    goto LABEL_17;
  }

  sub_1D19C(v32, v35, &unk_1C10C0, &qword_14ACF8);
  if (v41(&v32[v40], 1, v26) == 1)
  {
    sub_15340(v38, &unk_1C10C0, &qword_14ACF8);
    (*(v27 + 8))(v35, v26);
    v43 = v145;
    goto LABEL_6;
  }

  v47 = v125;
  (*(v27 + 32))(v125, &v32[v40], v26);
  sub_EDC64(&qword_1C1CA0, &type metadata accessor for DeviceMetrics.Layout, &protocol conformance descriptor for DeviceMetrics.Layout);
  v48 = sub_14486C();
  v49 = *(v27 + 8);
  v49(v47, v26);
  sub_15340(v38, &unk_1C10C0, &qword_14ACF8);
  v49(v35, v26);
  sub_15340(v32, &unk_1C10C0, &qword_14ACF8);
  v43 = v145;
  v50 = v146;
  v51 = v144;
  if ((v48 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v52 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_selectedContent;
  swift_beginAccess();
  v53 = v132;
  sub_1D19C(v43 + v52, v132, &unk_1C1DA0, &qword_14EB20);
  if (qword_1BFF08 != -1)
  {
    swift_once();
  }

  v54 = v134;
  v55 = __swift_project_value_buffer(v134, static NowPlayingHostedContentID.transcript);
  swift_beginAccess();
  v56 = v139;
  v57 = v138;
  (*(v139 + 16))(v138, v55, v54);
  (*(v56 + 56))(v57, 0, 1, v54);
  v58 = *(v131 + 48);
  v59 = v133;
  sub_1D19C(v53, v133, &unk_1C1DA0, &qword_14EB20);
  sub_1D19C(v57, v59 + v58, &unk_1C1DA0, &qword_14EB20);
  v60 = *(v56 + 48);
  if (v60(v59, 1, v54) == 1)
  {
    sub_15340(v57, &unk_1C1DA0, &qword_14EB20);
    sub_15340(v53, &unk_1C1DA0, &qword_14EB20);
    if (v60(v59 + v58, 1, v54) == 1)
    {
      return sub_15340(v59, &unk_1C1DA0, &qword_14EB20);
    }

    goto LABEL_15;
  }

  v62 = v124;
  sub_1D19C(v59, v124, &unk_1C1DA0, &qword_14EB20);
  if (v60(v59 + v58, 1, v54) == 1)
  {
    sub_15340(v138, &unk_1C1DA0, &qword_14EB20);
    sub_15340(v53, &unk_1C1DA0, &qword_14EB20);
    (*(v139 + 8))(v62, v54);
LABEL_15:
    v44 = &qword_1C25B0;
    v45 = &unk_14C900;
    v46 = v59;
    goto LABEL_16;
  }

  v107 = v139;
  v108 = v59 + v58;
  v109 = v122;
  (*(v139 + 32))(v122, v108, v54);
  sub_EDC64(&qword_1C25B8, &type metadata accessor for NowPlayingHostedContentID, &protocol conformance descriptor for NowPlayingHostedContentID);
  v110 = sub_14486C();
  v111 = *(v107 + 8);
  v111(v109, v54);
  sub_15340(v138, &unk_1C1DA0, &qword_14EB20);
  sub_15340(v53, &unk_1C1DA0, &qword_14EB20);
  v111(v62, v54);
  result = sub_15340(v59, &unk_1C1DA0, &qword_14EB20);
  v50 = v146;
  v51 = v144;
  if (v110)
  {
    return result;
  }

LABEL_17:
  swift_beginAccess();
  v63 = *(v43 + 56);

  sub_1442DC();
  __swift_project_boxed_opaque_existential_1(v148, v148[3]);
  sub_1446BC();
  __swift_destroy_boxed_opaque_existential_0(v148);
  v64 = sub_EBDF4(&v149, v63);

  sub_ED1E0(&v149);
  if (v64)
  {
    return sub_E91C8();
  }

  v65 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_currentLink;
  swift_beginAccess();
  v66 = v137;
  sub_1D19C(v43 + v65, v137, &qword_1C84F8, &qword_1537B0);
  if ((*(v141 + 48))(v66, 1, v143) == 1)
  {
    sub_15340(v66, &qword_1C84F8, &qword_1537B0);
LABEL_21:
    sub_1442DC();
    __swift_project_boxed_opaque_existential_1(&v149, v151);
    v67 = sub_1443CC();
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_0(&v149);
    v70 = v143;
    v71 = v126;
    sub_140AAC();
    *v71 = v67;
    v71[1] = v69;
    (*(v141 + 56))(v71, 0, 1, v70);
    swift_beginAccess();
    sub_ED234(v71, v43 + v65);
    swift_endAccess();
    sub_E882C();
    v72 = *(v142 + 16);
    v73 = v127;
    v74 = v135;
    v72(v127, v51, v135);
    v75 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v75 - 8) + 56))(v73, 0, 1, v75);
    sub_FBCD4(v73);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_3CB80(1, 0, 0);
      swift_unknownObjectRelease();
    }

    v76 = v136;
    sub_1423CC();
    v77 = v128;
    v72(v128, v51, v74);
    v72(v50, v51, v74);

    v78 = sub_14242C();
    v79 = sub_144C5C();

    if (os_log_type_enabled(v78, v79))
    {
      LODWORD(v144) = v79;
      v80 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v147 = v143;
      *v80 = 136316675;
      *(v80 + 4) = sub_ED2A4(0xD000000000000027, 0x80000000001672F0, &v147);
      *(v80 + 12) = 2160;
      *(v80 + 14) = 1752392040;
      *(v80 + 22) = 2081;
      sub_1442DC();
      __swift_project_boxed_opaque_existential_1(&v149, v151);
      v81 = sub_1443CC();
      v83 = v82;
      v84 = *(v142 + 8);
      v142 += 8;
      v84(v77, v74);
      __swift_destroy_boxed_opaque_existential_0(&v149);
      v85 = sub_ED2A4(v81, v83, &v147);

      *(v80 + 24) = v85;
      *(v80 + 32) = 2160;
      *(v80 + 34) = 1752392040;
      *(v80 + 42) = 2081;
      v86 = v146;
      sub_1442DC();
      __swift_project_boxed_opaque_existential_1(&v149, v151);
      v87 = v123;
      sub_1443DC();
      v88 = v87;
      __swift_destroy_boxed_opaque_existential_0(&v149);
      v89 = sub_1444CC();
      v90 = *(v89 - 8);
      if ((*(v90 + 48))(v88, 1, v89) == 1)
      {
        sub_15340(v88, &qword_1C84F0, &qword_1537A8);
        v91 = 0;
        v92 = 1;
      }

      else
      {
        v91 = sub_1444BC();
        v92 = v112;
        (*(v90 + 8))(v88, v89);
      }

      v149 = v91;
      LOBYTE(v150) = v92 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17E8, &qword_151EF0);
      v113 = sub_14490C();
      v115 = v114;
      v84(v86, v135);
      v116 = sub_ED2A4(v113, v115, &v147);

      *(v80 + 44) = v116;
      *(v80 + 52) = 2160;
      *(v80 + 54) = 1752392040;
      *(v80 + 62) = 2081;
      v117 = *(v145 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner + 8);
      v149 = *(v145 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner);
      v150 = v117;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400, &qword_154A50);
      v118 = sub_14490C();
      v120 = sub_ED2A4(v118, v119, &v147);

      *(v80 + 64) = v120;
      _os_log_impl(&dword_0, v78, v144, "%s showing link %{private,mask.hash}s, %{private,mask.hash}s for episode %{private,mask.hash}s.", v80, 0x48u);
      swift_arrayDestroy();

      return (*(v129 + 8))(v136, v130);
    }

    else
    {

      v99 = *(v142 + 8);
      v99(v50, v74);
      v99(v77, v74);
      return (*(v129 + 8))(v76, v130);
    }
  }

  v93 = v140;
  sub_ED984(v66, v140, _s9PresenterC11CurrentLinkVMa);
  v94 = *v93;
  v95 = v93[1];
  sub_1442DC();
  __swift_project_boxed_opaque_existential_1(&v149, v151);
  v96 = sub_1443CC();
  v98 = v97;
  __swift_destroy_boxed_opaque_existential_0(&v149);
  if (v94 == v96 && v95 == v98)
  {
  }

  else
  {
    v100 = sub_1453BC();

    if ((v100 & 1) == 0)
    {
      sub_ED87C(v140, _s9PresenterC11CurrentLinkVMa);
      goto LABEL_21;
    }
  }

  sub_140A7C();
  if (fabs(v101) > 20.0)
  {
    v102 = sub_E882C();
    swift_getKeyPath();
    v149 = v102;
    sub_EDC64(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel, &unk_154078);
    sub_141A4C();

    v103 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
    swift_beginAccess();
    v104 = v102 + v103;
    v105 = v121;
    sub_1D19C(v104, v121, &qword_1C41C8, &qword_14EAF0);

    v106 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
    LODWORD(v102) = (*(*(v106 - 8) + 48))(v105, 1, v106);
    sub_15340(v105, &qword_1C41C8, &qword_14EAF0);
    if (v102 != 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {

        sub_3CB80(0, sub_EDCB0, v43);
        swift_unknownObjectRelease();
      }
    }
  }

  return sub_ED87C(v140, _s9PresenterC11CurrentLinkVMa);
}

uint64_t sub_EBDF4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_14519C(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_ED8DC(*(a2 + 48) + 40 * v5, v9);
      v7 = sub_1451AC();
      sub_ED1E0(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

double sub_EBECC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  sub_E882C();
  v3 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_FBCD4(v2);

  return result;
}

uint64_t sub_EBF94()
{
  v73 = sub_1417CC();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v67 = &v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25B0, &unk_14C900);
  __chkstk_darwin(v69);
  v72 = &v66 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0, &qword_14EB20);
  __chkstk_darwin(v3 - 8);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v66 - v6;
  __chkstk_darwin(v7);
  v76 = &v66 - v8;
  v9 = sub_1411CC();
  v77 = *(v9 - 8);
  __chkstk_darwin(v9);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C90, &unk_14BE90);
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C10C0, &qword_14ACF8);
  __chkstk_darwin(v14 - 8);
  v74 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v19 - 8);
  v80 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  v81 = v0;
  v24 = sub_E882C();
  swift_getKeyPath();
  v83 = v24;
  v79 = sub_EDC64(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel, &unk_154078);
  sub_141A4C();

  v25 = &OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView;
  v26 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  sub_1D19C(v24 + v26, v23, &qword_1C41C8, &qword_14EAF0);

  v27 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v78 = v28 + 48;
  if (v29(v23, 1, v27) == 1)
  {
    sub_15340(v23, &qword_1C41C8, &qword_14EAF0);
LABEL_19:
    v55 = v81;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v57 = *(v55 + 48);
    swift_getKeyPath();
    v82 = v57;

    sub_141A4C();

    v58 = v25[334];
    swift_beginAccess();
    v59 = v57 + v58;
    v60 = v80;
    sub_1D19C(v59, v80, &qword_1C41C8, &qword_14EAF0);

    LOBYTE(v57) = v29(v60, 1, v27) != 1;
    sub_15340(v60, &qword_1C41C8, &qword_14EAF0);
    v61 = v57;
    goto LABEL_21;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_ED87C(v23, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_19;
  }

  v66 = v29;
  v31 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_layout;
  v32 = v81;
  swift_beginAccess();
  v33 = v77;
  (*(v77 + 104))(v18, enum case for DeviceMetrics.Layout.regularExtended(_:), v9);
  (*(v33 + 56))(v18, 0, 1, v9);
  v34 = *(v11 + 48);
  sub_1D19C(v32 + v31, v13, &unk_1C10C0, &qword_14ACF8);
  sub_1D19C(v18, &v13[v34], &unk_1C10C0, &qword_14ACF8);
  v35 = *(v33 + 48);
  if (v35(v13, 1, v9) == 1)
  {
    sub_15340(v18, &unk_1C10C0, &qword_14ACF8);
    v36 = v35(&v13[v34], 1, v9);
    v25 = &OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView;
    v29 = v66;
    if (v36 == 1)
    {
      sub_15340(v13, &unk_1C10C0, &qword_14ACF8);
      goto LABEL_11;
    }

LABEL_9:
    sub_15340(v13, &qword_1C1C90, &unk_14BE90);
    goto LABEL_19;
  }

  v37 = v74;
  sub_1D19C(v13, v74, &unk_1C10C0, &qword_14ACF8);
  if (v35(&v13[v34], 1, v9) == 1)
  {
    sub_15340(v18, &unk_1C10C0, &qword_14ACF8);
    (*(v77 + 8))(v37, v9);
    v25 = &OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView;
    v29 = v66;
    goto LABEL_9;
  }

  v38 = v77;
  v39 = &v13[v34];
  v40 = v68;
  (*(v77 + 32))(v68, v39, v9);
  sub_EDC64(&qword_1C1CA0, &type metadata accessor for DeviceMetrics.Layout, &protocol conformance descriptor for DeviceMetrics.Layout);
  v41 = sub_14486C();
  v42 = *(v38 + 8);
  v42(v40, v9);
  sub_15340(v18, &unk_1C10C0, &qword_14ACF8);
  v42(v37, v9);
  sub_15340(v13, &unk_1C10C0, &qword_14ACF8);
  v25 = &OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView;
  v29 = v66;
  if ((v41 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v43 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_selectedContent;
  v44 = v81;
  swift_beginAccess();
  v45 = v76;
  sub_1D19C(v44 + v43, v76, &unk_1C1DA0, &qword_14EB20);
  if (qword_1BFF08 != -1)
  {
    swift_once();
  }

  v46 = v73;
  v47 = __swift_project_value_buffer(v73, static NowPlayingHostedContentID.transcript);
  swift_beginAccess();
  v48 = v71;
  v49 = v75;
  (*(v71 + 16))(v75, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  v50 = *(v69 + 48);
  v51 = v72;
  sub_1D19C(v45, v72, &unk_1C1DA0, &qword_14EB20);
  sub_1D19C(v49, v51 + v50, &unk_1C1DA0, &qword_14EB20);
  v52 = *(v48 + 48);
  v53 = v52(v51, 1, v46);
  v54 = v70;
  if (v53 == 1)
  {
    sub_15340(v49, &unk_1C1DA0, &qword_14EB20);
    sub_15340(v45, &unk_1C1DA0, &qword_14EB20);
    if (v52(v51 + v50, 1, v46) == 1)
    {
      sub_15340(v51, &unk_1C1DA0, &qword_14EB20);
      goto LABEL_24;
    }

LABEL_18:
    sub_15340(v51, &qword_1C25B0, &unk_14C900);
    v25 = &OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView;
    v29 = v66;
    goto LABEL_19;
  }

  sub_1D19C(v51, v70, &unk_1C1DA0, &qword_14EB20);
  if (v52(v51 + v50, 1, v46) == 1)
  {
    sub_15340(v75, &unk_1C1DA0, &qword_14EB20);
    sub_15340(v76, &unk_1C1DA0, &qword_14EB20);
    (*(v48 + 8))(v54, v46);
    goto LABEL_18;
  }

  v62 = v51 + v50;
  v63 = v67;
  (*(v48 + 32))(v67, v62, v46);
  sub_EDC64(&qword_1C25B8, &type metadata accessor for NowPlayingHostedContentID, &protocol conformance descriptor for NowPlayingHostedContentID);
  v64 = sub_14486C();
  v65 = *(v48 + 8);
  v65(v63, v46);
  sub_15340(v75, &unk_1C1DA0, &qword_14EB20);
  sub_15340(v76, &unk_1C1DA0, &qword_14EB20);
  v65(v54, v46);
  sub_15340(v51, &unk_1C1DA0, &qword_14EB20);
  v25 = &OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView;
  v29 = v66;
  if ((v64 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_24:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v61 = 0;
LABEL_21:
    sub_3CB80(v61, 0, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_ECBD0()
{

  sub_15468(v0 + 32);

  sub_15340(v0 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_currentLink, &qword_1C84F8, &qword_1537B0);
  sub_15340(v0 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_selectedContent, &unk_1C1DA0, &qword_14EB20);
  sub_15340(v0 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_layout, &unk_1C10C0, &qword_14ACF8);

  return v0;
}

uint64_t sub_ECC84()
{
  sub_ECBD0();

  return swift_deallocClassInstance();
}

void sub_ECD04(uint64_t a1)
{
  sub_ECEC0(319, &qword_1C8270, _s9PresenterC11CurrentLinkVMa);
  if (v1 <= 0x3F)
  {
    sub_ECEC0(319, &qword_1C8278, &type metadata accessor for NowPlayingHostedContentID);
    if (v2 <= 0x3F)
    {
      sub_ECEC0(319, &unk_1C8280, &type metadata accessor for DeviceMetrics.Layout);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_ECEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1450CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_ECF28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_140ABC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_ECFE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_140ABC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_ED08C(uint64_t a1)
{
  result = sub_140ABC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_ED110(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_ED184(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_ED2A4(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_ED234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C84F8, &qword_1537B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_ED2A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_ED370(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_7828(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void sub_ED370(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_ED47C(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_14521C();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_ED47C(uint64_t a1, unint64_t a2)
{
  v3 = sub_ED4C8(a1, a2);
  sub_ED5F8(&off_19E250);
  return v3;
}

void *sub_ED4C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_ED6E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_14521C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_14495C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_ED6E4(v10, 0);
        result = sub_1451DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_ED5F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_ED758(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_ED6E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8500, &qword_1537B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_ED758(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8500, &qword_1537B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_ED84C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_ED85C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_ED87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_ED938()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_ED984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_ED9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_14429C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D8, &qword_1536A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14[-v9];
  v15[3] = sub_1445EC();
  v15[4] = sub_EDC64(&qword_1C81E0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  v15[0] = a1;
  sub_14442C();

  sub_14474C();
  v11 = sub_140CBC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_14441C();

  sub_15340(v10, &qword_1C81D8, &qword_1536A0);
  sub_1DB40(v15, v14);

  sub_1442AC();
  v12 = sub_14428C();

  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v12;
}

uint64_t sub_EDC64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_EDCF0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_143F5C();
}

uint64_t sub_EDEE4(uint64_t a1)
{
  v2 = sub_1429CC();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_142E5C();
}

uint64_t TickerSlider.init(value:in:step:label:animationViewModel:accessorySystemImageNames:onLeadingAccessoryAction:onTrailingAccessoryAction:isScrolling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for TickerSlider(0, a22, a23, v32);
  v34 = a9 + v33[9];
  *v34 = a1;
  *(v34 + 1) = a2;
  *(v34 + 2) = a10;
  v35 = (a9 + v33[11]);
  *v35 = a11;
  v35[1] = a12;
  *(a9 + v33[12]) = a13;
  v36 = (a9 + v33[13]);
  *v36 = a3;
  v36[1] = a4;
  result = sub_2B5CC(a5, a9 + v33[17]);
  v38 = (a9 + v33[14]);
  *v38 = a6;
  v38[1] = a7;
  v38[2] = a8;
  v38[3] = a14;
  v39 = (a9 + v33[15]);
  *v39 = a15;
  v39[1] = a16;
  v40 = (a9 + v33[16]);
  *v40 = a17;
  v40[1] = a18;
  v41 = a9 + v33[10];
  *v41 = a19;
  *(v41 + 1) = a20;
  v41[16] = a21;
  return result;
}

uint64_t sub_EE188(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
  sub_143DBC();
  return v2;
}

uint64_t TickerSlider.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_143D5C();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_EE53C();
  swift_getOpaqueTypeMetadata2();
  v8 = sub_142C6C();
  v27 = WitnessTable;
  v28 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = &protocol witness table for _FrameLayout;
  v25 = v8;
  v26 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_14358C();
  sub_142C6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C85B8, &qword_153858);
  sub_142C6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1C85C0, &qword_153860);
  swift_getTupleTypeMetadata2();
  sub_143F4C();
  swift_getWitnessTable();
  v9 = sub_143D8C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  v20 = v4;
  v21 = v5;
  v22 = v2;
  sub_143EAC();
  sub_143D7C();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v12, v9);
  v17 = *(v10 + 8);
  v17(v12, v9);
  v16(a2, v15, v9);
  return (v17)(v15, v9);
}

unint64_t sub_EE53C()
{
  result = qword_1C85B0;
  if (!qword_1C85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C85B0);
  }

  return result;
}

uint64_t sub_EE590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C85C0, &qword_153860);
  __chkstk_darwin(v118);
  v117 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v116 = (&v81 - v9);
  v115 = sub_142D7C();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_14354C();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a2;
  v122 = &type metadata for EmptyView;
  v12 = a2;
  v123 = a3;
  v124 = &protocol witness table for EmptyView;
  v13 = sub_143D5C();
  v106 = *(v13 - 8);
  __chkstk_darwin(v13);
  v94 = &v81 - v14;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_EE53C();
  v121 = v13;
  v122 = &type metadata for TickerSliderStyle;
  v123 = WitnessTable;
  v124 = v16;
  v86 = WitnessTable;
  v17 = v16;
  v85 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v92 = &v81 - v18;
  v19 = sub_142C6C();
  v102 = *(v19 - 8);
  __chkstk_darwin(v19);
  v91 = &v81 - v20;
  v121 = v13;
  v122 = &type metadata for TickerSliderStyle;
  v123 = WitnessTable;
  v124 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v131 = OpaqueTypeConformance2;
  v132 = &protocol witness table for _FrameLayout;
  v110 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v89 = swift_getWitnessTable();
  v121 = v19;
  v122 = v89;
  v96 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  v90 = swift_getOpaqueTypeMetadata2();
  v97 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v81 - v21;
  sub_14358C();
  v22 = sub_142C6C();
  v104 = *(v22 - 8);
  __chkstk_darwin(v22);
  v87 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v95 = &v81 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C85B8, &qword_153858);
  v105 = sub_142C6C();
  v108 = *(v105 - 8);
  __chkstk_darwin(v105);
  v100 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v107 = &v81 - v28;
  v29 = v12;
  v99 = v12;
  v30 = a3;
  v101 = a3;
  v32 = type metadata accessor for TickerSlider(0, v12, a3, v31);
  v33 = (a1 + v32[9]);
  v83 = *v33;
  v82 = v33[1];
  v34 = v33[2];
  v121 = v83;
  v122 = v82;
  v123 = v34;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8678, &qword_1539A8);
  sub_143DBC();
  v121 = v128;
  v122 = v129;
  v123 = v130;
  v35 = a1;
  v36 = (a1 + v32[11]);
  v38 = v36[1];
  v39 = *(a1 + v32[12]);
  v128 = *v36;
  v37 = v128;
  v129 = v38;
  v120[0] = v39;
  v40 = (a1 + v32[13]);
  v41 = *v40;
  v42 = v40[1];
  v43 = sub_F469C();
  v80 = v30;
  v44 = v94;
  sub_EF334(&v121, &v128, v120, v41, v42, UIScreen.Dimensions.size.getter, 0, v29, v94, &type metadata for Double, v80, v43, v43);
  v45 = v32[17];
  v93 = v35;
  v46 = (v35 + v45);
  sub_1DB40(v35 + v45, v127);
  v47 = sub_EE188(v32);
  v124 = v37;
  v125 = v38;
  v126 = v39;
  v121 = v47;
  v122 = v48;
  LOBYTE(v123) = v49 & 1;
  v50 = v92;
  sub_1438FC();
  sub_F46F0(&v121);
  (*(v106 + 8))(v44, v13);
  sub_143EAC();
  v51 = v91;
  v52 = OpaqueTypeMetadata2;
  sub_143B2C();
  (*(v103 + 8))(v50, v52);
  v53 = v109;
  sub_14353C();
  v54 = v84;
  v55 = v89;
  sub_143A7C();
  (*(v111 + 8))(v53, v112);
  (*(v102 + 8))(v51, v19);
  v56 = v46[3];
  v57 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v56);
  (*(v57 + 112))(v56, v57);
  v121 = v19;
  v122 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v87;
  v60 = v90;
  sub_143A3C();
  (*(v97 + 8))(v54, v60);
  sub_141F5C();
  v121 = v83;
  v122 = v82;
  v123 = v34;
  sub_143D9C();
  v121 = sub_141EFC();
  v122 = v61;
  sub_9CCC();
  v62 = v95;
  sub_142C3C();

  v63 = *(v104 + 8);
  v63(v59, v22);
  v64 = v113;
  sub_142D6C();
  v65 = sub_F4CA4(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v120[4] = v58;
  v120[5] = v65;
  v66 = swift_getWitnessTable();
  sub_F4720();
  v67 = v100;
  sub_14391C();
  (*(v114 + 8))(v64, v115);
  v63(v62, v22);
  v68 = sub_1D4A4(&qword_1C8690, &qword_1C85B8, &qword_153858, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
  v120[2] = v66;
  v120[3] = v68;
  v69 = v105;
  v70 = swift_getWitnessTable();
  v71 = v108;
  v72 = *(v108 + 16);
  v73 = v107;
  v72(v107, v67, v69);
  v74 = *(v71 + 8);
  v74(v67, v69);
  v75 = sub_14307C();
  v76 = v116;
  *v116 = v75;
  *(v76 + 8) = 0;
  *(v76 + 16) = 1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8698, &qword_1539B0);
  sub_EF624(v93, v99, v101, v76 + *(v77 + 44));
  v72(v67, v73, v69);
  v121 = v67;
  v78 = v117;
  sub_1D19C(v76, v117, qword_1C85C0, &qword_153860);
  v122 = v78;
  v128 = v69;
  v129 = v118;
  v120[0] = v70;
  v120[1] = sub_1D4A4(&qword_1C86A0, qword_1C85C0, &qword_153860, &protocol conformance descriptor for HStack<A>);
  sub_EDCF0(&v121, 2uLL, &v128);
  sub_15340(v76, qword_1C85C0, &qword_153860);
  v74(v73, v69);
  sub_15340(v78, qword_1C85C0, &qword_153860);
  return (v74)(v67, v69);
}

uint64_t sub_EF334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a5;
  v42 = a8;
  v39 = a4;
  v40 = a7;
  v37 = a9;
  v38 = a6;
  v43 = a1;
  v35 = a13;
  v36 = a11;
  v33 = a3;
  v34 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = v31 - v15;
  v31[1] = a10;
  v17 = sub_14485C();
  v31[0] = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v31 - v19;
  v21 = sub_143DDC();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  (*(v22 + 16))(v31 - v24, v43, v21, v23);
  v25 = a2;
  (*(v18 + 16))(v20, a2, v17);
  v26 = v14;
  v27 = *(v14 + 16);
  v28 = AssociatedTypeWitness;
  v29 = v33;
  v27(v16, v33, AssociatedTypeWitness);
  sub_143D4C();
  (*(v26 + 8))(v29, v28);
  (*(v18 + 8))(v25, v31[0]);
  return (*(v22 + 8))(v43, v21);
}

uint64_t sub_EF624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a4;
  v84 = sub_1432AC();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TickerSlider(0, a2, a3, v8);
  v10 = *(v9 - 8);
  v74 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v60 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86A8, &qword_1539B8);
  __chkstk_darwin(v81);
  v14 = v60 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86B0, &qword_1539C0);
  __chkstk_darwin(v83);
  v64 = v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86B8, &qword_1539C8);
  __chkstk_darwin(v16 - 8);
  v79 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v78 = v60 - v19;
  __chkstk_darwin(v20);
  v77 = v60 - v21;
  v23 = __chkstk_darwin(v22);
  v85 = v60 - v24;
  v25 = *(v10 + 16);
  v75 = v10 + 16;
  v76 = v25;
  v65 = v12;
  (v25)(v12, a1, v9, v23);
  v73 = *(v10 + 80);
  v26 = (v73 + 32) & ~v73;
  v68 = v26;
  v27 = swift_allocObject();
  v69 = a2;
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  v70 = a3;
  v28 = *(v10 + 32);
  v71 = v10 + 32;
  v72 = v28;
  v28(v27 + v26, v12, v9);
  v90 = a2;
  v91 = a3;
  v92 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86C0, &qword_1539D0);
  v66 = sub_F47F4();
  sub_143CFC();
  v29 = v82;
  v14[*(v81 + 36)] = 0;
  sub_142D9C();
  v63 = sub_F4BC0();
  v62 = sub_F4CA4(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v30 = v64;
  v31 = v84;
  sub_1438CC();
  v32 = *(v86 + 8);
  v86 += 8;
  v61 = v32;
  v32(v29, v31);
  sub_15340(v14, &qword_1C86A8, &qword_1539B8);
  v33 = (a1 + *(v9 + 68));
  v35 = v33[3];
  v34 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v35);
  v36 = (*(v34 + 112))(v35, v34);
  *(v30 + *(v83 + 36)) = v36 & 1;
  v37 = v33[3];
  v38 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v37);
  (*(v38 + 112))(v37, v38);
  v60[1] = sub_F4CEC();
  sub_143A3C();
  sub_15340(v30, &qword_1C86B0, &qword_1539C0);
  v39 = v65;
  v40 = v9;
  v76(v65, a1, v9);
  v41 = v68;
  v42 = swift_allocObject();
  v43 = v69;
  v44 = v70;
  *(v42 + 16) = v69;
  *(v42 + 24) = v44;
  v72(v42 + v41, v39, v40);
  v87 = v43;
  v88 = v44;
  v89 = a1;
  sub_143CFC();
  v45 = v82;
  v14[*(v81 + 36)] = 0;
  sub_142D9C();
  v46 = v84;
  sub_1438CC();
  v61(v45, v46);
  sub_15340(v14, &qword_1C86A8, &qword_1539B8);
  v47 = v33[3];
  v48 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v47);
  v49 = (*(v48 + 112))(v47, v48);
  *(v30 + *(v83 + 36)) = v49 & 1;
  v50 = v33[3];
  v51 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v50);
  (*(v51 + 112))(v50, v51);
  v52 = v77;
  sub_143A3C();
  sub_15340(v30, &qword_1C86B0, &qword_1539C0);
  v53 = v85;
  v54 = v78;
  sub_1D19C(v85, v78, &qword_1C86B8, &qword_1539C8);
  v55 = v79;
  sub_1D19C(v52, v79, &qword_1C86B8, &qword_1539C8);
  v56 = v80;
  sub_1D19C(v54, v80, &qword_1C86B8, &qword_1539C8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8740, &qword_153A18);
  v58 = v56 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_1D19C(v55, v56 + *(v57 + 64), &qword_1C86B8, &qword_1539C8);
  sub_15340(v52, &qword_1C86B8, &qword_1539C8);
  sub_15340(v53, &qword_1C86B8, &qword_1539C8);
  sub_15340(v55, &qword_1C86B8, &qword_1539C8);
  return sub_15340(v54, &qword_1C86B8, &qword_1539C8);
}

uint64_t sub_EFE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for TickerSlider(0, a2, a3, a4);

  v32 = sub_143C2C();
  if (qword_1C0068 != -1)
  {
    swift_once();
  }

  v8 = qword_1C8540;
  KeyPath = swift_getKeyPath();

  sub_F0200(&v33);
  v10 = __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v14 = sub_142AAC();
  __swift_destroy_boxed_opaque_existential_0(&v33);
  if (qword_1C0060 != -1)
  {
    swift_once();
  }

  v15 = sub_143C4C();
  v16 = __swift_project_value_buffer(v15, qword_1C8528);
  v17 = swift_getKeyPath();
  v18 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86F8, &qword_1539E8) + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14C0, &qword_14B720);
  (*(*(v15 - 8) + 16))(v18 + *(v19 + 28), v16, v15);
  *v18 = v17;
  *a5 = v32;
  a5[1] = KeyPath;
  a5[2] = v8;
  a5[3] = v14;
  sub_143EAC();
  sub_142A9C();
  v20 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86E8, &qword_1539E0) + 36));
  v21 = v34;
  *v20 = v33;
  v20[1] = v21;
  v20[2] = v35;
  v22 = (a1 + *(v7 + 68));
  v23 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v25 = -(*(v24 + 56))(v23, v24);
  v26 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86D8, &qword_1539D8) + 36);
  *v26 = v25;
  *(v26 + 1) = 0;
  v27 = v22[3];
  v28 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v27);
  v29 = (*(v28 + 80))(v27, v28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86C0, &qword_1539D0);
  *(a5 + *(result + 36)) = v29;
  return result;
}

int *sub_F0200@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1429CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_FA9DC(&v16 - v7);
  (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
  v9 = sub_1429BC();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    if (qword_1C0070 != -1)
    {
      swift_once();
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8, &qword_14B6E0);
    v12 = __swift_project_value_buffer(v11, qword_1C8548);
    a1[3] = v11;
    a1[4] = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
  }

  else
  {
    if (qword_1C0078 != -1)
    {
      swift_once();
    }

    result = __swift_project_value_buffer(&type metadata for HierarchicalShapeStyle, qword_1C8560);
    v15 = *result;
    a1[3] = &type metadata for HierarchicalShapeStyle;
    a1[4] = &protocol witness table for HierarchicalShapeStyle;
    *a1 = v15;
  }

  return result;
}

uint64_t sub_F0458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for TickerSlider(0, a2, a3, a4);

  v32 = sub_143C2C();
  if (qword_1C0068 != -1)
  {
    swift_once();
  }

  v8 = qword_1C8540;
  KeyPath = swift_getKeyPath();

  sub_F0200(&v33);
  v10 = __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v14 = sub_142AAC();
  __swift_destroy_boxed_opaque_existential_0(&v33);
  if (qword_1C0060 != -1)
  {
    swift_once();
  }

  v15 = sub_143C4C();
  v16 = __swift_project_value_buffer(v15, qword_1C8528);
  v17 = swift_getKeyPath();
  v18 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86F8, &qword_1539E8) + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14C0, &qword_14B720);
  (*(*(v15 - 8) + 16))(v18 + *(v19 + 28), v16, v15);
  *v18 = v17;
  *a5 = v32;
  a5[1] = KeyPath;
  a5[2] = v8;
  a5[3] = v14;
  sub_143EAC();
  sub_142A9C();
  v20 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86E8, &qword_1539E0) + 36));
  v21 = v34;
  *v20 = v33;
  v20[1] = v21;
  v20[2] = v35;
  v22 = (a1 + *(v7 + 68));
  v23 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v25 = (*(v24 + 56))(v23, v24);
  v26 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86D8, &qword_1539D8) + 36));
  *v26 = v25;
  v26[1] = 0.0;
  v27 = v22[3];
  v28 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v27);
  v29 = (*(v28 + 80))(v27, v28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C86C0, &qword_1539D0);
  *(a5 + *(result + 36)) = v29;
  return result;
}

void sub_F07CC(uint64_t a1)
{
  sub_6ED04(319);
  if (v1 <= 0x3F)
  {
    sub_F5D48(319, &qword_1C8648, &type metadata for Double, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_F5D48(319, &qword_1C3E48, &type metadata for Bool, &type metadata accessor for Binding);
      if (v4 <= 0x3F)
      {
        sub_F0ADC(v3);
        if (v5 <= 0x3F)
        {
          sub_F0B34();
          if (v6 <= 0x3F)
          {
            sub_F0B84();
            if (v7 <= 0x3F)
            {
              sub_F0BE4();
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_F0934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0, qword_14DDC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_F0A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0, qword_14DDC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

void sub_F0ADC(__n128 a1)
{
  if (!qword_1C8650)
  {
    v1 = sub_14485C();
    if (!v2)
    {
      atomic_store(v1, &qword_1C8650);
    }
  }
}

unint64_t sub_F0B34()
{
  result = qword_1C8658;
  if (!qword_1C8658)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1C8658);
  }

  return result;
}

void sub_F0B84()
{
  if (!qword_1C8660)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1C8660);
    }
  }
}

unint64_t sub_F0BE4()
{
  result = qword_1C8668;
  if (!qword_1C8668)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1C8668);
  }

  return result;
}

uint64_t sub_F0C48(uint64_t *a1)
{
  sub_143D5C();
  swift_getWitnessTable();
  sub_EE53C();
  swift_getOpaqueTypeMetadata2();
  sub_142C6C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_14358C();
  sub_142C6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C85B8, &qword_153858);
  sub_142C6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1C85C0, &qword_153860);
  swift_getTupleTypeMetadata2();
  sub_143F4C();
  swift_getWitnessTable();
  sub_143D8C();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_F0E7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_F0EC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F0F44()
{
  v0 = sub_143C4C();
  __swift_allocate_value_buffer(v0, qword_1C8528);
  v1 = __swift_project_value_buffer(v0, qword_1C8528);
  v2 = enum case for Image.Scale.medium(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_F0FCC(__n128 a1)
{
  result = sub_14368C();
  qword_1C8540 = result;
  return result;
}

uint64_t sub_F0FEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8, &qword_14B6E0);
  __swift_allocate_value_buffer(v0, qword_1C8548);
  __swift_project_value_buffer(v0, qword_1C8548);
  return sub_14295C();
}

uint64_t sub_F1050()
{
  v1 = round(1.0 / (v0[5] / (v0[4] - v0[3])));
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void *sub_F10C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_14349C();
  v6 = v5;
  v8 = v7;
  v12 = *v1;
  v13 = *(v1 + 8);
  LOBYTE(v14) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
  sub_143DBC();
  v9 = v2[5] / (v2[4] - v2[3]);
  v10 = sub_F1050();
  sub_1DB40((v2 + 6), a1 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8670, &qword_156200);
  sub_143CAC();
  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A50, &qword_152470);
  sub_143CAC();
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  result = sub_143CAC();
  *(a1 + 48) = LOBYTE(v12);
  *(a1 + 56) = v13;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  return result;
}

uint64_t sub_F1254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = sub_142C8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_F51A4(a2, v18);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 184) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v11 = v18[9];
  *(v10 + 144) = v18[8];
  *(v10 + 160) = v11;
  *(v10 + 176) = v19;
  v12 = v18[5];
  *(v10 + 80) = v18[4];
  *(v10 + 96) = v12;
  v13 = v18[7];
  *(v10 + 112) = v18[6];
  *(v10 + 128) = v13;
  v14 = v18[1];
  *(v10 + 16) = v18[0];
  *(v10 + 32) = v14;
  v15 = v18[3];
  *(v10 + 48) = v18[2];
  *(v10 + 64) = v15;
  result = (*(v7 + 32))(v10 + v9, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *a3 = sub_F52E4;
  a3[1] = v10;
  return result;
}

uint64_t sub_F13D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v133 = a3;
  v125 = a1;
  v136 = a4;
  v5 = sub_142C8C();
  v134 = *(v5 - 8);
  v135 = v5;
  __chkstk_darwin(v5);
  v131 = v6;
  v132 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_14336C();
  v124 = *(v126 - 1);
  __chkstk_darwin(v126);
  v120 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1435AC();
  __chkstk_darwin(v8 - 8);
  v110 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1435CC();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v106 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8750, &qword_153B48);
  __chkstk_darwin(v11);
  v13 = &v103 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8758, &qword_153B50);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v103 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8760, &qword_153B58);
  v108 = *(v18 - 8);
  v109 = v18;
  __chkstk_darwin(v18);
  v105 = &v103 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8768, &qword_153B60);
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = &v103 - v20;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8770, &qword_153B68);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v103 - v21;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8778, &qword_153B70);
  v119 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v103 - v22;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8780, &qword_153B78);
  v123 = *(v128 - 8);
  __chkstk_darwin(v128);
  v121 = &v103 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8788, &qword_153B80);
  v129 = *(v24 - 8);
  v130 = v24;
  __chkstk_darwin(v24);
  v127 = &v103 - v25;
  sub_1435EC();
  v26 = a2;
  v137 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8790, &qword_153B88);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8798, &qword_153B90);
  v28 = sub_F5370();
  *&v141 = v27;
  *(&v141 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_14293C();
  if (qword_1C0080 != -1)
  {
    swift_once();
  }

  sub_143F8C();
  sub_143F9C();
  sub_143E8C();
  sub_142B8C();
  v29 = &v13[*(v11 + 36)];
  *v29 = v152;
  *(v29 + 8) = v153;
  *(v29 + 24) = v154;
  v104 = v26;
  sub_F51A4(v26, &v141);
  v30 = swift_allocObject();
  v31 = v150;
  *(v30 + 144) = v149;
  *(v30 + 160) = v31;
  *(v30 + 176) = v151;
  v32 = v146;
  *(v30 + 80) = v145;
  *(v30 + 96) = v32;
  v33 = v148;
  *(v30 + 112) = v147;
  *(v30 + 128) = v33;
  v34 = v142;
  *(v30 + 16) = v141;
  *(v30 + 32) = v34;
  v35 = v144;
  *(v30 + 48) = v143;
  *(v30 + 64) = v35;
  v36 = sub_F54BC();
  sub_143A5C();

  sub_15340(v13, &qword_1C8750, &qword_153B48);
  sub_F51A4(v26, &v141);
  v37 = swift_allocObject();
  v38 = v150;
  *(v37 + 144) = v149;
  *(v37 + 160) = v38;
  *(v37 + 176) = v151;
  v39 = v146;
  *(v37 + 80) = v145;
  *(v37 + 96) = v39;
  v40 = v148;
  *(v37 + 112) = v147;
  *(v37 + 128) = v40;
  v41 = v142;
  *(v37 + 16) = v141;
  *(v37 + 32) = v41;
  v42 = v144;
  *(v37 + 48) = v143;
  *(v37 + 64) = v42;
  *&v141 = v11;
  *(&v141 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = sub_F55A8();
  v44 = v105;
  sub_143ADC();

  (*(v15 + 8))(v17, v14);
  sub_14359C();
  v45 = v106;
  sub_1435BC();
  *&v141 = v14;
  *(&v141 + 1) = &type metadata for CGFloat;
  *&v142 = OpaqueTypeConformance2;
  *(&v142 + 1) = v102;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v107;
  v48 = v109;
  v49 = v116;
  sub_143AAC();
  (*(v113 + 8))(v45, v49);
  (*(v108 + 8))(v44, v48);
  v50 = v104;
  v113 = *v104;
  LODWORD(v110) = *(v104 + 8);
  v108 = v104[2];
  *&v138 = v113;
  BYTE8(v138) = v110;
  v139 = v108;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
  sub_143CDC();
  v138 = v141;
  v139 = v142;
  v140 = BYTE8(v142);
  sub_143F7C();
  *&v141 = v48;
  *(&v141 + 1) = v49;
  *&v142 = v46;
  *(&v142 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v112;
  v53 = v114;
  sub_14397C();

  (*(v111 + 8))(v47, v53);
  sub_14361C();
  sub_142B1C();
  v54 = v120;
  sub_14335C();
  *&v141 = v53;
  *(&v141 + 1) = &type metadata for Int;
  *&v142 = v51;
  *(&v142 + 1) = &protocol witness table for Int;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v118;
  v57 = v117;
  sub_14396C();
  (*(v124 + 8))(v54, v126);
  (*(v115 + 8))(v52, v57);
  *&v141 = v113;
  BYTE8(v141) = v110;
  *&v142 = v108;
  sub_143CBC();
  sub_F51A4(v50, &v141);
  v58 = swift_allocObject();
  v59 = v150;
  *(v58 + 144) = v149;
  *(v58 + 160) = v59;
  *(v58 + 176) = v151;
  v60 = v146;
  *(v58 + 80) = v145;
  *(v58 + 96) = v60;
  v61 = v148;
  *(v58 + 112) = v147;
  *(v58 + 128) = v61;
  v62 = v142;
  *(v58 + 16) = v141;
  *(v58 + 32) = v62;
  v63 = v144;
  *(v58 + 48) = v143;
  *(v58 + 64) = v63;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8670, &qword_156200);
  *&v141 = v57;
  *(&v141 + 1) = v55;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_F57BC(&qword_1C87F8, &protocol witness table for Int, &protocol conformance descriptor for <A> A?);
  v67 = v121;
  v66 = v122;
  sub_143B5C();

  (*(v119 + 8))(v56, v66);
  v68 = v50[9];
  v69 = v50[10];
  *&v141 = v50[8];
  *(&v141 + 1) = v68;
  *&v142 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8678, &qword_1539A8);
  sub_143D9C();
  sub_F51A4(v50, &v141);
  v70 = swift_allocObject();
  v71 = v150;
  *(v70 + 144) = v149;
  *(v70 + 160) = v71;
  *(v70 + 176) = v151;
  v72 = v146;
  *(v70 + 80) = v145;
  *(v70 + 96) = v72;
  v73 = v148;
  *(v70 + 112) = v147;
  *(v70 + 128) = v73;
  v74 = v142;
  *(v70 + 16) = v141;
  *(v70 + 32) = v74;
  v75 = v144;
  *(v70 + 48) = v143;
  *(v70 + 64) = v75;
  *&v141 = v66;
  *(&v141 + 1) = v126;
  *&v142 = v64;
  *(&v142 + 1) = v65;
  v126 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v125 = swift_getOpaqueTypeConformance2();
  v77 = v127;
  v76 = v128;
  sub_143B5C();

  (*(v123 + 8))(v67, v76);
  v78 = v50[19];
  v79 = v50[20];
  __swift_project_boxed_opaque_existential_1(v50 + 16, v78);
  LOBYTE(v138) = (*(v79 + 112))(v78, v79) & 1;
  v80 = v134;
  v81 = v132;
  v82 = v135;
  (*(v134 + 16))(v132, v133, v135);
  sub_F51A4(v50, &v141);
  v83 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v84 = (v131 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  (*(v80 + 32))(v85 + v83, v81, v82);
  v86 = v85 + v84;
  v87 = v150;
  *(v86 + 128) = v149;
  *(v86 + 144) = v87;
  *(v86 + 160) = v151;
  v88 = v146;
  *(v86 + 64) = v145;
  *(v86 + 80) = v88;
  v89 = v148;
  *(v86 + 96) = v147;
  *(v86 + 112) = v89;
  v90 = v142;
  *v86 = v141;
  *(v86 + 16) = v90;
  v91 = v144;
  *(v86 + 32) = v143;
  *(v86 + 48) = v91;
  *&v141 = v76;
  *(&v141 + 1) = &type metadata for Double;
  *&v142 = v125;
  *(&v142 + 1) = &protocol witness table for Double;
  swift_getOpaqueTypeConformance2();
  v92 = v136;
  v93 = v130;
  sub_143B5C();

  (*(v129 + 8))(v77, v93);
  sub_F51A4(v50, &v141);
  v94 = swift_allocObject();
  v95 = v150;
  *(v94 + 144) = v149;
  *(v94 + 160) = v95;
  *(v94 + 176) = v151;
  v96 = v146;
  *(v94 + 80) = v145;
  *(v94 + 96) = v96;
  v97 = v148;
  *(v94 + 112) = v147;
  *(v94 + 128) = v97;
  v98 = v142;
  *(v94 + 16) = v141;
  *(v94 + 32) = v98;
  v99 = v144;
  *(v94 + 48) = v143;
  *(v94 + 64) = v99;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8800, &unk_153BC0);
  v101 = (v92 + *(result + 36));
  *v101 = sub_F5790;
  v101[1] = v94;
  v101[2] = 0;
  v101[3] = 0;
  return result;
}

uint64_t sub_F23DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8798, &qword_153B90);
  __chkstk_darwin(v4);
  v6 = v27 - v5;
  *v6 = sub_14307C();
  *(v6 + 1) = 0x4018000000000000;
  v6[16] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8820, &unk_153BE0);
  v8 = a1[15];
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else if ((v10 & 0x8000000000000000) == 0)
  {
    v27[1] = *(result + 44);
    v30 = 0;
    v31 = v10;
    swift_getKeyPath();
    sub_F51A4(a1, v28);
    v11 = swift_allocObject();
    v12 = v28[9];
    *(v11 + 144) = v28[8];
    *(v11 + 160) = v12;
    *(v11 + 176) = v29;
    v13 = v28[5];
    *(v11 + 80) = v28[4];
    *(v11 + 96) = v13;
    v14 = v28[7];
    *(v11 + 112) = v28[6];
    *(v11 + 128) = v14;
    v15 = v28[1];
    *(v11 + 16) = v28[0];
    *(v11 + 32) = v15;
    v16 = v28[3];
    *(v11 + 48) = v28[2];
    *(v11 + 64) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8828, &qword_153C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8830, &qword_153C10);
    sub_F58C0();
    v27[0] = a2;
    sub_1D4A4(&qword_1C8848, &qword_1C8830, &qword_153C10, &protocol conformance descriptor for IDView<A, B>);
    sub_143DFC();
    v17 = a1[19];
    v18 = a1[20];
    __swift_project_boxed_opaque_existential_1(a1 + 16, v17);
    v19 = (*(v18 + 8))(v17, v18);
    sub_143F7C();
    v21 = v20;
    v23 = v22;
    v24 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C87B0, &qword_153B98) + 36)];
    *v24 = 1.0;
    v24[1] = v19;
    *(v24 + 2) = v21;
    *(v24 + 3) = v23;
    v25 = a1[19];
    v26 = a1[20];
    __swift_project_boxed_opaque_existential_1(a1 + 16, v25);
    *&v6[*(v4 + 36)] = (*(v26 + 32))(v25, v26);
    sub_F5370();
    sub_143A1C();
    return sub_15340(v6, &qword_1C8798, &qword_153B90);
  }

  __break(1u);
  return result;
}

uint64_t sub_F26E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
  sub_143CDC();
  v17 = v18;
  v16 = v20;
  v23 = *(a2 + 24);
  LOBYTE(v24) = *(a2 + 32);
  v25 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8810, &qword_153BD0);
  sub_143CDC();
  v15 = v18;
  v14 = v20;
  v19 = *(a2 + 88);
  v21 = *(a2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
  sub_143DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CDC();
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for TickView(0);
  *(a3 + v6[5]) = v5;
  v7 = a3 + v6[6];
  *v7 = v17;
  *(v7 + 2) = v16;
  v7[24] = v22;
  v8 = a3 + v6[7];
  *v8 = v15;
  *(v8 + 2) = v14;
  v8[24] = v22;
  v9 = a3 + v6[8];
  *v9 = v23;
  *(v9 + 1) = v24;
  v9[16] = v25;
  v10 = a3 + v6[9];
  *v10 = v19;
  v10[16] = v21;
  v11 = (a3 + v6[10]);
  sub_143CAC();
  *v11 = v19;
  v12 = (a3 + v6[11]);
  sub_143CAC();
  *v12 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8830, &qword_153C10);
  *(a3 + *(result + 52)) = v5;
  return result;
}

double sub_F2970(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CBC();
  if ((v10 & 1) == 0)
  {
    v5 = a3[19];
    v6 = a3[20];
    __swift_project_boxed_opaque_existential_1(a3 + 16, v5);
    v7 = (*(v6 + 112))(v5, v6);
    if ((v7 & 1) == 0)
    {
      v7 = sub_142A3C();
      if (v7)
      {
        v7 = sub_142A3C();
        if ((v7 & 1) == 0)
        {
          v8 = a3[19];
          v9 = a3[20];
          __swift_project_boxed_opaque_existential_1(a3 + 16, v8);
          v7 = (*(v9 + 120))(v8, v9);
        }
      }
    }

    __chkstk_darwin(v7);
    sub_143F1C();
    sub_142B7C();
  }

  return result;
}

uint64_t sub_F2AD8(uint64_t a1, uint64_t a2)
{
  sub_142A2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
  return sub_143DAC();
}

void sub_F2B4C(double *a1@<X8>)
{
  sub_142BBC();
  sub_144F4C();
  *a1 = v2;
}

void *sub_F2BE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
  result = sub_143CBC();
  if ((v6 & 1) == 0 && (v3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
    result = sub_143CBC();
    if ((v5 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8678, &qword_1539A8);
      return sub_143DAC();
    }
  }

  return result;
}

uint64_t sub_F2CE0(uint64_t result, double *a2, double *a3)
{
  v3 = a3[14];
  v4 = round(*a2 / v3);
  if (v4 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = round(*result / v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 19);
  v7 = *(a3 + 20);
  __swift_project_boxed_opaque_existential_1(a3 + 16, v6);
  result = (*(v7 + 104))(v6, v7);
  if ((result & 1) != 0 && *&v4 != *&v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
    result = sub_143CBC();
    if ((v9 & 1) != 0 || v8 != v4)
    {
      return sub_F2E54(v4);
    }
  }

  return result;
}

uint64_t sub_F2E54(uint64_t a1)
{
  v3 = sub_14357C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 56);
  LOBYTE(v18[0]) = *(v1 + 48);
  *(&v18[0] + 1) = v7;
  v20 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CCC();
  sub_143F0C();
  v16 = v1;
  v17 = a1;
  sub_F51A4(v1, v18);
  v8 = swift_allocObject();
  v9 = v18[9];
  *(v8 + 144) = v18[8];
  *(v8 + 160) = v9;
  *(v8 + 176) = v19;
  v10 = v18[5];
  *(v8 + 80) = v18[4];
  *(v8 + 96) = v10;
  v11 = v18[7];
  *(v8 + 112) = v18[6];
  *(v8 + 128) = v11;
  v12 = v18[1];
  *(v8 + 16) = v18[0];
  *(v8 + 32) = v12;
  v13 = v18[3];
  *(v8 + 48) = v18[2];
  *(v8 + 64) = v13;
  sub_14356C();
  sub_142B6C();

  return (*(v4 + 8))(v6, v3);
}

void sub_F3048(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t *a4)
{
  if (*a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
    sub_143CBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8670, &qword_156200);
    sub_F57BC(&qword_1C8808, &protocol witness table for Int, &protocol conformance descriptor for <A> A?);
    sub_142C7C();
  }
}

uint64_t sub_F3128(uint64_t a1)
{
  v2 = *(a1 + 152);
  v3 = *(a1 + 160);
  __swift_project_boxed_opaque_existential_1((a1 + 128), v2);
  result = (*(v3 + 104))(v2, v3);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8678, &qword_1539A8);
    result = sub_143D9C();
    v5 = round(v6 / *(a1 + 112));
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return sub_F2E54(v5);
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

double sub_F321C(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
  sub_143CCC();
  return result;
}

double sub_F328C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CCC();
  return result;
}

uint64_t sub_F32E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8818, &qword_153BD8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1537E0;
  sub_143BCC();
  *(v0 + 32) = sub_143E7C();
  *(v0 + 40) = v1;
  sub_143BBC();
  *(v0 + 48) = sub_143E7C();
  *(v0 + 56) = v2;
  sub_143BDC();
  *(v0 + 64) = sub_143E7C();
  *(v0 + 72) = v3;
  sub_143BCC();
  result = sub_143E7C();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  qword_1C8578 = v0;
  return result;
}

__n128 sub_F33A0@<Q0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)@<X8>)
{
  sub_F51A4(v2, v10);
  v4 = swift_allocObject();
  v5 = v10[9];
  *(v4 + 144) = v10[8];
  *(v4 + 160) = v5;
  *(v4 + 176) = v11;
  v6 = v10[5];
  *(v4 + 80) = v10[4];
  *(v4 + 96) = v6;
  v7 = v10[7];
  *(v4 + 112) = v10[6];
  *(v4 + 128) = v7;
  v8 = v10[1];
  *(v4 + 16) = v10[0];
  *(v4 + 32) = v8;
  result = v10[3];
  *(v4 + 48) = v10[2];
  *(v4 + 64) = result;
  *a1 = sub_F51E0;
  a1[1] = v4;
  return result;
}

uint64_t sub_F3440@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for TickView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = v5;
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8918, &qword_153C80);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = (&v35 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8920, &qword_153C88);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  __chkstk_darwin(v10);
  v43 = &v35 - v12;
  *v9 = sub_143EAC();
  v9[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8928, &qword_153C90);
  sub_F3894(v1, v9 + *(v14 + 44));
  sub_143EAC();
  sub_142A9C();
  v15 = (v9 + *(v7 + 36));
  v16 = v50;
  *v15 = v49;
  v15[1] = v16;
  v15[2] = v51;
  v17 = v1 + *(v3 + 36);
  v35 = v1;
  v18 = *v17;
  v19 = *(v17 + 16);
  LOBYTE(v17) = *(v17 + 24);
  v44 = v18;
  v45 = v19;
  LOBYTE(v46) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8930, &qword_153C98);
  sub_143D9C();
  *&v44 = v47;
  BYTE8(v44) = v48;
  v36 = v6;
  sub_F5DF8(v1, v6);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v37 = type metadata accessor for TickView;
  sub_F61D8(v6, v21 + v20, type metadata accessor for TickView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A50, &qword_152470);
  v23 = sub_F5E64();
  v24 = sub_F5F1C();
  v25 = v38;
  sub_143B6C();

  sub_15340(v9, &qword_1C8918, &qword_153C80);
  v26 = v35;
  v27 = v35 + *(v3 + 40);
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v27) = *(v27 + 16);
  *&v44 = v28;
  *(&v44 + 1) = v29;
  LOBYTE(v45) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
  sub_143D9C();
  v30 = v36;
  sub_F5DF8(v26, v36);
  v31 = swift_allocObject();
  sub_F61D8(v30, v31 + v20, v37);
  *&v44 = v25;
  *(&v44 + 1) = v22;
  v45 = v23;
  v46 = v24;
  swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v40;
  sub_143B6C();

  return (*(v41 + 8))(v32, v33);
}

uint64_t sub_F3894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1429CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_142D2C();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8960, &qword_153CB8);
  __chkstk_darwin(v57);
  v15 = &v57 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8968, &qword_153CC0);
  __chkstk_darwin(v58);
  v17 = &v57 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8970, &qword_153CC8);
  __chkstk_darwin(v59);
  v60 = &v57 - v18;
  v19 = *(v11 + 28);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_14310C();
  (*(*(v21 - 8) + 104))(&v13[v19], v20, v21);
  __asm { FMOV            V0.2D, #1.0 }

  *v13 = _Q0;
  v61 = a1;
  sub_FA9DC(v9);
  (*(v4 + 104))(v6, enum case for ColorScheme.dark(_:), v3);
  LOBYTE(v20) = sub_1429BC();
  v27 = *(v4 + 8);
  v27(v6, v3);
  v27(v9, v3);
  if (v20)
  {
    if (qword_1C0088 != -1)
    {
      swift_once();
    }

    v28 = &type metadata for Color;
    v29 = *__swift_project_value_buffer(&type metadata for Color, qword_1C8580);
    *(&v67 + 1) = &type metadata for Color;
    *&v68 = &protocol witness table for Color;
    *&v66 = v29;
  }

  else
  {
    if (qword_1C0090 != -1)
    {
      swift_once();
    }

    v28 = &type metadata for HierarchicalShapeStyle;
    v30 = *__swift_project_value_buffer(&type metadata for HierarchicalShapeStyle, qword_1C8598);
    *(&v67 + 1) = &type metadata for HierarchicalShapeStyle;
    *&v68 = &protocol witness table for HierarchicalShapeStyle;
    LODWORD(v66) = v30;
  }

  v31 = __swift_project_boxed_opaque_existential_1(&v66, v28);
  v32 = __chkstk_darwin(v31);
  (*(v34 + 16))(&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  v35 = sub_142AAC();
  sub_F61D8(v13, v15, &type metadata accessor for RoundedRectangle);
  *&v15[*(v57 + 36)] = v35;
  __swift_destroy_boxed_opaque_existential_0(&v66);
  sub_143EAC();
  sub_142A9C();
  sub_10358(v15, v17, &qword_1C8960, &qword_153CB8);
  v36 = &v17[*(v58 + 36)];
  v37 = v67;
  *v36 = v66;
  *(v36 + 1) = v37;
  *(v36 + 2) = v68;
  v38 = type metadata accessor for TickView(0);
  v39 = v61;
  v40 = (v61 + *(v38 + 40));
  v41 = *v40;
  v42 = v40[1];
  v64 = v41;
  v65 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CBC();
  v43 = v63;
  v44 = v17;
  v45 = v60;
  sub_10358(v44, v60, &qword_1C8968, &qword_153CC0);
  *(v45 + *(v59 + 36)) = v43;
  v46 = (v39 + *(v38 + 44));
  v47 = *v46;
  v48 = v46[1];
  v64 = v47;
  v65 = v48;
  sub_143CBC();
  v49 = v63;
  sub_143F7C();
  v51 = v50;
  v53 = v52;
  v54 = v62;
  sub_10358(v45, v62, &qword_1C8970, &qword_153CC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8978, &unk_153CD0);
  v56 = (v54 + *(result + 36));
  *v56 = 0x3FF0000000000000;
  v56[1] = v49;
  v56[2] = v51;
  v56[3] = v53;
  return result;
}

void sub_F3E9C()
{
  v1 = type metadata accessor for TickView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8930, &qword_153C98);
  sub_143D9C();
  v2 = 1.0;
  v3 = 1.0;
  if ((v7 & 1) == 0)
  {
    v4 = vabdd_f64(v6, *(v0 + *(v1 + 20)) * 6.0 + *(v0 + *(v1 + 20)) + *(v0 + *(v1 + 20)) + 1.0) / 10.0;
    v3 = 0.0;
    if (v4 <= 1.0)
    {
      if (1.0 - v4 < 0.0)
      {
        v3 = 0.0;
      }

      else
      {
        v3 = 1.0 - v4;
      }
    }
  }

  sub_143D9C();
  if ((v7 & 1) == 0)
  {
    v5 = vabdd_f64(v6, *(v0 + *(v1 + 20)) * 6.0 + *(v0 + *(v1 + 20)) + *(v0 + *(v1 + 20)) + 1.0) / 18.0;
    v2 = 0.0;
    if (v5 <= 1.0)
    {
      if (1.0 - v5 < 0.0)
      {
        v2 = 0.0;
      }

      else
      {
        v2 = 1.0 - v5;
      }
    }
  }

  sub_F401C(v3);
  sub_F428C(v2);
}

void sub_F401C(double a1)
{
  type metadata accessor for TickView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8958, &unk_153CA8);
  sub_143D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
  sub_143D9C();
  if (v3)
  {
    v1 = sub_143F0C();
    __chkstk_darwin(v1);
    sub_142B7C();
  }

  else
  {
    v2 = sub_143D9C();
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
      sub_143CCC();
      return;
    }

    __chkstk_darwin(v2);
    sub_143F1C();
    sub_142B7C();
  }
}

void sub_F428C(double a1)
{
  type metadata accessor for TickView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8958, &unk_153CA8);
  sub_143D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
  sub_143D9C();
  if (v3)
  {
    v1 = sub_143F0C();
    __chkstk_darwin(v1);
    sub_142B7C();
  }

  else
  {
    v2 = sub_143D9C();
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
      sub_143CCC();
      return;
    }

    __chkstk_darwin(v2);
    sub_143F1C();
    sub_142B7C();
  }
}

void sub_F44EC(double a1)
{
  type metadata accessor for TickView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CCC();
}

void sub_F4570(double a1)
{
  type metadata accessor for TickView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CCC();
}

uint64_t sub_F45F4()
{
  __swift_allocate_value_buffer(&type metadata for Color, qword_1C8580);
  v0 = __swift_project_value_buffer(&type metadata for Color, qword_1C8580);
  result = sub_143BDC();
  *v0 = result;
  return result;
}

uint64_t sub_F4650(uint64_t a1, uint64_t *a2)
{
  __swift_allocate_value_buffer(&type metadata for HierarchicalShapeStyle, a2);
  v3 = __swift_project_value_buffer(&type metadata for HierarchicalShapeStyle, a2);
  result = sub_14338C();
  *v3 = result;
  return result;
}

unint64_t sub_F469C()
{
  result = qword_1C8680;
  if (!qword_1C8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8680);
  }

  return result;
}

unint64_t sub_F4720()
{
  result = qword_1C8688;
  if (!qword_1C8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8688);
  }

  return result;
}

unint64_t sub_F47F4()
{
  result = qword_1C86C8;
  if (!qword_1C86C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C86C0, &qword_1539D0);
    sub_F4880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C86C8);
  }

  return result;
}

unint64_t sub_F4880()
{
  result = qword_1C86D0;
  if (!qword_1C86D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C86D8, &qword_1539D8);
    sub_F490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C86D0);
  }

  return result;
}

unint64_t sub_F490C()
{
  result = qword_1C86E0;
  if (!qword_1C86E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C86E8, &qword_1539E0);
    sub_F4998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C86E0);
  }

  return result;
}

unint64_t sub_F4998()
{
  result = qword_1C86F0;
  if (!qword_1C86F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C86F8, &qword_1539E8);
    sub_F4A50();
    sub_1D4A4(&qword_1C1C68, &qword_1C14C0, &qword_14B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C86F0);
  }

  return result;
}

unint64_t sub_F4A50()
{
  result = qword_1C8700;
  if (!qword_1C8700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8708, &qword_1539F0);
    sub_F4B08();
    sub_1D4A4(&unk_1C2730, &qword_1C12B0, &qword_14AF70, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8700);
  }

  return result;
}

unint64_t sub_F4B08()
{
  result = qword_1C8710;
  if (!qword_1C8710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8718, &unk_1539F8);
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0, &qword_14D110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8710);
  }

  return result;
}

unint64_t sub_F4BC0()
{
  result = qword_1C8720;
  if (!qword_1C8720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C86A8, &qword_1539B8);
    sub_1D4A4(&qword_1C8728, &qword_1C8730, &unk_153A08, &protocol conformance descriptor for Button<A>);
    sub_1D4A4(&qword_1C3BE0, &qword_1C3BE8, &qword_14E070, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8720);
  }

  return result;
}

uint64_t sub_F4CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_F4CEC()
{
  result = qword_1C8738;
  if (!qword_1C8738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C86B0, &qword_1539C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C86A8, &qword_1539B8);
    sub_1432AC();
    sub_F4BC0();
    sub_F4CA4(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8738);
  }

  return result;
}

uint64_t objectdestroyTm_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TickerSlider(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1429CC();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v4 + v7 + *(v5 + 68)));

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_F5070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_F50B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_F5134()
{
  result = qword_1C8748;
  if (!qword_1C8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8748);
  }

  return result;
}

uint64_t sub_F51E8()
{
  v1 = sub_142C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 184) & ~v3;
  v5 = *(v2 + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_F52E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_142C8C() - 8);
  v6 = v2 + ((*(v5 + 80) + 184) & ~*(v5 + 80));

  return sub_F13D8(a1, (v2 + 16), v6, a2);
}

unint64_t sub_F5370()
{
  result = qword_1C87A0;
  if (!qword_1C87A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8798, &qword_153B90);
    sub_F53FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87A0);
  }

  return result;
}

unint64_t sub_F53FC()
{
  result = qword_1C87A8;
  if (!qword_1C87A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C87B0, &qword_153B98);
    sub_1D4A4(&qword_1C87B8, &qword_1C87C0, &qword_153BA0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87A8);
  }

  return result;
}

unint64_t sub_F54BC()
{
  result = qword_1C87C8;
  if (!qword_1C87C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8750, &qword_153B48);
    sub_1D4A4(&qword_1C87D0, &qword_1C87D8, &qword_153BA8, &protocol conformance descriptor for ScrollView<A>);
    sub_1D4A4(&qword_1C87E0, &qword_1C87E8, &unk_153BB0, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87C8);
  }

  return result;
}

unint64_t sub_F55A8()
{
  result = qword_1C87F0;
  if (!qword_1C87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87F0);
  }

  return result;
}

uint64_t sub_F560C()
{
  v1 = sub_142C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 128));

  return _swift_deallocObject(v0, v5 + 168, v3 | 7);
}

void sub_F56E4(uint64_t a1, _BYTE *a2)
{
  v5 = *(sub_142C8C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_F3048(a1, a2, v2 + v6, v7);
}

uint64_t sub_F57BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8670, &qword_156200);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  return _swift_deallocObject(v0, 184, 7);
}

unint64_t sub_F58C0()
{
  result = qword_1C8838;
  if (!qword_1C8838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8828, &qword_153C08);
    sub_F594C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8838);
  }

  return result;
}

unint64_t sub_F594C()
{
  result = qword_1C8840;
  if (!qword_1C8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8840);
  }

  return result;
}

uint64_t type metadata accessor for TickView(uint64_t a1)
{
  result = qword_1C88A8;
  if (!qword_1C88A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F5A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0, qword_14DDC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_F5AE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0, qword_14DDC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_F5BA8(uint64_t a1)
{
  sub_6ED04(319);
  if (v1 <= 0x3F)
  {
    sub_F5CF4(319, &qword_1C88B8, &qword_1C8670, &qword_156200);
    if (v2 <= 0x3F)
    {
      sub_F5CF4(319, &unk_1C88C0, &qword_1C6A50, &qword_152470);
      if (v3 <= 0x3F)
      {
        sub_F5D48(319, &qword_1C3E48, &type metadata for Bool, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_F5D48(319, &unk_1C3320, &type metadata for CGFloat, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_F5CF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_143DDC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_F5D48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_F5DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TickView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_F5E64()
{
  result = qword_1C8938;
  if (!qword_1C8938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8918, &qword_153C80);
    sub_1D4A4(&qword_1C8940, &qword_1C8948, &qword_153CA0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8938);
  }

  return result;
}

unint64_t sub_F5F1C()
{
  result = qword_1C8950;
  if (!qword_1C8950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6A50, &qword_152470);
    sub_F55A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8950);
  }

  return result;
}

uint64_t objectdestroy_78Tm()
{
  v1 = *(type metadata accessor for TickView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1429CC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_F61D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_F6240()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8920, &qword_153C88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8918, &qword_153C80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6A50, &qword_152470);
  sub_F5E64();
  sub_F5F1C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_12NowPlayingUI0aB9ItemStateV2IDOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_F6390(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_F63EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_F6460(double a1)
{
  v2 = v1;
  v23 = 1;
  memset(v17, 0, sizeof(v17));
  v18 = -1;
  v19 = 0;
  v20 = 1;
  v21 = 0;
  v22 = 0;
  if (sub_F8B9C(v1, v17, a1))
  {
    return 0x3E4C494E3CLL;
  }

  v4 = 0xE000000000000000;
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_1451EC(55);
  v14 = v15;
  v24._countAndFlagsBits = 4015177;
  v24._object = 0xE300000000000000;
  sub_14494C(v24);
  v15 = *(v1 + 8);
  v16 = *(v1 + 24);
  v12 = *(v1 + 8);
  v13 = *(v1 + 24);
  sub_1D19C(&v15, v11, &unk_1C17B0, &unk_14B960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17B0, &unk_14B960);
  v25._countAndFlagsBits = sub_14490C();
  sub_14494C(v25);

  v26._countAndFlagsBits = 0x65646F736970650ALL;
  v26._object = 0xE90000000000003DLL;
  sub_14494C(v26);
  v5._countAndFlagsBits = *v1;
  if (*v1)
  {
    v5._countAndFlagsBits = [v5._countAndFlagsBits title];
    if (v5._countAndFlagsBits)
    {
      countAndFlagsBits = v5._countAndFlagsBits;
      v7 = sub_1448DC();
      v4 = v8;

      v5._countAndFlagsBits = v7;
    }
  }

  v5._object = v4;
  sub_14494C(v5);

  v27._countAndFlagsBits = 0x64657370616C650ALL;
  v27._object = 0xED00003D656D6954;
  sub_14494C(v27);
  *&v12 = *(v2 + 32);
  BYTE8(v12) = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17E8, &qword_151EF0);
  v28._countAndFlagsBits = sub_14490C();
  sub_14494C(v28);

  v29._countAndFlagsBits = 0x754F6F656469760ALL;
  v29._object = 0xED00003D74757074;
  sub_14494C(v29);
  *&v12 = *(v2 + 48);
  v11[0] = v12;
  sub_1D19C(&v12, &v10, &unk_1C8980, &unk_14B970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C8980, &unk_14B970);
  v30._countAndFlagsBits = sub_14490C();
  sub_14494C(v30);

  v31._countAndFlagsBits = 0x3D6574756F720ALL;
  v31._object = 0xE700000000000000;
  sub_14494C(v31);
  v10 = *(v2 + 56);
  v11[0] = v10;
  sub_1D19C(v11, v9, &qword_1C17C0, &qword_153E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17C0, &qword_153E60);
  v32._countAndFlagsBits = sub_14490C();
  sub_14494C(v32);

  return v14;
}

uint64_t sub_F6788(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v9 = a2[2];
  v10 = v5;
  return sub_F8B9C(v7, v8, *&v9) & 1;
}

uint64_t sub_F67D4(Swift::String a1, char a3)
{
  if (a3)
  {
    v3 = 0x3D44496D616441;
    sub_F92C8();
    v4._countAndFlagsBits = sub_14538C();
    sub_14494C(v4);
  }

  else
  {
    v3 = 0x3D44495555;
    sub_14494C(a1);
  }

  return v3;
}

Swift::Int sub_F6868()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_14545C();
  if (v2)
  {
    sub_14546C(1uLL);
    sub_14549C(v1);
  }

  else
  {
    sub_14546C(0);
    sub_14492C();
  }

  return sub_1454AC();
}

void sub_F68EC(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    sub_14546C(1uLL);
    sub_14549C(v2);
  }

  else
  {
    sub_14546C(0);

    sub_14492C();
  }
}

Swift::Int sub_F6970(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_14545C();
  if (v3)
  {
    sub_14546C(1uLL);
    sub_14549C(v2);
  }

  else
  {
    sub_14546C(0);
    sub_14492C();
  }

  return sub_1454AC();
}

uint64_t sub_F69FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (v3 == v4)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

  else
  {
    v6 = a1[1];
    if (v3 == v4 && v6 == a2[1])
    {
      return 1;
    }

    else
    {
      return sub_1453BC();
    }
  }
}

void sub_F6A54(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8998, &qword_153E68);
    v2 = sub_14535C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (v14 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v14);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_ED8DC(*(v1 + 48) + 40 * v15, v26);
    sub_7828(*(v1 + 56) + 32 * v15, v27 + 8);
    v24[0] = v27[0];
    v24[1] = v27[1];
    v25 = v28;
    v23[0] = v26[0];
    v23[1] = v26[1];
    sub_ED8DC(v23, v22);
    if (!swift_dynamicCast())
    {
      sub_F8FB0(v23);

      goto LABEL_23;
    }

    sub_7828(v24 + 8, v22);
    sub_F8FB0(v23);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    v16 = sub_F7CB0(v21, *(&v21 + 1));
    if (v17)
    {
      v9 = v1;
      v10 = 16 * v16;
      *(v2[6] + 16 * v16) = v21;

      v11 = (v2[7] + v10);
      v1 = v9;
      v12 = *v11;
      v13 = v11[1];
      *v11 = v21;
      sub_F9064(v12, v13);
      v8 = v14;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      *(v2[6] + 16 * v16) = v21;
      *(v2[7] + 16 * v16) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_26;
      }

      v2[2] = v20;
      v8 = v14;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v14 = v8;
  }

  sub_F90B8(0, 0xF000000000000000);
LABEL_23:

  sub_F9018(0, 0, 0, 0);
}

uint64_t sub_F6D48(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v12 = v4;
        do
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_156;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
        }

        while (!v13);
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
LABEL_13:
        v14 = 16 * (v10 | (v4 << 6));
        v15 = (*(v3 + 48) + v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*(v3 + 56) + v14);
        v20 = *v18;
        v19 = v18[1];

        sub_F90CC(v20, v19);
        result = v17 == 0;
        if (!v17)
        {
          return result;
        }

        v90 = v11;
        v22 = sub_F7CB0(v16, v17);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_152;
        }

        v25 = (*(v2 + 56) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v27 >> 62;
        v29 = v19 >> 62;
        if (v27 >> 62 == 3)
        {
          if (v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v27 == 0xC000000000000000;
          }

          v31 = 0;
          v32 = v30 && v19 >> 62 == 3;
          if (v32 && !v20 && v19 == 0xC000000000000000)
          {
            v33 = 0;
            v34 = 0xC000000000000000;
            goto LABEL_55;
          }

LABEL_36:
          if (v29 <= 1)
          {
LABEL_37:
            if (!v29)
            {
              v38 = BYTE6(v19);
              goto LABEL_43;
            }

            LODWORD(v38) = HIDWORD(v20) - v20;
            if (!__OFSUB__(HIDWORD(v20), v20))
            {
              v38 = v38;
              goto LABEL_43;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
          }
        }

        else if (v28 > 1)
        {
          if (v28 == 2)
          {
            v40 = *(v26 + 16);
            v39 = *(v26 + 24);
            v37 = __OFSUB__(v39, v40);
            v31 = v39 - v40;
            if (!v37)
            {
              goto LABEL_36;
            }

            goto LABEL_158;
          }

          v31 = 0;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else if (v28)
        {
          LODWORD(v31) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_159;
          }

          v31 = v31;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v31 = BYTE6(v27);
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        if (v29 != 2)
        {
          if (v31)
          {
            goto LABEL_152;
          }

          goto LABEL_54;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        v37 = __OFSUB__(v35, v36);
        v38 = v35 - v36;
        if (v37)
        {
          goto LABEL_157;
        }

LABEL_43:
        if (v31 != v38)
        {
LABEL_152:
          sub_F9064(v20, v19);
          return 0;
        }

        if (v31 >= 1)
        {
          break;
        }

LABEL_54:
        v33 = v20;
        v34 = v19;
LABEL_55:
        sub_F9064(v33, v34);
        v8 = v90;
      }

      if (v28 > 1)
      {
        break;
      }

      if (!v28)
      {
        __s1[0] = v26;
        LOWORD(__s1[1]) = v27;
        BYTE2(__s1[1]) = BYTE2(v27);
        BYTE3(__s1[1]) = BYTE3(v27);
        BYTE4(__s1[1]) = BYTE4(v27);
        BYTE5(__s1[1]) = BYTE5(v27);
        if (v29)
        {
          v88 = v26;
          if (v29 == 1)
          {
            v80 = ((v20 >> 32) - v20);
            if (v20 >> 32 < v20)
            {
              goto LABEL_164;
            }

            sub_F90CC(v26, v27);
            v41 = sub_1409AC();
            if (!v41)
            {
              goto LABEL_183;
            }

            v42 = v41;
            v43 = sub_1409CC();
            if (__OFSUB__(v20, v43))
            {
              goto LABEL_168;
            }

            v44 = (v20 - v43 + v42);
            result = sub_1409BC();
            v8 = v90;
            if (!v44)
            {
              goto LABEL_190;
            }

            goto LABEL_75;
          }

          v67 = *(v20 + 16);
          v84 = *(v20 + 24);
          sub_F90CC(v26, v27);
          v64 = sub_1409AC();
          v87 = v2;
          if (v64)
          {
            v68 = sub_1409CC();
            if (__OFSUB__(v67, v68))
            {
              goto LABEL_174;
            }

            v64 += v67 - v68;
          }

          v66 = v84 - v67;
          if (__OFSUB__(v84, v67))
          {
            goto LABEL_166;
          }

          result = sub_1409BC();
          v8 = v90;
          if (!v64)
          {
            goto LABEL_184;
          }

          goto LABEL_117;
        }

        goto LABEL_79;
      }

      v86 = v2;
      v49 = v26;
      if (v26 > v26 >> 32)
      {
        goto LABEL_160;
      }

      v88 = v26;
      sub_F90CC(v26, v27);
      v50 = sub_1409AC();
      if (v50)
      {
        v51 = v50;
        v52 = sub_1409CC();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_162;
        }

        v82 = (v49 - v52 + v51);
      }

      else
      {
        v82 = 0;
      }

      sub_1409BC();
      v3 = a1;
      if (v29 == 2)
      {
        v76 = *(v20 + 16);
        v75 = *(v20 + 24);
        v44 = sub_1409AC();
        if (v44)
        {
          v77 = sub_1409CC();
          if (__OFSUB__(v76, v77))
          {
            goto LABEL_176;
          }

          v44 += v76 - v77;
        }

        v37 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        if (v37)
        {
          goto LABEL_172;
        }

        v79 = sub_1409BC();
        if (v79 >= v78)
        {
          v60 = v78;
        }

        else
        {
          v60 = v79;
        }

        v8 = v90;
        result = v82;
        if (!v82)
        {
          goto LABEL_194;
        }

        v2 = v86;
        if (!v44)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v82;
          v2 = v86;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v90;
          if (!v82)
          {
            goto LABEL_191;
          }

          goto LABEL_148;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_171;
        }

        v44 = sub_1409AC();
        if (v44)
        {
          v61 = sub_1409CC();
          if (__OFSUB__(v20, v61))
          {
            goto LABEL_178;
          }

          v44 += v20 - v61;
        }

        v2 = v86;
        v62 = sub_1409BC();
        if (v62 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v62;
        }

        result = v82;
        if (!v82)
        {
          goto LABEL_182;
        }

        v8 = v90;
        if (!v44)
        {
          goto LABEL_181;
        }
      }

LABEL_142:
      if (result != v44)
      {
        v56 = v60;
        goto LABEL_145;
      }

      sub_F9064(v88, v27);
      sub_F9064(v20, v19);
      v3 = a1;
    }

    if (v28 == 2)
    {
      v85 = v2;
      v88 = v26;
      v45 = *(v26 + 16);
      sub_F90CC(v26, v27);
      v46 = sub_1409AC();
      if (v46)
      {
        v47 = v46;
        v48 = sub_1409CC();
        if (__OFSUB__(v45, v48))
        {
          goto LABEL_161;
        }

        v81 = (v45 - v48 + v47);
      }

      else
      {
        v81 = 0;
      }

      sub_1409BC();
      v3 = a1;
      if (v29 == 2)
      {
        v71 = *(v20 + 16);
        v70 = *(v20 + 24);
        v44 = sub_1409AC();
        if (v44)
        {
          v72 = sub_1409CC();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_175;
          }

          v44 += v71 - v72;
        }

        v37 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        if (v37)
        {
          goto LABEL_170;
        }

        v74 = sub_1409BC();
        if (v74 >= v73)
        {
          v60 = v73;
        }

        else
        {
          v60 = v74;
        }

        v8 = v90;
        result = v81;
        if (!v81)
        {
          goto LABEL_187;
        }

        v2 = v85;
        if (!v44)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v81;
          v2 = v85;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v90;
          if (!v81)
          {
            goto LABEL_185;
          }

LABEL_148:
          v57 = memcmp(result, __s1, BYTE6(v19));
          sub_F9064(v88, v27);
          sub_F9064(v20, v19);
          goto LABEL_149;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_167;
        }

        v44 = sub_1409AC();
        if (v44)
        {
          v58 = sub_1409CC();
          if (__OFSUB__(v20, v58))
          {
            goto LABEL_177;
          }

          v44 += v20 - v58;
        }

        v2 = v85;
        v59 = sub_1409BC();
        if (v59 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v59;
        }

        result = v81;
        if (!v81)
        {
          goto LABEL_189;
        }

        v8 = v90;
        if (!v44)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_142;
    }

    memset(__s1, 0, 14);
    if (v29 == 2)
    {
      v63 = *(v20 + 16);
      v83 = *(v20 + 24);
      v88 = v26;
      sub_F90CC(v26, v27);
      v64 = sub_1409AC();
      v87 = v2;
      if (v64)
      {
        v65 = sub_1409CC();
        if (__OFSUB__(v63, v65))
        {
          goto LABEL_173;
        }

        v64 += v63 - v65;
      }

      v66 = v83 - v63;
      if (__OFSUB__(v83, v63))
      {
        goto LABEL_165;
      }

      result = sub_1409BC();
      v8 = v90;
      if (!v64)
      {
        goto LABEL_192;
      }

LABEL_117:
      if (result >= v66)
      {
        v69 = v66;
      }

      else
      {
        v69 = result;
      }

      v57 = memcmp(__s1, v64, v69);
      sub_F9064(v88, v27);
      sub_F9064(v20, v19);
      v2 = v87;
      goto LABEL_146;
    }

    if (v29 == 1)
    {
      break;
    }

LABEL_79:
    __s2 = v20;
    v92 = v19;
    v93 = BYTE2(v19);
    v94 = BYTE3(v19);
    v95 = BYTE4(v19);
    v96 = BYTE5(v19);
    v57 = memcmp(__s1, &__s2, BYTE6(v19));
    sub_F9064(v20, v19);
    v8 = v90;
LABEL_149:
    result = 0;
    if (v57)
    {
      return result;
    }
  }

  v80 = ((v20 >> 32) - v20);
  if (v20 >> 32 < v20)
  {
    goto LABEL_163;
  }

  v88 = v26;
  sub_F90CC(v26, v27);
  v53 = sub_1409AC();
  if (v53)
  {
    v54 = v53;
    v55 = sub_1409CC();
    if (__OFSUB__(v20, v55))
    {
      goto LABEL_169;
    }

    v44 = (v20 - v55 + v54);
    result = sub_1409BC();
    v8 = v90;
    if (!v44)
    {
      goto LABEL_180;
    }

LABEL_75:
    if (result >= v80)
    {
      v56 = v80;
    }

    else
    {
      v56 = result;
    }

    result = __s1;
LABEL_145:
    v57 = memcmp(result, v44, v56);
    sub_F9064(v88, v27);
    sub_F9064(v20, v19);
LABEL_146:
    v3 = a1;
    goto LABEL_149;
  }

  sub_1409BC();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = sub_1409BC();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

void sub_F7710(unint64_t a1, char a2)
{
  if (a2)
  {
    return;
  }

  v4 = [v2 chapters];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
  v6 = sub_1449DC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C89B0, &qword_153E78);
  sub_F9120();
  if ((sub_144B8C() & 1) == 0)
  {

    return;
  }

  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_14531C())
  {
    v8 = a1;
    a1 = 0;
    v9 = *&v8;
    v10 = &selRef_metadataObject;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = sub_1451FC();
      }

      else
      {
        if (a1 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v11 = *(v6 + 8 * a1 + 32);
      }

      v12 = v11;
      v13 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      [v11 startTime];
      if (v14 > v9 || ([v12 startTime], v16 = v15, objc_msgSend(v12, v10[33]), v16 + v17 <= v9))
      {
      }

      else
      {
        sub_14522C();
        sub_14525C();
        sub_14526C();
        sub_14523C();
        v10 = &selRef_metadataObject;
      }

      ++a1;
      if (v13 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (sub_14531C())
    {
      goto LABEL_25;
    }

LABEL_30:

    return;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    sub_1451FC();
    goto LABEL_28;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v18 = _swiftEmptyArrayStorage[4];
LABEL_28:

    return;
  }

  __break(1u);
}

uint64_t sub_F79B0@<X0>(void *a1@<X8>)
{
  if (*v1)
  {
    v3 = *v1;
    if ((sub_1450AC() & 1) != 0 && [v3 shouldShowChapterArtwork])
    {
      v4 = [v3 artworkCatalog];

      if (v4)
      {
        *a1 = v4;
        v5 = enum case for NowPlayingArtwork.Data.catalog(_:);
        v6 = sub_140C4C();
        v13 = *(v6 - 8);
        (*(v13 + 104))(a1, v5, v6);
        v7 = *(v13 + 56);
        v8 = a1;
        v9 = 0;
        v10 = v6;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v11 = sub_140C4C();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a1;
  v9 = 1;
LABEL_8:

  return v7(v8, v9, 1, v10);
}

uint64_t sub_F7B20(uint64_t a1)
{
  if (*v1)
  {
    return sub_144C0C();
  }

  else
  {
    return 0;
  }
}

void sub_F7BA0(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v7 = *v2;
    a1();
  }

  else
  {
    v5 = sub_140C4C();
    v6 = *(*(v5 - 8) + 56);

    v6(a2, 1, 1, v5);
  }
}

unint64_t sub_F7C6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_14519C(*(v2 + 40));

  return sub_F8198(a1, v4);
}

unint64_t sub_F7CB0(uint64_t a1, uint64_t a2)
{
  sub_14545C();
  sub_14492C();
  v4 = sub_1454AC();

  return sub_F8260(a1, a2, v4);
}

unint64_t sub_F7D28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_144FEC(*(v2 + 40));

  return sub_F8318(a1, v4);
}

uint64_t sub_F7D6C(uint64_t a1)
{
  sub_14545C();
  sub_14546C(*(a1 + 16));
  v2 = sub_1454AC();

  return sub_F83EC(a1, v2);
}

unint64_t sub_F7DD8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_14545C();
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_141ADC();
  }

  sub_14546C(v8);
  sub_14546C([a1 hash]);
  v9 = sub_1454AC();

  return sub_F853C(a1, a2, a3, a4 & 1, v9);
}

unint64_t sub_F7E8C(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  sub_14545C();
  sub_55398(v2, v3, v4, v5);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  sub_14549C(*&v7);
  v8 = sub_1454AC();

  return sub_F860C(a1, v8);
}

unint64_t sub_F7F40(uint64_t a1)
{
  v1 = a1;
  sub_14545C();
  sub_14546C(v1);
  v2 = sub_1454AC();

  return sub_F86EC(v1, v2);
}

unint64_t sub_F7FAC(uint64_t a1)
{
  v2 = sub_14544C();

  return sub_F875C(a1, v2);
}

unint64_t sub_F7FF0(uint64_t a1, uint64_t a2)
{
  sub_140C2C();
  sub_F9184(&qword_1C89C0, &protocol conformance descriptor for IndexPath);
  v3 = sub_14481C();

  return sub_F87C8(a1, v3);
}

unint64_t sub_F8078(uint64_t a1)
{
  sub_1448DC();
  sub_14545C();
  sub_14492C();
  v2 = sub_1454AC();

  return sub_F8974(a1, v2);
}

unint64_t sub_F8108(uint64_t *a1)
{
  sub_14545C();
  if (a1[4])
  {
    sub_14492C();
  }

  sub_14492C();
  v2 = sub_1454AC();

  return sub_F8A78(a1, v2);
}

unint64_t sub_F8198(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_ED8DC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1451AC();
      sub_ED1E0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_F8260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1453BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_F8318(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2B860(0, &qword_1C89D0, UIViewController_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_144FFC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_F83EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v6 = ~v3;
  v7 = *(a1 + 16);
  while (1)
  {
    v8 = *(*(v2 + 48) + 8 * v4);
    if (*(v8 + 16) == v7)
    {
      break;
    }

LABEL_4:
    v4 = (v4 + 1) & v6;
    if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  if (!v7 || v8 == a1)
  {
    return v4;
  }

  v10 = 0;
  v11 = 0;
  while (v11 < *(v8 + 16))
  {
    if (v7 == v11)
    {
      goto LABEL_22;
    }

    if (*(v8 + v10 + 32) != *(a1 + v10 + 32))
    {
LABEL_3:

      goto LABEL_4;
    }

    if (*(v8 + v10 + 56))
    {
      if (!*(a1 + v10 + 56))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (*(a1 + v10 + 56))
      {
        goto LABEL_3;
      }

      result = sub_141AFC();
      if ((result & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    ++v11;
    v10 += 32;
    if (v7 == v11)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_F853C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = *(v5 + 48) + 32 * v7;
      if (*v11 == a1)
      {
        if (*(v11 + 24))
        {
          if (a4)
          {
            return v7;
          }
        }

        else if (a4 & 1) == 0 && (sub_141AFC())
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_F860C(CGFloat *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    do
    {
      v11 = (*(v2 + 48) + 40 * v4);
      x = v11[1].origin.x;
      v16.origin.x = v6;
      v16.origin.y = v7;
      v16.size.width = v8;
      v16.size.height = v9;
      v13 = CGRectEqualToRect(*v11, v16);
      if (x == v10 && v13)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_F86EC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_F875C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_F87C8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_140C2C();
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
      sub_F9184(&qword_1C89C8, &protocol conformance descriptor for IndexPath);
      v16 = sub_14486C();
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

unint64_t sub_F8974(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1448DC();
      v8 = v7;
      if (v6 == sub_1448DC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1453BC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_F8A78(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(v2 + 48);
    do
    {
      v9 = (v8 + 40 * v5);
      v10 = *v9;
      v11 = v9[1];
      if (v9[4])
      {
        if (a1[4])
        {
          v12 = v9[2];
          v13 = v9[3];
          v14 = a1[2];
          v15 = a1[3];
          v16 = v10 == *a1 && v11 == a1[1];
          if (v16 || (sub_1453BC() & 1) != 0)
          {
            if (v12 == v14 && v13 == v15)
            {
              return v5;
            }

LABEL_3:
            if (sub_1453BC())
            {
              return v5;
            }
          }
        }
      }

      else if ((a1[4] & 1) == 0)
      {
        if (v10 == *a1 && v11 == a1[1])
        {
          return v5;
        }

        goto LABEL_3;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_F8B9C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  if (v5)
  {
    if (v6)
    {
      v7 = [v5 isEqual:a3] ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = v6 != 0;
  }

  v8 = *a1;
  if (*a1 && (v9 = [*a1 artworkInfo]) != 0)
  {
    v10 = v9;
    v11 = sub_14480C();

    sub_F6A54(v11);
    v13 = v12;

    v14 = *a2;
    if (!*a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v14 = *a2;
    if (!*a2)
    {
      goto LABEL_15;
    }
  }

  v15 = [v14 artworkInfo];
  if (v15)
  {
    v16 = v15;
    v17 = sub_14480C();

    sub_F6A54(v17);
    v19 = v18;

    if (v13)
    {
      goto LABEL_16;
    }

LABEL_13:
    if (!v19)
    {
      v21 = 0;
      if (v8)
      {
        goto LABEL_21;
      }

LABEL_18:
      if (v14)
      {
        [v14 shouldShowChapterArtwork];
        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      goto LABEL_27;
    }

LABEL_20:

    v21 = 1;
    if (v8)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_15:
  v19 = 0;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = sub_F6D48(v13, v19);

  v21 = v20 ^ 1;
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_21:
  v23 = [v8 shouldShowChapterArtwork];
  if (v14)
  {
    v22 = [v14 shouldShowChapterArtwork] ^ v23 ^ 1;
  }

  else
  {
    v22 = 0;
  }

LABEL_27:
  v24 = *(a1 + 24);
  v25 = *(a2 + 24);
  if (v24 == 255)
  {
    if (v25 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v25 == 255)
    {
      return 0;
    }

    v26 = *(a1 + 8);
    v27 = *(a2 + 8);
    if (v24)
    {
      if ((v25 & 1) == 0 || v26 != v27)
      {
        return 0;
      }
    }

    else if ((v25 & 1) != 0 || (v26 != v27 || *(a1 + 16) != *(a2 + 16)) && (sub_1453BC() & 1) == 0)
    {
      return 0;
    }
  }

  if (!v8)
  {
    v30 = 0;
    if (v14)
    {
      goto LABEL_42;
    }

LABEL_49:
    v34 = 0;
    if (!v8)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  v28 = [v8 title];
  if (!v28)
  {
    v30 = 0;
    v8 = 0;
    if (v14)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  v29 = v28;
  v30 = sub_1448DC();
  v8 = v31;

  if (!v14)
  {
    goto LABEL_49;
  }

LABEL_42:
  v32 = [v14 title];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1448DC();
    v14 = v35;

    if (v8)
    {
      goto LABEL_44;
    }

LABEL_50:
    if (!v14)
    {
      goto LABEL_59;
    }

LABEL_51:

    return 0;
  }

  v34 = 0;
  v14 = 0;
  if (!v8)
  {
    goto LABEL_50;
  }

LABEL_44:
  if (!v14)
  {
    goto LABEL_51;
  }

  if (v30 == v34 && v8 == v14)
  {
  }

  else
  {
    v37 = sub_1453BC();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_59:
  v38 = *(a2 + 40);
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
      v38 = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  v39 = *(a1 + 56);
  v40 = *(a2 + 56);
  if (!v39)
  {
    if (!((v40 != 0) | (v7 | v21) & 1))
    {
      return v22;
    }

    return 0;
  }

  if (!v40)
  {
    return 0;
  }

  sub_2B860(0, &qword_1C8990, MPAVRoute_ptr);
  v41 = v40;
  v42 = v39;
  v43 = sub_144FFC();

  if (v7 & 1 | ((v43 & 1) == 0) | v21 & 1)
  {
    return 0;
  }

  return v22;
}

uint64_t sub_F8FB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C89A0, &qword_153E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_F9018(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_F9064(a3, a4);
  }
}

double sub_F9064(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_F90B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_F9064(a1, a2);
  }

  return result;
}

uint64_t sub_F90CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_F9120()
{
  result = qword_1C89B8;
  if (!qword_1C89B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C89B0, &qword_153E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89B8);
  }

  return result;
}

uint64_t sub_F9184(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_140C2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_F91C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F9210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_F9274()
{
  result = qword_1C89D8;
  if (!qword_1C89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89D8);
  }

  return result;
}

unint64_t sub_F92C8()
{
  result = qword_1C89E0;
  if (!qword_1C89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89E0);
  }

  return result;
}

BOOL sub_F9320(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if (*(v3 + OBJC_IVAR____TtC12NowPlayingUI35NowPlayingTransportControlStackView_useBoundsAsPointInside) == 1)
  {
    [v3 bounds];
    v16.x = a2;
    v16.y = a3;
    return CGRectContainsPoint(v17, v16);
  }

  else
  {
    v15.receiver = v3;
    v15.super_class = type metadata accessor for NowPlayingTransportControlStackView();
    if (objc_msgSendSuper2(&v15, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v8 = [v3 arrangedSubviews];
      sub_2B860(0, &qword_1C47C0, UIView_ptr);
      v9 = sub_1449DC();

      if (v9 >> 62)
      {
LABEL_19:
        v10 = sub_14531C();
      }

      else
      {
        v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      }

      for (i = 0; v10 != i; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = sub_1451FC();
        }

        else
        {
          if (i >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v12 = *(v9 + 8 * i + 32);
        }

        v13 = v12;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v12 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v14 = [v13 pointInside:a1 withEvent:?];

        if (v14)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

void sub_F9668(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView] = 0;
  *&v5[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4046000000000000;
  *&v5[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightColor] = 0;
  *&v5[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_glyphColor] = 0;
  v54.receiver = v5;
  v54.super_class = type metadata accessor for NowPlayingTransportButton();
  v10 = objc_msgSendSuper2(&v54, "initWithFrame:", a2, a3, a4, a5);
  v11 = objc_allocWithZone(UIView);
  v12 = v10;
  v13 = [v11 init];
  v14 = OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView;
  v15 = *&v12[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView];
  *&v12[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView] = v13;
  v16 = v13;

  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = *&v12[v14];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 blackColor];
  [v19 setBackgroundColor:v20];

  v21 = *&v12[v14];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v21 setAlpha:0.0];
  v22 = *&v12[v14];
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  CGAffineTransformMakeScale(&v53, 1.4, 1.4);
  [v22 setTransform:&v53];
  v23 = *&v12[v14];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v12;
  [v24 insertSubview:v23 atIndex:0];
  v25 = *&v12[v14];
  if (!v25)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = [v25 widthAnchor];
  v27 = [v26 constraintEqualToConstant:44.0];

  v28 = OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint;
  v29 = *&v24[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  *&v24[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint] = v27;

  v30 = [v24 imageView];
  v31 = v24;
  if (v30)
  {

    v31 = v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880, &unk_14F180);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_14D1C0;
  v33 = *&v24[v28];
  if (!v33)
  {
    goto LABEL_23;
  }

  v34 = v32;
  *(v32 + 32) = v33;
  v35 = *&v12[v14];
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v33;
  v37 = [v35 heightAnchor];
  v38 = *&v12[v14];
  if (!v38)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = [v38 widthAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];

  v34[5] = v40;
  v41 = *&v12[v14];
  if (!v41)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v42 = [v41 centerXAnchor];
  v43 = [v31 centerXAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  v34[6] = v44;
  v45 = *&v12[v14];
  if (!v45)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v46 = objc_opt_self();
  v47 = [v45 centerYAnchor];
  v48 = [v31 centerYAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  v34[7] = v49;
  sub_2B860(0, &qword_1C8190, NSLayoutConstraint_ptr);
  isa = sub_1449CC().super.isa;

  [v46 activateConstraints:isa];

  v51 = [v24 imageView];
  if (v51)
  {
    [v51 setContentMode:4];
  }

  v52 = [v24 traitCollection];
}

void sub_F9C80()
{
  v1 = [v0 isHighlighted];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  if (v1)
  {
    v13 = sub_FA4F8;
    v14 = v3;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v4 = &block_descriptor_31_0;
  }

  else
  {
    v13 = sub_FA4D0;
    v14 = v3;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_11D5C0;
    v12 = &block_descriptor_17;
    v5 = _Block_copy(&v9);
    v0 = v0;

    [v2 animateWithDuration:2 delay:v5 options:0 animations:0.47 completion:0.0];
    _Block_release(v5);
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v13 = sub_FA4F0;
    v14 = v6;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v4 = &block_descriptor_25;
  }

  v11 = sub_11D5C0;
  v12 = v4;
  v7 = _Block_copy(&v9);
  v8 = v0;

  [v2 animateWithDuration:2 delay:v7 options:0 animations:0.2 completion:{0.0, v9, v10}];
  _Block_release(v7);
}

id sub_F9EE0(char *a1)
{
  v2 = [a1 imageView];
  if (v2)
  {
    v3 = v2;
    CGAffineTransformMakeScale(&v7, 0.8, 0.8);
    [v3 setTransform:&v7];
  }

  v4 = OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView;
  result = *&a1[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView];
  if (result)
  {
    result = [result setAlpha:0.1];
    v6 = *&a1[v4];
    if (v6)
    {
      CGAffineTransformMakeScale(&v7, 1.2, 1.2);
      return [v6 setTransform:&v7];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_F9FD4(char *a1)
{
  v2 = [a1 imageView];
  if (v2)
  {
    v5[0] = 0x3FF0000000000000;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = 0x3FF0000000000000;
    v5[4] = 0;
    v5[5] = 0;
    v3 = v2;
    [v2 setTransform:v5];
  }

  result = *&a1[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView];
  if (result)
  {
    return [result setAlpha:0.0];
  }

  __break(1u);
  return result;
}

char *sub_FA060(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView];
  if (v1)
  {
    CGAffineTransformMakeScale(&v2, 1.4, 1.4);
    return [v1 setTransform:&v2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_FA0E0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for NowPlayingTransportButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_FA268(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for NowPlayingTransportButton();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView;
  v3 = *&v1[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = [v3 layer];
  v5 = *&v1[v2];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v5 bounds];
  [v4 setCornerRadius:CGRectGetWidth(v9) * 0.5];

  v6 = [v1 imageView];
  if (v6)
  {
    v7 = v6;
    [v1 bounds];
    [v1 contentRectForBounds:?];
    [v1 imageRectForContentRect:?];
    [v7 setUntransformedFrame:?];
  }
}

id sub_FA3D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_FA498()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_FA58C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_142FFC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_1D19C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_144C4C();
    v19 = sub_1435DC();
    sub_1423BC();

    sub_142FEC();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_FA7B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = v5;
  v21 = a5;
  v11 = sub_142FFC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  sub_1D19C(v10, &v20 - v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10358(v17, v21, a3, a4);
  }

  sub_144C4C();
  v19 = sub_1435DC();
  sub_1423BC();

  sub_142FEC();
  swift_getAtKeyPath();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_FAA04(uint64_t a1, char a2)
{
  v4 = sub_142FFC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_144C4C();
    v8 = sub_1435DC();
    sub_1423BC();

    sub_142FEC();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_FAB6C@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C10C0, &qword_14ACF8);
  __chkstk_darwin(v79);
  v78 = v64 - v2;
  v75 = type metadata accessor for NowPlayingBannerView(0);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = v3;
  v77 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1444DC();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8CF8, &qword_1540E8);
  __chkstk_darwin(v76);
  v81 = v64 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D00, &qword_1540F0);
  __chkstk_darwin(v90);
  v80 = v64 - v6;
  v7 = sub_1442EC();
  v87 = *(v7 - 8);
  v88 = v7;
  v8 = *(v87 + 64);
  __chkstk_darwin(v7);
  v69 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D08, &qword_1540F8);
  __chkstk_darwin(v11);
  v13 = v64 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D10, &qword_154100);
  __chkstk_darwin(v84);
  v85 = v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D18, &qword_154108);
  __chkstk_darwin(v15);
  v89 = v64 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D20, &unk_154110);
  __chkstk_darwin(v83);
  v67 = v64 - v17;
  v68 = sub_14236C();
  v66 = *(v68 - 1);
  __chkstk_darwin(v68);
  v65 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v19 - 8);
  v21 = v64 - v20;
  v82 = v1;
  v22 = *v1;
  swift_getKeyPath();
  *&v92 = v22;
  sub_FC790(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel, &unk_154078);
  sub_141A4C();

  v23 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  sub_1D19C(v22 + v23, v21, &qword_1C41C8, &qword_14EAF0);
  v24 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  if ((*(*(v24 - 8) + 48))(v21, 1, v24) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_FC648();
    return sub_14329C();
  }

  else
  {
    v64[1] = v15;
    v64[2] = v11;
    v64[0] = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v87;
      v68 = *(v87 + 32);
      v27 = v86;
      v28 = v88;
      v68(v86, v21, v88);
      v29 = v26;
      v30 = *(v26 + 16);
      v31 = v69;
      v30(v69, v27, v28);
      (*(v71 + 104))(v70, enum case for ReferenceLinkViewStyle.player(_:), v72);
      sub_14443C();
      v32 = v77;
      sub_FEDF4(v82, v77, type metadata accessor for NowPlayingBannerView);
      v33 = v27;
      v34 = v28;
      v30(v31, v33, v28);
      v35 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v36 = (v35 + v74 + *(v29 + 80)) & ~*(v29 + 80);
      v37 = swift_allocObject();
      sub_FF260(v32, v37 + v35, type metadata accessor for NowPlayingBannerView);
      v68((v37 + v36), v31, v34);
      v38 = v81;
      sub_14444C();
      v39 = v82;
      v40 = v78;
      sub_FA7B0(&qword_1C0F48, &qword_14AC30, &unk_1C10C0, &qword_14ACF8, v78);
      sub_FEDF4(v39, v32, type metadata accessor for NowPlayingBannerView);
      v41 = swift_allocObject();
      sub_FF260(v32, v41 + v35, type metadata accessor for NowPlayingBannerView);
      sub_FC958();
      sub_FCA44();
      v42 = v80;
      sub_143B6C();

      sub_15340(v40, &unk_1C10C0, &qword_14ACF8);
      sub_15340(v38, &qword_1C8CF8, &qword_1540E8);
      v43 = sub_14361C();
      sub_14290C();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D48, &qword_154148) + 36);
      *v52 = v43;
      *(v52 + 8) = v45;
      *(v52 + 16) = v47;
      *(v52 + 24) = v49;
      *(v52 + 32) = v51;
      *(v52 + 40) = 0;
      sub_143EAC();
      sub_142A9C();
      v53 = (v42 + *(v90 + 36));
      v54 = v93;
      *v53 = v92;
      v53[1] = v54;
      v53[2] = v94;
      sub_1D19C(v42, v85, &qword_1C8D00, &qword_1540F0);
      swift_storeEnumTagMultiPayload();
      sub_FC6D4();
      sub_FC7D8();
      v55 = v89;
      sub_14329C();
      sub_1D19C(v55, v64[0], &qword_1C8D18, &qword_154108);
      swift_storeEnumTagMultiPayload();
      sub_FC648();
      sub_14329C();
      sub_15340(v55, &qword_1C8D18, &qword_154108);
      sub_15340(v42, &qword_1C8D00, &qword_1540F0);
      return (*(v87 + 8))(v86, v88);
    }

    else
    {
      v56 = v66;
      v57 = v65;
      v58 = v68;
      (*(v66 + 32))(v65, v21, v68);
      v59 = v67;
      (*(v56 + 16))(v67, v57, v58);
      v60 = v59 + *(type metadata accessor for NowPlayingEpisodeUpsellBannerWrapper(0) + 20);
      *v60 = swift_getKeyPath();
      *(v60 + 8) = 0;
      sub_143EAC();
      sub_142A9C();
      v61 = (v59 + *(v83 + 36));
      v62 = v93;
      *v61 = v92;
      v61[1] = v62;
      v61[2] = v94;
      sub_1D19C(v59, v85, &qword_1C8D20, &unk_154110);
      swift_storeEnumTagMultiPayload();
      sub_FC6D4();
      sub_FC7D8();
      v63 = v89;
      sub_14329C();
      sub_1D19C(v63, v64[0], &qword_1C8D18, &qword_154108);
      swift_storeEnumTagMultiPayload();
      sub_FC648();
      sub_14329C();
      sub_15340(v63, &qword_1C8D18, &qword_154108);
      sub_15340(v59, &qword_1C8D20, &unk_154110);
      return (*(v56 + 8))(v57, v58);
    }
  }
}

uint64_t sub_FB858(uint64_t a1)
{
  sub_1442DC();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1446BC();
  __swift_destroy_boxed_opaque_existential_0(v3);
  sub_ED8DC(v4, v2);
  swift_beginAccess();
  sub_FD34C(v3, v2);
  sub_ED1E0(v3);
  swift_endAccess();
  sub_E91C8();
  return sub_ED1E0(v4);
}

uint64_t sub_FB914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C10C0, &qword_14ACF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  type metadata accessor for NowPlayingBannerView(0);
  sub_FA7B0(&qword_1C0F48, &qword_14AC30, &unk_1C10C0, &qword_14ACF8, v7);
  v9 = *(v8 + 48);
  sub_1D19C(v7, v4, &unk_1C10C0, &qword_14ACF8);
  v10 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_layout;
  swift_beginAccess();
  sub_FF1F8(v4, v9 + v10, &unk_1C10C0, &qword_14ACF8);
  swift_endAccess();
  sub_EBF94();
  sub_15340(v4, &unk_1C10C0, &qword_14ACF8);
  return sub_15340(v7, &unk_1C10C0, &qword_14ACF8);
}

uint64_t sub_FBA78@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_FC790(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel, &unk_154078);
  sub_141A4C();

  v3 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  return sub_1D19C(v5 + v3, a1, &qword_1C41C8, &qword_14EAF0);
}

uint64_t sub_FBB50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_FC790(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel, &unk_154078);
  sub_141A4C();

  v4 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  return sub_1D19C(v3 + v4, a2, &qword_1C41C8, &qword_14EAF0);
}

uint64_t sub_FBC28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1D19C(a1, &v6 - v3, &qword_1C41C8, &qword_14EAF0);
  return sub_FBCD4(v4);
}

uint64_t sub_FBCD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  sub_1D19C(v1 + v6, v5, &qword_1C41C8, &qword_14EAF0);
  v7 = sub_FEEB8(v5, a1);
  sub_15340(v5, &qword_1C41C8, &qword_14EAF0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_FC790(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel, &unk_154078);
    sub_141A3C();
  }

  else
  {
    sub_1D19C(a1, v5, &qword_1C41C8, &qword_14EAF0);
    swift_beginAccess();
    sub_FF16C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_15340(a1, &qword_1C41C8, &qword_14EAF0);
}

uint64_t sub_FBEDC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  sub_FF1F8(a2, a1 + v4, &qword_1C41C8, &qword_14EAF0);
  return swift_endAccess();
}

uint64_t sub_FBF58()
{
  sub_15340(v0 + OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel, &qword_1C41C8, &qword_14EAF0);
  v1 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel___observationRegistrar;
  v2 = sub_141A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_FC03C(uint64_t a1)
{
  sub_FC5C0(319, &unk_1C8AB8, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_141A8C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_FC1A8(uint64_t a1)
{
  result = sub_14236C();
  if (v2 <= 0x3F)
  {
    result = sub_1442EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_FC230(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1038, &qword_14ACE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8C50, qword_154010);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_FC380(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1038, &qword_14ACE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8C50, qword_154010);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_FC4DC(uint64_t a1)
{
  type metadata accessor for NowPlayingBannerView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NowPlayingBannerController();
    if (v2 <= 0x3F)
    {
      sub_1C1C8(319);
      if (v3 <= 0x3F)
      {
        sub_FC5C0(319, &unk_1C8CC0, &type metadata accessor for DeviceMetrics.Padding, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_FC5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_FC648()
{
  result = qword_1C8D28;
  if (!qword_1C8D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8D18, &qword_154108);
    sub_FC6D4();
    sub_FC7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D28);
  }

  return result;
}

unint64_t sub_FC6D4()
{
  result = qword_1C8D30;
  if (!qword_1C8D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8D20, &unk_154110);
    sub_FC790(&qword_1C46B0, type metadata accessor for NowPlayingEpisodeUpsellBannerWrapper, &unk_14EFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D30);
  }

  return result;
}

uint64_t sub_FC790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_FC7D8()
{
  result = qword_1C8D38;
  if (!qword_1C8D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8D00, &qword_1540F0);
    sub_FC864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D38);
  }

  return result;
}

unint64_t sub_FC864()
{
  result = qword_1C8D40;
  if (!qword_1C8D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8D48, &qword_154148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8CF8, &qword_1540E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C10C0, &qword_14ACF8);
    sub_FC958();
    sub_FCA44();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D40);
  }

  return result;
}

unint64_t sub_FC958()
{
  result = qword_1C8D50;
  if (!qword_1C8D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8CF8, &qword_1540E8);
    sub_FC790(&qword_1C8D58, &type metadata accessor for AnyReferenceLinkView, &protocol conformance descriptor for AnyReferenceLinkView);
    sub_FC790(&qword_1C8D60, &type metadata accessor for LinkClearSwipeAction, &protocol conformance descriptor for LinkClearSwipeAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D50);
  }

  return result;
}

unint64_t sub_FCA44()
{
  result = qword_1C8D68;
  if (!qword_1C8D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C10C0, &qword_14ACF8);
    sub_FC790(&qword_1C1CA0, &type metadata accessor for DeviceMetrics.Layout, &protocol conformance descriptor for DeviceMetrics.Layout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D68);
  }

  return result;
}

uint64_t sub_FCAF8()
{
  v1 = type metadata accessor for NowPlayingBannerView(0);
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v3 = sub_1442EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v14 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48, &qword_14AC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1411CC();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  v10 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C0, &qword_14EAE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1411EC();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  v12 = (((v2 + 16) & ~v2) + v15 + v5) & ~v5;
  (*(v4 + 8))(v0 + v12, v3);

  return _swift_deallocObject(v0, v12 + v14, v2 | v5 | 7);
}

uint64_t sub_FCD88()
{
  v1 = *(type metadata accessor for NowPlayingBannerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1442EC();

  return sub_FB858(v0 + v2);
}

uint64_t sub_FCE54()
{
  v1 = type metadata accessor for NowPlayingBannerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48, &qword_14AC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1411CC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C0, &qword_14EAE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1411EC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_FD04C()
{
  v1 = *(type metadata accessor for NowPlayingBannerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_FB914(v2);
}

uint64_t sub_FD0AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_142F8C();
  *a1 = result;
  return result;
}

uint64_t sub_FD104(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_14545C();
  sub_14492C();
  v8 = sub_1454AC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1453BC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_FDB90(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_FD254(float *a1, float a2)
{
  v5 = *v2;
  v6 = sub_14543C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 4 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 4 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_FDD10(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_FD34C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_14519C(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_ED8DC(*(v6 + 48) + 40 * v9, v16);
      v11 = sub_1451AC();
      sub_ED1E0(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_ED1E0(a2);
    sub_ED8DC(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_ED8DC(a2, v16);
    v15 = *v3;
    sub_FDE40(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

void sub_FD498(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D80, &unk_154198);
  v4 = sub_1451CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_14545C();
      sub_14492C();
      v21 = sub_1454AC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_FD6F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D98, qword_1541B8);
  v4 = sub_1451CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      v18 = sub_14543C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_FD930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D70, &qword_154180);
  v4 = sub_1451CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v19 = sub_14519C(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_FDB90(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_FD498(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_FDFB8();
      goto LABEL_16;
    }

    sub_FE3CC(v8 + 1);
  }

  v10 = *v4;
  sub_14545C();
  sub_14492C();
  v11 = sub_1454AC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1453BC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1453DC();
  __break(1u);
}

unint64_t sub_FDD10(unint64_t result, char a2, float a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_FD6F8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_FE114();
      result = v7;
      goto LABEL_12;
    }

    sub_FE604(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_14543C();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 4 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1453DC();
  __break(1u);
  return result;
}

void sub_FDE40(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_FD930(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_FE254();
      goto LABEL_12;
    }

    sub_FE808(v7 + 1);
  }

  v9 = *v3;
  v10 = sub_14519C(*(*v3 + 40));
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_ED8DC(*(v9 + 48) + 40 * a2, v20);
      v13 = sub_1451AC();
      sub_ED1E0(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1453DC();
  __break(1u);
}

void sub_FDFB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D80, &unk_154198);
  v2 = *v0;
  v3 = sub_1451BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_FE114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D98, qword_1541B8);
  v2 = *v0;
  v3 = sub_1451BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_FE254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D70, &qword_154180);
  v2 = *v0;
  v3 = sub_1451BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        sub_ED8DC(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_FE3CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D80, &unk_154198);
  v4 = sub_1451CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_14545C();

      sub_14492C();
      v20 = sub_1454AC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_FE604(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D98, qword_1541B8);
  v4 = sub_1451CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = sub_14543C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}