void sub_18A8A8(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_189D88(a2, a3, a4 & 1);
  v9 = v8;
  swift_beginAccess();
  v10 = v9[3];
  v11 = v9[5];
  v12 = v9[6];
  v33 = v9[4];
  v34 = v11;
  *v35 = v12;
  v31 = v9[2];
  v32 = v10;
  if ((*(&v33 + 1) & 0x8000000000000000) == 0)
  {
    v13 = v34;
    sub_2F118(&v31, aBlock);
    sub_2F118(&v31, aBlock);
    v14 = v13;
    v15 = [v14 _fontAdjustedForCurrentContentSizeCategory];
    if (v15)
    {
      v16 = v15;

      v14 = v16;
    }

    [v14 _scaledValueForValue:v35[0]];
    [v14 _scaledValueForValue:v35[1]];

    sub_2F174(&v31);
    goto LABEL_11;
  }

  v17 = v32;
  v18 = *(&v31 + 1);
  sub_2F118(&v31, aBlock);
  sub_2F118(&v31, aBlock);
  sub_AB91E0();
  sub_AB3550();
  v19 = sub_AB9320();
  v20 = v17(v19);

  v21 = [v20 length];
  if (v21 <= 0)
  {

LABEL_11:
    [a1 displayScale];
    sub_AB3A00();
    sub_2F174(&v31);

    return;
  }

  v22 = v21;
  v27 = v18;
  v29 = 0;
  v28 = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = &v28;
  *(v23 + 24) = &v29;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_18BC3C;
  *(v24 + 24) = v23;
  aBlock[4] = sub_18BC40;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B8A0;
  aBlock[3] = &block_descriptor_150;
  v25 = _Block_copy(aBlock);

  [v20 enumerateAttribute:NSFontAttributeName inRange:0 options:v22 usingBlock:{0, v25, v27}];
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    v26 = v29;

    if (v26)
    {
      [v26 _scaledValueForValue:v35[0]];
      [v26 _scaledValueForValue:v35[1]];
    }

    else
    {
    }

    goto LABEL_11;
  }

  __break(1u);
}

void _s16MusicApplication22TitleSectionHeaderViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitle);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines) = 2;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = NSFontAttributeName;
  v6 = objc_opt_self();
  v7 = NSFontAttributeName;
  v8 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  *(inited + 64) = sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  *(inited + 40) = v8;
  sub_96EB8(inited);

  v9 = objc_allocWithZone(NSAttributedString);
  v10 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v12 = [v9 initWithString:v10 attributes:isa];

  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 0;
  *(v4 + 24) = v12;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles) = _swiftEmptyArrayStorage;
  v13 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler);
  *v14 = 0;
  v14[1] = 0;
  v15 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle;
  *v15 = xmmword_AF7C40;
  *(v15 + 16) = 0;
  v16 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle;
  *v16 = xmmword_AF8610;
  *(v16 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog) = 0;
  v17 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCornerTreatment;
  v18 = sub_ABA680();
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkPlaceholder;
  v20 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v22 = *v20;
  v21 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = *(v20 + 2);
  *v19 = *v20;
  *(v19 + 8) = v21;
  *(v19 + 16) = v23;
  *(v19 + 24) = v24;
  *(v19 + 32) = v25;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentViewReservedWidth) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__currentPreferredHeight) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineLeadingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineTrailingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineLeadingAlignment) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineTrailingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isBottomHairlineVisible) = 0;
  v26 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInsets;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isBottomHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizerHandler) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floatingBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floating) = 0;
  v27 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle;
  *v27 = xmmword_AF7C40;
  *(v27 + 16) = 0;
  v28 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_chevronImageView;
  v29 = v23;
  v30 = v24;
  v31 = v22;
  v32 = v21;
  *(v0 + v28) = _s16MusicApplication22TitleSectionHeaderViewC012chevronImageF033_1D932DF44907200D5208B83E703ABC72LLSo07UIImageF0Cvpfi_0();
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor) = 0;
  v33 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInvalidationHandler);
  *v33 = 0;
  v33[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void *sub_18B220(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitle];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  v6 = &v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  v7 = *(v6 + 1);
  v8 = *v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = &v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitle];
  swift_beginAccess();
  v10 = *(v9 + 1);
  v11 = *v9 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  if (v11 || (v12 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog, swift_beginAccess(), *&v1[v12]))
  {
LABEL_11:
    [v1 layoutIfNeeded];
  }

  [a1 size];
  [a1 setSize:?];
  return a1;
}

id sub_18B370(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = NSFontAttributeName;
  if (a3)
  {
    sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
    v5 = NSFontAttributeName;
    v6 = sub_ABA550();
  }

  else
  {
    v7 = objc_opt_self();
    v8 = NSFontAttributeName;
    v6 = [v7 preferredFontForTextStyle:UIFontTextStyleBody];
  }

  v9 = v6;
  *(inited + 64) = sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  *(inited + 40) = v9;
  sub_96EB8(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DE6EE8, qword_AF8B50);
  v10 = objc_allocWithZone(NSAttributedString);
  v11 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v13 = [v10 initWithString:v11 attributes:isa];

  return v13;
}

void sub_18B558(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_6D620(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v26 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDE8, &qword_B01A10);
    v5 = (a1 + 40);
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v29[0] = NSFontAttributeName;
      swift_bridgeObjectRetain_n();
      v8 = NSFontAttributeName;
      v9 = [v26 preferredFontForTextStyle:UIFontTextStyleBody];
      v29[4] = sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
      v29[1] = v9;
      v10 = sub_ABB0C0();
      sub_15F84(v29, &v27, &qword_DE6EE8, qword_AF8B50);
      v11 = v27;
      v12 = sub_2F5AD8();
      if (v13)
      {
        break;
      }

      v10[(v12 >> 6) + 8] |= 1 << v12;
      *(v10[6] + 8 * v12) = v11;
      sub_9ACFC(&v28, (v10[7] + 32 * v12));
      v14 = v10[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_11;
      }

      v10[2] = v16;
      sub_12E1C(v29, &qword_DE6EE8, qword_AF8B50);
      v17 = objc_allocWithZone(NSAttributedString);
      v18 = sub_AB9260();

      type metadata accessor for Key(0);
      sub_3FB3C();
      isa = sub_AB8FD0().super.isa;

      v20 = [v17 initWithString:v18 attributes:isa];

      v30 = v3;
      v22 = v3[2];
      v21 = v3[3];
      if (v22 >= v21 >> 1)
      {
        sub_6D620((v21 > 1), v22 + 1, 1);
        v3 = v30;
      }

      v3[2] = v22 + 1;
      v23 = &v3[4 * v22];
      v23[4] = v7;
      v23[5] = v6;
      *(v23 + 48) = 0;
      v23[7] = v20;
      v5 += 2;
      if (!--v2)
      {
        v1 = v25;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
    v24 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles;
    swift_beginAccess();
    *(v1 + v24) = v3;
  }
}

double block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_18B864()
{

  return swift_deallocObject();
}

unint64_t sub_18B8B4()
{
  result = qword_DF35D8;
  if (!qword_DF35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF35D8);
  }

  return result;
}

unint64_t sub_18B90C()
{
  result = qword_DF35E0;
  if (!qword_DF35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF35E0);
  }

  return result;
}

void sub_18B968(uint64_t a1)
{
  sub_7D678(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for TitleSectionHeaderView.LayoutStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TitleSectionHeaderView.LayoutStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_18BB14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BB30(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_18BBA0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BBE0()
{

  return swift_deallocObject();
}

uint64_t sub_18BC88()
{
  v1 = v0;
  sub_18C040(v17);
  if (BYTE8(v17[0]))
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    if (BYTE8(v17[0]) != 1)
    {
      sub_12E1C(v17, &unk_DF3640, qword_B01AC0);
    }
  }

  else
  {
    sub_9B150(v17, v22);
  }

  sub_4148FC(v14);
  if (v16 == 1)
  {
    sub_D5B6C();
    if (v2)
    {
      v3 = v2;
      static PresentationSource.topmost(in:)(v17);
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      v18 = 1;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    if (v16 != 1)
    {
      sub_12E1C(v14, &unk_DEA520, &unk_AFDBF0);
    }
  }

  else
  {
    sub_17704(v14, v17);
  }

  sub_1116A8(v17, v14);
  if (v16 == 1)
  {
    sub_12E1C(v14, &unk_DEA520, &unk_AFDBF0);
LABEL_18:
    if (qword_DE6918 != -1)
    {
      swift_once();
    }

    v6 = sub_AB4BC0();
    __swift_project_value_buffer(v6, qword_DF3628);
    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "[JSUserNotificationAuthorizationSegue] Unable to find a sourceViewController", v9, 2u);
    }

    sub_414AFC(v14);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        _s30CollectionViewSelectionHandlerVMa(0);
        isa = sub_AB3770().super.isa;
        [v11 deselectItemAtIndexPath:isa animated:1];
        sub_12E1C(v17, &unk_DEA520, &unk_AFDBF0);
        sub_18C7FC(v22);
      }

      else
      {
        sub_12E1C(v17, &unk_DEA520, &unk_AFDBF0);
        sub_18C7FC(v22);
      }

      return __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      sub_12E1C(v17, &unk_DEA520, &unk_AFDBF0);
      sub_18C7FC(v22);
      return sub_12E1C(v14, &unk_DE8E30, "\b]\r");
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  sub_1611C(v14);
  if (!v4)
  {
    goto LABEL_18;
  }

  swift_unknownObjectWeakAssign();
  if (qword_DE6910 != -1)
  {
    swift_once();
  }

  sub_18CEBC(v22, v13);
  v13[8] = 0;
  swift_beginAccess();
  sub_2E5810(v13, v1);
  swift_endAccess();
  sub_18C104(v4);

  sub_12E1C(v17, &unk_DEA520, &unk_AFDBF0);
  return sub_18C7FC(v22);
}

uint64_t sub_18C040@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE6910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_DF3620;
  if (*(&dword_10 + off_DF3620) && (v4 = sub_2EC7DC(v1), (v5 & 1) != 0))
  {
    sub_18CEBC(*&stru_20.segname[v3 + 16] + 8 * v4, a1);
    v6 = 0;
  }

  else
  {
    *a1 = 0;
    v6 = 1;
  }

  *(a1 + 8) = v6;
  return swift_endAccess();
}

void sub_18C104(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
  v5 = OBJC_IVAR____TtC11MusicJSCore36JSUserNotificationAuthorizationSegue_userInitiated;
  swift_beginAccess();
  [v4 setUserInitiated:*(v2 + v5)];
  v6 = objc_allocWithZone(AMSUserNotificationAuthorizationTask);
  v7 = v4;
  v8 = sub_AB9260();
  v9 = [v6 initWithBundleIdentifier:v8 options:v7];

  [v9 setDelegate:v2];
  v10 = [v9 requestAuthorization];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_18CF6C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_54;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  [v10 addFinishBlock:v13];
  _Block_release(v13);
}

void sub_18C2FC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      swift_errorRetain();
      if (qword_DE6918 != -1)
      {
        swift_once();
      }

      v9 = sub_AB4BC0();
      __swift_project_value_buffer(v9, qword_DF3628);
      swift_errorRetain();
      v10 = sub_AB4BA0();
      v11 = sub_AB9F30();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        swift_getErrorValue();
        v14 = sub_ABB520();
        v16 = sub_425E68(v14, v15, &v17);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_0, v10, v11, "[JSUserNotificationAuthorizationSegue] Authorization failed with error: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
      }

      sub_18C4EC(a4);
    }

    if (a1)
    {
      sub_18CB04([a1 authorizationStatus]);
    }

    sub_18C4EC(a4);
  }
}

double sub_18C4EC(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = ObjectType;
  v5 = a1;
  v6 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_18CFCC, v4);

  return result;
}

uint64_t sub_18C5A0(void *a1, void *a2)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  if (qword_DE6910 != -1)
  {
    swift_once();
  }

  v4 = 0;
  v5 = 1;
  swift_beginAccess();
  sub_2E5810(&v4, a2);
  return swift_endAccess();
}

int *sub_18C64C()
{
  result = sub_98468(_swiftEmptyArrayStorage);
  off_DF3620 = result;
  return result;
}

void JSUserNotificationAuthorizationSegue.handle(_:completion:)(void *a1, void (*a2)(void, id), uint64_t a3)
{
  sub_18C040(v13);
  if (v13[8])
  {
    sub_12E1C(v13, &unk_DF3640, qword_B01AC0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_18C7FC(v13);
    if (Strong)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = Strong;
      v7[4] = a2;
      v7[5] = a3;
      v8 = a1;
      v9 = Strong;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_18C98C, v7);

      return;
    }
  }

  v10 = sub_AB9260();
  v11 = sub_AB9260();
  v12 = AMSError();

  a2(0, v12);
}

void sub_18C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_13C80(0, &qword_DEE560, ICStoreRequestContext_ptr);
  v8 = static ICStoreRequestContext.storeFlow.getter();
  v9 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v8];

  v10 = [objc_allocWithZone(AMSUIEngagementTask) initWithRequest:a1 bag:v9 presentingViewController:a2];
  v11 = [v10 presentEngagement];
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_311FA0;
  v13[3] = &block_descriptor_19_1;
  v12 = _Block_copy(v13);

  [v11 addFinishBlock:v12];
  _Block_release(v12);
}

uint64_t getEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_18CA7C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DF3628);
  __swift_project_value_buffer(v0, qword_DF3628);
  sub_13C80(0, &qword_DED8C0, OS_os_log_ptr);
  OS_os_log.init(musicCategory:)(0xD00000000000001ELL, 0x8000000000B54D40);
  return sub_AB4BD0();
}

void sub_18CB04(uint64_t a1)
{
  sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
  v2 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v2)
  {

    oslog = [objc_opt_self() sharedManager];
    [oslog setAccountNotificationsArtistContentFeature:a1 == 2 withCompletionHandler:0];
  }

  else
  {
    if (qword_DE6918 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_DF3628);
    oslog = sub_AB4BA0();
    v4 = sub_AB9F50();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, oslog, v4, "Unable to update Music Account settings because there is no active account.", v5, 2u);
    }
  }
}

void sub_18CC5C(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_18C040(v14);
  if (v14[8])
  {
    sub_12E1C(v14, &unk_DF3640, qword_B01AC0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_18C7FC(v14);
    if (Strong)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = Strong;
      v7[4] = sub_DB118;
      v7[5] = v5;
      v8 = a1;
      v9 = Strong;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_18CFE4, v7);

      return;
    }
  }

  v10 = sub_AB9260();
  v11 = sub_AB9260();
  v12 = AMSError();

  v13 = sub_AB3040();
  (a3)[2](a3, 0, v13);
}

uint64_t sub_18CE3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t sub_18CEF4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18CF2C()
{

  return swift_deallocObject();
}

double block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_18CF8C()
{

  return swift_deallocObject();
}

void sub_18CFE8(void *a1)
{
  v2 = v1;
  v4 = [v1 viewControllers];
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v5 = sub_AB9760();
  v6 = v5;
  if (!(v5 >> 62))
  {
    if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!sub_ABB060())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_35F8D4(0, v6);
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 navigationItem];

  if (!v9 || (sub_13C80(0, &qword_DF37F8, UINavigationItem_ptr), v10 = a1, v11 = sub_ABA790(), v10, v9, (v11 & 1) == 0))
  {
LABEL_11:
    v13 = [v2 viewControllers];
    v14 = sub_AB9760();
    if (v14 >> 62)
    {
      v25 = sub_ABB060();

      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));

      if (v15)
      {
LABEL_13:

        v12 = 1;
        goto LABEL_14;
      }
    }

    v26 = *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController];
    if (v26)
    {
      v27 = [v26 navigationItem];
      if (v27)
      {
        v28 = v27;
        sub_13C80(0, &qword_DF37F8, UINavigationItem_ptr);
        v29 = a1;
        v30 = sub_ABA790();

        if (v30)
        {
          v12 = 3;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v12 = 3;
LABEL_14:
  v16 = [a1 standardAppearance];
  if (!v16)
  {
    v16 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v17 = [a1 scrollEdgeAppearance];
  if (!v17)
  {
    v17 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v31 = v17;
  v18 = [a1 largeTitleDisplayMode];
  v19 = sub_3878B0();
  if (v18 == &dword_0 + 3)
  {
    v20 = v12;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 > 3;
  v22 = 0x1000202u >> (8 * v20);
  if (v21)
  {
    LOBYTE(v22) = 0;
  }

  if (v19 == 3)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23;
  [v16 _setTitleControlHidden:v23 != 0];
  [v31 _setTitleControlHidden:v24 == 2];
  [a1 setStandardAppearance:v16];
  [a1 setScrollEdgeAppearance:v31];
}

id sub_18D3D8(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  v3 = a2;
  *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette] = 0;
  if (!ObjCClassFromMetadata)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for NavigationController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", v4, v3);
}

void sub_18D540(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  v2 = [v1 navigationBar];
  v3 = [v2 subviews];
  sub_13C80(0, &qword_DF12A0, UIView_ptr);
  v4 = sub_AB9760();

  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v6 = 0;
    if ((v4 & 0xC000000000000001) != 0)
    {
LABEL_4:
      v7 = sub_3605EC(v6, v4);
      goto LABEL_7;
    }

    while (v6 < *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      v7 = *(v4 + 8 * v6 + 32);
LABEL_7:
      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        break;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v8;
        v12 = [v1 view];
        if (!v12)
        {
          __break(1u);
          return;
        }

        v13 = v12;
        [v12 bounds];

        v8 = v11;
        [v10 bounds];
        [v10 frame];
        [v10 setFrame:?];

        v14 = [v10 contentView];
        [v14 frame];
        [v14 setFrame:?];

        [v10 setNeedsLayout];
      }

      if (v6 + 1 == i)
      {
        goto LABEL_17;
      }

      ++v6;
      if ((v4 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v15 = [v1 topViewController];
  v16 = [v15 navigationItem];
}

double sub_18D824()
{
  swift_getObjectType();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  [v0 setDelegate:v0];
  v1 = [v0 navigationBar];
  [v1 setPrefersLargeTitles:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0, qword_B01640);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 32) = sub_AB5080();
  *(v2 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_ABA080();
  swift_unknownObjectRelease();

  return result;
}

id sub_18DB6C(id result, char a2)
{
  if (result)
  {
    v4 = result;
    if ([result boundaryEdge] == &dword_0 + 2)
    {
      v5 = [v2 topViewController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationItem];
        v8 = [v6 parentViewController];
        if (v8)
        {
          v9 = v8;
          while (1)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            v10 = v9;
            v11 = [v10 navigationItem];

            v9 = [v10 parentViewController];
            v7 = v11;
            if (!v9)
            {
              v9 = v6;
              v7 = v11;
              goto LABEL_11;
            }
          }
        }

        else
        {
          v9 = v6;
        }

LABEL_11:

        v12 = [v7 searchController];
        if (v12)
        {

          v13 = [v2 existingPaletteForEdge:2];
          if (v13)
          {
            v14 = v13;
            if ([v13 isPinned])
            {
              [v2 detachPalette:v14];
            }
          }
        }
      }
    }

    v15.receiver = v2;
    v15.super_class = type metadata accessor for NavigationController();
    return objc_msgSendSuper2(&v15, "attachPalette:isPinned:", v4, a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18DDBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette];
  if (!a1)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    v9 = 0;
    goto LABEL_7;
  }

  if (v5)
  {
    sub_13C80(0, &unk_DF37E0, _UINavigationControllerPalette_ptr);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      v9 = *&v2[v4];
LABEL_7:
      *&v2[v4] = 0;
    }
  }

LABEL_8:
  v23.receiver = v2;
  v23.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v23, "detachPalette:", a1);
  v10 = [v2 navigationBar];
  v11 = [v10 subviews];
  sub_13C80(0, &qword_DF12A0, UIView_ptr);
  v12 = sub_AB9760();

  if (v12 >> 62)
  {
    v13 = sub_ABB060();
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_3605EC(i, v12);
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    if (swift_dynamicCastObjCProtocolConditional() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v17 = v16;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }

    else
    {
    }
  }

LABEL_23:

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_35;
  }

  for (j = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)); j; j = sub_ABB060())
  {
    v19 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v20 = sub_3605EC(v19, _swiftEmptyArrayStorage);
      }

      else
      {
        if (v19 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_34;
        }

        v20 = _swiftEmptyArrayStorage[v19 + 4];
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v20 removeFromSuperview];

      ++v19;
      if (v22 == j)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
}

void sub_18E140(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController];
  *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController] = a1;
  v6 = a1;

  [v6 loadViewIfNeeded];
  v7 = [v6 navigationItem];
  sub_18CFE8(v7);

  v9.receiver = v2;
  v9.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v9, "pushViewController:animated:", v6, a2 & 1);
  v8 = *&v2[v4];
  *&v2[v4] = 0;
}

void sub_18E27C(void *a1, uint64_t a2, char a3)
{
  v6 = OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController;
  v7 = *&v3[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController];
  *&v3[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController] = a1;
  v8 = a1;

  [v8 loadViewIfNeeded];
  v9 = [v8 navigationItem];
  sub_18CFE8(v9);

  v11.receiver = v3;
  v11.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v11, "pushViewController:overrideTraitCollection:animated:", v8, a2, a3 & 1);
  v10 = *&v3[v6];
  *&v3[v6] = 0;
}

void sub_18E58C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette);
}

id sub_18E5CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NavigationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_18E7B8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTextAlignment:1];
  v1 = objc_opt_self();
  v2 = [v1 secondaryLabelColor];
  [v0 setTextColor:v2];

  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v3];

  [v0 setAdjustsFontForContentSizeCategory:0];
  v4 = v0;
  v5 = [v1 clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

void sub_18E94C(void *a1, id a2)
{
  v3 = [a2 horizontalSizeClass];
  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v3 != v5)
  {
    v6 = [a1 topViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationItem];
      sub_18CFE8(v8);
    }
  }
}

void sub_18EA30(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 existingPaletteForEdge:2];
  if (v4)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v4)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette];
  v7 = v4;
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_3875B8();
  if (!v4)
  {
    if (!v5)
    {
      return;
    }

    v13 = type metadata accessor for NavigationBarBottomPromptPaletteContentView();
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel;

    *&v14[v15] = sub_18E7B8();
    v35.receiver = v14;
    v35.super_class = v13;
    v16 = objc_msgSendSuper2(&v35, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v17 = OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel;
    v18 = *&v16[OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel];
    v19 = v16;
    v20 = sub_AB9260();
    [v18 setText:v20];

    [v19 addSubview:*&v16[v17]];
    v21 = [v2 navigationBar];
    [v21 bounds];
    v23 = v22;

    v24 = [v2 paletteForEdge:2 size:{v23, 28.0}];
    if (v24)
    {
      v25 = v19;
      v26 = v24;
      sub_3876A0();
      v28 = v27;
      [v27 removeFromSuperview];

      [v25 setTag:7453282];
      [v26 bounds];
      [v25 setFrame:?];
      [v25 setAutoresizingMask:18];
      [v26 addSubview:v25];
    }

    [v2 attachPalette:v24 isPinned:1];
    swift_bridgeObjectRelease_n();

    goto LABEL_25;
  }

  if (v5)
  {
    v6 = 0;
    goto LABEL_16;
  }

LABEL_8:
  v4 = v4;
  [v4 setPinned:0];
  v8 = [v2 transitionCoordinator];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v4;
    v34[4] = sub_18EE8C;
    v34[5] = v10;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 1107296256;
    v34[2] = sub_CF24C;
    v34[3] = &block_descriptor_55;
    v11 = _Block_copy(v34);
    v4 = v4;
    v12 = v2;

    [v9 animateAlongsideTransition:0 completion:v11];
    _Block_release(v11);

    swift_unknownObjectRelease();
  }

  else
  {
    [v2 detachPalette:v4];
  }

  v6 = 1;
LABEL_16:
  v29 = v4;
  sub_3876A0();
  v31 = v30;

  if (!v31)
  {

LABEL_22:

    return;
  }

  type metadata accessor for NavigationBarBottomPromptPaletteContentView();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {

    goto LABEL_22;
  }

  v33 = *(v32 + OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel);
  if (v6)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_AB9260();
  }

  [v33 setText:v24];

LABEL_25:
}

uint64_t sub_18EE4C()
{

  return swift_deallocObject();
}

id sub_18EE8C(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ([a1 isCancelled])
  {
    v4 = "setPinned:";
    v5 = v2;
    v6 = 1;
  }

  else
  {
    v4 = "detachPalette:";
    v5 = v3;
    v6 = v2;
  }

  return [v5 v4];
}

double block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_18EF2C(unint64_t a1)
{
  v3 = [v1 existingPaletteForEdge:2];
  if (v3)
  {
    v4 = v3;
    [v1 detachPalette:v3];
  }

  v5 = OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController;
  v21 = *&v1[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController];
  if (a1 >> 62)
  {
LABEL_17:
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v20 = v21;
  if (v6)
  {
    v7 = 0;
    v19 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v19)
      {
        v9 = sub_35F8D4(v7, a1);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * v7 + 32);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      v11 = *&v1[v5];
      *&v1[v5] = v9;
      v12 = a1;
      v13 = v9;

      v14 = [v13 navigationItem];
      sub_18CFE8(v14);

      v15 = [v13 navigationItem];
      v16 = *&v1[v5];
      *&v1[v5] = v21;
      v17 = v20;

      a1 = v12;
      ++v7;
    }

    while (v10 != v6);
  }

  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  isa = sub_AB9740().super.isa;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v22, "setViewControllers:", isa);
}

id sub_18F120()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = qword_DF3860;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *&v0[v1] = sub_225174(&off_CF0450, 0, 0);
  *&v0[qword_DF3868] = 0;
  *&v0[qword_DF3870] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MoviesViewController(0);
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = sub_AB9260();
  [v2 setPlayActivityFeatureName:v3];

  v4 = v2;
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = sub_AB9260();

  [v4 setTitle:v5];

  sub_3B4C14(1);
  return v4;
}

void sub_18F364()
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
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  v8 = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v9 = sub_10F414(v8);
  v10 = [v7 propertySetByCombiningWithPropertySet:v9];

  v11 = sub_2BAFF8(v8);
  v12 = [v10 propertySetByCombiningWithPropertySet:v11];

  qword_E71118 = v12;
}

uint64_t sub_18F4F0()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = qword_DF3868;
  if (*&v0[qword_DF3868])
  {
    v2 = *&v0[qword_DF3868];
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

double sub_18F684()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for MoviesViewController(0);
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v5 = sub_AB9760();

    v2 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = *&v1[qword_DF3860];
  sub_225418();
  sub_AB9730();
  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v7 = [v1 navigationItem];
  sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
  isa = sub_AB9740().super.isa;

  [v7 setRightBarButtonItems:isa animated:0];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v6[8];
  v11 = v6[9];
  v6[8] = sub_191594;
  v6[9] = v9;

  sub_17654(v10, v11);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = v6[6];
  v14 = v6[7];
  v6[6] = sub_141790;
  v6[7] = v12;

  sub_17654(v13, v14);

  v15 = sub_18F4F0();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v15 + 88);
  v18 = *(v15 + 96);
  *(v15 + 88) = sub_191668;
  *(v15 + 96) = v16;

  sub_17654(v17, v18);

  return result;
}

void sub_18F940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_18FB2C();
  }
}

void sub_18F994(void *a1)
{
  v1 = a1;
  sub_18F684();
}

BOOL sub_18F9DC()
{
  v1 = [v0 traitCollection];
  v2 = UITraitCollection.isMediaPicker.getter(v1);

  return !v2;
}

double sub_18FA28()
{
  v1 = v0;
  sub_1903E0();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_18F4F0();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v13 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_DF3868) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:

  return result;
}

void sub_18FB2C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v3 = v2;
  v4 = static MPModelMovie.defaultMusicKind.getter();
  [v3 setItemKind:v4];

  v5 = sub_AB9260();
  [v3 setLabel:v5];

  if (qword_DE6920 != -1)
  {
    swift_once();
  }

  [v3 setItemProperties:qword_E71118];
  sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);

  isa = sub_AB9740().super.isa;

  [v3 setItemSortDescriptors:isa];

  if (*(*(sub_18F4F0() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v7 = sub_AB9260();
  }

  else
  {
    v7 = 0;
  }

  [v3 setFilterText:v7];

  v8 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v3);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_191534;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_151E0;
  v11[3] = &block_descriptor_56;
  v10 = _Block_copy(v11);

  [v3 performWithResponseHandler:v10];
  _Block_release(v10);
}

double sub_18FDF8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);

  return result;
}

void sub_18FE9C(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v28 - v11;
  sub_1908C8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DEA510, "\b]\r");
  }

  else
  {
    sub_140E58(v6, v12);
    [v2 loadViewIfNeeded];
    v13 = *&v2[qword_DFE2F8];
    if (v13)
    {
      v14 = v13;
      isa = sub_AB3770().super.isa;
      v16 = [v14 cellForItemAtIndexPath:isa];

      if (v16)
      {
        sub_D5958(v31);
        v29 = v31[0];
        v28 = v31[1];
        v17 = v32;
        v18 = v33;
        v19 = v34;

        v20 = v28;
        v21 = v29;
      }

      else
      {
        v17 = 0;
        v19 = 0;
        v21 = 0uLL;
        v18 = 255;
        v20 = 0uLL;
      }

      v35[0] = v21;
      v35[1] = v20;
      v36 = v17;
      v37 = v18;
      v38 = v19;
      v22 = v3;
      PresentationSource.init(viewController:position:)(v22, v35, v30);
      v23 = sub_4A3F1C();
      v24 = *&v22[qword_DFE2F0];
      sub_1912D4(v12, v10);
      v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v26 = swift_allocObject();
      sub_140E58(v10, v26 + v25);
      v27 = v24;
      sub_1109D4(a1, v24, 0, 1, v30, sub_191468, v26);
      sub_1611C(v30);
      sub_1914D8(v12);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1901B8(void *a1)
{
  v7 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 music_inheritedLayoutInsets];

  [a1 setRowHeight:176.0];
  [a1 invalidateLayout];
}

void sub_1902A4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];
  (*(v8 + 8))(v10, v7);
}

void *sub_1903E0()
{
  v1 = qword_DF3870;
  if (*&v0[qword_DF3870])
  {
    v2 = *&v0[qword_DF3870];
  }

  else
  {
    v2 = sub_190448(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_190448(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v6 = v3[7];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5, v6);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3[27];
    v9 = v3[28];
    v3[27] = sub_1912CC;
    v3[28] = v7;

    sub_17654(v8, v9);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190584@<X0>(__int128 *a1@<X1>, uint64_t a3@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v6 = Strong;
  v7 = sub_18F4F0();

  v8 = (*(v7 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v9 = v8[1];
  if (!v9)
  {

LABEL_10:
    v19 = a1[1];
    v49 = *a1;
    v50 = v19;
    v20 = a1[3];
    v33 = a1[2];
    v34 = v20;
    v35 = a1[4];
    v36 = *(a1 + 10);
    sub_576EC(a1, &v43);
    sub_AB91E0();
    sub_AB3550();
    v21 = sub_AB9320();
    v23 = v22;
    sub_12E1C(&v49, &unk_DEE6F0, &unk_AF8970);
    sub_AB91E0();
    sub_AB3550();
    v24 = sub_AB9320();
    v26 = v25;
    sub_12E1C(&v50, &unk_DEE6F0, &unk_AF8970);
    *&v37 = v21;
    *(&v37 + 1) = v23;
    *&v38 = v24;
    *(&v38 + 1) = v26;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    *&v43 = v21;
    *(&v43 + 1) = v23;
    *&v44 = v24;
    *(&v44 + 1) = v26;
    v48 = v36;
    v46 = v34;
    v47 = v35;
    v45 = v33;
    sub_576EC(&v37, &v32);
    result = sub_57748(&v43);
    v12 = v42;
    v16 = v40;
    v18 = v41;
    v14 = v38;
    v17 = v39;
    v15 = v37;
    goto LABEL_11;
  }

  v10 = *v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  if (qword_DE6BD0 != -1)
  {
    swift_once();
  }

  v46 = xmmword_E717A8;
  v47 = xmmword_E717B8;
  v44 = xmmword_E71788;
  v45 = xmmword_E71798;
  v43 = xmmword_E71778;
  v12 = qword_E717C8;
  v48 = qword_E717C8;
  v30 = xmmword_E717A8;
  v31 = xmmword_E717B8;
  v28 = xmmword_E71788;
  v29 = xmmword_E71798;
  v27 = xmmword_E71778;
  result = sub_576EC(&v43, &v37);
  v15 = v27;
  v14 = v28;
  v17 = v29;
  v16 = v30;
  v18 = v31;
LABEL_11:
  *a3 = v15;
  *(a3 + 16) = v14;
  *(a3 + 32) = v17;
  *(a3 + 48) = v16;
  *(a3 + 64) = v18;
  *(a3 + 80) = v12;
  return result;
}

void sub_1908C8(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[qword_DFE2F0];
  if (v6)
  {
    v7 = v6;
    v8 = [v7 results];
    if (!v8)
    {
      __break(1u);
      goto LABEL_18;
    }

    v9 = v8;
    isa = sub_AB3770().super.isa;
    v11 = [v9 itemAtIndexPath:isa];

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v30 = a1;
      v14 = [objc_allocWithZone(MPModelLibraryRequest) init];
      if (*(*(sub_18F4F0() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
      {

        v15 = sub_AB9260();
      }

      else
      {
        v15 = 0;
      }

      [v14 setFilterText:v15];

      v18 = [v1 traitCollection];
      UITraitCollection.configure<A, B>(libraryRequest:)(v14);

      v31 = v14;
      v19 = [v7 request];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 label];
        [v31 setLabel:v21];

        sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
        v22 = static MPModelMovie.defaultMusicKind.getter();
        [v31 setItemKind:v22];

        v23 = [v13 identifiers];
        v24 = [v31 playbackIntentWithStartItemIdentifiers:v23];

        v25 = v30;
        if (v24)
        {
          *v5 = v24;
          swift_storeEnumTagMultiPayload();
          v35 = 0;
          memset(v34, 0, sizeof(v34));
          v33 = 0;
          memset(v32, 0, sizeof(v32));
          v26 = v2;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v34, 3, 0, 0, 1, 0, 1, v25, v2, v32);

          swift_unknownObjectRelease();
          v27 = type metadata accessor for PlaybackIntentDescriptor(0);
          (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
        }

        else
        {
          v28 = type metadata accessor for PlaybackIntentDescriptor(0);
          (*(*(v28 - 8) + 56))(v25, 1, 1, v28);

          swift_unknownObjectRelease();
          v29 = v31;
        }

        return;
      }

LABEL_18:
      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
  }

  v16 = type metadata accessor for PlaybackIntentDescriptor(0);
  v17 = *(*(v16 - 8) + 56);

  v17(a1, 1, 1, v16);
}

double sub_190D54()
{

  return result;
}

id sub_190DA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoviesViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_190DDC(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for MoviesViewController(uint64_t a1)
{
  result = qword_DF38A0;
  if (!qword_DF38A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190EEC()
{
  v1 = *v0;
  [*v0 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 traitCollection];
    [v3 bounds];
  }

  else
  {
    __break(1u);
  }
}

id sub_190FAC()
{
  v0 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  sub_1901B8(v0);
  return v0;
}

void sub_191014(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v26[-v7];
  v9 = [a2 title];
  if (v9)
  {
    v10 = v9;
    v11 = sub_AB92A0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = (a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  v15 = *(a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  v16 = *(a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title + 8);
  *v14 = v11;
  v14[1] = v13;
  sub_2DD6C(v15, v16);

  v17 = [a2 releaseDate];
  if (v17)
  {
    v18 = v17;
    sub_AB33F0();

    v19 = sub_AB3430();
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  }

  else
  {
    v20 = sub_AB3430();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  }

  v21 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(a1 + v21, v5);
  swift_beginAccess();
  sub_2F0A8(v8, a1 + v21);
  swift_endAccess();
  sub_2E13C(v5);
  sub_12E1C(v5, &unk_E01230, "|,\r");
  sub_12E1C(v8, &unk_E01230, "|,\r");
  [a2 duration];
  v23 = a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration;
  v24 = *(a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration);
  v25 = *(a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration + 8);
  *v23 = v22;
  *(v23 + 8) = 0;
  if ((v25 & 1) != 0 || v24 != v22)
  {
    sub_2E428();
  }
}

uint64_t sub_191294()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1912D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191338()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = (v3 + *(v1 + 28));
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = (v3 + *(v1 + 32));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

void sub_191468(unsigned __int8 a1)
{
  v1 = a1;
  type metadata accessor for PlaybackIntentDescriptor(0);
  if (v1 == 1)
  {
    sub_37D3DC(0);
  }
}

uint64_t sub_1914D8(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_191554()
{

  return swift_deallocObject();
}

void sub_1915B0()
{
  v1 = qword_DF3860;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *(v0 + v1) = sub_225174(&off_CF0478, 0, 0);
  *(v0 + qword_DF3868) = 0;
  *(v0 + qword_DF3870) = 0;
  sub_ABAFD0();
  __break(1u);
}

char *sub_19166C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlaying] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingSubscription] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingItemHasVideo] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingItemHasTimeSyncedLyrics] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_urlBagObserver] = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_notificationSettingsManager;
  *&v0[v2] = [objc_opt_self() sharedManager];
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider____lazy_storage___musicRecognitionModuleContextProvider] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, "init");
  BagProvider.shared.unsafeMutableAddressor();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = BagProvider.createObserver(handler:)(sub_194824, v4);

  *&v3[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_urlBagObserver] = v5;

  *&v3[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingSubscription] = 0;

  return v3;
}

void sub_1917F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal];
    *&Strong[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal] = 0;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted];
    *&v4[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted] = 0;
  }
}

uint64_t sub_1918AC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider____lazy_storage___musicRecognitionModuleContextProvider;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider____lazy_storage___musicRecognitionModuleContextProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider____lazy_storage___musicRecognitionModuleContextProvider);
  }

  else
  {
    type metadata accessor for MusicRecognitionModuleContextProvider();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
    swift_beginAccess();
    *(v2 + 24) = &off_CFE6E8;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_191970(char a1, void *a2)
{
  v3 = v2;
  v6 = sub_AB7C10();
  v25 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB7C50();
  v9 = *(v24 - 8);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v3[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_notificationSettingsManager] setAccountNotificationsArtistContentFeature:a1 & 1 withCompletionHandler:{0, v10}];
  sub_11BA4(&off_CF04A0);
  swift_arrayDestroy();
  isa = sub_AB9B30().super.isa;

  [a2 reportApplicationContextPropertiesDidChange:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF3FA0, &qword_B01CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v15 = JSCapabilitiesController.Notifications.UserInfoKeys.userOptInStatus.unsafeMutableAddressor();
  v17 = *v15;
  v16 = v15[1];
  *(inited + 32) = v17;
  *(inited + 40) = v16;
  *(inited + 48) = a1;

  v18 = sub_98594(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DF3FA8, &unk_B01CB0);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v19 = sub_ABA150();
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v18;
  aBlock[4] = sub_1947CC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_15_0;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  (*(v25 + 8))(v8, v6);
  (*(v9 + 8))(v12, v24);
  _Block_release(v21);
}

void sub_191D08(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = *JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification.unsafeMutableAddressor();
  sub_3E9030(a2);
  isa = sub_AB8FD0().super.isa;

  [v4 postNotificationName:v5 object:a1 userInfo:isa];
}

void sub_191DE0()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = LSApplicationWorkspace.openNotificationSettings()();

    if (!v6)
    {
      v7 = *OS_os_log.scripting.unsafeMutableAddressor();
      sub_AB4BD0();
      v8 = sub_AB4BA0();
      v9 = sub_AB9F30();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_0, v8, v9, "Error opening notification settings", v10, 2u);
      }

      (*(v1 + 8))(v3, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_191F80()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_19209C;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF3F80, &qword_B01C98);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_192638;
  v0[21] = &block_descriptor_57;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_19209C()
{

  return _swift_task_switch(sub_19217C, 0, 0);
}

uint64_t sub_19217C()
{
  v1 = v0[26];
  v0[28] = v1;
  v2 = [v1 authorizationStatus];
  if ((v2 - 2) >= 3)
  {
    if (v2 == &dword_0 + 1)
    {
      sub_AB9940();
      v0[30] = sub_AB9930();
      v8 = sub_AB98B0();

      return _swift_task_switch(sub_192550, v8, v7);
    }

    else if (v2)
    {
      return sub_ABAFD0();
    }

    else
    {
      v5 = v0[27];
      v0[10] = v0;
      v0[15] = v0 + 26;
      v0[11] = sub_1923E0;
      v6 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF3F88, &qword_B01CA0);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_19269C;
      v0[21] = &block_descriptor_5;
      v0[22] = v6;
      [v5 requestAuthorizationWithOptions:7 completionHandler:v0 + 18];

      return _swift_continuation_await(v0 + 10);
    }
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1923E0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1925C0;
  }

  else
  {
    v2 = sub_1924F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1924F0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192550()
{
  sub_193FE4();

  return _swift_task_switch(sub_1924F0, 0, 0);
}

uint64_t sub_1925C0(__n128 a1)
{
  v2 = *(v1 + 224);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_192638(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_19269C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_192828(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0xD000000000000016;
  v11 = a1 == 0xD00000000000001DLL && 0x8000000000B553A0 == a2;
  if (v11 || (sub_ABB3C0() & 1) != 0)
  {
    v12 = [objc_opt_self() deviceMediaLibrary];
    if (v12)
    {
      v14 = v12;
      v15 = [v12 hasAddedToLibraryAppleMusicContent];
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_64;
  }

  if (a1 == 0xD000000000000014 && 0x8000000000B553C0 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    v17 = [objc_opt_self() deviceMediaLibrary];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 filterAvailableContentGroups:128 withOptions:2];

      v20 = v19 != 0;
LABEL_16:
      *(a3 + 24) = &type metadata for Bool;
      *a3 = v20;
      return;
    }

    __break(1u);
LABEL_72:
    if (a1 == v5 - 1 && 0x8000000000B55530 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v24 = [*JSAppReviewSegue.storeReview.unsafeMutableAddressor() shouldAttemptPromptReview];
      goto LABEL_34;
    }

    goto LABEL_77;
  }

  if (a1 == 0xD00000000000002BLL && 0x8000000000B553E0 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    v21 = [objc_opt_self() deviceMediaLibrary];
    if (!v21)
    {
      __break(1u);
LABEL_77:
      if (a1 == v5 + 5 && 0x8000000000B48750 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v14 = [*(v3 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_notificationSettingsManager) cachedAccountNotificationsShowInLibrarySwitch];
        v15 = [v14 isToggled];
        goto LABEL_9;
      }

      v4 = v5 + 10;
      if (a1 == v5 + 10 && 0x8000000000B48770 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v14 = [*(v3 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_notificationSettingsManager) cachedAccountNotificationsShowInLibrarySwitch];
        v15 = [v14 hasBeenPreviouslyToggled];
        goto LABEL_9;
      }

      if (a1 == v5 && 0x8000000000B487A0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        static ApplicationCapabilities.shared.getter(v40);
        sub_70C54(v40);
        LOBYTE(v29) = v40[1];
        goto LABEL_50;
      }

      v6 = v5 + 9;
      if (a1 == v5 + 9 && 0x8000000000B487C0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v33 = JSBridge.shared.unsafeMutableAddressor();
        v34 = *&stru_108.sectname[swift_isaMask & **v33];
        v35 = *v33;
        v32 = v34();
        *(a3 + 24) = &type metadata for Bool;

        goto LABEL_57;
      }

      goto LABEL_94;
    }

    v14 = v21;
    v15 = [v21 hasUserPlaylistsContainingAppleMusicContent];
LABEL_9:
    v16 = v15;
    *(a3 + 24) = &type metadata for Bool;

LABEL_10:
    *a3 = v16;
    return;
  }

  if (a1 == 0xD000000000000016 && 0x8000000000B55410 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    v14 = [objc_opt_self() sharedController];
    v15 = [v14 isCloudLibraryEnabled];
    goto LABEL_9;
  }

  if (a1 == 0xD000000000000016 && 0x8000000000B55430 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    v22 = [objc_opt_self() sharedPrivacyInfo];
    v23 = [v22 privacyAcknowledgementRequiredForMusic];

    v20 = v23 ^ 1;
    goto LABEL_16;
  }

  if (a1 == 0x6961746552736168 && a2 == 0xEE00726566664F6CLL || (sub_ABB3C0() & 1) != 0)
  {
    v24 = [objc_opt_self() deviceOffersContainType:1];
LABEL_34:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v24;
    return;
  }

  if ((a1 != 0xD00000000000001CLL || 0x8000000000B55450 != a2) && (sub_ABB3C0() & 1) == 0)
  {
    v5 = 0xD000000000000016;
    if ((a1 != 0xD000000000000025 || 0x8000000000B55470 != a2) && (sub_ABB3C0() & 1) == 0)
    {
      if (a1 == 0xD000000000000026 && 0x8000000000B554A0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        LOBYTE(v29) = *(v3 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingItemHasTimeSyncedLyrics);
LABEL_50:
        *(a3 + 24) = &type metadata for Bool;
        *a3 = v29;
        return;
      }

      if (a1 == 0xD000000000000019 && 0x8000000000B554D0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        static ApplicationCapabilities.shared.getter(v40);
        v30 = v42;

        sub_70C54(v40);
        v31 = sub_472A84(2, v30);
LABEL_55:
        v32 = v31;
LABEL_56:

        *(a3 + 24) = &type metadata for Bool;
LABEL_57:
        *a3 = v32 & 1;
        return;
      }

      if (a1 == 0xD000000000000016 && 0x8000000000B554F0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        static ApplicationCapabilities.shared.getter(v40);
        sub_70C54(v40);
        v13 = v43;
        if (v43 <= 1u)
        {
LABEL_70:
          v31 = sub_ABB3C0();
          goto LABEL_55;
        }

LABEL_64:
        if (v13 == 2)
        {
          v32 = 1;
          goto LABEL_56;
        }

        goto LABEL_70;
      }

      v10 = 0xD000000000000011;
      if (a1 == 0xD000000000000011 && 0x8000000000B55510 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        ExplicitRestrictionsController.shared.unsafeMutableAddressor();

        v32 = ExplicitRestrictionsController.explicitContentIsAllowed.getter();
        *(a3 + 24) = &type metadata for Bool;

        goto LABEL_57;
      }

      goto LABEL_72;
    }

    v28 = [objc_opt_self() sharedCloudController];
    if (!v28)
    {
      __break(1u);
      goto LABEL_99;
    }

    v26 = v28;
    v27 = [v28 hasSetPreferenceForAutomaticDownloads];
LABEL_40:
    v16 = v27;

    *(a3 + 24) = &type metadata for Bool;
    goto LABEL_10;
  }

  v25 = [objc_opt_self() sharedCloudController];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 isAutomaticDownloadsEnabled];
    goto LABEL_40;
  }

  __break(1u);
LABEL_94:
  if (a1 == v4 && 0x8000000000B48860 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    sub_1918AC();
    v36 = MusicRecognitionModuleContextProvider.enabledState.getter();

    v20 = v36 == 2;
    goto LABEL_16;
  }

LABEL_99:
  if (a1 == v6 && 0x8000000000B55550 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    static ApplicationCapabilities.shared.getter(v40);
    sub_70C54(v40);
    v29 = (v41 >> 7) & 1;
    goto LABEL_50;
  }

  if (a1 == v4 && 0x8000000000B55570 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    static ApplicationCapabilities.shared.getter(v40);
    sub_70C54(v40);
    v37 = v41;
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v37 & 1;
  }

  else if (a1 == v5 + 13 && 0x8000000000B555A0 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    static ApplicationCapabilities.shared.getter(v40);
    sub_70C54(v40);
    v38 = v41;
    *(a3 + 24) = &type metadata for Bool;
    *a3 = (v38 & 2) != 0;
  }

  else if (a1 == v10 && 0x8000000000B555D0 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    static ApplicationCapabilities.shared.getter(v40);
    sub_70C54(v40);
    if (v43 > 2u)
    {
      v39 = 1;
    }

    else
    {
      v39 = sub_ABB3C0();
    }

    *(a3 + 24) = &type metadata for Bool;
    *a3 = v39 & 1;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

void sub_19358C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v5 = v16 - v4;
  if (*(a2 + 16))
  {
    v6 = sub_2EBF88(0x696669746E656469, 0xEA00000000007265);
    if (v7)
    {
      sub_808B0(*(a2 + 56) + 32 * v6, v17);
      if (swift_dynamicCast())
      {
        v8 = sub_19442C(v16[0], v16[1]);
        if (v8 > 1)
        {
          if (v8 != 2)
          {
            if (v8 == 3)
            {
              sub_1918AC();
              sub_3120E4();
            }

            return;
          }

          v11 = 0;
LABEL_14:
          sub_191970(v11, a1);
          return;
        }

        if (v8)
        {
          v12 = [objc_opt_self() currentNotificationCenter];
          v13 = sub_AB9990();
          (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
          v14 = swift_allocObject();
          v14[2] = 0;
          v14[3] = 0;
          v14[4] = v12;
          sub_DBDC8(0, 0, v5, &unk_B01C90, v14);

          sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
          v15 = static ICUserIdentityStore.activeAccountDSID.getter();
          if (!v15)
          {
            return;
          }

          v11 = 1;
          goto LABEL_14;
        }

        v9 = [objc_opt_self() sharedCloudController];
        if (v9)
        {
          v10 = v9;
          [v9 enableAutomaticDownloadsWithCompletionHandler:0];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_193888(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v28) = 4;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v29);
  if (*(&v30 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_12E1C(&v29, &unk_DE8E40, &unk_AF8050);
  }

  if (a1 == 1)
  {
    v5 = &OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted;
  }

  else
  {
    v5 = &OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal;
  }

  v6 = *(v2 + *v5);
  if (v6)
  {

    return v6;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v8 = BagProvider.bag.getter();

  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = [v8 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (v9)
  {
    v10 = v9;
    v11 = sub_AB8FF0();

    sub_16A5E8(v11);
    v13 = v12;

    if (v13)
    {
      if (!*(v13 + 16) || (v14 = sub_2EBF88(0xD00000000000001FLL, 0x8000000000B551F0), (v15 & 1) == 0) || (sub_808B0(*(v13 + 56) + 32 * v14, &v29), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70), (swift_dynamicCast() & 1) == 0))
      {

LABEL_23:

        goto LABEL_24;
      }

      v16 = sub_193EB8(a1);
      if (v17)
      {
        if (*(*&v28 + 16) && (v18 = sub_2EBF88(v16, v17), (v19 & 1) != 0))
        {
          sub_808B0(*(*&v28 + 56) + 32 * v18, &v29);
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
        }

        if (*(&v30 + 1))
        {
          if (swift_dynamicCast())
          {
            if (*(*&v28 + 16))
            {
              v21 = sub_2EBF88(0xD00000000000001ALL, 0x8000000000B55210);
              if (v22)
              {
                sub_808B0(*(*&v28 + 56) + 32 * v21, &v29);
                if (swift_dynamicCast())
                {
                  v23 = [objc_allocWithZone(IAMPresentationPolicy) initWithMinimumIntervalBetweenPresentations:a1 forPresentationPolicyGroup:v28];
                  if (a1 == 1)
                  {
                    v24 = &OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted;
                  }

                  else
                  {
                    v24 = &OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal;
                  }

                  v25 = *v24;
                  v26 = *(v2 + v25);
                  *(v2 + v25) = v23;
                  v27 = v23;

                  return v27;
                }
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          sub_12E1C(&v29, &unk_DE8E40, &unk_AF8050);
        }
      }

LABEL_40:

      goto LABEL_23;
    }
  }

LABEL_24:
  if (a1 == 1)
  {
    v20 = 8600.0;
  }

  else
  {
    v20 = -1.0;
  }

  return [objc_allocWithZone(IAMPresentationPolicy) initWithMinimumIntervalBetweenPresentations:a1 forPresentationPolicyGroup:v20];
}

double sub_193E0C()
{
  sub_36A48();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return -2.31584178e77;
    }
  }

  else
  {
    sub_12E1C(&v1, &unk_DE8E40, &unk_AF8050);
  }

  return 0.0;
}

uint64_t sub_193EB8(uint64_t a1)
{
  if (!a1)
  {
    return 0x6C616D726F6ELL;
  }

  if (a1 == 1)
  {
    return 0x7463697274736572;
  }

  sub_ABAD90(24);
  v2._object = 0x8000000000B4AB80;
  v2._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v2);
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000000B55270;
  sub_AB94A0(v3);
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_AB94A0(v4);
  type metadata accessor for IAMPresentationPolicyGroup(0);
  sub_ABAF70();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void sub_193FE4()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v0 = sub_AB9260();

  v1 = sub_AB9260();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v3 = sub_AB9260();

  aBlock[4] = sub_191DE0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_8_0;
  v4 = _Block_copy(aBlock);

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v3 style:0 handler:v4];
  _Block_release(v4);

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v7 = sub_AB9260();

  v8 = [v5 actionWithTitle:v7 style:1 handler:0];

  [v2 addAction:v6];
  [v2 addAction:v8];
  [v2 setPreferredAction:v6];
  sub_D5B6C();
  if (!v9)
  {
    memset(v11, 0, sizeof(v11));
    v12 = 1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_5;
  }

  v10 = v9;
  static PresentationSource.topmost(in:)(v11);

  if (v12 == 1)
  {
LABEL_5:

    sub_12E1C(v11, &unk_DEA520, &unk_AFDBF0);
    goto LABEL_6;
  }

  sub_17704(v11, aBlock);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, 1, 1, 0, 0);

  sub_1611C(aBlock);
LABEL_6:
}

unint64_t sub_19442C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF04E0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_194478(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6900 != -1)
  {
    swift_once();
  }

  v6 = *(qword_E71090 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator);
  if (v6)
  {
    v7 = v6;
    sub_11BA4(&off_CF0560);
    sub_E17A4(&unk_CF0580);
    isa = sub_AB9B30().super.isa;

    [v7 reportApplicationContextPropertiesDidChange:isa];
  }

  v9 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_0, v10, v11, "Reporting context property did change for: canShowMusicRecognitionPromotion = %lu", v12, 0xCu);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_194680()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1946C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_191F60(a1, v4, v5, v6);
}

uint64_t sub_19478C()
{

  return swift_deallocObject();
}

double block_copy_helper_13_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1947EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1948C4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_DF4018);
  v4 = *(v2 + qword_DF4018);
  v5 = *(v2 + qword_DF4018 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_17654(v4, v5);
}

void sub_19490C(char a1, char a2)
{
  v3 = a1 & 1;
  if (v2[qword_DF4030] != (a1 & 1))
  {
    v2[qword_DF4030] = v3;
    if (a2)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;
      v11[4] = sub_1960A0;
      v11[5] = v5;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_1B5EB4;
      v11[3] = &block_descriptor_58;
      v6 = _Block_copy(v11);
      v7 = v2;

      [v4 animateWithDuration:v6 animations:0 completion:0.25];
      _Block_release(v6);
    }

    else
    {
      if (a1)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }

      if (a1)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      [*&v2[qword_DF4070] setAlpha:v8];
      [*&v2[qword_DF4068] setAlpha:v8];
      v10 = *&v2[qword_DF4078];

      [v10 setAlpha:v9];
    }
  }
}

void (*sub_194AC4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_194B28;
}

void sub_194B28(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_195434();
  }
}

double sub_194B5C(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + 80);
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return (*(v8 + 8))(a1, v7, v8, a2, a3);
  }

  (*(v3 + 352))(a1, a2, a3);
  return a2;
}

char *sub_194C1C(double a1, double a2, double a3, double a4)
{
  v9 = swift_isaMask & *v4;
  v10 = (v4 + qword_DF4018);
  *v10 = 0;
  v10[1] = 0;
  *(v4 + qword_DF4020) = 1;
  *(v4 + qword_DF4028) = 1;
  *(v4 + qword_DF4030) = 0;
  v11 = v4 + qword_DF4038;
  *v11 = 0;
  v11[8] = 1;
  *(v4 + qword_DF4040) = 0;
  v12 = qword_DF4048;
  *(v4 + v12) = [objc_opt_self() buttonWithType:0];
  *(v4 + qword_DF4050) = 0;
  *(v4 + qword_DF4058) = 0;
  *(v4 + qword_DF4060) = 0;
  v13 = qword_DF4068;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C70 != -1)
  {
    swift_once();
  }

  v15 = qword_E718B0;
  [v14 setBackgroundColor:qword_E718B0];
  [v14 setHidden:1];
  *(v4 + v13) = v14;
  v16 = qword_DF4070;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v17 setBackgroundColor:v15];
  [v17 setHidden:1];
  *(v4 + v16) = v17;
  v18 = qword_DF4078;
  v19 = [objc_allocWithZone(UIView) init];
  v20 = [objc_opt_self() tertiarySystemFillColor];
  [v19 setBackgroundColor:v20];

  [v19 setAlpha:0.0];
  *(v4 + v18) = v19;
  v21 = *(v9 + 80);
  *(v4 + qword_DF4010) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{a1, a2, a3, a4}];
  v41.receiver = v4;
  v41.super_class = type metadata accessor for SelectableReusableView(0, v21, v22, v23);
  v24 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  v25 = *&v24[qword_DF4078];
  v26 = v24;
  [v26 addSubview:v25];
  [v26 addSubview:*&v26[qword_DF4010]];
  [v26 addSubview:*&v26[qword_DF4070]];
  [v26 addSubview:*&v26[qword_DF4068]];
  v27 = qword_DF4048;
  [v26 addSubview:*&v26[qword_DF4048]];
  [*&v26[v27] setIsAccessibilityElement:0];
  v28 = *&v26[v27];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v21;
  *(v30 + 24) = v29;
  type metadata accessor for ControlEventHandler();
  swift_allocObject();
  v31 = sub_33094();
  v32 = v26;
  *&v32[qword_DF4050] = ControlEventHandler.init<A>(control:events:handler:)(v28, 17, sub_195FE8, v30, v31);

  v33 = *&v26[v27];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v21;
  *(v35 + 24) = v34;
  swift_allocObject();
  *&v32[qword_DF4058] = ControlEventHandler.init<A>(control:events:handler:)(v33, 480, sub_196040, v35, v31);

  v36 = *&v26[v27];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v36;

  v39 = swift_allocObject();
  *(v39 + 16) = v21;
  *(v39 + 24) = v37;
  swift_allocObject();
  *&v32[qword_DF4060] = ControlEventHandler.init<A>(control:events:handler:)(v38, 64, sub_196060, v39, v31);

  return v32;
}

void sub_195198(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_19490C(a4 & 1, 1);
  }
}

void sub_1951F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_DF4018);
    if (v4)
    {
      v5 = *(Strong + qword_DF4018 + 8);
      sub_307CC(*(Strong + qword_DF4018), v5);
      v4(v3);
      sub_17654(v4, v5);
    }
  }
}

id sub_1952D8(uint64_t a1, char a2)
{
  v3 = *(a1 + qword_DF4070);
  if (a2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (a2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [v3 setAlpha:v4];
  [*(a1 + qword_DF4068) setAlpha:v4];
  v6 = *(a1 + qword_DF4078);

  return [v6 setAlpha:v5];
}

void sub_19536C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SelectableReusableView(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v9.receiver = v4;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v6 = (v4 + qword_DF4018);
  v7 = *(v4 + qword_DF4018);
  v8 = *(v4 + qword_DF4018 + 8);
  *v6 = 0;
  v6[1] = 0;
  sub_17654(v7, v8);
  sub_19490C(0, 0);
}

void sub_1953EC(void *a1)
{
  v4 = a1;
  sub_19536C(v4, v1, v2, v3);
}

void sub_195434()
{
  v1 = *(v0 + qword_DF4010);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    v6 = qword_DF4040;
    swift_beginAccess();
    v7 = *(v0 + v6);
    v8 = *(v4 + 16);

    v9 = v1;
    v8(v7, ObjectType, v4);
  }
}

double sub_195508(double a1, double a2)
{
  swift_getObjectType();
  v5 = [v2 traitCollection];
  v6 = sub_194B5C(v5, a1, a2);

  return v6;
}

double sub_195588(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_195508(a2, a3);

  return v6;
}

id sub_1955DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SelectableReusableView(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v36.receiver = v4;
  v36.super_class = v5;
  objc_msgSendSuper2(&v36, "layoutSubviews");
  v6 = [v4 traitCollection];
  [v6 displayScale];
  v8 = v7;

  [v4 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v4 music_inheritedLayoutInsets];
  v34 = v18;
  v35 = v17;
  [v4 effectiveUserInterfaceLayoutDirection];
  [*(v4 + qword_DF4010) setFrame:{v10, v12, v14, v16}];
  [*(v4 + qword_DF4078) setFrame:{v10, v12, v14, v16}];
  [*(v4 + qword_DF4048) setFrame:{v10, v12, v14, v16}];
  v37.origin.x = v10;
  v37.origin.y = v12;
  v37.size.width = v14;
  v37.size.height = v16;
  Width = CGRectGetWidth(v37);
  v20 = 1.0 / v8;
  v21 = UIEdgeInsetsInsetRect(0.0, 0.0, Width, v20, v35, v34);
  v32 = v22;
  v33 = v21;
  v24 = v23;
  v31 = v25;
  v38.origin.x = v10;
  v38.origin.y = v12;
  v38.size.width = v14;
  v38.size.height = v16;
  Height = CGRectGetHeight(v38);
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = Width;
  v39.size.height = v20;
  v27 = Height - CGRectGetHeight(v39);
  v40.origin.x = v33;
  v40.origin.y = v24;
  v40.size.width = v32;
  v40.size.height = v31;
  CGRectOffset(v40, 0.0, v27);
  v28 = *(v4 + qword_DF4070);
  sub_ABA490();
  [v28 setFrame:?];

  v29 = *(v4 + qword_DF4068);
  sub_ABA490();
  [v29 setFrame:?];

  [v4 bringSubviewToFront:*(v4 + qword_DF4070)];
  [v4 bringSubviewToFront:*(v4 + qword_DF4068)];
  [v4 bringSubviewToFront:*(v4 + qword_DF4048)];
  return [v4 sendSubviewToBack:*(v4 + qword_DF4078)];
}

void sub_195918(void *a1)
{
  v4 = a1;
  sub_1955DC(v4, v1, v2, v3);
}

id sub_195960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SelectableReusableView(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1959BC(uint64_t a1)
{
  sub_17654(*(a1 + qword_DF4018), *(a1 + qword_DF4018 + 8));

  v2 = *(a1 + qword_DF4078);
}

uint64_t getEnumTagSinglePayload for PromotionalParallaxPreferredHeightStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PromotionalParallaxPreferredHeightStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_195AF4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195B10(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

double sub_195B40()
{
  sub_195D04();

  return result;
}

double sub_195B68(uint64_t a1)
{
  sub_195C9C(a1);

  return result;
}

void (*sub_195BA0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_194AC4(v2);
  return sub_A8F90;
}

BOOL sub_195C14(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    return (a2[1] & 1) != 0;
  }

  if (a2[1])
  {
    return 0;
  }

  sub_7FD28();
  return sub_AB38E0() & 1;
}

void sub_195C9C(uint64_t a1)
{
  v3 = qword_DF4040;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_195434();
}

uint64_t sub_195D04()
{
  v1 = qword_DF4040;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_195D48()
{
  v1 = (v0 + qword_DF4018);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_DF4020) = 1;
  *(v0 + qword_DF4028) = 1;
  *(v0 + qword_DF4030) = 0;
  v2 = v0 + qword_DF4038;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + qword_DF4040) = 0;
  v3 = qword_DF4048;
  *(v0 + v3) = [objc_opt_self() buttonWithType:0];
  *(v0 + qword_DF4050) = 0;
  *(v0 + qword_DF4058) = 0;
  *(v0 + qword_DF4060) = 0;
  v4 = qword_DF4068;
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C70 != -1)
  {
    swift_once();
  }

  v6 = qword_E718B0;
  [v5 setBackgroundColor:qword_E718B0];
  [v5 setHidden:1];
  *(v0 + v4) = v5;
  v7 = qword_DF4070;
  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setBackgroundColor:v6];
  [v8 setHidden:1];
  *(v0 + v7) = v8;
  v9 = qword_DF4078;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = [objc_opt_self() tertiarySystemFillColor];
  [v10 setBackgroundColor:v11];

  [v10 setAlpha:0.0];
  *(v0 + v9) = v10;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_195FB0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_196008()
{

  return swift_deallocObject();
}

uint64_t sub_196068()
{

  return swift_deallocObject();
}

double block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1960D0(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponseInvalidationObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileDidUpdateObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_userSocialProfileDidChangeObserver) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *(v1 + v3) = sub_49F63C(0, 0, 0);
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_pendingFollowRequestsControlEventHandler) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_artistPageControlEventHandler) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_lastSeenScrollableHeight) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack) = a1;
  v4 = a1;
  v5 = JSVerticalStack.childViewModelKinds.getter();
  v6 = sub_9F704(v5);
  v7 = &v4[OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack_delegate];
  swift_beginAccess();
  *(v7 + 1) = &off_D0CED8;
  swift_unknownObjectWeakAssign();
  v8 = v6;
  v9 = [v8 navigationItem];
  v10 = [v8 parentViewController];
  if (v10)
  {
    v11 = v10;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v12 = v11;
      v13 = [v12 navigationItem];

      v11 = [v12 parentViewController];
      v9 = v13;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = v9;
LABEL_8:
  v14 = sub_387998();
  if (v14 <= 1)
  {
    if (v14)
    {

      goto LABEL_18;
    }
  }

  else if (v14 != 2 && v14 != 3)
  {
    goto LABEL_14;
  }

  v15 = sub_ABB3C0();

  if ((v15 & 1) == 0)
  {
LABEL_14:
    if (qword_DE6B20 != -1)
    {
      swift_once();
    }

    v16 = qword_E01290;
    v17 = sub_AB9260();
    objc_setAssociatedObject(v13, v16, v17, &dword_0 + 1);

    [v13 _setManualScrollEdgeAppearanceEnabled:0];
    [v13 _setAutoScrollEdgeTransitionDistance:0.0];
    [v13 _setManualScrollEdgeAppearanceEnabled:1];
    [v13 _setManualScrollEdgeAppearanceProgress:0.0];
  }

LABEL_18:
  return v8;
}

void sub_196458()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_relationshipButtonController];
  v2[6] = &off_CFEA78;
  swift_unknownObjectWeakAssign();
  sub_49D8B4(1);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v2[7];
  v5 = v2[8];
  v2[7] = sub_199990;
  v2[8] = v3;

  sub_17654(v4, v5);

  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  v6 = qword_E70D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8, qword_B0F8E0);
  UnfairLock.locked<A>(_:)(sub_199998);
  if (v26)
  {
    v8 = *JSSocialProfile.NotificationNames.didUpdate.unsafeMutableAddressor();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v10 = v8;
    v11 = v26;
    *&v1[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileDidUpdateObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v26, 1, 1, sub_1999B4, v9);

    type metadata accessor for JSSocialProfileVerticalStack(0);
    v12 = swift_dynamicCastClassUnconditional();
    v13 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_profile;
    swift_beginAccess();
    v14 = *(v12 + v13);
    if (!v14)
    {
LABEL_11:

      goto LABEL_16;
    }

    v15 = v14;
    v16 = JSSocialProfile.profileID.getter();
    v18 = v17;
    if (v16 == JSSocialProfile.profileID.getter() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_ABB3C0();

      if ((v21 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    if (qword_DE67B0 != -1)
    {
      swift_once();
    }

    v22 = qword_E70D40;
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    v24 = v22;

    v25 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v24, v6, 1, 1, sub_1999D0, v23);

    *&v1[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_userSocialProfileDidChangeObserver] = v25;
  }

LABEL_16:
  sub_196950(v7);
}

void sub_196818(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];

    if (v4)
    {
      v5 = [v4 window];

      if (v5)
      {
        v6 = [v5 windowScene];

        if (v6)
        {
          swift_beginAccess();
          v7 = swift_unknownObjectWeakLoadStrong();
          if (v7)
          {
            v8 = *(v7 + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack);
            v9 = v7;
            type metadata accessor for JSSocialProfileVerticalStack(0);
            swift_dynamicCastClassUnconditional();
            v10 = v8;

            sub_414CF0(v6);
            v6 = v10;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_196950(__n128 a1)
{
  type metadata accessor for JSSocialProfileVerticalStack(0);
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_profile;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = type metadata accessor for JSSocialProfileModelRequest();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile;
    *&v6[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile] = 0;
    *&v6[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse] = 0;
    *&v6[v7] = v4;
    v20.receiver = v6;
    v20.super_class = v5;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v20, "init");
    sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = v9;
    v13 = [v11 kindWithModelClass:ObjCClassFromMetadata];
    [v12 setItemKind:v13];

    if (qword_DE6928 != -1)
    {
      swift_once();
    }

    [v12 setItemProperties:qword_DF4100];

    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v8;
    aBlock[4] = sub_19992C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_140_0;
    v15 = _Block_copy(aBlock);
    v16 = v8;
    v17 = v1;

    [v12 performWithResponseHandler:v15];
    _Block_release(v15);
  }

  else
  {
    v18 = *&v1[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse];
    *&v1[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse] = 0;

    sub_198000();
  }
}

void sub_196BC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack);
    v4 = Strong;
    type metadata accessor for JSSocialProfileVerticalStack(0);
    swift_dynamicCastClassUnconditional();
    v5 = v3;

    JSSocialProfileVerticalStack.didUpdateProfile()();
  }
}

double sub_196CAC(void *a1)
{
  v2 = v1;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  *&result = __chkstk_darwin().n128_u64[0];
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  if (!v5)
  {
    return result;
  }

  v6 = *(v5 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView);
  if (!v6)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_pendingFollowRequestsControlEventHandler;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_pendingFollowRequestsControlEventHandler) = 0;
  v8 = v6;

  v111 = v8;
  if (a1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_relationshipButtonController);
    v10 = a1;
    v109 = a1;
    sub_49D948(a1);
    v11 = *(v9 + 160);
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v110 = v10;
    if ([v10 pendingRequestsCount] >= 1 && (type metadata accessor for JSSocialProfileVerticalStack(0), v12 = swift_dynamicCastClassUnconditional(), v13 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_followRequestsLink, swift_beginAccess(), (v14 = *(v12 + v13)) != 0))
    {
      v15 = type metadata accessor for SocialProfileHeaderRow();
      v16 = objc_allocWithZone(v15);
      v108 = v14;
      v17 = [v16 init];
      sub_AB91E0();
      sub_AB3550();
      v18 = sub_AB9320();
      v19 = &v17[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
      v20 = *&v17[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
      v21 = *&v17[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title + 8];
      *v19 = v18;
      v19[1] = v22;
      sub_459108(v20, v21);

      v23 = [v10 pendingRequestsCount];
      v24 = *&v17[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue];
      *&v17[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue] = v23;
      if (v23 != v24)
      {
        sub_30D14(v23);
        [v17 setNeedsLayout];
      }

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = v108;
      v26[4] = v10;
      type metadata accessor for ControlEventHandler();
      swift_allocObject();
      v27 = v10;
      v28 = v108;
      v29 = v17;
      *(v2 + v7) = ControlEventHandler.init<A>(control:events:handler:)(v29, 64, sub_1999F0, v26, v15);

      v30 = v29;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v10 = v110;
    }

    else
    {
      *(v2 + v7) = 0;
    }

    if (qword_DE6BE8 != -1)
    {
      swift_once();
    }

    if ((sub_43D968(v10) & 1) == 0)
    {
      goto LABEL_25;
    }

    v31 = [objc_allocWithZone(type metadata accessor for SocialProfileFollowRequestConfirmationView()) init];
    v32 = v10;
    v33 = [v32 name];
    if (v33)
    {
      v34 = v33;
      v35 = sub_AB92A0();
      v37 = v36;
    }

    else
    {

      v38 = [v32 handle];
      if (!v38)
      {
        v35 = 0;
        v37 = 0xE000000000000000;
        goto LABEL_22;
      }

      v34 = v38;
      v35 = sub_AB92A0();
      v37 = v39;
    }

LABEL_22:
    v40 = &v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName];
    v41 = *&v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName];
    v42 = *&v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName + 8];
    *v40 = v35;
    v40[1] = v37;
    sub_31E48(v41, v42);

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v32;
    v45 = &v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler];
    v47 = *&v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler];
    v46 = *&v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler + 8];
    *v45 = sub_1997DC;
    v45[1] = v44;
    v48 = v32;

    sub_17654(v47, v46);

    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v48;
    v51 = &v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler];
    v52 = *&v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler];
    v53 = *&v31[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler + 8];
    *v51 = sub_1997E4;
    v51[1] = v50;
    v54 = v48;

    sub_17654(v52, v53);

    v55 = v31;
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();

    v10 = v110;
LABEL_25:
    type metadata accessor for JSSocialProfileVerticalStack(0);
    v56 = swift_dynamicCastClassUnconditional();
    v57 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_artistPageLink;
    swift_beginAccess();
    v58 = *(v56 + v57);
    if (v58)
    {
      v59 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_artistPageLinkTitle);
      swift_beginAccess();
      v60 = *v59;
      v61 = v59[1];
      v62 = type metadata accessor for SocialProfileHeaderRow();
      v63 = objc_allocWithZone(v62);
      v64 = v58;

      v65 = [v63 init];
      v66 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v66 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (!v66)
      {

        sub_AB91E0();
        sub_AB3550();
        v60 = sub_AB9320();
        v61 = v67;
      }

      a1 = v109;
      v68 = &v65[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
      v69 = *&v65[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
      v70 = *&v65[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title + 8];
      *v68 = v60;
      v68[1] = v61;
      sub_459108(v69, v70);

      v71 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = swift_allocObject();
      v72[2] = v71;
      v72[3] = v64;
      v72[4] = v110;
      type metadata accessor for ControlEventHandler();
      swift_allocObject();
      v73 = v110;
      v74 = v64;
      v75 = v65;
      *(v2 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_artistPageControlEventHandler) = ControlEventHandler.init<A>(control:events:handler:)(v75, 64, sub_1997B8, v72, v62);

      v76 = v75;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v8 = v111;
    }

    else
    {

      *(v2 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_artistPageControlEventHandler) = 0;

      v8 = v111;
      a1 = v109;
    }
  }

  v77 = *&v8[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent];

  v78 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v79 = *v78;
  v80 = v78[1];
  v81 = v78[2];
  v82 = v78[3];
  v83 = *(v78 + 2);
  v84 = *(v77 + 184);
  v85 = *(v77 + 152);
  v112[1] = *(v77 + 168);
  v112[2] = v84;
  v112[0] = v85;
  *(v77 + 152) = v79;
  *(v77 + 160) = v80;
  *(v77 + 168) = v81;
  *(v77 + 176) = v82;
  *(v77 + 184) = v83;
  v86 = v81;
  v87 = v82;
  v88 = v79;
  v89 = v80;
  v90 = v86;
  v91 = v87;
  v92 = v88;
  v93 = v89;
  sub_75948(v112);
  sub_12E1C(v112, &unk_DF8690, &unk_AF9900);

  if (a1)
  {
    a1 = sub_272C0C();
    v95 = v94;
    v97 = v96;
    v99 = v98;
  }

  else
  {
    v95 = 0;
    v97 = 0;
    v99 = 0;
  }

  type metadata accessor for ArtworkComponentImageView();
  v100 = swift_dynamicCastClass();
  if (v100)
  {
    v101 = v100 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
    v102 = *(v100 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
    v103 = *(v100 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
    v104 = *(v100 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
    *v101 = a1;
    *(v101 + 8) = v95;
    *(v101 + 16) = v97;
    v105 = *(v101 + 24);
    *(v101 + 24) = v99;
    sub_7FCB4(a1);
    sub_7D6F4(v102, v103, v104, v105);
    v8 = v111;
    sub_7FCC4(v102);
  }

  sub_7FCC4(a1);

  v106 = *&v8[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView];
  v107 = *(v106 + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews);
  *(v106 + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews) = _swiftEmptyArrayStorage;
  sub_34AB20(v107);

  return result;
}

double sub_197800()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler + 8];
    *v3 = sub_1999FC;
    v3[1] = v2;
    v6 = v1;

    sub_17654(v4, v5);
  }

  return result;
}

void *sub_1978C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  v2 = v1;
  return v1;
}

void sub_1978FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse);
      if (v6)
      {
        v7 = [v6 results];
        if (!v7)
        {
          __break(1u);
          return;
        }

        v8 = v7;
        v9 = [v7 firstItem];

        if (v9)
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();

          if (!v10)
          {
            swift_unknownObjectRelease();
          }

          goto LABEL_10;
        }
      }
    }

    v10 = 0;
LABEL_10:
    sub_196CAC(v10);
  }
}

void sub_197A0C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController) = a1;
  v3 = a1;
  sub_A1C18(v2);

  sub_197800();
}

uint64_t (*sub_197A7C(void *a1))()
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
  v3[5] = sub_A2354(v3);
  return sub_197AF0;
}

void sub_197AF0(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
      v7 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
      v8 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler + 8];
      *v6 = sub_199988;
      v6[1] = v5;
      v9 = v4;

      sub_17654(v7, v8);
    }
  }

  free(v3);
}

void sub_197BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = objc_opt_self();
  v7 = [v6 propertySetWithProperties:isa];

  if (qword_DE6D58 != -1)
  {
    swift_once();
  }

  v8 = qword_E71A80;
  v9 = [v7 propertySetByCombiningWithPropertySet:v8];

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF85F0;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_AB92A0();
  *(v10 + 56) = v12;
  v13 = sub_AB9740().super.isa;
  v14 = [v6 propertySetWithProperties:v13];

  v15 = [v9 propertySetByCombiningWithPropertySet:v14];
  qword_DF4100 = v15;
}

double sub_197DFC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a4;
  v7[4] = a1;
  v8 = a1;

  v9 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_19997C, v7);

  return result;
}

void sub_197EE0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    type metadata accessor for JSSocialProfileVerticalStack(0);
    v7 = swift_dynamicCastClassUnconditional();
    v8 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_profile;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (v9)
    {
      v10 = v9 == a2;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if (a3)
      {
        type metadata accessor for JSSocialProfileModelResponse();
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v12 = a3;
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = *&v6[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse];
      *&v6[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse] = v11;
      v14 = v11;

      sub_198000();
      v6 = v14;
    }
  }
}

void sub_198000()
{
  v1 = OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse);
  if (v2)
  {
    v3 = v2;
    if ([v3 isValid])
    {
      v5 = MPModelResponseDidInvalidateNotification;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v2, 1, 1, sub_199A00, v6);
    }

    else
    {
      sub_196950(v4);

      v2 = 0;
    }
  }

  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponseInvalidationObserver) = v2;

  v7 = *(v0 + v1);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v7 results];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 firstItem];

  if (!v10)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v7 = 0;
  }

LABEL_11:
  v11 = v7;
  sub_196CAC(v7);
}

void sub_1981A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_196950(v3);
  }
}

void sub_1981F8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_DE6BE8 != -1)
    {
      v25 = Strong;
      swift_once();
      Strong = v25;
    }

    v10 = qword_E71820;
    v11 = Strong;
    [a1 bounds];
    v37[0] = a1;
    v37[1] = v12;
    v37[2] = v13;
    v37[3] = v14;
    v37[4] = v15;
    v38 = 0;
    PresentationSource.Position.init(source:permittedArrowDirections:)(v37, 15, v29);
    v33[0] = v29[0];
    v33[1] = v29[1];
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v16 = a1;
    PresentationSource.init(viewController:position:)(v11, v33, v28);
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    *v8 = sub_ABA150();
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v17 = sub_AB7CF0();
    (*(v6 + 8))(v8, v5);
    if (v17)
    {
      v18 = *(v10 + 16);
      sub_15F84(v28, v27, &unk_DEA520, &unk_AFDBF0);
      v19 = swift_allocObject();
      *(v19 + 16) = v10;
      *(v19 + 24) = a3;
      sub_111814(v27, v19 + 32);
      *(v19 + 128) = v18;
      *(v19 + 136) = 0;
      *(v19 + 144) = 0;
      *(v19 + 152) = 0;
      v8 = v18;

      v20 = a3;
      v21 = sub_43D968(v20);
      v27[4] = sub_199A04;
      v27[5] = v19;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      v27[2] = sub_199560;
      v27[3] = &block_descriptor_134;
      v22 = _Block_copy(v27);

      [v8 acceptFollowRequestFromPerson:v20 completion:v22];
      _Block_release(v22);
      if (((v21 ^ sub_43D968(v20)) & 1) == 0)
      {

        sub_12E1C(v28, &unk_DEA520, &unk_AFDBF0);
        goto LABEL_9;
      }

      v17 = [objc_opt_self() defaultCenter];
      if (qword_DE6BF8 == -1)
      {
LABEL_7:
        [v17 postNotificationName:qword_E71830 object:v10];

        sub_12E1C(v28, &unk_DEA520, &unk_AFDBF0);

LABEL_9:
        v23 = *&v11[OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack];
        type metadata accessor for JSSocialProfileVerticalStack(0);
        swift_dynamicCastClassUnconditional();
        v24 = v23;
        JSSocialProfileVerticalStack.didSelectApproveButton()();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }
}

void sub_198640(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_DE6BE8 != -1)
    {
      v25 = Strong;
      swift_once();
      Strong = v25;
    }

    v10 = qword_E71820;
    v11 = Strong;
    [a1 bounds];
    v37[0] = a1;
    v37[1] = v12;
    v37[2] = v13;
    v37[3] = v14;
    v37[4] = v15;
    v38 = 0;
    PresentationSource.Position.init(source:permittedArrowDirections:)(v37, 15, v29);
    v33[0] = v29[0];
    v33[1] = v29[1];
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v16 = a1;
    PresentationSource.init(viewController:position:)(v11, v33, v28);
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    *v8 = sub_ABA150();
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v17 = sub_AB7CF0();
    (*(v6 + 8))(v8, v5);
    if (v17)
    {
      v18 = *(v10 + 16);
      sub_15F84(v28, v27, &unk_DEA520, &unk_AFDBF0);
      v19 = swift_allocObject();
      *(v19 + 16) = v10;
      *(v19 + 24) = a3;
      sub_111814(v27, v19 + 32);
      *(v19 + 128) = v18;
      *(v19 + 136) = 1;
      *(v19 + 144) = 0;
      *(v19 + 152) = 0;
      v8 = v18;

      v20 = a3;
      v21 = sub_43D968(v20);
      v27[4] = sub_1997F0;
      v27[5] = v19;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      v27[2] = sub_199560;
      v27[3] = &block_descriptor_59;
      v22 = _Block_copy(v27);

      [v8 declineFollowRequestFromPerson:v20 completion:v22];
      _Block_release(v22);
      if (((v21 ^ sub_43D968(v20)) & 1) == 0)
      {

        sub_12E1C(v28, &unk_DEA520, &unk_AFDBF0);
        goto LABEL_9;
      }

      v17 = [objc_opt_self() defaultCenter];
      if (qword_DE6BF8 == -1)
      {
LABEL_7:
        [v17 postNotificationName:qword_E71830 object:v10];

        sub_12E1C(v28, &unk_DEA520, &unk_AFDBF0);

LABEL_9:
        v23 = *&v11[OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack];
        type metadata accessor for JSSocialProfileVerticalStack(0);
        swift_dynamicCastClassUnconditional();
        v24 = v23;
        JSSocialProfileVerticalStack.didSelectDeclineButton()();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }
}

void sub_198A8C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v67 = a4;
  v68 = a3;
  v5 = sub_AB3430();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin();
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v65 = *(v7 - 8);
  __chkstk_darwin();
  v59 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v12 = &v59 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v59 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v18 = &v59 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  v63 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v21 = v20;
  [a1 bounds];
  v83[0] = a1;
  v83[1] = v22;
  v83[2] = v23;
  v83[3] = v24;
  v83[4] = v25;
  v84 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v83, 15, v75);
  v79[0] = v75[0];
  v79[1] = v75[1];
  v80 = v76;
  v81 = v77;
  v82 = v78;
  v26 = a1;
  v64 = v21;
  PresentationSource.init(viewController:position:)(v21, v79, v74);
  v27 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v72, 0, sizeof(v72));
  v73 = 0;
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  sub_15F84(v72, &v69, &unk_DE8E30, "\b]\r");
  if (*(&v70 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v28 = _s30CollectionViewSelectionHandlerVMa(0);
    v29 = swift_dynamicCast();
    v30 = *(v28 - 8);
    (*(v30 + 56))(v12, v29 ^ 1u, 1, v28);
    v31 = (*(v30 + 48))(v12, 1, v28);
    v32 = v65;
    if (v31 != 1)
    {
      (*(v65 + 16))(v16, &v12[*(v28 + 20)], v7);
      sub_2D6C0(v12, _s30CollectionViewSelectionHandlerVMa);
      v33 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v69, &unk_DE8E30, "\b]\r");
    v34 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
    v32 = v65;
  }

  sub_12E1C(v12, &qword_E037A0, &unk_AF8B30);
  v33 = 1;
LABEL_7:
  (*(v32 + 56))(v16, v33, 1, v7);
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35 && (v36 = v35, sub_12B2FC(), v38 = v37, v40 = v39, v36, v38))
  {
    ObjectType = swift_getObjectType();
    (*(v40 + 8))(ObjectType, v40);
    v43 = v42;
    swift_unknownObjectRelease();
    sub_15F84(v16, v14, &unk_DE8E20, &qword_AF7990);
    if ((*(v32 + 48))(v14, 1, v7) == 1)
    {
      sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
      v69 = 0u;
      v70 = 0u;
      v71 = 0;
    }

    else
    {
      (*(v32 + 32))(v59, v14, v7);
      sub_2D668();
      sub_ABAD10();
    }

    v45 = swift_getObjectType();
    v46 = v60;
    sub_3B8F68(v45);
    v44 = sub_21CCAC(1, v46, &v69, v45, v43);
    (*(v61 + 8))(v46, v62);
    sub_12E1C(&v69, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    v44 = 0;
  }

  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = v47;
    v49 = v18;
    sub_12AFE8();
    v51 = v50;
  }

  else
  {
    v49 = v18;
    v51 = 0;
  }

  sub_15F28(v74, &v69);
  sub_15F84(v72, (v10 + 104), &unk_DE8E30, "\b]\r");
  v52 = v66;
  sub_15F84(v49, &v10[*(v66 + 28)], &unk_DEA510, "\b]\r");
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 1;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0;
  *(v10 + 11) = 0;
  sub_2D594(&v69, v10);
  v53 = v52;
  v54 = v67;
  *(v10 + 12) = v67;
  v55 = *v63;
  *(&v70 + 1) = v53;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
  sub_2D604(v10, boxed_opaque_existential_0);
  v57 = v54;
  v58 = v55;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v68, 0, v44, v51, &v69);

  sub_12E1C(v49, &unk_DEA510, "\b]\r");
  sub_12E1C(v72, &unk_DE8E30, "\b]\r");
  sub_1611C(v74);
  sub_2D6C0(v10, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v69, &unk_DE8E40, &unk_AF8050);
}

double sub_1992D4()
{

  return result;
}

uint64_t type metadata accessor for JSSocialProfileVerticalStackViewController(uint64_t a1)
{
  result = qword_DF4168;
  if (!qword_DF4168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1994CC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 160);
  [v4 bounds];
  v18[0] = v4;
  v18[1] = v5;
  v18[2] = v6;
  v18[3] = v7;
  v18[4] = v8;
  v19 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v18, 15, v10);
  v14[0] = v10[0];
  v14[1] = v10[1];
  v15 = v11;
  v16 = v12;
  v17 = v13;
  *&result = PresentationSource.init(viewController:position:)(v2, v14, a2).n128_u64[0];
  return result;
}

void sub_199560(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1995D8()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponseInvalidationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileDidUpdateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_userSocialProfileDidChangeObserver) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *(v0 + v1) = sub_49F63C(0, 0, 0);
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_pendingFollowRequestsControlEventHandler) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_artistPageControlEventHandler) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_1996BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse);
  if (v1)
  {
    v2 = [v1 results];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    v4 = [v2 firstItem];

    if (!v4)
    {
      goto LABEL_6;
    }

    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      swift_unknownObjectRelease();
LABEL_6:
      v1 = 0;
    }
  }

  v5 = v1;
  sub_196CAC(v1);
}

uint64_t sub_19977C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_126Tm()
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

uint64_t sub_1998EC()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_111Tm()
{

  return swift_deallocObject();
}

void sub_199A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  v3 = MPModelRelationshipPlaylistEntrySong;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v4;
  sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = v3;
  v6 = [ObjCClassFromMetadata requiredStoreLibraryPersonalizationProperties];
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_AF85F0;
  v8 = MPModelRelationshipSongLocalFileAsset;
  *(v7 + 32) = sub_AB92A0();
  *(v7 + 40) = v9;
  v55 = objc_opt_self();
  v10 = v8;
  *(v7 + 48) = [v55 allSupportedProperties];
  v11 = MPModelRelationshipSongAlbum;
  *(v7 + 56) = sub_AB92A0();
  *(v7 + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF85F0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_AB92A0();
  *(v13 + 56) = v15;
  v16 = v11;
  isa = sub_AB9740().super.isa;
  v18 = [objc_opt_self() propertySetWithProperties:isa];

  *(v7 + 72) = v18;
  sub_96EA4(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MPPropertySet);
  v20 = sub_AB9740().super.isa;
  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v21 = sub_AB8FD0().super.isa;

  v22 = [v19 initWithProperties:v20 relationships:v21];

  v23 = [v6 propertySetByCombiningWithPropertySet:v22];
  *(inited + 48) = v23;
  v24 = MPModelRelationshipPlaylistEntryMovie;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v25;
  sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v26 = swift_getObjCClassFromMetadata();
  v56 = v24;
  v27 = [v26 requiredStoreLibraryPersonalizationProperties];
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_AF4EC0;
  v29 = MPModelRelationshipMovieLocalFileAsset;
  *(v28 + 32) = sub_AB92A0();
  *(v28 + 40) = v30;
  v31 = v29;
  *(v28 + 48) = [v55 allSupportedProperties];

  sub_96EA4(v28);
  swift_setDeallocating();
  sub_12E1C(v28 + 32, &unk_DE8E80, &unk_AF87C0);
  v32 = objc_allocWithZone(MPPropertySet);
  v33 = sub_AB9740().super.isa;
  v34 = sub_AB8FD0().super.isa;

  v35 = [v32 initWithProperties:v33 relationships:v34];

  v36 = [v27 propertySetByCombiningWithPropertySet:v35];
  *(inited + 72) = v36;
  v37 = MPModelRelationshipPlaylistEntryTVEpisode;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v38;
  sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v39 = swift_getObjCClassFromMetadata();
  v54 = v37;
  v40 = [v39 requiredStoreLibraryPersonalizationProperties];
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_AF4EC0;
  v42 = MPModelRelationshipTVEpisodeLocalFileAsset;
  *(v41 + 32) = sub_AB92A0();
  *(v41 + 40) = v43;
  v44 = v42;
  *(v41 + 48) = [v55 allSupportedProperties];

  sub_96EA4(v41);
  swift_setDeallocating();
  sub_12E1C(v41 + 32, &unk_DE8E80, &unk_AF87C0);
  v45 = objc_allocWithZone(MPPropertySet);
  v46 = sub_AB9740().super.isa;
  v47 = sub_AB8FD0().super.isa;

  v48 = [v45 initWithProperties:v46 relationships:v47];

  v49 = [v40 propertySetByCombiningWithPropertySet:v48];
  *(inited + 96) = v49;

  sub_96EA4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v50 = objc_allocWithZone(MPPropertySet);
  v51 = sub_AB9740().super.isa;

  v52 = sub_AB8FD0().super.isa;

  v53 = [v50 initWithProperties:v51 relationships:v52];

  qword_DF4180 = v53;
}

uint64_t sub_19A1B8(void *a1)
{
  swift_getObjectType();
  v3 = (v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption) = 13;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled) = 0;

  swift_unknownObjectWeakDestroy();

  swift_deallocPartialClassInstance();
  return 0;
}

void sub_19A2A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v11);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
    v6 = *&v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
    *&v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText + 8];
    v9 = &v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
    *v9 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
    v9[1] = v8;

    v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = v2[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption];
  }
}

double sub_19A400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a2;
  v13 = *(*a3 + 152);

  v14 = a1;
  swift_errorRetain();
  v13(a4, sub_AAED4, v12);

  return result;
}

id sub_19A5E0(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel);
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = v5;
    if ([v6 storeID])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v13 = v15;
    v14 = v16;

    if (*(&v16 + 1))
    {
      sub_9ACFC(&v13, &v15);
      __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      sub_ABB3A0();
      v7 = MPStoreItemMetadataStringNormalizeStoreIDValue();
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = sub_AB92A0();
        v10 = v9;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_AF4EC0;
        *(v11 + 32) = v8;
        *(v11 + 40) = v10;
        v12 = sub_19A78C(v11, v3);
        __swift_destroy_boxed_opaque_existential_0(&v15);

        return v12;
      }

      __swift_destroy_boxed_opaque_existential_0(&v15);
      return 0;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  sub_12E1C(&v13, &unk_DE8E40, &unk_AF8050);
  return 0;
}

id sub_19A78C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
  [v3 setInGroupSession:0];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    isa = [Strong results];
    [v3 setSectionedModelObjects:isa];
  }

  else
  {
    isa = sub_AB9740().super.isa;
    [v3 setStoreIDs:isa];
  }

  v7 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v7 setRequest:v3];
  [v7 setStartItemIdentifiers:a2];
  v8 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v8 setTracklistToken:v7];
  [v8 setTracklistSource:3];

  return v8;
}

id sub_19A9D0()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_DF4188 = result;
  return result;
}

void sub_19AA04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_AB29F0();
  __chkstk_darwin();
  v3 = sub_AB2A00();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isCancelled])
  {
    sub_AB29E0();
    sub_3F2834(_swiftEmptyArrayStorage);
    sub_1A4764();
    sub_AB3030();
    v8 = sub_AB29C0();
    (*(v4 + 8))(v7, v3);
    v9 = sub_AB3040();
    [v1 finishWithError:v9];

    (*&v1[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, v8);
LABEL_15:

    return;
  }

  v83.receiver = v0;
  v83.super_class = ObjectType;
  objc_msgSendSuper2(&v83, "execute");
  v10 = *&v0[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_request];
  v11 = *&v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
  if (v11)
  {
    v8 = v11;
    v12 = [v10 sectionKind];
    if (v12)
    {
      v13 = v12;
      v74 = v10;
      [v12 modelClass];
      swift_getObjCClassMetadata();
      sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
      if (swift_dynamicCastMetatype())
      {
        v72 = v4;
        __chkstk_darwin();
        *(&v65 - 2) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40, &unk_AF8050);
        UnfairLock.locked<A>(_:)(sub_1A2E00);
        if (!v78)
        {

          sub_12E1C(&aBlock, &unk_DE8E40, &unk_AF8050);
          goto LABEL_14;
        }

        if (swift_dynamicCast())
        {
          v70 = v81;
          v71 = v82;
          v14 = [objc_allocWithZone(MPModelLibraryRequest) init];
          [v14 setSectionKind:v13];
          v15 = [v74 sectionProperties];
          if (!v15)
          {
            v15 = [objc_opt_self() emptyPropertySet];
          }

          v16 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
          v73 = [v15 propertySetByCombiningWithPropertySet:v16];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_AF4EC0;
          *(v17 + 32) = sub_AB92A0();
          *(v17 + 40) = v18;
          isa = sub_AB9740().super.isa;
          v20 = [objc_opt_self() propertySetWithProperties:isa];

          v21 = v73;
          v22 = [v73 propertySetByCombiningWithPropertySet:v20];

          [v14 setSectionProperties:v22];
          v23 = v74;
          v24 = [v74 itemKind];
          [v14 setItemKind:v24];

          v73 = v14;
          [v14 setWantsDetailedKeepLocalRequestableResponse:1];
          if (*&v23[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText + 8])
          {

            v25 = sub_AB9260();
          }

          else
          {
            v25 = 0;
          }

          v26 = v73;
          [v73 setFilterText:v25];

          v27 = v23[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption];
          if (v27 == 13)
          {
            v28 = 0;
          }

          else
          {
            SortOptions.SortType.sortDescriptors(for:)(194, v27);
            sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);
            v28 = sub_AB9740().super.isa;
            v26 = v73;
          }

          [v26 setItemSortDescriptors:v28];

          v29 = [v23 itemProperties];
          if (v29)
          {
            v30 = v71;
            if (qword_DE6930 != -1)
            {
              v64 = v29;
              swift_once();
              v29 = v64;
            }

            v31 = v29;
            v32 = [v29 propertySetByCombiningWithPropertySet:qword_DF4180];

            v26 = v73;
          }

          else
          {
            v32 = 0;
            v30 = v71;
          }

          [v26 setItemProperties:v32];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
          v33 = swift_allocObject();
          v68 = &v65;
          v69 = v33;
          v33[1] = xmmword_AF82B0;
          __chkstk_darwin();
          *(&v65 - 2) = v70;
          *(&v65 - 1) = v30;
          v34 = objc_allocWithZone(MPIdentifierSet);
          v35 = swift_allocObject();
          *(v35 + 16) = sub_1A2E1C;
          *(v35 + 24) = &v65 - 4;
          v79 = sub_57B84;
          v80 = v35;
          aBlock = _NSConcreteStackBlock;
          v76 = 1107296256;
          v77 = sub_41A314;
          v78 = &block_descriptor_13_1;
          v36 = _Block_copy(&aBlock);

          v37 = v13;
          v38 = [v34 initWithModelKind:v37 block:v36];
          _Block_release(v36);

          LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

          if (v36)
          {
            __break(1u);
          }

          else
          {
            v69[4] = v38;
            sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
            v39 = sub_AB9740().super.isa;

            [v26 setAllowedSectionIdentifiers:v39];

            v40 = [v74 label];
            if (v40)
            {
              v41 = v40;
              v42 = sub_AB92A0();
              v38 = v43;
            }

            else
            {
              v38 = 0xE400000000000000;
              v42 = 1701736302;
            }

            v35 = v42;
            v69 = v37;
            if (qword_DE6940 == -1)
            {
              goto LABEL_30;
            }
          }

          swift_once();
LABEL_30:
          v44 = sub_AB4BC0();
          __swift_project_value_buffer(v44, qword_E71120);

          v45 = v71;

          v46 = sub_AB4BA0();
          v47 = sub_AB9F50();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v68 = v38;
            v49 = v48;
            v66 = swift_slowAlloc();
            aBlock = v66;
            *v49 = 136446466;
            v67 = v35;
            *(v49 + 4) = sub_425E68(v35, v68, &aBlock);
            *(v49 + 12) = 2082;
            v50 = v70;
            *(v49 + 14) = sub_425E68(v70, v45, &aBlock);
            _os_log_impl(&dword_0, v46, v47, "Request=(%{public}s) Attempting library request for playlist with storeID: %{public}s", v49, 0x16u);
            swift_arrayDestroy();
            v51 = v74;

            v38 = v68;

            v52 = v67;
          }

          else
          {

            v52 = v35;
            v51 = v74;
            v50 = v70;
          }

          v53 = swift_allocObject();
          v53[2] = v52;
          v53[3] = v38;
          v53[4] = v50;
          v53[5] = v45;
          v53[6] = v1;
          v53[7] = v51;
          v79 = sub_1A3B54;
          v80 = v53;
          aBlock = _NSConcreteStackBlock;
          v76 = 1107296256;
          v77 = sub_151E0;
          v78 = &block_descriptor_19_2;
          v54 = _Block_copy(&aBlock);
          v55 = v1;
          v56 = v51;
          v57 = v55;
          v58 = v56;

          v59 = v73;
          v60 = [v73 newOperationWithResponseHandler:v54];
          _Block_release(v54);
          if ([v57 isCancelled])
          {
            sub_AB29E0();
            sub_3F2834(_swiftEmptyArrayStorage);
            sub_1A4764();
            sub_AB3030();
            v61 = v59;
            v62 = sub_AB29C0();
            (*(v72 + 8))(v7, v3);
            v63 = sub_AB3040();
            [v57 finishWithError:v63];

            (*&v57[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, v62);
            v8 = v69;
          }

          else
          {
            if (qword_DE6938 != -1)
            {
              swift_once();
            }

            [qword_DF4188 addOperation:v60];
          }

          goto LABEL_15;
        }
      }
    }

LABEL_14:
    sub_19BCA8();
    goto LABEL_15;
  }

  __break(1u);
}

void sub_19B630(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = v5;
    if ([v6 storeID])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    *a2 = v7;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }
}

void sub_19B6EC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A47F4;
  *(v7 + 24) = v6;
  v9[4] = sub_57B84;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_4522E8;
  v9[3] = &block_descriptor_33;
  v8 = _Block_copy(v9);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_19B84C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char *a7, void *a8)
{
  if (a1)
  {
    v32 = a1;
    v14 = [v32 results];
    if (!v14)
    {
      __break(1u);
      goto LABEL_26;
    }

    v15 = v14;
    v16 = [v14 numberOfSections];

    if (v16 >= 1)
    {
      v17 = [v32 results];

      if (v17)
      {
        v18 = [v17 firstSection];

        if (v18)
        {
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19)
          {
            v20 = v19;
            if (![v19 type] || objc_msgSend(v20, "type") == &dword_4 + 2)
            {
              v21 = objc_allocWithZone(type metadata accessor for JSContainerDetailModelResponse());
              v32 = v32;
              v22 = sub_1A3F30(a8, v32, 1, v21);
              [a7 finishWithError:0];
              (*&a7[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(v22, 0);
              swift_unknownObjectRelease();

LABEL_22:

              return;
            }
          }

          swift_unknownObjectRelease();
        }

        if (qword_DE6940 != -1)
        {
          swift_once();
        }

        v27 = sub_AB4BC0();
        __swift_project_value_buffer(v27, qword_E71120);

        v28 = sub_AB4BA0();
        v29 = sub_AB9F50();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v33 = v31;
          *v30 = 136446210;
          *(v30 + 4) = sub_425E68(a3, a4, &v33);
          _os_log_impl(&dword_0, v28, v29, "Request=(%{public}s) Skipping Library path — playlist type isn't regular or shared.", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
        }

        sub_19BCA8();
        goto LABEL_22;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v23 = sub_AB4BC0();
  __swift_project_value_buffer(v23, qword_E71120);

  v24 = sub_AB4BA0();
  v25 = sub_AB9F30();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_425E68(a3, a4, &v33);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_425E68(a5, a6, &v33);
    _os_log_impl(&dword_0, v24, v25, "Request=(%{public}s) Library request failed, no response or empty section returned for playlist with storeID: %{public}s, falling back to store lookup request", v26, 0x16u);
    swift_arrayDestroy();
  }

  sub_19BCA8();
}

void sub_19BCA8()
{
  sub_AB29F0();
  __chkstk_darwin();
  v233 = &v216 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2A00();
  __chkstk_darwin();
  v243 = v0;
  v5 = *&v0[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_request];
  v227 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
  if (!v6)
  {
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v230 = &v216 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v4;
  v232 = v2;
  sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v242 = v6;
  v240 = [ObjCClassFromMetadata requiredStoreLibraryPersonalizationProperties];
  sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v8 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  v262 = v8;
  v9 = objc_opt_self();
  v10 = [v9 emptyPropertySet];
  sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v238 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v237 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
  v11 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  v261 = v11;
  v260 = 0;
  v258 = 0;
  v259 = 0;
  v256 = 0;
  v257 = 0;
  v255 = &_swiftEmptySetSingleton;
  v228 = sub_98690(_swiftEmptyArrayStorage);
  v254 = v228;
  v12 = swift_allocObject();
  v235 = v12;
  v12[2].isa = _swiftEmptyArrayStorage;
  v234 = v12 + 2;
  v245 = v5;
  v13 = [v245 sectionKind];
  v239 = v10;
  v229 = v5;
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  [v13 modelClass];

  swift_getObjCClassMetadata();
  if (swift_dynamicCastMetatype())
  {
    v15 = v245;
    v16 = [v245 sectionProperties];
    if (v16)
    {
      v17 = v16;
      v18 = v240;
      v19 = [v240 propertySetByCombiningWithPropertySet:v16];

      v240 = v19;
    }

    v258 = sub_19D8E0;
    v259 = 0;
    v20 = [v15 itemKind];
    v236 = v11;
    if (v20)
    {
      v21 = v20;
      [v20 modelClass];

      swift_getObjCClassMetadata();
      if (swift_dynamicCastMetatype())
      {
        v22 = [v15 itemProperties];
        if (v22)
        {
          v23 = v22;
          v24 = [v8 propertySetByCombiningWithPropertySet:v22];

          v262 = v24;
          v225 = sub_19DA54;
          v256 = sub_19DA54;
          v257 = 0;
          v226 = sub_19D8E0;
          v8 = v24;
          goto LABEL_106;
        }

        v51 = sub_19DA54;
LABEL_28:
        v225 = v51;
        v256 = v51;
        v257 = 0;
        v40 = sub_19D8E0;
LABEL_105:
        v226 = v40;
LABEL_106:
        v244 = [objc_allocWithZone(MPMutableSectionedCollection) init];
        v241 = [objc_allocWithZone(MPMutableSectionedCollection) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF8600;
        *(inited + 32) = sub_AB92A0();
        v129 = v240;
        *(inited + 40) = v130;
        *(inited + 48) = v129;
        *(inited + 56) = sub_AB92A0();
        *(inited + 64) = v131;
        v132 = v8;
        *(inited + 72) = v8;
        *(inited + 80) = sub_AB92A0();
        *(inited + 88) = v133;
        v134 = v238;
        *(inited + 96) = v238;
        *(inited + 104) = sub_AB92A0();
        *(inited + 112) = v135;
        v136 = v237;
        *(inited + 120) = v237;
        *(inited + 128) = sub_AB92A0();
        *(inited + 136) = v137;
        v138 = v236;
        *(inited + 144) = v236;
        v240 = v129;
        v224 = v132;
        v139 = v134;
        v140 = v136;
        v141 = v138;
        sub_96EA4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
        swift_arrayDestroy();
        v142 = objc_allocWithZone(MPPropertySet);
        isa = sub_AB9740().super.isa;
        sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
        v144 = sub_AB8FD0().super.isa;

        v145 = [v142 initWithProperties:isa relationships:v144];

        v146 = v243;
        if ([v243 isCancelled])
        {

          sub_AB29E0();
          sub_3F2834(_swiftEmptyArrayStorage);
          sub_1A4764();
          v147 = v230;
          v148 = v232;
          sub_AB3030();
          v149 = sub_AB29C0();
          (*(v231 + 8))(v147, v148);
          v150 = sub_AB3040();
          [v146 finishWithError:v150];

          (*&v146[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, v149);

          sub_17654(v225, 0);
          sub_17654(v226, 0);

          return;
        }

        v228 = v139;
        v236 = v140;
        __chkstk_darwin();
        v151 = v241;
        v153 = v244;
        v152 = v245;
        *(&v216 - 14) = v242;
        *(&v216 - 13) = v152;
        v226 = v154;
        *(&v216 - 12) = v154;
        *(&v216 - 11) = &v260;
        *(&v216 - 10) = v146;
        *(&v216 - 9) = &v258;
        *(&v216 - 8) = v151;
        *(&v216 - 7) = v153;
        *(&v216 - 6) = v234;
        *(&v216 - 5) = &v256;
        *(&v216 - 4) = &v255;
        *(&v216 - 3) = &v254;
        *(&v216 - 2) = &v262;
        *(&v216 - 1) = &v261;
        UnfairLock.locked<A>(_:)(sub_1A4888);
        v155 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v152 unpersonalizedContentDescriptors:v151];

        v156 = v155;
        v157 = [v152 itemProperties];
        if (v157)
        {
          if (qword_DE6930 != -1)
          {
            v215 = v157;
            swift_once();
            v157 = v215;
          }

          v158 = v157;
          v159 = [v157 propertySetByCombiningWithPropertySet:qword_DF4180];
        }

        else
        {
          v159 = 0;
        }

        [v156 setItemProperties:v159];

        [v156 setRepresentedObjects:v153];
        v160 = [v152 label];
        v238 = v156;
        if (v160)
        {
          v161 = v160;
          v237 = sub_AB92A0();
          v163 = v162;
        }

        else
        {
          v163 = 0xE400000000000000;
          v237 = 1701736302;
        }

        v164 = swift_allocObject();
        *(v164 + 16) = 0;
        *(v164 + 24) = 0;
        v165 = swift_allocObject();
        *(v165 + 16) = 0;
        v166 = (v165 + 16);
        *(v165 + 24) = 0;
        v167 = *&v229[v227];
        if (v167)
        {
          v168 = v165;
          v169 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
          swift_beginAccess();
          v170 = *(v167 + v169);
          if (!v170)
          {
LABEL_130:
            v181 = *(v234->isa + 2);
            if (v181)
            {
              v182 = v234->isa + 32;
              while ((*v182 & 1) != 0)
              {
                ++v182;
                if (!--v181)
                {
                  goto LABEL_146;
                }
              }

              if (qword_DE6940 != -1)
              {
                swift_once();
              }

              v183 = sub_AB4BC0();
              __swift_project_value_buffer(v183, qword_E71120);
              v184 = v244;

              v185 = sub_AB4BA0();
              v186 = sub_AB9F50();

              if (os_log_type_enabled(v185, v186))
              {
                v234 = v185;
                v187 = swift_slowAlloc();
                v227 = swift_slowAlloc();
                *&v249 = v227;
                *v187 = 136446978;
                *(v187 + 4) = sub_425E68(v237, v163, &v249);
                *(v187 + 12) = 2082;
                swift_beginAccess();
                v188 = *(v164 + 24);
                LODWORD(v229) = v186;
                if (v188)
                {
                  v189 = *(v164 + 16);
                }

                else
                {
                  v188 = 0xE400000000000000;
                  v189 = 1701736302;
                }

                v190 = sub_425E68(v189, v188, &v249);

                *(v187 + 14) = v190;
                *(v187 + 22) = 2082;
                swift_beginAccess();
                v191 = *(v168 + 24);
                if (v191)
                {
                  v192 = *v166;
                }

                else
                {
                  v191 = 0xE400000000000000;
                  v192 = 1701736302;
                }

                v193 = sub_425E68(v192, v191, &v249);

                *(v187 + 24) = v193;
                *(v187 + 32) = 2048;
                v194 = [v184 totalItemCount];

                *(v187 + 34) = v194;
                v195 = v234;
                _os_log_impl(&dword_0, v234, v229, "Request=(%{public}s) Attempting to personalize track listing for for container with (storeID=%{public}s, libraryID:=%{public}s)), number of represented objects: %ld", v187, 0x2Au);
                swift_arrayDestroy();
              }

              else
              {
              }
            }

LABEL_146:
            v196 = swift_allocObject();
            v197 = v163;
            v198 = v245;
            v196[2] = v245;
            v196[3] = v164;
            v199 = v235;
            v196[4] = v168;
            v196[5] = v199;
            v196[6] = v237;
            v196[7] = v197;
            v200 = v243;
            v196[8] = v243;
            v252 = sub_1A4928;
            v253 = v196;
            *&v249 = _NSConcreteStackBlock;
            *(&v249 + 1) = 1107296256;
            v250 = sub_151E0;
            v251 = &block_descriptor_46_0;
            v201 = _Block_copy(&v249);
            v202 = v198;

            v203 = v200;

            v204 = v238;
            v205 = [v238 newOperationWithResponseHandler:v201];
            _Block_release(v201);
            if ([v203 isCancelled])
            {
              sub_AB29E0();
              sub_3F2834(_swiftEmptyArrayStorage);
              sub_1A4764();
              v206 = v230;
              v207 = v232;
              sub_AB3030();
              v208 = sub_AB29C0();
              (*(v231 + 8))(v206, v207);
              v209 = sub_AB3040();
              [v203 finishWithError:v209];

              (*&v203[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, v208);

              v210 = v244;
            }

            else
            {
              v211 = v239;
              v212 = v240;
              v213 = v236;
              v214 = v228;
              if (qword_DE6938 != -1)
              {
                swift_once();
              }

              [qword_DF4188 addOperation:v205];

              v210 = v242;
            }

            sub_17654(v256, v257);
            sub_17654(v258, v259);

            return;
          }

          v171 = v170;
          if ([v171 storeID])
          {
            sub_ABAB50();
            sub_9ACFC(&v249, &v247);
            swift_unknownObjectRelease();
            if (*(&v248 + 1))
            {
              sub_9ACFC(&v247, &v249);
              __swift_project_boxed_opaque_existential_1(&v249, v251);
              sub_ABB3A0();
              v172 = MPStoreItemMetadataStringNormalizeStoreIDValue();
              swift_unknownObjectRelease();
              if (v172)
              {
                v173 = sub_AB92A0();
                v175 = v174;
              }

              else
              {
                v173 = 0;
                v175 = 0;
              }

              __swift_destroy_boxed_opaque_existential_0(&v249);
              *(v164 + 16) = v173;
              *(v164 + 24) = v175;

              goto LABEL_126;
            }
          }

          else
          {
            v247 = 0u;
            v248 = 0u;
          }

          sub_12E1C(&v247, &unk_DE8E40, &unk_AF8050);
LABEL_126:
          v176 = [v171 cloudUniversalLibraryID];
          if (v176)
          {
            v177 = v176;
            v178 = sub_AB92A0();
            v180 = v179;
          }

          else
          {
            v178 = 0;
            v180 = 0;
          }

          *(v168 + 16) = v178;
          *(v168 + 24) = v180;

          goto LABEL_130;
        }

        goto LABEL_156;
      }
    }

    v25 = [v15 itemKind];
    v26 = sub_19D8E0;
    if (v25)
    {
      v27 = v25;
      [v25 modelClass];

      swift_getObjCClassMetadata();
      sub_13C80(0, &unk_DF1280, MPModelRecordLabel_ptr);
      v28 = swift_dynamicCastMetatype();
      v26 = sub_19D8E0;
      if (v28)
      {
        v29 = [v15 itemProperties];
        if (v29)
        {
          v30 = v29;
          v31 = v239;
          v32 = [v239 propertySetByCombiningWithPropertySet:v29];

          v225 = sub_19DBC8;
          v256 = sub_19DBC8;
          v257 = 0;
          v226 = sub_19D8E0;
          v239 = v32;
          goto LABEL_106;
        }

        v51 = sub_19DBC8;
        goto LABEL_28;
      }
    }

LABEL_24:
    v225 = 0;
    v226 = v26;
    goto LABEL_106;
  }

  if (!swift_dynamicCastMetatype())
  {
LABEL_23:
    v236 = v11;
    v225 = 0;
    v226 = 0;
    goto LABEL_106;
  }

  v33 = [v245 sectionProperties];
  if (v33)
  {
    v34 = v33;
    v35 = [v11 propertySetByCombiningWithPropertySet:v33];

    v261 = v35;
    v11 = v35;
  }

  v258 = sub_19DD3C;
  v259 = 0;
  v36 = [v245 itemKind];
  v236 = v11;
  if (!v36)
  {
    v225 = 0;
    v226 = sub_19DD3C;
    goto LABEL_106;
  }

  v37 = v36;
  [v36 modelClass];

  swift_getObjCClassMetadata();
  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v38 = swift_dynamicCastMetatype();
  v26 = sub_19DD3C;
  if (!v38)
  {
    goto LABEL_24;
  }

  v260 = 1;
  v256 = sub_19DEB0;
  v257 = 0;
  v39 = [v245 itemProperties];
  v40 = sub_19DD3C;
  if (!v39)
  {
    v225 = sub_19DEB0;
    goto LABEL_105;
  }

  v41 = v39;
  v42 = [v39 relationships];
  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v43 = sub_AB8FF0();

  v44 = sub_AB92A0();
  if (*(v43 + 16))
  {
    v46 = sub_2EBF88(v44, v45);
    v47 = v229;
    if (v48)
    {
      v49 = *(*(v43 + 56) + 8 * v46);

      v50 = [v8 propertySetByCombiningWithPropertySet:v49];

      v262 = v50;
      v8 = v50;
    }

    else
    {
    }
  }

  else
  {

    v47 = v229;
  }

  v52 = sub_AB92A0();
  if (*(v43 + 16) && (v54 = sub_2EBF88(v52, v53), (v55 & 1) != 0))
  {
    v56 = *(*(v43 + 56) + 8 * v54);

    v57 = v237;
    v58 = [v237 propertySetByCombiningWithPropertySet:v56];

    v237 = v58;
  }

  else
  {
  }

  v59 = sub_AB92A0();
  if (*(v43 + 16) && (v61 = sub_2EBF88(v59, v60), (v62 & 1) != 0))
  {
    v63 = *(*(v43 + 56) + 8 * v61);

    v64 = v238;
    v65 = [v238 propertySetByCombiningWithPropertySet:v63];

    v238 = v65;
  }

  else
  {
  }

  v66 = sub_AB92A0();
  if (!*(v43 + 16) || (v68 = sub_2EBF88(v66, v67), (v69 & 1) == 0))
  {

LABEL_104:
    v225 = sub_19DEB0;
    v40 = sub_19DD3C;
    goto LABEL_105;
  }

  v218 = v43;
  v219 = *(*(v43 + 56) + 8 * v68);

  v70 = *&v47[v227];
  if (!v70)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v71 = &OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_entries;
  v72 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_entries;
  swift_beginAccess();
  v73 = *(v70 + v72);
  v217 = v41;
  if (!(v73 >> 62))
  {
    if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_45;
    }

LABEL_103:
    sub_1B02C();

    goto LABEL_104;
  }

LABEL_102:
  if (!sub_ABB060())
  {
    goto LABEL_103;
  }

LABEL_45:
  v74 = type metadata accessor for JSModelSocialPersonProfileBuilder();
  v75 = objc_allocWithZone(v74);
  v75[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
  v76 = v219;
  *&v75[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v219;
  v77 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
  v78 = v76;
  v79 = [v77 initWithRequestedPropertySet:v78];
  if (v79)
  {
    *&v75[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v79;
    v246.receiver = v75;
    v246.super_class = v74;
    v224 = objc_msgSendSuper2(&v246, "init");

    v80 = [v9 emptyPropertySet];
    v9 = [objc_allocWithZone(MPStoreModelGenericObjectBuilder) initWithRequestedPropertySet:v80];

    v81 = *&v229[v227];
    if (!v81)
    {
      goto LABEL_160;
    }

    v82 = *v71;
    swift_beginAccess();
    v83 = *(v81 + v82);
    if (v83 >> 62)
    {
      goto LABEL_153;
    }

    v84 = *(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8));
    if (v84)
    {
LABEL_49:
      v226 = (v83 & 0xC000000000000001);
      v221 = v83 & 0xFFFFFFFFFFFFFF8;

      v71 = 0;
      v222 = v83;
      v223 = v9;
      v225 = v84;
      while (1)
      {
        if (v226)
        {
          v86 = sub_361094(v71, v83);
        }

        else
        {
          if (v71 >= *(v221 + 16))
          {
            goto LABEL_100;
          }

          v86 = *(v83 + 8 * v71 + 32);
        }

        v244 = (v71 + 1);
        if (__OFADD__(v71, 1))
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v87 = v86;
        v88 = JSSocialMediaItem.accessorySocialProfiles.getter();

        if (v88 >> 62)
        {
          if (!sub_ABB060())
          {
LABEL_50:

            v85 = v244;
            goto LABEL_51;
          }
        }

        else if (!*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_50;
        }

        if ((v88 & 0xC000000000000001) != 0)
        {
          v90 = sub_36105C(0, v88, v89);
        }

        else
        {
          if (!*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_99;
          }

          v90 = *(v88 + 32);
        }

        v91 = v90;

        v92 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
        swift_beginAccess();
        v93 = *&v87[v92];
        v241 = v91;
        if (v93)
        {
          if (v9)
          {
            v94 = v93;
            v95 = v9;
            v96 = [v243 userIdentity];
            v97 = [v95 modelObjectWithStoreItemMetadata:v94 userIdentity:v96];

            if (v97)
            {
              v9 = [v97 identifiers];
            }

            else
            {

              v9 = 0;
            }

            v83 = v222;
          }
        }

        else
        {
          v98 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_identifierSet;
          swift_beginAccess();
          v99 = *&v87[v98];
          if (v99)
          {
            v100 = *&stru_158.segname[swift_isaMask & *v99];
            v101 = v99;
            v9 = v100();
          }

          else
          {
            v9 = 0;
          }
        }

        v102 = [v243 userIdentity];
        if (!v102)
        {
          goto LABEL_157;
        }

        v103 = v102;
        v104 = v241;
        sub_21B8E0(v241, v102);
        v106 = v105;

        if (v106)
        {
          v84 = v225;
          if (v9)
          {
            v107 = [v9 universalStore];
            if (v107)
            {
              v108 = [v107 adamID];
              swift_unknownObjectRelease();
              v228 = v106;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v110 = v254;
              *&v249 = v254;
              v220 = v108;
              v83 = sub_2F5A90(v108);
              v112 = v110[2];
              v113 = (v111 & 1) == 0;
              v114 = v112 + v113;
              if (__OFADD__(v112, v113))
              {
                goto LABEL_101;
              }

              v115 = v111;
              if (v110[3] >= v114)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v118 = v249;
                  if ((v111 & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  sub_332B98();
                  v118 = v249;
                  if ((v115 & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }
              }

              else
              {
                sub_32A424(v114, isUniquelyReferenced_nonNull_native);
                v116 = sub_2F5A90(v220);
                if ((v115 & 1) != (v117 & 1))
                {
                  goto LABEL_161;
                }

                v83 = v116;
                v118 = v249;
                if ((v115 & 1) == 0)
                {
LABEL_92:
                  v118[(v83 >> 6) + 8] |= 1 << v83;
                  *(v118[6] + 8 * v83) = v220;
                  v124 = v228;
                  *(v118[7] + 8 * v83) = v228;

                  v125 = v118[2];
                  v126 = __OFADD__(v125, 1);
                  v127 = v125 + 1;
                  if (v126)
                  {
                    __break(1u);
LABEL_153:
                    v84 = sub_ABB060();
                    if (!v84)
                    {
                      break;
                    }

                    goto LABEL_49;
                  }

                  v118[2] = v127;
                  v122 = v241;
                  v120 = v9;
                  v9 = v223;
                  v123 = v118;
                  goto LABEL_94;
                }
              }

              v119 = v118[7];
              v120 = *(v119 + 8 * v83);
              v121 = v228;
              *(v119 + 8 * v83) = v228;

              v122 = v121;
              v123 = v118;
              v9 = v223;
LABEL_94:
              v84 = v225;
              v85 = v244;
              v83 = v222;

              v228 = v123;
              v254 = v123;
              goto LABEL_51;
            }
          }

          else
          {
          }
        }

        else
        {

          v84 = v225;
        }

        v85 = v244;
        v9 = v223;
LABEL_51:
        ++v71;
        if (v85 == v84)
        {

          break;
        }
      }
    }

    goto LABEL_103;
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  sub_ABB4C0();
  __break(1u);
}

void sub_19D8E0(void *a1)
{
  v8 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A49AC;
  *(v4 + 24) = v3;
  aBlock[4] = sub_36C08;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_75_0;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_19DA54(void *a1)
{
  v8 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A4994;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2D4D0;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_55;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_19DBC8(void *a1)
{
  v8 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A49A0;
  *(v4 + 24) = v3;
  aBlock[4] = sub_36C08;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_65;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_19DD3C(void *a1)
{
  v8 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A49C4;
  *(v4 + 24) = v3;
  aBlock[4] = sub_36C08;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_95;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_19DEB0(void *a1)
{
  v8 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A49B8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_36C08;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_85_0;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19E024(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, void *a5, uint64_t a6, void *a7, void *a8, char **a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, void **a14)
{
  v15 = v14;
  v272 = a8;
  v269 = a7;
  v22 = a9;
  v23 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = &selRef_performWithResponseHandler_;
  if (!v24)
  {
    v33 = 0;
    v34 = 0;
    goto LABEL_58;
  }

  v273 = v14;
  v26 = v24;
  v27 = [a2 sectionKind];
  if (!v27)
  {

    goto LABEL_56;
  }

  v267 = v27;
  v271 = v26;
  v268 = [objc_allocWithZone(MPStoreModelGenericObjectBuilder) initWithRequestedPropertySet:a3];
  if (!v268)
  {
    goto LABEL_55;
  }

  [v268 setShouldUsePlaylistEntry:*a4];
  v265 = [a5 userIdentity];
  LODWORD(v266) = JSContainerDetail.hasMusicKitResponse.getter();
  v264 = a2;
  v28 = [a2 label];
  if (v28)
  {
    v29 = v28;
    v30 = sub_AB92A0();
    v32 = v31;
  }

  else
  {
    v32 = 0xE400000000000000;
    v30 = 1701736302;
  }

  if ((v266 & 1) == 0)
  {
    v263 = a1;
    v262 = [v268 modelObjectWithStoreItemMetadata:v271 userIdentity:v265];
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v48 = sub_AB4BC0();
    __swift_project_value_buffer(v48, qword_E71120);
    v49 = v271;

    v50 = sub_AB4BA0();
    v51 = sub_AB9F50();

    if (!os_log_type_enabled(v50, v51))
    {

      a2 = v264;
      goto LABEL_45;
    }

    v261 = a9;
    v52 = swift_slowAlloc();
    v274[0] = swift_slowAlloc();
    *v52 = 136446466;
    v53 = sub_425E68(v30, v32, v274);

    *(v52 + 4) = v53;
    *(v52 + 12) = 2082;
    if ([v49 storeID])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v276 = 0u;
      v277 = 0u;
    }

    aBlock = v276;
    v280 = v277;
    if (*(&v277 + 1))
    {
      if (swift_dynamicCast())
      {
        v55 = *(&v275 + 1);
        v54 = v275;
LABEL_36:
        v56 = sub_425E68(v54, v55, v274);

        *(v52 + 14) = v56;
        _os_log_impl(&dword_0, v50, v51, "Request=(%{public}s) Enqueueing JS container detail request with storePlatform response for container with storeID: %{public}s", v52, 0x16u);
        swift_arrayDestroy();

        v22 = v261;
        a2 = v264;
        goto LABEL_44;
      }
    }

    else
    {
      sub_12E1C(&aBlock, &unk_DE8E40, &unk_AF8050);
    }

    v55 = 0xE400000000000000;
    v54 = 1701736302;
    goto LABEL_36;
  }

  if (![v271 storeID])
  {

    aBlock = 0u;
    v280 = 0u;
LABEL_28:
    sub_12E1C(&aBlock, &unk_DE8E40, &unk_AF8050);
LABEL_29:

    v33 = 0;
    v34 = 0;
    a2 = v264;
    goto LABEL_57;
  }

  sub_ABAB50();
  sub_9ACFC(&v275, &aBlock);
  swift_unknownObjectRelease();
  if (!*(&v280 + 1))
  {

    goto LABEL_28;
  }

  v263 = a1;
  sub_9ACFC(&aBlock, &v276);
  __swift_project_boxed_opaque_existential_1(&v276, *(&v277 + 1));
  sub_ABB3A0();
  v35 = MPStoreItemMetadataStringNormalizeStoreIDValue();
  swift_unknownObjectRelease();
  if (!v35)
  {

    __swift_destroy_boxed_opaque_existential_0(&v276);
    v33 = 0;
    v34 = 0;
    a2 = v264;
    a1 = v263;
    goto LABEL_57;
  }

  v36 = sub_AB92A0();
  v38 = v37;

  v39 = v38;
  v40 = HIBYTE(v38) & 0xF;
  v270 = v36;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v36 & 0xFFFFFFFFFFFFLL;
  }

  a1 = v263;
  if (!v40)
  {

    __swift_destroy_boxed_opaque_existential_0(&v276);
    goto LABEL_29;
  }

  v262 = v39;
  if (qword_DE6940 != -1)
  {
    goto LABEL_271;
  }

  while (1)
  {
    v261 = v22;
    v41 = sub_AB4BC0();
    __swift_project_value_buffer(v41, qword_E71120);
    sub_808B0(&v276, &aBlock);

    v42 = sub_AB4BA0();
    v43 = sub_AB9F50();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v283[0] = v260;
      *v44 = 136446466;
      v45 = sub_425E68(v30, v32, v283);

      *(v44 + 4) = v45;
      *(v44 + 12) = 2082;
      sub_808B0(&aBlock, &v275);
      if (swift_dynamicCast())
      {
        v46 = v274[0];
        v47 = v274[1];
        a2 = v264;
      }

      else
      {
        v47 = 0xE400000000000000;
        a2 = v264;
        v46 = 1701736302;
      }

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v57 = sub_425E68(v46, v47, v283);

      *(v44 + 14) = v57;
      _os_log_impl(&dword_0, v42, v43, "Request=(%{public}s) Enqueueing JS container detail request with mediaAPI response for container with storeID: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&aBlock);

      a2 = v264;
    }

    __chkstk_darwin();
    v22 = v262;
    v241 = v270;
    v242 = v262;
    v58 = objc_allocWithZone(MPIdentifierSet);
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1A5A30;
    *(v59 + 24) = v240;
    v281 = sub_C3FB8;
    v282 = v59;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v280 = sub_41A314;
    *(&v280 + 1) = &block_descriptor_154;
    v60 = _Block_copy(&aBlock);
    v25 = v267;

    v61 = [v58 initWithModelKind:v25 block:v60];
    _Block_release(v60);

    a1 = swift_isEscapingClosureAtFileLocation();

    if (a1)
    {
      break;
    }

    v62 = [objc_opt_self() sharedServerObjectDatabase];
    v262 = [v62 modelObjectMatchingIdentifierSet:v61 propertySet:a3];
    __swift_destroy_boxed_opaque_existential_0(&v276);

    v22 = v261;
LABEL_44:
    v25 = &selRef_performWithResponseHandler_;
LABEL_45:
    a1 = v263;
    a3 = v266;
    v63 = v262;
    if (!v262)
    {

      goto LABEL_55;
    }

    v64 = *a6;
    if (!*a6)
    {

LABEL_55:
LABEL_56:
      v33 = 0;
      v34 = 0;
      goto LABEL_57;
    }

    v65 = *(a6 + 8);

    v66 = v64(v63);
    v67 = v64;
    v34 = v66;
    sub_17654(v67, v65);
    if (!v34)
    {

      v33 = 0;
      goto LABEL_57;
    }

    v252 = a10;
    v68 = objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor);
    v254 = v34;
    v69 = [v68 initWithModel:v34 personalizationStyle:1];
    v70 = v269;
    [v269 appendSection:v69];

    [v272 appendSection:v271];
    v283[0] = _swiftEmptyArrayStorage;
    v270 = sub_987C0(_swiftEmptyArrayStorage);
    v71 = &unk_DF4000;
    v261 = v22;
    if ((a3 & 1) == 0)
    {
      if ([v70 numberOfSections] >= 1)
      {
        v111 = [v271 childrenStoreIDs];
        if (v111)
        {
          v112 = v111;
          v258 = sub_AB9760();

          v61 = *v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v22 = v61;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_106;
          }

          goto LABEL_274;
        }
      }

LABEL_164:
      v259 = 0;
      v257 = 0;
      v255 = _swiftEmptyArrayStorage;
      goto LABEL_177;
    }

    v72 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailMusicKitRelationshipsResponse;
    swift_beginAccess();
    v73 = *(a1 + v72);
    if (!v73)
    {
      v276 = 0u;
      v277 = 0u;
      v71 = &unk_DF4000;
LABEL_163:
      sub_12E1C(&v276, &unk_DE8E40, &unk_AF8050);
      goto LABEL_164;
    }

    *&v275 = 0x736B63617274;
    *(&v275 + 1) = 0xE600000000000000;

    sub_ABAD10();
    v71 = &unk_DF4000;
    if (*(v73 + 16) && (v74 = sub_2EC004(&aBlock), (v75 & 1) != 0))
    {
      sub_808B0(*(v73 + 56) + 32 * v74, &v276);
      sub_8085C(&aBlock);
    }

    else
    {
      sub_8085C(&aBlock);
      v276 = 0u;
      v277 = 0u;
    }

    if (!*(&v277 + 1))
    {
      goto LABEL_163;
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_175;
    }

    v167 = aBlock;
    *&v275 = 1635017060;
    *(&v275 + 1) = 0xE400000000000000;
    sub_ABAD10();
    if (!v167[2] || (v168 = sub_2EC004(&aBlock), (v169 & 1) == 0))
    {
      sub_8085C(&aBlock);
LABEL_168:

      v22 = v261;
      v259 = 0;
      v257 = 0;
      v255 = _swiftEmptyArrayStorage;
      goto LABEL_176;
    }

    sub_808B0(v167[7] + 32 * v168, &v276);
    sub_8085C(&aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0, &unk_B09430);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_168;
    }

    v258 = v275;
    v170 = [a2 itemKind];
    if (!v170)
    {

LABEL_175:
      v259 = 0;
      v257 = 0;
      v255 = _swiftEmptyArrayStorage;
      v22 = v261;
      goto LABEL_176;
    }

    v171 = v170;
    v257 = [objc_opt_self() emptyPropertySet];
    [v171 modelClass];
    swift_getObjCClassMetadata();
    sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
    v172 = swift_dynamicCastMetatype();
    v256 = v167;
    v251 = v171;
    if (v172)
    {
      v15 = a1;
      v173 = a13;
    }

    else
    {
      v15 = a1;
      sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_220;
      }

      v173 = a14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_AF4EC0;
    *(v189 + 32) = sub_AB92A0();
    v190 = *v173;
    *(v189 + 40) = v191;
    *(v189 + 48) = v190;
    v192 = v190;
    sub_96EA4(v189);
    swift_setDeallocating();
    sub_12E1C(v189 + 32, &unk_DE8E80, &unk_AF87C0);
    swift_deallocClassInstance();
    v193 = objc_allocWithZone(MPPropertySet);
    isa = sub_AB9740().super.isa;
    sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
    v195 = sub_AB8FD0().super.isa;

    v196 = [v193 initWithProperties:isa relationships:v195];

    v257 = v196;
LABEL_220:
    v197 = v261;
    v138 = *v261;
    v198 = swift_isUniquelyReferenced_nonNull_native();
    *v197 = v138;
    if ((v198 & 1) == 0)
    {
      goto LABEL_279;
    }

    while (1)
    {
      a1 = v15;
      a3 = v266;
      v200 = v138[2];
      v199 = v138[3];
      if (v200 >= v199 >> 1)
      {
        v138 = sub_6B870((v199 > 1), v200 + 1, 1, v138);
        *v261 = v138;
      }

      v138[2] = v200 + 1;
      *(v138 + v200 + 32) = 0;
      v201 = v258;
      v260 = *(v258 + 16);
      if (!v260)
      {
        break;
      }

      v202 = 0;
      v248 = (v264 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText);
      v259 = (v258 + 32);
      v71 = &unk_DF4000;
      v247 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption;
      v249 = &v280;
      v255 = _swiftEmptyArrayStorage;
      v77 = v256;
      v263 = v15;
      while (1)
      {
        if (v202 >= *(v201 + 16))
        {
          __break(1u);
LABEL_276:
          v71 = sub_6B870(0, *(v71 + 2) + 1, 1, v71);
          *a1 = v71;
LABEL_75:
          v91 = *(v71 + 2);
          v90 = *(v71 + 3);
          if (v91 >= v90 >> 1)
          {
            v71 = sub_6B870((v90 > 1), v91 + 1, 1, v71);
            *a1 = v71;
          }

          *(v71 + 2) = v91 + 1;
          v71[v91 + 32] = 1;
          v61 = v267[2];
          if (!v61)
          {
LABEL_165:

            v82 = v259;
            goto LABEL_65;
          }

          a3 = (v267 + 4);
          v266 = &v280;
          v265 = v22;
          while (2)
          {
            v92 = *a3;
            v283[0] = 25705;
            v283[1] = 0xE200000000000000;

            sub_ABAD10();
            if (*(v92 + 16) && (v93 = sub_2EC004(&aBlock), (v94 & 1) != 0))
            {
              sub_808B0(*(v92 + 56) + 32 * v93, &v276);
              sub_8085C(&aBlock);
              if (swift_dynamicCast())
              {
                v95 = HIBYTE(v283[1]) & 0xF;
                if ((v283[1] & 0x2000000000000000) == 0)
                {
                  v95 = v283[0] & 0xFFFFFFFFFFFFLL;
                }

                if (v95)
                {
                  v273 = v15;
                  v270 = &v243;
                  __chkstk_darwin();
                  v241 = v97;
                  v242 = v96;
                  v268 = v96;
                  v98 = objc_allocWithZone(MPIdentifierSet);
                  a1 = swift_allocObject();
                  a1[2] = sub_1A4A1C;
                  a1[3] = v240;
                  v281 = sub_C3FB8;
                  v282 = a1;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v280 = sub_41A314;
                  *(&v280 + 1) = &block_descriptor_108_2;
                  v99 = _Block_copy(&aBlock);

                  v100 = v77;
                  v22 = [v98 initWithModelKind:v100 block:v99];
                  _Block_release(v99);

                  a2 = swift_isEscapingClosureAtFileLocation();

                  if (a2)
                  {
                    goto LABEL_273;
                  }

                  v101 = [objc_opt_self() sharedServerObjectDatabase];
                  v102 = [v101 modelObjectMatchingIdentifierSet:v22 propertySet:v271];

                  if (v102)
                  {
                    v103 = [v102 recordLabel];
                    v15 = v273;
                    if (v103)
                    {
                      v104 = v103;
                      v105 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v103 personalizationStyle:1];
                      v264 = v22;
                      v270 = v104;
                      v106 = v105;
                      [v269 appendItem:v105];

                      v107 = objc_allocWithZone(MPStoreItemMetadata);
                      v108 = sub_AB8FD0().super.isa;
                      v109 = [v107 initWithStoreMusicAPIDictionary:v108];

                      [v272 appendItem:v109];
                    }

                    else
                    {
                    }
                  }

                  else
                  {

                    v15 = v273;
                  }

                  goto LABEL_83;
                }
              }
            }

            else
            {
              sub_8085C(&aBlock);
            }

LABEL_83:
            a3 += 8;
            if (!--v61)
            {
              goto LABEL_165;
            }

            continue;
          }
        }

        v203 = *(v259 + v202);
        *&v275 = 25705;
        *(&v275 + 1) = 0xE200000000000000;

        sub_ABAD10();
        if (!*(v203 + 16) || (v204 = sub_2EC004(&aBlock), v201 = v258, (v205 & 1) == 0))
        {
          sub_8085C(&aBlock);
LABEL_226:

          goto LABEL_227;
        }

        sub_808B0(*(v203 + 56) + 32 * v204, &v276);
        sub_8085C(&aBlock);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_226;
        }

        v206 = HIBYTE(*(&v275 + 1)) & 0xFLL;
        if ((*(&v275 + 1) & 0x2000000000000000) == 0)
        {
          v206 = v275 & 0xFFFFFFFFFFFFLL;
        }

        if (!v206)
        {

          goto LABEL_226;
        }

        v15 = &v243;
        __chkstk_darwin();
        v241 = v208;
        v242 = v207;
        v250 = v207;
        v209 = objc_allocWithZone(MPIdentifierSet);
        v138 = swift_allocObject();
        v138[2] = sub_1A5A28;
        v138[3] = v240;
        v281 = sub_C3FB8;
        v282 = v138;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v280 = sub_41A314;
        *(&v280 + 1) = &block_descriptor_147;
        v210 = _Block_copy(&aBlock);

        v211 = v251;
        v22 = [v209 initWithModelKind:v211 block:v210];
        _Block_release(v210);

        LOBYTE(v209) = swift_isEscapingClosureAtFileLocation();

        if (v209)
        {
          break;
        }

        v212 = [objc_opt_self() sharedServerObjectDatabase];
        v15 = [v212 modelObjectMatchingIdentifierSet:v22 propertySet:v257];

        a1 = v263;
        v77 = v256;
        v201 = v258;
        *&v253 = v15;
        if (v15)
        {
          v213 = *v252;
          if (*v252)
          {
            v214 = *(v252 + 8);

            v215 = v213(v253);
            sub_17654(v213, v214);
            if (v215)
            {
              objc_opt_self();
              v216 = swift_dynamicCastObjCClass();
              if (!v216)
              {
                goto LABEL_250;
              }

              v217 = v216;
              v218 = v248[1];
              if (v218)
              {
                v219 = *v248;
                v15 = v215;

                LOBYTE(v219) = sub_1A4B10(v217, v219, v218);

                if ((v219 & 1) == 0)
                {

                  goto LABEL_264;
                }
              }

              else
              {
                v220 = v215;
              }

              v221 = *(v264 + v247);

              if (v221 != 13)
              {
                v15 = v215;
                sub_AB9730();
                if (*(&dword_10 + (v283[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v283[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_AB97A0();
                }

                sub_AB97F0();
                v255 = v283[0];
                *(&v280 + 1) = v25;
                *&aBlock = v203;
                sub_9ACFC(&aBlock, &v276);
                v226 = v270;
                v227 = swift_isUniquelyReferenced_nonNull_native();
                *&v275 = v226;
                v229 = sub_2EC830(v217);
                v230 = v226[2];
                v231 = (v228 & 1) == 0;
                v232 = v230 + v231;
                if (__OFADD__(v230, v231))
                {
                  __break(1u);
LABEL_281:
                  __break(1u);
                  goto LABEL_282;
                }

                v233 = v228;
                if (v270[3] >= v232)
                {
                  if ((v227 & 1) == 0)
                  {
                    sub_332CF8();
                  }
                }

                else
                {
                  sub_32A698(v232, v227);
                  v234 = sub_2EC830(v217);
                  if ((v233 & 1) != (v235 & 1))
                  {
                    goto LABEL_285;
                  }

                  v229 = v234;
                }

                v270 = v275;
                if (v233)
                {
                  v236 = (v270[7] + 32 * v229);
                  __swift_destroy_boxed_opaque_existential_0(v236);
                  sub_9ACFC(&v276, v236);

                  v22 = v253;
                  *&v253 = v15;
                }

                else
                {
                  v237 = v270;
                  v270[(v229 >> 6) + 8] |= 1 << v229;
                  *(v237[6] + 8 * v229) = v217;
                  sub_9ACFC(&v276, (v237[7] + 32 * v229));
                  v238 = v237[2];
                  v163 = __OFADD__(v238, 1);
                  v239 = v238 + 1;
                  if (v163)
                  {
                    goto LABEL_281;
                  }

                  v270[2] = v239;
                }
              }

              else
              {
LABEL_250:
                v222 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v215 personalizationStyle:1];
                [v269 appendItem:v222];

                v223 = objc_allocWithZone(MPStoreItemMetadata);
                v224 = sub_AB8FD0().super.isa;
                v225 = [v223 initWithStoreMusicAPIDictionary:v224];

                [v272 appendItem:v225];
              }

LABEL_264:
              a1 = v263;
            }

            else
            {
            }

            v71 = &unk_DF4000;
            v77 = v256;
            v201 = v258;
            goto LABEL_227;
          }
        }

        else
        {
        }

        v71 = &unk_DF4000;
LABEL_227:
        ++v202;
        a3 = v266;
        if (v260 == v202)
        {
          goto LABEL_267;
        }
      }

      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      v138 = sub_6B870(0, v138[2] + 1, 1, v138);
      *v261 = v138;
    }

    v255 = _swiftEmptyArrayStorage;
    v71 = &unk_DF4000;
LABEL_267:

    v259 = 0;
    v257 = 0;
    v22 = v261;
    a2 = v264;
LABEL_176:
    v25 = &selRef_performWithResponseHandler_;
LABEL_177:
    v174 = *(a2 + *(v71 + 51));
    v175 = variable initialization expression of Library.Context.useDownloadedContentOnly;
    if (v174 > 6)
    {
      if (v174 > 10)
      {
        if (v174 == 11)
        {
          v175 = sub_1A5CBC;
          LOBYTE(v174) = 1;
        }

        else
        {
          if (v174 != 12)
          {

            v271 = v267;
            goto LABEL_215;
          }

          LOBYTE(v174) = 0;
          v175 = sub_1A5900;
        }
      }

      else
      {
        if ((v174 - 8) < 3)
        {
          goto LABEL_194;
        }

        v175 = sub_1A5908;
      }

      goto LABEL_193;
    }

    if (v174 <= 2)
    {
      if (v174)
      {
        if (v174 == 1)
        {
          LOBYTE(v174) = 0;
          v175 = sub_1A5980;
        }

        else
        {
          v175 = sub_1A5978;
        }
      }

      else
      {
        LOBYTE(v174) = 1;
        v175 = sub_1A5D0C;
      }

LABEL_193:
      *(swift_allocObject() + 16) = v174;
      goto LABEL_194;
    }

    if ((v174 - 3) >= 3)
    {
      v175 = sub_1A5940;
      goto LABEL_193;
    }

LABEL_194:

    *&aBlock = sub_3432CC(v176);
    v177 = v273;
    sub_1A585C(&aBlock, v175);
    a6 = v177;
    if (v177)
    {
      goto LABEL_284;
    }

    v32 = aBlock;
    if ((aBlock & 0x8000000000000000) != 0 || (aBlock & 0x4000000000000000) != 0)
    {
LABEL_269:
      v30 = sub_ABB060();
    }

    else
    {
      v30 = *(aBlock + 16);
    }

    v273 = a6;
    if (!v30)
    {
      goto LABEL_214;
    }

    v22 = v269;
    if (v30 >= 1)
    {
      v178 = 0;
      v263 = a1;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v179 = sub_361234(v178, v32);
        }

        else
        {
          v179 = *(v32 + 8 * v178 + 32);
        }

        v180 = v179;
        v181 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v179 personalizationStyle:1];
        [v22 appendItem:v181];

        if (a3)
        {
          if (v270[2])
          {
            v182 = sub_2EC830(v180);
            if (v183)
            {
              sub_808B0(v270[7] + 32 * v182, &aBlock);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
              if (swift_dynamicCast())
              {
                v184 = objc_allocWithZone(MPStoreItemMetadata);
                a3 = sub_AB8FD0().super.isa;
                v185 = [v184 initWithStoreMusicAPIDictionary:a3];

                LOBYTE(a3) = v266;
                [v272 appendItem:v185];

                a1 = v263;
              }
            }
          }
        }

        else if (v270[2])
        {
          v186 = sub_2EC830(v180);
          if (v187)
          {
            sub_808B0(v270[7] + 32 * v186, &aBlock);
            sub_13C80(0, &unk_DF43D0, MPStoreItemMetadata_ptr);
            if (swift_dynamicCast())
            {
              v188 = v276;
              [v272 appendItem:v188];
            }
          }
        }

        ++v178;
      }

      while (v30 != v178);
LABEL_214:

      v22 = v261;
      a2 = v264;
      v25 = &selRef_performWithResponseHandler_;
LABEL_215:
      v33 = v259;
      v34 = v257;

LABEL_57:
      v15 = v273;
LABEL_58:
      v76 = [a2 v25[250]];
      if (v76)
      {
        v77 = v76;
        v25 = v34;
        [v76 modelClass];
        swift_getObjCClassMetadata();
        sub_13C80(0, &unk_DF1280, MPModelRecordLabel_ptr);
        if (swift_dynamicCastMetatype())
        {
          v78 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailMusicKitRelationshipsResponse;
          swift_beginAccess();
          v79 = *(a1 + v78);
          if (v79)
          {
            strcpy(v283, "record-labels");
            HIWORD(v283[1]) = -4864;

            sub_ABAD10();
            v34 = v25;
            if (*(v79 + 16) && (v80 = sub_2EC004(&aBlock), (v81 & 1) != 0))
            {
              sub_808B0(*(v79 + 56) + 32 * v80, &v276);
              sub_8085C(&aBlock);
            }

            else
            {
              sub_8085C(&aBlock);
              v276 = 0u;
              v277 = 0u;
            }

            if (*(&v277 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
              if (swift_dynamicCast())
              {
                a1 = v22;
                v22 = aBlock;
                v283[0] = 1635017060;
                v283[1] = 0xE400000000000000;
                sub_ABAD10();
                if (v22[2] && (v84 = sub_2EC004(&aBlock), (v85 & 1) != 0))
                {
                  sub_808B0(&v22[7][32 * v84], &v276);
                  sub_8085C(&aBlock);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0, &unk_B09430);
                  if (swift_dynamicCast())
                  {
                    v86 = v283[0];
                    if (*(v283[0] + 16))
                    {
                      v271 = [a2 itemProperties];
                      if (v271)
                      {
                        v267 = v86;
                        v87 = sub_AB9260();
                        [v269 appendSection:v87];

                        v88 = sub_AB9260();
                        [v272 appendSection:v88];

                        v71 = *a1;
                        v89 = swift_isUniquelyReferenced_nonNull_native();
                        *a1 = v71;
                        v259 = v33;
                        if ((v89 & 1) == 0)
                        {
                          goto LABEL_276;
                        }

                        goto LABEL_75;
                      }
                    }

                    goto LABEL_100;
                  }
                }

                else
                {
                  sub_8085C(&aBlock);
                }
              }

              goto LABEL_100;
            }
          }

          else
          {
            v276 = 0u;
            v277 = 0u;
            v34 = v25;
          }

          sub_12E1C(&v276, &unk_DE8E40, &unk_AF8050);
          goto LABEL_100;
        }

        v82 = v33;
LABEL_65:
        v83 = v25;
      }

      else
      {
LABEL_100:
        v82 = v33;
        v83 = v34;
      }

      return sub_17654(v82, v83);
    }

    __break(1u);
LABEL_271:
    swift_once();
  }

  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  v61 = sub_6B870(0, *(v61 + 2) + 1, 1, v61);
  *v22 = v61;
LABEL_106:
  v115 = *(v61 + 2);
  v114 = *(v61 + 3);
  if (v115 >= v114 >> 1)
  {
    v61 = sub_6B870((v114 > 1), v115 + 1, 1, v61);
    *v22 = v61;
  }

  *(v61 + 2) = v115 + 1;
  v61[v115 + 32] = 0;
  a6 = v258;
  v116 = *(v258 + 16);
  if (!v116)
  {
    v259 = 0;
    v118 = 0;
    v255 = _swiftEmptyArrayStorage;
LABEL_171:
    v71 = &unk_DF4000;
LABEL_172:
    v278 = 0;
    v276 = 0u;
    v277 = 0u;
    v257 = v118;
LABEL_173:

    goto LABEL_177;
  }

  v117 = 0;
  v118 = 0;
  v259 = 0;
  v250 = (a2 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText);
  v247 = a12;
  v246 = a11;
  v245 = &v280;
  v119 = (v258 + 32);
  v248 = (v116 - 1);
  v255 = _swiftEmptyArrayStorage;
  v244 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption;
  v263 = a1;
  v256 = v116;
  v249 = (v258 + 32);
  while (2)
  {
    v257 = v118;
    while (2)
    {
      v32 = &v119[2 * v117];
      a3 = v117;
      while (2)
      {
        if (a3 >= *(a6 + 16))
        {
          __break(1u);
          goto LABEL_269;
        }

        *&aBlock = a3;
        sub_808B0(v32, &aBlock + 8);
        v276 = aBlock;
        v277 = v280;
        v278 = v281;
        if (!v281)
        {
          a3 = v266;
          v71 = &unk_DF4000;
          goto LABEL_173;
        }

        v253 = aBlock;
        sub_9ACFC((&v276 + 8), &aBlock);
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v280 + 1));
        v120 = sub_ABB3A0();
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        v121 = [v271 childStorePlatformDictionaryForStoreID:v120];
        swift_unknownObjectRelease();
        if (!v121)
        {
          goto LABEL_114;
        }

        v260 = a3;
        v15 = &protocol witness table for AnyHashable;
        sub_AB8FF0();

        v122 = objc_allocWithZone(MPStoreItemMetadata);
        v123 = v271;
        v124 = v268;
        v125 = sub_AB8FD0().super.isa;
        v126 = [v122 initWithStorePlatformDictionary:v125 parentStoreItemMetadata:v123];

        v127 = [v124 modelObjectWithStoreItemMetadata:v126 userIdentity:v265];
        if (!v127)
        {
          v22 = v261;
          a1 = v263;
          v25 = &selRef_performWithResponseHandler_;
          a3 = v260;
          goto LABEL_113;
        }

        v22 = v127;
        v128 = *v252;
        a3 = v260;
        if (!*v252)
        {
          goto LABEL_125;
        }

        v251 = v126;
        v129 = *(v252 + 8);

        v130 = v128(v22);
        sub_17654(v128, v129);
        v25 = &selRef_performWithResponseHandler_;
        if (!v130)
        {
          v126 = v251;
          goto LABEL_127;
        }

        objc_opt_self();
        v131 = swift_dynamicCastObjCClass();
        if (!v131)
        {
          a1 = v263;
          goto LABEL_135;
        }

        v132 = v131;
        v133 = v250[1];
        if (!v133)
        {
          v136 = v130;
          goto LABEL_131;
        }

        v134 = *v250;
        v135 = v130;

        if ((sub_1A4B10(v132, v134, v133) & 1) == 0)
        {

          v22 = v135;
          v126 = v135;
          a2 = v264;
LABEL_125:
          v25 = &selRef_performWithResponseHandler_;
LABEL_127:

          v22 = v261;
          a1 = v263;
LABEL_113:

LABEL_114:
          ++a3;
          v32 += 32;
          a6 = v258;
          if (v256 == a3)
          {
            goto LABEL_170;
          }

          continue;
        }

        break;
      }

LABEL_131:
      v25 = [v132 identifiers];
      v137 = swift_allocObject();
      v137[2] = v246;
      v137[3] = v132;
      v137[4] = v247;
      v137[5] = v253;
      v138 = v130;
      sub_17654(v259, v257);
      v139 = swift_allocObject();
      *(v139 + 16) = sub_1A5A1C;
      *(v139 + 24) = v137;
      v257 = v137;
      v281 = sub_57B84;
      v282 = v139;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v280 = sub_41A314;
      *(&v280 + 1) = &block_descriptor_140_1;
      v140 = _Block_copy(&aBlock);

      v130 = [v132 copyWithIdentifiers:v25 block:v140];

      _Block_release(v140);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_278;
      }

      a2 = v264;
      a1 = v263;
      v25 = &selRef_performWithResponseHandler_;
      if (*(v264 + v244) == 13 || (objc_opt_self(), (v142 = swift_dynamicCastObjCClass()) == 0))
      {

        v259 = sub_1A5A1C;
LABEL_135:
        v143 = v272;
        v144 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v130 personalizationStyle:1];
        [v269 appendItem:v144];

        v145 = v251;
        [v143 appendItem:v251];

        v117 = v260 + 1;
        v22 = v261;
        a6 = v258;
        v119 = v249;
        if (v248 != v260)
        {
          continue;
        }

LABEL_170:
        v118 = v257;
        a3 = v266;
        goto LABEL_171;
      }

      break;
    }

    v146 = v142;
    v147 = v130;
    sub_AB9730();
    if (*(&dword_10 + (v283[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v283[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v255 = v283[0];
    *(&v280 + 1) = sub_13C80(0, &unk_DF43D0, MPStoreItemMetadata_ptr);
    v148 = v251;
    *&aBlock = v251;
    sub_9ACFC(&aBlock, &v275);
    v149 = v148;
    v150 = v270;
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v274[0] = v150;
    v153 = sub_2EC830(v146);
    v154 = v150[2];
    v155 = (v152 & 1) == 0;
    v156 = v154 + v155;
    if (!__OFADD__(v154, v155))
    {
      v157 = v152;
      if (v270[3] >= v156)
      {
        if ((v151 & 1) == 0)
        {
          sub_332CF8();
        }
      }

      else
      {
        sub_32A698(v156, v151);
        v158 = sub_2EC830(v146);
        if ((v157 & 1) != (v159 & 1))
        {
          goto LABEL_285;
        }

        v153 = v158;
      }

      v270 = v274[0];
      if (v157)
      {
        v160 = (v270[7] + 32 * v153);
        __swift_destroy_boxed_opaque_existential_0(v160);
        sub_9ACFC(&v275, v160);

        v22 = v147;
      }

      else
      {
        v161 = v270;
        v270[(v153 >> 6) + 8] |= 1 << v153;
        *(v161[6] + 8 * v153) = v146;
        sub_9ACFC(&v275, (v161[7] + 32 * v153));

        v162 = v161[2];
        v163 = __OFADD__(v162, 1);
        v164 = v162 + 1;
        if (v163)
        {
          goto LABEL_283;
        }

        v270[2] = v164;
      }

      v165 = v260;
      v117 = v260 + 1;

      v259 = sub_1A5A1C;
      v166 = v248 == v165;
      v22 = v261;
      a2 = v264;
      a1 = v263;
      v25 = &selRef_performWithResponseHandler_;
      a3 = v266;
      v71 = &unk_DF4000;
      a6 = v258;
      v119 = v249;
      v118 = v257;
      if (v166)
      {
        goto LABEL_172;
      }

      continue;
    }

    break;
  }

LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:

  __break(1u);
LABEL_285:
  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_1A0EF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A5D10;
  *(v7 + 24) = v6;
  v19 = sub_C3FB8;
  v20 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_4522E8;
  v18 = &block_descriptor_164;
  v8 = _Block_copy(&v15);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
    return;
  }

  sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];
    sub_AB92A0();

    v12 = sub_AB9260();
    v19 = UIScreen.Dimensions.size.getter;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_4522E8;
    v18 = &block_descriptor_167_0;
    v13 = _Block_copy(&v15);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

void sub_1A1180(void *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = sub_486A50(*a2);
    v20 = a1;
    if (v12)
    {
      v13 = [a3 identifiers];
      v14 = [v13 universalStore];

      if (v14)
      {
        v15 = [v14 adamID];
        swift_unknownObjectRelease();
        v16 = *a4;
        if (*(v16 + 16) && (v17 = sub_2F5A90(v15), (v18 & 1) != 0))
        {
          v19 = *(*(v16 + 56) + 8 * v17);
        }

        else
        {
          v19 = 0;
        }

        [v11 setSocialContributor:v19];
      }
    }

    [v11 setPosition:a5];
  }
}

void sub_1A12E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A5A70;
  *(v7 + 24) = v6;
  v19 = sub_C3FB8;
  v20 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_4522E8;
  v18 = &block_descriptor_177;
  v8 = _Block_copy(&v15);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
    return;
  }

  sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];
    sub_AB92A0();

    v12 = sub_AB9260();
    v19 = UIScreen.Dimensions.size.getter;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_4522E8;
    v18 = &block_descriptor_180;
    v13 = _Block_copy(&v15);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

id sub_1A1570(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AB9260();
  v5 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

  [a1 setAdamID:v5];

  return [a1 setSubscriptionAdamID:v5];
}

void sub_1A15E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A5A8C;
  *(v7 + 24) = v6;
  v19 = sub_C3FB8;
  v20 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_4522E8;
  v18 = &block_descriptor_190;
  v8 = _Block_copy(&v15);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
    return;
  }

  sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];
    sub_AB92A0();

    v12 = sub_AB9260();
    v19 = UIScreen.Dimensions.size.getter;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_4522E8;
    v18 = &block_descriptor_193;
    v13 = _Block_copy(&v15);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

id sub_1A1878(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AB9260();
  v5 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

  return [a1 setAdamID:v5];
}

void sub_1A18DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, char *a9)
{
  v14 = a9;
  if (a1)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = objc_allocWithZone(type metadata accessor for JSContainerDetailModelResponse());
      v124 = a1;
      v21 = sub_1A42E4(a3, v19, 0, v20);
      swift_beginAccess();
      v123 = a7;
      if (*(a4 + 24) || (swift_beginAccess(), *(a5 + 24)))
      {
        swift_beginAccess();
        v22 = *(a6 + 16);
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = 0;
          v25 = v22 + 32;
          while (*(v25 + v24) == 1)
          {
            if (v23 == ++v24)
            {
              goto LABEL_59;
            }
          }

          v119 = v19;
          if (qword_DE6940 != -1)
          {
            swift_once();
          }

          v39 = sub_AB4BC0();
          __swift_project_value_buffer(v39, qword_E71120);
          v40 = v124;

          v41 = sub_AB4BA0();
          v42 = sub_AB9F50();

          v118 = v42;
          if (os_log_type_enabled(v41, v42))
          {
            log = v41;
            v117 = v40;
            v120 = v21;
            v43 = swift_slowAlloc();
            v127[0] = swift_slowAlloc();
            *v43 = 136446978;
            *(v43 + 4) = sub_425E68(v123, a8, v127);
            *(v43 + 12) = 2082;
            swift_beginAccess();
            v19 = v119;
            if (*(a4 + 24))
            {
              v44 = *(a4 + 16);
              v45 = *(a4 + 24);
            }

            else
            {
              v44 = 1701736302;
              v45 = 0xE400000000000000;
            }

            v71 = sub_425E68(v44, v45, v127);

            *(v43 + 14) = v71;
            *(v43 + 22) = 2082;
            swift_beginAccess();
            if (*(a5 + 24))
            {
              v72 = *(a5 + 16);
              v21 = *(a5 + 24);
            }

            else
            {
              v72 = 1701736302;
              v21 = 0xE400000000000000;
            }

            v73 = sub_425E68(v72, v21, v127);

            *(v43 + 24) = v73;
            *(v43 + 32) = 2050;
            v74 = [v119 results];
            if (!v74)
            {

              __break(1u);
LABEL_97:

              __break(1u);
              goto LABEL_98;
            }

            v75 = v74;
            v76 = [v74 numberOfItemsInSection:v24];

            *(v43 + 34) = v76;
            _os_log_impl(&dword_0, log, v118, "Request=(%{public}s) Container detail model request for tracks (storeID=%{public}s, libraryID:=%{public}s) finished with result count=%{public}ld", v43, 0x2Au);
            swift_arrayDestroy();

            v21 = v120;
          }

          else
          {

            v19 = v119;
          }
        }

LABEL_59:
        swift_beginAccess();
        v77 = *(a6 + 16);
        v78 = *(v77 + 16);
        if (v78)
        {
          v79 = 0;
          v80 = v77 + 32;
          while ((*(v80 + v79) & 1) == 0)
          {
            if (v78 == ++v79)
            {
              goto LABEL_95;
            }
          }

          v121 = v21;
          if (qword_DE6940 != -1)
          {
            swift_once();
          }

          v81 = sub_AB4BC0();
          __swift_project_value_buffer(v81, qword_E71120);
          v21 = v124;

          v82 = sub_AB4BA0();
          v83 = sub_AB9F50();

          if (!os_log_type_enabled(v82, v83))
          {

LABEL_94:
            v21 = v121;
            goto LABEL_95;
          }

          v84 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v126 = v119;
          *v84 = 136446978;
          *(v84 + 4) = sub_425E68(v123, a8, &v126);
          *(v84 + 12) = 2082;
          swift_beginAccess();
          if (*(a4 + 24))
          {
            v85 = *(a4 + 16);
            v86 = *(a4 + 24);
          }

          else
          {
            v85 = 1701736302;
            v86 = 0xE400000000000000;
          }

          v87 = sub_425E68(v85, v86, &v126);

          *(v84 + 14) = v87;
          *(v84 + 22) = 2082;
          swift_beginAccess();
          if (*(a5 + 24))
          {
            v88 = *(a5 + 16);
            v89 = *(a5 + 24);
          }

          else
          {
            v88 = 1701736302;
            v89 = 0xE400000000000000;
          }

          v90 = sub_425E68(v88, v89, &v126);

          *(v84 + 24) = v90;
          *(v84 + 32) = 2050;
          v91 = [v19 results];
          if (v91)
          {
            v92 = v91;
            v93 = [v91 numberOfItemsInSection:v79];

            *(v84 + 34) = v93;
            _os_log_impl(&dword_0, v82, v83, "Request=(%{public}s) Container detail model request for record labels (storeID=%{public}s, libraryID:=%{public}s) finished with result count=%{public}ld", v84, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_94;
          }

          goto LABEL_97;
        }
      }

      else
      {
        swift_beginAccess();
        v54 = *(a6 + 16);
        v55 = *(v54 + 16);
        if (v55)
        {
          v56 = 0;
          v57 = v54 + 32;
          while (*(v57 + v56) == 1)
          {
            if (v55 == ++v56)
            {
              goto LABEL_82;
            }
          }

          if (qword_DE6940 != -1)
          {
            swift_once();
          }

          v94 = sub_AB4BC0();
          __swift_project_value_buffer(v94, qword_E71120);
          v95 = v124;

          v96 = sub_AB4BA0();
          v97 = sub_AB9F50();

          if (os_log_type_enabled(v96, v97))
          {
            v119 = v95;
            v122 = v21;
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v127[0] = v99;
            *v98 = 136446466;
            *(v98 + 4) = sub_425E68(v123, a8, v127);
            *(v98 + 12) = 2050;
            v100 = [v19 results];
            if (!v100)
            {
LABEL_98:

              __break(1u);
              goto LABEL_99;
            }

            v101 = v100;
            v102 = [v100 numberOfItemsInSection:v56];

            *(v98 + 14) = v102;
            _os_log_impl(&dword_0, v96, v97, "Request=(%{public}s) Finished with tracks count=%{public}ld", v98, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v99);

            v21 = v122;
            a7 = v123;
          }

          else
          {

            a7 = v123;
          }
        }

LABEL_82:
        swift_beginAccess();
        v103 = *(a6 + 16);
        v104 = *(v103 + 16);
        if (v104)
        {
          v105 = 0;
          v106 = v103 + 32;
          while ((*(v106 + v105) & 1) == 0)
          {
            if (v104 == ++v105)
            {
              goto LABEL_95;
            }
          }

          v121 = v21;
          if (qword_DE6940 != -1)
          {
            swift_once();
          }

          v107 = sub_AB4BC0();
          __swift_project_value_buffer(v107, qword_E71120);
          v21 = v124;

          v108 = sub_AB4BA0();
          v109 = sub_AB9F50();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v125[0] = v111;
            *v110 = 136446466;
            *(v110 + 4) = sub_425E68(a7, a8, v125);
            *(v110 + 12) = 2050;
            v112 = [v19 results];
            if (!v112)
            {
LABEL_99:

              __break(1u);
              return;
            }

            v113 = v112;
            v114 = [v112 numberOfItemsInSection:v105];

            *(v110 + 14) = v114;
            _os_log_impl(&dword_0, v108, v109, "Request=(%{public}s) Finished with record label count=%{public}ld", v110, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v111);
          }

          else
          {
          }

          v14 = a9;
          goto LABEL_94;
        }
      }

LABEL_95:
      v115 = v21;
      [v14 finishWithError:0];
      (*&v14[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(v115, 0);

      return;
    }
  }

  if (a2)
  {
    swift_beginAccess();
    if (*(a4 + 24) || (swift_beginAccess(), *(a5 + 24)))
    {
      v26 = a7;
      swift_errorRetain();
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E71120);

      swift_errorRetain();
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v30 = 136446978;
        *(v30 + 4) = sub_425E68(v26, a8, v125);
        *(v30 + 12) = 2082;
        swift_beginAccess();
        if (*(a4 + 24))
        {
          v31 = *(a4 + 16);
          v32 = *(a4 + 24);
        }

        else
        {
          v31 = 1701736302;
          v32 = 0xE400000000000000;
        }

        v46 = sub_425E68(v31, v32, v125);

        *(v30 + 14) = v46;
        *(v30 + 22) = 2082;
        swift_beginAccess();
        v47 = a9;
        if (*(a5 + 24))
        {
          v48 = *(a5 + 16);
          v49 = *(a5 + 24);
        }

        else
        {
          v48 = 1701736302;
          v49 = 0xE400000000000000;
        }

        v50 = sub_425E68(v48, v49, v125);

        *(v30 + 24) = v50;
        *(v30 + 32) = 2082;
        swift_getErrorValue();
        v51 = sub_ABB520();
        v53 = sub_425E68(v51, v52, v125);

        *(v30 + 34) = v53;
        _os_log_impl(&dword_0, v28, v29, "Request=(%{public}s) (storeID=%{public}s, libraryID:=%{public}s failed with error=%{public}s", v30, 0x2Au);
        swift_arrayDestroy();

        goto LABEL_45;
      }
    }

    else
    {
      v58 = a7;
      swift_errorRetain();
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v59 = sub_AB4BC0();
      __swift_project_value_buffer(v59, qword_E71120);

      swift_errorRetain();
      v60 = sub_AB4BA0();
      v61 = sub_AB9F30();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v128[0] = swift_slowAlloc();
        *v62 = 136446466;
        *(v62 + 4) = sub_425E68(v58, a8, v128);
        *(v62 + 12) = 2082;
        swift_getErrorValue();
        v63 = sub_ABB520();
        v65 = sub_425E68(v63, v64, v128);

        *(v62 + 14) = v65;
        _os_log_impl(&dword_0, v60, v61, "Request=(%{public}s) Failed with error=%{public}s", v62, 0x16u);
        swift_arrayDestroy();
      }
    }

    v47 = a9;
LABEL_45:
    swift_errorRetain();
    v66 = sub_AB3040();
    [v47 finishWithError:v66];

    (*&v47[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, a2);

    return;
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v33 = sub_AB4BC0();
  __swift_project_value_buffer(v33, qword_E71120);

  v34 = sub_AB4BA0();
  v35 = sub_AB9F30();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v36 = 136446722;
    *(v36 + 4) = sub_425E68(a7, a8, v128);
    *(v36 + 12) = 2082;
    swift_beginAccess();
    if (*(a4 + 24))
    {
      v37 = *(a4 + 16);
      v38 = *(a4 + 24);
    }

    else
    {
      v37 = 1701736302;
      v38 = 0xE400000000000000;
    }

    v67 = sub_425E68(v37, v38, v128);

    *(v36 + 14) = v67;
    *(v36 + 22) = 2082;
    swift_beginAccess();
    if (*(a5 + 24))
    {
      v68 = *(a5 + 16);
      v69 = *(a5 + 24);
    }

    else
    {
      v68 = 1701736302;
      v69 = 0xE400000000000000;
    }

    v70 = sub_425E68(v68, v69, v128);

    *(v36 + 24) = v70;
    _os_log_impl(&dword_0, v34, v35, "Request=(%{public}s) Failed with no personalization response and no error, (storeID=%{public}s, libraryID:=%{public}s", v36, 0x20u);
    swift_arrayDestroy();
  }

  [a9 finishWithError:0];
  (*&a9[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, 0);
}