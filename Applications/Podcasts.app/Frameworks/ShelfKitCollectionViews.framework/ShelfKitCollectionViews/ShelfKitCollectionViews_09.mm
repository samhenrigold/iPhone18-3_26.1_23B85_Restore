void sub_FD198(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8, &qword_31F3D0);
  __chkstk_darwin(v3 - 8);
  v25 = &v24 - v4;
  v5 = sub_303398();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_3031C8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView);
  if (!v18)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  sub_EB910(a1, 0);
  sub_EBC58();
  sub_EBD88();
  sub_EBE88(a1);
  sub_309A78();
  if (swift_dynamicCastClass())
  {

    sub_EC2B0();
  }

  else
  {
    sub_307D98();
    if ((sub_303D78() & 1) == 0)
    {
      v20 = sub_307D98();
      sub_EC3D8(v20);
    }
  }

  EpisodeInfoView.beginUpdates()();

  if (!*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsPresenter))
  {
    goto LABEL_12;
  }

  sub_E7674(a1);

  sub_307DA8();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_EB68(v10, &unk_402FF0, &unk_31EF40);
    return;
  }

  sub_6D85C(v10, v17);
  v21 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView);
  if (v21)
  {
    sub_FE64C(v17, v14, &type metadata accessor for ArtworkModel);
    v22 = sub_303DF8();
    (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v23 = v21;
    sub_303348();
    sub_21C4B8(v7);

    (*(v26 + 8))(v7, v27);
    sub_FE6B4(v17, &type metadata accessor for ArtworkModel);
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_FD644(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MultiShowEpisodeCell(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for MultiShowEpisodeCell(uint64_t a1)
{
  result = qword_402E68;
  if (!qword_402E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FD7AC(uint64_t a1)
{
  sub_FD86C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_FD86C(uint64_t a1)
{
  if (!qword_402E78)
  {
    sub_307048();
    v1 = sub_30D3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_402E78);
    }
  }
}

id sub_FD8DC(uint64_t a1, uint64_t a2, void *a3)
{
  result = *(a1 + *a3);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_FD8F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_302AB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0, &unk_321440);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  if (sub_FC4F4())
  {

    return sub_307198();
  }

  else
  {
    v32 = a2;
    v33 = v7;
    v34 = v6;
    v35 = a3;
    v22 = sub_307048();
    v23 = *(v22 - 8);
    v24 = *(v23 + 16);
    v30 = v23 + 16;
    v31 = v24;
    v24(v20, a1, v22);
    v29 = *(v23 + 56);
    v29(v20, 0, 1, v22);
    sub_FE22C(v20, v17);
    v28 = *(v23 + 48);
    if (v28(v17, 1, v22) == 1)
    {
      sub_EB68(v20, &qword_402EA0, &unk_321440);
      sub_EB68(v17, &qword_402EA0, &unk_321440);
    }

    else
    {
      sub_FA6B0();
      sub_EB68(v20, &qword_402EA0, &unk_321440);
      (*(v23 + 8))(v17, v22);
    }

    v31(v14, a1, v22);
    v29(v14, 0, 1, v22);
    sub_FE22C(v14, v11);
    if (v28(v11, 1, v22) == 1)
    {
      sub_EB68(v14, &qword_402EA0, &unk_321440);
      sub_EB68(v11, &qword_402EA0, &unk_321440);
    }

    else
    {
      sub_FA6B0();
      sub_EB68(v14, &qword_402EA0, &unk_321440);
      (*(v23 + 8))(v11, v22);
    }

    v25 = v34;
    v37 = 1;
    _s23ShelfKitCollectionViews15EpisodeInfoViewC15estimatedHeight3for05traitC012CoreGraphics7CGFloatVAA0efG5StyleO_So07UITraitC0CtFZ_0(&v37, v32);
    v26 = v36;
    sub_3028B8();
    v27 = sub_302A08();
    (*(v33 + 8))(v26, v25);
    [v27 size];

    return sub_307198();
  }
}

uint64_t sub_FDE3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return TypedShelfUIKitCell.apply(model:)(a1, a2, WitnessTable);
}

double sub_FDEC8@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_FE3C0(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

id sub_FDF44()
{
  result = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_FDF70()
{
  v0 = sub_303DF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3030E8();
  if ((*(v1 + 88))(v3, v0) == enum case for CropCode.boundingBox(_:))
  {
    return 6;
  }

  sub_3030C8();
  v5 = sub_303118();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_FE1E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_FE22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0, &unk_321440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_FE29C()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_objectGraph) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_presentation;
  v2 = sub_307048();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_layoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView) = 0;
  v3 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_imageProvider;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playStateSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_displayScale) = 0x3FF0000000000000;
  sub_30D648();
  __break(1u);
}

void sub_FE3C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0, &unk_321440);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  if (sub_FC4F4())
  {
    v10 = 0uLL;
    v11 = -1;
    v12 = 0uLL;
  }

  else
  {
    v13 = sub_307048();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v9, a1, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    sub_FE22C(v9, v6);
    if ((*(v14 + 48))(v6, 1, v13) == 1)
    {
      sub_EB68(v9, &qword_402EA0, &unk_321440);
      sub_EB68(v6, &qword_402EA0, &unk_321440);
    }

    else
    {
      sub_FA6B0();
      sub_EB68(v9, &qword_402EA0, &unk_321440);
      (*(v14 + 8))(v6, v13);
    }

    sub_30C6E8();
    *(&v10 + 1) = v15;
    *(&v12 + 1) = v16;
    v11 = 1;
  }

  *a2 = v10;
  *(a2 + 16) = v12;
  *(a2 + 32) = v11;
}

uint64_t sub_FE5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0, &unk_321440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_FE64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_FE6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_FE714()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_FE754()
{
  result = qword_402470;
  if (!qword_402470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403010, &unk_3200D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402470);
  }

  return result;
}

double block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_FE7E8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton);
  }

  else
  {
    v4 = sub_FE848();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_FE848()
{
  v0 = [objc_opt_self() buttonWithType:1];
  sub_124C4(0, &qword_3FFD48, UIColor_ptr);
  v1 = v0;
  v2 = sub_30D038();
  if (!v2)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
  }

  v3 = v2;
  v4 = sub_30D038();
  if (!v4)
  {
    v4 = [objc_opt_self() systemBackgroundColor];
  }

  v5 = v4;
  v6 = sub_30CFB8();

  [v1 setBackgroundColor:v6];
  [v1 setFrame:{0.0, 0.0, 200.0, 200.0}];
  [v1 _setCornerRadius:17.0];

  return v1;
}

void sub_FEA8C(uint64_t a1, objc_class *a2)
{
  sub_FC828(a1, a2);

  sub_FF11C();
}

void sub_FEAB4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF760, &qword_31D340);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  sub_FD198(a1);
  sub_309A78();
  if (swift_dynamicCastClass())
  {

    sub_309478();
    v7 = sub_303AD8();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_8AC08(v6);
    }

    else if ((*(v8 + 88))(v6, v7) == enum case for EpisodeListenNowReason.prototypedUpNextScore(_:))
    {
      (*(v8 + 96))(v6, v7);
      v9 = sub_309A58();
      v10 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell_podcastUuid);
      *v10 = v9;
      v10[1] = v11;

      v12 = sub_FE7E8();
      sub_30C4B8();
      v13 = sub_30C098();

      [v12 setTitle:v13 forState:0];

      v14 = [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton) titleLabel];
      if (v14)
      {
        v15 = v14;
        v16 = [objc_opt_self() systemFontOfSize:10.0];
        [v15 setFont:v16];
      }
    }

    else
    {

      (*(v8 + 8))(v6, v7);
    }
  }
}

void sub_FED44()
{
  v1 = v0;
  v2 = sub_3022E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell_podcastUuid];
  v7 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell_podcastUuid + 8];
  if (v7)
  {
    v8 = *v6;

    sub_19DBA8(v8, v7);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v27[4] = &type metadata for PrototypeUpNextSingleShowController;
    v27[5] = &off_3BD3B0;
    v17 = swift_allocObject();
    v27[1] = v17;
    *(v17 + 16) = v10;
    *(v17 + 24) = v12;
    *(v17 + 32) = v14 & 1;
    *(v17 + 40) = v16;
    v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402F08, &qword_3214E8));
    v19 = v16;

    v20 = sub_305C58();
    [v20 setModalPresentationStyle:2];
    v21 = [v20 popoverPresentationController];
    if (v21)
    {
      v22 = v21;
      v23 = sub_FE7E8();
      [v22 setSourceItem:v23];
    }

    v24 = sub_30CE68();
    if (v24)
    {
      v25 = v24;
      v26 = v1;
      sub_302298();
      sub_3022C8();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }
}

double sub_FEFE8()
{

  return result;
}

uint64_t type metadata accessor for PrototypeUpNextMultiShowEpisodeCell(uint64_t a1)
{
  result = qword_402EF8;
  if (!qword_402EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FF11C()
{
  v1 = sub_FE7E8();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_31FDA0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton;
  v4 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton] trailingAnchor];
  v5 = [v0 contentView];
  v6 = [v5 trailingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:-7.0];
  *(v2 + 32) = v7;
  v8 = [*&v0[v3] topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
  *(v2 + 40) = v11;
  v12 = [*&v0[v3] heightAnchor];
  v13 = [v12 constraintEqualToConstant:35.0];

  *(v2 + 48) = v13;
  v14 = [*&v0[v3] widthAnchor];
  v15 = [v14 constraintEqualToConstant:35.0];

  *(v2 + 56) = v15;
  v16 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView];
  if (v16)
  {
    v17 = objc_opt_self();
    v18 = [v16 trailingAnchor];
    v19 = [*&v0[v3] leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v2 + 64) = v20;
    sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
    isa = sub_30C358().super.isa;

    [v17 activateConstraints:isa];

    v22 = *&v0[v3];

    [v22 addTarget:v0 action:"buttonPressed" forControlEvents:0x2000];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_FF430()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_FF470()
{
  v0 = type metadata accessor for PlayControlsIconsSet(0);
  __swift_allocate_value_buffer(v0, qword_402F10);
  v1 = __swift_project_value_buffer(v0, qword_402F10);
  if (qword_3FAA20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_429128);
  return sub_FE64C(v2, v1, type metadata accessor for PlayControlsIconsSet);
}

double sub_FF514()
{
  result = -6.0;
  xmmword_402F28 = xmmword_3214F0;
  *&qword_402F38 = vdupq_n_s64(0xC044000000000000);
  return result;
}

id sub_FF534(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsPresenter] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playStateSubscription] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork] = 0;
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playAction];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_displayScale] = 0x3FF0000000000000;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 layoutMargins];
  [v12 setLayoutMargins:20.0];

  v13 = [v11 contentView];
  [v13 layoutMargins];
  [v13 setLayoutMargins:?];

  return v11;
}

void sub_FF724(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PlayControlsIconsSet(0);
  __chkstk_darwin(v3);
  v5 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView;
  if (!*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView) || !*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView) || !*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView))
  {
    v7 = [objc_allocWithZone(type metadata accessor for CachingArtworkView(0)) init];
    v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView;
    v9 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView);
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView) = v7;
    v10 = v7;

    if (v10)
    {
      v11 = v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
      v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
      v42[0] = v11;
      sub_2DE78(v42);

      v12 = *(v2 + v8);
      if (v12)
      {
        v13 = qword_3FAF28;
        v14 = v12;
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = qword_42AC88;
        v16 = qword_42ACA0;
        v17 = &v14[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
        v18 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
        v19 = *algn_42AC90;
        *v17 = qword_42AC88;
        *(v17 + 8) = v19;
        *(v17 + 3) = v16;
        v20 = v15;

        sub_2D294();
        if (qword_3FAA78 != -1)
        {
          swift_once();
        }

        v21 = __swift_project_value_buffer(v3, qword_402F10);
        sub_FE64C(v21, v5, type metadata accessor for PlayControlsIconsSet);
        type metadata accessor for PlayControlsPresenter(0);
        v22 = swift_allocObject();
        *(v22 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v22 + 40) = 0;
        *(v22 + 48) = 0;
        sub_FE64C(v5, v22 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsPresenter_iconsSet, type metadata accessor for PlayControlsIconsSet);
        type metadata accessor for EpisodeStateControlsPresenter();
        swift_allocObject();

        v24 = sub_E53F8(v23);

        sub_FE6B4(v5, type metadata accessor for PlayControlsIconsSet);
        *(v22 + 32) = v24;
        *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsPresenter) = v22;

        if (qword_3FAA80 != -1)
        {
          swift_once();
        }

        v25 = xmmword_402F28;
        v26 = *&qword_402F38;
        v27 = unk_402F40;
        v28 = objc_allocWithZone(type metadata accessor for PlayControlsStackView());
        v29 = sub_E7744(v22, *&v25, *(&v25 + 1), v26, v27);
        v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView;
        v31 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView);
        *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView) = v29;

        v42[0] = 0;
        v32 = objc_allocWithZone(type metadata accessor for EpisodeInfoView());
        v33 = sub_E961C(v42, &_swiftEmptySetSingleton);
        v34 = *(v2 + v6);
        *(v2 + v6) = v33;

        v35 = *(v2 + v6);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playStatePublisher;
          swift_beginAccess();
          v41 = *(v35 + v36);
          swift_allocObject();
          swift_unknownObjectWeakInit();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403010, &unk_3200D0);
          sub_FE754();
          v37 = sub_304F58();

          *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playStateSubscription) = v37;

          v38 = *(v2 + v8);
          if (v38)
          {
            [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
            v39 = *(v2 + v6);
            if (v39)
            {
              [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
              v40 = *(v2 + v30);
              if (v40)
              {
                [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
                return;
              }

LABEL_23:
              __break(1u);
              return;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_FFBB8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_FE7B8;
  *(v4 + 24) = a2;
  v6[4] = sub_293C0;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_19D688;
  v6[3] = &block_descriptor_24;
  v5 = _Block_copy(v6);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_FFD04()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v3 = v0;
  [v2 removeFromSuperview];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView;
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView];
  if (!v5)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v5 removeFromSuperview];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView;
  v7 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView];
  if (!v7)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v7 removeFromSuperview];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide;
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide])
  {
    [v0 removeLayoutGuide:?];
    v9 = *&v0[v8];
    *&v0[v8] = 0;
  }

  v10 = [v0 contentView];
  if (!*&v0[v1])
  {
    goto LABEL_32;
  }

  v11 = v10;
  [v10 addSubview:?];

  v12 = [v3 contentView];
  if (!*&v3[v4])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = v12;
  [v12 addSubview:?];

  v14 = [v3 contentView];
  if (!*&v3[v6])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = v14;
  [v14 addSubview:?];

  v16 = [objc_allocWithZone(UILayoutGuide) init];
  v17 = [v3 contentView];
  [v17 addLayoutGuide:v16];

  v18 = *&v3[v8];
  *&v3[v8] = v16;
  v19 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_320DE0;
  v21 = [v19 topAnchor];
  v22 = [v3 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 topAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];

  *(v20 + 32) = v25;
  v26 = [v19 bottomAnchor];
  v27 = *&v3[v1];
  if (!v27)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintGreaterThanOrEqualToAnchor:v28];

  *(v20 + 40) = v29;
  v30 = [v19 bottomAnchor];
  v31 = *&v3[v1];
  if (!v31)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = [v31 bottomAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];

  LODWORD(v34.rawValue) = 1112014848;
  isa = sub_30CA28(v34).super.isa;

  *(v20 + 48) = isa;
  v36 = *&v3[v4];
  if (!v36)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v37 = [v36 centerYAnchor];
  v38 = [v19 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v20 + 56) = v39;
  v40 = *&v3[v4];
  if (!v40)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v41 = [v40 heightAnchor];
  v42 = [v19 heightAnchor];
  v43 = [v41 constraintLessThanOrEqualToAnchor:v42];

  *(v20 + 64) = v43;
  v44 = *&v3[v4];
  if (!v44)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v45 = [v44 leadingAnchor];
  v46 = [v3 contentView];
  v47 = [v46 layoutMarginsGuide];

  v48 = [v47 leadingAnchor];
  v49 = [v45 constraintEqualToAnchor:v48];

  *(v20 + 72) = v49;
  v50 = *&v3[v1];
  if (!v50)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v51 = [v50 leadingAnchor];
  v52 = *&v3[v4];
  if (!v52)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v53 = [v52 trailingAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:10.0];

  *(v20 + 80) = v54;
  v55 = *&v3[v1];
  if (!v55)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v56 = [v55 topAnchor];
  v57 = [v3 contentView];
  v58 = [v57 layoutMarginsGuide];

  v59 = [v58 topAnchor];
  v60 = [v56 constraintEqualToAnchor:v59 constant:4.0];

  *(v20 + 88) = v60;
  v61 = [v3 contentView];
  v62 = [v61 layoutMarginsGuide];

  v63 = [v62 trailingAnchor];
  v64 = *&v3[v1];
  if (!v64)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v65 = [v64 trailingAnchor];
  v66 = [v63 constraintEqualToAnchor:v65];

  *(v20 + 96) = v66;
  v67 = *&v3[v1];
  if (!v67)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v68 = [v67 heightAnchor];
  v69 = [v68 constraintEqualToConstant:90.0];

  *(v20 + 104) = v69;
  v70 = *&v3[v1];
  if (!v70)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v71 = [v70 widthAnchor];
  v72 = [v71 constraintEqualToConstant:90.0];

  *(v20 + 112) = v72;
  v73 = *&v3[v6];
  if (!v73)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v74 = [v73 topAnchor];
  v75 = *&v3[v1];
  if (!v75)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v76 = [v75 bottomAnchor];
  v77 = [v74 constraintGreaterThanOrEqualToAnchor:v76 constant:6.0];

  *(v20 + 120) = v77;
  v78 = *&v3[v6];
  if (!v78)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v79 = [v78 topAnchor];
  v80 = [v19 bottomAnchor];
  v81 = [v79 constraintGreaterThanOrEqualToAnchor:v80 constant:6.0];

  *(v20 + 128) = v81;
  v82 = *&v3[v6];
  if (!v82)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v83 = [v82 leadingAnchor];
  v84 = [v3 contentView];
  v85 = [v84 layoutMarginsGuide];

  v86 = [v85 leadingAnchor];
  v87 = [v83 constraintEqualToAnchor:v86 constant:0.0];

  *(v20 + 136) = v87;
  v88 = [v3 contentView];
  v89 = [v88 layoutMarginsGuide];

  v90 = [v89 trailingAnchor];
  v91 = *&v3[v6];
  if (!v91)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v92 = [v91 trailingAnchor];
  v93 = [v90 constraintEqualToAnchor:v92];

  *(v20 + 144) = v93;
  v94 = [v3 contentView];
  v95 = [v94 layoutMarginsGuide];

  v96 = [v95 bottomAnchor];
  v97 = *&v3[v6];
  if (!v97)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v98 = objc_opt_self();
  v99 = [v97 bottomAnchor];
  v100 = [v96 constraintEqualToAnchor:v99];

  *(v20 + 152) = v100;
  sub_91304();
  v101 = sub_30C358().super.isa;

  [v98 activateConstraints:v101];
}

void sub_100774()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView);
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v1 removeFromSuperview];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView;
  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView);
  if (!v3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v3 removeFromSuperview];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView;
  v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView);
  if (!v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v5 removeFromSuperview];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide))
  {
    [v0 removeLayoutGuide:?];
    v7 = *(v0 + v6);
    *(v0 + v6) = 0;
  }

  v8 = [v0 contentView];
  if (!*(v0 + v2))
  {
    goto LABEL_22;
  }

  v9 = v8;
  [v8 addSubview:?];

  v10 = [v0 contentView];
  if (!*(v0 + v4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = v10;
  [v10 addSubview:?];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_321500;
  v13 = *(v0 + v2);
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v55 = v4;
  v14 = [v13 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 topAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v12 + 32) = v18;
  v19 = *(v0 + v2);
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = [v19 leadingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 leadingAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];

  *(v12 + 40) = v24;
  v25 = [v0 contentView];
  v26 = [v25 layoutMarginsGuide];

  v27 = [v26 trailingAnchor];
  v28 = *(v0 + v2);
  if (!v28)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = [v28 trailingAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  *(v12 + 48) = v30;
  v31 = *&v55[v0];
  if (!v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = [v31 topAnchor];
  v33 = *(v0 + v2);
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 constant:6.0];

  *(v12 + 56) = v35;
  v36 = *&v55[v0];
  if (!v36)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v37 = [v36 leadingAnchor];
  v38 = [v0 contentView];
  v39 = [v38 layoutMarginsGuide];

  v40 = [v39 leadingAnchor];
  v41 = [v37 constraintEqualToAnchor:v40 constant:0.0];

  *(v12 + 64) = v41;
  v42 = [v0 contentView];
  v43 = [v42 layoutMarginsGuide];

  v44 = [v43 trailingAnchor];
  v45 = *&v55[v0];
  if (!v45)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v46 = [v45 trailingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];

  *(v12 + 72) = v47;
  v48 = [v0 contentView];
  v49 = [v48 layoutMarginsGuide];

  v50 = [v49 bottomAnchor];
  v51 = *&v55[v0];
  if (!v51)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v52 = objc_opt_self();
  v53 = [v51 bottomAnchor];
  v54 = [v50 constraintEqualToAnchor:v53];

  *(v12 + 80) = v54;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v52 activateConstraints:isa];
}

void sub_100D5C(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_objectGraph) = a1;

  sub_FF724(v4);
  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView);
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v5;
  sub_21C008(a1);

  v7 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView);
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_objectGraph;
  swift_beginAccess();
  *&v7[v8] = a1;
  v9 = v7;

  sub_3026B8();

  sub_30B8E8();
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter] = v12;

  v10 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView);
  if (v10)
  {
    v11 = v10;
    PlayControlsStackView.bind(to:)(a1);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100E9C(uint64_t a1)
{
  v2 = v1;
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v21, "preferredLayoutAttributesFittingAttributes:", a1);
  [v4 bounds];
  Width = CGRectGetWidth(v22);
  v6 = [v1 contentView];
  [v6 directionalLayoutMargins];
  v8 = v7;

  v9 = Width - v8;
  v10 = [v2 contentView];
  [v10 directionalLayoutMargins];
  v12 = v11;

  v13 = v9 - v12;
  [v4 bounds];
  v14 = [v2 contentView];
  [v14 directionalLayoutMargins];

  v15 = [v2 contentView];
  [v15 directionalLayoutMargins];

  v16 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView];
  if (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork] == 1)
  {
    if (!v16)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v17 = v16;
    EpisodeInfoView.prepareForLayout(fitting:)(v13 + -90.0 + -10.0);
  }

  else
  {
    if (!v16)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v18 = v16;
    EpisodeInfoView.prepareForLayout(fitting:)(v13);
  }

  v19 = [v2 contentView];
  [v19 directionalLayoutMargins];

  v20 = [v2 contentView];
  [v20 directionalLayoutMargins];

  [v4 size];
  [v4 setSize:?];
  if (!*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView])
  {
    __break(1u);
    goto LABEL_11;
  }

  if (qword_3FAA28 != -1)
  {
    swift_once();
  }

  [v4 size];
  [v4 setSize:?];
}

void sub_1013F4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8, &qword_31F3D0);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - v5;
  v6 = sub_303398();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3031C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = sub_307D18();
  v21 = v20;
  v41 = v13;
  if (v20)
  {
    v22 = sub_30B038();
    v20 = sub_101D54(&qword_3FBDA0, 255, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v22 = 0;
    *(&v42 + 1) = 0;
    *&v43 = 0;
  }

  *&v42 = v21;
  *(&v43 + 1) = v22;
  v44 = v20;
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playAction;
  swift_beginAccess();
  sub_101C74(&v42, v2 + v23);
  swift_endAccess();
  sub_309428();
  v24 = *(v9 + 48);
  v25 = v24(v19, 1, v8) != 1;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork) = v25;
  if (!*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsPresenter))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_E7674(a1);

  v27 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView);
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  sub_EB910(a1, 0);
  sub_EBC58();
  sub_EBD88();
  sub_EBE88(a1);
  sub_309A78();
  if (swift_dynamicCastClass())
  {

    sub_EC2B0();
  }

  else
  {
    sub_307D98();
    if ((sub_303D78() & 1) == 0)
    {
      v29 = sub_307D98();
      sub_EC3D8(v29);
    }
  }

  EpisodeInfoView.beginUpdates()();

  if ((*(v2 + v26) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_101CE4(v19, v16);
  if (v24(v16, 1, v8) == 1)
  {
    sub_EB68(v16, &unk_402FF0, &unk_31EF40);
LABEL_17:
    sub_EB68(v19, &unk_402FF0, &unk_31EF40);
    return;
  }

  v30 = v41;
  sub_6D85C(v16, v41);
  v31 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView);
  if (v31)
  {
    sub_FE64C(v30, v36, &type metadata accessor for ArtworkModel);
    v32 = sub_303DF8();
    (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    v33 = v31;
    v34 = v37;
    sub_303348();
    sub_21C4B8(v34);

    (*(v39 + 8))(v34, v40);
    sub_FE6B4(v30, &type metadata accessor for ArtworkModel);
    if (*(v2 + v26) == 1)
    {
      sub_FFD04();
      goto LABEL_17;
    }

LABEL_16:
    sub_100774();
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_101988(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_101D54(&qword_403008, v3, type metadata accessor for SingleShowEpisodeCell, &unk_3216C8);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

double sub_101A18@<D0>(uint64_t a1@<X8>)
{
  sub_3074B8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_101C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB40, &qword_31EF50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_101CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101D54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_101D9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_101E04()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playStateSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork) = 0;
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playAction;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_displayScale) = 0x3FF0000000000000;
  sub_30D648();
  __break(1u);
}

uint64_t sub_101EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_101FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ChannelSearchResultView(uint64_t a1)
{
  result = qword_4030A0;
  if (!qword_4030A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1020F0(uint64_t a1)
{
  sub_10216C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10216C(uint64_t a1)
{
  if (!qword_401C50)
  {
    sub_3031C8();
    v1 = sub_30D3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_401C50);
    }
  }
}

uint64_t sub_1021F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3020D8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_3020A8();
}

uint64_t sub_102240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4030E8, &qword_3217A0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_EB00(a1, &v23 - v9, &unk_402FF0, &unk_31EF40);
  v11 = *(v5 + 44);
  *&v10[v11] = vdupq_n_s64(0x4051000000000000uLL);
  v12 = enum case for Artwork.Sizing.constantSize(_:);
  v13 = sub_30B168();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  v14 = sub_305BE8();
  v25 = 0;
  sub_10258C(&v36);
  v29 = *&v37[32];
  v30 = *&v37[48];
  v31[0] = *&v37[64];
  *(v31 + 9) = *&v37[73];
  v26 = v36;
  v27 = *v37;
  v28 = *&v37[16];
  v32[0] = v36;
  v32[1] = *v37;
  v32[2] = *&v37[16];
  v32[3] = *&v37[32];
  v32[4] = *&v37[48];
  v33[0] = *&v37[64];
  *(v33 + 9) = *&v37[73];
  sub_EB00(&v26, &v34, &qword_4030F0, &qword_3217A8);
  sub_EB68(v32, &qword_4030F0, &qword_3217A8);
  *(&v24[3] + 7) = v29;
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31[0];
  v24[6] = *(v31 + 9);
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  v15 = v25;
  sub_EB00(v10, v7, &qword_4030E8, &qword_3217A0);
  sub_EB00(v7, a2, &qword_4030E8, &qword_3217A0);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4030F8, &qword_3217B0) + 48);
  *&v35[49] = v24[3];
  *&v35[65] = v24[4];
  *&v35[81] = v24[5];
  *&v35[97] = v24[6];
  *&v35[1] = v24[0];
  v17 = a2 + v16;
  v34 = v14;
  v35[0] = v15;
  *&v35[17] = v24[1];
  *&v35[33] = v24[2];
  *(v17 + 128) = HIBYTE(v24[6]);
  v18 = *&v35[64];
  *(v17 + 64) = *&v35[48];
  *(v17 + 80) = v18;
  v19 = *&v35[32];
  *(v17 + 32) = *&v35[16];
  *(v17 + 48) = v19;
  v20 = *v35;
  *v17 = v34;
  *(v17 + 16) = v20;
  v21 = *&v35[96];
  *(v17 + 96) = *&v35[80];
  *(v17 + 112) = v21;
  sub_EB00(&v34, &v36, &qword_403100, &qword_3217B8);
  sub_EB68(v10, &qword_4030E8, &qword_3217A0);
  *&v37[49] = v24[3];
  *&v37[65] = v24[4];
  *&v37[81] = v24[5];
  v38 = v24[6];
  *&v37[1] = v24[0];
  *&v37[17] = v24[1];
  v36 = v14;
  v37[0] = v15;
  *&v37[33] = v24[2];
  sub_EB68(&v36, &qword_403100, &qword_3217B8);
  return sub_EB68(v7, &qword_4030E8, &qword_3217A0);
}

double sub_10258C@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for ChannelSearchResultView(0);
  sub_E504();

  v3 = sub_3063C8();
  v5 = v4;
  v7 = v6;
  if (qword_3FAA88 != -1)
  {
    swift_once();
  }

  v8 = sub_3020D8();
  __swift_project_value_buffer(v8, qword_403018);
  v9 = sub_306308();
  v11 = v10;
  v13 = v12;
  sub_EBC8(v3, v5, v7 & 1);

  sub_306898();
  v14 = sub_306338();
  v39 = v15;
  v40 = v14;
  v37 = v16;
  v41 = v17;

  sub_EBC8(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();

  v18 = sub_3063C8();
  v20 = v19;
  v22 = v21;
  if (qword_3FAA90 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_403030);
  v23 = sub_306308();
  v25 = v24;
  v27 = v26;
  sub_EBC8(v18, v20, v22 & 1);

  sub_3068A8();
  v28 = sub_306338();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_EBC8(v23, v25, v27 & 1);

  v35 = swift_getKeyPath();
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v41;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 2;
  *(a2 + 48) = 0;
  *(a2 + 56) = v28;
  *(a2 + 64) = v30;
  *(a2 + 72) = v32 & 1;
  *(a2 + 80) = v34;
  *(a2 + 88) = v35;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  sub_EBD8(v40, v39, v37 & 1);

  sub_EBD8(v28, v30, v32 & 1);

  sub_EBC8(v28, v30, v32 & 1);

  sub_EBC8(v40, v39, v37 & 1);

  return result;
}

uint64_t sub_102908@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_305AA8();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4030E0, &qword_321798);
  return sub_102240(v2, a2 + *(v4 + 44));
}

unint64_t sub_102968()
{
  result = qword_403108;
  if (!qword_403108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403110, &qword_3217F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403108);
  }

  return result;
}

uint64_t sub_1029CC()
{
  v0 = sub_3020D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_403118);
  __swift_project_value_buffer(v0, qword_403118);
  sub_3020B8();
  sub_302058();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_102AB4()
{
  v0 = sub_3020D8();
  __swift_allocate_value_buffer(v0, qword_403130);
  __swift_project_value_buffer(v0, qword_403130);
  return sub_3020A8();
}

uint64_t sub_102B00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_303A58();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_306008();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403148, &qword_3218C8);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403150, &qword_3218D0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v14 = &v62 - v13;
  *v12 = sub_305AA8();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403158, &qword_3218D8);
  sub_103204(v2, &v12[*(v15 + 44)]);
  sub_305FE8();
  v16 = sub_EC8C(&qword_403160, &qword_403148, &qword_3218C8, &protocol conformance descriptor for HStack<A>);
  v63 = v14;
  v64 = v10;
  v17 = v16;
  sub_306738();
  (*(v7 + 8))(v9, v6);
  sub_EB68(v12, &qword_403148, &qword_3218C8);
  v74 = sub_309528();
  v75 = v18;
  v76 = sub_30A448();
  v77 = v19;
  v20 = 0;
  v21 = 0;
  if (sub_307D08())
  {
    v22 = [objc_opt_self() mainBundle];
    v61._countAndFlagsBits = 0xE000000000000000;
    v86._countAndFlagsBits = 0x455F474E49544152;
    v86._object = 0xEF544943494C5058;
    v89.value._countAndFlagsBits = 0;
    v89.value._object = 0;
    v23.super.isa = v22;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    v20 = sub_301AB8(v86, v89, v23, v92, 0, v61);
    v21 = v24;
  }

  v78 = v20;
  v79 = v21;
  sub_3039A8();
  if (sub_303A38())
  {
    v25 = [objc_opt_self() mainBundle];
    v61._countAndFlagsBits = 0xE000000000000000;
    v87._countAndFlagsBits = 0x4445564153;
    v87._object = 0xE500000000000000;
    v90.value._countAndFlagsBits = 0;
    v90.value._object = 0;
    v26.super.isa = v25;
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    v27 = sub_301AB8(v87, v90, v26, v93, 0, v61);
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v31 = v68;
  v30 = v69;
  v80 = v27;
  v81 = v29;
  sub_3039A8();
  v32 = sub_303A48();
  (*(v31 + 8))(v5, v30);
  if (v32)
  {
    v33 = [objc_opt_self() mainBundle];
    v61._countAndFlagsBits = 0xE000000000000000;
    v88._countAndFlagsBits = 0x44414F4C4E574F44;
    v88._object = 0xEA00000000004445;
    v91.value._countAndFlagsBits = 0;
    v91.value._object = 0;
    v34.super.isa = v33;
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    v35 = sub_301AB8(v88, v91, v34, v94, 0, v61);
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v82 = v35;
  v83 = v37;
  result = sub_307D88();
  v39 = 0;
  v84 = result;
  v85 = v40;
  v41 = _swiftEmptyArrayStorage;
LABEL_10:
  if (v39 <= 6)
  {
    v42 = 6;
  }

  else
  {
    v42 = v39;
  }

  v43 = v42 + 1;
  v44 = 16 * v39 + 40;
  while (1)
  {
    if (v39 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30, &qword_319B40);
      swift_arrayDestroy();
      v71 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC78, &qword_31C250);
      sub_EC8C(&qword_3FEC80, &qword_3FEC78, &qword_31C250, &protocol conformance descriptor for [A]);
      v51 = sub_30BFF8();
      v53 = v52;

      v71 = v51;
      v72 = v53;
      sub_E504();
      v54 = sub_3063C8();
      v56 = v55;
      v58 = v57;
      v71 = v64;
      v72 = v17;
      swift_getOpaqueTypeConformance2();
      v59 = v66;
      v60 = v63;
      sub_3066B8();
      sub_EBC8(v54, v56, v58 & 1);

      return (*(v65 + 8))(v60, v59);
    }

    if (v43 == ++v39)
    {
      break;
    }

    v45 = v44 + 16;
    v46 = *&v73[v44];
    v44 += 16;
    if (v46)
    {
      v47 = *&v70[v45];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_CAA70(0, *(v41 + 2) + 1, 1, v41);
        v41 = result;
      }

      v49 = *(v41 + 2);
      v48 = *(v41 + 3);
      if (v49 >= v48 >> 1)
      {
        result = sub_CAA70((v48 > 1), v49 + 1, 1, v41);
        v41 = result;
      }

      *(v41 + 2) = v49 + 1;
      v50 = &v41[16 * v49];
      *(v50 + 4) = v47;
      *(v50 + 5) = v46;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_103204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403168, &unk_3218E0);
  __chkstk_darwin(v2 - 8);
  v43 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v36[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170, &unk_321DB0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v36[-v12];
  sub_307DA8();
  v14 = &v13[*(v8 + 48)];
  v15 = *(sub_3055F8() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = sub_305B68();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #5.0 }

  *v14 = _Q0;
  v23 = *(v8 + 44);
  *&v13[v23] = vdupq_n_s64(0x4051000000000000uLL);
  v24 = enum case for Artwork.Sizing.constantSize(_:);
  v25 = sub_30B168();
  (*(*(v25 - 8) + 104))(&v13[v23], v24, v25);
  sub_306C58();
  sub_3051F8();
  v41 = v47;
  v42 = v45;
  v39 = v50;
  v40 = v49;
  v53 = 1;
  v52 = v46;
  v51 = v48;
  *v6 = sub_305BE8();
  *(v6 + 1) = 0x4000000000000000;
  v6[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403178, &qword_3218F0);
  sub_103598(&v6[*(v26 + 44)]);
  v38 = v10;
  sub_EB00(v13, v10, &qword_403170, &unk_321DB0);
  v27 = v53;
  LOBYTE(v15) = v52;
  v37 = v51;
  v28 = v43;
  sub_EB00(v6, v43, &qword_403168, &unk_3218E0);
  v29 = v10;
  v30 = v44;
  sub_EB00(v29, v44, &qword_403170, &unk_321DB0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403180, &qword_3218F8);
  v32 = v30 + *(v31 + 48);
  *v32 = 0;
  *(v32 + 8) = v27;
  v33 = v41;
  *(v32 + 16) = v42;
  *(v32 + 24) = v15;
  *(v32 + 32) = v33;
  *(v32 + 40) = v37;
  v34 = v39;
  *(v32 + 48) = v40;
  *(v32 + 56) = v34;
  sub_EB00(v28, v30 + *(v31 + 64), &qword_403168, &unk_3218E0);
  sub_EB68(v6, &qword_403168, &unk_3218E0);
  sub_EB68(v13, &qword_403170, &unk_321DB0);
  sub_EB68(v28, &qword_403168, &unk_3218E0);
  return sub_EB68(v38, &qword_403170, &unk_321DB0);
}

uint64_t sub_103598@<X0>(char *a2@<X8>)
{
  v52 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403188, &unk_321900);
  __chkstk_darwin(v2);
  v4 = &v50 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403190, &unk_323650);
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  *v4 = sub_305AA8();
  *(v4 + 1) = 0x4000000000000000;
  v4[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403198, &qword_321910);
  sub_103AB0(&v4[*(v11 + 44)]);
  if (qword_3FAA98 != -1)
  {
    swift_once();
  }

  v12 = sub_3020D8();
  __swift_project_value_buffer(v12, qword_403118);
  sub_EC8C(&qword_4031A0, &qword_403188, &unk_321900, &protocol conformance descriptor for HStack<A>);
  sub_3063F8();
  sub_EB68(v4, &qword_403188, &unk_321900);
  v13 = sub_3068A8();
  KeyPath = swift_getKeyPath();
  v15 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4031A8, &unk_323690) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = *(v5 + 36);
  v51 = v10;
  v17 = &v10[v16];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798, &qword_318AB0) + 28);
  v19 = enum case for Image.Scale.small(_:);
  v20 = sub_306958();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  v21 = sub_307D88();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  v56 = v23;
  v57 = v24;
  sub_E504();
  v25 = sub_3063C8();
  v27 = v26;
  v29 = v28;
  if (qword_3FAAA0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_403130);
  v30 = sub_306308();
  v32 = v31;
  v34 = v33;
  sub_EBC8(v25, v27, v29 & 1);

  sub_306898();
  v35 = sub_306338();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_EBC8(v30, v32, v34 & 1);

  v42 = swift_getKeyPath();
  v67 = v39 & 1;
  v65 = 0;
  v43 = v51;
  sub_EB00(v51, v7, &qword_403190, &unk_323650);
  v44 = v52;
  sub_EB00(v7, v52, &qword_403190, &unk_323650);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4031B0, &qword_3219A8) + 48);
  *&v53 = v35;
  *(&v53 + 1) = v37;
  LOBYTE(v54) = v39 & 1;
  *(&v54 + 1) = *v66;
  DWORD1(v54) = *&v66[3];
  *(&v54 + 1) = v41;
  *v55 = v42;
  v52 = v7;
  *&v55[8] = 2;
  v55[16] = 0;
  *&v55[17] = 256;
  v46 = v53;
  v47 = v54;
  v48 = *v55;
  *(v45 + 47) = *&v55[15];
  *(v45 + 16) = v47;
  *(v45 + 32) = v48;
  *v45 = v46;
  sub_EB00(&v53, &v56, &qword_4031B8, &unk_3219B0);
  sub_EB68(v43, &qword_403190, &unk_323650);
  v56 = v35;
  v57 = v37;
  v58 = v39 & 1;
  *v59 = *v66;
  *&v59[3] = *&v66[3];
  v60 = v41;
  v61 = v42;
  v62 = 2;
  v63 = 0;
  v64 = 256;
  sub_EB68(&v56, &qword_4031B8, &unk_3219B0);
  return sub_EB68(v52, &qword_403190, &unk_323650);
}

uint64_t sub_103AB0@<X0>(char *a2@<X8>)
{
  v36 = a2;
  v35 = sub_30A4A8();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;

  v8 = v7;
  sub_30A488();
  sub_30A448();
  if (v9)
  {
    v10 = sub_30C248();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v39 = v10;
  v40 = v12;
  sub_E504();
  v13 = sub_3063C8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = *(v2 + 16);
  v34 = v8;
  v22 = v8;
  v23 = v35;
  v21(v4, v22, v35);
  LOBYTE(v39) = v17 & 1;
  v38 = 0;
  v37 = 1;
  v24 = v36;
  v21(v36, v4, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4031C0, &qword_323710);
  v26 = &v24[*(v25 + 48)];
  v27 = v39;
  v28 = v38;
  *v26 = v13;
  *(v26 + 1) = v15;
  v26[16] = v27;
  *(v26 + 3) = v19;
  *(v26 + 4) = KeyPath;
  *(v26 + 5) = 1;
  v26[48] = v28;
  v29 = &v24[*(v25 + 64)];
  v30 = v37;
  *v29 = 0;
  v29[8] = v30;
  sub_EBD8(v13, v15, v27);
  v31 = *(v2 + 8);

  v31(v34, v23);
  sub_EBC8(v13, v15, v39);

  return (v31)(v4, v23);
}

void sub_103D78(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50, &qword_31C110);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  sub_30A478();
  v9 = sub_303748();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = enum case for EyebrowBuilder.ListContext.episodeSearchResult(_:);
  v11 = sub_3033A8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  swift_retain_n();
  swift_retain_n();
  sub_30A458();
  sub_104218(&qword_3FEC58, &type metadata accessor for EpisodeCaptionGenerator, &protocol conformance descriptor for EpisodeCaptionGenerator);
  v13 = sub_3053C8();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA68, &unk_31BF80);
  sub_30B8E8();
  v16 = sub_303B28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC198, &qword_317E10);
  sub_30B8E8();

  v17 = sub_303B28();

  *a3 = a1;
  a3[1] = v13;
  a3[2] = v15;
  a3[3] = a2;
  a3[4] = v16;
  a3[5] = v17;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_104010(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_104058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1040EC()
{
  result = qword_4031C8;
  if (!qword_4031C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4031D0, &unk_3219C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403148, &qword_3218C8);
    sub_EC8C(&qword_403160, &qword_403148, &qword_3218C8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_104218(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4031C8);
  }

  return result;
}

uint64_t sub_104218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RecentlySearchedHeaderCell(uint64_t a1)
{
  result = qword_4032D8;
  if (!qword_4032D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1042AC()
{
  v0 = sub_3020D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == &dword_0 + 1)
  {
    sub_3020A8();
    sub_302058();
  }

  else
  {
    sub_302088();
    sub_302048();
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1043D8()
{
  v0 = sub_3020D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == &dword_0 + 1)
  {
    sub_3020A8();
  }

  else
  {
    sub_302038();
  }

  sub_302058();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1044F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403208, &qword_321C18);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403210, &qword_321C20);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403218, &qword_321C28);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403220, &qword_321C30);
  sub_1047CC(v2, &v10[*(v14 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_34804(v10, v7, &qword_403210, &qword_321C20);
  v16 = &v7[*(v5 + 44)];
  *v16 = KeyPath;
  *(v16 + 1) = 0;
  v16[16] = 0;
  LOBYTE(KeyPath) = sub_3060D8();
  v17 = sub_306108();
  sub_306108();
  if (sub_306108() != KeyPath)
  {
    v17 = sub_306108();
  }

  sub_304FD8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_34804(v7, v13, &qword_403208, &qword_321C18);
  v26 = &v13[*(v11 + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_3060E8();
  v28 = sub_306108();
  sub_306108();
  if (sub_306108() != v27)
  {
    v28 = sub_306108();
  }

  sub_304FD8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_34804(v13, a1, &qword_403218, &qword_321C28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403228, &unk_321C38);
  v38 = a1 + *(result + 36);
  *v38 = v28;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

double sub_1047CC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a1;
  v84 = a2;
  v2 = sub_305D68();
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin(v2);
  v81 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_305E08();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for RecentlySearchedHeaderCell(0);
  v63 = *(v77 - 8);
  v62 = *(v63 + 64);
  __chkstk_darwin(v77);
  v60 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808, &qword_317440);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v60 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403230, &qword_321C48);
  __chkstk_darwin(v71);
  v8 = &v60 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403238, &qword_321C50);
  __chkstk_darwin(v72);
  v73 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403240, &qword_321C58);
  v79 = *(v10 - 8);
  v80 = v10;
  __chkstk_darwin(v10);
  v75 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v85 = &v60 - v13;
  v14 = sub_3020D8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = [v18 mainBundle];
  v58._countAndFlagsBits = 0xE000000000000000;
  v88._countAndFlagsBits = 0xD00000000000001ELL;
  v88._object = 0x800000000033B240;
  v90.value._countAndFlagsBits = 0;
  v90.value._object = 0;
  v20.super.isa = v19;
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  sub_301AB8(v88, v90, v20, v92, 0, v58);

  sub_1042AC();
  v21 = sub_306308();
  v68 = v22;
  v69 = v21;
  v64 = v23;
  v70 = v24;

  v25 = *(v15 + 8);
  v25(v17, v14);
  v26 = [v18 mainBundle];
  v59._countAndFlagsBits = 0xE000000000000000;
  v89._object = 0x800000000033B260;
  v89._countAndFlagsBits = 0xD00000000000001BLL;
  v91.value._countAndFlagsBits = 0;
  v91.value._object = 0;
  v27.super.isa = v26;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  v28 = sub_301AB8(v89, v91, v27, v93, 0, v59);
  v30 = v29;

  v86 = v28;
  v87 = v30;
  v31 = v67;
  v32 = v60;
  sub_105F08(v67, v60);
  v33 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v34 = swift_allocObject();
  sub_106110(v32, v34 + v33);
  sub_E504();
  v35 = v61;
  sub_306A98();
  sub_1043D8();
  sub_EC8C(&qword_3FB838, &qword_3FB808, &qword_317440, &protocol conformance descriptor for Button<A>);
  v36 = v65;
  sub_3063F8();
  v25(v17, v14);
  (*(v66 + 8))(v35, v36);
  if (qword_3FB000 != -1)
  {
    swift_once();
  }

  v37 = sub_30D058();
  KeyPath = swift_getKeyPath();
  v39 = &v8[*(v71 + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v40 = v74;
  sub_305DF8();
  sub_106284();
  sub_1069C8(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v41 = v73;
  v42 = v78;
  sub_3064E8();
  (*(v76 + 8))(v40, v42);
  sub_EB68(v8, &qword_403230, &qword_321C48);
  v43 = v41 + *(v72 + 36);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403250, &qword_321C98);
  sub_305648();
  sub_1063AC(v31 + *(v77 + 28), v43);
  *(v43 + *(v44 + 36)) = 0;
  v45 = v81;
  sub_305698();
  sub_10641C();
  sub_1069C8(&qword_403268, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v46 = v85;
  v47 = v83;
  sub_306548();
  (*(v82 + 8))(v45, v47);
  sub_EB68(v41, &qword_403238, &qword_321C50);
  v49 = v79;
  v48 = v80;
  v50 = *(v79 + 16);
  v51 = v75;
  v50(v75, v46, v80);
  v52 = v84;
  v54 = v68;
  v53 = v69;
  *v84 = v69;
  v52[1] = v54;
  LOBYTE(v43) = v64 & 1;
  *(v52 + 16) = v64 & 1;
  v52[3] = v70;
  v52[4] = 0;
  *(v52 + 40) = 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403270, qword_321CA0);
  v50(v52 + *(v55 + 64), v51, v48);
  sub_EBD8(v53, v54, v43);
  v56 = *(v49 + 8);

  v56(v85, v48);
  v56(v51, v48);
  sub_EBC8(v53, v54, v43);

  return result;
}

uint64_t sub_105120(uint64_t a1)
{
  v30 = sub_302558();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_305A08();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30B898();
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_30B738();
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105604(v10);
  sub_30B728();
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v28 = v5;
  if (v16 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    v17 = sub_30C7A8();
    v18 = sub_306088();
    sub_304108(v17, &dword_0, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();
    sub_348E4(v14, v15, 0);
    (*(v29 + 8))(v7, v5);
  }

  v19 = v32;
  v34[3] = v32;
  v34[4] = &protocol witness table for EmptyAction;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v34);
  (*(v31 + 16))(boxed_opaque_existential_0Tm, v13, v19);
  (*(v2 + 104))(v4, enum case for ActionMetricsBehavior.fromAction(_:), v30);
  v21 = *(a1 + 32);
  if (v21 == 1)
  {
    v33 = *(a1 + 24);
  }

  else
  {

    v22 = sub_30C7A8();
    v23 = sub_306088();
    sub_304108(v22, &dword_0, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v29 + 8))(v7, v28);
  }

  swift_getObjectType();
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v30);
  __swift_destroy_boxed_opaque_existential_1(v34);

  if ((v21 & 1) == 0)
  {
    v24 = sub_30C7A8();
    v25 = sub_306088();
    sub_304108(v24, &dword_0, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v29 + 8))(v7, v28);
  }

  sub_30A5A8();
  sub_30B8E8();

  sub_30A588();

  return (*(v31 + 8))(v13, v32);
}

uint64_t sub_105604@<X0>(uint64_t a1@<X8>)
{
  v8[3] = a1;
  v1 = sub_30BA28();
  __chkstk_darwin(v1 - 8);
  v8[2] = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v3 - 8);
  v5 = v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160, &qword_317DF0);
  sub_30B7E8();
  *(swift_allocObject() + 16) = xmmword_315430;
  v8[1] = sub_303568();
  v8[0] = sub_303858();
  sub_3037B8();
  sub_303AA8();
  v6 = sub_301CB8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_302718();
  sub_30B788();
  v16 = v9;
  sub_EB68(&v16, &unk_408130, &unk_318C10);
  v15 = v10;
  sub_EB68(&v15, &qword_3FC878, &unk_318D40);
  v14 = v11;
  sub_EB68(&v14, &qword_408140, &unk_318C20);
  sub_1EBD0(v12, v13);

  sub_EB68(v5, &qword_3FB8E0, &qword_317E00);
  sub_30BA18();
  return sub_30B878();
}

uint64_t sub_1058E4()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 0;
  (*(v8 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

uint64_t sub_105A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v8 = (a4 + *(a3 + 28));
  v9 = *(sub_3055F8() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = sub_305B68();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #4.0 }

  *v8 = _Q0;
  sub_306D58();
  v18 = v17;
  v20 = v19;
  v21 = sub_307048();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403200, &qword_321C10);
  __asm { FMOV            V0.2D, #1.5 }

  *&v8[*(v22 + 36)] = _Q0;
  v24 = &v8[*(v22 + 40)];
  *v24 = v18;
  *(v24 + 1) = v20;
  v25 = a4 + *(a3 + 32);

  return sub_105EA4(a2, v25);
}

uint64_t sub_105BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1069C8(&qword_403278, type metadata accessor for RecentlySearchedHeaderCell, &unk_321AE8);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_105C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_30C968();
  v3 = sub_3071F8();
  v4 = *(*(v3 - 8) + 104);
  v5 = &enum case for ShelfHeaderStyle.subdued(_:);
  if ((v2 & 1) == 0)
  {
    v5 = &enum case for ShelfHeaderStyle.default(_:);
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

uint64_t sub_105EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_30A218();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_105F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlySearchedHeaderCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_105F6C()
{
  v1 = (type metadata accessor for RecentlySearchedHeaderCell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_7BD8C(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  sub_348E4(*(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56));
  v5 = v1[9];
  v6 = v5 + *(sub_3055F8() + 20);
  v7 = sub_305B68();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = v0 + v4 + v1[10];

  v9 = *(sub_30A218() + 20);
  v10 = sub_30BAA8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_106110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlySearchedHeaderCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_106174()
{
  v1 = *(type metadata accessor for RecentlySearchedHeaderCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_105120(v2);
}

uint64_t sub_1061D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_305768();
  *a1 = result;
  return result;
}

uint64_t sub_106200@<X0>(uint64_t *a1@<X8>)
{
  result = sub_305768();
  *a1 = result;
  return result;
}

unint64_t sub_106284()
{
  result = qword_403248;
  if (!qword_403248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403230, &qword_321C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB808, &qword_317440);
    sub_EC8C(&qword_3FB838, &qword_3FB808, &qword_317440, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FC788, &qword_3FC790, &qword_321C90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403248);
  }

  return result;
}

uint64_t sub_1063AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403200, &qword_321C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10641C()
{
  result = qword_403258;
  if (!qword_403258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403238, &qword_321C50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403230, &qword_321C48);
    sub_305E08();
    sub_106284();
    sub_1069C8(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_403260, &qword_403250, &qword_321C98, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403258);
  }

  return result;
}

uint64_t sub_106574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403200, &qword_321C10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_30A218();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1066B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403200, &qword_321C10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_30A218();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1067DC(uint64_t a1)
{
  sub_1068E0(319, &unk_3FEDE8, type metadata accessor for CGSize);
  if (v1 <= 0x3F)
  {
    sub_1068E0(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph);
    if (v2 <= 0x3F)
    {
      sub_3449C(319);
      if (v3 <= 0x3F)
      {
        sub_106934(319);
        if (v4 <= 0x3F)
        {
          sub_30A218();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1068E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3050B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_106934(uint64_t a1)
{
  if (!qword_4032E8)
  {
    sub_3055F8();
    sub_1069C8(&qword_401E78, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    v1 = sub_3050E8();
    if (!v2)
    {
      atomic_store(v1, &qword_4032E8);
    }
  }
}

uint64_t sub_1069C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_106A84(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_106B08()
{
  result = qword_403338;
  if (!qword_403338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403208, &qword_321C18);
    sub_EC8C(&qword_403340, &qword_403210, &qword_321C20, &protocol conformance descriptor for HStack<A>);
    sub_F34E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403338);
  }

  return result;
}

uint64_t sub_106BF0()
{
  v0 = sub_3020D8();
  __swift_allocate_value_buffer(v0, qword_403348);
  __swift_project_value_buffer(v0, qword_403348);
  return sub_3020A8();
}

uint64_t sub_106C3C@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v1 = sub_306838();
  v77 = *(v1 - 8);
  v78 = v1;
  __chkstk_darwin(v1);
  v79 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403368, &qword_321DA0);
  __chkstk_darwin(v82);
  v80 = &v77 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403370, &qword_321DA8);
  __chkstk_darwin(v4);
  v81 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170, &unk_321DB0);
  __chkstk_darwin(v6);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v9 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v77 - v13;
  v15 = sub_3031C8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403378, &qword_321DC0);
  __chkstk_darwin(v19 - 8);
  v83 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v77 - v22;
  sub_307D78();
  v24 = (*(v16 + 48))(v14, 1, v15);
  v85 = v23;
  if (v24 != 1)
  {
    sub_6D85C(v14, v18);
    sub_6D8C0(v18, v11);
    (*(v16 + 56))(v11, 0, 1, v15);
    sub_E2F78(v11, v8);
    v38 = &v8[*(v6 + 40)];
    v39 = *(sub_3055F8() + 20);
    v40 = enum case for RoundedCornerStyle.continuous(_:);
    v41 = sub_305B68();
    (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
    __asm { FMOV            V0.2D, #5.0 }

    *v38 = _Q0;
    v43 = *(v6 + 36);
    *&v8[v43] = vdupq_n_s64(0x4051000000000000uLL);
    v44 = enum case for Artwork.Sizing.constantSize(_:);
    v45 = sub_30B168();
    (*(*(v45 - 8) + 104))(&v8[v43], v44, v45);
    sub_EB00(v8, v81, &qword_403170, &unk_321DB0);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403398, &qword_403170, &unk_321DB0, &unk_322D78);
    sub_107634();
    sub_305D48();
    sub_EB68(v8, &qword_403170, &unk_321DB0);
    sub_6D924(v18);
    goto LABEL_5;
  }

  v26 = v81;
  v25 = v82;
  sub_EB68(v14, &unk_402FF0, &unk_31EF40);
  if ((sub_309A38() & 0x100000000) == 0)
  {
    v27 = *(sub_3055F8() + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = sub_305B68();
    v30 = v80;
    (*(*(v29 - 8) + 104))(&v80[v27], v28, v29);
    __asm { FMOV            V0.2D, #5.0 }

    *v30 = _Q0;
    sub_306C58();
    sub_3051F8();
    v36 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403390, &unk_321E08) + 36));
    v37 = v89;
    *v36 = v88;
    v36[1] = v37;
    v36[2] = v90;
    (*(v77 + 104))(v79, enum case for Color.RGBColorSpace.sRGB(_:), v78);
    *(v30 + *(v25 + 36)) = sub_3068B8();
    sub_EB00(v30, v26, &qword_403368, &qword_321DA0);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403398, &qword_403170, &unk_321DB0, &unk_322D78);
    sub_107634();
    v23 = v85;
    sub_305D48();
    sub_EB68(v30, &qword_403368, &qword_321DA0);
LABEL_5:
    v46 = 0;
    goto LABEL_7;
  }

  v46 = 1;
  v23 = v85;
LABEL_7:
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403380, &qword_321DC8);
  (*(*(v47 - 8) + 56))(v23, v46, 1, v47);
  v48 = sub_307D88();
  if (v49)
  {
    v86 = v48;
    v87 = v49;
    sub_E504();
    v50 = sub_3063C8();
    v52 = v51;
    v54 = v53;
    if (qword_3FAAA8 != -1)
    {
      swift_once();
    }

    v55 = sub_3020D8();
    __swift_project_value_buffer(v55, qword_403348);
    v56 = sub_306308();
    v58 = v57;
    v60 = v59;
    sub_EBC8(v50, v52, v54 & 1);

    sub_306898();
    v61 = sub_306338();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    sub_EBC8(v56, v58, v60 & 1);

    KeyPath = swift_getKeyPath();
    v69 = v65 & 1;
    v82 = v61;
    sub_EBD8(v61, v63, v65 & 1);

    v70 = 2;
  }

  else
  {
    v82 = 0;
    v63 = 0;
    v69 = 0;
    v67 = 0;
    KeyPath = 0;
    v70 = 0;
  }

  v71 = v85;
  v72 = v83;
  sub_EB00(v85, v83, &qword_403378, &qword_321DC0);
  v73 = v84;
  sub_EB00(v72, v84, &qword_403378, &qword_321DC0);
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403388, &qword_321DD0) + 48);
  v75 = v82;
  sub_E20E0(v82, v63, v69, v67, KeyPath);
  sub_E2130(v75, v63, v69, v67, KeyPath);
  *v74 = v75;
  *(v74 + 8) = v63;
  *(v74 + 16) = v69;
  *(v74 + 24) = v67;
  *(v74 + 32) = KeyPath;
  *(v74 + 40) = v70;
  *(v74 + 48) = 0;
  sub_EB68(v71, &qword_403378, &qword_321DC0);
  sub_E2130(v75, v63, v69, v67, KeyPath);
  return sub_EB68(v72, &qword_403378, &qword_321DC0);
}

uint64_t sub_1075D4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_305AA8();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403360, &qword_321D98);
  return sub_106C3C(a2 + *(v3 + 44));
}

unint64_t sub_107634()
{
  result = qword_4033A0;
  if (!qword_4033A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403368, &qword_321DA0);
    sub_1076EC();
    sub_EC8C(&qword_3FC820, &qword_3FC828, &unk_319380, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4033A0);
  }

  return result;
}

unint64_t sub_1076EC()
{
  result = qword_4033A8;
  if (!qword_4033A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403390, &unk_321E08);
    sub_107778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4033A8);
  }

  return result;
}

unint64_t sub_107778()
{
  result = qword_4033B0;
  if (!qword_4033B0)
  {
    sub_3055F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4033B0);
  }

  return result;
}

uint64_t sub_107840()
{
  v0 = sub_3020D8();
  __swift_allocate_value_buffer(v0, qword_4033C8);
  __swift_project_value_buffer(v0, qword_4033C8);
  return sub_3020A8();
}

uint64_t sub_10788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170, &unk_321DB0);
  __chkstk_darwin(v84);
  v4 = &v78 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4033E8, &qword_321ED8);
  __chkstk_darwin(v82);
  v83 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8, &qword_321EE0);
  __chkstk_darwin(v6 - 8);
  v78 = &v78 - v7;
  v80 = sub_3055F8();
  __chkstk_darwin(v80);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_306938();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D98, &qword_31F398);
  __chkstk_darwin(v81);
  v79 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v15 - 8);
  v17 = &v78 - v16;
  v18 = sub_3031C8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4033F0, &qword_321EE8);
  __chkstk_darwin(v22 - 8);
  v86 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v88 = &v78 - v25;
  v85 = a1;
  sub_307D78();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_EB68(v17, &unk_402FF0, &unk_31EF40);
    sub_306978();
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v26 = sub_306968();

    (*(v11 + 8))(v13, v10);
    v91 = v26;
    LOWORD(v92) = 1;
    v27 = *(v80 + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = sub_305B68();
    (*(*(v29 - 8) + 104))(&v9[v27], v28, v29);
    __asm { FMOV            V0.2D, #5.0 }

    *v9 = _Q0;
    sub_108364();
    v89 = sub_306B98();
    v35 = v78;
    sub_307F28();
    v36 = sub_307F38();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401EE0, &qword_321EF0);
    sub_1083BC();
    sub_E1D8C();
    v37 = v79;
    sub_306458();
    sub_EB68(v35, &qword_401DC8, &qword_321EE0);

    sub_306C58();
    sub_3051F8();
    v38 = (v37 + *(v81 + 36));
    v39 = v92;
    *v38 = v91;
    v38[1] = v39;
    v38[2] = v93;
    sub_EB00(v37, v83, &qword_401D98, &qword_31F398);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403398, &qword_403170, &unk_321DB0, &unk_322D78);
    sub_E1F84();
    v40 = v88;
    sub_305D48();
    sub_EB68(v37, &qword_401D98, &qword_31F398);
  }

  else
  {
    sub_6D85C(v17, v21);
    sub_6D8C0(v21, v4);
    (*(v19 + 56))(v4, 0, 1, v18);
    v41 = v84;
    v42 = &v4[*(v84 + 40)];
    v43 = *(v80 + 20);
    v44 = enum case for RoundedCornerStyle.continuous(_:);
    v45 = sub_305B68();
    (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
    __asm { FMOV            V0.2D, #5.0 }

    *v42 = _Q0;
    v47 = *(v41 + 36);
    *&v4[v47] = vdupq_n_s64(0x4051000000000000uLL);
    v48 = enum case for Artwork.Sizing.constantSize(_:);
    v49 = sub_30B168();
    (*(*(v49 - 8) + 104))(&v4[v47], v48, v49);
    sub_108448(v4, v83);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403398, &qword_403170, &unk_321DB0, &unk_322D78);
    sub_E1F84();
    v40 = v88;
    sub_305D48();
    sub_EB68(v4, &qword_403170, &unk_321DB0);
    sub_6D924(v21);
  }

  v50 = sub_307D88();
  if (v51)
  {
    v89 = v50;
    v90 = v51;
    sub_E504();
    v52 = sub_3063C8();
    v54 = v53;
    v56 = v55;
    if (qword_3FAAB0 != -1)
    {
      swift_once();
    }

    v57 = sub_3020D8();
    __swift_project_value_buffer(v57, qword_4033C8);
    v58 = sub_306308();
    v60 = v59;
    v62 = v61;
    sub_EBC8(v52, v54, v56 & 1);

    sub_306898();
    v63 = sub_306338();
    v65 = v64;
    v67 = v66;
    v69 = v68;

    sub_EBC8(v58, v60, v62 & 1);

    KeyPath = swift_getKeyPath();
    v71 = v67 & 1;
    sub_EBD8(v63, v65, v67 & 1);

    v72 = 2;
  }

  else
  {
    v63 = 0;
    v65 = 0;
    v71 = 0;
    v69 = 0;
    KeyPath = 0;
    v72 = 0;
  }

  v73 = v40;
  v74 = v86;
  sub_EB00(v73, v86, &qword_4033F0, &qword_321EE8);
  v75 = v87;
  sub_EB00(v74, v87, &qword_4033F0, &qword_321EE8);
  v76 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4033F8, &qword_321EF8) + 48);
  sub_E20E0(v63, v65, v71, v69, KeyPath);
  sub_E2130(v63, v65, v71, v69, KeyPath);
  *v76 = v63;
  *(v76 + 8) = v65;
  *(v76 + 16) = v71;
  *(v76 + 24) = v69;
  *(v76 + 32) = KeyPath;
  *(v76 + 40) = v72;
  *(v76 + 48) = 0;
  sub_EB68(v88, &qword_4033F0, &qword_321EE8);
  sub_E2130(v63, v65, v71, v69, KeyPath);
  return sub_EB68(v74, &qword_4033F0, &qword_321EE8);
}

uint64_t sub_10830C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_305AA8();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4033E0, &unk_321EC8);
  return sub_10788C(v4, a2 + *(v5 + 44));
}

unint64_t sub_108364()
{
  result = qword_401E78;
  if (!qword_401E78)
  {
    sub_3055F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E78);
  }

  return result;
}

unint64_t sub_1083BC()
{
  result = qword_401EE8;
  if (!qword_401EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401EE0, &qword_321EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401EE8);
  }

  return result;
}

uint64_t sub_108448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170, &unk_321DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1084FC()
{
  sub_111AE0();
  result = sub_30C978();
  v1 = 11.0;
  if (result)
  {
    v1 = 14.0;
  }

  qword_403410 = *&v1;
  return result;
}

uint64_t sub_108540()
{
  v0 = sub_3071E8();
  __swift_allocate_value_buffer(v0, qword_403418);
  __swift_project_value_buffer(v0, qword_403418);
  return sub_307198();
}

double sub_10859C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3055F8();
  __chkstk_darwin(v4);
  v6 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_305A08();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C0, &qword_3223D8);
  __chkstk_darwin(v64);
  v10 = &v61 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403628, &qword_322408);
  __chkstk_darwin(v65);
  v66 = &v61 - v11;
  v67 = sub_305BD8();
  v84 = 1;
  sub_108C34(&v69);
  v95 = v79;
  v96 = v80;
  v97 = v81;
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v94 = v78;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  v90 = v74;
  v85 = v69;
  v86 = v70;
  v99[10] = v79;
  v99[11] = v80;
  v99[12] = v81;
  v99[6] = v75;
  v99[7] = v76;
  v99[8] = v77;
  v99[9] = v78;
  v99[2] = v71;
  v99[3] = v72;
  v99[4] = v73;
  v99[5] = v74;
  v98 = v82;
  v100 = v82;
  v99[0] = v69;
  v99[1] = v70;
  sub_EB00(&v85, &v68, &qword_4035B8, &qword_3223D0);
  sub_EB68(v99, &qword_4035B8, &qword_3223D0);
  *(&v83[10] + 7) = v95;
  *(&v83[11] + 7) = v96;
  *(&v83[12] + 7) = v97;
  *(&v83[6] + 7) = v91;
  *(&v83[7] + 7) = v92;
  *(&v83[8] + 7) = v93;
  *(&v83[9] + 7) = v94;
  *(&v83[2] + 7) = v87;
  *(&v83[3] + 7) = v88;
  *(&v83[4] + 7) = v89;
  *(&v83[5] + 7) = v90;
  *(v83 + 7) = v85;
  *(&v83[13] + 7) = v98;
  *(&v83[1] + 7) = v86;
  v12 = v84;
  v13 = *(v2 + 40);
  if (*(v2 + 48) != 1)
  {

    v14 = v10;
    v15 = v2;
    v16 = v6;
    v17 = v4;
    v18 = v12;
    v19 = sub_30C7A8();
    v20 = sub_306088();
    v21 = v19;
    v12 = v18;
    v4 = v17;
    v6 = v16;
    v2 = v15;
    v10 = v14;
    sub_304108(v21, &dword_0, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v22 = v61;
    sub_3059F8();
    swift_getAtKeyPath();
    v23 = sub_111DE0(v13, 0);
    (*(v62 + 8))(v22, v63, v23);
    LOBYTE(v13) = v69;
  }

  v24 = *(v4 + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_305B68();
  (*(*(v26 - 8) + 104))(v6 + v24, v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v6 = _Q0;
  if (*(v2 + *(type metadata accessor for TopResultCell(0) + 40)) == 1 && (v13 & 1) != 0)
  {
    v32 = sub_306828();
  }

  else
  {
    v32 = sub_306868();
  }

  v33 = v32;
  sub_1129DC(v6, v10, &type metadata accessor for RoundedRectangle);
  v34 = v64;
  *&v10[*(v64 + 52)] = v33;
  *&v10[*(v34 + 56)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538, &qword_322410);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_315420;
  v36 = sub_3060F8();
  *(v35 + 32) = v36;
  v37 = sub_306118();
  *(v35 + 33) = v37;
  v38 = sub_306108();
  sub_306108();
  if (sub_306108() != v36)
  {
    v38 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v37)
  {
    v38 = sub_306108();
  }

  sub_304FD8();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v66;
  sub_34804(v10, v66, &qword_4035C0, &qword_3223D8);
  v48 = v47 + *(v65 + 36);
  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  v49 = sub_306C58();
  v51 = v50;
  v52 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034E8, &qword_322370) + 36);
  sub_34804(v47, v52, &qword_403628, &qword_322408);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403508, &qword_322380) + 36));
  *v53 = v49;
  v53[1] = v51;
  v54 = v83[0];
  *(a1 + 33) = v83[1];
  *(a1 + 17) = v54;
  v55 = v83[4];
  *(a1 + 97) = v83[5];
  *(a1 + 81) = v55;
  v56 = v83[2];
  *(a1 + 65) = v83[3];
  *(a1 + 49) = v56;
  v57 = v83[8];
  *(a1 + 161) = v83[9];
  *(a1 + 145) = v57;
  v58 = v83[6];
  *(a1 + 129) = v83[7];
  *(a1 + 113) = v58;
  *(a1 + 224) = *(&v83[12] + 15);
  *(a1 + 209) = v83[12];
  result = *&v83[11];
  v60 = v83[10];
  *(a1 + 193) = v83[11];
  *a1 = v67;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 177) = v60;
  return result;
}

uint64_t sub_108C34@<X0>(uint64_t a2@<X8>)
{
  sub_306C58();
  sub_3051F8();
  v3 = v29;
  v4 = v31;
  v5 = v33;
  v6 = v34;
  v42 = 1;
  v41 = v30;
  v40 = v32;
  type metadata accessor for TopResultCell(0);

  sub_11A340(v7, 2, &v23);
  sub_306C58();
  sub_3051F8();
  v46[2] = v25;
  v46[3] = v26;
  v46[4] = v27;
  v8 = v23;
  v9 = v23;
  v46[0] = v23;
  v46[1] = v24;
  v10 = v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v10;
  v11 = v26;
  *(a2 + 128) = v27;
  v12 = v24;
  v13 = v24;
  *(a2 + 64) = v8;
  *(a2 + 80) = v12;
  *(a2 + 200) = v39;
  v48[3] = v11;
  v48[4] = v27;
  v48[2] = v25;
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v17 = v38;
  v45 = 1;
  v44 = v36;
  v43 = v38;
  v18 = v42;
  v19 = v41;
  v20 = v40;
  v47 = v28;
  *a2 = 0;
  *(a2 + 8) = v18;
  *(a2 + 16) = v3;
  *(a2 + 24) = v19;
  *(a2 + 32) = v4;
  *(a2 + 40) = v20;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 144) = v28;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 168) = v14;
  *(a2 + 176) = v15;
  *(a2 + 184) = v16;
  *(a2 + 192) = v17;
  v49 = v28;
  v48[0] = v9;
  v48[1] = v13;
  sub_111C1C(v46, &v22);
  return sub_111C78(v48);
}

uint64_t sub_108DF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_305BA8();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_306008();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_307048();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3071E8();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403528, &qword_322398);
  __chkstk_darwin(v62);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035B0, &qword_3223C8);
  v63 = *(v15 - 8);
  v64 = v15;
  __chkstk_darwin(v15);
  v61 = &v55 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403510, &qword_322388);
  __chkstk_darwin(v66);
  v65 = &v55 - v17;
  v60 = sub_305BD8();
  v90 = 1;
  sub_10969C(&v75);
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v97 = v81;
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v93 = v77;
  v94 = v78;
  v95 = v79;
  v96 = v80;
  v91 = v75;
  v92 = v76;
  v105[10] = v85;
  v105[11] = v86;
  v105[12] = v87;
  v105[6] = v81;
  v105[7] = v82;
  v105[8] = v83;
  v105[9] = v84;
  v105[2] = v77;
  v105[3] = v78;
  v105[4] = v79;
  v105[5] = v80;
  v104 = v88;
  v106 = v88;
  v105[0] = v75;
  v105[1] = v76;
  sub_EB00(&v91, v74, &qword_4035B8, &qword_3223D0);
  sub_EB68(v105, &qword_4035B8, &qword_3223D0);
  *(&v89[10] + 7) = v101;
  *(&v89[11] + 7) = v102;
  *(&v89[12] + 7) = v103;
  *(&v89[6] + 7) = v97;
  *(&v89[7] + 7) = v98;
  *(&v89[8] + 7) = v99;
  *(&v89[9] + 7) = v100;
  *(&v89[2] + 7) = v93;
  *(&v89[3] + 7) = v94;
  *(&v89[4] + 7) = v95;
  *(&v89[5] + 7) = v96;
  v18 = v2;
  *(v89 + 7) = v91;
  *(&v89[13] + 7) = v104;
  *(&v89[1] + 7) = v92;
  v19 = v90;
  type metadata accessor for TopResultCell(0);
  LOBYTE(v75) = 1;
  sub_307028();
  v20 = [objc_opt_self() currentTraitCollection];
  sub_1098AC(v20, v12);

  (*(v58 + 8))(v9, v59);
  sub_3071B8();
  (*(v56 + 8))(v12, v57);
  sub_306C58();
  sub_3051F8();
  v21 = v62;
  v22 = &v14[*(v62 + 36)];
  v23 = *(sub_3055F8() + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_305B68();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #10.0 }

  *v22 = _Q0;
  v31 = [objc_opt_self() quaternarySystemFillColor];
  v32 = sub_30D058();

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C0, &qword_3223D8);
  *&v22[*(v33 + 52)] = v32;
  *&v22[*(v33 + 56)] = 256;
  v34 = sub_306C58();
  v36 = v35;
  v37 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403550, &qword_3223A8) + 36)];
  *v37 = v34;
  v37[1] = v36;
  v38 = v89[0];
  *(v14 + 33) = v89[1];
  *(v14 + 17) = v38;
  v39 = v89[4];
  *(v14 + 97) = v89[5];
  *(v14 + 81) = v39;
  v40 = v89[2];
  *(v14 + 65) = v89[3];
  *(v14 + 49) = v40;
  v41 = v89[8];
  *(v14 + 161) = v89[9];
  *(v14 + 145) = v41;
  v42 = v89[6];
  *(v14 + 129) = v89[7];
  *(v14 + 113) = v42;
  v43 = v75;
  v44 = v76;
  *(v14 + 14) = *(&v89[12] + 15);
  *(v14 + 15) = v43;
  *(v14 + 209) = v89[12];
  v45 = v89[10];
  *(v14 + 193) = v89[11];
  *(v14 + 177) = v45;
  *v14 = v60;
  *(v14 + 1) = 0;
  v14[16] = v19;
  v46 = v77;
  *(v14 + 16) = v44;
  *(v14 + 17) = v46;
  v47 = v67;
  sub_305FE8();
  v48 = sub_11121C();
  v49 = v61;
  sub_306738();
  (*(v68 + 8))(v47, v69);
  sub_EB68(v14, &qword_403528, &qword_322398);
  v50 = v70;
  sub_305B88();
  v74[0] = v21;
  v74[1] = v48;
  swift_getOpaqueTypeConformance2();
  v51 = v64;
  v52 = v65;
  sub_306758();
  (*(v71 + 8))(v50, v72);
  v53 = (*(v63 + 8))(v49, v51);
  __chkstk_darwin(v53);
  *(&v55 - 2) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403518, &qword_322390);
  sub_111124();
  sub_11138C();
  sub_306728();
  return sub_EB68(v52, &qword_403510, &qword_322388);
}

uint64_t sub_10969C@<X0>(uint64_t a2@<X8>)
{
  if (qword_3FAAB8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_3051F8();
  v3 = v36;
  v4 = v38;
  v5 = v40;
  v6 = v41;
  v49 = 1;
  v48 = v37;
  v47 = v39;
  type metadata accessor for TopResultCell(0);
  sub_309418();
  v7 = swift_dynamicCastClass() == 0;

  sub_11A340(v8, v7, &v23);
  sub_306C58();
  sub_3051F8();
  v9 = v24;
  v32[2] = v25;
  v32[3] = v26;
  v32[4] = v27;
  v10 = v23;
  v32[0] = v23;
  v32[1] = v24;
  v11 = v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v11;
  v12 = v26;
  *(a2 + 128) = v27;
  v13 = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v13;
  *(a2 + 200) = v46;
  v34[3] = v12;
  v34[4] = v27;
  v34[2] = v25;
  v14 = v42;
  v15 = v43;
  v16 = v44;
  v17 = v45;
  v31 = 1;
  v30 = v43;
  v29 = v45;
  v18 = v49;
  v19 = v48;
  v20 = v47;
  v33 = v28;
  *a2 = 0;
  *(a2 + 8) = v18;
  *(a2 + 16) = v3;
  *(a2 + 24) = v19;
  *(a2 + 32) = v4;
  *(a2 + 40) = v20;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 144) = v28;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 168) = v14;
  *(a2 + 176) = v15;
  *(a2 + 184) = v16;
  *(a2 + 192) = v17;
  v35 = v28;
  v34[0] = v10;
  v34[1] = v9;
  sub_111C1C(v32, v22);
  return sub_111C78(v34);
}

uint64_t sub_1098AC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_307038();
  v5 = sub_3070F8();
  v7 = v6;
  if (v5 == sub_3070F8() && v7 == v8)
  {

    goto LABEL_6;
  }

  v9 = sub_30D728();

  if ((v9 & 1) != 0 || [a1 horizontalSizeClass] == &dword_0 + 2)
  {
LABEL_6:
    v10 = [a1 preferredContentSizeCategory];
    v11 = sub_30C0D8();
    v13 = v12;
    if (v11 != sub_30C0D8() || v13 != v14)
    {
      v16 = sub_30D728();

      if (v16)
      {
        goto LABEL_33;
      }

      v18 = sub_30C0D8();
      v20 = v19;
      if (v18 != sub_30C0D8() || v20 != v21)
      {
        v25 = sub_30D728();

        if (v25)
        {
          goto LABEL_33;
        }

        v26 = sub_30C0D8();
        v28 = v27;
        if (v26 != sub_30C0D8() || v28 != v29)
        {
          v30 = sub_30D728();

          if (v30)
          {
            goto LABEL_33;
          }

          v31 = sub_30C0D8();
          v33 = v32;
          if (v31 != sub_30C0D8() || v33 != v34)
          {
            v35 = sub_30D728();

            if (v35)
            {
LABEL_33:

              goto LABEL_13;
            }

            v36 = sub_30C0D8();
            v38 = v37;
            if (v36 != sub_30C0D8() || v38 != v39)
            {
              sub_30D728();

              goto LABEL_13;
            }
          }
        }
      }
    }

LABEL_13:

    return sub_307198();
  }

  if (qword_3FAAC0 != -1)
  {
    swift_once();
  }

  v22 = sub_3071E8();
  v23 = __swift_project_value_buffer(v22, qword_403418);
  v24 = *(*(v22 - 8) + 16);

  return v24(a2, v23, v22);
}

void sub_109CFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_305A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);

  if ((v9 & 1) == 0)
  {
    v10 = sub_30C7A8();
    v11 = sub_306088();
    sub_304108(v10, &dword_0, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v12;
  }

  type metadata accessor for TopResultCell(0);
  v12 = 0;
  v13 = 1;

  sub_2268C0(v8, &v12, a2);
}

void sub_109E80(uint64_t a2@<X8>)
{
  if (qword_3FAAB8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_305638();
  *&v4[55] = v8;
  *&v4[71] = v9;
  *&v4[87] = v10;
  *&v4[103] = v11;
  *&v4[7] = v5;
  *&v4[23] = v6;
  *&v4[39] = v7;
  type metadata accessor for TopResultCell(0);
  sub_309548();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    sub_111F64();
    sub_111FB8();
    swift_retain_n();

    sub_305D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035E0, &qword_3223F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600, &qword_3223F8);
    sub_111ED8();
    sub_11200C();
    sub_305D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C8, &qword_3223E8);
    sub_111E4C();
    sub_112140();
    sub_305D48();
  }

  else
  {
    sub_309418();
    if (swift_dynamicCastClass())
    {
      sub_111F64();
      sub_111FB8();
      swift_retain_n();
      sub_305D48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035E0, &qword_3223F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600, &qword_3223F8);
      sub_111ED8();
      sub_11200C();
      sub_305D48();
    }

    else
    {
      sub_309A48();
      if (!swift_dynamicCastClass())
      {
        sub_30AA68();
        if (!swift_dynamicCastClass())
        {
          swift_getKeyPath();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C8, &qword_3223E8);
          sub_111E4C();
          sub_112140();
          sub_305D48();
          goto LABEL_12;
        }
      }

      sub_112098();
      sub_1120EC();
      swift_retain_n();
      sub_305D48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035E0, &qword_3223F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600, &qword_3223F8);
      sub_111ED8();
      sub_11200C();
      sub_305D48();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C8, &qword_3223E8);
    sub_111E4C();
    sub_112140();
    sub_305D48();
  }

LABEL_12:
  sub_112D14(v12, *(&v12 + 1), v13, WORD4(v13), SBYTE10(v13));
  sub_306C58();
  sub_305638();
  *&v3[55] = v15;
  *&v3[71] = v16;
  *&v3[87] = v17;
  *&v3[103] = v18;
  *&v3[7] = v12;
  *&v3[23] = v13;
  *&v3[39] = v14;
  sub_112D14(v12, *(&v12 + 1), v13, WORD4(v13), SBYTE10(v13));
  sub_112DD8(v12, *(&v12 + 1), v13, WORD4(v13), SBYTE10(v13));
  *(a2 + 73) = *&v4[64];
  *(a2 + 89) = *&v4[80];
  *(a2 + 105) = *&v4[96];
  *(a2 + 9) = *v4;
  *(a2 + 25) = *&v4[16];
  *(a2 + 41) = *&v4[32];
  *(a2 + 57) = *&v4[48];
  *(a2 + 233) = *&v3[64];
  *(a2 + 249) = *&v3[80];
  *(a2 + 265) = *&v3[96];
  *(a2 + 169) = *v3;
  *(a2 + 185) = *&v3[16];
  *(a2 + 201) = *&v3[32];
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 120) = *(&v11 + 1);
  *(a2 + 128) = v12;
  *(a2 + 144) = v13;
  *(a2 + 152) = WORD4(v13);
  *(a2 + 154) = BYTE10(v13);
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  *(a2 + 280) = *(&v18 + 1);
  *(a2 + 217) = *&v3[48];
  sub_112DD8(v12, *(&v12 + 1), v13, WORD4(v13), SBYTE10(v13));
}

uint64_t sub_10A61C@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403468, &qword_322308);
  __chkstk_darwin(v89);
  v2 = &v77 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403470, &qword_322310);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v88 = &v77 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403478, &qword_322318);
  __chkstk_darwin(v93);
  v92 = (&v77 - v5);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403480, &qword_322320);
  __chkstk_darwin(v107);
  v94 = &v77 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403488, &qword_322328);
  __chkstk_darwin(v105);
  v106 = &v77 - v7;
  v8 = sub_305A78();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v84 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403490, &qword_322330);
  __chkstk_darwin(v99);
  v87 = &v77 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403498, &qword_322338);
  __chkstk_darwin(v97);
  v98 = &v77 - v11;
  v12 = sub_3071E8();
  v102 = *(v12 - 8);
  v103 = v12;
  __chkstk_darwin(v12);
  v100 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_305BA8();
  v14 = *(v101 - 8);
  __chkstk_darwin(v101);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_306008();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034A0, &qword_322340);
  v78 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v77 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034A8, &qword_322348);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v25 = &v77 - v24;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034B0, &qword_322350);
  __chkstk_darwin(v81);
  v80 = &v77 - v26;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034B8, &qword_322358);
  __chkstk_darwin(v95);
  v83 = &v77 - v27;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034C0, &qword_322360);
  __chkstk_darwin(v104);
  v96 = &v77 - v28;
  if (sub_303098())
  {
    v93 = v17;
    v94 = v16;
    v92 = v14;
    v29 = type metadata accessor for TopResultCell(0);
    if (*(v109 + *(v29 + 36)) == 1 && ((v30 = v29, sub_111AE0(), (sub_30C978() & 1) != 0) || (v31 = [objc_opt_self() currentTraitCollection], v32 = v30, v33 = objc_msgSend(v31, "horizontalSizeClass"), v31, v34 = v33 == &dword_0 + 2, v30 = v32, v34)))
    {
      v91 = v30;
      sub_108DF8(v23);
      sub_305FE8();
      v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510, &qword_322388);
      v36 = v25;
      v37 = v21;
      v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
      v109 = v38;
      v39 = sub_111124();
      v90 = sub_11138C();
      *&v115[0] = v35;
      *(&v115[0] + 1) = v38;
      *&v115[1] = v39;
      *(&v115[1] + 1) = v90;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_306738();
      (*(v18 + 8))(v20, v93);
      (*(v78 + 8))(v23, v37);
      v41 = v94;
      sub_305B88();
      *&v115[0] = v37;
      *(&v115[0] + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v42 = v80;
      v43 = v82;
      sub_306758();
      v92[1](v41, v101);
      v44 = (*(v79 + 8))(v36, v43);
      __chkstk_darwin(v44);
      sub_1116A4();
      v45 = v83;
      sub_306728();
      sub_EB68(v42, &qword_4034B0, &qword_322350);
      v46 = [objc_opt_self() currentTraitCollection];
      v47 = v100;
      sub_1098AC(v46, v100);

      sub_3071B8();
      (*(v102 + 8))(v47, v103);
      sub_306C58();
      sub_3051F8();
      v48 = (v45 + *(v95 + 36));
      v49 = v115[1];
      *v48 = v115[0];
      v48[1] = v49;
      v48[2] = v115[2];
      v50 = &qword_4034B8;
      v51 = &qword_322358;
      sub_EB00(v45, v98, &qword_4034B8, &qword_322358);
      swift_storeEnumTagMultiPayload();
      sub_1115B0();
      sub_11180C();
      v52 = v96;
      sub_305D48();
      v53 = v45;
    }

    else
    {
      v69 = sub_305BD8();
      v112 = 1;
      sub_109E80(v115);
      memcpy(v113, v115, sizeof(v113));
      memcpy(v114, v115, sizeof(v114));
      sub_EB00(v113, v110, &qword_4035A8, &qword_3223B8);
      sub_EB68(v114, &qword_4035A8, &qword_3223B8);
      memcpy(&v111[7], v113, 0x120uLL);
      v110[0] = v69;
      v110[1] = 0;
      LOBYTE(v110[2]) = v112;
      memcpy(&v110[2] + 1, v111, 0x127uLL);
      v70 = v84;
      v71 = sub_305A68();
      __chkstk_darwin(v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403588, &qword_3223B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB800, &qword_317438);
      sub_EC8C(&qword_403590, &qword_403588, &qword_3223B0, &protocol conformance descriptor for VStack<A>);
      sub_111934();
      v72 = v87;
      sub_306598();
      (*(v85 + 8))(v70, v86);
      memcpy(v115, v110, 0x138uLL);
      sub_EB68(v115, &qword_403588, &qword_3223B0);
      KeyPath = swift_getKeyPath();
      v74 = v98;
      v75 = v72 + *(v99 + 36);
      *v75 = KeyPath;
      *(v75 + 8) = 0;
      *(v75 + 16) = 0;
      v50 = &qword_403490;
      v51 = &qword_322330;
      sub_EB00(v72, v74, &qword_403490, &qword_322330);
      swift_storeEnumTagMultiPayload();
      sub_1115B0();
      sub_11180C();
      v52 = v96;
      sub_305D48();
      v53 = v72;
    }

    sub_EB68(v53, v50, v51);
    v66 = &qword_4034C0;
    v67 = &qword_322360;
    sub_EB00(v52, v106, &qword_4034C0, &qword_322360);
    swift_storeEnumTagMultiPayload();
    sub_111524();
    sub_1119E4();
    sub_305D48();
    v68 = v52;
  }

  else
  {
    sub_10BAF0(v109);
    sub_305FE8();
    v54 = sub_110EC0();
    v56 = v88;
    v55 = v89;
    sub_306738();
    (*(v18 + 8))(v20, v17);
    sub_EB68(v2, &qword_403468, &qword_322308);
    sub_305B88();
    *&v115[0] = v55;
    *(&v115[0] + 1) = v54;
    swift_getOpaqueTypeConformance2();
    v57 = v91;
    v58 = v92;
    sub_306758();
    v14[1](v16, v101);
    v59 = (*(v90 + 8))(v56, v57);
    __chkstk_darwin(v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403518, &qword_322390);
    sub_11142C();
    sub_11138C();
    v60 = v94;
    sub_306728();
    sub_EB68(v58, &qword_403478, &qword_322318);
    type metadata accessor for TopResultCell(0);
    v61 = [objc_opt_self() currentTraitCollection];
    v62 = v100;
    sub_1098AC(v61, v100);

    sub_3071B8();
    (*(v102 + 8))(v62, v103);
    sub_306C58();
    sub_3051F8();
    v63 = v106;
    v64 = (v60 + *(v107 + 36));
    v65 = v115[1];
    *v64 = v115[0];
    v64[1] = v65;
    v64[2] = v115[2];
    v66 = &qword_403480;
    v67 = &qword_322320;
    sub_EB00(v60, v63, &qword_403480, &qword_322320);
    swift_storeEnumTagMultiPayload();
    sub_111524();
    sub_1119E4();
    sub_305D48();
    v68 = v60;
  }

  return sub_EB68(v68, v66, v67);
}

uint64_t sub_10B5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TopResultCell(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD678, &qword_3223E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808, &qword_317440);
  v13.n128_f64[0] = __chkstk_darwin(v11);
  v15 = &v27 - v14;
  if (*(a1 + *(v5 + 44)) == 1)
  {
    v27 = v6;
    v28 = v12;
    v16 = [objc_opt_self() mainBundle];
    v26._countAndFlagsBits = 0xE000000000000000;
    v32._object = 0x800000000033B2A0;
    v32._countAndFlagsBits = 0xD00000000000001DLL;
    v33.value._countAndFlagsBits = 0;
    v33.value._object = 0;
    v17.super.isa = v16;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v18 = sub_301AB8(v32, v33, v17, v34, 0, v26);
    v20 = v19;

    v29 = v18;
    v30 = v20;
    sub_304FA8();
    v21 = sub_304FC8();
    (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
    sub_112A8C(a1, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopResultCell);
    v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v23 = swift_allocObject();
    sub_1129DC(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for TopResultCell);
    sub_E504();
    sub_306A78();
    (*(v28 + 32))(a2, v15, v11);
    return (*(v28 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v25 = *(v12 + 56);

    return v25(a2, 1, 1, v11, v13);
  }
}

double sub_10B968(uint64_t a1)
{
  v2 = sub_305A08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);

  if ((v6 & 1) == 0)
  {
    v7 = sub_30C7A8();
    v8 = sub_306088();
    sub_304108(v7, &dword_0, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_30A5A8();
  sub_30B8E8();

  type metadata accessor for TopResultCell(0);
  sub_30A598();

  return result;
}

uint64_t sub_10BAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034A0, &qword_322340);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403620, &qword_322400);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034E8, &qword_322370);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  if (*(a1 + *(type metadata accessor for TopResultCell(0) + 40)) == 1)
  {
    sub_10859C(v11);
    sub_EB00(v11, v8, &qword_4034E8, &qword_322370);
    swift_storeEnumTagMultiPayload();
    sub_111040();
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510, &qword_322388);
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
    v14 = sub_111124();
    v15 = sub_11138C();
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    swift_getOpaqueTypeConformance2();
    sub_305D48();
    return sub_EB68(v11, &qword_4034E8, &qword_322370);
  }

  else
  {
    sub_108DF8(v5);
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_111040();
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510, &qword_322388);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
    v19 = sub_111124();
    v20 = sub_11138C();
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    swift_getOpaqueTypeConformance2();
    sub_305D48();
    return (*(v3 + 8))(v5, v2);
  }
}

double sub_10BE2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_305A08();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58, &qword_3223C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_309778();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v31 = &v30 - v15;
  type metadata accessor for TopResultCell(0);
  sub_309548();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  swift_retain_n();
  sub_309758();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_EB68(v9, &qword_3FEA58, &qword_3223C0);
LABEL_4:
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  (*(v11 + 32))(v31, v9, v10);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);

  if ((v18 & 1) == 0)
  {
    v19 = sub_30C7A8();
    v20 = sub_306088();
    sub_304108(v19, &dword_0, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v30 + 8))(v6, v4);
    v17 = v32;
  }

  (*(v11 + 16))(v13, v31, v10);
  *&v36 = 0;
  *v33 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60, &qword_3174B0);

  sub_30B8E8();
  *&v33[8] = v32;
  sub_309728();
  *(&v36 + 1) = 0;
  v37 = 1;
  v21 = sub_309738();
  if (v23 == -1)
  {
  }

  else
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0, &qword_317C30);
    sub_30B9A8();
    sub_30BE78();

    *&v36 = sub_303AF8();
    sub_303AE8();

    sub_E1BCC(v24, v25, v26);
  }

  v27 = *(v11 + 8);
  v27(v13, v10);
  v27(v31, v10);
  v28 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v28;
  *(a2 + 64) = v36;
  *(a2 + 80) = v37;
  result = *v33;
  v29 = *&v33[16];
  *a2 = *v33;
  *(a2 + 16) = v29;
  return result;
}

uint64_t sub_10C2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  v6 = type metadata accessor for TopResultCell(0);
  v7 = v6[7];
  v8 = sub_307048();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a3 + v7, a1, v8);
  *(a3 + v6[8]) = a2;

  sub_307038();
  v10 = sub_3070F8();
  v12 = v11;
  if (v10 == sub_3070F8() && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_30D728();
  }

  *(a3 + v6[9]) = v14 & 1;
  sub_307038();
  v15 = sub_3070F8();
  v17 = v16;
  if (v15 == sub_3070F8() && v17 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_30D728();
  }

  result = (*(v9 + 8))(a1, v8);
  *(a3 + v6[10]) = v19 & 1;
  return result;
}

uint64_t sub_10C4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_112A44(&qword_403630, type metadata accessor for TopResultCell, &unk_322240);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_10C54C(double a1)
{
  sub_307038();
  v1 = sub_3070F8();
  v3 = v2;
  if (v1 == sub_3070F8() && v3 == v4)
  {
  }

  else
  {
    v5 = sub_30D728();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_307238())
  {
    return 0;
  }

  return 0x4024000000000000;
}

uint64_t sub_10C618(double a1)
{
  if (sub_307038() == 64)
  {
    return sub_307248() & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_10C66C@<X0>(uint64_t a5@<X8>)
{
  v6 = sub_305BD8();
  v13 = 1;
  sub_10C784(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_EB00(__dst, v10, &qword_403800, &qword_322A48);
  sub_EB68(v15, &qword_403800, &qword_322A48);
  memcpy(&v12[7], __dst, 0x120uLL);
  v7 = v13;
  KeyPath = swift_getKeyPath();
  *a5 = v6;
  *(a5 + 8) = 0;
  *(a5 + 16) = v7;
  result = memcpy((a5 + 17), v12, 0x127uLL);
  *(a5 + 312) = KeyPath;
  *(a5 + 320) = 0;
  *(a5 + 328) = 0;
  return result;
}

void sub_10C784(uint64_t a3@<X8>)
{
  if (qword_3FAAB8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_305638();
  *&v5[55] = v9;
  *&v5[71] = v10;
  *&v5[87] = v11;
  *&v5[103] = v12;
  *&v5[7] = v6;
  *&v5[23] = v7;
  *&v5[39] = v8;
  sub_309548();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    sub_111F64();
    sub_112C6C();
    swift_retain_n();

    sub_305D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403820, &qword_322A58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600, &qword_3223F8);
    sub_112BE0();
    sub_11200C();
    sub_305D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403808, &qword_322A50);
    sub_112B54();
    sub_112CC0();
    sub_305D48();
  }

  else
  {
    sub_309418();
    if (swift_dynamicCastClass())
    {
      sub_111F64();
      sub_112C6C();
      swift_retain_n();
      sub_305D48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403820, &qword_322A58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600, &qword_3223F8);
      sub_112BE0();
      sub_11200C();
      sub_305D48();
    }

    else
    {
      sub_309A48();
      if (!swift_dynamicCastClass())
      {
        sub_30AA68();
        if (!swift_dynamicCastClass())
        {
          swift_getKeyPath();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403808, &qword_322A50);
          sub_112B54();
          sub_112CC0();
          sub_305D48();
          goto LABEL_12;
        }
      }

      sub_112098();
      sub_1120EC();
      swift_retain_n();
      sub_305D48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403820, &qword_322A58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600, &qword_3223F8);
      sub_112BE0();
      sub_11200C();
      sub_305D48();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403808, &qword_322A50);
    sub_112B54();
    sub_112CC0();
    sub_305D48();
  }

LABEL_12:
  sub_112D14(v13, *(&v13 + 1), v14, WORD4(v14), SBYTE10(v14));
  sub_306C58();
  sub_305638();
  *&v4[55] = v16;
  *&v4[71] = v17;
  *&v4[87] = v18;
  *&v4[103] = v19;
  *&v4[7] = v13;
  *&v4[23] = v14;
  *&v4[39] = v15;
  sub_112D14(v13, *(&v13 + 1), v14, WORD4(v14), SBYTE10(v14));
  sub_112DD8(v13, *(&v13 + 1), v14, WORD4(v14), SBYTE10(v14));
  *(a3 + 73) = *&v5[64];
  *(a3 + 89) = *&v5[80];
  *(a3 + 105) = *&v5[96];
  *(a3 + 9) = *v5;
  *(a3 + 25) = *&v5[16];
  *(a3 + 41) = *&v5[32];
  *(a3 + 57) = *&v5[48];
  *(a3 + 233) = *&v4[64];
  *(a3 + 249) = *&v4[80];
  *(a3 + 265) = *&v4[96];
  *(a3 + 169) = *v4;
  *(a3 + 185) = *&v4[16];
  *(a3 + 201) = *&v4[32];
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 120) = *(&v12 + 1);
  *(a3 + 128) = v13;
  *(a3 + 144) = v14;
  *(a3 + 152) = WORD4(v14);
  *(a3 + 154) = BYTE10(v14);
  *(a3 + 160) = 0;
  *(a3 + 168) = 1;
  *(a3 + 280) = *(&v19 + 1);
  *(a3 + 217) = *&v4[48];
  sub_112DD8(v13, *(&v13 + 1), v14, WORD4(v14), SBYTE10(v14));
}

uint64_t sub_10CF28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_307048();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *a2;
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10CFAC(uint64_t a1, uint64_t *a2)
{
  sub_309548();
  if (swift_dynamicCastClass())
  {
    return 2;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_112E9C();

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

id sub_10D054(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  v9 = [objc_opt_self() bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, 16.0}];
  [v8 setVisiblePath:v9];

  v10 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor:v10];

  return v8;
}

uint64_t sub_10D13C@<X0>(uint64_t a1@<X8>)
{
  if (qword_3FAAC0 != -1)
  {
    swift_once();
  }

  v2 = sub_3071E8();
  v3 = __swift_project_value_buffer(v2, qword_403418);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10D1E4()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 256;
  (*(v8 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

unint64_t sub_10D368()
{
  result = qword_403430;
  if (!qword_403430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403430);
  }

  return result;
}

unint64_t sub_10D3BC()
{
  result = qword_403438;
  if (!qword_403438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403438);
  }

  return result;
}

uint64_t type metadata accessor for TopResultCell(uint64_t a1)
{
  result = qword_403690;
  if (!qword_403690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10D5E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v40 = a4;
  v6 = sub_306008();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403708, &qword_322910);
  __chkstk_darwin(v34);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403710, &qword_322918);
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  __chkstk_darwin(v11);
  v31 = &v29 - v13;
  v14 = sub_305088();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403718, &qword_322920);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v19 = &v29 - v18;
  sub_305078();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = a2 & 1;
  *(v20 + 24) = v21;
  v22 = v32;
  *(v20 + 32) = v32;
  v29 = a1;

  v30 = v19;
  sub_306B58();

  (*(v15 + 8))(v17, v14);
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403720, &qword_322928);
  sub_10DC20(a1, v21, v22, v19, &v10[*(v23 + 44)]);
  sub_305FE8();
  v24 = sub_EC8C(&qword_403728, &qword_403708, &qword_322910, &protocol conformance descriptor for HStack<A>);
  v25 = v31;
  v26 = v34;
  sub_306738();
  (*(v36 + 8))(v8, v37);
  sub_EB68(v10, &qword_403708, &qword_322910);
  v41 = v29;
  v42 = v21;
  v43 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403518, &qword_322390);
  v44 = v26;
  v45 = v24;
  swift_getOpaqueTypeConformance2();
  sub_11138C();
  v27 = v38;
  sub_306728();
  (*(v39 + 8))(v25, v27);
  return (*(v33 + 8))(v30, v35);
}

double sub_10DAA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = sub_305A08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    v9 = sub_30C7A8();
    v10 = sub_306088();
    sub_304108(v9, &dword_0, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  sub_30A5A8();
  sub_30B8E8();

  sub_30A578();

  return result;
}

uint64_t sub_10DC20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a4;
  LODWORD(v6) = a2;
  v101 = a5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403730, &qword_322930);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403738, &unk_322938);
  __chkstk_darwin(v9 - 8);
  v100 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50, &qword_31C110);
  __chkstk_darwin(v13 - 8);
  v88 = &v80 - v14;
  v102 = type metadata accessor for TranscriptSearchResultView(0);
  __chkstk_darwin(v102);
  v87 = (&v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403740, &qword_322948);
  __chkstk_darwin(v92);
  v93 = (&v80 - v16);
  v91 = sub_305A08();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401718, &qword_322950);
  __chkstk_darwin(v18 - 8);
  v20 = &v80 - v19;
  v21 = sub_301A78();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v80 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403748, &qword_322958);
  __chkstk_darwin(v28 - 8);
  v94 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v103 = &v80 - v31;
  swift_retain_n();
  sub_3094C8();
  v32 = (*(v22 + 48))(v20, 1, v21);

  if (v32 == 1)
  {
    sub_EB68(v20, &qword_401718, &qword_322950);

    if ((v6 & 1) == 0)
    {
      v34 = sub_30C7A8();
      v35 = sub_306088();
      sub_304108(v34, &dword_0, v35, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v36 = v89;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v90 + 8))(v36, v91);
      v33 = v106[0];
    }

    sub_103D78(v33, a3, v107);
    v37 = v107[1];
    v38 = v93;
    *v93 = v107[0];
    v38[1] = v37;
    v38[2] = v107[2];
    swift_storeEnumTagMultiPayload();
    sub_112A44(&qword_403750, type metadata accessor for TranscriptSearchResultView, &unk_3235CC);
    sub_1127E8();
    sub_305D48();
  }

  else
  {
    v84 = v24;
    v39 = v27;
    v40 = v22;
    v41 = *(v22 + 32);
    v42 = v39;
    v43 = v21;
    v41();

    v44 = a1;
    v85 = v6;
    if ((v6 & 1) == 0)
    {
      v45 = sub_30C7A8();
      v46 = sub_306088();
      sub_304108(v45, &dword_0, v46, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v47 = v89;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v90 + 8))(v47, v91);
      v44 = v106[0];
    }

    v82 = v40;
    v48 = *(v40 + 16);
    v49 = v84;
    v83 = v42;
    v50 = v43;
    v81 = v43;
    v48(v84, v42, v43);
    v51 = v87;
    *v87 = v44;
    v51[3] = a3;
    v48(v51 + *(v102 + 28), v49, v50);
    sub_30A478();
    v52 = sub_303748();
    v53 = v88;
    (*(*(v52 - 8) + 56))(v88, 1, 1, v52);
    v6 = enum case for EyebrowBuilder.ListContext.episodeSearchResult(_:);
    v54 = sub_3033A8();
    v55 = *(v54 - 8);
    v86 = a1;
    v56 = v55;
    (*(v55 + 104))(v53, v6, v54);
    (*(v56 + 56))(v53, 0, 1, v54);

    sub_30A458();
    sub_112A44(&qword_3FEC58, &type metadata accessor for EpisodeCaptionGenerator, &protocol conformance descriptor for EpisodeCaptionGenerator);
    v57 = sub_3053C8();
    v59 = v58;
    v60 = *(v82 + 8);
    v61 = v49;
    v62 = v81;
    v60(v61, v81);
    v51[1] = v57;
    v51[2] = v59;
    a1 = v86;
    sub_112A8C(v51, v93, type metadata accessor for TranscriptSearchResultView);
    swift_storeEnumTagMultiPayload();
    sub_112A44(&qword_403750, type metadata accessor for TranscriptSearchResultView, &unk_3235CC);
    sub_1127E8();
    sub_305D48();
    sub_112AF4(v51, type metadata accessor for TranscriptSearchResultView);
    v60(v83, v62);
    LOBYTE(v6) = v85;
  }

  if ((v6 & 1) == 0)
  {
    v63 = sub_30C7A8();
    v64 = sub_306088();
    sub_304108(v63, &dword_0, v64, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v65 = v89;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v90 + 8))(v65, v91);
    a1 = v106[0];
  }

  v104 = 0;
  v105 = 1;
  sub_2268C0(a1, &v104, v106);
  sub_3050D8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403518, &qword_322390);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403718, &qword_322920);
  v68 = sub_11138C();
  v69 = sub_EC8C(&qword_403760, &qword_403718, &qword_322920, &protocol conformance descriptor for _EndedGesture<A>);
  v70 = v96;
  sub_306718();
  sub_EB68(v106, &qword_403518, &qword_322390);
  v106[0] = v66;
  v106[1] = v67;
  v106[2] = v68;
  v106[3] = v69;
  swift_getOpaqueTypeConformance2();
  v71 = v99;
  v72 = v98;
  sub_3066F8();
  (*(v97 + 8))(v70, v72);
  v73 = v103;
  v74 = v94;
  sub_EB00(v103, v94, &qword_403748, &qword_322958);
  v75 = v100;
  sub_EB00(v71, v100, &qword_403738, &unk_322938);
  v76 = v101;
  sub_EB00(v74, v101, &qword_403748, &qword_322958);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403768, &qword_322960);
  v78 = v76 + *(v77 + 48);
  *v78 = 0;
  *(v78 + 8) = 1;
  sub_EB00(v75, v76 + *(v77 + 64), &qword_403738, &unk_322938);
  sub_EB68(v71, &qword_403738, &unk_322938);
  sub_EB68(v73, &qword_403748, &qword_322958);
  sub_EB68(v75, &qword_403738, &unk_322938);
  return sub_EB68(v74, &qword_403748, &qword_322958);
}

void sub_10E8A8(uint64_t a1@<X0>, char a2@<W1>, uint64_t x8_0@<X8>)
{
  v7 = sub_305A08();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v11 = sub_30C7A8();
    v12 = sub_306088();
    sub_304108(v11, &dword_0, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    a1 = v13;
  }

  v13 = 0;
  v14 = 1;

  sub_2268C0(a1, &v13, x8_0);
}

uint64_t sub_10EA34@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a4@<X8>)
{
  v80 = a2;
  v79 = a1;
  v94 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037E0, &unk_3229C0);
  __chkstk_darwin(v4 - 8);
  v83 = &v74 - v5;
  v6 = sub_309D48();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v74 - v9;
  __chkstk_darwin(v10);
  v88 = &v74 - v11;
  v93 = type metadata accessor for SearchResultFollowButton(0);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440, &qword_318C30);
  __chkstk_darwin(v13 - 8);
  v84 = &v74 - v14;
  v76 = sub_305A08();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037E8, &qword_3229D0);
  __chkstk_darwin(v16 - 8);
  v92 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v86 = &v74 - v19;
  __chkstk_darwin(v20);
  v90 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v22 - 8);
  v24 = &v74 - v23;
  v25 = type metadata accessor for StandardSearchResultView(0);
  v26 = (v25 - 8);
  __chkstk_darwin(v25);
  v89 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v74 - v29;
  __chkstk_darwin(v31);
  v33 = &v74 - v32;
  sub_307DA8();
  v34 = sub_307D88();
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v38 = sub_11283C();
  if (v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  v42 = sub_307D08();
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v43 = v24;
  v44 = v79;
  sub_34804(v43, &v30[v26[7]], &unk_402FF0, &unk_31EF40);
  v45 = &v30[v26[8]];
  *v45 = v36;
  *(v45 + 1) = v37;
  v46 = &v30[v26[9]];
  *v46 = v40;
  *(v46 + 1) = v41;
  v30[v26[10]] = v42 & 1;
  v85 = v33;
  sub_1129DC(v30, v33, type metadata accessor for StandardSearchResultView);

  if ((v80 & 1) == 0)
  {
    v47 = sub_30C7A8();
    v48 = sub_306088();
    sub_304108(v47, &dword_0, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v49 = v74;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v75 + 8))(v49, v76);
    v44 = v95;
  }

  v50 = sub_307D98();
  sub_307D08();
  v51 = v84;
  sub_307D48();
  v52 = v93;
  v53 = v87;
  v54 = &v87[*(v93 + 36)];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = v52[10];
  *(v53 + v55) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC898, &unk_322A30);
  swift_storeEnumTagMultiPayload();
  *v53 = v50;
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  *(v53 + 24) = v44;
  v56 = v52[6];
  sub_EB00(v51, v53 + v56, &unk_400440, &qword_318C30);

  v57 = v83;
  sub_309D58();
  if ((*(v81 + 48))(v57, 1, v82) == 1)
  {

    sub_EB68(v51, &unk_400440, &qword_318C30);
    sub_EB68(v57, &qword_4037E0, &unk_3229C0);

    sub_EB68(v53 + v56, &unk_400440, &qword_318C30);

    sub_EB68(v53 + v55, &qword_3FF458, &unk_31CE00);
    v58 = v86;
    (*(v91 + 56))(v86, 1, 1, v52);
  }

  else
  {
    v59 = v57;
    v60 = v88;
    sub_1129DC(v59, v88, &type metadata accessor for FollowButtonPresenter.Data);
    v61 = v78;
    sub_112A8C(v60, v78, &type metadata accessor for FollowButtonPresenter.Data);
    sub_112A8C(v61, v77, &type metadata accessor for FollowButtonPresenter.Data);
    sub_306A08();
    sub_112AF4(v61, &type metadata accessor for FollowButtonPresenter.Data);
    sub_303B48();
    sub_30B8E8();

    v95 = 0;
    v96 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 2;
    sub_303B38();

    v62 = (v53 + v52[8]);
    sub_3039F8();
    sub_112A44(&qword_3FF130, &type metadata accessor for PodcastStateMachine, &protocol conformance descriptor for PodcastStateMachine);
    v63 = sub_3053C8();
    v65 = v64;
    sub_112AF4(v88, &type metadata accessor for FollowButtonPresenter.Data);
    sub_EB68(v51, &unk_400440, &qword_318C30);
    *v62 = v63;
    v62[1] = v65;
    v58 = v86;
    sub_112A8C(v53, v86, type metadata accessor for SearchResultFollowButton);
    (*(v91 + 56))(v58, 0, 1, v52);
    sub_112AF4(v53, type metadata accessor for SearchResultFollowButton);
  }

  v66 = v90;
  sub_34804(v58, v90, &qword_4037E8, &qword_3229D0);
  v67 = v85;
  v68 = v89;
  sub_112A8C(v85, v89, type metadata accessor for StandardSearchResultView);
  v69 = v92;
  sub_EB00(v66, v92, &qword_4037E8, &qword_3229D0);
  v70 = v94;
  sub_112A8C(v68, v94, type metadata accessor for StandardSearchResultView);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037F0, &qword_322A40);
  v72 = v70 + *(v71 + 48);
  *v72 = 0;
  *(v72 + 8) = 1;
  sub_EB00(v69, v70 + *(v71 + 64), &qword_4037E8, &qword_3229D0);
  sub_EB68(v66, &qword_4037E8, &qword_3229D0);
  sub_112AF4(v67, type metadata accessor for StandardSearchResultView);
  sub_EB68(v69, &qword_4037E8, &qword_3229D0);
  return sub_112AF4(v68, type metadata accessor for StandardSearchResultView);
}

uint64_t sub_10F45C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v82 = a1;
  v88 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037E0, &unk_3229C0);
  __chkstk_darwin(v3 - 8);
  v80 = &v70 - v4;
  v5 = sub_309D48();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v70 - v8;
  __chkstk_darwin(v9);
  v76 = &v70 - v10;
  v11 = type metadata accessor for SearchResultFollowButton(0);
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440, &qword_318C30);
  __chkstk_darwin(v14 - 8);
  v89 = &v70 - v15;
  v73 = sub_305A08();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037E8, &qword_3229D0);
  __chkstk_darwin(v17 - 8);
  v87 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v81 = &v70 - v20;
  __chkstk_darwin(v21);
  v84 = &v70 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v23 - 8);
  v25 = &v70 - v24;
  v26 = type metadata accessor for StandardSearchResultView(0);
  __chkstk_darwin(v26);
  v83 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v70 - v29;
  __chkstk_darwin(v31);
  v90 = &v70 - v32;
  sub_307DA8();
  v33 = sub_307D88();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0xE000000000000000;
  if (v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v38 = sub_307DE8();
  v86 = v11;
  if (v38)
  {
    if (v38[2])
    {
      v39 = v38[4];
      v36 = v38[5];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_307D08();
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  sub_34804(v25, &v30[v26[5]], &unk_402FF0, &unk_31EF40);
  v41 = &v30[v26[6]];
  *v41 = v35;
  *(v41 + 1) = v37;
  v42 = &v30[v26[7]];
  *v42 = v39;
  *(v42 + 1) = v36;
  v30[v26[8]] = v40 & 1;
  sub_1129DC(v30, v90, type metadata accessor for StandardSearchResultView);
  v43 = v82;

  if ((v77 & 1) == 0)
  {
    v44 = sub_30C7A8();
    v45 = sub_306088();
    sub_304108(v44, &dword_0, v45, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v46 = v71;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v72 + 8))(v46, v73);
    v43 = v91;
  }

  v47 = sub_307D98();
  sub_307D08();
  v48 = v89;
  sub_307D48();
  v49 = v86;
  v50 = &v13[v86[9]];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = v49[10];
  *&v13[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC898, &unk_322A30);
  swift_storeEnumTagMultiPayload();
  *v13 = v47;
  *(v13 + 1) = 0;
  v13[16] = 0;
  *(v13 + 3) = v43;
  v52 = v49[6];
  sub_EB00(v48, &v13[v52], &unk_400440, &qword_318C30);

  v53 = v80;
  sub_309D58();
  if ((*(v78 + 48))(v53, 1, v79) == 1)
  {

    sub_EB68(v89, &unk_400440, &qword_318C30);
    sub_EB68(v53, &qword_4037E0, &unk_3229C0);

    sub_EB68(&v13[v52], &unk_400440, &qword_318C30);

    sub_EB68(&v13[v51], &qword_3FF458, &unk_31CE00);
    v54 = v81;
    (*(v85 + 56))(v81, 1, 1, v49);
  }

  else
  {
    v55 = v53;
    v56 = v76;
    sub_1129DC(v55, v76, &type metadata accessor for FollowButtonPresenter.Data);
    v57 = v75;
    sub_112A8C(v56, v75, &type metadata accessor for FollowButtonPresenter.Data);
    sub_112A8C(v57, v74, &type metadata accessor for FollowButtonPresenter.Data);
    sub_306A08();
    sub_112AF4(v57, &type metadata accessor for FollowButtonPresenter.Data);
    sub_303B48();
    sub_30B8E8();

    v91 = 0;
    v92 = 0;
    v94 = 0;
    v95 = 0;
    v93 = 2;
    sub_303B38();

    v58 = &v13[v49[8]];
    sub_3039F8();
    sub_112A44(&qword_3FF130, &type metadata accessor for PodcastStateMachine, &protocol conformance descriptor for PodcastStateMachine);
    v59 = sub_3053C8();
    v61 = v60;
    sub_112AF4(v56, &type metadata accessor for FollowButtonPresenter.Data);
    sub_EB68(v89, &unk_400440, &qword_318C30);
    *v58 = v59;
    v58[1] = v61;
    v54 = v81;
    sub_112A8C(v13, v81, type metadata accessor for SearchResultFollowButton);
    (*(v85 + 56))(v54, 0, 1, v49);
    sub_112AF4(v13, type metadata accessor for SearchResultFollowButton);
  }

  v62 = v84;
  sub_34804(v54, v84, &qword_4037E8, &qword_3229D0);
  v63 = v90;
  v64 = v83;
  sub_112A8C(v90, v83, type metadata accessor for StandardSearchResultView);
  v65 = v87;
  sub_EB00(v62, v87, &qword_4037E8, &qword_3229D0);
  v66 = v88;
  sub_112A8C(v64, v88, type metadata accessor for StandardSearchResultView);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037F0, &qword_322A40);
  v68 = v66 + *(v67 + 48);
  *v68 = 0;
  *(v68 + 8) = 1;
  sub_EB00(v65, v66 + *(v67 + 64), &qword_4037E8, &qword_3229D0);
  sub_EB68(v62, &qword_4037E8, &qword_3229D0);
  sub_112AF4(v63, type metadata accessor for StandardSearchResultView);
  sub_EB68(v65, &qword_4037E8, &qword_3229D0);
  return sub_112AF4(v64, type metadata accessor for StandardSearchResultView);
}

uint64_t sub_10FE9C@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v4 = sub_306008();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037C8, &qword_3229B0);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037D0, &qword_3229B8);
  a1(v11, v12, v13);
  sub_305FE8();
  sub_EC8C(&qword_4037D8, &qword_4037C8, &qword_3229B0, &protocol conformance descriptor for HStack<A>);
  sub_306738();
  (*(v5 + 8))(v7, v4);
  return sub_EB68(v10, &qword_4037C8, &qword_3229B0);
}

uint64_t sub_11007C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = type metadata accessor for ChannelSearchResultView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_307DA8();
  v14 = sub_307D88();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = [objc_opt_self() mainBundle];
  v28._countAndFlagsBits = 0xE000000000000000;
  v31._object = 0x800000000033B2F0;
  v31._countAndFlagsBits = 0xD000000000000017;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v19.super.isa = v18;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v20 = sub_301AB8(v31, v32, v19, v33, 0, v28);
  v22 = v21;

  sub_34804(v3, v10, &unk_402FF0, &unk_31EF40);
  v23 = &v10[*(v5 + 28)];
  *v23 = v16;
  *(v23 + 1) = v17;
  v24 = &v10[*(v5 + 32)];
  *v24 = v20;
  v24[1] = v22;
  sub_1129DC(v10, v13, type metadata accessor for ChannelSearchResultView);
  sub_112A8C(v13, v7, type metadata accessor for ChannelSearchResultView);
  v25 = v30;
  sub_112A8C(v7, v30, type metadata accessor for ChannelSearchResultView);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403790, &qword_322988) + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_112AF4(v13, type metadata accessor for ChannelSearchResultView);
  return sub_112AF4(v7, type metadata accessor for ChannelSearchResultView);
}

uint64_t sub_110334@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v22 = a3;
  v23 = sub_305BA8();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_306008();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403770, &qword_322968);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403778, &qword_322970);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403780, &unk_322978);
  a2(v20);
  sub_305FE8();
  v15 = sub_EC8C(&qword_403788, &qword_403770, &qword_322968, &protocol conformance descriptor for HStack<A>);
  sub_306738();
  (*(v5 + 8))(v7, v19);
  sub_EB68(v10, &qword_403770, &qword_322968);
  v16 = v18;
  sub_305B88();
  v24 = v8;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  sub_306758();
  (*(v21 + 8))(v16, v23);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_11067C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for ChannelSearchResultView(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_307DA8();
  v15 = sub_307D88();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = sub_307DD8();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v18 = v21;
  }

  sub_34804(v4, v11, &unk_402FF0, &unk_31EF40);
  v23 = &v11[*(v6 + 28)];
  *v23 = v17;
  *(v23 + 1) = v19;
  v24 = &v11[*(v6 + 32)];
  *v24 = v22;
  *(v24 + 1) = v18;
  sub_1129DC(v11, v14, type metadata accessor for ChannelSearchResultView);
  sub_112A8C(v14, v8, type metadata accessor for ChannelSearchResultView);
  sub_112A8C(v8, a1, type metadata accessor for ChannelSearchResultView);
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403790, &qword_322988) + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_112AF4(v14, type metadata accessor for ChannelSearchResultView);
  return sub_112AF4(v8, type metadata accessor for ChannelSearchResultView);
}

uint64_t sub_1108D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = sub_305BA8();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_306008();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403798, &qword_322990);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_305AA8();

  v20 = v12;
  v21 = 0;
  v22 = 1;
  v23 = a1;
  v24 = 0;
  v25 = 1;
  sub_305FE8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037A0, &qword_322998);
  v14 = sub_EC8C(&qword_4037A8, &qword_4037A0, &qword_322998, &protocol conformance descriptor for HStack<A>);
  sub_306738();
  (*(v5 + 8))(v7, v16);

  sub_305B88();
  v20 = v13;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  sub_306758();
  (*(v17 + 8))(v4, v19);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_110BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = sub_305BA8();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_306008();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037B0, &qword_3229A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_305AA8();

  v20 = v12;
  v21 = 0;
  v22 = 1;
  v23 = a1;
  v24 = 0;
  v25 = 1;
  sub_305FE8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037B8, &qword_3229A8);
  v14 = sub_EC8C(&qword_4037C0, &qword_4037B8, &qword_3229A8, &protocol conformance descriptor for HStack<A>);
  sub_306738();
  (*(v5 + 8))(v7, v16);

  sub_305B88();
  v20 = v13;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  sub_306758();
  (*(v17 + 8))(v4, v19);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_110EC0()
{
  result = qword_4034C8;
  if (!qword_4034C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403468, &qword_322308);
    sub_110F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4034C8);
  }

  return result;
}

unint64_t sub_110F44()
{
  result = qword_4034D0;
  if (!qword_4034D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034D8, &qword_322368);
    sub_111040();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510, &qword_322388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
    sub_111124();
    sub_11138C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4034D0);
  }

  return result;
}

unint64_t sub_111040()
{
  result = qword_4034E0;
  if (!qword_4034E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034E8, &qword_322370);
    sub_EC8C(&qword_4034F0, &qword_4034F8, &qword_322378, &protocol conformance descriptor for VStack<A>);
    sub_EC8C(&qword_403500, &qword_403508, &qword_322380, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4034E0);
  }

  return result;
}

unint64_t sub_111124()
{
  result = qword_403520;
  if (!qword_403520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510, &qword_322388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403528, &qword_322398);
    sub_11121C();
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403520);
  }

  return result;
}

unint64_t sub_11121C()
{
  result = qword_403530;
  if (!qword_403530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403528, &qword_322398);
    sub_1112D4();
    sub_EC8C(&qword_403548, &qword_403550, &qword_3223A8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403530);
  }

  return result;
}

unint64_t sub_1112D4()
{
  result = qword_403538;
  if (!qword_403538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403540, &qword_3223A0);
    sub_EC8C(&qword_4034F0, &qword_4034F8, &qword_322378, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403538);
  }

  return result;
}

unint64_t sub_11138C()
{
  result = qword_403558;
  if (!qword_403558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
    sub_E1788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403558);
  }

  return result;
}

unint64_t sub_11142C()
{
  result = qword_403560;
  if (!qword_403560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403478, &qword_322318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403468, &qword_322308);
    sub_110EC0();
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403560);
  }

  return result;
}

unint64_t sub_111524()
{
  result = qword_403568;
  if (!qword_403568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034C0, &qword_322360);
    sub_1115B0();
    sub_11180C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403568);
  }

  return result;
}

unint64_t sub_1115B0()
{
  result = qword_403570;
  if (!qword_403570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034B8, &qword_322358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034B0, &qword_322350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
    sub_1116A4();
    sub_11138C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403570);
  }

  return result;
}

unint64_t sub_1116A4()
{
  result = qword_403578;
  if (!qword_403578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034B0, &qword_322350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034A0, &qword_322340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510, &qword_322388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
    sub_111124();
    sub_11138C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403578);
  }

  return result;
}

unint64_t sub_11180C()
{
  result = qword_403580;
  if (!qword_403580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403490, &qword_322330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403588, &qword_3223B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB800, &qword_317438);
    sub_EC8C(&qword_403590, &qword_403588, &qword_3223B0, &protocol conformance descriptor for VStack<A>);
    sub_111934();
    swift_getOpaqueTypeConformance2();
    sub_F34E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403580);
  }

  return result;
}

unint64_t sub_111934()
{
  result = qword_403598;
  if (!qword_403598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB800, &qword_317438);
    sub_EC8C(&qword_3FB838, &qword_3FB808, &qword_317440, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403598);
  }

  return result;
}

unint64_t sub_1119E4()
{
  result = qword_4035A0;
  if (!qword_4035A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403480, &qword_322320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403478, &qword_322318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
    sub_11142C();
    sub_11138C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035A0);
  }

  return result;
}

unint64_t sub_111AE0()
{
  result = qword_4019C0;
  if (!qword_4019C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4019C0);
  }

  return result;
}

uint64_t sub_111B34()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  if (v1 == &dword_0 + 2)
  {
    sub_307038();
    v2 = sub_3070F8();
    v4 = v3;
    if (v2 == sub_3070F8() && v4 == v5)
    {

      v6 = 0;
    }

    else
    {
      v7 = sub_30D728();

      v6 = v7 ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_111CCC()
{
  v1 = (type metadata accessor for TopResultCell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_7BD8C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  sub_111DE0(*(v0 + v3 + 40), *(v0 + v3 + 48));
  v5 = v1[9];
  v6 = sub_307048();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_111DE0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_111DEC()
{
  v1 = *(type metadata accessor for TopResultCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10B968(v2);
}

unint64_t sub_111E4C()
{
  result = qword_4035D0;
  if (!qword_4035D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4035C8, &qword_3223E8);
    sub_111ED8();
    sub_11200C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035D0);
  }

  return result;
}

unint64_t sub_111ED8()
{
  result = qword_4035D8;
  if (!qword_4035D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4035E0, &qword_3223F0);
    sub_111F64();
    sub_111FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035D8);
  }

  return result;
}

unint64_t sub_111F64()
{
  result = qword_4035E8;
  if (!qword_4035E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035E8);
  }

  return result;
}

unint64_t sub_111FB8()
{
  result = qword_4035F0;
  if (!qword_4035F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035F0);
  }

  return result;
}

unint64_t sub_11200C()
{
  result = qword_4035F8;
  if (!qword_4035F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403600, &qword_3223F8);
    sub_112098();
    sub_1120EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035F8);
  }

  return result;
}

unint64_t sub_112098()
{
  result = qword_403608;
  if (!qword_403608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403608);
  }

  return result;
}

unint64_t sub_1120EC()
{
  result = qword_403610;
  if (!qword_403610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403610);
  }

  return result;
}

unint64_t sub_112140()
{
  result = qword_403618;
  if (!qword_403618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403618);
  }

  return result;
}

uint64_t sub_112200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_307048();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1122D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_307048();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_112390(uint64_t a1)
{
  sub_1068E0(319, &unk_3FEDE8, type metadata accessor for CGSize);
  if (v1 <= 0x3F)
  {
    sub_1068E0(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph);
    if (v2 <= 0x3F)
    {
      sub_1124A4();
      if (v3 <= 0x3F)
      {
        sub_307048();
        if (v4 <= 0x3F)
        {
          sub_307DF8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1124A4()
{
  if (!qword_4036A0)
  {
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_4036A0);
    }
  }
}

uint64_t sub_1124F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11253C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_112590()
{
  result = qword_4036E8;
  if (!qword_4036E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4036F0, &qword_3226A8);
    sub_111524();
    sub_1119E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4036E8);
  }

  return result;
}

unint64_t sub_112624()
{
  result = qword_4036F8;
  if (!qword_4036F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4036F8);
  }

  return result;
}

unint64_t sub_11267C()
{
  result = qword_403700;
  if (!qword_403700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403700);
  }

  return result;
}

uint64_t sub_112778()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1127E8()
{
  result = qword_403758;
  if (!qword_403758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403758);
  }

  return result;
}

uint64_t sub_11283C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0, &qword_31E8D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_315420;
  v1 = [objc_opt_self() mainBundle];
  v2 = 0xE000000000000000;
  v11._countAndFlagsBits = 0xE000000000000000;
  v14._object = 0x800000000033B310;
  v14._countAndFlagsBits = 0xD000000000000014;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v3.super.isa = v1;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v4 = sub_301AB8(v14, v15, v3, v16, 0, v11);
  v6 = v5;

  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
  v7 = sub_307DE8();
  if (v7)
  {
    if (v7[2])
    {
      v8 = v7[4];
      v2 = v7[5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 48) = v8;
  *(v0 + 56) = v2;
  sub_303458();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC78, &qword_31C250);
  v13 = sub_EC8C(&qword_4037F8, &qword_3FEC78, &qword_31C250, &protocol conformance descriptor for [A]);
  v11._object = v0;
  v9 = sub_3033B8();
  __swift_destroy_boxed_opaque_existential_1(&v11._object);
  return v9;
}

uint64_t sub_1129DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_112A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_112A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_112AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_112B54()
{
  result = qword_403810;
  if (!qword_403810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403808, &qword_322A50);
    sub_112BE0();
    sub_11200C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403810);
  }

  return result;
}

unint64_t sub_112BE0()
{
  result = qword_403818;
  if (!qword_403818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403820, &qword_322A58);
    sub_111F64();
    sub_112C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403818);
  }

  return result;
}

unint64_t sub_112C6C()
{
  result = qword_403828;
  if (!qword_403828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403828);
  }

  return result;
}

unint64_t sub_112CC0()
{
  result = qword_403830;
  if (!qword_403830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403830);
  }

  return result;
}

void sub_112D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_112D64(a1, a2, a3, a4, BYTE1(a4) & 1);
  }
}

void sub_112D64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_112D94(a1, a2, a3, a4 & 1);
  }
}

double sub_112D94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_112DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_112E2C(a1, a2, a3, a4, BYTE1(a4) & 1);
  }
}

void sub_112E2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_112E5C(a1, a2, a3, a4 & 1);
  }
}

double sub_112E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }

  return result;
}

unint64_t sub_112E9C()
{
  result = qword_403838;
  if (!qword_403838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403838);
  }

  return result;
}

uint64_t sub_112F10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403710, &qword_322918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518, &qword_322390);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403708, &qword_322910);
  sub_EC8C(&qword_403728, &qword_403708, &qword_322910, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  sub_11138C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_113014()
{
  result = qword_403840;
  if (!qword_403840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403848, &qword_322A88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403770, &qword_322968);
    sub_EC8C(&qword_403788, &qword_403770, &qword_322968, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403840);
  }

  return result;
}

unint64_t sub_113144()
{
  result = qword_403850;
  if (!qword_403850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403858, &qword_322A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4037A0, &qword_322998);
    sub_EC8C(&qword_4037A8, &qword_4037A0, &qword_322998, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403850);
  }

  return result;
}

unint64_t sub_113274()
{
  result = qword_403860;
  if (!qword_403860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403868, &qword_322A98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4037B8, &qword_3229A8);
    sub_EC8C(&qword_4037C0, &qword_4037B8, &qword_3229A8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403860);
  }

  return result;
}

uint64_t sub_1133A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4037C8, &qword_3229B0);
  sub_EC8C(&qword_4037D8, &qword_4037C8, &qword_3229B0, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_11343C()
{
  result = qword_403870;
  if (!qword_403870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403878, &qword_322AA0);
    sub_EC8C(&qword_403880, &qword_403888, &qword_322AA8, &protocol conformance descriptor for VStack<A>);
    sub_F34E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403870);
  }

  return result;
}

uint64_t sub_113594(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440, &qword_318C30);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403890, &qword_322B98);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF458, &unk_31CE00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_113738(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440, &qword_318C30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403890, &qword_322B98);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF458, &unk_31CE00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for SearchResultFollowButton(uint64_t a1)
{
  result = qword_4038F0;
  if (!qword_4038F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_113914(uint64_t a1)
{
  sub_30B9A8();
  if (v1 <= 0x3F)
  {
    sub_11451C(319, &qword_403900, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_11451C(319, &qword_403908, &type metadata accessor for FollowButtonPresenter.Data, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_113A98(319);
        if (v4 <= 0x3F)
        {
          sub_11451C(319, &qword_3FF4C8, &type metadata accessor for InteractionContextAction, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_113B2C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_113A98(uint64_t a1)
{
  if (!qword_403910)
  {
    sub_3039F8();
    sub_116548(&qword_3FF130, &type metadata accessor for PodcastStateMachine, &protocol conformance descriptor for PodcastStateMachine);
    v1 = sub_3053D8();
    if (!v2)
    {
      atomic_store(v1, &qword_403910);
    }
  }
}

void sub_113B2C(uint64_t a1)
{
  if (!qword_3FF4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_400440, &qword_318C30);
    v1 = sub_3050B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3FF4D0);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_113BA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_113BEC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_113C44(uint64_t a1)
{
  sub_11451C(319, &qword_401C50, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_30B168();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_113D14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_3030F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  v11 = *(sub_30B168() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v7 + 80);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  v20 = *(v15 + 80);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v22 = ((((*(v7 + 64) + ((v17 + 130) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + v18 + 16;
  v23 = v19 + v20;
  if (a2 <= v21)
  {
    goto LABEL_34;
  }

  v24 = ((v23 + (v22 & ~v18)) & ~v20) + *(v15 + 64);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v21 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v28 < 2)
    {
LABEL_34:
      if (v10 == v21)
      {
        if ((v8 & 0x80000000) != 0)
        {
          v33 = (*(v7 + 48))((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v17 + 58) & ~v17, v8, v6);
        }

        else
        {
          v32 = *(a1 + 1);
          if (v32 >= 0xFFFFFFFF)
          {
            LODWORD(v32) = -1;
          }

          v33 = v32 + 1;
        }

        if (v33 >= 2)
        {
          return v33 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v34 = (a1 + v22) & ~v18;
        if (v13 == v21)
        {
          v35 = *(v12 + 48);

          return v35(v34);
        }

        else
        {
          v36 = *(v15 + 48);

          return v36((v23 + v34) & ~v20, v16);
        }
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_34;
  }

LABEL_21:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = ((v23 + (v22 & ~v18)) & ~v20) + *(v15 + 64);
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v21 + (v31 | v29) + 1;
}

void sub_1140A0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_3030F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_30B168() - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11 - 1)
  {
    v14 = v11 - 1;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = *(v15 + 80);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  v22 = ((((*(v9 + 64) + ((v17 + 130) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = ((v19 + v20 + ((v22 + v18) & ~v18)) & ~v20) + *(v15 + 64);
  if (a3 <= v21)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v21 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v21 < a2)
  {
    v25 = ~v21 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_59:
              if (v24 == 2)
              {
                *(a1 + v23) = v26;
              }

              else
              {
                *(a1 + v23) = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *a1 = v29;
        *(a1 + 2) = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v24)
    {
      *(a1 + v23) = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v23) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  *(a1 + v23) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v11 - 1 == v21)
  {
    if (a2 >= v11)
    {
      if (v22)
      {
        bzero(a1, v22);
        *a1 = a2 - v11;
      }
    }

    else
    {
      v30 = (a2 + 1);
      if ((v10 & 0x80000000) != 0)
      {
        v33 = *(v9 + 56);

        v33((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v17 + 58) & ~v17, v30, v10, v8);
      }

      else if ((v30 & 0x80000000) != 0)
      {
        *a1 = (a2 - 0x7FFFFFFF);
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2;
      }
    }
  }

  else if (v13 == v21)
  {
    v31 = *(v12 + 56);

    v31((a1 + v22 + v18) & ~v18, a2);
  }

  else
  {
    v32 = *(v15 + 56);

    v32((v19 + v20 + ((a1 + v22 + v18) & ~v18)) & ~v20, a2, v16);
  }
}

void sub_11451C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_114614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440, &qword_318C30);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_EB00(a1, &v11 - v8, &unk_400440, &qword_318C30);
  return a5(v9);
}

uint64_t sub_1146C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8, &qword_321EE0);
  __chkstk_darwin(v3 - 8);
  v42 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8, &qword_31F3D0);
  __chkstk_darwin(v5 - 8);
  v39 = &v32 - v6;
  v34 = sub_30B168();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_30B198();
  v41 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 16);
  v15 = v37;
  v16 = sub_116548(&qword_401F00, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v35 = *(a1 + 24);
  v36 = v16;
  *&v44 = v12;
  *(&v44 + 1) = v15;
  *&v45 = v16;
  *(&v45 + 1) = v35;
  v38 = &opaque type descriptor for <<opaque return type of View.artworkStyle<A>(shape:shadow:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;
  v23 = v40;
  sub_EB00(v40, v11, &unk_402FF0, &unk_31EF40);
  (*(v7 + 16))(v33, v23 + *(a1 + 36), v34);
  v24 = sub_303DF8();
  (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_306C38();
  sub_30B188();
  v25 = v42;
  sub_307F28();
  v26 = sub_307F38();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v28 = v36;
  v27 = v37;
  v29 = v35;
  sub_306458();
  sub_EB68(v25, &qword_401DC8, &qword_321EE0);
  (*(v41 + 8))(v14, v12);
  *&v44 = v12;
  *(&v44 + 1) = v27;
  *&v45 = v28;
  *(&v45 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_1A7FE0();
  v30 = *(v32 + 8);
  v30(v19, OpaqueTypeMetadata2);
  sub_1A7FE0();
  return (v30)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_114BD8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_306928();
  sub_306158();
  v3 = sub_306178();

  KeyPath = swift_getKeyPath();
  v5 = sub_3068A8();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_114C78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_306928();
  sub_306158();
  v3 = sub_306178();

  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA28, &qword_318D90) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798, &qword_318AB0) + 28);
  v7 = enum case for Image.Scale.medium(_:);
  v8 = sub_306958();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  v9 = sub_3068A8();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A68, &qword_322FC8);
  v12 = (a1 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

void sub_114DC0(uint64_t a1, uint64_t a2, char a3)
{
  v23 = a1;
  v4 = sub_30B898();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_30B7E8();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_305A08();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    v17 = sub_30C7A8();
    v18 = sub_306088();
    sub_304108(v17, &dword_0, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
  }

  sub_308EE8();
  sub_30B8C8();

  if (v25[0])
  {
    sub_307D28();
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1Tm(v25, v26);
      sub_30B718();
      v19 = sub_30B888();
      (*(v21 + 8))(v6, v22);
      if (*(v19 + 16))
      {
        v20 = v24;
        (*(v7 + 16))(v12, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v24);

        sub_30B7C8();
        (*(v7 + 8))(v12, v20);
        __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_10:
        sub_308D58();
        v25[0] = sub_307D98();
        sub_1D770();
        sub_30D438();
        sub_308D38();

        sub_307E18();
        sub_308EC8();

        (*(v7 + 8))(v9, v20);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      sub_EB68(v25, &unk_3FBB40, &qword_31EF50);
    }

    v20 = v24;
    goto LABEL_10;
  }
}

uint64_t sub_1151DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A58, &qword_322FC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = *(v0 + 16);
  sub_33940(v5, v7);
  v10[3] = sub_307DF8();
  v10[4] = sub_116548(&qword_403A60, &type metadata accessor for LegacyLockup, &protocol conformance descriptor for LegacyLockup);
  v10[0] = v6;
  v11[3] = sub_30ACB8();
  v11[4] = sub_116548(&qword_3FF5F0, &type metadata accessor for PodcastsContextMenuProvider, &protocol conformance descriptor for PodcastsContextMenuProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(v11);

  sub_30ACA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A68, &qword_322FC8);
  sub_116590();
  sub_309178();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  sub_EC8C(&qword_403A78, &qword_403A58, &qword_322FC0, &protocol conformance descriptor for ContextMenuTapView<A>);

  sub_306588();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_115498@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_305438();
  v78 = *(v4 - 8);
  v79 = v4;
  __chkstk_darwin(v4);
  v77 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v66 - v7;
  v8 = sub_309DB8();
  v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_305A08();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v68 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_309D48();
  __chkstk_darwin(v12 - 8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039D8, &qword_322E30);
  __chkstk_darwin(v70);
  v14 = &v66 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039E0, &qword_322E38);
  __chkstk_darwin(v74);
  v16 = &v66 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039E8, &qword_322E40);
  __chkstk_darwin(v73);
  v76 = &v66 - v17;
  v18 = type metadata accessor for SearchResultFollowButton(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403890, &qword_322B98);
  sub_306A18();
  sub_308B78();
  KeyPath = swift_getKeyPath();
  v20 = v2 + v18[9];
  v21 = *v20;
  v22 = *(v20 + 8);

  if ((v22 & 1) == 0)
  {
    v23 = sub_30C7A8();
    v24 = sub_306088();
    v67 = v10;
    v25 = v16;
    v26 = v8;
    v27 = a1;
    v28 = v24;
    sub_304108(v23, &dword_0, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    a1 = v27;
    v8 = v26;
    v16 = v25;
    v29 = v68;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v69 + 8))(v29, v67);
    v21 = v82[0];
  }

  v30 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039F0, &qword_322E78) + 36)];
  *v30 = KeyPath;
  v30[1] = v21;
  v31 = swift_getKeyPath();
  v32 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039F8, &unk_322EB0) + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406C00, &qword_31CF90);
  sub_33CD0((v32 + *(v33 + 28)));
  *v32 = v31;
  v34 = swift_getKeyPath();
  v35 = v18[6];
  v36 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A00, &qword_322EF0) + 36)];
  sub_EB00(v2 + v35, v36 + *(v33 + 28), &unk_400440, &qword_318C30);
  *v36 = v34;
  v37 = *(v2 + v18[8] + 8);
  sub_3039E8();
  LOBYTE(v34) = sub_303218();
  sub_289D8(v80);
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v34 & 1;
  v40 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A08, &qword_322F28) + 36)];
  *v40 = v38;
  v40[1] = sub_3CEE8;
  v40[2] = v39;
  sub_3039F8();
  sub_116548(&qword_3FF130, &type metadata accessor for PodcastStateMachine, &protocol conformance descriptor for PodcastStateMachine);
  v41 = sub_304D28();
  v42 = &v14[*(v70 + 36)];
  *v42 = v41;
  v42[1] = v37;

  v43 = v71;
  sub_309D98();
  sub_115EEC();
  sub_306488();
  (*(v72 + 8))(v43, v8);
  sub_EB68(v14, &qword_4039D8, &qword_322E30);
  sub_306258();
  sub_306178();

  v44 = sub_306288();

  v45 = swift_getKeyPath();
  v46 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A38, &unk_322F38) + 36)];
  *v46 = v45;
  v46[1] = v44;
  v47 = &v16[*(v74 + 36)];
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798, &qword_318AB0) + 28);
  v49 = enum case for Image.Scale.medium(_:);
  v50 = sub_306958();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = swift_getKeyPath();
  v51 = v75;
  sub_305428();
  v52 = v77;
  sub_305408();
  v53 = v79;
  v54 = *(v78 + 8);
  v54(v51, v79);
  sub_1162BC();
  v55 = v76;
  sub_3065B8();
  v54(v52, v53);
  sub_116468(v16);
  v56 = (v55 + *(v73 + 36));
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD720, &qword_322F80) + 28);
  sub_305C18();
  v58 = sub_305C28();
  (*(*(v58 - 8) + 56))(v56 + v57, 0, 1, v58);
  *v56 = swift_getKeyPath();
  sub_3039E8();
  LOBYTE(v56) = sub_303218();
  sub_289D8(v81);
  if (v56)
  {
    v59 = sub_3068A8();
  }

  else
  {
    v59 = sub_306828();
  }

  v60 = v59;
  sub_3039E8();
  v61 = sub_303218();
  sub_289D8(v82);
  if (v61)
  {
    v62 = sub_306868();
  }

  else
  {
    v63 = [objc_opt_self() systemGray6Color];
    v62 = sub_30D058();
  }

  sub_1164D8(v55, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A50, &qword_322FB8);
  v65 = (a1 + *(result + 36));
  *v65 = v60;
  v65[1] = v62;
  return result;
}

unint64_t sub_115EEC()
{
  result = qword_403A10;
  if (!qword_403A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039D8, &qword_322E30);
    sub_115FA4();
    sub_EC8C(&qword_3FF150, &qword_3FF158, &qword_322F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A10);
  }

  return result;
}

unint64_t sub_115FA4()
{
  result = qword_403A18;
  if (!qword_403A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A08, &qword_322F28);
    sub_11605C();
    sub_EC8C(&qword_3FF5D0, &qword_3FF5D8, &qword_31CFF8, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A18);
  }

  return result;
}

unint64_t sub_11605C()
{
  result = qword_403A20;
  if (!qword_403A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A00, &qword_322EF0);
    sub_116114();
    sub_EC8C(&unk_406C50, &unk_406C00, &qword_31CF90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A20);
  }

  return result;
}

unint64_t sub_116114()
{
  result = qword_403A28;
  if (!qword_403A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039F8, &unk_322EB0);
    sub_1161CC();
    sub_EC8C(&unk_406C50, &unk_406C00, &qword_31CF90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A28);
  }

  return result;
}

unint64_t sub_1161CC()
{
  result = qword_403A30;
  if (!qword_403A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039F0, &qword_322E78);
    sub_116548(&qword_3FF5C8, &type metadata accessor for FollowShowButton, &protocol conformance descriptor for FollowShowButton);
    sub_EC8C(&qword_406C70, &qword_406C20, &unk_31D000, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A30);
  }

  return result;
}

unint64_t sub_1162BC()
{
  result = qword_403A40;
  if (!qword_403A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039E0, &qword_322E38);
    sub_116374();
    sub_EC8C(&qword_3FC7B8, &qword_3FC798, &qword_318AB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A40);
  }

  return result;
}

unint64_t sub_116374()
{
  result = qword_403A48;
  if (!qword_403A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A38, &unk_322F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039D8, &qword_322E30);
    sub_115EEC();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FC778, &qword_3FC780, &unk_318AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A48);
  }

  return result;
}

uint64_t sub_116468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039E0, &qword_322E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1164D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039E8, &qword_322E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_116548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_116590()
{
  result = qword_403A70;
  if (!qword_403A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A68, &qword_322FC8);
    sub_37E00();
    sub_EC8C(&qword_3FC788, &qword_3FC790, &qword_321C90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A70);
  }

  return result;
}

uint64_t sub_116648()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_116694(uint64_t *a1, double a2)
{
  sub_30B198();
  sub_116548(&qword_401F00, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_116730()
{
  result = qword_403A80;
  if (!qword_403A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A88, &qword_322FD0);
    sub_37EB8();
    sub_EC8C(&qword_3FC788, &qword_3FC790, &qword_321C90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A80);
  }

  return result;
}

unint64_t sub_1167EC()
{
  result = qword_403A90;
  if (!qword_403A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A50, &qword_322FB8);
    sub_1168A4();
    sub_EC8C(&qword_403AA0, &qword_403AA8, &qword_322FD8, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A90);
  }

  return result;
}

unint64_t sub_1168A4()
{
  result = qword_403A98;
  if (!qword_403A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039E8, &qword_322E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039E0, &qword_322E38);
    sub_1162BC();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FD718, &qword_3FD720, &qword_322F80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A98);
  }

  return result;
}

uint64_t sub_116998()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A58, &qword_322FC0);
  sub_EC8C(&qword_403A78, &qword_403A58, &qword_322FC0, &protocol conformance descriptor for ContextMenuTapView<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_116A30()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = sub_30C968();

  v2 = 10.0;
  xmmword_403AB0 = xmmword_322FE0;
  if (v1)
  {
    v2 = 12.0;
  }

  qword_403AC0 = 0;
  qword_403AC8 = *&v2;
}

uint64_t sub_116B10(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = sub_3020D8();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = sub_30C968();

  if (v9)
  {
    return a3();
  }

  else
  {
    return a4();
  }
}

uint64_t sub_116BB8()
{
  sub_309548();
  if (swift_dynamicCastClass())
  {

    v0 = sub_309528();
LABEL_5:
    v1 = v0;

    return v1;
  }

  sub_309418();
  if (swift_dynamicCastClass())
  {

    v0 = sub_307DD8();
    goto LABEL_5;
  }

  sub_309A48();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  sub_30AA68();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  v3 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x800000000033B310;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v4.super.isa = v3;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v1 = sub_301AB8(v6, v7, v4, v8, 0, v5);

  return v1;
}

uint64_t sub_116CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B00, &unk_323228);
  __chkstk_darwin(v4 - 8);
  v6 = (&v40 - v5);
  v7 = sub_305088();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403718, &qword_322920);
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v43 = &v40 - v10;
  v11 = sub_305A08();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v1 + 24);
  v15 = *(v1 + 16);
  v46 = v15;
  if (v47 != 1)
  {

    v18 = sub_30C7A8();
    v19 = v9;
    v20 = v6;
    v21 = a1;
    v22 = sub_306088();
    sub_304108(v18, &dword_0, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    a1 = v21;
    v6 = v20;
    v9 = v19;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v46, &qword_403B08, &qword_323238);
    (*(v12 + 8))(v14, v11);
    v15 = v45[0];
    v17 = v43;
    if (!v45[0])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = v15;
  v17 = v43;
  if (v15)
  {
LABEL_5:
    v23 = sub_306CC8();
    v24 = &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace];
    *v24 = v23;
    v24[8] = 0;
  }

LABEL_6:
  v25 = v40;
  sub_305078();
  v26 = swift_allocObject();
  v27 = *(v2 + 48);
  *(v26 + 48) = *(v2 + 32);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(v2 + 64);
  *(v26 + 96) = *(v2 + 80);
  v28 = *(v2 + 16);
  *(v26 + 16) = *v2;
  *(v26 + 32) = v28;
  sub_111C1C(v2, v45);
  v29 = v42;
  sub_306B58();

  (*(v41 + 8))(v25, v29);
  v30 = [objc_opt_self() currentTraitCollection];
  v31 = [v30 preferredContentSizeCategory];

  LOBYTE(v30) = sub_30CAE8();
  if (v30)
  {
    v32 = sub_306C08();
  }

  else
  {
    v32 = sub_306C28();
  }

  *v6 = v32;
  v6[1] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B10, &qword_323240);
  sub_117388(v2, v17, v6 + *(v34 + 44));
  v35 = swift_allocObject();
  v36 = *(v2 + 48);
  *(v35 + 48) = *(v2 + 32);
  *(v35 + 64) = v36;
  *(v35 + 80) = *(v2 + 64);
  *(v35 + 96) = *(v2 + 80);
  v37 = *(v2 + 16);
  *(v35 + 16) = *v2;
  *(v35 + 32) = v37;
  sub_34804(v6, a1, &qword_403B00, &unk_323228);
  v38 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B18, &unk_323248) + 36));
  *v38 = sub_11A584;
  v38[1] = v35;
  sub_111C1C(v2, v45);
  return (*(v44 + 8))(v17, v9);
}

double sub_1171F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_305A08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 8);
  v7 = v13;

  if ((v7 & 1) == 0)
  {
    v8 = sub_30C7A8();
    v9 = sub_306088();
    sub_304108(v8, &dword_0, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v12, &qword_3FCA88, &unk_31BF70);
    (*(v4 + 8))(v6, v3);
  }

  sub_30A5A8();
  sub_30B8E8();

  sub_30A578();

  return result;
}

uint64_t sub_117388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B20, &qword_323258);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24[-1] - v10;
  *v11 = sub_305AA8();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B28, &qword_323260);
  sub_117698(a1, a2, &v11[*(v12 + 44)]);
  v13 = sub_305AA8();
  v30 = 1;
  sub_11A05C(a1, &v25);
  v33 = *&v26[16];
  v34 = *&v26[32];
  v35 = *&v26[48];
  v36 = *&v26[64];
  v31 = v25;
  v32 = *v26;
  v37[2] = *&v26[16];
  v37[3] = *&v26[32];
  v37[4] = *&v26[48];
  v37[5] = *&v26[64];
  v37[0] = v25;
  v37[1] = *v26;
  sub_EB00(&v31, &v23, &qword_403B30, &qword_323268);
  sub_EB68(v37, &qword_403B30, &qword_323268);
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v14 = v30;
  v25 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30, &qword_31D040);
  sub_306A18();
  if (v23)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  sub_EB00(v11, v8, &qword_403B20, &qword_323258);
  sub_EB00(v8, a3, &qword_403B20, &qword_323258);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B38, &qword_323270) + 48);
  *&v24[6] = *&v29[95];
  *(&v24[5] + 1) = *&v29[80];
  *(&v24[3] + 1) = *&v29[48];
  *(&v24[4] + 1) = *&v29[64];
  *(&v24[1] + 1) = *&v29[16];
  v17 = (a3 + v16);
  v23 = v13;
  LOBYTE(v24[0]) = v14;
  *(&v24[2] + 1) = *&v29[32];
  *(v24 + 1) = *v29;
  *(&v24[6] + 1) = v15;
  v18 = v24[2];
  v17[2] = v24[1];
  v17[3] = v18;
  v19 = v24[6];
  v17[6] = v24[5];
  v17[7] = v19;
  v20 = v24[4];
  v17[4] = v24[3];
  v17[5] = v20;
  v21 = v24[0];
  *v17 = v23;
  v17[1] = v21;
  sub_EB00(&v23, &v25, &qword_403B40, &qword_323278);
  sub_EB68(v11, &qword_403B20, &qword_323258);
  *&v26[49] = *&v29[48];
  *&v26[65] = *&v29[64];
  *v27 = *&v29[80];
  *&v26[1] = *v29;
  *&v26[17] = *&v29[16];
  v25 = v13;
  v26[0] = v14;
  *&v27[15] = *&v29[95];
  *&v26[33] = *&v29[32];
  v28 = v15;
  sub_EB68(&v25, &qword_403B40, &qword_323278);
  return sub_EB68(v8, &qword_403B20, &qword_323258);
}

uint64_t sub_117698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B50, &qword_323288);
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-v7 - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B58, &qword_323290);
  __chkstk_darwin(v9);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v12);
  v14 = &v29[-v13 - 8];
  __chkstk_darwin(v15);
  v17 = &v29[-v16 - 8];
  v18 = [objc_opt_self() currentTraitCollection];
  v19 = [v18 preferredContentSizeCategory];

  LOBYTE(v18) = sub_30CAE8();
  if (v18)
  {
    v20 = sub_305A98();
  }

  else
  {
    v20 = sub_305AA8();
  }

  *v8 = v20;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B60, &qword_323298);
  sub_117AC4(a1, a2, &v8[*(v21 + 44)]);
  sub_34804(v8, v14, &qword_403B50, &qword_323288);
  *&v14[*(v9 + 36)] = 0x3FF0000000000000;
  sub_34804(v14, v17, &qword_403B58, &qword_323290);
  if (qword_3FAAC8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_305638();
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v30 = 1;
  *&v29[39] = v33;
  sub_EB00(v17, v11, &qword_403B58, &qword_323290);
  sub_EB00(v11, a3, &qword_403B58, &qword_323290);
  v22 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B68, &qword_3232A0) + 48);
  v23 = *&v29[80];
  *(v22 + 73) = *&v29[64];
  *(v22 + 89) = v23;
  *(v22 + 105) = *&v29[96];
  v24 = *&v29[16];
  *(v22 + 9) = *v29;
  *(v22 + 25) = v24;
  v25 = *&v29[48];
  *(v22 + 41) = *&v29[32];
  *v22 = 0;
  *(v22 + 8) = 1;
  v26 = *&v29[111];
  *(v22 + 57) = v25;
  *(v22 + 120) = v26;
  *(v22 + 128) = 0;
  sub_EB68(v17, &qword_403B58, &qword_323290);
  return sub_EB68(v11, &qword_403B58, &qword_323290);
}

uint64_t sub_117AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B70, &qword_3232A8);
  __chkstk_darwin(v66);
  v67 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B78, &qword_3232B0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B80, &qword_3232B8);
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B88, &qword_3232C0);
  __chkstk_darwin(v60);
  v61 = &v51 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B90, &qword_3232C8);
  __chkstk_darwin(v59);
  v65 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  __chkstk_darwin(v20);
  v64 = &v51 - v21;
  if (qword_3FAAC8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_3051F8();
  v56 = v68;
  v55 = v70;
  v54 = v72;
  v53 = v73;
  v76 = 1;
  v58 = v69;
  v75 = v69;
  v57 = v71;
  v74 = v71;
  sub_1181DC(a1);
  v22 = sub_306C58();
  v24 = v23;
  v25 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B98, &qword_3232D0) + 36)];
  sub_1185D8(a1, v52, v25);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403BA0, &qword_3232D8) + 36));
  *v26 = v22;
  v26[1] = v24;
  v27 = a1;
  v28 = &v11[*(v9 + 36)];
  *v28 = 0x3FF0000000000000;
  *(v28 + 4) = 0;
  sub_306CC8();
  sub_11A5D8();
  sub_306438();
  sub_EB68(v11, &qword_403B78, &qword_3232B0);
  v29 = sub_3060D8();
  v30 = [objc_opt_self() currentTraitCollection];
  v31 = [v30 preferredContentSizeCategory];

  LOBYTE(v30) = sub_30CAE8();
  if (v30)
  {
    if (qword_3FAAD0 != -1)
    {
      swift_once();
    }

    v32 = sub_3020D8();
    __swift_project_value_buffer(v32, qword_403AD0);
    v33 = sub_302098();
    [v33 ascender];
    [v33 leading];
    [v33 capHeight];
  }

  sub_304FD8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v61;
  (*(v62 + 32))(v61, v14, v63);
  v43 = v42 + *(v60 + 36);
  *v43 = v29;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  sub_34804(v42, v19, &qword_403B88, &qword_3232C0);
  *&v19[*(v59 + 36)] = 0x4000000000000000;
  v44 = v64;
  sub_34804(v19, v64, &qword_403B90, &qword_3232C8);
  *v8 = sub_305BE8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403BE8, &qword_3232F0);
  sub_118968(v27, &v8[*(v45 + 44)]);
  v46 = v65;
  *&v8[*(v66 + 36)] = 0x4000000000000000;
  sub_EB00(v44, v46, &qword_403B90, &qword_3232C8);
  v47 = v67;
  sub_EB00(v8, v67, &qword_403B70, &qword_3232A8);
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v56;
  *(a3 + 24) = v58;
  *(a3 + 32) = v55;
  *(a3 + 40) = v57;
  v48 = v53;
  *(a3 + 48) = v54;
  *(a3 + 56) = v48;
  *(a3 + 64) = 0x3FF0000000000000;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403BF0, &qword_3232F8);
  sub_EB00(v46, a3 + *(v49 + 48), &qword_403B90, &qword_3232C8);
  sub_EB00(v47, a3 + *(v49 + 64), &qword_403B70, &qword_3232A8);
  sub_EB68(v8, &qword_403B70, &qword_3232A8);
  sub_EB68(v44, &qword_403B90, &qword_3232C8);
  sub_EB68(v47, &qword_403B70, &qword_3232A8);
  return sub_EB68(v46, &qword_403B90, &qword_3232C8);
}

uint64_t sub_1181DC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4030E8, &qword_3217A0);
  __chkstk_darwin(v1);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C88, &qword_3233D0);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170, &unk_321DB0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  sub_309418();
  if (swift_dynamicCastClass())
  {

    sub_307DA8();
    v10 = *(v1 + 36);
    *&v3[v10] = vdupq_n_s64(0x4045000000000000uLL);
    v11 = enum case for Artwork.Sizing.constantSize(_:);
    v12 = sub_30B168();
    (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
    sub_EB00(v3, v6, &qword_4030E8, &qword_3217A0);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403BD8, &qword_4030E8, &qword_3217A0, &unk_322D78);
    sub_EC8C(&qword_403398, &qword_403170, &unk_321DB0, &unk_322D78);
    sub_305D48();

    v13 = v3;
    v14 = &qword_4030E8;
    v15 = &qword_3217A0;
  }

  else
  {
    sub_307DA8();
    v16 = &v9[*(v7 + 40)];
    v17 = *(sub_3055F8() + 20);
    v18 = enum case for RoundedCornerStyle.continuous(_:);
    v19 = sub_305B68();
    (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
    __asm { FMOV            V0.2D, #5.0 }

    *v16 = _Q0;
    v25 = *(v7 + 36);
    *&v9[v25] = vdupq_n_s64(0x4045000000000000uLL);
    v26 = enum case for Artwork.Sizing.constantSize(_:);
    v27 = sub_30B168();
    (*(*(v27 - 8) + 104))(&v9[v25], v26, v27);
    sub_EB00(v9, v6, &qword_403170, &unk_321DB0);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403BD8, &qword_4030E8, &qword_3217A0, &unk_322D78);
    sub_EC8C(&qword_403398, &qword_403170, &unk_321DB0, &unk_322D78);
    sub_305D48();
    v13 = v9;
    v14 = &qword_403170;
    v15 = &unk_321DB0;
  }

  return sub_EB68(v13, v14, v15);
}

uint64_t sub_1185D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C70, &qword_323390);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  if (*(a1 + 80) - 1 <= 1 && (v25[0] = *(a1 + 3), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30, &qword_31D040), sub_306A18(), v28 == 1))
  {
    v21 = a2;
    v22 = a3;
    v29 = *(a1 + 8);
    v14 = *a1;
    v28 = *a1;
    v15 = v29;

    if ((v15 & 1) == 0)
    {
      v16 = sub_30C7A8();
      v17 = sub_306088();
      sub_304108(v16, &dword_0, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      sub_3059F8();
      swift_getAtKeyPath();
      sub_EB68(&v28, &qword_3FCA88, &unk_31BF70);
      (*(v7 + 8))(v9, v6);
      v14 = *&v25[0];
    }

    v23 = 0x4018000000000000;
    v24 = 0;

    sub_2268C0(v14, &v23, v25);
    sub_306208();
    sub_3061C8();
    v18 = sub_306218();

    KeyPath = swift_getKeyPath();
    v27 = v18;
    sub_3050D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C78, &qword_3233C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403718, &qword_322920);
    sub_11AA8C();
    sub_EC8C(&qword_403760, &qword_403718, &qword_322920, &protocol conformance descriptor for _EndedGesture<A>);
    sub_306718();
    sub_EB68(v25, &qword_403C78, &qword_3233C8);
    a3 = v22;
    (*(v11 + 32))(v22, v13, v10);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v11 + 56))(a3, v19, 1, v10);
}

uint64_t sub_118968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v152 = sub_30B368();
  v147 = *(v152 - 8);
  __chkstk_darwin(v152);
  v146 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403BF8, &qword_323300);
  __chkstk_darwin(v150);
  v151 = (&v146 - v5);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C00, &qword_323308);
  v163 = *(v169 - 8);
  __chkstk_darwin(v169);
  v153 = &v146 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C08, &qword_323310);
  __chkstk_darwin(v7 - 8);
  v164 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v172 = &v146 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2B8, &unk_320C30);
  __chkstk_darwin(v11 - 8);
  v13 = &v146 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50, &qword_31C110);
  __chkstk_darwin(v14 - 8);
  v16 = &v146 - v15;
  v168 = sub_305A08();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3091E8();
  v154 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C10, &qword_323318);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v22 = &v146 - v21;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C18, &qword_323320);
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  KeyPath = &v146 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C20, &qword_323328);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v158 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v157 = &v146 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C28, &qword_323330);
  __chkstk_darwin(v29 - 8);
  v171 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v146 - v32;
  v34 = a1[9];
  v35 = sub_309548();
  v173 = v34;
  v159 = v35;
  v36 = swift_dynamicCastClass();
  v170 = a1;
  v174 = v33;
  if (!v36)
  {
    (*(v25 + 56))(v33, 1, 1, v24);
    v38 = v169;
    v39 = v172;
    goto LABEL_17;
  }

  v148 = v25;
  v149 = v24;
  v197 = *(a1 + 8);
  v37 = *a1;
  v196 = *a1;
  if (v197 == 1)
  {
    *&v176 = v37;

    sub_EB00(&v196, &v181, &qword_3FCA88, &unk_31BF70);
  }

  else
  {

    sub_EB00(&v196, &v181, &qword_3FCA88, &unk_31BF70);
    v40 = sub_30C7A8();
    v41 = sub_306088();
    sub_304108(v40, &dword_0, v41, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v42 = v166;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v196, &qword_3FCA88, &unk_31BF70);
    (*(v167 + 8))(v42, v168);
  }

  v43 = sub_303748();
  (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
  v44 = enum case for EyebrowBuilder.ListContext.episodeSearchResult(_:);
  v45 = sub_3033A8();
  v46 = *(v45 - 8);
  (*(v46 + 104))(v16, v44, v45);
  (*(v46 + 56))(v16, 0, 1, v45);
  if (sub_3091C8())
  {
    v47 = enum case for Text.Case.uppercase(_:);
    v48 = sub_306358();
    v49 = *(v48 - 8);
    (*(v49 + 104))(v13, v47, v48);
    (*(v49 + 56))(v13, 0, 1, v48);
  }

  else
  {
    v50 = sub_306358();
    (*(*(v50 - 8) + 56))(v13, 1, 1, v50);
  }

  v51 = v172;
  v52 = v170;

  sub_3091D8();
  v53 = v169;
  if (qword_3FAAD8 != -1)
  {
    swift_once();
  }

  v54 = sub_3020D8();
  __swift_project_value_buffer(v54, qword_403AE8);
  v55 = sub_11AA3C(&qword_403C68, &type metadata accessor for EpisodeEyebrowView, &protocol conformance descriptor for EpisodeEyebrowView);
  sub_3063F8();
  (*(v154 + 8))(v20, v18);
  sub_306198();
  v181 = v18;
  v182 = v55;
  swift_getOpaqueTypeConformance2();
  v56 = KeyPath;
  v57 = v156;
  sub_3064C8();
  (*(v155 + 8))(v22, v57);
  v195 = *(v52 + 40);
  v58 = v52[4];
  v194 = v58;
  v59 = v51;
  if (v195 != 1)
  {

    v64 = sub_30C7A8();
    v65 = sub_306088();
    sub_304108(v64, &dword_0, v65, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v66 = v166;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v194, &qword_403B48, &qword_323280);
    (*(v167 + 8))(v66, v168);
    v60 = v149;
    v61 = v148;
    if (v181 != 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    v62 = v53;
    v67 = [objc_opt_self() lightTextColor];
    v63 = sub_30D058();

    goto LABEL_16;
  }

  v60 = v149;
  v61 = v148;
  if (v58)
  {
    goto LABEL_15;
  }

LABEL_13:
  v62 = v53;
  v63 = sub_3068A8();
LABEL_16:

  v68 = v158;
  (*(v161 + 32))(v158, v56, v162);
  *&v68[*(v60 + 36)] = v63;
  v69 = v68;
  v70 = v157;
  sub_34804(v69, v157, &qword_403C20, &qword_323328);
  v71 = v70;
  v72 = v174;
  sub_34804(v71, v174, &qword_403C20, &qword_323328);
  (*(v61 + 56))(v72, 0, 1, v60);
  v38 = v62;
  v39 = v59;
LABEL_17:
  v73 = sub_307D88();
  if (!v74)
  {
    v81 = 0;
    v162 = 0;
    v161 = 0;
    KeyPath = 0;
    v156 = 0;
    v158 = 0;
    LODWORD(v157) = 0;
    v88 = 0;
    v89 = 0;
    goto LABEL_27;
  }

  v181 = v73;
  v182 = v74;
  sub_E504();
  v75 = sub_3063C8();
  v77 = v76;
  v79 = v78;
  if (qword_3FAAD0 != -1)
  {
    swift_once();
  }

  v80 = sub_3020D8();
  __swift_project_value_buffer(v80, qword_403AD0);
  v81 = sub_306308();
  v162 = v82;
  v84 = v83;
  v161 = v85;
  sub_EBC8(v75, v77, v79 & 1);

  KeyPath = swift_getKeyPath();
  v86 = v170[4];
  v192 = v86;
  v193 = *(v170 + 40);
  if (v193 != 1)
  {

    v90 = sub_30C7A8();
    v91 = sub_306088();
    sub_304108(v90, &dword_0, v91, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v92 = v166;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v192, &qword_403B48, &qword_323280);
    (*(v167 + 8))(v92, v168);
    if (v181 != 1)
    {
      goto LABEL_22;
    }

LABEL_25:
    v87 = sub_306878();
    goto LABEL_26;
  }

  if (v86)
  {
    goto LABEL_25;
  }

LABEL_22:
  v87 = sub_306898();
LABEL_26:
  v158 = v87;
  LOBYTE(v181) = v84 & 1;
  LOBYTE(v176) = 0;
  v89 = v84 & 1;
  v88 = 0;
  LODWORD(v157) = 256;
  v156 = 1;
LABEL_27:
  v93 = swift_dynamicCastClass();
  v173 = 0;
  v169 = v89;
  if (!v93)
  {
    v95 = sub_116BB8();
    if (!v96)
    {
      v115 = [objc_opt_self() currentTraitCollection];
      v116 = [v115 preferredContentSizeCategory];

      LOBYTE(v115) = sub_30CAE8();
      if ((v115 & 1) == 0)
      {
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C30, &qword_323338);
        v121 = v153;
        (*(*(v145 - 8) + 56))(v153, 1, 1, v145);
        goto LABEL_43;
      }

      if (qword_3FAAD8 != -1)
      {
        swift_once();
      }

      v117 = sub_3020D8();
      __swift_project_value_buffer(v117, qword_403AE8);
      sub_301FF8();
      v118 = v146;
      sub_30B378();
      v119 = v147;
      v120 = v152;
      (*(v147 + 16))(v151, v118, v152);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C48, &qword_323350);
      sub_11A8F0();
      sub_11AA3C(&qword_403C60, &type metadata accessor for VSpacer, &protocol conformance descriptor for VSpacer);
      v121 = v153;
      sub_305D48();
      (*(v119 + 8))(v118, v120);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C30, &qword_323338);
      (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
LABEL_42:
      v89 = v169;
LABEL_43:
      sub_11A880(v121, v39);
      v94 = 0;
      v88 = v173;
      goto LABEL_44;
    }

    v159 = v81;
    v97 = v38;
    v181 = v95;
    v182 = v96;
    sub_E504();
    v98 = sub_3063C8();
    v100 = v99;
    v102 = v101;
    if (qword_3FAAD8 != -1)
    {
      swift_once();
    }

    v103 = sub_3020D8();
    __swift_project_value_buffer(v103, qword_403AE8);
    v104 = sub_306308();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    sub_EBC8(v98, v100, v102 & 1);

    v111 = swift_getKeyPath();
    v112 = v108 & 1;
    LOBYTE(v181) = v108 & 1;
    LOBYTE(v176) = 0;
    v113 = v170[4];
    v190 = v113;
    v191 = *(v170 + 40);
    if (v191 == 1)
    {
      if ((v113 & 1) == 0)
      {
LABEL_34:
        v114 = sub_3068A8();
LABEL_41:
        v129 = v151;
        *v151 = v104;
        v129[1] = v106;
        *(v129 + 16) = v112;
        v129[3] = v110;
        v129[4] = v111;
        v129[5] = 1;
        *(v129 + 24) = 0;
        *(v129 + 50) = 1;
        v129[7] = v114;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C48, &qword_323350);
        sub_11A8F0();
        sub_11AA3C(&qword_403C60, &type metadata accessor for VSpacer, &protocol conformance descriptor for VSpacer);
        v121 = v153;
        sub_305D48();
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C30, &qword_323338);
        (*(*(v130 - 8) + 56))(v121, 0, 1, v130);
        v38 = v97;
        v81 = v159;
        goto LABEL_42;
      }
    }

    else
    {

      v123 = sub_30C7A8();
      v124 = sub_306088();
      sub_304108(v123, &dword_0, v124, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v125 = v106;
      v126 = v166;
      sub_3059F8();
      swift_getAtKeyPath();
      sub_EB68(&v190, &qword_403B48, &qword_323280);
      v127 = v126;
      v106 = v125;
      (*(v167 + 8))(v127, v168);
      if (v175 != 1)
      {
        goto LABEL_34;
      }
    }

    v128 = [objc_opt_self() lightTextColor];
    v114 = sub_30D058();

    goto LABEL_41;
  }

  v94 = 1;
LABEL_44:
  (*(v163 + 56))(v39, v94, 1, v38);
  v131 = v171;
  sub_EB00(v174, v171, &qword_403C28, &qword_323330);
  v132 = v39;
  v133 = v164;
  sub_EB00(v132, v164, &qword_403C08, &qword_323310);
  v134 = v165;
  sub_EB00(v131, v165, &qword_403C28, &qword_323330);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C38, &qword_323340);
  v136 = v134 + *(v135 + 48);
  *&v176 = v81;
  v137 = v162;
  *(&v176 + 1) = v162;
  *&v177 = v89;
  v138 = v161;
  *(&v177 + 1) = v161;
  v139 = KeyPath;
  *&v178 = KeyPath;
  v140 = v156;
  *(&v178 + 1) = v156;
  *&v179 = v88;
  v141 = v158;
  *(&v179 + 1) = v158;
  LOWORD(v131) = v157;
  v180 = v157;
  *(v136 + 64) = v157;
  v142 = v177;
  *v136 = v176;
  *(v136 + 16) = v142;
  v143 = v179;
  *(v136 + 32) = v178;
  *(v136 + 48) = v143;
  sub_EB00(v133, v134 + *(v135 + 64), &qword_403C08, &qword_323310);
  sub_EB00(&v176, &v181, &qword_403C40, &qword_323348);
  sub_EB68(v172, &qword_403C08, &qword_323310);
  sub_EB68(v174, &qword_403C28, &qword_323330);
  sub_EB68(v133, &qword_403C08, &qword_323310);
  v181 = v81;
  v182 = v137;
  v183 = v169;
  v184 = v138;
  v185 = v139;
  v186 = v140;
  v187 = v173;
  v188 = v141;
  v189 = v131;
  sub_EB68(&v181, &qword_403C40, &qword_323348);
  return sub_EB68(v171, &qword_403C28, &qword_323330);
}

double sub_11A05C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_305A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 72);
  KeyPath = swift_getKeyPath();
  v10 = *(a1 + 32);
  v26 = v10;
  v27 = *(a1 + 40);
  LODWORD(a1) = v27;

  if (a1 == 1)
  {
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v11 = sub_306898();
      goto LABEL_6;
    }
  }

  else
  {
    sub_EB00(&v26, &v21, &qword_403B48, &qword_323280);
    v12 = sub_30C7A8();
    v13 = sub_306088();
    sub_304108(v12, &dword_0, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v26, &qword_403B48, &qword_323280);
    (*(v5 + 8))(v7, v4);
    if (v20[24] != 1)
    {
      goto LABEL_3;
    }
  }

  v14 = [objc_opt_self() lightTextColor];
  v11 = sub_30D058();

LABEL_6:
  if (qword_3FAAC8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_3051F8();
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  *a2 = v8;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  result = *&v25;
  *(a2 + 80) = v25;
  return result;
}

void *sub_11A340@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  result = sub_306A08();
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  *(a3 + 24) = 0;
  *(a3 + 32) = v8;
  *(a3 + 40) = 0;
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  *(a3 + 64) = 0;
  *(a3 + 72) = a1;
  *(a3 + 80) = a2;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_11A44C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_11A494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}