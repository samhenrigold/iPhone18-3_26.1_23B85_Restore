uint64_t sub_122184()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v3 = sub_AB9320();
    v5 = v4;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v6 = v0;
    v2 = sub_4309D4(v3, v5);

    *&v0[v1] = v2;
  }

  return v2;
}

void sub_122318(int a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v37 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0, &qword_AFEFB8);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v37 - v16;
  if ([v2 isViewLoaded] && v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection] == 1)
  {
    v39 = a1;
    v18 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
    swift_beginAccess();
    sub_15F84(&v2[v18], v12, &unk_DF0CC0, &qword_AFEFB8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_12E1C(v12, &unk_DF0CC0, &qword_AFEFB8);
      return;
    }

    sub_36B0C(v12, v17, &qword_DF09B8, "6g\r");
    v19 = *&v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource];
    if (!v19)
    {
      goto LABEL_21;
    }

    v20 = v19;
    sub_AB5260();

    v21 = (*(v7 + 48))(v5, 1, v6);
    v22 = v39;
    if (v21 == 1)
    {
      sub_12E1C(v17, &qword_DF09B8, "6g\r");
      sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
      return;
    }

    (*(v7 + 32))(v43, v5, v6);
    v23 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView;
    v24 = *&v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
    if (!v24)
    {
      goto LABEL_22;
    }

    v25 = v24;
    v26 = [v25 indexPathsForSelectedItems];
    if (v26)
    {
      v38 = v23;
      v27 = v26;
      v28 = sub_AB9760();

      v29 = 0;
      v30 = *(v28 + 16);
      v40 = v7 + 16;
      v41 = v7 + 8;
      v42 = v30;
      while (1)
      {
        if (v42 == v29)
        {

          v23 = v38;
          goto LABEL_17;
        }

        if (v29 >= *(v28 + 16))
        {
          break;
        }

        (*(v7 + 16))(v9, v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29++, v6);
        sub_124E50(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v31 = sub_AB91C0();
        v32 = *(v7 + 8);
        v32(v9, v6);
        if (v31)
        {

          sub_12E1C(v17, &qword_DF09B8, "6g\r");
          v32(v43, v6);
          return;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

LABEL_17:
    v33 = *&v2[v23];
    if (!v33)
    {
      goto LABEL_23;
    }

    v34 = v33;
    v35 = v43;
    isa = sub_AB3770().super.isa;
    [v34 selectItemAtIndexPath:isa animated:v22 & 1 scrollPosition:0];
    sub_12E1C(v17, &qword_DF09B8, "6g\r");
    (*(v7 + 8))(v35, v6);
  }
}

void sub_1229A8(uint64_t a1)
{
  sub_122A64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_122A64(uint64_t a1)
{
  if (!qword_DF09B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF09B8, "6g\r");
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_DF09B0);
    }
  }
}

id sub_122CBC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

Class sub_122D88(char *a1, uint64_t a2, void *a3)
{
  if (*(*&a1[qword_DF09E8] + 32) == 1)
  {
    v4 = a1;
    v5 = a3;
    if (sub_381260())
    {
    }
  }

  v6.super.isa = sub_AB9740().super.isa;

  return v6.super.isa;
}

void sub_122E38(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v5 = *(v3 + qword_DF09E8);
  if (*(v5 + 32) != 1)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = [v6 results];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v11 = [v10 dataSource];
  if (([v11 respondsToSelector:"indexOfSectionForSectionIndexTitleAtIndex:"] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v12 = [v11 indexOfSectionForSectionIndexTitleAtIndex:a2];

  swift_unknownObjectRelease();
  if ((v12 & 0x8000000000000000) != 0 || v12 == sub_AB2A10())
  {
    goto LABEL_12;
  }

  sub_AB37C0();
  v13 = 0;
LABEL_13:
  v14 = sub_AB3820();
  v15 = *(*(v14 - 8) + 56);

  v15(a3, v13, 1, v14);
}

Class sub_122FA8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v10 = &v20 - v9;
  if (a4)
  {
    sub_AB92A0();
    a4 = v11;
  }

  v12 = a3;
  v13 = a1;
  sub_122E38(a4, a5, v10);

  v14 = sub_AB3820();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    isa = sub_AB3770().super.isa;
    (*(v15 + 8))(v10, v14);
    v17 = isa;
  }

  return v17;
}

id sub_123130(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CB0, &qword_AFEFB0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  sub_125CC4();
  sub_AB5110();
  if (!a1)
  {
    goto LABEL_4;
  }

  v9 = a1;
  result = [v9 results];
  if (result)
  {
    v11 = result;
    v12 = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
    static NSDiffableDataSourceSnapshot<>.snapshot(from:)(v11, v12, v6, v13, v14);

    (*(v4 + 8))(v8, v3);
    (*(v4 + 32))(v8, v6, v3);
LABEL_4:
    v15 = *(v1 + qword_DF09E8);
    v16 = *(v15 + 24);
    *(v15 + 24) = 0;

    sub_380968();
    sub_AB5220();
    v17 = *(v15 + 24);
    *(v15 + 24) = a1;
    v18 = a1;

    sub_380968();
    return (*(v4 + 8))(v8, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1233A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultMetrics];
  [v5 scaledValueForValue:44.0];
  [v5 scaledValueForValue:44.0];

  Artwork.Size.init(_:)();
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  v10 = Artwork.Content.init(catalog:background:)([a2 artworkCatalog], 0);
  v12 = v11;
  sub_1253F8(*a1, *(a1 + 8));
  *a1 = v10;
  *(a1 + 8) = v12;
  v13 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
  v15 = *v13;
  v14 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  v30 = v13[5];
  v31 = v13[4];
  v18 = type metadata accessor for Artwork(0);
  v19 = a1 + *(v18 + 32);
  v28 = *(v19 + 8);
  v29 = *v19;
  v20 = *(v19 + 24);
  v27 = *(v19 + 16);
  v21 = v16;
  v22 = v17;
  v23 = v15;
  v24 = v14;
  sub_2F1C8(v29, v28, v27, v20);
  *v19 = v15;
  *(v19 + 8) = v14;
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *(v19 + 32) = v31;
  *(v19 + 40) = v30;
  v25 = Artwork.Decoration.round.unsafeMutableAddressor();
  sub_125438(v25, a1 + *(v18 + 28), type metadata accessor for Artwork.Decoration);
  sub_12E1C(a1 + 16, &unk_DF0CA0, &unk_AFEFA0);

  return sub_125340(a3, a1 + 16);
}

id sub_123568()
{
  if (qword_DE6A70 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(UIImageView) initWithImage:qword_E71438];
  v1 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v1 scaledValueForValue:8.0];
  v3 = v2;

  v4 = [objc_opt_self() configurationWithPointSize:7 weight:v3];
  [v0 setPreferredSymbolConfiguration:v4];

  v5 = AccessibilityIdentifier.favoriteBadge.unsafeMutableAddressor();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  sub_13C80(0, &qword_DF0C80, UIImageView_ptr);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v6, v7, v10, v8, v9);
  return v0;
}

char *sub_1236D0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  _s17ListConfigurationVMa(0);
  __chkstk_darwin();
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator;
  *&v1[v6] = sub_123568();
  v7 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = type metadata accessor for Artwork(0);
  v9 = sub_124E50(&unk_DF0C70, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v10 = MusicUIContentConfiguration.makeContentView()(v8, v9);
  v11 = &v1[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView];
  *v11 = v10;
  v11[1] = v12;
  sub_1252D8(a1, &v1[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration], _s17ListConfigurationVMa);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration;
  swift_beginAccess();
  sub_1252D8(v13 + v14, v5, _s17ListConfigurationVMa);
  v15 = v13;
  sub_123968(v5);
  sub_124F38(v5);
  [v15 addSubview:*&v15[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0, qword_B01640);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB5330();
  *(v16 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_ABA6F0();
  sub_124F38(a1);

  swift_unknownObjectRelease();

  return v15;
}

id sub_123968(id *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView];
  swift_getObjectType();
  v5 = _s17ListConfigurationVMa(0);
  v6 = v5[7];
  v13[3] = type metadata accessor for Artwork(0);
  v13[4] = sub_124E50(&unk_DF0C60, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  sub_1252D8(a1 + v6, boxed_opaque_existential_0, type metadata accessor for Artwork);
  sub_AB4C70();
  [v4 setHidden:*(a1 + v5[9])];
  v8 = *&v2[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel];
  v9 = sub_AB4FD0();
  [v8 setFont:v9];

  [v8 setLineBreakMode:sub_AB4F80()];
  [v8 setNumberOfLines:sub_AB4FA0()];
  v10 = sub_AB4FF0();
  [v8 setTextColor:v10];

  if (*(a1 + v5[10] + 8))
  {
    v11 = sub_AB9260();
  }

  else
  {
    v11 = 0;
  }

  [v8 setText:v11];

  [*&v2[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator] setHidden:{objc_msgSend(*a1, "isFavorite") ^ 1}];
  return [v2 setNeedsLayout];
}

uint64_t sub_123C0C(id *a1, __n128 a2)
{
  _s17ListConfigurationVMa(0);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration;
  swift_beginAccess();
  sub_1252D8(v2 + v8, v7, _s17ListConfigurationVMa);
  swift_beginAccess();
  sub_125438(a1, v2 + v8, _s17ListConfigurationVMa);
  swift_endAccess();
  sub_1252D8(v2 + v8, v5, _s17ListConfigurationVMa);
  v9 = sub_12518C(v5, v7);
  sub_124F38(v5);
  if (v9)
  {
    v10 = a1;
  }

  else
  {
    sub_1252D8(v2 + v8, v5, _s17ListConfigurationVMa);
    sub_123968(v5);
    sub_124F38(a1);
    v10 = v5;
  }

  sub_124F38(v10);
  return sub_124F38(v7);
}

id sub_123D98()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  [v0 bounds];
  [v0 directionalLayoutMargins];
  v1 = &v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration];
  swift_beginAccess();
  [v0 effectiveUserInterfaceLayoutDirection];
  sub_ABA4B0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator];
  [v10 sizeThatFits:{0.0, 0.0}];
  v12 = v11;
  v14 = v13;
  v15 = [v0 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  v17 = sub_ABA320();
  v36.origin.x = v3;
  v36.origin.y = v5;
  v31 = v12;
  v36.size.width = v12;
  v36.size.height = v14;
  Width = CGRectGetWidth(v36);
  v19 = *&v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView];
  [v19 sizeThatFits:{v7, v9}];
  v21 = v20;
  v23 = v22;
  v24 = _s17ListConfigurationVMa(0);
  if ((v1[*(v24 + 36)] & 1) == 0)
  {
    v37.origin.x = v3;
    v37.origin.y = v5;
    v37.size.width = v21;
    v37.size.height = v23;
    v7 = v7 - CGRectGetWidth(v37);
  }

  v25 = *&v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel];
  [v25 sizeThatFits:{v7, v9}];
  v30 = v26;
  v27 = v3;
  if ((v1[*(v24 + 36)] & 1) == 0)
  {
    v38.origin.x = v3;
    v38.origin.y = v5;
    v38.size.width = v21;
    v38.size.height = v23;
    v27 = CGRectGetMaxX(v38) + *&v1[*(v24 + 32)];
  }

  v28 = 4.0;
  if (v17)
  {
    v28 = 2.0;
  }

  sub_ABA460(v3 - Width - v28, v5, v31, v14);
  v33 = 0u;
  v34 = 0u;
  v35 = 1;
  sub_ABA480();
  [v10 setFrame:?];
  sub_ABA460(v3, v5, v21, v23);
  sub_ABA480();
  [v19 setFrame:?];
  sub_ABA460(v27, v5, v7, v30);
  sub_ABA480();
  return [v25 setFrame:?];
}

double sub_124128(double a1, double a2)
{
  [v2 directionalLayoutMargins];
  v3 = &v2[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration];
  swift_beginAccess();
  [v2 effectiveUserInterfaceLayoutDirection];
  sub_AB9E50();
  sub_ABA530();
  v5 = v4;
  v7 = v6;
  v8 = _s17ListConfigurationVMa(0);
  v9 = 0.0;
  if ((v3[*(v8 + 36)] & 1) == 0)
  {
    [*&v2[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView] sizeThatFits:{v5, v7}];
  }

  [*&v2[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel] sizeThatFits:{v5 - v9 + *&v3[*(v8 + 32)], v7}];
  [v2 directionalLayoutMargins];
  sub_ABA3D0();
  return v5;
}

uint64_t sub_1243F4(uint64_t a1, __n128 a2)
{
  result = _s17ListConfigurationVMa(319);
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

uint64_t sub_1244D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Artwork(0);
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
      v13 = sub_AB5000();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_12460C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Artwork(0);
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
      v13 = sub_AB5000();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_124730(uint64_t a1)
{
  sub_13C80(319, &qword_DE8E78, MPModelArtist_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NSDirectionalEdgeInsets(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Artwork(319);
      if (v3 <= 0x3F)
      {
        sub_81414();
        if (v4 <= 0x3F)
        {
          sub_AB5000();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

double sub_124860@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration;
  swift_beginAccess();
  sub_1252D8(v1 + v3, a1, _s17ListConfigurationVMa);
  return result;
}

void (*sub_1248D0(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  v5 = *(*(_s17ListConfigurationVMa(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration;
  swift_beginAccess();
  sub_1252D8(v1 + v8, v7, _s17ListConfigurationVMa);
  return sub_1249DC;
}

void sub_1249DC(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    sub_1252D8(*(*a1 + 40), v4, _s17ListConfigurationVMa);
    sub_123C0C(v4, v6);
    sub_124F38(v5);
  }

  else
  {
    sub_123C0C(*(*a1 + 40), a3);
  }

  free(v5);
  free(v4);

  free(v3);
}

uint64_t sub_124A70@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v3 = sub_124E50(&qword_DF0BB8, _s17ListConfigurationV4ViewCMa, &unk_AFEF68);

  return MusicUIContentView.configuration.getter(ObjectType, v3, a1);
}

uint64_t sub_124AF4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_124E50(&qword_DF0BB8, _s17ListConfigurationV4ViewCMa, &unk_AFEF68);

  return MusicUIContentView.configuration.setter(a1, ObjectType, v3, v4);
}

void (*sub_124B78(uint64_t *a1))(uint64_t *a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  ObjectType = swift_getObjectType();
  v4[11] = ObjectType;
  v6 = sub_124E50(&qword_DF0BB8, _s17ListConfigurationV4ViewCMa, &unk_AFEF68);
  v4[12] = v6;
  MusicUIContentView.configuration.getter(ObjectType, v6, v4);
  return sub_124C40;
}

void sub_124C40(uint64_t *a1, char a2, __n128 a3)
{
  v3 = *a1;
  if (a2)
  {
    v4 = v3[11];
    v5 = v3[12];
    sub_E8BA0(*a1, (v3 + 5));
    MusicUIContentView.configuration.setter(v3 + 5, v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    MusicUIContentView.configuration.setter(*a1, v3[11], v3[12], a3);
  }

  free(v3);
}

uint64_t sub_124CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_AB4C80();
}

uint64_t sub_124D10(uint64_t a1)
{
  v2 = sub_124E50(&qword_DF0C10, _s17ListConfigurationVMa, &unk_AFEEFC);

  return MusicUIContentConfiguration.makeContentView()(a1, v2);
}

uint64_t sub_124DCC(uint64_t a1)
{
  *(a1 + 8) = sub_124E50(&qword_DF0BE8, _s17ListConfigurationVMa, &unk_AFEEA4);
  result = sub_124E50(&qword_DF0BF0, _s17ListConfigurationVMa, &unk_AFEECC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_124E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_124EE0(uint64_t a1)
{
  result = sub_124E50(&qword_DF0C58, _s17ListConfigurationV4ViewCMa, &unk_AFEF28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_124F38(uint64_t a1)
{
  v2 = _s17ListConfigurationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_124F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  v5 = __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = sub_AB4D80();
  v9 = [v8 preferredContentSizeCategory];

  LOBYTE(v8) = sub_ABA330();
  (*(v4 + 8))(v7, a2);
  return v8 & 1;
}

void sub_1250BC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator);
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:8.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  [v1 setPreferredSymbolConfiguration:v5];
}

uint64_t sub_12518C(float64x2_t *a1, float64x2_t *a2)
{
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  if ((static Artwork.Caching.__derived_struct_equals(_:_:)(&a1->f64[1], &a2->f64[1]) & 1) == 0)
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1) == 0)
  {
    return 0;
  }

  v4 = _s17ListConfigurationVMa(0);
  if ((static Artwork.== infix(_:_:)(a1 + v4[7], a2 + v4[7]) & 1) == 0 || *(a1->f64 + v4[8]) != *(a2->f64 + v4[8]) || *(a1->f64 + v4[9]) != *(a2->f64 + v4[9]))
  {
    return 0;
  }

  v6 = v4[10];
  v7 = (a1->f64 + v6);
  v8 = *(&a1->f64[1] + v6);
  v9 = (a2->f64 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10 || (*v7 != *v9 || v8 != v10) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = v4[11];

  return static UIListContentConfiguration.TextProperties.== infix(_:_:)(a1 + v11, a2 + v11);
}

uint64_t sub_1252D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1253F8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_125438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1254A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController;
  sub_121E98(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0D28, &unk_AFF008);
  swift_allocObject();
  *(v1 + v4) = RequestResponse.Controller.init(request:)(v9, v5, v6, v7);
  v8 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *(v1 + v8) = swift_allocObject();
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_noContentStateController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_125604(uint64_t a1)
{
  v50 = a1;
  v2 = sub_AB5180();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin();
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB4EB0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  v11 = sub_AB5290();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB5320();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = __chkstk_darwin();
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v11, v16);
  sub_AB52C0();
  v19 = [v1 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 music_inheritedLayoutInsets];
  v22 = v21;
  v24 = v23;

  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = [v26 accessoryViewAtEdge:1];
  if (v27)
  {
    v28 = v27;
    [v27 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
  }

  else
  {

    v30 = 0.0;
    v32 = 0.0;
    v34 = 0.0;
    v36 = 0.0;
  }

  v52.origin.x = v30;
  v52.origin.y = v32;
  v52.size.width = v34;
  v52.size.height = v36;
  Width = CGRectGetWidth(v52);
  v38 = [v1 traitCollection];
  sub_AB4E90();
  (*(v6 + 16))(v8, v10, v5);
  v39 = sub_AB4D80();
  v40 = *(v6 + 8);
  v40(v8, v5);
  v41 = [v39 preferredContentSizeCategory];

  LOBYTE(v39) = sub_ABA330();
  v40(v10, v5);

  if ((v39 & 1) == 0)
  {
    v42 = [objc_opt_self() defaultMetrics];
    [v42 scaledValueForValue:44.0];
    [v42 scaledValueForValue:44.0];
  }

  if (Width > v24)
  {
    v24 = Width;
  }

  v43 = sub_AB5270();
  sub_AB5160();
  v43(v51, 0);
  sub_AB5280();
  sub_AB5150();
  (*(v48 + 8))(v4, v49);
  v44 = sub_AB5270();
  sub_AB5140();
  v44(v51, 0);
  sub_AB52F0();
  sub_13C80(0, &qword_DF0D20, NSCollectionLayoutSection_ptr);
  [sub_ABA400() setContentInsets:{0.0, v22, 0.0, v24}];
  (*(v46 + 8))(v18, v47);
}

char *sub_125BAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(type metadata accessor for ArtistListViewController.DataSource(0));
  type metadata accessor for ModelResponseIndexBarController();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 100;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = _swiftEmptyArrayStorage;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 1;
  *(v5 + 16) = a1;
  *&v4[qword_DF09E8] = v5;
  v6 = a1;

  v7 = sub_AB5200();
  v8 = *&v7[qword_DF09E8];
  v9 = *(v8 + 40);
  *(v8 + 40) = 50;
  v10 = v7;

  if (v9 != 50)
  {
    sub_380968();
  }

  return v10;
}

unint64_t sub_125CC4()
{
  result = qword_DF0CB8;
  if (!qword_DF0CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF09B8, "6g\r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0CB8);
  }

  return result;
}

void sub_125D28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0, &qword_AFEFB8);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource);
  if (v10)
  {
    v11 = v10;
    sub_AB5230();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      v12 = &unk_DF0CC0;
      v13 = &qword_AFEFB8;
      v14 = v5;
    }

    else
    {
      sub_36B0C(v5, v9, &qword_DF09B8, "6g\r");
      sub_15F84(v9, v3, &qword_DF09B8, "6g\r");
      (*(v7 + 56))(v3, 0, 1, v6);
      sub_1218CC(v3, 1, 1);
      sub_12E1C(v3, &unk_DF0CC0, &qword_AFEFB8);
      v14 = v9;
      v12 = &qword_DF09B8;
      v13 = "6g\r";
    }

    sub_12E1C(v14, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_125F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0, &qword_AFEFB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_125FD4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_126034()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CE8, &unk_AFEFD8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1260C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CE8, &unk_AFEFD8) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_120660(a1, a2, a3, v8);
}

uint64_t sub_12615C()
{

  return swift_deallocObject();
}

uint64_t sub_1261A4()
{

  return swift_deallocObject();
}

uint64_t sub_126208(uint64_t a1, uint64_t a2)
{
  v4 = _s17ListConfigurationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1263EC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_126474;
}

void sub_126474(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

id sub_12652C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ContainerDetailTracklistSectionHeaderView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_126630(void *a1, double a2)
{
  v4 = sub_126814();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  *(inited + 32) = v4;
  *(inited + 40) = v6;

  sub_2F48A4(inited, a1, 0, 0);
  swift_setDeallocating();
  swift_arrayDestroy();

  return a2;
}

double sub_12676C(uint64_t a1)
{
  sub_126B0C(a1);

  return result;
}

void (*sub_1267A4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1263EC(v2);
  return sub_A8F90;
}

uint64_t sub_126814()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v24[0] = v1;
  *(&v24[0] + 1) = v4;
  v24[1] = xmmword_AF7C20;
  v25 = 0;
  v26 = 0;
  v27 = v0;
  v28 = 1;
  v29 = xmmword_AF7C40;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v24);
  v17 = v3;
  v16 = v4;
  v15 = v0;
  sub_2F118(v24, v37);

  v6 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    v14 = v6;
    swift_once();
    v6 = v14;
  }

  v7 = qword_E718C8;
  v8 = v6;
  v9 = v7;
  v10 = [v2 clearColor];
  *&v18[0] = v7;
  *(&v18[0] + 1) = v10;
  v18[1] = xmmword_AF7C20;
  v19 = 0;
  v20 = 0;
  v21 = v8;
  v22 = 1;
  v23 = xmmword_AF7C40;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v5;
  *(v12 + 40) = v11;
  sub_2F118(v18, v37);

  v30[0] = v7;
  v30[1] = v10;
  v31 = xmmword_AF7C20;
  v32 = 0;
  v33 = 0;
  v34 = v8;
  v35 = 1;
  v36 = xmmword_AF7C40;
  sub_2F174(v30);
  v37[0] = v1;
  v37[1] = v4;
  v38 = xmmword_AF7C20;
  v39 = 0;
  v40 = 0;
  v41 = v0;
  v42 = 1;
  v43 = xmmword_AF7C40;
  sub_2F174(v37);
  return v5;
}

double sub_126B0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);

  return result;
}

char *sub_126BC8()
{
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_title];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_subtitle];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textDrawingCache] = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView;
  type metadata accessor for TextStackView();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v0[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents];
  *v4 = sub_126814();
  v4[1] = v5;
  v4[2] = v6;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ContainerDetailTracklistSectionHeaderView();
  result = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = result;
  v9 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView;
  v10 = *&result[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView];
  v11 = *&result[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents + 16];
  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_11:
    v18 = v8;
LABEL_12:
    [v8 addSubview:*&v8[v9]];

    return v8;
  }

  result = sub_ABB060();
  v12 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = v8;
    v14 = v10;

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = sub_36003C(i, v11, v15);
      }

      else
      {
        v17 = *(v11 + 8 * i + 32);
      }

      TextStackView.add(_:)(v17);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_126D80()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textDrawingCache) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView;
  type metadata accessor for TextStackView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents);
  *v4 = sub_126814();
  v4[1] = v5;
  v4[2] = v6;
  sub_ABAFD0();
  __break(1u);
}

void *sub_126E50(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v8 = *v4;
  *(v5 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v5 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  v9 = *(v8 + 312);
  v10 = *(v8 + 320);
  v12 = type metadata accessor for PrincipalImpressionTracker.History(255, v9, v10, v11);
  swift_getTupleTypeMetadata2();
  v13 = sub_AB97C0();
  v14 = sub_131ADC(v13, &type metadata for String, v12, &protocol witness table for String);

  *(v5 + 104) = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for PrincipalImpressionTracker.TrackedItem(255, v9, v10, v16);
  swift_getTupleTypeMetadata2();
  v18 = sub_AB97C0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = sub_131ADC(v18, AssociatedTypeWitness, v17, AssociatedConformanceWitness);

  *(v5 + 152) = 0;
  *(v5 + 112) = v19;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 1;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 1;
  *(v5 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  v35 = a4;
  *(v5 + 81) = a4;
  sub_12E61C();
  swift_unknownObjectWeakAssign();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v20;
  v22 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  aBlock[4] = sub_132DDC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2DDCF4;
  aBlock[3] = &block_descriptor_41;
  v23 = _Block_copy(aBlock);

  v24 = a2;

  v25 = [v22 initWithScrollView:v24 changeHandler:v23];
  _Block_release(v23);

  v26 = *(v5 + 120);
  *(v5 + 120) = v25;

  v27 = swift_allocObject();
  swift_weakInit();
  v28 = UIApplicationDidBecomeActiveNotification;

  v29 = swift_allocObject();
  v29[2] = v9;
  v29[3] = v10;
  v29[4] = v27;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v5 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, 0, 1, 1, sub_132E00, v29);

  if (a3)
  {
    swift_allocObject();

    *(v5 + 128) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_132E0C, v5);
  }

  if (v35)
  {
    v30 = sub_AB97C0();
    if (sub_AB9860())
    {
      v31 = sub_486410(v30, AssociatedTypeWitness, AssociatedConformanceWitness);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();

      v31 = &_swiftEmptySetSingleton;
    }

    swift_beginAccess();
    *(v5 + 152) = v31;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v5;
}

double sub_127348()
{
  v1 = *v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = __chkstk_darwin().n128_u64[0];
  v8 = &v12 - v7;
  if (qword_DE6D68 != -1)
  {
    swift_once();
  }

  if (byte_E71A90 & 1) == 0 && *(v0 + 145) == 1 && (sub_128838())
  {
    sub_AB3420();
    v9 = swift_allocObject();
    swift_weakInit();
    (*(v3 + 16))(v5, v8, v2);
    v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = *(v1 + 312);
    *(v11 + 3) = *(v1 + 320);
    *(v11 + 4) = v9;
    (*(v3 + 32))(&v11[v10], v5, v2);

    sub_48C6A0(sub_132864, v11);
    (*(v3 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_12758C()
{
  sub_176DC(v0 + 16);

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_127604()
{
  if (*(v0 + 56))
  {
    return *(v0 + 56);
  }

  result = v0;
  *(v0 + 56) = v0;
  return result;
}

void sub_127620(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_AB7CF0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    v21[2] = v3[14];
    v12 = swift_allocObject();
    swift_weakInit();
    __chkstk_darwin();
    v21[-4] = v12;
    v21[-3] = a1;
    v21[0] = a1;
    *&v21[-2] = a2;
    __chkstk_darwin();
    v13 = *(v6 + 312);
    v14 = *(v6 + 320);
    v21[-4] = v13;
    v21[-3] = v14;
    v21[-2] = sub_13248C;
    v21[-1] = v15;
    swift_getAssociatedTypeWitness();
    type metadata accessor for PrincipalImpressionTracker.TrackedItem(255, v13, v14, v16);
    swift_getAssociatedConformanceWitness();
    sub_AB9080();

    swift_getWitnessTable();
    sub_AB9680();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = UIScrollView.isScrolling.getter();

      if ((v19 & 1) == 0)
      {
        v20 = v3[6];
        __chkstk_darwin();
        v21[-2] = v21[0];
        *&v21[-1] = a2;

        sub_2C1BF8(sub_1324B8, &v21[-4], v20);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_127998()
{
  if (qword_DE6D68 != -1)
  {
    swift_once();
  }

  if (byte_E71A90)
  {
    return 0;
  }

  else
  {
    return *(v0 + 145);
  }
}

uint64_t sub_1279F8(uint64_t result)
{
  *(v1 + 80) = result;
  if (result)
  {
    *(v1 + 144) = 1;
  }

  return result;
}

double sub_127A2C(void *a1, unint64_t a2, uint64_t a3, int a4, int a5, __n128 a6)
{
  v40 = a4;
  v41 = a5;
  v38 = a1;
  v39 = a3;
  v44 = a2;
  v7 = *(*v6 + 320);
  v45 = *(*v6 + 312);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v42 = &v31 - v10;
  v11 = sub_AB3430();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v43 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v31 - v14;
  sub_AB3420();
  if (swift_unknownObjectWeakLoadStrong() && ((*(v7 + 24))(v47, v44, v45, v7), swift_unknownObjectRelease(), v55 = v47[6], v56 = v47[7], v57[0] = v48[0], *(v57 + 9) = *(v48 + 9), v51 = v47[2], v52 = v47[3], v53 = v47[4], v54 = v47[5], v49 = v47[0], v50 = v47[1], sub_A996C(&v49) != 1))
  {
    v64 = v55;
    v65 = v56;
    v66[0] = v57[0];
    *(v66 + 9) = *(v57 + 9);
    v60 = v51;
    v61 = v52;
    v62 = v53;
    v63 = v54;
    v58 = v49;
    v59 = v50;
    v36 = v6[11];
    v33 = swift_allocObject();
    swift_weakInit();
    v17 = AssociatedTypeWitness;
    (*(v8 + 16))(v42, v44, AssociatedTypeWitness);
    v18 = *(v12 + 16);
    v35 = v11;
    v18(v43, v15, v11);
    v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v20 + 175) & 0xFFFFFFFFFFFFFFF8;
    v44 = (*(v12 + 80) + v34 + 10) & ~*(v12 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = v45;
    *(v21 + 3) = v7;
    *(v21 + 4) = v33;
    (*(v8 + 32))(&v21[v19], v42, v17);
    v22 = v38;
    *&v21[v20] = v38;
    v23 = &v21[v32];
    v24 = v59;
    *v23 = v58;
    *(v23 + 1) = v24;
    v25 = v63;
    *(v23 + 4) = v62;
    *(v23 + 5) = v25;
    v26 = v61;
    *(v23 + 2) = v60;
    *(v23 + 3) = v26;
    *(v23 + 137) = *(v66 + 9);
    v27 = v66[0];
    *(v23 + 7) = v65;
    *(v23 + 8) = v27;
    *(v23 + 6) = v64;
    v28 = v35;
    v29 = &v21[v34];
    *v29 = v39;
    v29[8] = v40 & 1;
    v29[9] = v41;
    (*(v12 + 32))(&v21[v44], v43, v28);

    v30 = v22;
    sub_132C20(v47, &v46);
    sub_48C6A0(sub_132AE0, v21);
    sub_12E1C(v47, qword_DF1340, &unk_B07BD0);
    (*(v12 + 8))(v15, v28);
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

  return result;
}

void sub_127EB8()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.History(255, *(v2 + 312), *(v2 + 320), v3);
  sub_AB9080();
  sub_AB9070(0);
  swift_endAccess();
  v4 = v1[4];
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 104);
      swift_unknownObjectRetain();
      v10(ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void *sub_127FFC(uint64_t a1)
{
  v26[0] = a1;
  v2 = *v1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 320);
  v8 = *(v2 + 312);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_ABB130();
  v10 = type metadata accessor for PrincipalImpressionTracker(0, v8, v7, v9);
  WitnessTable = swift_getWitnessTable();
  sub_23BE0C(v10);
  v13 = sub_21CD14(1, v6, v29, v10, WitnessTable, v12);
  (*(v4 + 8))(v6, v3);
  sub_12E1C(v29, &qword_DF2BD0, &unk_AFDC00);
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.TrackedItem(0, v8, v7, v14);

  sub_AB90A0();
  v15 = v28;

  if (!v15)
  {
    return 0;
  }

  v16 = *(v15 + 88);
  if (*(v15 + 144))
  {
    v17 = *(v15 + 16);
  }

  else
  {
    v17 = 0;
  }

  if (*(v15 + 144))
  {
    v18 = *(v15 + 24);
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = (v16 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *v19;
    v18 = v19[1];
LABEL_11:

    goto LABEL_12;
  }

  if (v18)
  {
    goto LABEL_11;
  }

  v28 = *(v15 + 56);
  v17 = sub_ABB330();
  v18 = v25;
LABEL_12:
  swift_beginAccess();
  v26[1] = v17;
  v26[2] = v18;
  type metadata accessor for PrincipalImpressionTracker.History(0, v8, v7, v20);

  sub_AB90A0();

  if (v27)
  {
    v21 = *(v27 + 176);

    if (v13)
    {

      v23 = sub_4A365C(v21, v13, v22);

      return v23;
    }
  }

  else
  {
  }

  return 0;
}

double sub_128384(uint64_t a1, __n128 a2)
{
  v4 = *(*v2 + 320);
  v34 = *(*v2 + 312);
  v35 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v8 = v31 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_ABA9C0();
  v11 = *(v10 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v14 = v31 - v13;
  if (v2[81] == 1)
  {
    v15 = sub_1287E8(v40);
    v17 = *v16;
    v33 = a1;
    if (v17)
    {
      v31[1] = *(TupleTypeMetadata2 + 48);
      v32 = v15;
      (*(v6 + 16))(v8, a1, AssociatedTypeWitness);
      v18 = v34;
      v19 = v35;
      swift_getAssociatedConformanceWitness();
      sub_AB9BF0();
      v20 = v19;
      v21 = sub_AB9BA0();
      (v32)(v40, 0);
      v22 = 0;
      *v14 = v21 & 1;
    }

    else
    {
      (v15)(v40, 0);
      v22 = 1;
      v18 = v34;
      v20 = v35;
    }

    (*(*(TupleTypeMetadata2 - 8) + 56))(v14, v22, 1, TupleTypeMetadata2);
    (*(v11 + 8))(v14, v10);
    swift_beginAccess();
    type metadata accessor for PrincipalImpressionTracker.TrackedItem(0, v18, v20, v23);
    swift_getAssociatedConformanceWitness();

    sub_AB90A0();
    v24 = v39;

    if (v24)
    {
      v25 = *(v24 + 88);
      if (*(v24 + 144))
      {
        v26 = *(v24 + 16);
      }

      else
      {
        v26 = 0;
      }

      if (*(v24 + 144))
      {
        v27 = *(v24 + 24);
      }

      else
      {
        v27 = 0;
      }

      if (v25)
      {
        v28 = (v25 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
        v26 = *v28;
        v27 = v28[1];
      }

      else if (!v27)
      {
        v39 = *(v24 + 56);
        v26 = sub_ABB330();
        v27 = v30;
LABEL_16:
        swift_beginAccess();
        v36 = v26;
        v37 = v27;
        type metadata accessor for PrincipalImpressionTracker.History(0, v18, v20, v29);

        sub_AB90A0();

        if (v38)
        {
          *(v38 + 193) = 1;
        }

        else
        {
        }

        return result;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_128838()
{
  v0 = sub_AB7CC0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v3 = sub_ABA150();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_AB7CF0();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 applicationState];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = UIScrollView.isScrolling.getter();

        if ((v11 & 1) == 0)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12 && (v13 = v12, (v14 = sub_4D39CC()) != 0))
            {
              v15 = v14;
              v16 = sub_4D3DD0();
              v17 = UIScrollView.isScrolling.getter();

              if ((v17 & 1) == 0)
              {
                v18 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_visibleViewControllers;
                swift_beginAccess();
                v19 = *&v15[v18];

                v8 = sub_472FF8(v13, v19);
                swift_unknownObjectRelease();

                return v8 & 1;
              }

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }
      }

      v8 = 1;
    }

    return v8 & 1;
  }

  __break(1u);
  return result;
}

void sub_128A94(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_AB7CC0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v13 = sub_ABA150();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_AB7CF0();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (qword_DE6D68 != -1)
  {
LABEL_45:
    swift_once();
  }

  if (byte_E71A90 & 1) == 0 && *(v5 + 145) == 1 && (sub_128838())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {

        return;
      }

      sub_1292D8();
      v18 = v16;
      v19 = sub_1294F4(a1, v16, a4);
      v35[0] = v18;

      v20 = *(a1 + 88);
      if (*(a1 + 144))
      {
        v21 = *(a1 + 16);
      }

      else
      {
        v21 = 0;
      }

      if (*(a1 + 144))
      {
        v22 = *(a1 + 24);
      }

      else
      {
        v22 = 0;
      }

      if (v20)
      {
        v23 = v20 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier;
        v21 = *v23;
        v22 = *(v23 + 8);
      }

      else if (!v22)
      {
        v37[0] = *(a1 + 56);
        v21 = sub_ABB330();
        v22 = v34;
LABEL_24:
        swift_beginAccess();
        v35[1] = v21;
        v35[2] = v22;
        type metadata accessor for PrincipalImpressionTracker.History(0, *(v9 + 312), *(v9 + 320), v28);

        sub_AB90A0();

        v30 = v36;
        if (v36)
        {

          v31 = sub_12E9E8();

          if (v19)
          {
            if (v31 == 2 || (v31 & 1) != 0)
            {
LABEL_30:
              v32 = 0;
LABEL_31:
              sub_128FB0(a1, v29);
              sub_12EAAC(v32, a3);
            }
          }

          else if (v31 != 2 && (v31 & 1) == 0)
          {
            v32 = 1;
            goto LABEL_31;
          }

          swift_beginAccess();
          if (v5[19])
          {
            if (v30)
            {
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();

              v33 = sub_AB9BD0();

              *(v30 + 193) = v33 & 1;

LABEL_40:

              return;
            }

LABEL_38:

            return;
          }

LABEL_39:

          goto LABEL_40;
        }

        if ((v19 & 1) == 0)
        {
          swift_beginAccess();
          if (v5[19])
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (qword_DE6888 != -1)
    {
      swift_once();
    }

    v24 = sub_AB4BC0();
    __swift_project_value_buffer(v24, qword_E70EB0);
    v25 = sub_AB4BA0();
    v26 = sub_AB9F10();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Paused tracking.  Container view was deallocated", v27, 2u);
    }
  }
}

uint64_t sub_128FB0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = (a1 + 16);
  v7 = *(a1 + 88);
  if (*(a1 + 144))
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 144))
  {
    v9 = *(a1 + 24);
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = (v7 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v8 = *v10;
    v9 = v10[1];
LABEL_10:

    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_10;
  }

  *&v26[0] = *(a1 + 56);
  v8 = sub_ABB330();
  v9 = v22;
LABEL_11:
  swift_beginAccess();
  *&v26[0] = v8;
  *(&v26[0] + 1) = v9;
  type metadata accessor for PrincipalImpressionTracker.History(0, *(v5 + 312), *(v5 + 320), v11);

  sub_AB90A0();

  v12 = v25;
  if (!v25)
  {
    v13 = v6[7];
    v31 = v6[6];
    v32 = v13;
    v33[0] = v6[8];
    *(v33 + 9) = *(v6 + 137);
    v14 = v6[3];
    v27 = v6[2];
    v28 = v14;
    v15 = v6[5];
    v29 = v6[4];
    v30 = v15;
    v16 = v6[1];
    v26[0] = *v6;
    v26[1] = v16;
    if (*(a1 + 184))
    {
      sub_465F4(v26, v24);
      if (qword_DE6D70 != -1)
      {
        swift_once();
      }

      UnfairLock.locked<A>(_:)(sub_13303C);
      v17 = qword_E0A760;
    }

    else
    {
      v17 = *(a1 + 176);
      sub_465F4(v26, v24);
    }

    v18 = v33[0];
    v12 = swift_allocObject();
    sub_12E940(v26, v17, v19, v20);
    if (v18)
    {
      v21 = *(&v26[0] + 1);
    }

    else
    {
      v21 = 0;
    }

    if (*(&v29 + 1) || v21)
    {
    }

    else
    {
      v24[0] = *(&v27 + 1);

      sub_ABB330();
    }

    swift_beginAccess();
    sub_AB9080();
    sub_AB90B0();
    swift_endAccess();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v12 + 184) = v3[8];
    *(v12 + 192) = 0;
  }

  return v12;
}

void sub_1292D8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_2;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_2;
  }

  v2 = [v1 parentViewController];
  if (!v2)
  {
    goto LABEL_2;
  }

  v14 = v2;
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v3;
    v5 = v0;
    v6 = v14;
LABEL_16:

    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    v11 = v10;
    v12 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v12 + 24) = v11;
    swift_unknownObjectWeakAssign();
    sub_12DE8C(Strong);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_2:

    swift_unknownObjectRelease();
    return;
  }

  v6 = v14;
  while (1)
  {
    v7 = v6;

    v6 = [v6 parentViewController];
    if (!v6)
    {
      break;
    }

    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v4 = v8;
      v5 = v0;
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1294F4(uint64_t a1, void *a2, double a3)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = a2;
      if ([v7 isHidden] & 1) == 0 && objc_msgSend(v7, "_isInAWindow") && (v9 = swift_unknownObjectWeakLoadStrong(), v10 = sub_1298E0(v8, v9, *(v3 + 24)), swift_unknownObjectRelease(), (v10))
      {
        [v8 visibleBounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [v8 adjustedContentInset];
        UIEdgeInsetsInsetRect(v12, v14, v16, v18, v19, v20);
        [v7 frame];
        v44 = v21;
        v22 = sub_ABA450();
        if (*(a1 + 200) > 1u)
        {
          if (*(a1 + 200) == 2)
          {
            v42 = [v7 superview];
            if (v42)
            {
              v43 = v42;
              [v7 frame];
              [v43 convertRect:v8 toCoordinateSpace:?];
              v23 = sub_ABA450();

              v40 = v7;
              v7 = v43;
              goto LABEL_18;
            }

            v23 = 1;
          }

          else
          {
            [v7 frame];
            [v7 convertRect:v8 toCoordinateSpace:?];
            [v8 visibleBounds];
            v23 = sub_ABA450();
          }
        }

        else
        {
          v23 = v22;
          if (*(a1 + 200))
          {
            if ((v22 & 1) != 0 && swift_unknownObjectWeakLoadStrong() && (v24 = *(v3 + 24), ObjectType = swift_getObjectType(), v26 = (*(v24 + 88))(ObjectType, v24), swift_unknownObjectRelease(), v26))
            {
              if (v26 != a2 && (v27 = swift_unknownObjectWeakLoadStrong()) != 0 && (v28 = v27, v29 = [v27 superview], v28, v29))
              {
                [v26 visibleBounds];
                v31 = v30;
                v33 = v32;
                v35 = v34;
                v37 = v36;
                [v26 adjustedContentInset];
                UIEdgeInsetsInsetRect(v31, v33, v35, v37, v38, v39);
                [v7 frame];
                [v29 convertRect:v26 toCoordinateSpace:?];
                v23 = sub_ABA450();

                v40 = v26;
                v7 = v29;
              }

              else
              {

                v23 = 1;
                v40 = v8;
                v7 = v26;
              }
            }

            else
            {
              v23 = 1;
              v40 = v7;
              v7 = v8;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v23 = 0;
      }

      v40 = v8;
LABEL_18:

      return v23 & 1;
    }
  }

  v23 = 0;
  return v23 & 1;
}

id sub_1298E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return &dword_0 + 1;
  }

  ObjectType = swift_getObjectType();
  v6 = (*(a3 + 88))(ObjectType, a3);
  if (!v6)
  {
    return &dword_0 + 1;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v8 superview];
  if (v9)
  {
    while (1)
    {

      if (v8)
      {
        v11 = [v8 superview];
        if (v11)
        {
          v12 = v11;

          if (v12 == v7)
          {
            break;
          }
        }
      }

      v10 = [v8 superview];

      v9 = [v10 superview];
      v8 = v10;
      if (!v9)
      {
        goto LABEL_10;
      }
    }
  }

  v10 = v8;
LABEL_10:
  [v7 visibleBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = [v7 adjustedContentInset];
  if (v10)
  {
    v24 = UIEdgeInsetsInsetRect(v14, v16, v18, v20, v22, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v10 frame];
    v40.origin.x = v31;
    v40.origin.y = v32;
    v40.size.width = v33;
    v40.size.height = v34;
    v39.origin.x = v24;
    v39.origin.y = v26;
    v39.size.width = v28;
    v39.size.height = v30;
    if (CGRectIntersectsRect(v39, v40))
    {
      v35 = swift_getObjectType();
      v36 = (*(a3 + 32))(v35, a3);
      v38 = sub_1298E0(v7, v36, v37);

      swift_unknownObjectRelease();
      return (v38 & 1);
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

  return result;
}

double sub_129AFC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v46 = a2;
  v5 = *(*v3 + 320);
  v47 = *(*v3 + 312);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_ABA9C0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin();
  v14 = &v42 - v13;
  (*(v8 + 16))(v10, a1, v7, v12);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return result;
  }

  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v16 = v11;
  v17 = AssociatedTypeWitness;
  if (!swift_unknownObjectWeakLoadStrong() || (v45 = v3, v18 = v5, v19 = v47, (*(v5 + 24))(v52, v14, v47, v5), swift_unknownObjectRelease(), v60 = v52[6], v61 = v52[7], *v62 = v53[0], *&v62[9] = *(v53 + 9), v56 = v52[2], v57 = v52[3], v58 = v52[4], v59 = v52[5], v54 = v52[0], v55 = v52[1], sub_A996C(&v54) == 1))
  {
    (*(v16 + 8))(v14, v17);
    return result;
  }

  v44 = v14;
  v68 = v60;
  v69 = v61;
  v70[0] = *v62;
  *(v70 + 9) = *&v62[9];
  v64 = v56;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v63[0] = v54;
  v63[1] = v55;
  v43 = v62[0];
  if (v62[0])
  {
    v20 = v54;
  }

  else
  {
    v20 = 0;
  }

  if (v62[0])
  {
    v21 = *(&v54 + 1);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v23 = v17;
    v20 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v21 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  }

  else
  {
    v23 = v17;
    if (v21)
    {
    }

    else
    {
      v51[0] = *(&v64 + 1);
      v20 = sub_ABB330();
      v21 = v24;
    }
  }

  swift_beginAccess();
  v51[0] = v20;
  v51[1] = v21;
  type metadata accessor for PrincipalImpressionTracker.History(0, v19, v18, v25);

  sub_AB90A0();

  v26 = v51[20];

  if (v26)
  {
    (*(v16 + 8))(v44, v23);
    sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
    return result;
  }

  v42 = v22;
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.TrackedItem(0, v19, v18, v27);
  swift_getAssociatedConformanceWitness();

  v28 = v44;
  sub_AB90A0();
  v29 = v51[0];

  if (v29)
  {
    sub_128FB0(v29, v30);
    sub_12EAAC(0, v46);
    sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
    (*(v16 + 8))(v28, v23);

    return result;
  }

  sub_465F4(v63, v51);
  if (qword_DE6D70 != -1)
  {
    swift_once();
  }

  UnfairLock.locked<A>(_:)(sub_13303C);
  v31 = qword_E0A760;
  v32 = swift_allocObject();
  sub_12E940(v63, v31, v33, v34);
  v35 = v45;
  Strong = swift_unknownObjectWeakLoadStrong();
  v37 = v44;
  if (Strong)
  {
    swift_unknownObjectRelease();
    *(v32 + 184) = *(v35 + 64);
    *(v32 + 192) = 0;
  }

  sub_12EAAC(0, v46);
  if (v43)
  {
    v38 = *&v63[0];
  }

  else
  {
    v38 = 0;
  }

  if (v43)
  {
    v39 = *(&v63[0] + 1);
  }

  else
  {
    v39 = 0;
  }

  if (v42)
  {
    v38 = *(v42 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  }

  else if (!v39)
  {
    v51[0] = *(&v64 + 1);
    v38 = sub_ABB330();
    v40 = v41;
    goto LABEL_35;
  }

LABEL_35:
  v49 = v40;
  v50 = v32;
  v48 = v38;
  swift_beginAccess();
  sub_AB9080();

  sub_AB90B0();
  swift_endAccess();

  sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
  (*(v16 + 8))(v37, v23);
  return result;
}

void sub_12A1D8(void *a1)
{
  if (qword_DE6D68 != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  if ((byte_E71A90 & 1) == 0 && *(v1 + 145) == 1)
  {
    if ((*(v1 + 192) & 1) != 0 || ((v3 = *(v1 + 176), v2 = *(v1 + 184), v4 = a1, [a1 contentOffset], a1 = v4, v3 == v6) ? (v7 = v2 == v5) : (v7 = 0), !v7))
    {
      v8 = a1;
      if (*(v1 + 168))
      {
        (*(*v1 + 776))();
        Current = CFAbsoluteTimeGetCurrent();
      }

      else
      {
        v10 = *(v1 + 160);
        v11 = CFAbsoluteTimeGetCurrent();
        if (v11 - v10 <= 0.025)
        {
          return;
        }

        v12 = v11;
        (*(*v1 + 776))();
        Current = v12;
      }

      *(v1 + 160) = Current;
      *(v1 + 168) = 0;
      [v8 contentOffset];
      *(v1 + 176) = v13;
      *(v1 + 184) = v14;
      *(v1 + 192) = 0;
    }
  }
}

uint64_t sub_12A330(unsigned __int16 a1, uint64_t a2, char *a3)
{
  v38 = a3;
  v40 = a2;
  v5 = *v3;
  v6 = sub_AB7C80();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin();
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_AB3430();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v5 + 312);
  v13 = *(v5 + 320);
  type metadata accessor for PrincipalImpressionTracker.History(0, v12, v13, v14);

  v15 = sub_AB9050();

  if ((v15 & 1) == 0 || (v17 = 0, (a1 & 4) == 0))
  {
    v37 = a1;
    v18 = v40;
    sub_129AFC(v38, v40, v16);
    v35 = dispatch_semaphore_create(1);
    v19 = swift_allocObject();
    v38 = v8;
    v20 = v19;
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v34[1] = v19 + 16;
    v36 = v3[11];
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v39;
    (*(v9 + 16))(v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v39);
    v23 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v12;
    *(v25 + 24) = v13;
    *(v25 + 32) = v37;
    *(v25 + 40) = v20;
    *(v25 + 48) = v21;
    (*(v9 + 32))(v25 + v23, v11, v22);
    v26 = v35;
    *(v25 + v24) = v35;

    v27 = v26;
    sub_48C8C4(sub_1326E0, v25);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v28 = v38;
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v41 + 8))(v28, v42);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v17 = *(v20 + 16);
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v29 = sub_AB4BC0();
      __swift_project_value_buffer(v29, qword_E70EB0);
      v30 = sub_AB4BA0();
      v31 = sub_AB9F30();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "Semaphore returned a non-success code.  No impressions were generated", v32, 2u);
      }

      return 0;
    }
  }

  return v17;
}

double sub_12A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v12 = sub_21CCAC(a3, a4, v19, ObjectType, a2);
  sub_12E1C(v19, &qword_DF2BD0, &unk_AFDC00);
  if (v12)
  {
    sub_19500(v12);
  }

  v13 = (*(a2 + 56))(ObjectType, a2);
  __chkstk_darwin();
  v15[2] = v6;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  sub_2C1B60(sub_132588, v15, v13);

  return result;
}

uint64_t sub_12A8CC(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v4;
  swift_beginAccess();
  v9 = v4[13];
  if (a1)
  {
    __chkstk_darwin();
    v10 = *(v8 + 312);
    v11 = *(v8 + 320);
    type metadata accessor for PrincipalImpressionTracker.History(0, v10, v11, v12);
    swift_bridgeObjectRetain_n();
    v13 = sub_AB9040();

    v9 = v13;
  }

  else
  {
    v10 = *(v8 + 312);
    v11 = *(v8 + 320);
  }

  v14 = sub_4A17C0(v9, a2, a1 & 1, *(v4 + 144), v10, v11, a3);

  return v14;
}

void sub_12AA58()
{
  if (qword_DE6D68 != -1)
  {
    swift_once();
  }

  if ((byte_E71A90 & 1) == 0 && v0[145] == 1)
  {
    v1 = *(*v0 + 776);

    v1();
  }
}

void sub_12AAF4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v3 = v32 - v2;
  v4 = *(sub_AB3430() - 8);
  __chkstk_darwin();
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6D68 != -1)
  {
    v31 = v5;
    swift_once();
    v5 = v31;
  }

  if ((byte_E71A90 & 1) == 0 && *(v0 + 145) == 1)
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v9 = v5;
    v10 = type metadata accessor for PrincipalImpressionTracker(0, *(v1 + 312), *(v1 + 320), v6);
    WitnessTable = swift_getWitnessTable();
    sub_23BE0C(v10);
    v32[1] = v0;
    v13 = sub_21CD14(2, v8, v33, v10, WitnessTable, v12);
    (*(v4 + 8))(v8, v9);
    sub_12E1C(v33, &qword_DF2BD0, &unk_AFDC00);
    if (v13)
    {
      if (v13 >> 62)
      {
        if (!sub_ABB060())
        {
          goto LABEL_30;
        }
      }

      else if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_30:

        return;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        ObjectType = swift_getObjectType();
        v15 = swift_conformsToProtocol2();
        if (v15)
        {
          (*(v15 + 24))(ObjectType, v15);
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
      }

      v16 = type metadata accessor for MetricsPageProperties(0);
      (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
LABEL_13:
      v17 = *MetricsReportingController.shared.unsafeMutableAddressor();
      if (v13 >> 62)
      {
        v18 = sub_ABB060();
        if (v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v18 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
        if (v18)
        {
LABEL_15:
          *&v33[0] = _swiftEmptyArrayStorage;
          v19 = v17;
          sub_6D410(0, v18 & ~(v18 >> 63), 0);
          if (v18 < 0)
          {
            __break(1u);
            return;
          }

          v32[0] = v17;
          v21 = *&v33[0];
          if ((v13 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v18; ++i)
            {
              v23 = *(sub_35FC58(i, v13, v20) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

              swift_unknownObjectRelease();
              *&v33[0] = v21;
              v25 = v21[2];
              v24 = v21[3];
              if (v25 >= v24 >> 1)
              {
                sub_6D410((v24 > 1), v25 + 1, 1);
                v21 = *&v33[0];
              }

              v21[2] = v25 + 1;
              v21[v25 + 4] = v23;
            }
          }

          else
          {
            v27 = (v13 + 32);
            do
            {
              v28 = *(*v27 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
              *&v33[0] = v21;
              v30 = v21[2];
              v29 = v21[3];

              if (v30 >= v29 >> 1)
              {
                sub_6D410((v29 > 1), v30 + 1, 1);
                v21 = *&v33[0];
              }

              v21[2] = v30 + 1;
              v21[v30 + 4] = v28;
              ++v27;
              --v18;
            }

            while (v18);
          }

          v17 = v32[0];
          goto LABEL_29;
        }
      }

      v26 = v17;
      v21 = _swiftEmptyArrayStorage;
LABEL_29:
      (*(&stru_68.flags + (swift_isaMask & *v17)))(v21, v3, 0, 0, 0, 0, 0);

      sub_127EB8();
      sub_12E1C(v3, &unk_DF1330, &qword_AF9120);
      goto LABEL_30;
    }
  }
}

void sub_12AFE8()
{
  v1 = v0;
  v28 = v0;
  v4 = v0;
  if (!v0)
  {
    return;
  }

  while (1)
  {
    ObjectType = swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      v7 = *(v6 + 16);
      v8 = v6;
      v9 = v1;
      v10 = v7(ObjectType, v8);

      if (v10)
      {
        v17 = v9;
        goto LABEL_30;
      }
    }

    if (v1 == v28)
    {

      goto LABEL_2;
    }

    v11 = [v1 childViewControllers];
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v30 = v11;
    v12 = sub_AB9760();
    v13 = v12;
    v29 = v1;
    if (!(v12 >> 62))
    {
      v14 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (v14)
      {
        break;
      }

      goto LABEL_24;
    }

    v14 = sub_ABB060();
    if (v14)
    {
      break;
    }

LABEL_24:
    v1 = v29;

LABEL_2:
    if (v1)
    {
      v2 = [v1 parentViewController];
      v3 = v2;

      v1 = v2;
      if (v2)
      {
        continue;
      }
    }

    return;
  }

  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_35F8D4(v15, v13);
    }

    else
    {
      if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_33;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      if (v17)
      {
        v20 = v19;
        v21 = swift_getObjectType();
        v31 = *(v20 + 16);
        v32 = v21;
        v17 = v17;
        v22 = v31(v32, v20);

        if (v22)
        {
          break;
        }
      }
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_24;
    }
  }

  v23 = swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v25 = *(v24 + 16);
    v26 = v24;
    v9 = v17;
    v25(v23, v26);
    v27 = v29;
  }

  else
  {
    v27 = v29;
    v9 = v29;
  }

LABEL_30:
}

void sub_12B2FC()
{
  v1 = v0;
  v2 = 1;
  v14 = v1;
  while (1)
  {
    if (v2)
    {
      v3 = v0;
      if (!v0)
      {
        return;
      }
    }

    else
    {
      if (!v0)
      {
        return;
      }

      v4 = [v0 parentViewController];
      v5 = v4;

      v0 = v4;
      if (!v4)
      {
        return;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {

      return;
    }

    if (v0 != v1)
    {
      break;
    }

LABEL_3:

    v2 = 0;
  }

  v6 = [v0 childViewControllers];
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v7 = sub_AB9760();
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_2;
  }

  v9 = sub_ABB060();
  if (!v9)
  {
LABEL_2:

    v1 = v14;
    goto LABEL_3;
  }

LABEL_13:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_35F8D4(v10, v8);
    }

    else
    {
      if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v12)
    {

      return;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void *sub_12B510(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_6D4B0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_35FAB8(i, a1);
        type metadata accessor for ImpressionTracker();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA828, &unk_AFF5B0);
        swift_dynamicCast();
        v5 = v12;
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          sub_6D4B0((v6 > 1), v7 + 1, 1);
          v5 = v12;
        }

        _swiftEmptyArrayStorage[2] = v7 + 1;
        *&_swiftEmptyArrayStorage[2 * v7 + 4] = v5;
      }
    }

    else
    {
      v8 = a1 + 32;
      type metadata accessor for ImpressionTracker();
      do
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA828, &unk_AFF5B0);
        swift_dynamicCast();
        v9 = v12;
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_6D4B0((v10 > 1), v11 + 1, 1);
          v9 = v12;
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        *&_swiftEmptyArrayStorage[2 * v11 + 4] = v9;
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_12B708(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_ABAEC0();
    v5 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA10, &unk_AFF5C0);
      swift_dynamicCast();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v5 += 16;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_12B7FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_6D6C0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v9 = v2[2];
      v10 = v2[3];

      if (v9 >= v10 >> 1)
      {
        sub_6D6C0((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &_s7CatalogV11ResultScopeVN;
      v15 = &off_CFFFD0;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v8;
      v11[5] = v7;
      v2[2] = v9 + 1;
      sub_70DF8(&v13, &v2[5 * v9 + 4]);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_12B924(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v14 = _swiftEmptyArrayStorage;
  result = sub_6D7E0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_360360(i, a1, v5);
        type metadata accessor for JSBadgingItem();
        swift_dynamicCast();
        v14 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_6D7E0((v7 > 1), v8 + 1, 1);
          v3 = v14;
        }

        v3[2] = v8 + 1;
        sub_9ACFC(v13, &v3[4 * v8 + 4]);
      }
    }

    else
    {
      v9 = (a1 + 32);
      type metadata accessor for JSBadgingItem();
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v14 = v3;
        v12 = v3[2];
        v11 = v3[3];
        if (v12 >= v11 >> 1)
        {
          sub_6D7E0((v11 > 1), v12 + 1, 1);
          v3 = v14;
        }

        v3[2] = v12 + 1;
        sub_9ACFC(v13, &v3[4 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_12BAF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_6D7E0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_3616C8(i, a1);
        sub_13C80(0, &qword_DF1300, NSNumber_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_6D7E0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_9ACFC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_13C80(0, &qword_DF1300, NSNumber_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_6D7E0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_9ACFC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_12BCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_6D6C0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        sub_6D6C0((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &_s7LibraryV11ResultScopeON;
      v12 = &off_D171C0;
      LOBYTE(v10) = v5;
      v2[2] = v8 + 1;
      sub_70DF8(&v10, &v2[5 * v8 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_12BE04(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for JSSocialOnboardingNetwork(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_35FCFC(v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_35FCFC(v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_ABA790();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_ABA790();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_ABB060();
  }

  result = sub_ABB060();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_12C044(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_35FAB8(v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_43;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_44;
            }

            goto LABEL_26;
          }
        }

        sub_35FAB8(v12 - 4, a2);
LABEL_26:
        v14 = sub_127604();
        v15 = sub_127604();

        result = v14 == v15;
        if (v14 == v15)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v16 = v3 + 32;
    v17 = (a2 + 32);
    v18 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v19 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_41;
      }

      if (!v19)
      {
        break;
      }

      v16 += 8;
      v21 = *v17++;
      a2 = v21;
      v3 = sub_127604();
      v4 = v21;
      v22 = sub_127604();
      v24 = v20-- != 0;
      v25 = v3 == v22;
      result = v3 == v22;
      if (v25)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return result;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v5 = sub_ABB060();
  }

  result = sub_ABB060();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_12C2A8(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v8 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v8)
    {
      goto LABEL_29;
    }

    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    v37 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 < 0)
    {
      v10 = v6;
    }

    if (v7)
    {
      v11 = v10;
    }

    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v12 = a2;
    }

    if (a2 >> 62)
    {
      v13 = v12;
    }

    if (v11 == v13)
    {
LABEL_29:
      v21 = 1;
      return v21 & 1;
    }

    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = sub_13C80(0, a3, a4);
    if (((a2 | v6) & 0xC000000000000001) != 0)
    {
      v14 = a2 & 0xC000000000000001;
      v15 = 4;
      while (1)
      {
        v16 = v15 - 4;
        v17 = v15 - 3;
        if (__OFADD__(v15 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v18 = a5(v15 - 4, v6);
          if (!v14)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v16 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v18 = *(v6 + 8 * v15);
          if (!v14)
          {
LABEL_24:
            if (v16 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 8 * v15);
            goto LABEL_26;
          }
        }

        v19 = a5(v15 - 4, a2);
LABEL_26:
        v20 = v19;
        v21 = sub_ABA790();

        if (v21)
        {
          ++v15;
          if (v17 != v8)
          {
            continue;
          }
        }

        return v21 & 1;
      }
    }

    v6 += 32;
    v22 = (a2 + 32);
    v23 = *(v37 + 16);
    v24 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v25 = v8 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v6;
      v6 += 8;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v29 = v28;
      v21 = sub_ABA790();

      v31 = v25-- != 0;
      if (v21)
      {
        --v24;
        --v23;
        if (v31)
        {
          continue;
        }
      }

      return v21 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v32 = a4;
    v33 = a3;
    v34 = sub_ABB060();
    a3 = v33;
    a4 = v32;
    v8 = v34;
  }

  v35 = a4;
  v36 = a3;
  result = sub_ABB060();
  a3 = v36;
  a4 = v35;
  if (v8 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_12C54C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (!v6 || a1 == a2)
  {
    return 1;
  }

  v53 = v5;
  v54 = v4;
  v55 = v2;
  v56 = v3;
  v7 = (a1 + 32);
  v8 = (a2 + 32);
  v9 = v6 - 1;
  while (1)
  {
    v10 = v7[5];
    v43 = v7[4];
    v44 = v10;
    v45 = *(v7 + 12);
    v11 = v7[1];
    v39 = *v7;
    v40 = v11;
    v12 = v7[3];
    v41 = v7[2];
    v42 = v12;
    v13 = v8[1];
    v46 = *v8;
    v47 = v13;
    v14 = v8[2];
    v15 = v8[3];
    v16 = v8[4];
    v17 = v8[5];
    v52 = *(v8 + 12);
    v50 = v16;
    v51 = v17;
    v48 = v14;
    v49 = v15;
    if (v39 != v46 && (sub_ABB3C0() & 1) == 0 || v40 != v47 && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }

    v31 = v9;
    v18 = v41;
    v19 = v43;
    v33 = BYTE8(v43);
    v20 = v48;
    v36 = v49;
    v37 = v42;
    v34 = *(&v49 + 1);
    v35 = *(&v42 + 1);
    v32 = BYTE8(v50);
    v21 = v51;
    v22 = v44;
    sub_1323DC(&v39, v38);
    sub_1323DC(&v46, v38);
    v23 = [v22 _fontAdjustedForCurrentContentSizeCategory];
    if (v23)
    {
      v24 = v23;

      v22 = v24;
    }

    v25 = v21;
    v26 = [v25 _fontAdjustedForCurrentContentSizeCategory];
    if (v26)
    {
      v27 = v26;

      v25 = v27;
    }

    sub_13C80(0, &qword_DFA720, NSObject_ptr);
    v28 = sub_ABA790();

    if ((v28 & 1) == 0)
    {
LABEL_34:
      sub_132438(&v46);
      sub_132438(&v39);
      return 0;
    }

    if (v18)
    {
      if (!v20 || (sub_ABA790() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v20)
    {
      goto LABEL_34;
    }

    if (*(&v18 + 1))
    {
      if (!*(&v20 + 1) || (sub_ABA790() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(&v20 + 1))
    {
      goto LABEL_34;
    }

    if (v37 != v36 || v35 != v34)
    {
      goto LABEL_34;
    }

    v38[0] = v19;
    sub_7FD28();
    v29 = sub_AB38E0();
    sub_132438(&v46);
    sub_132438(&v39);
    if ((v29 & 1) == 0 || v33 != v32 || *(&v44 + 1) != *(&v51 + 1) || v45 != v52)
    {
      return 0;
    }

    if (!v31)
    {
      return 1;
    }

    v9 = v31 - 1;
    v8 = (v8 + 104);
    v7 = (v7 + 104);
  }
}

uint64_t sub_12C848(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_ABB3C0() & 1) == 0)
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

uint64_t sub_12C928(unint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v6 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = sub_ABB060();
  if (v6 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v6)
  {
    return 1;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v58 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 < 0)
  {
    v8 = v4;
  }

  if (v5)
  {
    v9 = v8;
  }

  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v57 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v10 = a2;
  }

  if (a2 >> 62)
  {
    v11 = v10;
  }

  if (v9 == v11)
  {
    return 1;
  }

  if (v6 < 0)
  {
    goto LABEL_83;
  }

  v12 = v4 & 0xC000000000000001;
  v61 = a2 & 0xC000000000000001;
  v13 = 4;
  v49 = v6;
  v50 = a2;
  v47 = v4;
  v48 = v4 & 0xC000000000000001;
  while (1)
  {
    v14 = v13 - 4;
    v15 = v13 - 3;
    if (__OFADD__(v13 - 4, 1))
    {
      break;
    }

    if (v12)
    {
      result = sub_36003C(v13 - 4, v4, a3);
      v17 = result;
      if (v61)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v14 >= *(v58 + 16))
      {
        goto LABEL_81;
      }

      v17 = *(v4 + 8 * v13);

      if (v61)
      {
LABEL_22:
        v18 = sub_36003C(v13 - 4, a2, v16);
        if (v17 == v18)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    if (v14 >= *(v57 + 16))
    {
      goto LABEL_82;
    }

    v18 = *(a2 + 8 * v13);

    if (v17 == v18)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_28:
    v19 = *(v17 + 16) == *(v18 + 16) && *(v17 + 24) == *(v18 + 24);
    if (!v19 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_74;
    }

    swift_beginAccess();
    v20 = *(v17 + 48);
    v21 = *(v17 + 80);
    v22 = *(v17 + 96);
    v65 = *(v17 + 64);
    v66 = v21;
    v67 = v22;
    v63 = *(v17 + 32);
    v64 = v20;
    swift_beginAccess();
    v23 = *(v18 + 48);
    v68 = *(v18 + 32);
    v69 = v23;
    v24 = *(v18 + 80);
    v70 = *(v18 + 64);
    v71 = v24;
    v72 = *(v18 + 96);
    v25 = v63;
    v26 = v68;
    if ((*(&v65 + 1) & 0x8000000000000000) != 0)
    {
      if ((*(&v70 + 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_74;
      }

      if (v63 == v68 && *(&v63 + 1) == *(&v68 + 1))
      {
        sub_2F118(&v68, v62);
        sub_2F118(&v63, v62);
      }

      else
      {
        v37 = sub_ABB3C0();
        sub_2F118(&v68, v62);
        sub_2F118(&v63, v62);
        if ((v37 & 1) == 0)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      if ((*(&v70 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      v60 = *(&v68 + 1);
      v59 = *(&v63 + 1);
      v51 = BYTE8(v70);
      v52 = BYTE8(v65);
      v27 = v71;
      v28 = v66;
      v29 = v65;
      v53 = *(&v64 + 1);
      v54 = *(&v69 + 1);
      v55 = v64;
      v56 = v69;
      sub_2F118(&v68, v62);
      sub_2F118(&v63, v62);
      v30 = v28;
      v31 = [v30 _fontAdjustedForCurrentContentSizeCategory];
      if (v31)
      {
        v32 = v31;

        v30 = v32;
      }

      v33 = v27;
      v34 = [v33 _fontAdjustedForCurrentContentSizeCategory];
      if (v34)
      {
        v35 = v34;

        v33 = v35;
      }

      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      v36 = sub_ABA790();

      v15 = v13 - 3;
      if ((v36 & 1) == 0)
      {
LABEL_73:
        sub_2F174(&v68);
        sub_2F174(&v63);
LABEL_74:

        return 0;
      }

      if (v25)
      {
        if (!v26 || (sub_ABA790() & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else if (v26)
      {
        goto LABEL_73;
      }

      if (v59)
      {
        if (!v60 || (sub_ABA790() & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else if (v60)
      {
        goto LABEL_73;
      }

      if (v55 != v56)
      {
        goto LABEL_73;
      }

      if (v53 != v54)
      {
        goto LABEL_73;
      }

      v62[0] = v29;
      sub_7FD28();
      if ((sub_AB38E0() & 1) == 0 || v51 != v52)
      {
        goto LABEL_73;
      }
    }

    if (*(&v66 + 1) != *(&v71 + 1))
    {
      goto LABEL_73;
    }

    v62[0] = v67;
    sub_7FD28();
    if ((sub_AB38E0() & 1) == 0)
    {
      goto LABEL_73;
    }

    v62[0] = *(&v67 + 1);
    v38 = sub_AB38E0();
    sub_2F174(&v68);
    sub_2F174(&v63);
    if ((v38 & 1) == 0)
    {
      goto LABEL_74;
    }

    swift_beginAccess();
    v39 = *(v17 + 112);
    v40 = *(v17 + 120);
    swift_beginAccess();
    if ((v39 != *(v18 + 112) || v40 != *(v18 + 120)) && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_74;
    }

    v41 = v15;
    v42 = *(v17 + 256);
    v43 = *(v18 + 256);
    if (v42)
    {
      v6 = v49;
      a2 = v50;
      v12 = v48;
      if (!v43)
      {
        goto LABEL_74;
      }

      type metadata accessor for TextDrawing.View();
      v44 = v43;
      v45 = v42;
      v46 = sub_ABA790();

      v15 = v41;
      v4 = v47;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      v6 = v49;
      a2 = v50;
      v15 = v41;
      v4 = v47;
      v12 = v48;
      if (v43)
      {
        return 0;
      }
    }

LABEL_18:
    ++v13;
    result = 1;
    if (v15 == v6)
    {
      return result;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_12CF30(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16))
  {
    if (!v9 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v11 = a1 + v10;
      v12 = a2 + v10;
      v13 = *(v6 + 72);
      do
      {
        sub_57E38(v11, v8);
        sub_57E38(v12, v5);
        v14 = sub_4083CC(v8, v5);
        sub_132D48(v5);
        sub_132D48(v8);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v12 += v13;
        v11 += v13;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_12D0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

void sub_12D140(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x79426E6F69746361;
      }

      else
      {
        v8 = 0x65546C6961746564;
      }

      if (v6 == 1)
      {
        v9 = 0xEC000000656E696CLL;
      }

      else
      {
        v9 = 0xEF6C6562614C7478;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x62614C656C746974;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xEA00000000006C65;
      }

      if (v7 == 1)
      {
        v12 = 0x79426E6F69746361;
      }

      else
      {
        v12 = 0x65546C6961746564;
      }

      if (v7 == 1)
      {
        v13 = 0xEC000000656E696CLL;
      }

      else
      {
        v13 = 0xEF6C6562614C7478;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x62614C656C746974;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xEA00000000006C65;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_ABB3C0();

        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_12D2B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = (a2 + 80); ; i += 17)
    {
      v7 = *(v3 - 4);
      v6 = *(v3 - 3);
      v41 = *(v3 - 16);
      v8 = *v3;
      v28 = *(v3 - 1);
      v26 = v3[1];
      v45 = v3[2];
      v33 = v3[3];
      v43 = v3[4];
      v35 = v3[6];
      v24 = v3[7];
      v25 = v3[5];
      v37 = v3[8];
      v40 = v3[10];
      v10 = *(i - 4);
      v9 = *(i - 3);
      v11 = *(i - 16);
      v12 = *i;
      v27 = *(i - 1);
      v31 = v3[9];
      v32 = i[1];
      v44 = i[2];
      v46 = i[3];
      v42 = i[4];
      v34 = i[6];
      v29 = i[7];
      v30 = i[5];
      v36 = i[8];
      v38 = i[10];
      v39 = i[9];
      if ((*(v3 - 6) != *(i - 6) || *(v3 - 5) != *(i - 5)) && (sub_ABB3C0() & 1) == 0)
      {
        break;
      }

      if (v7 == v10 && v6 == v9)
      {
        if (v41 != v11)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_ABB3C0();
        result = 0;
        if ((v13 & 1) == 0 || v41 != v11)
        {
          return result;
        }
      }

      if (v8)
      {
        v15 = v44;
        v14 = v45;
        if (!v12)
        {
          return 0;
        }

        if (v28 != v27 || v8 != v12)
        {
          v16 = sub_ABB3C0();
          v15 = v44;
          v14 = v45;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v15 = v44;
        v14 = v45;
        if (v12)
        {
          return 0;
        }
      }

      if (v14)
      {
        v18 = v39;
        v17 = v40;
        v20 = v37;
        v19 = v38;
        v22 = v35;
        v21 = v36;
        v23 = v34;
        if (!v15 || (v26 != v32 || v14 != v15) && (sub_ABB3C0() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = v39;
        v17 = v40;
        v20 = v37;
        v19 = v38;
        v22 = v35;
        v21 = v36;
        v23 = v34;
        if (v15)
        {
          return 0;
        }
      }

      if ((v33 != v46 || v43 != v42) && (sub_ABB3C0() & 1) == 0)
      {
        return 0;
      }

      if (v22)
      {
        if (!v23 || (v25 != v30 || v22 != v23) && (sub_ABB3C0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v23)
      {
        return 0;
      }

      if (v20)
      {
        if (!v21 || (v24 != v29 || v20 != v21) && (sub_ABB3C0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v21)
      {
        return 0;
      }

      if ((v31 != v18 || v17 != v19) && (sub_ABB3C0() & 1) == 0)
      {
        return 0;
      }

      v3 += 17;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

void sub_12D5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7473696C79616C70;
      if (v6 == 5)
      {
        v8 = 0x736F65646976;
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE900000000000073;
      }

      v10 = 0x686372616573;
      if (v6 == 3)
      {
        v10 = 0x6F69646172;
      }

      v11 = 0xE500000000000000;
      if (v6 != 3)
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0xE900000000000077;
      v13 = 0x6F4E6E657473696CLL;
      if (v6 != 1)
      {
        v13 = 0x6573776F7262;
        v12 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v13 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE900000000000077;
            if (v14 != 0x6F4E6E657473696CLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v14 != 0x6573776F7262)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v14 != 0x7972617262696CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x736F65646976)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE900000000000073;
          if (v14 != 0x7473696C79616C70)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 == 3)
      {
        v16 = 0xE500000000000000;
        if (v14 != 0x6F69646172)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x686372616573)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_ABB3C0();

        if ((v5 & 1) == 0)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

void *sub_12D870(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  sub_ABAEC0();
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1 + 32;
  type metadata accessor for ImpressionTracker();
  while (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    v4 += 16;
    if (!--v3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return 0;
}

void *sub_12D948(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_ABAEC0();
  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_3602FC(j, a1);
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_ABB060();
    sub_ABAEC0();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_12DAD4(uint64_t a1, __n128 a2)
{
  v7 = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  sub_ABAEC0();
  if (!v3)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_808B0(i, v6);
    type metadata accessor for JSBadgingItem();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    if (!--v3)
    {
      return v7;
    }
  }

  return 0;
}

void *sub_12DBF0(unint64_t a1, void *a2, __n128 a3)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_ABB060();
    sub_ABAEC0();
    v4 = sub_ABB060();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_ABAEC0();
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_3603F8(v5, a1);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_12DD64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_6D410(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_808B0(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_6D410((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

double sub_12DE8C(uint64_t a1)
{
  v2 = v1;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return result;
  }

  type metadata accessor for ImpressionTracker();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    if (v5 != a1)
    {
      v7 = *(v5 + 48);
      if ((v7 & 0xC000000000000001) != 0)
      {

        v8 = sub_ABACA0();

        if (v8)
        {
          goto LABEL_6;
        }
      }

      else if (*(v7 + 16))
      {
        sub_ABB5C0();
        v9 = sub_127604();
        sub_ABB5D0(v9);
        v10 = sub_ABB610();
        v11 = -1 << *(v7 + 32);
        v12 = v10 & ~v11;
        if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (sub_127604() != *(v2 + 56))
          {
            v12 = (v12 + 1) & v13;
            if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_6;
        }
      }

LABEL_14:
      v16 = *(v6 + 48);

      sub_1A5CC(v15, v2);
      v14 = *(v6 + 48);
      *(v6 + 48) = v16;
      sub_12E120(v14);
      swift_unknownObjectRelease();

      return result;
    }
  }

LABEL_6:

  swift_unknownObjectRelease();
  return result;
}

double sub_12E05C(uint64_t a1)
{

  v5 = sub_12D870(v3, v4);

  if (v5)
  {
    v7 = sub_12D870(a1, v6);
    if (v7)
    {
      if ((sub_12C044(v7, v5) & 1) == 0)
      {
        v8 = sub_2F3680(v5);

        v9 = *(v1 + 48);
        *(v1 + 48) = v8;
        sub_12E120(v9);
      }
    }
  }

  return v6.n128_f64[0];
}

void sub_12E120(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = v4 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v5)
    {

      v7 = sub_ABAC80();
    }

    else
    {

      sub_130380(v6, v4);
    }

    v11 = v7;

    if (v11)
    {
      v12 = sub_ABAC50();
      goto LABEL_36;
    }

LABEL_37:
    v27 = *(v2 + 32);
    v28 = *(v27 + 16);
    if (v28)
    {

      v29 = (v27 + 40);
      do
      {
        v30 = *v29;
        ObjectType = swift_getObjectType();
        v32 = *(v30 + 32);
        swift_unknownObjectRetain();
        v33 = v32(ObjectType, v30);
        if (!v33 || (v34 = v33, swift_unknownObjectRelease(), v34 != v2))
        {
          if (swift_conformsToProtocol2())
          {
          }

          (*(v30 + 40))();
        }

        swift_unknownObjectRelease();
        v29 += 2;
        --v28;
      }

      while (v28);
    }

    v36 = sub_130F00(v35, sub_130FB8);

    v37 = sub_12B510(v36);
    v38 = *(v2 + 32);
    *(v2 + 32) = v37;
    sub_12E05C(v38);

    return;
  }

  if (v5)
  {
    if (v4 < 0)
    {
      v8 = *(v1 + 48);
    }

    else
    {
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    sub_130380(v8, a1);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    v12 = *(a1 + 16);
LABEL_36:
    if (v12 == *(*(v2 + 32) + 16))
    {
      return;
    }

    goto LABEL_37;
  }

  if (v4 == a1)
  {
    goto LABEL_35;
  }

  if (*(a1 + 16) != *(v4 + 16))
  {
    goto LABEL_37;
  }

  v13 = 0;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v40 = (v14 + 63) >> 6;
  v17 = v4 + 56;
  if (v16)
  {
    do
    {
      v18 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
LABEL_28:
      v21 = *(*(a1 + 48) + 8 * (v18 | (v13 << 6)));
      sub_ABB5C0();
      v22 = sub_127604();
      sub_ABB5D0(v22);
      v23 = sub_ABB610();
      v24 = -1 << *(v4 + 32);
      v25 = v23 & ~v24;
      if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_37;
      }

      v26 = ~v24;
      while (sub_127604() != *(v21 + 56))
      {
        v25 = (v25 + 1) & v26;
        if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v16 = v39;
    }

    while (v39);
  }

  v19 = v13;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v40)
    {
      goto LABEL_35;
    }

    v20 = *(a1 + 56 + 8 * v13);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_12E504()
{
  sub_176DC(v0 + 16);

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_12E61C()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    v1 = sub_10B30(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  if (qword_DE6D70 != -1)
  {
    swift_once();
  }

  UnfairLock.locked<A>(_:)(sub_2BA50);
  *(v0 + 64) = qword_E0A760;
  swift_unknownObjectWeakInit();
  return v0;
}

Swift::Int sub_12E720()
{
  sub_ABB5C0();
  v0 = sub_127604();
  sub_ABB5D0(v0);
  return sub_ABB610();
}

Swift::Int sub_12E798(uint64_t a1)
{
  sub_ABB5C0();
  v1 = sub_127604();
  sub_ABB5D0(v1);
  return sub_ABB610();
}

Swift::Int sub_12E83C(uint64_t a1)
{
  sub_ABB5C0();
  LaunchURL.Resolver.PerformOption.hash(into:)(v3, *v1);
  return sub_ABB610();
}

double sub_12E87C(uint64_t a1, uint64_t a2)
{
  sub_AB33D0();
  v4 = v3;
  v5 = sub_AB3430();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

uint64_t sub_12E8F0(_OWORD *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_12E940(a1, a2, v5, v6);
  return v4;
}

uint64_t *sub_12E940(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v4[23] = 0;
  *(v4 + 96) = 513;
  v7 = a1[7];
  *(v4 + 7) = a1[6];
  *(v4 + 8) = v7;
  *(v4 + 9) = a1[8];
  *(v4 + 153) = *(a1 + 137);
  v8 = a1[3];
  *(v4 + 3) = a1[2];
  *(v4 + 4) = v8;
  v9 = a1[5];
  *(v4 + 5) = a1[4];
  *(v4 + 6) = v9;
  v10 = a1[1];
  *(v4 + 1) = *a1;
  *(v4 + 2) = v10;
  type metadata accessor for PrincipalImpressionTracker.History.Event(0, *(v6 + 80), *(v6 + 88), a4);
  v4[25] = sub_AB97C0();
  v4[22] = a2;
  return v4;
}

uint64_t sub_12E9E8()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.History.Event(255, *(v1 + 80), *(v1 + 88), v2);
  sub_AB9870();
  swift_getWitnessTable();
  sub_AB9120();
  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return v4 & 1;
  }
}

uint64_t sub_12EAAC(char a1, uint64_t a2)
{
  v5 = *v2;
  sub_AB3430();
  v6 = __chkstk_darwin();
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2, v6);
  v10 = *(v5 + 80);
  v11 = *(v5 + 88);
  v15[4] = sub_12E87C(a1 & 1, v8);
  v16 = v12 & 1;
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.History.Event(255, v10, v11, v13);
  sub_AB9870();
  sub_AB9820();
  return swift_endAccess();
}

uint64_t sub_12EC08()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v6[7] = v1;
  v7[0] = v0[9];
  *(v7 + 9) = *(v0 + 153);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  sub_46650(v6);

  return swift_deallocClassInstance();
}

uint64_t sub_12EC74()
{
  sub_ABAD90(72);
  v3._object = 0x8000000000B526E0;
  v3._countAndFlagsBits = 0xD000000000000032;
  sub_AB94A0(v3);
  sub_ABAF70();
  v4._countAndFlagsBits = 0x3A656D6172462027;
  v4._object = 0xEA00000000002720;
  sub_AB94A0(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong frame];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1318, &qword_AFF5D8);
  v5._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v5);

  v6._countAndFlagsBits = 0x203A44492027;
  v6._object = 0xE600000000000000;
  sub_AB94A0(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1320, &unk_AFF5E0);
  v7._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v7);

  return 0;
}

uint64_t sub_12EE38()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v6[7] = v1;
  v7[0] = v0[9];
  *(v7 + 9) = *(v0 + 153);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  sub_46650(v6);
  swift_unknownObjectWeakDestroy();
  return swift_deallocClassInstance();
}

void sub_12EEC8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = v3 + 1;
      v6 = *(v1 + 32 + 16 * v3);
      swift_unknownObjectRetain();
      sub_12F010(&v6, v0);
      swift_unknownObjectRelease();
      v3 = v4;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:

  if (qword_DE6D68 != -1)
  {
LABEL_13:
    swift_once();
  }

  if ((byte_E71A90 & 1) == 0 && *(v0 + 145) == 1)
  {
    v5 = *(*v0 + 776);

    v5();
  }
}

uint64_t sub_12F010(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (qword_DE6D68 != -1)
  {
    swift_once();
  }

  if (byte_E71A90)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 145);
  }

  return (*(v3 + 16))(v5, ObjectType, v3);
}

double sub_12F0BC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_12A1D8(a1);
  }

  return result;
}

double sub_12F11C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_12AA58();
  }

  return result;
}

double sub_12F174(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_AB2BD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = sub_AB9990();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v7, a1, v4);
  sub_AB9940();

  v12 = sub_AB9930();
  v13 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = *(v3 + 312);
  *(v14 + 5) = *(v3 + 320);
  *(v14 + 6) = v11;
  (*(v5 + 32))(&v14[v13], v7, v4);

  sub_DC3A0(0, 0, v9, &unk_AFF5F8, v14);

  return result;
}

uint64_t sub_12F3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_12F470, v7, v6);
}

uint64_t sub_12F470()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_12AAF4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_12F518(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  v29 = a7;
  HIDWORD(v27) = a6;
  v28 = a5;
  v30 = a4;
  v14 = a9.n128_f64[0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v18 = &v27 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v31 = a8;
    swift_beginAccess();
    type metadata accessor for PrincipalImpressionTracker.TrackedItem(0, a10, a11, v21);
    swift_getAssociatedConformanceWitness();

    sub_AB90A0();
    v22 = v32[0];

    if (v22)
    {
      swift_unknownObjectWeakAssign();
      v23 = v22;
    }

    else
    {
      v24 = v29;
      if (v29 == 4)
      {
        v24 = *(v20 + 40);
      }

      v25 = v30;
      v23 = sub_132C90(v30, a3, v28, BYTE4(v27) & 1, v24);
      (*(v16 + 16))(v18, a2, AssociatedTypeWitness);
      v32[23] = v23;
      swift_beginAccess();
      sub_465F4(v25, v32);
      sub_AB9080();

      sub_AB90B0();
      swift_endAccess();
    }

    v26 = v31;

    sub_128A94(v23, a2, v26, v14);
  }

  return result;
}

double sub_12F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    type metadata accessor for PrincipalImpressionTracker.TrackedItem(255, a4, a5, v9);
    swift_getAssociatedConformanceWitness();
    sub_AB9080();
    sub_AB9010();
    swift_endAccess();

    if (v14)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v10 = *(v14 + 144) ? *(v14 + 24) : 0;
        if (*(v14 + 88) || v10)
        {
        }

        else
        {
          sub_ABB330();
        }

        swift_beginAccess();
        type metadata accessor for PrincipalImpressionTracker.History(0, a4, a5, v11);

        sub_AB90A0();

        if (v13)
        {
          v12 = sub_12E9E8();
          if (v12 != 2 && (v12 & 1) == 0)
          {
            sub_12EAAC(1, a3);
          }
        }
      }
    }
  }

  return result;
}

void sub_12FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_128A94(a2, a1, a4, a5);
  }
}

uint64_t sub_12FAF0(uint64_t a1, uint64_t (*a2)(uint64_t, void), __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for PrincipalImpressionTracker.TrackedItem(255, a5, a6, v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

void sub_12FC00(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_127620(a2, a3);
  }
}

void sub_12FC70(int a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if ((a1 & 4) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v18 = sub_12A8CC(a1, a4, a5);
    }

    else
    {
      v18 = 0;
    }

    swift_beginAccess();
    *(a2 + 16) = v18;

    goto LABEL_13;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    sub_ABA300();
    return;
  }

  v9 = Strong;
  swift_retain_n();
  swift_getObjectType();
  v10 = &off_CFADC8;
  v11 = sub_13002C();
  v13 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v11)
  {
    do
    {
      v10 = v13;
      v14 = v11;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v11 = (*(v13 + 32))(ObjectType, v13);
      v13 = v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    while (v11);
  }

  else
  {
    v14 = v9;
  }

  swift_beginAccess();
  if (*(a2 + 16))
  {
    sub_12A7A4(v14, v10, a1 | 4u, a4, a2 + 16);
    swift_endAccess();
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  __break(1u);
}

double sub_12FE60()
{

  swift_unknownObjectWeakDestroy();

  return result;
}

uint64_t sub_12FEC0()
{
  sub_12758C();

  return swift_deallocClassInstance();
}

uint64_t sub_13004C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_12DE8C(Strong);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_130180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1301D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_130214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_130284()
{
  result = qword_DF11F8;
  if (!qword_DF11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF11F8);
  }

  return result;
}

uint64_t sub_130314()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E70EB0);
  __swift_project_value_buffer(v0, qword_E70EB0);
  return static Logger.music(_:)(0x6973736572706D49, 0xEB00000000736E6FLL);
}

void sub_130380(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_ABAC50())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v7 &= v7 - 1;
LABEL_12:

      v11 = sub_ABACA0();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v10 = *(a2 + 56 + 8 * v4);
      ++v9;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_130484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB90D0();

  return sub_1304E0(a1, v6, a2, a3);
}

unint64_t sub_1304E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_AB91C0();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void *sub_13067C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530, &qword_AFF5D0);
  v4 = *(sub_AB3820() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_13077C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12B0, &unk_B02870);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_130814(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_130880(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1310, &qword_AF9058);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 240);
  return result;
}

void *sub_130914(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_13099C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D48, &unk_AF89C0);
      v7 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_130B3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAE8, &qword_AFF600);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 120);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_130C28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12F0, &qword_AF90E8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_130D10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for TextStackView();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_130DF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_13C80(0, &unk_E07CB0, SLHighlight_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_130F00(uint64_t a1, uint64_t (*a2)(uint64_t *, void *, uint64_t, uint64_t, __n128))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_ABAC50();
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v5 = sub_130914(v4, 0);

    a2 = (a2)(&v7, v5 + 4, v4, a1);
    sub_2BB88(v7);
    if (a2 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = *(a1 + 16);
    if (!v4)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v5;
}

void *sub_130FB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_ABAC10();
  type metadata accessor for ImpressionTracker();
  sub_13235C(&qword_DF1270, &unk_AFF550);
  result = sub_AB9BC0();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v7 = ((v9 + 64) >> 6);
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_ABAC90())
      {
        goto LABEL_30;
      }

      type metadata accessor for ImpressionTracker();
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v17 = v25;
      result = swift_unknownObjectRelease();
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!v17)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = v17;
    if (v13 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v7)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v7 <= (v10 + 1))
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v7;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

void *sub_1311F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      v20 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v20)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_131344(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_131440(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_AB3820();
  v41 = *(v39 - 8);
  __chkstk_darwin();
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v38 = &v32 - v10;
  v11 = a4 + 56;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v30 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v30;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v30 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(a4 + 32);
    v33 = a1;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    a1 = (&dword_0 + 1);
    v36 = a4 + 56;
    v37 = a3;
    v17 = v38;
    while (v14)
    {
      v43 = a2;
LABEL_15:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v42 = v15;
      v21 = a4;
      v22 = *(a4 + 48);
      v23 = v40;
      v24 = v41;
      v25 = *(v41 + 72);
      v26 = v39;
      (*(v41 + 16))(v40, v22 + v25 * (v20 | (v15 << 6)), v39, v9);
      v27 = *(v24 + 32);
      v27(v17, v23, v26);
      v28 = v43;
      v27(v43, v17, v26);
      if (a1 == v37)
      {
        v12 = v32;
        a1 = v33;
        a4 = v21;
        v30 = v42;
        v11 = v36;
        goto LABEL_25;
      }

      a2 = &v28[v25];
      v29 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v21;
      v15 = v42;
      v11 = v36;
      if (v29)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v43 = a2;
        v15 = v19;
        goto LABEL_15;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v31 = v15 + 1;
    }

    else
    {
      v31 = v16;
    }

    v30 = v31 - 1;
    v12 = v32;
    a1 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1316E4(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 240 * (v17 | (v12 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v33[0] = *v18;
      v33[1] = v20;
      v33[2] = v19;
      v21 = v18[6];
      v23 = v18[3];
      v22 = v18[4];
      v33[5] = v18[5];
      v33[6] = v21;
      v33[3] = v23;
      v33[4] = v22;
      v24 = v18[10];
      v26 = v18[7];
      v25 = v18[8];
      v33[9] = v18[9];
      v33[10] = v24;
      v33[7] = v26;
      v33[8] = v25;
      v27 = v18[14];
      v29 = v18[11];
      v28 = v18[12];
      v33[13] = v18[13];
      v33[14] = v27;
      v33[11] = v29;
      v33[12] = v28;
      memmove(v11, v18, 0xF0uLL);
      if (v14 == v10)
      {
        sub_2B990(v33, v32);
        goto LABEL_24;
      }

      v11 += 240;
      sub_2B990(v33, v32);
      result = v14;
      v30 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v31 = v12 + 1;
    }

    else
    {
      v31 = (63 - v7) >> 6;
    }

    v12 = v31 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_131898(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_ABAC10();
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  sub_2BB20();
  result = sub_AB9BC0();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v7 = ((v9 + 64) >> 6);
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_ABAC90())
      {
        goto LABEL_30;
      }

      sub_13C80(0, &qword_DE7500, UIViewController_ptr);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v17 = v25;
      result = swift_unknownObjectRelease();
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    v17 = result;
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = v17;
    if (v13 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v7)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v7 <= (v10 + 1))
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v7;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

unint64_t sub_131ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (sub_AB9800())
  {
    sub_ABB0D0();
    v13 = sub_ABB0C0();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_AB9860();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_AB97E0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_ABAE10();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_130484(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

double sub_131DC8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v26 = a1;
  v4 = *v2;
  v28 = *(*v2 + 320);
  v27 = *(v4 + 312);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v23 = &v23 - v7;
  v9 = sub_AB3430();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v23 - v13;
  sub_AB3420();
  v25 = v3[11];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = v8;
  v17 = AssociatedTypeWitness;
  (*(v5 + 16))(v16, v26, AssociatedTypeWitness);
  (*(v10 + 16))(v12, v14, v9);
  v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v19 = (v6 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 2) = v27;
  *(v20 + 3) = v21;
  *(v20 + 4) = v15;
  (*(v5 + 32))(&v20[v18], v23, v17);
  (*(v10 + 32))(&v20[v19], v12, v9);

  sub_48C6A0(sub_132250, v20);
  (*(v10 + 8))(v14, v9);

  return result;
}

uint64_t sub_1320B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1320EC(__n128 a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v1 + v4, AssociatedTypeWitness);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

double sub_132250(__n128 a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_AB3430() - 8);
  v8 = v1[4];
  v9 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_12F7F8(v8, v1 + v5, v9, v2, v3);
}

uint64_t sub_13235C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImpressionTracker();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_13239C()
{

  return swift_deallocObject();
}

uint64_t sub_1325C8()
{

  return swift_deallocObject();
}

uint64_t sub_132600()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1326E0(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  sub_12FC70(v6, v4, v5, v7, a1);
}

uint64_t sub_1327A0()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_132864(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_12FC00(v4, v5, a1);
}

uint64_t sub_1328F4(__n128 a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);

  (*(v3 + 8))(v1 + v4, AssociatedTypeWitness);

  v9 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);

  v10 = *(v9 + 32);
  if (v10 >= 9)
  {
  }

  (*(v7 + 8))(v1 + ((((v5 + 175) & 0xFFFFFFFFFFFFFFF8) + v8 + 10) & ~v8), v6);

  return swift_deallocObject();
}

uint64_t sub_132AE0(__n128 a1)
{
  v2 = a1.n128_u64[0];
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 175) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_AB3430() - 8);
  v10.n128_u64[0] = v2;
  return sub_12F518(v1[4], v1 + v6, *(v1 + v7), (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v8 + 9), v1 + ((v8 + *(v9 + 80) + 10) & ~*(v9 + 80)), v10, v3, v4);
}

uint64_t sub_132C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_DF1340, &unk_B07BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_132C90(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a4;
  type metadata accessor for PrincipalImpressionTracker.TrackedItem(0, *(v5 + 80), *(v5 + 88), a4);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = a1[7];
  *(v10 + 112) = a1[6];
  *(v10 + 128) = v11;
  *(v10 + 144) = a1[8];
  *(v10 + 153) = *(a1 + 137);
  v12 = a1[3];
  *(v10 + 48) = a1[2];
  *(v10 + 64) = v12;
  v13 = a1[5];
  *(v10 + 80) = a1[4];
  *(v10 + 96) = v13;
  v14 = a1[1];
  *(v10 + 16) = *a1;
  *(v10 + 32) = v14;
  swift_unknownObjectWeakAssign();
  *(v10 + 176) = a3;
  *(v10 + 184) = v7 & 1;
  *(v10 + 200) = a5;
  return v10;
}

uint64_t sub_132D48(uint64_t a1)
{
  v2 = type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_132DA4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_132E14()
{
  v1 = sub_AB2BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_132EE0(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_12F3D4(a1, v6, v7, v8, v1 + v5);
}

char *sub_133054(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView] = 0;
  v9 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator;
  _s9SeparatorCMa();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle] = 2;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ContainerDetailHeaderReusableView();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_DE6C58;
  v12 = v10;
  if (v11 != -1)
  {
    v15 = v12;
    swift_once();
    v12 = v15;
  }

  v13 = v12;
  [v12 setBackgroundColor:qword_E71898];
  [v13 addSubview:*&v13[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator]];

  return v13;
}

void sub_1331DC(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v17 = v5;
      [v2 bounds];
      v10 = v9;
      v12 = v11;
      [v2 bounds];
      [v17 sizeThatFits:{v13, v14}];
      [v17 setFrame:{v10, v12, v15, v16}];
      [v2 addSubview:v17];

      return;
    }

    sub_74390();
    v6 = v5;
    v3 = v3;
    v7 = sub_ABA790();

    if (v7)
    {
      v5 = *&v2[v4];
      if (!v5)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  if ([v8 isDescendantOfView:v2])
  {
    [v8 removeFromSuperview];
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

id sub_13335C(uint64_t a1)
{
  v35.receiver = v1;
  v35.super_class = type metadata accessor for ContainerDetailHeaderReusableView();
  objc_msgSendSuper2(&v35, "layoutSubviews");
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 bounds];
  Width = CGRectGetWidth(v36);
  v11 = HI.SizeClass.init(_:)(Width);
  v12 = HI.SizeClass.margin.getter(v11);
  v13 = [v1 effectiveUserInterfaceLayoutDirection];
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator];
  [v14 intrinsicContentSize];
  v16 = v15;
  if (v13 == &dword_0 + 1)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v12;
  }

  v37.origin.x = v3;
  v37.origin.y = v5;
  v37.size.width = v7;
  v37.size.height = v9;
  v18 = CGRectGetHeight(v37) - v16;
  v38.origin.x = v3;
  v38.origin.y = v5;
  v38.size.width = v7;
  v38.size.height = v9;
  [v14 setFrame:{v17, v18, CGRectGetWidth(v38) - v12, v16}];
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView];
  if (v19)
  {
    v20 = v19;
    [v20 intrinsicContentSize];
    v22 = v21;
    v39.origin.x = v3;
    v39.origin.y = v5;
    v39.size.width = v7;
    v39.size.height = v9;
    Height = CGRectGetHeight(v39);
    v24 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle;
    v25 = -16.0;
    if (v1[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle] < 2u)
    {
      v25 = -20.0;
    }

    v26 = Height + v25 - v22;
    v40.origin.x = v3;
    v40.origin.y = v5;
    v40.size.width = v7;
    v40.size.height = v9;
    v27 = CGRectGetWidth(v40);
    v41.origin.x = v3;
    v41.origin.y = v5;
    v41.size.width = v7;
    v41.size.height = v9;
    v28 = CGRectGetWidth(v41);
    v29 = HI.SizeClass.init(_:)(v28);
    HI.SizeClass.margin.getter(v29);
    sub_AB9EA0();
    [v20 setFrame:{UIEdgeInsetsInsetRect(0.0, v26, v27, v22, v30, v31)}];
    v32 = dbl_AFF748[v1[v24]] + dbl_AFF760[v1[v24]];
    v33 = Int.seconds.getter(1);

    v9 = v9 - (v22 - v33 * v32);
  }

  result = *&v1[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView];
  if (result)
  {
    return [result setFrame:{v3, v5, v7, v9}];
  }

  return result;
}

double sub_133604(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView);
  if (!v3)
  {
    return 0.0;
  }

  v6 = v3;
  [v6 sizeThatFits:{a1, a2}];
  v8 = v7;
  v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView);
  if (v9)
  {
    v10 = v9;
    [v10 intrinsicContentSize];
    Int.seconds.getter(1);
  }

  else
  {
  }

  return v8;
}

id sub_133764(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContainerDetailHeaderReusableView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_13382C()
{
  result = qword_DF1428;
  if (!qword_DF1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1428);
  }

  return result;
}

void sub_133880()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator;
  _s9SeparatorCMa();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle) = 2;
  sub_ABAFD0();
  __break(1u);
}

void (*sub_133930(uint64_t a1, uint64_t a2))(void)
{
  result = (*(a2 + 16))(a1);
  if (result)
  {
    v4 = v3;
    v5 = result;
    result();

    return sub_17654(v5, v4);
  }

  return result;
}

void RadioShowCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTitle];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlaySubtitle];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView;
  *&v4[v14] = [objc_allocWithZone(UIView) init];
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents];
  *v15 = _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0();
  v15[1] = v16;
  v15[2] = v17;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
  *v18 = _s16MusicApplication13RadioShowCellC21overlayTextComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC07OverlaygH0AELLVvpfi_0();
  v18[1] = v19;
  v18[2] = v20;
  v21 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView;
  type metadata accessor for TextStackView();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v92.receiver = v4;
  v92.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v92, "initWithFrame:", a1, a2, a3, a4);
  v23 = &v22[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  type metadata accessor for UIEdgeInsets(0);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v24 = &v22[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v25 = *&v22[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v93 = *&v22[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v94 = v25;
  v26 = v22;
  if (sub_AB38D0())
  {
    v27 = *(v23 + 1);
    *v24 = *v23;
    *(v24 + 1) = v27;
    sub_35D498();
    [v26 setNeedsLayout];
  }

  v28 = v26;
  v29 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v33 = v29[3];
  v34 = v29[4];
  v35 = v29[5];
  v90 = v35;
  v91 = v34;
  v36 = &v28[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v87 = *(v36 + 1);
  v88 = *v36;
  v85 = *(v36 + 3);
  v86 = *(v36 + 2);
  *v36 = v30;
  *(v36 + 1) = v31;
  *(v36 + 2) = v32;
  *(v36 + 3) = v33;
  *(v36 + 4) = v34;
  *(v36 + 5) = v35;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  sub_2F1C8(v88, v87, v86, v85);
  v89 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v45 = *&v28[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v46 = *(v45 + 168);
  v93 = *(v45 + 152);
  v94 = v46;
  v95 = *(v45 + 184);
  *(v45 + 152) = v30;
  *(v45 + 160) = v31;
  *(v45 + 168) = v32;
  *(v45 + 176) = v33;
  *(v45 + 184) = v91;
  *(v45 + 192) = v90;
  v47 = v41;
  v48 = v42;
  v49 = v43;
  v50 = v44;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  sub_75948(&v93);
  sub_B2A40(&v93);

  v55 = &v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents];
  v56 = *&v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents];

  v57 = [v28 traitCollection];
  v58 = [v57 preferredContentSizeCategory];
  LOBYTE(v32) = sub_ABA320();

  if (v32)
  {
    v59 = 3;
  }

  else
  {
    v59 = 1;
  }

  swift_beginAccess();
  *(v56 + 88) = v59;
  sub_2EB2A8();

  v60 = *&v28[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v61 = *(v55 + 2);
  if (v61 >> 62)
  {
    v62 = sub_ABB060();
    if (!v62)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v62 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
    if (!v62)
    {
      goto LABEL_15;
    }
  }

  if (v62 < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v63 = v60;

  for (i = 0; i != v62; ++i)
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      v66 = sub_36003C(i, v61, v64);
    }

    else
    {
      v66 = *(v61 + 8 * i + 32);
    }

    TextStackView.add(_:)(v66);
  }

LABEL_15:
  v67 = &v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
  v68 = *&v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];

  v69 = [v28 traitCollection];

  v70 = [v69 preferredContentSizeCategory];
  v71 = sub_ABA320();

  if (v71)
  {
    v72 = 3;
  }

  else
  {
    v72 = 1;
  }

  swift_beginAccess();
  *(v68 + 88) = v72;
  sub_2EB2A8();

  v73 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView;
  v74 = *&v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView];
  v75 = *(v67 + 2);
  if (!(v75 >> 62))
  {
    v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
    if (v76)
    {
      goto LABEL_20;
    }

LABEL_27:
    v81 = *&v28[v73];
    v82 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v81 + v82) = 2;
    v83 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView;
    [*&v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView] addSubview:v81];
    v84 = *(*&v28[v89] + 112);

    [v84 addSubview:*&v28[v83]];
    return;
  }

  v76 = sub_ABB060();
  if (!v76)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (v76 >= 1)
  {
    v77 = v74;

    for (j = 0; j != v76; ++j)
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        v80 = sub_36003C(j, v75, v78);
      }

      else
      {
        v80 = *(v75 + 8 * j + 32);
      }

      TextStackView.add(_:)(v80);
    }

    goto LABEL_27;
  }

LABEL_33:
  __break(1u);
}

uint64_t (*RadioShowCell.title.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_title;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_134154;
}

uint64_t (*RadioShowCell.subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_subtitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_134228;
}

void sub_134260(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB92A0();
  v11 = v10;
  v12 = &a1[*a4];
  swift_beginAccess();
  *v12 = v9;
  *(v12 + 1) = v11;
  v13 = a3;
  v14 = a1;

  v15 = *&v14[*a5];

  v16 = String.trim()();

  swift_beginAccess();
  v15[7] = v16;

  sub_2EB704();
}

void sub_134364(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  v9 = *(v4 + *a4);
  v10 = String.trim()();

  swift_beginAccess();
  v9[7] = v10;

  sub_2EB704();
}

uint64_t (*RadioShowCell.overlayTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1344A8;
}

void sub_1344B4(void *a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = *(v5[3] + *a3);

    v7 = String.trim()();

    swift_beginAccess();
    v6[7] = v7;

    sub_2EB704();
  }

  free(v5);
}

id sub_134574(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_AB9260();

  return v3;
}

uint64_t sub_1345F8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void sub_134660(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB92A0();
  v11 = v10;
  v12 = &a1[*a4];
  swift_beginAccess();
  *v12 = v9;
  *(v12 + 1) = v11;
  v13 = a3;
  v14 = a1;

  v15 = *&v14[*a5 + 8];

  v16 = String.trim()();

  swift_beginAccess();
  v15[7] = v16;

  sub_2EB704();
}

void sub_134768(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  v9 = *(v4 + *a4 + 8);
  v10 = String.trim()();

  swift_beginAccess();
  v9[7] = v10;

  sub_2EB704();
}

uint64_t (*RadioShowCell.overlaySubtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlaySubtitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1348B0;
}

void sub_1348BC(void *a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = *(v5[3] + *a3 + 8);

    v7 = String.trim()();

    swift_beginAccess();
    v6[7] = v7;

    sub_2EB704();
  }

  free(v5);
}

Swift::Void __swiftcall RadioShowCell.layoutSubviews()()
{
  v70.receiver = v0;
  v70.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v70, "layoutSubviews");
  [*(*&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 112) bounds];
  v69 = v1;
  v67 = v2;
  v4 = v3;
  v6 = v5;
  [v0 effectiveUserInterfaceLayoutDirection];
  v7 = *&v0[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView];
  v68 = v4;
  [v7 sizeThatFits:{v4, v6}];
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v13 = *&v0[v12];
  if (v13)
  {
    v66 = v7;
    v14 = &v0[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
    v15 = *&v0[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
    swift_beginAccess();
    v17 = *(v15 + 112);
    v16 = *(v15 + 120);
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      swift_beginAccess();
      v19 = *(v15 + 48);
      v20 = *(v15 + 64);
      v21 = *(v15 + 96);
      v77[3] = *(v15 + 80);
      v77[4] = v21;
      v77[1] = v19;
      v77[2] = v20;
      v77[0] = *(v15 + 32);
      v22 = v13[4];
      v23 = *(v13 + 5);
      v24 = *(v13 + 8);
      v25 = *(v13 + 9);
      v26 = *(v13 + 10);
      v27 = *(v13 + 11);

      sub_2F118(v77, v72);
      v28 = v23;
      sub_108594(v17, v16, v77, v28, v24, v25, v26, v27, v71, v9, v11, v22);

      sub_109AB0(v71);
      sub_2F174(v77);
      v29 = *&v71[6];
    }

    else
    {

      v29 = 0.0;
    }

    v30 = *(v14 + 1);
    swift_beginAccess();
    v32 = *(v30 + 112);
    v31 = *(v30 + 120);
    v33 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v33 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      swift_beginAccess();
      v34 = *(v30 + 48);
      v35 = *(v30 + 64);
      v36 = *(v30 + 96);
      v76[3] = *(v30 + 80);
      v76[4] = v36;
      v76[1] = v34;
      v76[2] = v35;
      v76[0] = *(v30 + 32);
      v37 = v13[4];
      v38 = *(v13 + 5);
      v39 = *(v13 + 8);
      v40 = *(v13 + 9);
      v41 = *(v13 + 10);
      v42 = *(v13 + 11);

      sub_2F118(v76, v72);
      v43 = v38;
      sub_108594(v32, v31, v76, v43, v39, v40, v41, v42, v72, v9, v11, v37);

      sub_109AB0(v72);
      sub_2F174(v76);

      if (v29 > v73)
      {
        v9 = v29;
      }

      else
      {
        v9 = v73;
      }
    }

    else
    {
    }

    v7 = v66;
  }

  v78.origin.x = v69;
  v78.origin.y = v67;
  v78.size.width = v68;
  v78.size.height = v6;
  MaxX = CGRectGetMaxX(v78);
  v79.origin.x = v69;
  v79.origin.y = v67;
  v79.size.width = v9;
  v79.size.height = v11;
  v45 = MaxX - CGRectGetWidth(v79) + -8.0;
  v80.origin.x = v69;
  v80.origin.y = v67;
  v80.size.width = v68;
  v80.size.height = v6;
  CGRectGetMaxY(v80);
  v81.origin.x = v45;
  v81.origin.y = v67;
  v81.size.width = v9;
  v81.size.height = v11;
  CGRectGetHeight(v81);
  v46 = *&v0[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView];
  sub_ABA490();
  [v46 setFrame:?];
  [v7 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [v7 traitCollection];
  [v55 displayScale];
  v57 = v56;

  sub_2E94A4(v74, v48, v50, v52, v54, v57);
  v58 = *(v74[0] + 2);
  if (v58)
  {
    v59 = v74[0] + 200;
    v60 = 0.0;
    v61 = 1.79769313e308;
    do
    {
      Width = CGRectGetWidth(*(v59 - 24));
      if (v60 < Width)
      {
        v60 = Width;
      }

      if (Width < v61)
      {
        v61 = Width;
      }

      v59 += 176;
      --v58;
    }

    while (v58);
    sub_3F250(v74);
    v63 = v60 - v61;
  }

  else
  {
    sub_3F250(v74);
    v63 = -1.79769313e308;
  }

  v64 = fabs(v63) * 0.5;
  v65 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v65, v75, 0.45, 7.5, v64, 0.0);
  UIView.shadow.setter(v75);
  UIView.shadowPathIsBounds.setter(1);
  [v46 bounds];
  sub_ABA4A0();
  sub_ABA490();
  [v7 setFrame:?];
}

Swift::Void __swiftcall RadioShowCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v4 = [v1 traitCollection];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents];
  v6 = [v4 preferredContentSizeCategory];
  v7 = sub_ABA320();

  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  swift_beginAccess();
  *(v5 + 88) = v8;
  sub_2EB2A8();
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
  v10 = [v4 preferredContentSizeCategory];
  v11 = sub_ABA320();

  if (v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  swift_beginAccess();
  *(v9 + 88) = v12;
  sub_2EB2A8();
}

double sub_1350D4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = v4;
  swift_retain_n();
  v7 = v2;
  sub_2E6210(v6);

  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView);
  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v11 = *(v8 + v10);
  *(v8 + v10) = v9;
  swift_retain_n();
  sub_2E6210(v11);

  return result;
}

double RadioShowCell.textDrawingCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  sub_1350D4();

  return result;
}

uint64_t (*RadioShowCell.textDrawingCache.modify(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = VerticalLockupCollectionViewCell.textDrawingCache.modify(v3);
  return sub_135354;
}

void sub_135354(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1350D4();
  }

  free(v3);
}

double static RadioShowCell.preferredHeight(traitCollection:width:)(void *a1, double a2)
{
  v4 = _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0();
  v6 = v5;
  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_ABA320();

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  swift_beginAccess();
  *(v4 + 88) = v9;
  sub_2EB2A8();
  v10 = sub_2F48A4(v6, a1, 0, 0);

  return v10 + a2 + 0.0;
}

void sub_135518()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView);
}

uint64_t _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v23[0] = v2;
  *(&v23[0] + 1) = v5;
  v23[1] = xmmword_AF7C20;
  v24 = 0;
  v25 = 0;
  v26 = v1;
  v27 = 1;
  v28 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v23);
  v16 = v4;
  v15 = v5;
  v14 = v1;
  sub_2F118(v23, v36);

  v7 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v8 = qword_E718C8;
  v9 = qword_E718C8;
  v10 = [v3 clearColor];
  *&v17[0] = v8;
  *(&v17[0] + 1) = v10;
  v17[1] = xmmword_AF7C20;
  v18 = 0;
  v19 = 0;
  v20 = v7;
  v21 = 1;
  v22 = xmmword_AF7C40;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;
  sub_2F118(v17, v36);

  v29[0] = v8;
  v29[1] = v10;
  v30 = xmmword_AF7C20;
  v31 = 0;
  v32 = 0;
  v33 = v7;
  v34 = 1;
  v35 = xmmword_AF7C40;
  sub_2F174(v29);
  v36[0] = v2;
  v36[1] = v5;
  v37 = xmmword_AF7C20;
  v38 = 0;
  v39 = 0;
  v40 = v1;
  v41 = 1;
  v42 = xmmword_AF7C30;
  sub_2F174(v36);
  return v6;
}

uint64_t _s16MusicApplication13RadioShowCellC21overlayTextComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC07OverlaygH0AELLVvpfi_0()
{
  sub_89F60();
  v0 = sub_ABA550();
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v1 clearColor];
  *&v21[0] = v2;
  *(&v21[0] + 1) = v3;
  v21[1] = xmmword_AFF7A0;
  v21[2] = xmmword_AF82C0;
  v22 = v0;
  v23 = 1;
  v24 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x5479616C7265766FLL, 0xEC000000656C7469, v21);
  v16 = v2;
  v15 = v3;
  v14 = v0;
  sub_2F118(v21, v31);

  v5 = sub_ABA550();
  v6 = [v1 whiteColor];
  v7 = [v1 clearColor];
  *&v17[0] = v6;
  *(&v17[0] + 1) = v7;
  v17[1] = xmmword_AFF7A0;
  v17[2] = xmmword_AF82C0;
  v18 = v5;
  v19 = 1;
  v20 = xmmword_AFF7B0;
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x5379616C7265766FLL, 0xEF656C7469746275, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF7C50;
  *(v9 + 32) = v4;
  *(v9 + 40) = v8;
  v25[0] = v6;
  v25[1] = v7;
  v26 = xmmword_AFF7A0;
  v27 = xmmword_AF82C0;
  v28 = v5;
  v29 = 1;
  v30 = xmmword_AFF7B0;
  v10 = v6;
  v11 = v7;
  v12 = v5;
  sub_2F118(v17, v31);

  sub_2F174(v25);

  v31[0] = v2;
  v31[1] = v3;
  v32 = xmmword_AFF7A0;
  v33 = xmmword_AF82C0;
  v34 = v0;
  v35 = 1;
  v36 = xmmword_AF9C80;
  sub_2F174(v31);

  return v4;
}

void _s16MusicApplication13RadioShowCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlaySubtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents);
  *v6 = _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0();
  v6[1] = v7;
  v6[2] = v8;
  v9 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents);
  *v9 = _s16MusicApplication13RadioShowCellC21overlayTextComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC07OverlaygH0AELLVvpfi_0();
  v9[1] = v10;
  v9[2] = v11;
  v12 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView;
  type metadata accessor for TextStackView();
  *(v0 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_ABAFD0();
  __break(1u);
}