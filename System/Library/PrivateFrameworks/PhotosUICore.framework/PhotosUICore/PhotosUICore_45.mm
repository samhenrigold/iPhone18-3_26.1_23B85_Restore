uint64_t sub_1A41D4D50(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_1A524CC54();
  v6[2] = v4;
  return sub_1A3C67884(a1, v6, "PhotosUICore/LemonadeMediaTypesFeature.swift", 44, 2u, 400);
}

uint64_t sub_1A41D4DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41D4E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41D4EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A41D4F34(uint64_t a1)
{
  if (!qword_1EB1204A0)
  {
    sub_1A5240E64();
    type metadata accessor for LemonadeMediaTypesEditableListModel(255);
    sub_1A41D2ED0(&qword_1EB126058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1204A0);
    }
  }
}

uint64_t sub_1A41D4FE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_1A41D4EB8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t PickerMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id PickerConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PickerConfiguration.init()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___PXPickerConfiguration_clientBundleIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR___PXPickerConfiguration_assetsFilterPredicate;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_assetsFilterPredicate) = 0;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_selectionCoordinator) = 0;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_selectionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___PXPickerConfiguration_preselectedLocalIdentifiers) = 0;
  v4 = OBJC_IVAR___PXPickerConfiguration_includedLocalIdentifiers;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_includedLocalIdentifiers) = 0;
  v5 = OBJC_IVAR___PXPickerConfiguration_disabledLocalIdentifiers;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_disabledLocalIdentifiers) = 0;
  v6 = (v0 + OBJC_IVAR___PXPickerConfiguration_navigationTitle);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_targetAlbum) = 0;
  v7 = (v1 + OBJC_IVAR___PXPickerConfiguration_targetAlbumName);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_sourceAlbum) = 0;
  v8 = (v1 + OBJC_IVAR___PXPickerConfiguration_prompt);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_collectionList) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_allowDeselectionOfPreselectedItems) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_allowsSwipeToSelect) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_assetAspectRatio) = 0;
  swift_beginAccess();
  v9 = *(v1 + v3);
  *(v1 + v3) = 0;

  swift_beginAccess();
  *v2 = 0;
  v2[1] = 0;

  *(v1 + OBJC_IVAR___PXPickerConfiguration_collectionsAspectRatio) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_desiredCollectionSuggestions) = 0;
  swift_beginAccess();
  *(v1 + v5) = 0;

  *(v1 + OBJC_IVAR___PXPickerConfiguration_displayMode) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_disableAutoPlaybackInPreview) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludedCollections) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeDuplicates) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeHiddenAlbum) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeMapAlbum) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeRecentlyDeleted) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeRecovered) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeSharedAlbums) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeEmptyAlbums) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_hasClearBackgroundColor) = 0;
  swift_beginAccess();
  *(v1 + v4) = 0;

  *(v1 + OBJC_IVAR___PXPickerConfiguration_includeFeaturedCollections) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForAlbumPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForAssetPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForCollectionsPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForSharedAlbumPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForSharedCollectionPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isLimitedLibraryPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isSidebarVisible) = 0;
  swift_beginAccess();
  *v6 = 0;
  v6[1] = 0;

  swift_beginAccess();
  swift_beginAccess();
  sub_1A5244244();
  swift_allocObject();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41D5648@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D570C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_sourceType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D5750(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_sourceType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D5800@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D595C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D5A24()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_hasClearBackgroundColor;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D5A68(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_hasClearBackgroundColor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1A41D5B18@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A41D5B8C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x218))(&v4);
}

void sub_1A41D5BFC(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_displayMode;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A41D5C50(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___PXPickerConfiguration_displayMode;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A41D5D00@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x228))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D5DC8()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isLimitedLibraryPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D5E0C(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isLimitedLibraryPicker;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D5EBC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x240))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D5F84()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_reverseSortOrder;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D5FC8(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_reverseSortOrder;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D6078@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D60DC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x260);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D614C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_assetsFilterPredicate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D6198(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_assetsFilterPredicate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D6250@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x270))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D6318()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_disableAutoPlaybackInPreview;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D635C(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_disableAutoPlaybackInPreview;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D640C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x288))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D6470(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x290);

  return v2(v3);
}

double sub_1A41D64DC()
{
  swift_beginAccess();

  return result;
}

double sub_1A41D6524(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_photosSelection;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1A41D65DC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D66A4()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_selectionModeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D66E8(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_selectionModeEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D6798@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D685C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_selectionLimit;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D68A0(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_selectionLimit;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D6958@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D69BC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2D8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D6A2C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_selectionCoordinator;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D6A78(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_selectionCoordinator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D6B30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D6B94(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2F0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1A41D6C60(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___PXPickerConfiguration_selectionDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A41D6CCC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPickerConfiguration_selectionDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

uint64_t sub_1A41D6D6C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x300))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D6E34()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_showCheckmarkOnSourceAlbum;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D6E78(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_showCheckmarkOnSourceAlbum;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D6F28@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x318))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D6FF0()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_allowsSwipeToSelect;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D7034(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_allowsSwipeToSelect;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D70E4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x330))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D71AC()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_wantsNumberedSelectionStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D71F0(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_wantsNumberedSelectionStyle;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D72A0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x348))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D7368()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_allowDeselectionOfPreselectedItems;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D73AC(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_allowDeselectionOfPreselectedItems;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D745C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x360))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D75A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x378))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D76EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x390))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D7834@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D7990@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D7A58()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_showNavigationBar;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D7A9C(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_showNavigationBar;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D7B4C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D7C14()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isSidebarVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D7C58(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isSidebarVisible;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D7D08@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D7DD0()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForAssetPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D7E14(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForAssetPicker;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1A41D7F88()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_assetAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D7FCC(double a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_assetAspectRatio;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D807C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x420))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D8144()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeSharedAlbums;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D8188(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeSharedAlbums;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D8238@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x438))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D8300()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeHiddenAlbum;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D8344(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeHiddenAlbum;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D83F4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x450))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D84BC()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeEmptyAlbums;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D8500(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeEmptyAlbums;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D85B0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x468))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D8678()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForAlbumPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D86BC(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForAlbumPicker;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D876C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x480))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D8834()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForSharedAlbumPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D8878(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForSharedAlbumPicker;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D8928@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x498))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D89F0()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForSharedCollectionPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D8A34(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForSharedCollectionPicker;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D8AE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4B0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D8B48(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4B8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D8BB8()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_targetAlbum;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D8C04(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_targetAlbum;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D8CBC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4C8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D8E18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4E0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D8E7C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4E8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D8EEC()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_sourceAlbum;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D8F38(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_sourceAlbum;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D8FF0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4F8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D90B8()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_scrollToSourceAlbumWhenPresented;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D90FC(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_scrollToSourceAlbumWhenPresented;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D91AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x510))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D935C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x528))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9424()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_wantsPets;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D9468(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_wantsPets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1A41D95DC()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_collectionsAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D9620(double a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_collectionsAspectRatio;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D96D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x558))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D9734(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x560);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D97A4()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_collectionList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D97F0(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_collectionList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D98A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x570))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9970()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeRecentlyDeleted;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D99B4(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeRecentlyDeleted;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D9A64@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x588))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9B2C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeDuplicates;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D9B70(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeDuplicates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D9C20@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5A0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9CE8()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeMapAlbum;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D9D2C(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeMapAlbum;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D9DDC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9EA4()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeRecovered;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41D9EE8(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeRecovered;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D9F98@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5D0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41DA060()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForCollectionsPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41DA0A4(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForCollectionsPicker;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41DA154@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5E8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41DA218()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_desiredCollectionSuggestions;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41DA25C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_desiredCollectionSuggestions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41DA30C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x600))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41DA3D4()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_includeFeaturedCollections;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41DA418(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_includeFeaturedCollections;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41DA4C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x618))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41DA58C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludedCollections;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41DA5D0(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludedCollections;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41DA720(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
  if (v4 > 6)
  {
    return 1;
  }

  if (((1 << v4) & 0x65) == 0)
  {
    return a1 != 16;
  }

  result = (*((*v3 & *v1) + 0x618))();
  if (((result | a1) & 0x8000000000000000) == 0)
  {
    return (a1 & ~result) == 0;
  }

  __break(1u);
  return result;
}

BOOL sub_1A41DA7FC(_BOOL8 result, uint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return (result & ~a2) == 0;
  }

  __break(1u);
  return result;
}

id PickerConfiguration.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PickerConfiguration(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A41DA968()
{
  result = qword_1EB134C50;
  if (!qword_1EB134C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134C50);
  }

  return result;
}

uint64_t sub_1A41DCC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for LemonadeMemoriesCreationButton(uint64_t a1)
{
  result = qword_1EB17CED0;
  if (!qword_1EB17CED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41DCEA0@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  sub_1A41DD738(0, &qword_1EB134CA8, sub_1A41DD6FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v50 - v3;
  v4 = type metadata accessor for LemonadeMemoriesCreationButton(0);
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = v5;
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D93850();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41DD6FC(0);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A52453A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v50 - v14;
  sub_1A41DDA30(0, &qword_1EB128F90, MEMORY[0x1E69C14A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - v23;
  v25 = v1;
  v26 = *(v1 + *(v4 + 28));
  if (v26)
  {
    (*(*v26 + 192))(v22);
    (*(v11 + 56))(v20, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v20, 1, 1, v10);
  }

  sub_1A475C0F0(v20, v27, v24);
  v28 = MEMORY[0x1E69C14A0];
  sub_1A3C690A8(v20, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  v29 = *(*(v25 + *(v4 + 24)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  sub_1A41DEDAC(v24, v17, &qword_1EB128F90, v28, MEMORY[0x1E69E6720]);
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    sub_1A3C690A8(v17, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_1A41DDA94();
    sub_1A5249744();
    return sub_1A3C690A8(v24, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  }

  v30 = *(v11 + 32);
  v31 = v64;
  v30(v64, v17, v10);
  if ((static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)(v31) & 1) == 0 || (LOBYTE(v69[0]) = v29, !sub_1A475C390(v69)))
  {
    (*(v11 + 8))(v31, v10);
    goto LABEL_10;
  }

  v32 = *(v11 + 16);
  v54 = v11 + 16;
  v55 = v32;
  v33 = v63;
  v32(v63, v31, v10);
  v34 = v58;
  sub_1A41DEE84(v25, v58, type metadata accessor for LemonadeMemoriesCreationButton);
  v35 = *(v11 + 80);
  v53 = ((v35 + 16) & ~v35) + v12;
  v36 = (v35 + 16) & ~v35;
  v51 = v36;
  v52 = v35 | 7;
  v37 = (v53 + *(v56 + 80)) & ~*(v56 + 80);
  v38 = swift_allocObject();
  v30((v38 + v36), v33, v10);
  sub_1A41DEE1C(v34, v38 + v37, type metadata accessor for LemonadeMemoriesCreationButton);
  v39 = v59;
  sub_1A524B704();
  sub_1A41DD8E4(0);
  v40 = sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
  v41 = sub_1A5243474();
  v42 = sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  v43 = v61;
  v69[0] = v61;
  v69[1] = v41;
  v69[2] = v40;
  v69[3] = v42;
  swift_getOpaqueTypeConformance2();
  v44 = v62;
  sub_1A524A4C4();
  (*(v60 + 8))(v39, v43);
  v45 = v63;
  v46 = v64;
  v55(v63, v64, v10);
  v47 = swift_allocObject();
  v30((v47 + v51), v45, v10);
  v48 = (v44 + *(v65 + 36));
  *v48 = sub_1A41DEA14;
  v48[1] = v47;
  v48[2] = 0;
  v48[3] = 0;
  sub_1A3CE2A94(v44, v67);
  swift_storeEnumTagMultiPayload();
  sub_1A41DDA94();
  sub_1A5249744();
  sub_1A3CE2AF8(v44);
  (*(v11 + 8))(v46, v10);
  return sub_1A3C690A8(v24, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
}

void sub_1A41DD738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A41DD7A4(uint64_t a1)
{
  if (!qword_1EB134CB8)
  {
    sub_1A3D93850();
    sub_1A41DD8E4(255);
    sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
    sub_1A5243474();
    sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134CB8);
    }
  }
}

void sub_1A41DD8E4(uint64_t a1)
{
  if (!qword_1EB121F10)
  {
    sub_1A3D93850();
    sub_1A5243474();
    sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
    sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F10);
    }
  }
}

uint64_t sub_1A41DD9E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A41DDA30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A41DDA94()
{
  result = qword_1EB134CC0;
  if (!qword_1EB134CC0)
  {
    sub_1A41DD6FC(255);
    sub_1A3D93850();
    sub_1A41DD8E4(255);
    sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
    sub_1A5243474();
    sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134CC0);
  }

  return result;
}

void sub_1A41DDC00(uint64_t a1)
{
  v1 = sub_1A52453A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69C1498], v1, v3);
  v6 = sub_1A5245394();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    objc_opt_self();
    sub_1A40365B0();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A41DDDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LemonadeMemoriesCreationAvailabilityUtils.navigationPermission(for:)(a1, &v17);
  if (!v17)
  {
    sub_1A41DE148();
  }

  if (v17 == 1)
  {
    type metadata accessor for LemonadeMemoriesCreationButton(0);
    sub_1A3FF29A0(v10);
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
    {
      sub_1A5245C94();
    }

    sub_1A41DED4C(v10, sub_1A3D63A58);
    v12 = *a2;
    if (*(a2 + 8) == 1)
    {
      v13 = v12;
    }

    else
    {

      v14 = sub_1A524D254();
      v15 = sub_1A524A014();
      sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v12, 0);
      (*(v5 + 8))(v7, v4);
      v13 = v16;
      v12 = v16;
    }

    static LemonadeMemoriesCreationUnavailableAlert.show(state:viewController:photoLibrary:)(a1, 0, v12);
  }
}

void sub_1A41DE07C()
{
  v1 = *(sub_1A52453A4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LemonadeMemoriesCreationButton(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1A41DDDA0(v0 + v2, v5);
}

void sub_1A41DE148()
{
  v1 = v0;
  sub_1A41DDA30(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A5244854();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5249234();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  v20 = [v19 preferInternalEvaluationUI];

  if (v20)
  {
    v30 = v13;
    type metadata accessor for LemonadeMemoriesCreationButton(0);
    v31 = v1;
    sub_1A3FF29A0(v18);
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    if ((*(*(v21 - 8) + 48))(v18, 1, v21) != 1)
    {
      sub_1A5245C94();
    }

    sub_1A41DED4C(v18, sub_1A3D63A58);
    v13 = v30;
    v1 = v31;
  }

  v22 = *(*(*(v1 + *(type metadata accessor for LemonadeMemoriesCreationButton(0) + 24)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  (*(v8 + 104))(v10, *MEMORY[0x1E69C1008], v35);
  v23 = v22;
  v24 = sub_1A3C5A374();
  v25 = sub_1A3C6E9EC();
  LemonadeGenerativeMemoriesConfiguration.init(photoLibrary:memoryCreationAttributedText:startCreation:suggestionViewModel:transitionType:generationEntryPoint:)(v23, 0, v24 & 1, 0, v25, v10, v13);
  sub_1A41DEE84(v13, v7, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  swift_storeEnumTagMultiPayload();
  v26 = sub_1A52434D4();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  v27 = sub_1A3C30368();
  v28 = sub_1A4657324(v7, 0, v27 & 1, 0, 0, v4, 0, 0);
  sub_1A3E00630(v28);
  sub_1A3C690A8(v4, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
  sub_1A41DED4C(v7, type metadata accessor for LemonadeNavigationDestination);
  objc_opt_self();
  sub_1A40365BC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41DE804@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXMemoryCreationLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1A41DE8A8()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A3D93850();
  sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
  sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

void sub_1A41DEA14()
{
  v1 = *(sub_1A52453A4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A41DDC00(v2);
}

uint64_t sub_1A41DEA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v6 = type metadata accessor for LemonadeMemoriesCreationButton(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A41DDA30(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[6]) = a1;
  *(a3 + v6[7]) = a2;
  return result;
}

void sub_1A41DEB80(uint64_t a1)
{
  sub_1A3FF2CA0(319);
  if (v1 <= 0x3F)
  {
    sub_1A41DDA30(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v3 <= 0x3F)
      {
        sub_1A41DDA30(319, &qword_1EB125038, type metadata accessor for LemonadeMemoriesCreationAvailabilityManager, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A41DEC94()
{
  result = qword_1EB134CC8;
  if (!qword_1EB134CC8)
  {
    sub_1A41DD738(255, &qword_1EB134CD0, sub_1A41DD6FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A41DDA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134CC8);
  }

  return result;
}

uint64_t sub_1A41DED4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41DEDAC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A41DDA30(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A41DEE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41DEE84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1A41DEEEC(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() changeDetailsWithNoChanges];
  qword_1EB1EB0C0 = result;
  return result;
}

uint64_t *sub_1A41DEF28()
{
  if (qword_1EB175FC0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB0C0;
}

id LemonadeOneUpConfiguration.container.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1A3E041E4(v2, v3);
}

void LemonadeOneUpConfiguration.container.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1A3E041F8(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

uint64_t LemonadeOneUpConfiguration.Container.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524DC04();
  return sub_1A524ECE4();
}

void LemonadeOneUpConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1A524DC04();
  sub_1A524ECB4();
  if (v2 != 255)
  {
    MEMORY[0x1A590A010]((v2 & 1) != 0);
    sub_1A524DC04();
  }

  sub_1A524ECB4();
  sub_1A524ECB4();
  sub_1A524ECB4();
  if (!v4)
  {
    sub_1A524ECB4();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_1A524ECB4();
    return;
  }

  sub_1A524ECB4();
  v5 = v4;
  sub_1A524DC04();

  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_1A524ECB4();
  v6 = v3;
  sub_1A524DC04();
}

uint64_t LemonadeOneUpConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  LemonadeOneUpConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A41DF298@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  *a8 = result;
  *(a8 + 8) = v8;
  *(a8 + 16) = v9;
  *(a8 + 17) = a3;
  *(a8 + 18) = a4;
  *(a8 + 19) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t sub_1A41DF2BC()
{
  sub_1A524EC94();
  LemonadeOneUpConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A41DF300(uint64_t a1)
{
  sub_1A524EC94();
  LemonadeOneUpConfiguration.hash(into:)(v2);
  return sub_1A524ECE4();
}

id sub_1A41DF340(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3 == 255)
  {
    v7 = [objc_opt_self() dataSourceManagerWithAsset_];
  }

  else
  {
    v4 = *(v2 + 19);
    v5 = *(v2 + 8);
    v6 = objc_opt_self();
    if (v3)
    {
      v7 = [v6 dataSourceManagerWithAssets_];
    }

    else
    {
      LOBYTE(v9) = v4;
      v7 = [v6 dataSourceManagerForAssetCollection:v5 existingAssetsFetchResult:0 existingKeyAssetsFetchResult:0 fetchPropertySets:0 basePredicate:0 options:0 ignoreSharedLibraryFilters:v9];
    }
  }

  return v7;
}

int *sub_1A41DF3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1A3C79630(a1, a6);
  result = type metadata accessor for LemonadeOneUpPresentationContext(0);
  v12 = (a6 + result[5]);
  *v12 = a2;
  v12[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

id sub_1A41DF468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a3;
  v8 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = v9;
  v70 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v61[-v12];
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v71 = *(a1 + 17);
  v17 = *(a1 + 18);
  v62 = *(a1 + 19);
  v18 = *(a1 + 32);
  v73 = *(a1 + 24);
  if (v18)
  {
    v19 = v18;
    if ([v19 canPresentIntervention])
    {
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v22 = v72;
      v21[2] = v72;
      v21[3] = a4;
      v21[4] = v20;
      v78 = sub_1A41E360C;
      v79 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v75 = 1107296256;
      v76 = sub_1A3E01E70;
      v77 = &block_descriptor_21_3;
      v23 = _Block_copy(&aBlock);
      sub_1A3C66EE8(v22, a4);

      [v19 presentFromViewController:v4 completionHandler:v23];

      _Block_release(v23);
      return 0;
    }
  }

  if (v17)
  {
    [v4 px:1 setOneUpPresentationStyle:v11];
  }

  v67 = a4;
  [v4 px_enableOneUpPresentation];
  v65 = [v4 px_oneUpPresentation];
  v66 = a2;
  sub_1A41E2CB0(a2, v13);
  v63 = type metadata accessor for LemonadeOneUpPresentationDelegate(0);
  v25 = objc_allocWithZone(v63);
  *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_hiddenAssetReferences] = MEMORY[0x1E69E7CD0];
  v26 = OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_initialAsset;
  *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_initialAsset] = v14;
  v27 = v14;
  v28 = v73;
  *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_sourceImageViewSpec] = v73;
  v64 = v27;
  if (v16 == 255)
  {
    v36 = objc_opt_self();
    v37 = v27;
    sub_1A3E041E4(v15, 255);
    v38 = v18;
    v39 = v4;
    v40 = v37;
    v41 = v28;
    v35 = [v36 dataSourceManagerWithAsset_];
  }

  else
  {
    v29 = objc_opt_self();
    v30 = v27;
    sub_1A3E041E4(v15, v16);
    v31 = v18;
    v32 = v4;
    v33 = v30;
    v34 = v28;
    if (v16)
    {
      v35 = [v29 dataSourceManagerWithAssets_];
    }

    else
    {
      LOBYTE(v60) = v62;
      v35 = [v29 dataSourceManagerForAssetCollection:v15 existingAssetsFetchResult:0 existingKeyAssetsFetchResult:0 fetchPropertySets:0 basePredicate:0 options:0 ignoreSharedLibraryFilters:v60];
    }
  }

  v42 = v35;
  *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_assetsDataSourceManager] = v42;
  v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_wantsShowInLibraryButton] = v71;
  result = [*&v25[v26] photoLibrary];
  if (result)
  {
    v44 = result;

    sub_1A3E041F8(v15, v16);
    v45 = [objc_opt_self() mediaProviderWithLibrary_];

    *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_mediaProvider] = v45;
    swift_unknownObjectUnownedInit();
    sub_1A41E2CB0(v13, &v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context]);
    v80.receiver = v25;
    v80.super_class = v63;
    v46 = objc_msgSendSuper2(&v80, sel_init);

    sub_1A41E2D34(v13);
    v47 = v65;
    [v65 setStrongDelegate_];

    v48 = [v4 px_oneUpPresentation];
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    v51 = v72;
    v52 = v67;
    v50[2] = v72;
    v50[3] = v52;
    v50[4] = v49;
    v78 = sub_1A41E2D90;
    v79 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1A3E01E70;
    v77 = &block_descriptor_119;
    v53 = _Block_copy(&aBlock);
    sub_1A3C66EE8(v51, v52);

    [v48 waitForTransitionToFinishWithTimeout:v53 completionHandler:1.0];
    _Block_release(v53);

    v54 = [v4 px_oneUpPresentation];
    v55 = v70;
    sub_1A41E2CB0(v66, v70);
    v56 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v57 = swift_allocObject();
    sub_1A41E2D94(v55, v57 + v56);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1A41E2DF8;
    *(v58 + 24) = v57;
    v78 = sub_1A3D78DD0;
    v79 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1A3D77CC4;
    v77 = &block_descriptor_14_1;
    v59 = _Block_copy(&aBlock);

    v24 = [v54 startWithConfigurationHandler_];
    _Block_release(v59);

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41DFB44(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1A524E2B4();
    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v5 > *(v3 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1A41E134C(a1, a3);
    return v3;
  }

  v5 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v3 < 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  if (v5 <= sub_1A524E2B4() / 8)
  {
    goto LABEL_13;
  }

  v7 = sub_1A524E2B4();
  v3 = sub_1A41E156C(v6, v7);
LABEL_10:

  return sub_1A41E174C(a1, v3);
}

void sub_1A41DFC38(uint64_t a1, int a2)
{
  v34 = a2;
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v33 = sub_1A52434D4();
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRetain();
  sub_1A524E274();
  sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
  sub_1A41E3384();
  sub_1A524CF84();
  v8 = v38[4];
  v9 = v38[5];
  v10 = v40;
  v11 = v41;
  v28 = v39;
  v12 = (v39 + 64) >> 6;
  v13 = (v6 + 48);
  v29 = (v6 + 8);
  v30 = (v6 + 32);
  v31 = (v6 + 48);
  while (v8 < 0)
  {
    v20 = sub_1A524E304();
    if (!v20 || (v37 = v20, sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490), swift_dynamicCast(), v19 = v38[0], v17 = v10, v18 = v11, !v38[0]))
    {
LABEL_17:
      sub_1A3C42540(v8);
      return;
    }

LABEL_15:
    v36 = v18;
    sub_1A41E2BFC(v35 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context, v5);
    v21 = v33;
    if ((*v13)(v5, 1, v33) == 1)
    {
      sub_1A41E325C(v5, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C36260);
      v14 = 0;
    }

    else
    {
      v22 = v8;
      v23 = v5;
      v24 = v32;
      (*v30)(v32, v23, v21);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v38[3] = sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
      v38[0] = v19;
      v26 = v19;
      v14 = sub_1A524D364();

      v27 = v24;
      v5 = v23;
      v8 = v22;
      v13 = v31;
      (*v29)(v27, v21);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    [v14 setHidden_];

    v10 = v17;
    v11 = v36;
  }

  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_11:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      goto LABEL_17;
    }

    v16 = *(v9 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1A41E0100(void *a1, void *a2)
{
  v3 = v2;
  v58 = a1;
  v5 = sub_1A52423C4();
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v55 - v9;
  v10 = sub_1A524BEE4();
  isa = v10[-1].isa;
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A524BF64();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1A524BFC4();
  v57 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v55 - v16;
  sub_1A3F1B558(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A52423D4();
  v68 = *(v20 - 8);
  v69 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
  aBlock[0] = a2;
  v23 = a2;
  sub_1A52423A4();
  v24 = v3 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context;
  v25 = *(v24 + *(type metadata accessor for LemonadeOneUpPresentationContext(0) + 20));
  if (v25)
  {
    v25(v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v67;
      v27 = v65;
      (*(v67 + 32))(v65, v19, v5);
      v28 = sub_1A524D244();
      if (qword_1EB1754F0 != -1)
      {
        swift_once();
      }

      v29 = qword_1EB1754F8;
      v30 = *(v26 + 16);
      v30(v7, v27, v5);
      if (os_log_type_enabled(v29, v28))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        LODWORD(v66) = v28;
        v33 = v32;
        *v31 = 138412546;
        *(v31 + 4) = v23;
        *v32 = v23;
        *(v31 + 12) = 2112;
        sub_1A41E333C(&qword_1EB1292B8, MEMORY[0x1E69C1E00], MEMORY[0x1E69C1E08]);
        swift_allocError();
        v64 = v29;
        v30(v34, v7, v5);
        v35 = v23;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = *(v67 + 8);
        v37(v7, v5);
        *(v31 + 14) = v36;
        v33[1] = v36;
        _os_log_impl(&dword_1A3C1C000, v64, v66, "failed to scroll %@ to visible. Error: %@", v31, 0x16u);
        sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0);
        swift_arrayDestroy();
        MEMORY[0x1A590EEC0](v33, -1, -1);
        MEMORY[0x1A590EEC0](v31, -1, -1);
        v37(v27, v5);
      }

      else
      {
        v53 = *(v26 + 8);
        v53(v7, v5);
        v53(v27, v5);
      }
    }

    else if (*v19 == 1)
    {
      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v65 = sub_1A524D474();
      sub_1A524BFA4();
      v43 = v56;
      sub_1A524C014();
      v67 = *(v57 + 8);
      (v67)(v14, v66);
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      v46 = v58;
      *(v45 + 16) = v58;
      *(v45 + 24) = v44;
      v72 = sub_1A41E32BC;
      v73 = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      v71 = &block_descriptor_58_2;
      v47 = _Block_copy(aBlock);
      v48 = v46;

      v49 = v59;
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A41E333C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A3C36260(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v50 = v61;
      v51 = v64;
      sub_1A524E224();
      v52 = v65;
      MEMORY[0x1A5908790](v43, v49, v50, v47);
      _Block_release(v47);

      (*(isa + 1))(v50, v51);
      (*(v60 + 8))(v49, v62);
      (v67)(v43, v66);
    }
  }

  else
  {
    v38 = sub_1A524D244();
    if (qword_1EB1754F0 != -1)
    {
      swift_once();
    }

    v39 = qword_1EB1754F8;
    if (os_log_type_enabled(qword_1EB1754F8, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v23;
      *v41 = v23;
      v42 = v23;
      _os_log_impl(&dword_1A3C1C000, v39, v38, "failed to scroll %@ to visible. No request handler found.", v40, 0xCu);
      sub_1A41E325C(v41, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
      MEMORY[0x1A590EEC0](v41, -1, -1);
      MEMORY[0x1A590EEC0](v40, -1, -1);
    }
  }

  return (*(v68 + 8))(v22, v69);
}

id sub_1A41E0CD8(void *a1)
{
  v2 = v1;
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = sub_1A52434D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = v2 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context;
  sub_1A41E2BFC(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context, v8);
  v17 = v10[6];
  if (v17(v8, 1, v9) == 1)
  {
    sub_1A41E325C(v8, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C36260);
LABEL_6:
    v27 = *(v16 + *(type metadata accessor for LemonadeOneUpPresentationContext(0) + 24));
    v34 = v27;
    return v27;
  }

  v18 = v10[4];
  v40 = v10 + 4;
  v41 = v12;
  v39 = v18;
  v18(v15, v8, v9);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v42 = sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
  v47 = *&v42;
  *&v46[0] = a1;
  v43 = a1;
  v20 = sub_1A524D364();

  v21 = v10[1];
  v21(v15, v9);
  __swift_destroy_boxed_opaque_existential_0(v46);
  if (!v20)
  {
    goto LABEL_6;
  }

  v38 = v21;
  sub_1A3C52C70(0, &unk_1EB120990, &off_1E7721860);
  v22 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_sourceImageViewSpec);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = v20;
  v25 = v22;
  v26 = objc_allocWithZone(ObjCClassFromMetadata);
  [v24 bounds];
  v27 = [v26 initWithRect:v24 inCoordinateSpace:?];
  [v27 setImageViewSpec_];
  v28 = sub_1A3C52C70(0, &unk_1EB134DD8, 0x1E69DCEF8);
  UIView.ancestors<A>(ofType:maxCount:)(v28, 0, 1, v28);
  v29 = sub_1A524CA14();

  [v27 setContainingScrollViews_];

  v30 = v43;
  v45[3] = v42;
  v45[0] = v43;
  v31 = v16;
  v32 = v44;
  sub_1A41E2BFC(v31, v44);
  if (v17(v32, 1, v9) == 1)
  {
    v33 = v30;

    sub_1A41E325C(v32, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C36260);
  }

  else
  {
    v35 = v41;
    v39(v41, v32, v9);
    v36 = v30;
    [v24 bounds];
    sub_1A52434A4();
    if (v48)
    {
      v38(v35, v9);
    }

    else
    {
      [v27 setImageContentsRect_];

      v38(v35, v9);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
  return v27;
}

id sub_1A41E120C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeOneUpPresentationDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A41E12E0()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1754F8 = result;
  return result;
}

void sub_1A41E134C(uint64_t a1, __n128 a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_1A524E2B4())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRetain();
  sub_1A524E274();
  sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
  sub_1A41E3384();
  sub_1A524CF84();
  v4 = v16;
  v5 = v17;
  if (v13 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v6 = v4;
    v7 = v5;
    v8 = v4;
    if (!v5)
    {
      break;
    }

LABEL_13:
    v9 = (v7 - 1) & v7;
    v10 = *(*(v13 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
    if (!v10)
    {
LABEL_19:
      sub_1A3C42540(v13);
      return;
    }

    while (1)
    {
      v11 = sub_1A41E1DCC(v10);

      v4 = v8;
      v5 = v9;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_1A524E304())
      {
        sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
        swift_dynamicCast();
        v10 = v12;
        v8 = v4;
        v9 = v5;
        if (v12)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= ((v15 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v7 = *(v14 + 8 * v8);
    ++v6;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1A41E156C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A41E3588(0);
    v2 = sub_1A524E3C4();
    v15 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A41E1F64(v9 + 1);
        }

        v2 = v15;
        result = sub_1A524DBE4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A41E174C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v80 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRetain();
  sub_1A524E274();
  sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
  sub_1A41E3384();
  sub_1A524CF84();
  v5 = v75;
  v6 = v76;
  v7 = v78;
  v8 = v79;
  v70 = v75;
  v71 = v76;
  v72 = v77;
  v73 = v78;
  v61 = v77;
  v9 = (v77 + 64) >> 6;
  v67 = (v3 + 56);
  v74 = v79;
  v64 = v76;
  v65 = v75;
  for (i = v9; ; v9 = i)
  {
    if (v5 < 0)
    {
      v17 = sub_1A524E304();
      if (!v17)
      {
        goto LABEL_61;
      }

      v68 = v17;
      sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
      swift_dynamicCast();
      v15 = v69;
      v13 = v7;
      v2 = v8;
      if (!v69)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v10 = v8;
      v11 = v7;
      if (v8)
      {
LABEL_16:
        v2 = (v10 - 1) & v10;
        v15 = *(*(v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
        v16 = v15;
        v13 = v11;
      }

      else
      {
        if (v9 <= (v7 + 1))
        {
          v12 = v7 + 1;
        }

        else
        {
          v12 = v9;
        }

        v13 = v12 - 1;
        v14 = v7;
        while (1)
        {
          v11 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_63;
          }

          if (v11 >= v9)
          {
            break;
          }

          v10 = *(v6 + 8 * v11);
          ++v14;
          if (v10)
          {
            goto LABEL_16;
          }
        }

        v15 = 0;
        v2 = 0;
      }

      v70 = v5;
      v71 = v6;
      v72 = v61;
      v73 = v13;
      v74 = v2;
      if (!v15)
      {
LABEL_61:
        v50 = v5;
        goto LABEL_59;
      }
    }

    v18 = v15;
    v19 = sub_1A524DBE4();
    v20 = -1 << *(v3 + 32);
    v7 = v19 & ~v20;
    v5 = v7 >> 6;
    v11 = 1 << v7;
    if (((1 << v7) & v67[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v7 = v13;
    v8 = v2;
    v6 = v64;
    v5 = v65;
  }

  v21 = ~v20;
  v22 = sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
  v23 = *(*(v3 + 48) + 8 * v7);
  v66 = v22;
  while (1)
  {
    v24 = sub_1A524DBF4();

    if (v24)
    {
      break;
    }

    v7 = (v7 + 1) & v21;
    v5 = v7 >> 6;
    v11 = 1 << v7;
    if (((1 << v7) & v67[v7 >> 6]) == 0)
    {
      goto LABEL_6;
    }

    v23 = *(*(v3 + 48) + 8 * v7);
  }

  v26 = *(v3 + 32);
  v58 = ((1 << v26) + 63) >> 6;
  v4 = 8 * v58;
  if ((v26 & 0x3Fu) > 0xD)
  {
    goto LABEL_64;
  }

  while (2)
  {
    v59 = &v57;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v57 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v28, v67, v27);
    v29 = *&v28[8 * v5] & ~v11;
    v30 = *(v3 + 16);
    v60 = v28;
    *&v28[8 * v5] = v29;
    v5 = v30 - 1;
    v32 = v64;
    v31 = v65;
    v33 = i;
LABEL_29:
    v62 = v5;
    while (v31 < 0)
    {
      v34 = sub_1A524E304();
      if (!v34)
      {
        goto LABEL_57;
      }

      v68 = v34;
      swift_dynamicCast();
      v35 = v69;
      if (!v69)
      {
        goto LABEL_57;
      }

LABEL_46:
      v40 = sub_1A524DBE4();
      v41 = v3;
      v42 = -1 << *(v3 + 32);
      v43 = v40 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & v67[v43 >> 6]) != 0)
      {
        v46 = ~v42;
        while (1)
        {
          v7 = *(*(v41 + 48) + 8 * v43);
          v47 = sub_1A524DBF4();

          if (v47)
          {
            break;
          }

          v43 = (v43 + 1) & v46;
          v44 = v43 >> 6;
          v45 = 1 << v43;
          if (((1 << v43) & v67[v43 >> 6]) == 0)
          {
            goto LABEL_30;
          }
        }

        v48 = v60[v44];
        v60[v44] = v48 & ~v45;
        v49 = (v48 & v45) == 0;
        v3 = v41;
        v32 = v64;
        v31 = v65;
        v5 = v62;
        v33 = i;
        if (!v49)
        {
          v5 = v62 - 1;
          if (__OFSUB__(v62, 1))
          {
            __break(1u);
          }

          if (v62 == 1)
          {

            v3 = MEMORY[0x1E69E7CD0];
            goto LABEL_58;
          }

          goto LABEL_29;
        }
      }

      else
      {
LABEL_30:

        v3 = v41;
        v32 = v64;
        v31 = v65;
        v5 = v62;
        v33 = i;
      }
    }

    if (v2)
    {
      v11 = v13;
LABEL_44:
      v38 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v35 = *(*(v31 + 48) + ((v11 << 9) | (8 * v38)));
      v39 = v35;
      v37 = v11;
LABEL_45:
      v70 = v31;
      v71 = v32;
      v72 = v61;
      v73 = v37;
      v13 = v37;
      v74 = v2;
      if (!v35)
      {
LABEL_57:
        v3 = sub_1A41E2424(v60, v58, v5, v3);
        goto LABEL_58;
      }

      goto LABEL_46;
    }

    if (v33 <= (v13 + 1))
    {
      v36 = v13 + 1;
    }

    else
    {
      v36 = v33;
    }

    v37 = v36 - 1;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v33)
      {
        v35 = 0;
        v2 = 0;
        goto LABEL_45;
      }

      v2 = *(v32 + 8 * v11);
      ++v13;
      if (v2)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v52 = v4;

    v53 = v52;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v54 = swift_slowAlloc();
  memcpy(v54, v67, v53);
  sub_1A41E2180(v54, v58, v3, v7, &v70);
  v56 = v55;

  MEMORY[0x1A590EEC0](v54, -1, -1);
  v3 = v56;
LABEL_58:
  v50 = v70;
LABEL_59:
  sub_1A3C42540(v50);
  return v3;
}

uint64_t sub_1A41E1DCC(void *a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v1;
  sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
  v4 = sub_1A524DBE4();
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    v9 = sub_1A524DBF4();

    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  v14 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A41E2774();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v6);
  sub_1A3E2B988(v6);
  result = v13;
  *v3 = v14;
  return result;
}

void sub_1A41E1F64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A41E3588(0);
  v4 = sub_1A524E3B4();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1A524DBE4();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1A41E2180(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1A524E304())
          {
            goto LABEL_29;
          }

          sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1A41E2424(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_1A524DBE4();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1A524DBF4();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_1A524DBF4();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1A41E2424(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A41E3588(0);
  result = sub_1A524E3D4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1A524DBE4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A41E260C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1A524E2B4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1A41E156C(v5, v4);
  v15 = v6;

  v7 = sub_1A524DBE4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1A524DBF4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1A3E2B988(v9);
  result = sub_1A524DBF4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A41E2774()
{
  v1 = v0;
  sub_1A41E3588(0);
  v2 = *v0;
  v3 = sub_1A524E3A4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

uint64_t _s12PhotosUICore26LemonadeOneUpConfigurationV9ContainerO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v5 = v3;
  v6 = v2;
  v7 = sub_1A524DBF4();

  return v7 & 1;
}

uint64_t _s12PhotosUICore26LemonadeOneUpConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v24 = *(a1 + 19);
  v25 = *(a1 + 18);
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(a2 + 18);
  v23 = *(a2 + 19);
  v21 = a2[3];
  v22 = a1[3];
  v19 = a2[4];
  v20 = a1[4];
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if ((sub_1A524DBF4() & 1) == 0)
  {
    return 0;
  }

  if (v3 != 255)
  {
    if (v6 != 255)
    {
      if (v3)
      {
        if (v6)
        {
          goto LABEL_6;
        }
      }

      else if ((v6 & 1) == 0)
      {
LABEL_6:
        sub_1A3E041E4(v2, v3);
        sub_1A3E041E4(v2, v3);
        sub_1A3E041E4(v2, v3);
        sub_1A3E041E4(v5, v6);
        sub_1A3E041E4(v5, v6);
        v9 = sub_1A524DBF4();

        sub_1A3E041F8(v5, v6);
        sub_1A3E041F8(v2, v3);
        if (v9)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }

      sub_1A3E041E4(v2, v3);
      sub_1A3E041E4(v2, v3);
      sub_1A3E041E4(v5, v6);

LABEL_12:
      v10 = v2;
      v11 = v3;
      goto LABEL_13;
    }

LABEL_9:
    sub_1A3E041E4(v2, v3);
    sub_1A3E041E4(v5, v6);
    sub_1A3E041F8(v2, v3);
    v10 = v5;
    v11 = v6;
LABEL_13:
    sub_1A3E041F8(v10, v11);
    return 0;
  }

  if (v6 != 255)
  {
    goto LABEL_9;
  }

  LOBYTE(v3) = -1;
  sub_1A3E041E4(v2, 255);
  sub_1A3E041E4(v5, 255);
LABEL_17:
  sub_1A3E041F8(v2, v3);
  result = 0;
  if (v4 == v7 && ((v25 ^ v8) & 1) == 0 && ((v24 ^ v23) & 1) == 0)
  {
    if (v22)
    {
      if (v21)
      {
        sub_1A3C52C70(0, &qword_1EB134DE8, &off_1E7721968);
        v13 = v21;
        v14 = v22;
        v15 = sub_1A524DBF4();

        if (v15)
        {
LABEL_25:
          if (v20)
          {
            if (v19)
            {
              type metadata accessor for PXSensitivityInterventionManager(0);
              v16 = v19;
              v17 = v20;
              v18 = sub_1A524DBF4();

              if (v18)
              {
                return 1;
              }
            }
          }

          else if (!v19)
          {
            return 1;
          }
        }
      }
    }

    else if (!v21)
    {
      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A41E2BFC(uint64_t a1, uint64_t a2)
{
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41E2CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41E2D34(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A41E2D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A41E2DF8(void *a1)
{
  v3 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  v4 = *(v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(v3 + 28));

  return [a1 setAnimated_];
}

uint64_t objectdestroy_4Tm_2()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

void sub_1A41E2EC0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong presentedViewController];
    }

    else
    {
      v4 = 0;
    }

    v1(v4);
  }
}

unint64_t sub_1A41E2F54()
{
  result = qword_1EB134D60;
  if (!qword_1EB134D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134D60);
  }

  return result;
}

unint64_t sub_1A41E2FAC()
{
  result = qword_1EB134D68;
  if (!qword_1EB134D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134D68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore26LemonadeOneUpConfigurationV9ContainerOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1A41E3068(uint64_t a1)
{
  sub_1A3C36260(319, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A3C36260(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A3C4B7E8(319, &qword_1EB120988, &unk_1EB120990, &off_1E7721860);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A41E318C(uint64_t a1)
{
  result = type metadata accessor for LemonadeOneUpPresentationContext(319);
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

uint64_t sub_1A41E325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A41E32BC()
{
  [*(v0 + 16) invalidatePresentingGeometry];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A41E333C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A41E3384()
{
  result = qword_1EB126B48;
  if (!qword_1EB126B48)
  {
    sub_1A3C52C70(255, &qword_1EB126B50, &off_1E7721490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126B48);
  }

  return result;
}

void sub_1A41E33EC(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_hiddenAssetReferences) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A41E349C(void *a1)
{
  result = sub_1A41E0CD8(a1);
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result containingScrollViews];

  if (!v3)
  {
    return 0;
  }

  sub_1A3C52C70(0, &unk_1EB134DD8, 0x1E69DCEF8);
  v4 = sub_1A524CA34();

  if (v4 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](0, v4);
    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_8:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

void sub_1A41E3588(uint64_t a1)
{
  if (!qword_1EB120530)
  {
    sub_1A3C52C70(255, &qword_1EB126B50, &off_1E7721490);
    sub_1A41E3384();
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120530);
    }
  }
}

uint64_t sub_1A41E3610()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1AF6E8);
  __swift_project_value_buffer(v0, qword_1EB1AF6E8);
  return sub_1A5246F14();
}

uint64_t type metadata accessor for VisualPairingAppClipCode(uint64_t a1)
{
  result = qword_1EB1AF880;
  if (!qword_1EB1AF880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A41E36DC(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v59 = a3;
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  if (qword_1EB1AF6E0 != -1)
  {
    swift_once();
  }

  v60 = sub_1A5246F24();
  v58 = __swift_project_value_buffer(v60, qword_1EB1AF6E8);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D224();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v11;
    v15 = a1;
    v16 = a2;
    v17 = v6;
    v18 = v7;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "[ACC Generator] Generating App Clip Code.", v19, 2u);
    v20 = v19;
    v7 = v18;
    v6 = v17;
    a2 = v16;
    a1 = v15;
    v11 = v14;
    MEMORY[0x1A590EEC0](v20, -1, -1);
  }

  sub_1A41E3D50(a1, a2, v11);
  if (!v3)
  {
    v56 = sub_1A41E4000(v11);
    v57 = v21;
    v22 = sub_1A5240E84();
    v23 = CGSVGDocumentCreateFromData();

    if (v23)
    {
      goto LABEL_7;
    }

    if (qword_1EB1AF6E0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v60, qword_1EB1AF6E8);
    v35 = sub_1A5246F04();
    v36 = sub_1A524D244();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = a2;
      v38 = v6;
      v39 = v7;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1A3C1C000, v35, v36, "[ACC Generator] Failed to create CGSVGDocument from Data.", v40, 2u);
      v41 = v40;
      v7 = v39;
      v6 = v38;
      a2 = v37;
      MEMORY[0x1A590EEC0](v41, -1, -1);
    }

    sub_1A41E4410();
    v42 = swift_allocError();
    *v43 = 3;
    swift_willThrow();
    if (!v42)
    {
LABEL_7:
      v24 = [objc_opt_self() _imageWithCGSVGDocument_scale_orientation_];
      v25 = v61;
      v54 = v24;
      v55 = v23;
      if (v24)
      {
        goto LABEL_8;
      }

      if (qword_1EB1AF6E0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v60, qword_1EB1AF6E8);
      v46 = sub_1A5246F04();
      v47 = sub_1A524D244();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v6;
        v49 = v7;
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1A3C1C000, v46, v47, "[ACC Generator] Failed to create UIImage from CGSVGDocument.", v50, 2u);
        v51 = v50;
        v7 = v49;
        v6 = v48;
        v25 = v61;
        MEMORY[0x1A590EEC0](v51, -1, -1);
      }

      sub_1A41E4410();
      v52 = swift_allocError();
      *v53 = 4;
      swift_willThrow();
      if (!v52)
      {
LABEL_8:
        (*(v7 + 16))(v25, v11, v6);
        v26 = sub_1A5246F04();
        v27 = sub_1A524D224();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v61 = a1;
          v29 = v28;
          v60 = swift_slowAlloc();
          v62 = v60;
          *v29 = 136315138;
          sub_1A3F6D3EC();
          v58 = v26;
          v30 = sub_1A524EA44();
          v31 = v25;
          v32 = v7;
          v34 = v33;
          (*(v32 + 8))(v31, v6);
          sub_1A3C2EF94(v30, v34, &v62);
        }

        sub_1A3C59280(v56, v57);
        (*(v7 + 8))(v25, v6);
        v44 = type metadata accessor for VisualPairingAppClipCode(0);
        v45 = v59;
        (*(v7 + 32))(v59 + *(v44 + 24), v11, v6);
        *v45 = v54;
        v45[1] = a1;
        v45[2] = a2;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*(v7 + 8))(v11, v6);
    }

    else
    {
      (*(v7 + 8))(v11, v6);
    }

    sub_1A3C59280(v56, v57);
  }
}

uint64_t sub_1A41E3D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1A524E404();

  v13 = 0xD000000000000021;
  v14 = 0x80000001A53CC560;
  MEMORY[0x1A5907B60](a1, a2);
  sub_1A5240E34();

  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A3D75F5C(v8);
    if (qword_1EB1AF6E0 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246F24();
    __swift_project_value_buffer(v11, qword_1EB1AF6E8);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return (*(v10 + 32))(a3, v8, v9);
}

uint64_t sub_1A41E4000(uint64_t a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1A5240D44();
  v8 = [v6 generateSVGDataFromURL_];

  v9 = v6;
  if (v8)
  {
    v10 = v8;
    v11 = sub_1A5240EA4();

    return v11;
  }

  else
  {
    if (qword_1EB1AF6E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246F24();
    __swift_project_value_buffer(v13, qword_1EB1AF6E8);
    (*(v3 + 16))(v5, a1, v2);
    v14 = sub_1A5246F04();
    v15 = sub_1A524D244();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v16 = 136315138;
      sub_1A3F6D3EC();
      v17 = sub_1A524EA44();
      v19 = v18;
      (*(v3 + 8))(v5, v2);
      sub_1A3C2EF94(v17, v19, &v22);
    }

    (*(v3 + 8))(v5, v2);
    sub_1A41E4410();
    swift_allocError();
    *v20 = 2;
    return swift_willThrow();
  }
}

unint64_t sub_1A41E42E8()
{
  result = qword_1EB134DF0;
  if (!qword_1EB134DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134DF0);
  }

  return result;
}

unint64_t sub_1A41E4364(uint64_t a1, uint64_t a2)
{
  result = sub_1A3DEFC9C(319, a2);
  if (v3 <= 0x3F)
  {
    result = sub_1A5240E64();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A41E4410()
{
  result = qword_1EB134DF8;
  if (!qword_1EB134DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134DF8);
  }

  return result;
}

uint64_t sub_1A41E4464()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1AF898);
  v1 = __swift_project_value_buffer(v0, qword_1EB1AF898);
  v2 = sub_1A45318CC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A41E44F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = *(a4 - 8);
  (*(v18 + 16))(a6, a1, a4);
  v13 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(0, a4, a5, v12);
  *(a6 + v13[9]) = a2;
  sub_1A41EE034(a3, a6 + v13[10], sub_1A3DF0038);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v15 = [ObjCClassFromMetadata sharedInstance];
  *(a6 + v13[13]) = [v15 activityEntryFeedDrawDebugBackgrounds];
  *(a6 + v13[11]) = [v15 activityEntryFeedCompactCellDisplayStyle];
  sub_1A52434D4();
  sub_1A5247C74();

  sub_1A41EE09C(a3, sub_1A3DF0038);
  v16 = *(v18 + 8);

  return v16(a1, a4);
}

uint64_t sub_1A41E46EC()
{
  sub_1A41E52B0(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1A5243CC4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1A52434C4();
}

uint64_t sub_1A41E47E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = sub_1A52434D4();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524B9A4();
  type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
  v5 = *(a1 + 16);
  v64 = *(a1 + 24);
  v65 = v5;
  type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView(255, v5, v64, v6);
  sub_1A5249754();
  v7 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
  WitnessTable = swift_getWitnessTable();
  v77 = v7;
  v78 = WitnessTable;
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A41E51C0(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  v9 = sub_1A5248804();
  v10 = sub_1A5242C04();
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x1E697E5D8];
  v11 = swift_getWitnessTable();
  v12 = sub_1A41EDFEC(&qword_1EB129158, MEMORY[0x1E69C2160], MEMORY[0x1E69C2158]);
  v80 = v9;
  v81 = v10;
  v82 = v11;
  v83 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = v9;
  v81 = v10;
  v82 = v11;
  v83 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = type metadata accessor for LemonadeDetailsNavigationButton(255, OpaqueTypeMetadata2, OpaqueTypeConformance2, v15);
  v17 = swift_getWitnessTable();
  v80 = v16;
  v81 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v80 = v16;
  v81 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v80 = v18;
  v81 = v19;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v20 = sub_1A524B894();
  v55 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - v21;
  sub_1A3DF1F90(255);
  v54 = v20;
  v23 = sub_1A5248804();
  v59 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v56 = v52 - v24;
  sub_1A41E5584(255);
  v60 = v23;
  v25 = sub_1A5248804();
  v61 = *(v25 - 8);
  v62 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v57 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v58 = v52 - v28;
  v66 = a1;
  v29 = v63;
  v30 = *(v63 + *(a1 + 36));
  if (v30)
  {
    v31 = *(*(v30 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
    v32 = v31;
  }

  else
  {
    v31 = 0;
  }

  v34 = v64;
  v33 = v65;
  (*(v64 + 104))(&v80, v65, v64);
  v79[6] = v90;
  v79[7] = v91;
  v79[8] = v92;
  v79[2] = v86;
  v79[3] = v87;
  v79[4] = v88;
  v79[5] = v89;
  v79[0] = v84;
  v79[1] = v85;
  v35 = sub_1A5249584();
  MEMORY[0x1EEE9AC00](v35);
  v52[-6] = v33;
  v52[-5] = v34;
  v52[-4] = v29;
  v52[-3] = v79;
  v52[-2] = &v80;
  v52[-1] = v31;
  v53 = v31;
  v36 = sub_1A524B884();
  v52[1] = v52;
  MEMORY[0x1EEE9AC00](v36);
  v52[-4] = v33;
  v52[-3] = v34;
  v52[-2] = v29;
  sub_1A524BC74();
  sub_1A41EDDFC(0, &qword_1EB12CAB0, MEMORY[0x1E697E3F0], MEMORY[0x1E69E6720]);
  v37 = v54;
  v38 = swift_getWitnessTable();
  sub_1A3DF2018();
  v39 = v56;
  sub_1A524A8C4();
  (*(v55 + 8))(v22, v37);
  swift_getKeyPath();
  sub_1A41E52B0(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  v40 = v67;
  sub_1A5247C84();
  v41 = sub_1A41EDFEC(&qword_1EB12CAD8, sub_1A3DF1F90, MEMORY[0x1E697F940]);
  v73 = v38;
  v74 = v41;
  v42 = v60;
  v43 = swift_getWitnessTable();
  v44 = v57;
  sub_1A524A964();

  sub_1A3DF76B0(&v80);
  (*(v68 + 8))(v40, v69);
  (*(v59 + 8))(v39, v42);
  v45 = sub_1A41EDFEC(&qword_1EB1279F8, sub_1A41E5584, MEMORY[0x1E6980A18]);
  v71 = v43;
  v72 = v45;
  v46 = v62;
  swift_getWitnessTable();
  v47 = v61;
  v48 = *(v61 + 16);
  v49 = v58;
  v48(v58, v44, v46);
  v50 = *(v47 + 8);
  v50(v44, v46);
  v48(v70, v49, v46);
  return (v50)(v49, v46);
}

void sub_1A41E51E8(uint64_t a1)
{
  if (!qword_1EB134E10)
  {
    sub_1A41E527C(255);
    sub_1A41EDFEC(&qword_1EB134E40, sub_1A41E527C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134E10);
    }
  }
}

void sub_1A41E52B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A41E5314(uint64_t a1)
{
  if (!qword_1EB134E20)
  {
    sub_1A41E539C(255);
    sub_1A3DF1428(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB134E20);
    }
  }
}

void sub_1A41E53D0(uint64_t a1)
{
  if (!qword_1EB134E30)
  {
    sub_1A41E5450(255);
    sub_1A41E54E4(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134E30);
    }
  }
}

void sub_1A41E5450(uint64_t a1)
{
  if (!qword_1EB134E38)
  {
    sub_1A3EC4330(255);
    sub_1A41ECA68(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134E38);
    }
  }
}

void sub_1A41E54E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A41EDDFC(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A41E55B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v101 = a4;
  v95 = a3;
  v94 = a2;
  v102 = a7;
  v100 = sub_1A5241FC4();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v97 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(0, a5, a6, v15);
  v79 = *(v92 - 8);
  v93 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v17 = &v74 - v16;
  type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
  type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView(255, a5, a6, v18);
  sub_1A5249754();
  v19 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
  WitnessTable = swift_getWitnessTable();
  v119 = v19;
  v120 = WitnessTable;
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A41E51C0(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  v21 = sub_1A5248804();
  v22 = sub_1A5242C04();
  v117 = swift_getWitnessTable();
  v118 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  v24 = sub_1A41EDFEC(&qword_1EB129158, MEMORY[0x1E69C2160], MEMORY[0x1E69C2158]);
  *&v111 = v21;
  *(&v111 + 1) = v22;
  *&v112 = v23;
  *(&v112 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = OpaqueTypeMetadata2;
  *&v111 = v21;
  *(&v111 + 1) = v22;
  *&v112 = v23;
  *(&v112 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = type metadata accessor for LemonadeDetailsNavigationButton(0, OpaqueTypeMetadata2, OpaqueTypeConformance2, v26);
  v80 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v75 = (&v74 - v28);
  v29 = swift_getWitnessTable();
  *&v111 = v27;
  *(&v111 + 1) = v29;
  v30 = v29;
  v77 = v29;
  v31 = swift_getOpaqueTypeMetadata2();
  v84 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v74 - v32;
  *&v111 = v27;
  *(&v111 + 1) = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v87 = v31;
  *&v111 = v31;
  *(&v111 + 1) = v34;
  v83 = v34;
  v85 = swift_getOpaqueTypeMetadata2();
  v91 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v90 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v81 = &v74 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v86 = &v74 - v39;
  v89 = sub_1A524B9A4();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v74 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v103 = &v74 - v42;
  sub_1A524B994();
  v43 = v92;
  v104 = a5;
  v105 = a6;
  v106 = v94;
  v107 = a1;
  v108 = v95;
  v44 = v79;
  v45 = *(v79 + 16);
  v95 = a1;
  v45(v17, a1, v92);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = a5;
  *(v47 + 24) = a6;
  v48 = v17;
  v49 = v33;
  (*(v44 + 32))(v47 + v46, v48, v43);

  v51 = v75;
  sub_1A472916C(v50, sub_1A41EDD00, 0, 0, sub_1A41EDD10, v47, v78, v75, OpaqueTypeConformance2);
  v52 = sub_1A5243A44();
  v53 = v96;
  (*(*(v52 - 8) + 56))(v96, 1, 1, v52);
  v54 = sub_1A5243B34();
  v55 = v97;
  (*(*(v54 - 8) + 56))(v97, 1, 1, v54);
  v56 = v98;
  sub_1A5241FB4();
  sub_1A524A6A4();
  (*(v99 + 8))(v56, v100);
  sub_1A41EE09C(v55, sub_1A3E75D1C);
  sub_1A41EE09C(v53, sub_1A3E75D50);
  (*(v80 + 8))(v51, v27);
  if (!v101)
  {
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    goto LABEL_5;
  }

  sub_1A41E8CE0(v101, v43, &v111);
  if (!v111)
  {
LABEL_5:
    sub_1A41EDC80(&v111, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    v115 = 0u;
    v116 = 0u;
    goto LABEL_6;
  }

  *(&v116 + 1) = &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer;
  v57 = swift_allocObject();
  *&v115 = v57;
  v58 = v112;
  *(v57 + 16) = v111;
  *(v57 + 32) = v58;
  *(v57 + 48) = v113;
  *(v57 + 64) = v114;
LABEL_6:
  v59 = v81;
  v60 = v87;
  v61 = v83;
  sub_1A524A534();
  (*(v84 + 8))(v49, v60);
  sub_1A41EDC80(&v115, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  *&v111 = v60;
  *(&v111 + 1) = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v91;
  v64 = *(v91 + 16);
  v65 = v86;
  v66 = v85;
  v64(v86, v59, v85);
  v101 = *(v63 + 8);
  v101(v59, v66);
  v67 = v88;
  v68 = v82;
  v69 = v89;
  (*(v88 + 16))(v82, v103, v89);
  *&v111 = v68;
  v70 = v90;
  v64(v90, v65, v66);
  *(&v111 + 1) = v70;
  *&v115 = v69;
  *(&v115 + 1) = v66;
  v109 = sub_1A41EDFEC(&qword_1EB1214B8, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
  v110 = v62;
  sub_1A3DF4988(&v111, 2uLL, &v115);
  v71 = v101;
  v101(v65, v66);
  v72 = *(v67 + 8);
  v72(v103, v69);
  v71(v70, v66);
  return (v72)(v68, v69);
}

uint64_t sub_1A41E6288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v37 = a5;
  v36 = a4;
  v39 = a2;
  v40 = a3;
  v38 = a1;
  v43 = a6;
  v8 = sub_1A5242C04();
  v33[0] = v8;
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v41 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
  type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView(255, a4, a5, v10);
  sub_1A5249754();
  v11 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
  WitnessTable = swift_getWitnessTable();
  v55 = v11;
  v56 = WitnessTable;
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A41E51C0(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  v33[3] = sub_1A524BE24();
  v33[2] = swift_getWitnessTable();
  v13 = sub_1A524B784();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v16 = sub_1A5248804();
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x1E697E5D8];
  v19 = swift_getWitnessTable();
  v33[1] = v19;
  v20 = sub_1A41EDFEC(&qword_1EB129158, MEMORY[0x1E69C2160], MEMORY[0x1E69C2158]);
  v49 = v16;
  v50 = v8;
  v51 = v19;
  v52 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v33 - v26;
  sub_1A52492F4();
  v44 = v36;
  v45 = v37;
  v46 = v39;
  v47 = v38;
  v48 = v40;
  sub_1A524B774();
  sub_1A524B0C4();
  (*(v34 + 8))(v15, v13);
  v28 = v41;
  sub_1A5247DE4();
  v29 = v33[0];
  sub_1A524A944();
  (*(v42 + 8))(v28, v29);
  (*(v35 + 8))(v18, v16);
  v30 = *(v22 + 16);
  v30(v27, v24, OpaqueTypeMetadata2);
  v31 = *(v22 + 8);
  v31(v24, OpaqueTypeMetadata2);
  v30(v43, v27, OpaqueTypeMetadata2);
  return (v31)(v27, OpaqueTypeMetadata2);
}

uint64_t sub_1A41E68AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a5;
  v96 = a3;
  v108 = a1;
  v109 = a2;
  v107 = a6;
  v7 = type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView(255, a4, a5, a4);
  swift_getTupleTypeMetadata2();
  v8 = sub_1A524BE24();
  v102 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v88 = a4;
  v82 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v80 - v15;
  v106 = v16;
  v105 = sub_1A524DF24();
  v100 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v80 - v19;
  sub_1A41E51E8(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v90 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41E51C0(0);
  v111 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v94 = &v80 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v80 - v27;
  type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
  sub_1A5249754();
  v28 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
  v87 = v7;
  WitnessTable = swift_getWitnessTable();
  v131 = v28;
  v132 = WitnessTable;
  v80 = WitnessTable;
  swift_getWitnessTable();
  v30 = sub_1A524B784();
  v99 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - v31;
  v33 = sub_1A5248804();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v113 = &v80 - v38;
  sub_1A5249314();
  v39 = v91;
  v114 = a4;
  v115 = v91;
  v116 = v108;
  sub_1A524B774();
  v89 = *(v109 + 96);
  sub_1A524BC74();
  v40 = swift_getWitnessTable();
  v41 = v90;
  sub_1A524AFE4();
  (*(v99 + 8))(v32, v30);
  v129 = v40;
  v130 = MEMORY[0x1E697EBF8];
  v95 = swift_getWitnessTable();
  v92 = *(v34 + 16);
  v93 = v34 + 16;
  v92(v113, v36, v33);
  v42 = *(v34 + 8);
  v110 = v36;
  v43 = v36;
  v44 = v108;
  v98 = v34 + 8;
  v99 = v33;
  v97 = v42;
  v42(v43, v33);
  v45 = v88;
  v46 = sub_1A5249584();
  v47 = v109;
  v48 = *(v109 + 40);
  *v41 = v46;
  *(v41 + 8) = v48;
  *(v41 + 16) = 0;
  sub_1A41EDE68(0, &qword_1EB134F58, sub_1A41E527C, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A41E7B28(v44, v47, v96, v45, v39, (v41 + *(v49 + 44)));
  sub_1A524BC74();
  sub_1A5248AD4();
  v50 = v94;
  sub_1A41EDED4(v41, v94, sub_1A41E51E8);
  v51 = v112;
  v52 = (v50 + *(v111 + 36));
  v53 = v138;
  v52[4] = v137;
  v52[5] = v53;
  v52[6] = v139;
  v54 = v134;
  *v52 = v133;
  v52[1] = v54;
  v55 = v136;
  v52[2] = v135;
  v52[3] = v55;
  sub_1A41EDED4(v50, v51, sub_1A41E51C0);
  if (*(v44 + *(type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(0, v45, v39, v56) + 44)) == 1)
  {
    v57 = v81;
    (*(v82 + 16))(v81, v44, v45);
    v58 = v84;
    v59 = sub_1A41E7990(v57, v45, v39, v84);
    v60 = v85;
    v61 = *(v85 + 16);
    v62 = v83;
    v63 = v87;
    v61(v83, v58, v87, v59);
    v64 = *(v60 + 8);
    v64(v58, v63);
    v117 = 0;
    v118 = 1;
    v126 = &v117;
    (v61)(v58, v62, v63);
    v127 = v58;
    v123 = MEMORY[0x1E6981840];
    v124 = v63;
    v120 = MEMORY[0x1E6981838];
    v121 = v80;
    v65 = v86;
    sub_1A3DF4988(&v126, 2uLL, &v123);
    v64(v62, v63);
    v64(v58, v63);
    v66 = v102;
    v67 = v104;
    v68 = v106;
    (*(v102 + 32))(v104, v65, v106);
    (*(v66 + 56))(v67, 0, 1, v68);
  }

  else
  {
    v67 = v104;
    (*(v102 + 56))(v104, 1, 1, v106);
  }

  swift_getWitnessTable();
  v69 = v100;
  v70 = v101;
  v71 = v105;
  v108 = *(v100 + 16);
  (v108)(v101, v67, v105);
  v109 = *(v69 + 8);
  (v109)(v67, v71);
  v72 = v110;
  v73 = v99;
  v92(v110, v113, v99);
  v126 = v72;
  v74 = v112;
  v75 = v103;
  sub_1A41EE034(v112, v103, sub_1A41E51C0);
  v127 = v75;
  (v108)(v67, v70, v71);
  v128 = v67;
  v123 = v73;
  v124 = v111;
  v125 = v71;
  v120 = v95;
  v121 = sub_1A41EDF3C();
  v119 = swift_getWitnessTable();
  v122 = swift_getWitnessTable();
  sub_1A3DF4988(&v126, 3uLL, &v123);
  v76 = v70;
  v77 = v109;
  (v109)(v76, v71);
  sub_1A41EE09C(v74, sub_1A41E51C0);
  v78 = v97;
  v97(v113, v73);
  v77(v67, v71);
  sub_1A41EE09C(v75, sub_1A41E51C0);
  return v78(v110, v73);
}

uint64_t sub_1A41E7478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v40 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView(0, v9, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v22;
  v23 = sub_1A5249754();
  v43 = *(v23 - 8);
  v44 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v42 = &v40 - v24;
  if (*(a1 + *(type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(0, a2, a3, v25) + 44)) == 1)
  {
    (*(a3 + 104))(v47, a2, a3);
    sub_1A3DF76B0(v47);
    v26 = *v47;
    v27 = (*(a3 + 80))(a2, a3);
    sub_1A493BE2C(v46);
    sub_1A493BE50(v27, v46, v21, v26);
    v28 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
    WitnessTable = swift_getWitnessTable();
    v30 = v42;
    sub_1A3DF4798(v21, v41, v12, v28, WitnessTable);
    sub_1A41EE09C(v21, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  }

  else
  {
    (*(v40 + 16))(v8, a1, a2);
    sub_1A41E7990(v8, a2, a3, v15);
    v31 = swift_getWitnessTable();
    v32 = *(v13 + 16);
    v32(v18, v15, v12);
    v33 = *(v13 + 8);
    v33(v15, v12);
    v32(v15, v18, v12);
    v34 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
    v30 = v42;
    sub_1A3DF4890(v15, v41, v12, v34, v31);
    v33(v15, v12);
    v33(v18, v12);
  }

  v35 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
  v36 = swift_getWitnessTable();
  v47[33] = v35;
  v47[34] = v36;
  v37 = v44;
  swift_getWitnessTable();
  v38 = v43;
  (*(v43 + 16))(v45, v30, v37);
  return (*(v38 + 8))(v30, v37);
}

double sub_1A41E7990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  sub_1A41E8FB8(v11, a2);
  (*(a3 + 104))(v21, a2, a3);
  (*(v8 + 8))(a1, a2);
  v13 = type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView(0, a2, a3, v12);
  memcpy((a4 + *(v13 + 36)), v21, 0x108uLL);
  v14 = (a4 + *(v13 + 40));
  v15 = *&v21[25];
  v16 = *&v21[29];
  v14[6] = *&v21[27];
  v14[7] = v16;
  v14[8] = *&v21[31];
  v17 = *&v21[17];
  v18 = *&v21[21];
  v14[2] = *&v21[19];
  v14[3] = v18;
  v14[4] = *&v21[23];
  v14[5] = v15;
  result = *&v21[15];
  *v14 = *&v21[15];
  v14[1] = v17;
  return result;
}

uint64_t sub_1A41E7B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v92 = a1;
  v93 = a4;
  v107 = a3;
  v108 = a6;
  v99 = a2;
  v8 = sub_1A524A204();
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DF1428(0);
  v105 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v76 - v13;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524A274();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1A41E539C(0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v76 - v27;
  v91 = a5;
  (*(a5 + 48))(a4, a5, v26);
  v84 = sub_1A524A454();
  v83 = v29;
  LOBYTE(a5) = v30;
  v82 = v31;
  KeyPath = swift_getKeyPath();
  v32 = *MEMORY[0x1E6980EF0];
  v94 = *(v18 + 104);
  v80 = v17;
  v94(v20, v32, v17);
  v89 = sub_1A524A154();
  v33 = *(v89 - 8);
  v88 = *(v33 + 56);
  v90 = v33 + 56;
  v88(v16, 1, 1, v89);
  sub_1A524A194();
  v79 = sub_1A524A1C4();
  v87 = sub_1A3E75D84;
  sub_1A41EE09C(v16, sub_1A3E75D84);
  v34 = *(v18 + 8);
  v85 = v18 + 8;
  v86 = v34;
  v34(v20, v17);
  v78 = swift_getKeyPath();
  LOBYTE(v18) = a5 & 1;
  LOBYTE(v109) = a5 & 1;
  v76 = sub_1A524B4A4();
  v77 = *(v99 + 48);
  v35 = *(v99 + 56);
  v36 = swift_getKeyPath();
  LOBYTE(v109) = v35;
  v37 = &v28[*(v23 + 44)];
  sub_1A41E5550(0);
  v99 = v38;
  v39 = *(v38 + 28);
  v97 = *MEMORY[0x1E6980FA8];
  v40 = v97;
  v96 = sub_1A524A354();
  v41 = *(v96 - 8);
  v95 = *(v41 + 104);
  v98 = v41 + 104;
  v95(v37 + v39, v40, v96);
  *v37 = swift_getKeyPath();
  v42 = v83;
  *v28 = v84;
  *(v28 + 1) = v42;
  v28[16] = v18;
  v43 = KeyPath;
  *(v28 + 3) = v82;
  *(v28 + 4) = v43;
  v28[40] = 0;
  v44 = v79;
  *(v28 + 6) = v78;
  *(v28 + 7) = v44;
  *(v28 + 8) = v76;
  *(v28 + 9) = v36;
  *(v28 + 10) = v77;
  v28[88] = v35;
  v109 = (*(v91 + 56))(v93);
  v110 = v45;
  sub_1A3D5F9DC();
  v46 = sub_1A524A464();
  v48 = v47;
  LOBYTE(v36) = v49;
  v50 = v80;
  v94(v20, *MEMORY[0x1E6980F30], v80);
  v88(v16, 1, 1, v89);
  sub_1A524A194();
  sub_1A524A1C4();
  sub_1A41EE09C(v16, v87);
  v86(v20, v50);
  v52 = v100;
  v51 = v101;
  v53 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x1E6980EA8], v102);
  sub_1A524A234();

  (*(v51 + 8))(v52, v53);
  v54 = sub_1A524A3C4();
  v56 = v55;
  LOBYTE(v52) = v57;

  sub_1A3E04DF4(v46, v48, v36 & 1);

  v109 = sub_1A524B4A4();
  v58 = sub_1A524A374();
  v60 = v59;
  LOBYTE(v48) = v61;
  v63 = v62;
  sub_1A3E04DF4(v54, v56, v52 & 1);

  v64 = *(v107 + 16);
  LOBYTE(v51) = *(v107 + 24);
  v65 = swift_getKeyPath();
  v66 = v104;
  v67 = &v104[*(v105 + 44)];
  v95(v67 + *(v99 + 28), v97, v96);
  *v67 = swift_getKeyPath();
  *v66 = v58;
  *(v66 + 8) = v60;
  *(v66 + 16) = v48 & 1;
  *(v66 + 24) = v63;
  *(v66 + 32) = v65;
  *(v66 + 40) = v64;
  *(v66 + 48) = v51;
  v68 = v103;
  sub_1A41EE034(v28, v103, sub_1A41E539C);
  v69 = v106;
  sub_1A41EE034(v66, v106, sub_1A3DF1428);
  v70 = v108;
  *v108 = 0;
  *(v70 + 8) = 0;
  v71 = v70;
  sub_1A41E5314(0);
  v73 = v72;
  sub_1A41EE034(v68, v71 + *(v72 + 48), sub_1A41E539C);
  sub_1A41EE034(v69, v71 + *(v73 + 64), sub_1A3DF1428);
  v74 = v71 + *(v73 + 80);
  *v74 = 0;
  *(v74 + 8) = 0;
  sub_1A41EE09C(v66, sub_1A3DF1428);
  sub_1A41EE09C(v28, sub_1A41E539C);
  sub_1A41EE09C(v69, sub_1A3DF1428);
  return sub_1A41EE09C(v68, sub_1A41E539C);
}

uint64_t sub_1A41E83DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v54 - v11;
  sub_1A3EC2BA0(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *(v9 + 36));
  if (v16)
  {
    v57 = v10;
    v58 = a5;
    v17 = *(a3 + 24);

    v18 = v17(a2, a3);
    if (v18 <= 7u && ((1 << v18) & 0xD9) != 0)
    {
      (*(a3 + 128))(v16, a2, a3);

      v20 = type metadata accessor for LemonadeNavigationDestination(0);
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      if (v22(v15, 1, v20) == 1)
      {
        v23 = v58;
        swift_storeEnumTagMultiPayload();
        if (v22(v15, 1, v20) != 1)
        {
          sub_1A41EE09C(v15, sub_1A3EC2BA0);
        }
      }

      else
      {
        v23 = v58;
        sub_1A41EDED4(v15, v58, type metadata accessor for LemonadeNavigationDestination);
      }

      return (*(v21 + 56))(v23, 0, 1, v20);
    }

    v56 = *(a3 + 40);
    v63[0] = v56(a2, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524D074();

    if (*&v61[0])
    {
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
        v29 = [swift_getObjCClassFromMetadata() sharedInstance];
        v30 = [v29 activityEntryFeedCompactCellsOpen1upLimitedToEntryAssets];

        if (v30)
        {
          v31 = v56(a2, a3);
          v57 = v54;
          v63[0] = v31;
          MEMORY[0x1EEE9AC00](v31);
          v54[-2] = a2;
          v54[-1] = a3;
          sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
          swift_getWitnessTable();
          sub_1A524C944();

          v32 = objc_opt_self();
          v33 = sub_1A524CA14();

          v34 = [v32 transientAssetCollectionWithAssets:v33 title:0];

          v35 = 0;
        }

        else
        {
          sub_1A41EE034(a1 + *(v9 + 40), v63, sub_1A3DF0038);
          v34 = v64;
          if (v64)
          {
            v47 = v65;
            __swift_project_boxed_opaque_existential_1(v63, v64);
            v34 = (*(v47 + 8))(v34, v47);
            __swift_destroy_boxed_opaque_existential_0(v63);
            if (v34)
            {
              v35 = 0;
            }

            else
            {
              v35 = -1;
            }
          }

          else
          {
            sub_1A41EE09C(v63, sub_1A3DF0038);
            v35 = -1;
          }
        }

        v45 = v58;
        sub_1A41EE034(a1 + *(v9 + 40), v63, sub_1A3DF0038);
        v48 = v64;
        if (v64)
        {
          v49 = v65;
          __swift_project_boxed_opaque_existential_1(v63, v64);
          v50 = (*(v49 + 16))(v28, v48, v49);
          __swift_destroy_boxed_opaque_existential_0(v63);
        }

        else
        {
          sub_1A41EE09C(v63, sub_1A3DF0038);
          v50 = 0;
        }

        v59 = v34;
        v60 = v35;
        sub_1A3E041E4(v34, v35);
        v51 = sub_1A3C5A374();
        v52 = sub_1A3C5A374();
        sub_1A41DF298(v28, &v59, v51 & 1, 1, v52 & 1, 0, v50, v61);
        sub_1A3E041F8(v34, v35);

        v53 = v61[1];
        *v45 = v61[0];
        *(v45 + 16) = v53;
        *(v45 + 32) = v62;
        v46 = type metadata accessor for LemonadeNavigationDestination(0);
LABEL_33:
        swift_storeEnumTagMultiPayload();
        return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      }

      swift_unknownObjectRelease();
    }

    v54[1] = a3 + 40;
    if (qword_1EB1AF890 != -1)
    {
      swift_once();
    }

    v36 = sub_1A5246F24();
    __swift_project_value_buffer(v36, qword_1EB1AF898);
    v37 = v57;
    (v57[2])(v12, a1, v9);
    v38 = sub_1A5246F04();
    v39 = sub_1A524D244();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      v63[0] = v54[0];
      *v40 = 136315138;
      v41 = v56(a2, a3);
      (v37[1])(v12, v9);
      v42 = MEMORY[0x1A5907DB0](v41, AssociatedTypeWitness);
      v44 = v43;

      sub_1A3C2EF94(v42, v44, v63);
    }

    (v37[1])(v12, v9);

    v45 = v58;
    v46 = type metadata accessor for LemonadeNavigationDestination(0);
    goto LABEL_33;
  }

  v24 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v25 = *(*(v24 - 8) + 56);

  return v25(a5, 0, 1, v24);
}

double sub_1A41E8CE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1A41E52B0(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (*(*(a2 + 24) + 120))(a1, *(a2 + 16), v7);
  if (v8)
  {
    v9 = [v8 localizedTitle];
    if (v9)
    {
      v10 = v9;
      sub_1A524C674();
    }

    sub_1A5245FB4();
  }

  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

void *sub_1A41E8EA8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  result = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(0, v4, v5, a1);
  if (*(v6 + *(result + 13)) == 1)
  {
    sub_1A41EDDFC(0, &qword_1EB1202A0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52FC9F0;
    *(v8 + 32) = sub_1A524B3B4();
    *(v8 + 40) = sub_1A524B3C4();
    sub_1A524BE74();
    sub_1A524BE84();
    MEMORY[0x1A5906EC0](v8);
    result = sub_1A5248434();
    v9 = v12;
    v10 = v13;
    v11 = v14;
  }

  else
  {
    v9 = 0;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1A41E8FB8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v6);
  sub_1A524B694();
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_1A41E90A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A5249584();
  v6 = sub_1A52492F4();
  *a2 = v5;
  a2[1] = v6;
  sub_1A41EDE68(0, &qword_1EB134E48, sub_1A41EC49C, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  return sub_1A41E912C(v2, *(a1 + 16), *(a1 + 24), a2 + *(v7 + 44));
}

uint64_t sub_1A41E912C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v113 = a1;
  v111 = a4;
  v105 = sub_1A5241FC4();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1A5243834();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v92 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41E52B0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v86 - v13;
  v95 = sub_1A5243EC4();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC744(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC71C(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC674(0);
  v88 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v90 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC5F0(0, v24);
  v100 = v26;
  v99 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v93 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC534(0, v27);
  v108 = v29;
  v107 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v112 = &v86 - v32;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1A524B6D4();
  sub_1A524B6A4();
  v37 = (*(a3 + 40))(a2, a3);
  v38 = *(v33 + 8);
  v98 = v33 + 8;
  v96 = v38;
  v38(v36, a2);
  *&v117 = v37;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getWitnessTable();
  sub_1A524D074();

  v39 = v120;
  v120 = 0u;
  v121 = 0u;
  v122 = 1;
  v40 = sub_1A52429A4();
  (*(*(v40 - 8) + 56))(v14, 1, 1, v40);
  (*(v109 + 104))(v92, *MEMORY[0x1E69C2678], v110);
  swift_unknownObjectRetain();
  v41 = v89;
  sub_1A5243ED4();
  v110 = a2;
  v109 = a3;
  v43 = type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView(0, a2, a3, v42);
  v44 = v113 + *(v43 + 40);
  sub_1A524BC74();
  sub_1A52481F4();
  (*(v94 + 32))(v19, v41, v95);
  v45 = *(v17 + 44);
  v46 = v88;
  v47 = &v19[v45];
  v48 = v118;
  *v47 = v117;
  *(v47 + 1) = v48;
  *(v47 + 2) = v119;
  v49 = v91;
  sub_1A41EDED4(v19, v91, sub_1A41EC744);
  v50 = v49 + *(v21 + 44);
  *v50 = 0x3FF0000000000000;
  *(v50 + 8) = 256;
  v95 = v44;
  v51 = *(v44 + 104);
  v52 = v90;
  v53 = &v90[*(v46 + 36)];
  v54 = *(sub_1A5248A14() + 20);
  v55 = *MEMORY[0x1E697F468];
  v56 = sub_1A52494A4();
  (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
  *v53 = v51;
  *(v53 + 1) = v51;
  sub_1A3E42C88(0);
  *&v53[*(v57 + 36)] = 256;
  v58 = v93;
  sub_1A41EDED4(v49, v52, sub_1A41EC71C);
  v59 = sub_1A5243A44();
  v60 = v101;
  (*(*(v59 - 8) + 56))(v101, 1, 1, v59);
  v61 = sub_1A5243B34();
  v62 = v102;
  (*(*(v61 - 8) + 56))(v102, 1, 1, v61);
  v63 = v103;
  sub_1A5241FB4();
  v64 = sub_1A41EC7D0();
  sub_1A524A6A4();
  (*(v104 + 8))(v63, v105);
  sub_1A41EE09C(v62, sub_1A3E75D1C);
  sub_1A41EE09C(v60, sub_1A3E75D50);
  sub_1A41EE09C(v52, sub_1A41EC674);
  if (v39)
  {
    v65 = v39;
    v66 = AssociatedTypeWitness;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v116[1] = 0;
    v116[2] = 0;
  }

  v116[0] = v65;
  v116[3] = v66;
  v105 = v39;
  swift_unknownObjectRetain();
  v114 = v46;
  v115 = v64;
  v67 = 1;
  swift_getOpaqueTypeConformance2();
  v68 = v100;
  sub_1A524A534();
  (*(v99 + 8))(v58, v68);
  sub_1A41EDC80(v116, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  sub_1A524B6A4();
  v69 = v110;
  v70 = (*(v109 + 24))(v110);
  v96(v36, v69);
  if (!sub_1A40B1BE4(v70, 1))
  {
    v73 = 0;
LABEL_9:
    v74 = 0;
    goto LABEL_10;
  }

  v71 = [objc_opt_self() tintColor];
  v73 = sub_1A40E8C64(v71, v72);

  if (!v73)
  {
    v67 = 0;
    goto LABEL_9;
  }

  v67 = sub_1A524B524();
  v73 = *(v95 + 128);
  v74 = *(v95 + 136);

LABEL_10:
  v75 = v107;
  v76 = *(v107 + 16);
  v77 = v106;
  v78 = v112;
  v79 = v108;
  v76(v106, v112, v108);
  v80 = v111;
  v76(v111, v77, v79);
  sub_1A41ECC28(0, &qword_1EB134E58, sub_1A41EC534, sub_1A41EC9B0);
  v82 = (v80 + *(v81 + 48));
  sub_1A41EDCF0(v67);
  sub_1A41B617C(v67);
  swift_unknownObjectRelease();
  *v82 = v67;
  v82[1] = v73;
  v82[2] = v74;
  v83 = *(v75 + 8);
  v83(v78, v79);
  v84 = sub_1A41B617C(v67);
  return (v83)(v77, v79, v84);
}

void sub_1A41E9DF0()
{
  sub_1A41ECB58(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  *v4 = sub_1A5249574();
  *(v4 + 1) = 0;
  v4[16] = 0;
  sub_1A41EDE68(0, &qword_1EB134F48, sub_1A41ECBEC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A41E9F48(&v4[*(v5 + 44)]);
}

void sub_1A41E9F48(char *a1@<X8>)
{
  v10 = a1;
  v9 = sub_1A524B9A4();
  MEMORY[0x1EEE9AC00](v9);
  v8[3] = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  sub_1A41ECCA4(0, v3);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EB1AF8B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_1EB1EBC20;
  sub_1A41ECD6C(0);
  v8[2] = v6;
  sub_1A41ECDA0(0);
  v8[1] = v7;
  sub_1A41EDFEC(&qword_1EB134EF0, sub_1A41ECD6C, MEMORY[0x1E69E6338]);
  sub_1A41EDFEC(&qword_1EB134F50, sub_1A41ECDA0, &unk_1A5324C00);
  sub_1A41EDFEC(&unk_1EB129840, type metadata accessor for SharedAlbumsActivityEntryItem, &unk_1A5359D58);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41EA364@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  *a2 = v3;
  a2[1] = 0;
  sub_1A41EE034(v9, (a2 + 2), sub_1A3DF0038);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = [ObjCClassFromMetadata sharedInstance];
  LOBYTE(v3) = [v6 activityEntryFeedDrawDebugBackgrounds];
  sub_1A41ECDA0(0);
  *(a2 + *(v7 + 52)) = v3;
  a2[7] = [v6 activityEntryFeedCompactCellDisplayStyle];
  sub_1A52434D4();
  sub_1A5247C74();

  return sub_1A41EE09C(v9, sub_1A3DF0038);
}

id sub_1A41EA490()
{
  result = sub_1A41EA4B0();
  qword_1EB1EBC20 = result;
  return result;
}

id sub_1A41EA4B0()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  v299 = v0;
  v300 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v285 = &v265 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v286 = &v265 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v287 = &v265 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v283 = &v265 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v284 = &v265 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v288 = &v265 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v265 - v14;
  v16 = sub_1A52411C4();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v268 = &v265 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v271 = &v265 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v282 = &v265 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v274 = &v265 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v279 = &v265 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v291 = &v265 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v265 - v30;
  v293 = [objc_opt_self() sharedPhotoLibrary];
  v32 = [objc_allocWithZone(PXSharedAlbumsActivityEntryAvatarConfiguration) init];
  v33 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v34 = sub_1A524C634();
  v35 = [v33 initWithDisplayName:v34 email:0];

  v36 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v37 = sub_1A524C634();
  v278 = [v36 initWithDisplayName:v37 email:0];

  v38 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v39 = sub_1A524C634();
  v273 = [v38 initWithDisplayName:v39 email:0];

  v40 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v41 = sub_1A524C634();
  v269 = [v40 initWithDisplayName:v41 email:0];

  v42 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v43 = sub_1A524C634();
  v270 = [v42 initWithDisplayName:v43 email:0];

  sub_1A52411B4();
  v292 = sub_1A5241164();
  v44 = *(v17 + 8);
  v296 = (v17 + 8);
  v297 = v16;
  v295 = v44;
  v44(v31, v16);
  v294 = v15;
  sub_1A5241104();
  v45 = MEMORY[0x1E69E6F90];
  sub_1A41EDDFC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v47 = v46;
  v48 = swift_allocObject();
  v301 = xmmword_1A52F9790;
  *(v48 + 16) = xmmword_1A52F9790;
  *(v48 + 32) = v35;
  v49 = swift_allocObject();
  *(v49 + 16) = v301;
  *(v49 + 32) = v32;
  sub_1A41EDDFC(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v45);
  v51 = v50;
  v52 = swift_allocObject();
  v289 = xmmword_1A52F8E10;
  *(v52 + 16) = xmmword_1A52F8E10;
  v53 = qword_1EB1AF8B8;
  v281 = v35;
  v280 = v32;
  if (v53 != -1)
  {
    swift_once();
  }

  v290 = v51;
  v298 = v47;
  swift_beginAccess();
  result = [qword_1EB1EBC28 uuid];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v55 = result;
  v56 = sub_1A524C674();
  v58 = v57;

  *(v52 + 32) = v56;
  *(v52 + 40) = v58;
  v277 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v59 = v293;
  v276 = sub_1A524C634();

  v275 = sub_1A5241074();
  v293 = sub_1A3C52C70(0, &qword_1EB12CD78, off_1E771F6C8);
  v60 = sub_1A524CA14();

  v292 = sub_1A3C52C70(0, &unk_1EB12CD80, off_1E771F6C0);
  v61 = sub_1A524CA14();

  v62 = sub_1A524C634();
  v63 = sub_1A524C634();
  v64 = sub_1A524C634();
  v65 = sub_1A524CA14();

  v66 = sub_1A524CA14();
  LOBYTE(v257) = 1;
  v67 = v276;
  v68 = v275;
  v277 = [v277 initWithPhotoLibrary:v59 uuid:v276 date:v275 type:2 isFromMe:0 contributors:v60 avatarConfigurations:v61 albumGUID:v62 albumName:v63 cloudOwnerIsAllowlisted:v257 message:v64 keyAssetUUIDs:v65 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v66 underlyingObject:0];
  v272 = v59;

  v69 = v300 + 8;
  v70 = *(v300 + 8);
  v70(v294, v299);
  v71 = type metadata accessor for SharedAlbumsActivityEntryItem(0);
  v72 = swift_allocObject();
  *(v72 + 16) = v301;
  v73 = qword_1EB1EBC28;
  *(v72 + 32) = qword_1EB1EBC28;
  v74 = v277;
  v75 = v73;
  v76 = sub_1A3C5A374();
  v77 = sub_1A3C5A374();
  v275 = v74;
  v267 = sub_1A4705FE8(v74, v76, v72, v77 & 1);
  v78 = v291;
  sub_1A52411B4();
  v277 = sub_1A5241164();
  v295(v78, v297);
  sub_1A5241104();
  v79 = swift_allocObject();
  *(v79 + 16) = v301;
  v80 = v281;
  *(v79 + 32) = v281;
  v81 = swift_allocObject();
  *(v81 + 16) = v301;
  v82 = v280;
  *(v81 + 32) = v280;
  v83 = swift_allocObject();
  *(v83 + 16) = v289;
  v84 = qword_1EB1AF8C8;
  v266 = v80;
  v281 = v82;
  if (v84 != -1)
  {
    swift_once();
  }

  v291 = v70;
  v294 = v71;
  v300 = v69;
  swift_beginAccess();
  result = [qword_1EB1EBC38 uuid];
  if (!result)
  {
    goto LABEL_15;
  }

  v85 = result;
  v86 = sub_1A524C674();
  v88 = v87;

  *(v83 + 32) = v86;
  *(v83 + 40) = v88;
  v280 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v89 = v272;
  v277 = sub_1A524C634();

  v90 = sub_1A5241074();
  v91 = sub_1A524CA14();

  v92 = sub_1A524CA14();

  v93 = sub_1A524C634();
  v94 = sub_1A524C634();
  v95 = sub_1A524C634();
  v96 = sub_1A524CA14();

  v97 = sub_1A524CA14();
  LOBYTE(v258) = 1;
  v98 = v277;
  v280 = [v280 initWithPhotoLibrary:v89 uuid:v277 date:v90 type:2 isFromMe:0 contributors:v91 avatarConfigurations:v92 albumGUID:v93 albumName:v94 cloudOwnerIsAllowlisted:v258 message:v95 keyAssetUUIDs:v96 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v97 underlyingObject:0];
  v276 = v89;

  (v291)(v288, v299);
  v99 = swift_allocObject();
  *(v99 + 16) = v301;
  v100 = qword_1EB1EBC38;
  *(v99 + 32) = qword_1EB1EBC38;
  v101 = v280;
  v102 = v100;
  v103 = sub_1A3C5A374();
  v104 = sub_1A3C5A374();
  v277 = v101;
  v272 = sub_1A4705FE8(v101, v103, v99, v104 & 1);
  v105 = v279;
  sub_1A52411B4();
  sub_1A5241164();
  v295(v105, v297);
  sub_1A5241104();
  v106 = swift_allocObject();
  *(v106 + 16) = v301;
  v107 = v278;
  *(v106 + 32) = v278;
  v108 = swift_allocObject();
  *(v108 + 16) = v301;
  v109 = v281;
  *(v108 + 32) = v281;
  v110 = swift_allocObject();
  *(v110 + 16) = v289;
  v111 = qword_1EB1EBC28;
  v288 = v109;
  v279 = v107;
  result = [v111 uuid];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v112 = result;
  v113 = sub_1A524C674();
  v115 = v114;

  *(v110 + 32) = v113;
  *(v110 + 40) = v115;
  v281 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v116 = v276;
  v117 = sub_1A524C634();

  v118 = sub_1A5241074();
  v119 = sub_1A524CA14();

  v120 = sub_1A524CA14();

  v121 = sub_1A524C634();
  v122 = sub_1A524C634();
  v123 = sub_1A524CA14();

  v124 = sub_1A524CA14();
  LOBYTE(v259) = 1;
  v281 = [v281 initWithPhotoLibrary:v116 uuid:v117 date:v118 type:1 isFromMe:0 contributors:v119 avatarConfigurations:v120 albumGUID:v121 albumName:v122 cloudOwnerIsAllowlisted:v259 message:0 keyAssetUUIDs:v123 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v124 underlyingObject:0];
  v280 = v116;

  (v291)(v284, v299);
  v125 = swift_allocObject();
  *(v125 + 16) = v301;
  v126 = qword_1EB1EBC28;
  *(v125 + 32) = qword_1EB1EBC28;
  v127 = v281;
  v128 = v126;
  v129 = sub_1A3C5A374();
  v130 = sub_1A3C5A374();
  v278 = v127;
  v276 = sub_1A4705FE8(v127, v129, v125, v130 & 1);
  v131 = v274;
  sub_1A52411B4();
  sub_1A5241164();
  v295(v131, v297);
  sub_1A5241104();
  v132 = swift_allocObject();
  *(v132 + 16) = v301;
  v133 = v273;
  *(v132 + 32) = v273;
  v134 = swift_allocObject();
  *(v134 + 16) = v301;
  v135 = v288;
  *(v134 + 32) = v288;
  v136 = swift_allocObject();
  *(v136 + 16) = v289;
  v137 = qword_1EB1EBC28;
  v284 = v135;
  v281 = v133;
  result = [v137 uuid];
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v138 = result;
  v139 = sub_1A524C674();
  v141 = v140;

  *(v136 + 32) = v139;
  *(v136 + 40) = v141;
  v288 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v142 = v280;
  v143 = sub_1A524C634();

  v144 = sub_1A5241074();
  v145 = sub_1A524CA14();

  v146 = sub_1A524CA14();

  v147 = sub_1A524C634();
  v148 = sub_1A524C634();
  v149 = sub_1A524CA14();

  v150 = sub_1A524CA14();
  LOBYTE(v260) = 1;
  v151 = [v288 initWithPhotoLibrary:v142 uuid:v143 date:v144 type:0 isFromMe:0 contributors:v145 avatarConfigurations:v146 albumGUID:v147 albumName:v148 cloudOwnerIsAllowlisted:v260 message:0 keyAssetUUIDs:v149 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v150 underlyingObject:0];

  (v291)(v283, v299);
  v152 = swift_allocObject();
  *(v152 + 16) = v301;
  v153 = qword_1EB1EBC28;
  *(v152 + 32) = qword_1EB1EBC28;
  v154 = v151;
  v155 = v153;
  v156 = sub_1A3C5A374();
  v157 = sub_1A3C5A374();
  v280 = v154;
  v274 = sub_1A4705FE8(v154, v156, v152, v157 & 1);
  v288 = v142;
  v158 = v282;
  sub_1A52411B4();
  sub_1A5241164();
  v295(v158, v297);
  sub_1A5241104();
  v159 = swift_allocObject();
  *(v159 + 16) = v301;
  v160 = v281;
  *(v159 + 32) = v281;
  v161 = swift_allocObject();
  *(v161 + 16) = v301;
  v162 = v284;
  *(v161 + 32) = v284;
  v283 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v284 = v162;
  v273 = v160;
  v163 = sub_1A524C634();

  v281 = sub_1A5241074();
  v164 = sub_1A524CA14();

  v165 = sub_1A524CA14();

  v166 = sub_1A524C634();
  v167 = sub_1A524C634();
  v168 = sub_1A524CA14();
  v169 = sub_1A524CA14();
  LOBYTE(v261) = 1;
  v170 = v288;
  v171 = v163;
  v172 = v163;
  v173 = v281;
  v174 = [v283 initWithPhotoLibrary:v288 uuid:v172 date:v281 type:6 isFromMe:0 contributors:v164 avatarConfigurations:v165 albumGUID:v166 albumName:v167 cloudOwnerIsAllowlisted:v261 message:0 keyAssetUUIDs:v168 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v169 underlyingObject:0];

  (v291)(v287, v299);
  v175 = v174;
  v176 = sub_1A3C5A374();
  v177 = sub_1A3C5A374();
  v283 = v175;
  v281 = sub_1A4705FE8(v175, v176, MEMORY[0x1E69E7CC0], v177 & 1);
  v288 = v288;
  v178 = v282;
  sub_1A52411B4();
  sub_1A5241164();
  v295(v178, v297);
  sub_1A5241104();
  v179 = swift_allocObject();
  *(v179 + 16) = v301;
  v180 = v269;
  *(v179 + 32) = v269;
  v181 = swift_allocObject();
  *(v181 + 16) = v301;
  v182 = v284;
  *(v181 + 32) = v284;
  v183 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v284 = v182;
  v282 = v180;
  v184 = sub_1A524C634();

  v185 = sub_1A5241074();
  v186 = sub_1A524CA14();

  v187 = sub_1A524CA14();

  v188 = sub_1A524C634();
  v189 = sub_1A524C634();
  v190 = sub_1A524CA14();
  v191 = sub_1A524CA14();
  LOBYTE(v262) = 1;
  v192 = v288;
  v193 = [v183 initWithPhotoLibrary:v288 uuid:v184 date:v185 type:7 isFromMe:0 contributors:v186 avatarConfigurations:v187 albumGUID:v188 albumName:v189 cloudOwnerIsAllowlisted:v262 message:0 keyAssetUUIDs:v190 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v191 underlyingObject:0];

  (v291)(v287, v299);
  v194 = v193;
  v195 = sub_1A3C5A374();
  v196 = sub_1A3C5A374();
  v269 = v194;
  v265 = sub_1A4705FE8(v194, v195, MEMORY[0x1E69E7CC0], v196 & 1);
  v197 = v271;
  sub_1A52411B4();
  sub_1A5241164();
  v295(v197, v297);
  sub_1A5241104();
  v198 = swift_allocObject();
  *(v198 + 16) = v301;
  v199 = v270;
  *(v198 + 32) = v270;
  v200 = swift_allocObject();
  *(v200 + 16) = v301;
  v201 = v284;
  *(v200 + 32) = v284;
  v202 = swift_allocObject();
  *(v202 + 16) = v289;
  v203 = qword_1EB1AF8C0;
  v287 = v201;
  v284 = v199;
  if (v203 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = [qword_1EB1EBC30 uuid];
  if (!result)
  {
    goto LABEL_18;
  }

  v204 = result;
  v205 = sub_1A524C674();
  v207 = v206;

  *(v202 + 32) = v205;
  *(v202 + 40) = v207;
  v271 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v208 = v288;
  v209 = sub_1A524C634();

  v210 = sub_1A5241074();
  v211 = sub_1A524CA14();

  v212 = sub_1A524CA14();

  v213 = sub_1A524C634();
  v214 = sub_1A524C634();
  v215 = sub_1A524CA14();

  v216 = v208;
  v217 = sub_1A524CA14();
  LOBYTE(v263) = 1;
  v218 = [v271 initWithPhotoLibrary:v208 uuid:v209 date:v210 type:4 isFromMe:1 contributors:v211 avatarConfigurations:v212 albumGUID:v213 albumName:v214 cloudOwnerIsAllowlisted:v263 message:0 keyAssetUUIDs:v215 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v217 underlyingObject:0];

  (v291)(v286, v299);
  v219 = swift_allocObject();
  *(v219 + 16) = v301;
  v220 = qword_1EB1EBC30;
  *(v219 + 32) = qword_1EB1EBC30;
  v221 = v218;
  v222 = v220;
  v223 = sub_1A3C5A374();
  v224 = sub_1A3C5A374();
  v288 = v221;
  v286 = sub_1A4705FE8(v221, v223, v219, v224 & 1);
  v225 = v268;
  sub_1A52411B4();
  sub_1A5241164();
  v295(v225, v297);
  sub_1A5241104();
  v226 = swift_allocObject();
  *(v226 + 16) = v301;
  v227 = v284;
  *(v226 + 32) = v284;
  v228 = swift_allocObject();
  *(v228 + 16) = v301;
  v229 = v287;
  *(v228 + 32) = v287;
  v230 = swift_allocObject();
  *(v230 + 16) = v289;
  v231 = qword_1EB1EBC38;
  v296 = v229;
  v297 = v227;
  result = [v231 uuid];
  if (result)
  {
    v232 = result;
    v233 = sub_1A524C674();
    v235 = v234;

    *(v230 + 32) = v233;
    *(v230 + 40) = v235;
    v295 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
    v236 = v216;
    v237 = sub_1A524C634();

    v238 = sub_1A5241074();
    v239 = sub_1A524CA14();

    v240 = sub_1A524CA14();

    v241 = sub_1A524C634();
    v242 = sub_1A524C634();
    v243 = sub_1A524CA14();

    v244 = sub_1A524CA14();
    LOBYTE(v264) = 1;
    v245 = [v295 initWithPhotoLibrary:v236 uuid:v237 date:v238 type:3 isFromMe:1 contributors:v239 avatarConfigurations:v240 albumGUID:v241 albumName:v242 cloudOwnerIsAllowlisted:v264 message:0 keyAssetUUIDs:v243 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v244 underlyingObject:0];

    (v291)(v285, v299);
    v246 = swift_allocObject();
    *(v246 + 16) = v301;
    v247 = qword_1EB1EBC38;
    *(v246 + 32) = qword_1EB1EBC38;
    v248 = v245;
    v249 = v247;
    v250 = sub_1A3C5A374();
    v251 = sub_1A3C5A374();
    v252 = sub_1A4705FE8(v248, v250, v246, v251 & 1);
    v253 = swift_allocObject();
    *(v253 + 16) = xmmword_1A5324BC0;
    v254 = v272;
    *(v253 + 32) = v267;
    *(v253 + 40) = v254;
    v255 = v274;
    *(v253 + 48) = v276;
    *(v253 + 56) = v255;
    v256 = v265;
    *(v253 + 64) = v281;
    *(v253 + 72) = v256;
    *(v253 + 80) = v286;
    *(v253 + 88) = v252;

    return v253;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1A41EC340(double a1)
{
  sub_1A524A044();
  sub_1A41ECABC(0);
  sub_1A41EDFEC(&qword_1EB134F00, sub_1A41ECABC, MEMORY[0x1E6981F48]);

  return sub_1A5247D14();
}

uint64_t sub_1A41EC3EC(uint64_t a1)
{
  v2 = sub_1A41EDC2C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A41EC438(uint64_t a1)
{
  v2 = sub_1A41EDC2C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A41EC4D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A41ECC28(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41EC534(uint64_t a1, double a2)
{
  if (!qword_1EB134E60)
  {
    sub_1A41EC5F0(255, a2);
    sub_1A41EC674(255);
    sub_1A41EC7D0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134E60);
    }
  }
}

void sub_1A41EC5F0(uint64_t a1, double a2)
{
  if (!qword_1EB134E68)
  {
    sub_1A41EC674(255);
    sub_1A41EC7D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134E68);
    }
  }
}

void sub_1A41EC6A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41EC76C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A41EC7D0()
{
  result = qword_1EB134E80;
  if (!qword_1EB134E80)
  {
    sub_1A41EC674(255);
    sub_1A41EC880();
    sub_1A41EDFEC(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134E80);
  }

  return result;
}

unint64_t sub_1A41EC880()
{
  result = qword_1EB134E88;
  if (!qword_1EB134E88)
  {
    sub_1A41EC71C(255);
    sub_1A41EC900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134E88);
  }

  return result;
}

unint64_t sub_1A41EC900()
{
  result = qword_1EB134E90;
  if (!qword_1EB134E90)
  {
    sub_1A41EC744(255);
    sub_1A41EDFEC(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134E90);
  }

  return result;
}

void sub_1A41EC9E4(uint64_t a1)
{
  if (!qword_1EB134EA0)
  {
    sub_1A41ECA68(255, &qword_1EB134EA8, MEMORY[0x1E6981748], MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134EA0);
    }
  }
}

void sub_1A41ECA68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41ECAF0(uint64_t a1)
{
  if (!qword_1EB134EB8)
  {
    sub_1A41ECB58(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB134EB8);
    }
  }
}

void sub_1A41ECB58(uint64_t a1)
{
  if (!qword_1EB134EC0)
  {
    sub_1A41ECBEC(255);
    sub_1A41EDFEC(&qword_1EB134EF8, sub_1A41ECBEC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134EC0);
    }
  }
}

void sub_1A41ECC28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A41ECCA4(uint64_t a1, __n128 a2)
{
  if (!qword_1EB134ED8)
  {
    sub_1A41ECD6C(255);
    sub_1A41ECDA0(255);
    sub_1A41EDFEC(&qword_1EB134EF0, sub_1A41ECD6C, MEMORY[0x1E69E6338]);
    v2 = sub_1A524B9D4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB134ED8);
    }
  }
}

void sub_1A41ECDA0(uint64_t a1)
{
  if (!qword_1EB134EE8)
  {
    v2 = type metadata accessor for SharedAlbumsActivityEntryItem(255);
    v3 = sub_1A41EDFEC(&unk_1EB129830, type metadata accessor for SharedAlbumsActivityEntryItem, &unk_1A5327230);
    v5 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB134EE8);
    }
  }
}

unint64_t sub_1A41ECEC0()
{
  result = qword_1EB134F08;
  if (!qword_1EB134F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134F08);
  }

  return result;
}

void sub_1A41ECF30(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A41E52B0(319, &qword_1EB129D40, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A3DF0038(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PXSharedAlbumsSettingsLemonadeActivityFeedCompactCellDisplayStyle(319);
        if (v4 <= 0x3F)
        {
          sub_1A41E52B0(319, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A41ED068(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  sub_1A41E52B0(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  if (*(v9 + 84) <= 0x7FFFFFFEu)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8;
  v14 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v15 = v13 + 15;
  if (a2 <= v12)
  {
    goto LABEL_23;
  }

  v16 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v15 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v14) + 9;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = (a2 - v12 + ~(-1 << v17)) >> v17;
  if (v20 > 0xFFFE)
  {
    v18 = *&a1[v16];
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v20 > 0xFE)
  {
    v18 = *&a1[v16];
    if (!*&a1[v16])
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v20)
  {
LABEL_10:
    v18 = a1[v16];
    if (!a1[v16])
    {
      goto LABEL_23;
    }

LABEL_18:
    v21 = (v18 - 1) << v17;
    if (v16 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

LABEL_23:
  if (v7 >= v11)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  else
  {
    v23 = (&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v12 > 0x7FFFFFFE)
    {
      v26 = *(v9 + 48);

      return v26((v15 + ((((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v14);
    }

    else
    {
      v24 = *v23;
      if (*v23 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      if ((v24 + 1) >= 2)
      {
        return v24;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1A41ED334(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  sub_1A41E52B0(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  v11 = *(v10 - 8);
  v12 = *(v8 + 64);
  if (*(v11 + 84) <= 0x7FFFFFFEu)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(v11 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 15;
  v18 = ((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v17 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v16) + 9;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = (a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18);
    if (v22 > 0xFFFE)
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0xFF)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      *&a1[v18] = 0;
    }

    else if (v19)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v9 >= v13)
      {
        v25 = *(v28 + 56);

        v25(a1, a2, v9, v7);
      }

      else
      {
        v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (v14 > 0x7FFFFFFE)
        {
          v27 = *(v11 + 56);

          v27((v17 + ((((v24 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v16, a2);
        }

        else
        {
          *v24 = a2;
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v20 = ~v14 + a2;
  if (v18 < 4)
  {
    v21 = (v20 >> (8 * v18)) + 1;
    bzero(a1, v18);
    if (v18 == 1)
    {
      *a1 = v20;
      if (v19 <= 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v26 = v20 & ~(-1 << (8 * v18));
      *a1 = v26;
      a1[2] = BYTE2(v26);
      if (v19 <= 1)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    bzero(a1, v18);
    *a1 = v20;
    v21 = 1;
    if (v19 <= 1)
    {
LABEL_41:
      if (v19)
      {
        a1[v18] = v21;
      }

      return;
    }
  }

  if (v19 == 2)
  {
    *&a1[v18] = v21;
  }

  else
  {
    *&a1[v18] = v21;
  }
}

uint64_t sub_1A41ED6D0(uint64_t a1)
{
  result = sub_1A524B6D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A41ED758(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 271) & 0xFFFFFFFFFFFFFFF8) + 144;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v16) + 1;
}

double sub_1A41ED8A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 271) & 0xFFFFFFFFFFFFFFF8) + 144;
  if (v8 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 15) & 0xFFFFFFF8) + 271) & 0xFFFFFFF8) == 0xFFFFFF70)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      v20 = v9 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v23 = &a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v23 + 232) = 0u;
          *(v23 + 216) = 0u;
          *(v23 + 200) = 0u;
          *(v23 + 184) = 0u;
          *(v23 + 168) = 0u;
          *(v23 + 152) = 0u;
          *(v23 + 136) = 0u;
          *(v23 + 120) = 0u;
          *(v23 + 104) = 0u;
          *(v23 + 88) = 0u;
          *(v23 + 72) = 0u;
          *(v23 + 56) = 0u;
          *(v23 + 40) = 0u;
          *(v23 + 24) = 0u;
          *(v23 + 8) = 0u;
          *(v23 + 248) = 0u;
          *v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v23 + 32) = a2 - 1;
        }
      }

      else if (v7 >= a2)
      {
        v24 = *(v5 + 56);

        v24();
      }

      else if (v9 != -8)
      {
        v21 = ~v7 + a2;
        v22 = a1;
        bzero(a1, v20);
        *v22 = v21;
      }

      return result;
    }
  }

  if (((((v9 + 15) & 0xFFFFFFF8) + 271) & 0xFFFFFFF8) == 0xFFFFFF70)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 15) & 0xFFFFFFF8) + 271) & 0xFFFFFFF8) != 0xFFFFFF70)
  {
    v17 = ~v8 + a2;
    v18 = a1;
    bzero(a1, ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 271) & 0xFFFFFFFFFFFFFFF8) + 144);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }

  return result;
}

void sub_1A41EDB04(uint64_t a1)
{
  if (!qword_1EB134F18)
  {
    sub_1A41EC49C(255);
    sub_1A41EDFEC(&qword_1EB134F20, sub_1A41EC49C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134F18);
    }
  }
}

void sub_1A41EDB98(uint64_t a1)
{
  if (!qword_1EB134F30)
  {
    sub_1A41ECABC(255);
    sub_1A41EDFEC(&qword_1EB134F00, sub_1A41ECABC, MEMORY[0x1E6981F48]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134F30);
    }
  }
}

unint64_t sub_1A41EDC2C()
{
  result = qword_1EB134F40;
  if (!qword_1EB134F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134F40);
  }

  return result;
}

uint64_t sub_1A41EDC80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A41EDDFC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1A41EDCF0(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1A41EDD10@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(0, v4, v5, a1) - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1A41E83DC(v8, v4, v5, v6, a2);
}

uint64_t sub_1A41EDD9C@<X0>(uint64_t *a3@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  *a3 = v5;
  return result;
}

void sub_1A41EDDFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A41EDE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A41EDED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41EDF3C()
{
  result = qword_1EB134F60;
  if (!qword_1EB134F60)
  {
    sub_1A41E51C0(255);
    sub_1A41EDFEC(&qword_1EB134F68, sub_1A41E51E8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134F60);
  }

  return result;
}

uint64_t sub_1A41EDFEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A41EE034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41EE09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41EE10C()
{
  sub_1A41EE630(0, &qword_1EB134F70, type metadata accessor for TimelineEngineSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

void sub_1A41EE180(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A41EE1E8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v31 = sub_1A5249CA4();
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EE5FC(255);
  *&v38 = v6;
  v7 = a1[4];
  v34 = a1[2];
  v35 = v7;
  v45 = v34;
  v46 = v7;
  swift_getOpaqueTypeMetadata2();
  *(&v38 + 1) = sub_1A524DF24();
  v8 = a1[5];
  v32 = a1[3];
  v33 = v8;
  v45 = v32;
  v46 = v8;
  swift_getOpaqueTypeMetadata2();
  *&v39 = sub_1A524DF24();
  sub_1A41EF3AC(255);
  *(&v39 + 1) = v9;
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  swift_getWitnessTable();
  v10 = sub_1A524B8B4();
  v11 = sub_1A41EF1A0(&qword_1EB1221E0, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  v12 = sub_1A5248154();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  (*(**v2 + 168))(v17);
  sub_1A5249C94();
  (*(*(a1 - 1) + 16))(&v38, v2, a1);
  v20 = swift_allocObject();
  *&v21 = v34;
  *&v22 = v35;
  *(&v21 + 1) = v32;
  *(&v22 + 1) = v33;
  *(v20 + 16) = v21;
  *(v20 + 32) = v22;
  v23 = v43;
  *(v20 + 112) = v42;
  *(v20 + 128) = v23;
  *(v20 + 144) = v44;
  v24 = v39;
  *(v20 + 48) = v38;
  *(v20 + 64) = v24;
  v25 = v41;
  *(v20 + 80) = v40;
  *(v20 + 96) = v25;
  WitnessTable = swift_getWitnessTable();
  sub_1A41F18A4(v5, sub_1A41EFB6C, v20, v31, v10, v11, WitnessTable);
  v37 = WitnessTable;
  swift_getWitnessTable();
  v27 = *(v13 + 16);
  v27(v19, v15, v12);
  v28 = *(v13 + 8);
  v28(v15, v12);
  v27(v36, v19, v12);
  return (v28)(v19, v12);
}

void sub_1A41EE630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A41EE70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A41EE778(uint64_t a1)
{
  if (!qword_1EB134FA0)
  {
    sub_1A41F44D8(255, &qword_1EB134FA8, sub_1A41EE81C, sub_1A41EF370, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134FA0);
    }
  }
}

void sub_1A41EE81C(uint64_t a1)
{
  if (!qword_1EB134FB0)
  {
    sub_1A41EE630(255, &qword_1EB134FB8, sub_1A41EE8D0, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB1350A0, &qword_1EB134FB8, sub_1A41EE8D0);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134FB0);
    }
  }
}

void sub_1A41EE8D0(uint64_t a1)
{
  if (!qword_1EB134FC0)
  {
    sub_1A41EE938(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB134FC0);
    }
  }
}

void sub_1A41EE938(uint64_t a1)
{
  if (!qword_1EB134FC8)
  {
    sub_1A41EE630(255, &qword_1EB134FD0, sub_1A41EE9EC, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB135098, &qword_1EB134FD0, sub_1A41EE9EC);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134FC8);
    }
  }
}

void sub_1A41EE9EC(uint64_t a1)
{
  if (!qword_1EB134FD8)
  {
    sub_1A41F46B8(255, &qword_1EB134FE0, sub_1A41EEA80);
    sub_1A41EEF10(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB134FD8);
    }
  }
}

void sub_1A41EEA80(uint64_t a1)
{
  if (!qword_1EB134FE8)
  {
    sub_1A41EEB00(255);
    sub_1A405D430(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134FE8);
    }
  }
}

void sub_1A41EEB00(uint64_t a1)
{
  if (!qword_1EB134FF0)
  {
    sub_1A41EE630(255, &qword_1EB134FF8, sub_1A41EEBB4, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB135050, &qword_1EB134FF8, sub_1A41EEBB4);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134FF0);
    }
  }
}

void sub_1A41EEBB4(uint64_t a1)
{
  if (!qword_1EB135000)
  {
    sub_1A41EEC5C(255);
    sub_1A41F47E8(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB135000);
    }
  }
}

void sub_1A41EEC5C(uint64_t a1)
{
  if (!qword_1EB135008)
  {
    sub_1A41EE630(255, &qword_1EB135010, sub_1A41EED10, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB135048, &qword_1EB135010, sub_1A41EED10);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135008);
    }
  }
}

void sub_1A41EED10(uint64_t a1)
{
  if (!qword_1EB135018)
  {
    sub_1A41EED78(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB135018);
    }
  }
}

void sub_1A41EEDF0(uint64_t a1)
{
  if (!qword_1EB135030)
  {
    sub_1A41EEEB4(255);
    sub_1A41EF1A0(&qword_1EB135040, sub_1A41EEEB4, MEMORY[0x1E697E2E0]);
    v1 = sub_1A52488F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135030);
    }
  }
}

void sub_1A41EEEB4(uint64_t a1)
{
  if (!qword_1EB135038)
  {
    sub_1A3FA9580();
    v1 = sub_1A52483A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135038);
    }
  }
}

void sub_1A41EEF10(uint64_t a1)
{
  if (!qword_1EB135058)
  {
    sub_1A41EE630(255, &qword_1EB135060, sub_1A41EEFC4, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB135090, &qword_1EB135060, sub_1A41EEFC4);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135058);
    }
  }
}

void sub_1A41EEFC4(uint64_t a1)
{
  if (!qword_1EB135068)
  {
    sub_1A41EF038(255);
    sub_1A41EF1E8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB135068);
    }
  }
}

void sub_1A41EF038(uint64_t a1)
{
  if (!qword_1EB135070)
  {
    sub_1A41EF13C(255);
    sub_1A52439C4();
    sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C, MEMORY[0x1E697D680]);
    sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760], MEMORY[0x1E69C2758]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135070);
    }
  }
}

void sub_1A41EF13C(uint64_t a1)
{
  if (!qword_1EB135078)
  {
    sub_1A3F98058(255);
    sub_1A3F99568();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135078);
    }
  }
}

uint64_t sub_1A41EF1A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A41EF1E8(uint64_t a1)
{
  if (!qword_1EB135088)
  {
    sub_1A41EF038(255);
    sub_1A41EF13C(255);
    sub_1A52439C4();
    sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C, MEMORY[0x1E697D680]);
    sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760], MEMORY[0x1E69C2758]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135088);
    }
  }
}

uint64_t sub_1A41EF30C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A41EE630(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A41EF3AC(uint64_t a1)
{
  if (!qword_1EB1350A8)
  {
    sub_1A41EE630(255, &qword_1EB1350B0, type metadata accessor for TimelineEngineCell, MEMORY[0x1E69E62F8]);
    sub_1A52411C4();
    sub_1A41EE630(255, &qword_1EB1350B8, sub_1A41EF4E0, MEMORY[0x1E69E6720]);
    sub_1A41EF714();
    sub_1A41EF1A0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1350A8);
    }
  }
}

void sub_1A41EF4E0(uint64_t a1)
{
  if (!qword_1EB1350C0)
  {
    sub_1A41EF564(255);
    sub_1A41EF610();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1350C0);
    }
  }
}

void sub_1A41EF564(uint64_t a1)
{
  if (!qword_1EB1350C8)
  {
    type metadata accessor for TimelineEngineCellDebugViewModifier(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1350C8);
    }
  }
}

uint64_t type metadata accessor for TimelineEngineCellDebugViewModifier(uint64_t a1)
{
  result = qword_1EB160250;
  if (!qword_1EB160250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A41EF610()
{
  result = qword_1EB1350D0;
  if (!qword_1EB1350D0)
  {
    sub_1A41EF564(255);
    sub_1A41EF6C0();
    sub_1A41EF1A0(&qword_1EB1350E0, type metadata accessor for TimelineEngineCellDebugViewModifier, &unk_1A5324FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1350D0);
  }

  return result;
}

unint64_t sub_1A41EF6C0()
{
  result = qword_1EB1350D8;
  if (!qword_1EB1350D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1350D8);
  }

  return result;
}

unint64_t sub_1A41EF714()
{
  result = qword_1EB1350E8;
  if (!qword_1EB1350E8)
  {
    sub_1A41EE630(255, &qword_1EB1350B0, type metadata accessor for TimelineEngineCell, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1350E8);
  }

  return result;
}

uint64_t sub_1A41EF79C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v42 = a2;
  v43 = a1;
  v44 = a7;
  sub_1A41EE5FC(255);
  v54 = v11;
  v12 = a3;
  v37 = a5;
  swift_getOpaqueTypeMetadata2();
  v55 = sub_1A524DF24();
  v52 = a4;
  v53 = a6;
  v36 = a6;
  swift_getOpaqueTypeMetadata2();
  v56 = sub_1A524DF24();
  sub_1A41EF3AC(255);
  v57 = v13;
  swift_getTupleTypeMetadata();
  v41 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A524B8B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v35 - v18;
  v19 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TimelineEngineFrame(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v12;
  v55 = a4;
  v25 = v12;
  v56 = a5;
  v57 = a6;
  type metadata accessor for TimelineEngine(0, &v54);
  v26 = v42;
  v27 = sub_1A41EE10C();
  v28 = *v26;
  sub_1A3DD108C(0);

  v29 = v43;
  sub_1A5248124();
  sub_1A3F46C44(v27, v28, v21, v24);
  v45 = v25;
  v46 = a4;
  v47 = v37;
  v48 = v36;
  v49 = v26;
  v50 = v24;
  v51 = v29;
  sub_1A524BC74();
  v30 = v38;
  sub_1A524B8A4();
  swift_getWitnessTable();
  v31 = *(v15 + 16);
  v32 = v39;
  v31(v39, v30, v14);
  v33 = *(v15 + 8);
  v33(v30, v14);
  v31(v44, v32, v14);
  v33(v32, v14);
  return sub_1A41F4B24(v24, type metadata accessor for TimelineEngineFrame);
}

uint64_t sub_1A41EFB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v83 = a3;
  v93 = a2;
  v92 = a8;
  v13 = type metadata accessor for TimelineEngineFrame(0);
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = v14;
  v87 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EF3AC(0);
  v91 = v15;
  v90 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v74 - v18;
  v81 = sub_1A5241144();
  v80 = *(v81 - 1);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v110 = a5;
  *(&v110 + 1) = a7;
  swift_getOpaqueTypeMetadata2();
  v99 = sub_1A524DF24();
  v104 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = (&v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v74 - v22;
  *&v110 = a4;
  *(&v110 + 1) = a6;
  swift_getOpaqueTypeMetadata2();
  v96 = sub_1A524DF24();
  v103 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v101 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v74 - v25;
  sub_1A41EE694(0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EE5FC(0);
  v84 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v95 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v74 - v34;
  v36 = a4;
  *&v110 = a4;
  *(&v110 + 1) = a5;
  *&v88 = a5;
  v37 = a6;
  *&v111 = a6;
  *(&v111 + 1) = a7;
  *(&v88 + 1) = a7;
  v38 = type metadata accessor for TimelineEngine(0, &v110);
  v39 = *sub_1A41EE10C();
  LOBYTE(a5) = (*(v39 + 336))();

  if (a5)
  {
    sub_1A41F0808(v93, v38, v30);
  }

  v40 = v93;
  v41 = a1;
  v94 = v35;
  (*(v28 + 56))(v35, 1, 1, v27);
  v42 = v101;
  sub_1A41F09A0(v40, v38, v101);
  v43 = v41;
  *&v110 = v36;
  *(&v110 + 1) = v37;
  v74 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = MEMORY[0x1E6982090];
  v44 = v96;
  WitnessTable = swift_getWitnessTable();
  v45 = v103;
  v46 = *(v103 + 16);
  v76 = v103 + 16;
  v77 = v46;
  v46(v102, v42, v44);
  v47 = *(v45 + 8);
  v103 = v45 + 8;
  v82 = v47;
  v47(v42, v44);
  sub_1A3DD108C(0);
  v48 = v79;
  sub_1A5248124();
  v49 = v97;
  sub_1A41F0DCC(v48, v38, v97);
  (*(v80 + 8))(v48, v81);
  v50 = v88;
  v110 = v88;
  v117 = swift_getOpaqueTypeConformance2();
  v51 = v99;
  v83 = swift_getWitnessTable();
  v52 = v104;
  v81 = *(v104 + 16);
  v81(v98, v49, v51);
  v53 = *(v52 + 8);
  v104 = v52 + 8;
  v53(v49, v51);
  v54 = *sub_1A41EE10C();
  v55 = (*(v54 + 384))();

  v109[0] = v55;
  (*(*(v38 - 1) + 16))(&v110, v43, v38);
  v56 = v87;
  sub_1A41F4000(v93, v87, type metadata accessor for TimelineEngineFrame);
  v57 = (*(v85 + 80) + 152) & ~*(v85 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v36;
  *(v58 + 24) = v50;
  *(v58 + 32) = v74;
  *(v58 + 40) = *(&v50 + 1);
  v59 = v115;
  *(v58 + 112) = v114;
  *(v58 + 128) = v59;
  *(v58 + 144) = v116;
  v60 = v111;
  *(v58 + 48) = v110;
  *(v58 + 64) = v60;
  v61 = v113;
  *(v58 + 80) = v112;
  *(v58 + 96) = v61;
  sub_1A41F5314(v56, v58 + v57, type metadata accessor for TimelineEngineFrame);
  sub_1A41EE630(0, &qword_1EB1350B0, type metadata accessor for TimelineEngineCell, MEMORY[0x1E69E62F8]);
  sub_1A52411C4();
  sub_1A41EE630(0, &qword_1EB1350B8, sub_1A41EF4E0, MEMORY[0x1E69E6720]);
  sub_1A41EF714();
  sub_1A41F5428();
  sub_1A41EF1A0(&qword_1EB1351B8, type metadata accessor for TimelineEngineCell, &unk_1A531B018);
  v62 = v89;
  sub_1A524B9C4();
  v63 = v95;
  sub_1A41F5500(v94, v95, sub_1A41EE5FC);
  *&v110 = v63;
  v64 = v101;
  v65 = v96;
  v77(v101, v102, v96);
  *(&v110 + 1) = v64;
  v66 = v98;
  v67 = v99;
  v81(v49, v98, v99);
  *&v111 = v49;
  v68 = v90;
  v69 = v100;
  v70 = v91;
  (*(v90 + 16))(v100, v62, v91);
  *(&v111 + 1) = v69;
  v109[0] = v84;
  v109[1] = v65;
  v109[2] = v67;
  v109[3] = v70;
  v105 = sub_1A41F5568(&qword_1EB1351C0, sub_1A41EE5FC, sub_1A41F4CE4, v75);
  v106 = WitnessTable;
  v107 = v83;
  v108 = sub_1A41F5568(&qword_1EB1351C8, sub_1A41EF3AC, sub_1A41F5428, MEMORY[0x1E69819D0]);
  sub_1A3DF4988(&v110, 4uLL, v109);
  v71 = *(v68 + 8);
  v71(v62, v70);
  v53(v66, v67);
  v72 = v82;
  v82(v102, v65);
  sub_1A41F55D8(v94, sub_1A41EE5FC);
  v71(v100, v70);
  v53(v97, v67);
  v72(v101, v65);
  return sub_1A41F55D8(v95, sub_1A41EE5FC);
}

void sub_1A41F0808(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1A5249574();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  sub_1A41F1B80(0);
  sub_1A41F1A00(v4, a1, a2[2], a2[3], a2[4], a2[5]);
}

uint64_t sub_1A41F09A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  v40 = *(*(a2 + 16) - 8);
  v41 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v45 = v8;
  v47 = v8;
  v48 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v37 - v14;
  v15 = sub_1A524DF24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v37 - v19;
  v20 = *(v3 + 72);
  if (v20)
  {
    v44 = v10;
    v21 = *(v3 + 80);
    v37 = v18;

    v38 = v15;
    v23 = v40;
    v20(v22);
    v24 = sub_1A41EE10C();
    v25 = v41;
    v41 = v16;
    v26 = v45;
    sub_1A42EFB50(v24, v25, v45, v7);
    sub_1A3C33378(v20, v21);

    v27 = v26;
    v16 = v41;
    (*(v23 + 8))(v5, v27);
    v15 = v38;
    v28 = v39;
    v29 = *(v44 + 16);
    v29(v39, v12, OpaqueTypeMetadata2);
    v30 = *(v44 + 8);
    v30(v12, OpaqueTypeMetadata2);
    v29(v12, v28, OpaqueTypeMetadata2);
    v10 = v44;
    v30(v28, OpaqueTypeMetadata2);
    v31 = v37;
    (*(v10 + 32))(v37, v12, OpaqueTypeMetadata2);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v18;
  }

  (*(v10 + 56))(v31, v32, 1, OpaqueTypeMetadata2);
  v33 = *(v16 + 16);
  v34 = v42;
  v33(v42, v31, v15);
  v35 = *(v16 + 8);
  v35(v31, v15);
  v47 = v45;
  v48 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v33(v43, v34, v15);
  return (v35)(v34, v15);
}

uint64_t sub_1A41F0DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t, __n128)@<X8>)
{
  v47 = a1;
  v5 = *(a2 + 24);
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 40);
  v55 = v5;
  v56 = v8;
  v52 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v43 - v12;
  v13 = sub_1A524DF24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v43 - v19);
  v21 = (*(**v3 + 288))(v18);
  v53 = v5;
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v45 = a3;
    v24 = v3[11];
    if (v24)
    {
      v25 = *&v21;
      v44 = v3[12];
      v26 = v24;

      sub_1A5240ED4();
      v28 = v27 - v25;
      if (v28 > 0.0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0.0;
      }

      v30 = *sub_1A41EE10C();
      v31 = (*(v30 + 720))();

      v33 = v49;
      v26(v32);
      v34 = sub_1A41EE10C();
      v35 = v46;
      sub_1A42EFC4C(v34, v53, v52, v29 / v31);
      sub_1A3C33378(v26, v44);

      v50[1](v33, v53);
      v50 = v20;
      v36 = v51;
      v49 = *(v51 + 16);
      v37 = v48;
      (v49)(v48, v35, OpaqueTypeMetadata2);
      v38 = *(v36 + 8);
      v38(v35, OpaqueTypeMetadata2);
      (v49)(v35, v37, OpaqueTypeMetadata2);
      v38(v37, OpaqueTypeMetadata2);
      v39 = v36;
      v20 = v50;
      (*(v39 + 32))(v16, v35, OpaqueTypeMetadata2);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    a3 = v45;
  }

  (*(v51 + 56))(v16, v23, 1, OpaqueTypeMetadata2);
  v40 = *(v14 + 16);
  v40(v20, v16, v13);
  v41 = *(v14 + 8);
  v41(v16, v13);
  v55 = v53;
  v56 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v40(a3, v20, v13);
  return (v41)(v20, v13);
}

uint64_t sub_1A41F12C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v55 = a7;
  sub_1A41EF564(0);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EF4E0(0);
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TimelineEngine3DGeometry(0);
  MEMORY[0x1EEE9AC00](v49);
  v50 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TimelineEngineCell(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TimelineEngineFrame(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TimelineEngineCellFrame(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = (&v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61[0] = a3;
  v61[1] = a4;
  v61[2] = a5;
  v61[3] = a6;
  type metadata accessor for TimelineEngine(0, v61);
  v27 = sub_1A41EE10C();
  sub_1A41F4000(a2, v23, type metadata accessor for TimelineEngineFrame);
  sub_1A41F4000(a1, v20, type metadata accessor for TimelineEngineCell);
  sub_1A3F47594(v27, v23, v20, v26);
  sub_1A41EE180(0, &qword_1EB134F80, &qword_1EB134F78, &protocol descriptor for TimelineEngineDataSource, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v28 = v59;
  v29 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  (v29[2])(&v56, v26, v28, v29);
  if (v57)
  {
    sub_1A3C34460(&v56, v61);
    __swift_destroy_boxed_opaque_existential_0(v58);
    v30 = sub_1A41EE10C();
    sub_1A41F4000(a1, v20, type metadata accessor for TimelineEngineCell);
    sub_1A3F4678C();
    v32 = v31;
    sub_1A3F471F8();
    v33 = v50;
    sub_1A3EF9390(v30, v20, v50, v32, v34);
    sub_1A3C341C8(v61, v58);
    v35 = sub_1A41EE10C();
    v36 = v48;
    sub_1A470FEC0(v58, v35, v48);
    v37 = v51;
    v38 = v36 + *(v51 + 36);
    sub_1A41F4000(a1, v38, type metadata accessor for TimelineEngineCell);
    v39 = type metadata accessor for TimelineEngineCellDebugViewModifier(0);
    sub_1A41F4000(v26, v38 + *(v39 + 20), type metadata accessor for TimelineEngineCellFrame);
    v40 = sub_1A41EE10C();
    v59 = v49;
    v60 = &off_1F16E75F8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
    sub_1A41F4000(v33, boxed_opaque_existential_1, type metadata accessor for TimelineEngine3DGeometry);
    v42 = sub_1A41EF610();
    v43 = v52;
    sub_1A42EDE20(v40, a1, v58, v26, v37, v42);

    sub_1A41F4B24(v36, sub_1A41EF564);
    sub_1A41F4B24(v33, type metadata accessor for TimelineEngine3DGeometry);
    __swift_destroy_boxed_opaque_existential_0(v61);
    sub_1A41F4B24(v26, type metadata accessor for TimelineEngineCellFrame);
    __swift_destroy_boxed_opaque_existential_0(v58);
    v45 = v53;
    v44 = v54;
    v46 = v55;
    (*(v53 + 32))(v55, v43, v54);
    return (*(v45 + 56))(v46, 0, 1, v44);
  }

  else
  {
    sub_1A41F4B24(v26, type metadata accessor for TimelineEngineCellFrame);
    sub_1A41F5638(&v56, &qword_1EB1351D0, &qword_1EB1351D8, &protocol descriptor for TimelineEngineData, MEMORY[0x1E69E6720]);
    __swift_destroy_boxed_opaque_existential_0(v58);
    return (*(v53 + 56))(v55, 1, 1, v54);
  }
}

uint64_t sub_1A41F18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_1A5248144();
  return (*(v14 + 8))(a1, a4);
}

void sub_1A41F1A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A41EE938(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v17 - v15;
  *v16 = sub_1A5249304();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_1A41F42D8(0, &qword_1EB1351A8, &qword_1EB134FD0, sub_1A41EE9EC);
  sub_1A41F1C18(a1, a2, a3, a4, a5, a6);
}

void sub_1A41F1B80(uint64_t a1)
{
  if (!qword_1EB1350F0)
  {
    sub_1A41EE630(255, &qword_1EB134FB8, sub_1A41EE8D0, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1350F0);
    }
  }
}

void sub_1A41F1C18(void x0_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A41EEF10(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for TimelineEngine(0, v14);
  sub_1A41F1DE8(a1, v13);
}

void sub_1A41F1DE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19[9] = a2;
  sub_1A41EE630(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v19[7] = v19 - v4;
  v19[8] = sub_1A5249584();
  v25 = 1;
  v21 = sub_1A5249314();
  v33 = 1;
  v19[3] = a1;
  *v5.i64 = sub_1A3F466C0();
  *v6.i64 = *v5.i64 - trunc(*v5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v20 = vnegq_f64(v7);
  v22 = vbslq_s8(v20, v6, v5);
  v8 = sub_1A524B434();
  sub_1A5247EE4();
  v9 = sub_1A524BC74();
  v11 = v10;
  v12 = sub_1A524B434();
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A3F466C0();
  v32[0] = sub_1A524CEE4();
  v32[1] = v13;
  sub_1A3D5F9DC();
  v14 = sub_1A524A464();
  v16 = v15;
  *&v26[0] = 0;
  *(&v26[0] + 1) = v22.i64[0];
  v26[1] = v34;
  v26[2] = v35;
  *&v27 = v36;
  *(&v27 + 1) = v8;
  LOWORD(v28) = 256;
  *(&v28 + 1) = v9;
  *&v29 = v11;
  *(&v29 + 1) = v12;
  v30 = 0x4024000000000000uLL;
  *&v31[0] = 0;
  *(&v31[2] + 8) = v24;
  *(&v31[1] + 8) = v23[22];
  *(v31 + 8) = v23[21];
  v18 = v17 & 1;
  v37 = v17 & 1;
  v23[4] = v28;
  v23[5] = v29;
  v23[2] = v35;
  v23[3] = v27;
  v23[0] = v26[0];
  v23[1] = v34;
  *&v23[10] = *(&v24 + 1);
  v23[8] = v31[1];
  v23[9] = v31[2];
  v23[6] = 0x4024000000000000uLL;
  v23[7] = v31[0];
  sub_1A41F4000(v26, v32, sub_1A41EED78);
  sub_1A3E75E68(v14, v16, v18);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41F2B0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v41 = a2;
  v44 = a5;
  sub_1A41EF1E8(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  sub_1A41EF038(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  v45[0] = a1;
  v45[1] = v41;
  v45[2] = a3;
  v45[3] = a4;
  v26 = type metadata accessor for TimelineEngine(0, v45);
  v27 = v25;
  v40 = v25;
  sub_1A41F2E54(v26);
  v38 = v12;
  sub_1A41F3128(v26, sub_1A41F43A0, sub_1A41F34C0, v12);
  sub_1A41F319C(v26);
  v28 = *(v15 + 16);
  v29 = v19;
  v39 = v19;
  v28(v19, v27, v14);
  v30 = v43;
  sub_1A41F5500(v12, v43, sub_1A41EF1E8);
  v31 = v42;
  v28(v42, v22, v14);
  v32 = v44;
  v28(v44, v29, v14);
  sub_1A41EEFC4(0);
  v34 = v33;
  sub_1A41F5500(v30, &v32[*(v33 + 48)], sub_1A41EF1E8);
  v28(&v32[*(v34 + 64)], v31, v14);
  v35 = *(v15 + 8);
  v35(v22, v14);
  sub_1A41F55D8(v38, sub_1A41EF1E8);
  v35(v40, v14);
  v35(v31, v14);
  sub_1A41F55D8(v30, sub_1A41EF1E8);
  return (v35)(v39, v14);
}

uint64_t sub_1A41F2E54(uint64_t a1)
{
  v3 = sub_1A52439C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EF13C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a1 - 8) + 16))(v20, v1, a1, v10);
  v13 = swift_allocObject();
  v14 = *(a1 + 32);
  *(v13 + 16) = *(a1 + 16);
  *(v13 + 32) = v14;
  v15 = v20[5];
  *(v13 + 112) = v20[4];
  *(v13 + 128) = v15;
  *(v13 + 144) = v21;
  v16 = v20[1];
  *(v13 + 48) = v20[0];
  *(v13 + 64) = v16;
  v17 = v20[3];
  *(v13 + 80) = v20[2];
  *(v13 + 96) = v17;
  sub_1A3F98058(0);
  sub_1A3F99568();
  sub_1A524B704();
  sub_1A5247DB4();
  sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C, MEMORY[0x1E697D680]);
  sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760], MEMORY[0x1E69C2758]);
  sub_1A524A944();
  (*(v4 + 8))(v6, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1A41F3128@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1A5249304();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  a2(0);
  return a3(v5, a1[2], a1[3], a1[4], a1[5]);
}

uint64_t sub_1A41F319C(void *a1)
{
  v3 = sub_1A52439C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A41EF13C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*(a1 - 1) + 16))(v28, v1, a1, v10);
  v13 = swift_allocObject();
  v14 = a1[2];
  v15 = a1[3];
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  v16 = a1[4];
  v17 = a1[5];
  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  v18 = v28[5];
  *(v13 + 112) = v28[4];
  *(v13 + 128) = v18;
  *(v13 + 144) = v29;
  v19 = v28[1];
  *(v13 + 48) = v28[0];
  *(v13 + 64) = v19;
  v20 = v28[3];
  *(v13 + 80) = v28[2];
  *(v13 + 96) = v20;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v1;
  sub_1A3F98058(0);
  sub_1A3F99568();
  sub_1A524B704();
  sub_1A5247DB4();
  sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C, MEMORY[0x1E697D680]);
  sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760], MEMORY[0x1E69C2758]);
  sub_1A524A944();
  (*(v4 + 8))(v6, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1A41F3478@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  result = sub_1A524B434();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1A41F34C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v11 = sub_1A52439C4();
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EF13C(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a2;
  *(&v28 + 1) = a3;
  *&v29 = a4;
  *(&v29 + 1) = a5;
  v19 = type metadata accessor for TimelineEngine(0, &v28);
  (*(*(v19 - 8) + 16))(&v28, a1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  v21 = v33;
  *(v20 + 112) = v32;
  *(v20 + 128) = v21;
  *(v20 + 144) = v34;
  v22 = v29;
  *(v20 + 48) = v28;
  *(v20 + 64) = v22;
  v23 = v31;
  *(v20 + 80) = v30;
  *(v20 + 96) = v23;
  sub_1A3F98058(0);
  sub_1A3F99568();
  sub_1A524B704();
  sub_1A5247DB4();
  sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C, MEMORY[0x1E697D680]);
  sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760], MEMORY[0x1E69C2758]);
  sub_1A524A944();
  (*(v26 + 8))(v13, v11);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1A41F37BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimelineEngineFrame(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  type metadata accessor for TimelineEngine(0, v21);
  v16 = sub_1A41EE10C();
  v17 = *a1;

  sub_1A5241134();
  sub_1A3F46C44(v16, v17, v12, v15);
  sub_1A5240ED4();
  (*(*v17 + 296))(v18, 0);
  v19 = sub_1A3F468A4();
  (*(*v17 + 320))(COERCE_DOUBLE(*&v19), 0);
  return sub_1A41F4B24(v15, type metadata accessor for TimelineEngineFrame);
}

uint64_t sub_1A41F3998@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  result = sub_1A524B434();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1A41F39E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41F44D8(0, &qword_1EB135108, sub_1A41F455C, sub_1A41F45A4, MEMORY[0x1E697F948]);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  sub_1A41F455C(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = **(v2 + *(type metadata accessor for TimelineEngineCellDebugViewModifier(0) + 20));
  if ((*(v13 + 336))())
  {
    v24[1] = a2;
    v14 = sub_1A524BC74();
    v24[0] = v6;
    v16 = v15;
    sub_1A41F3DC8(&v26);
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v32 = v26;
    v33 = v27;
    *&v37 = v31;
    *(&v37 + 1) = v14;
    v38 = v16;
    sub_1A41F45A4(0);
    (*(*(v17 - 8) + 16))(v12, a1, v17);
    v18 = &v12[*(v10 + 36)];
    v19 = v37;
    *(v18 + 4) = v36;
    *(v18 + 5) = v19;
    *(v18 + 12) = v38;
    v20 = v33;
    *v18 = v32;
    *(v18 + 1) = v20;
    v21 = v35;
    *(v18 + 2) = v34;
    *(v18 + 3) = v21;
    v39[0] = v26;
    v39[1] = v27;
    v39[3] = v29;
    v39[4] = v30;
    v39[2] = v28;
    v40 = v31;
    v41 = v14;
    v42 = v16;
    sub_1A41F4000(&v32, &v25, sub_1A41F4638);
    sub_1A41F4B24(v39, sub_1A41F4638);
    sub_1A41F4000(v12, v8, sub_1A41F455C);
    swift_storeEnumTagMultiPayload();
    sub_1A41F4A44();
    sub_1A41EF1A0(&qword_1EB135160, sub_1A41F45A4, MEMORY[0x1E697FDF8]);
    sub_1A5249744();
    return sub_1A41F4B24(v12, sub_1A41F455C);
  }

  else
  {
    sub_1A41F45A4(0);
    (*(*(v23 - 8) + 16))(v8, a1, v23);
    swift_storeEnumTagMultiPayload();
    sub_1A41F4A44();
    sub_1A41EF1A0(&qword_1EB135160, sub_1A41F45A4, MEMORY[0x1E697FDF8]);
    return sub_1A5249744();
  }
}

uint64_t sub_1A41F3DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E6980E30];
  v3 = MEMORY[0x1E69E6720];
  sub_1A41EE630(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v25 = sub_1A5249574();
  type metadata accessor for TimelineEngineCellDebugViewModifier(0);
  sub_1A3F471A0();
  v26 = sub_1A524CEE4();
  v27 = v7;
  sub_1A3D5F9DC();
  v8 = sub_1A524A464();
  v23 = v9;
  v24 = v8;
  v11 = v10;
  v13 = v12;
  sub_1A524A184();
  v14 = *MEMORY[0x1E6980E08];
  v15 = sub_1A524A154();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v6, v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = sub_1A524A1B4();
  sub_1A41F5124(v6, &unk_1EB1276B0, v2, v3);
  KeyPath = swift_getKeyPath();
  LOBYTE(v26) = 1;
  v28 = v11 & 1;
  v19 = sub_1A524B434();
  result = swift_getKeyPath();
  v21 = v24;
  *a1 = v25;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v22 = v23;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v11 & 1;
  *(a1 + 48) = v13;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v17;
  *(a1 + 72) = result;
  *(a1 + 80) = v19;
  return result;
}

uint64_t sub_1A41F4000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41F406C@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, char *a7@<X8>)
{
  v24[1] = a3;
  v25 = a2;
  v24[0] = a1;
  v26 = a7;
  sub_1A3DD108C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  v19 = sub_1A5248134();
  v21 = *(v19 - 8);
  result = v19 - 8;
  if (*(v21 + 64) == v11)
  {
    (*(v10 + 16))(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24[0], v9);
    v25(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 8))(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v22 = *(v12 + 16);
    v22(v18, v15, a5);
    v23 = *(v12 + 8);
    v23(v15, a5);
    v22(v26, v18, a5);
    return (v23)(v18, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A41F42D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A41EE630(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A41F43A0(uint64_t a1)
{
  if (!qword_1EB135100)
  {
    sub_1A41EF038(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135100);
    }
  }
}

uint64_t sub_1A41F4454@<X0>(uint64_t *a1@<X8>)
{
  (*(***(v1 + 48) + 168))();
  v3 = sub_1A524B544();
  result = sub_1A524B434();
  *a1 = v3;
  a1[1] = result;
  return result;
}

void sub_1A41F44D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A41F45A4(uint64_t a1)
{
  if (!qword_1EB135118)
  {
    type metadata accessor for TimelineEngineCellDebugViewModifier(255);
    sub_1A41EF1A0(&qword_1EB1350E0, type metadata accessor for TimelineEngineCellDebugViewModifier, &unk_1A5324FD0);
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135118);
    }
  }
}

void sub_1A41F4638(uint64_t a1)
{
  if (!qword_1EB135120)
  {
    sub_1A41F46B8(255, &qword_1EB135128, sub_1A41F473C);
    sub_1A41F483C();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135120);
    }
  }
}

void sub_1A41F46B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A405D430(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A41F473C(uint64_t a1)
{
  if (!qword_1EB135130)
  {
    sub_1A41F47E8(255, &qword_1EB135138, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E6981860]);
    sub_1A405D430(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135130);
    }
  }
}

void sub_1A41F47E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A41F483C()
{
  result = qword_1EB135140;
  if (!qword_1EB135140)
  {
    sub_1A41F46B8(255, &qword_1EB135128, sub_1A41F473C);
    sub_1A41F491C(&qword_1EB135148, sub_1A41F473C, sub_1A41F49C0);
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135140);
  }

  return result;
}

uint64_t sub_1A41F491C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A405D6B4(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41F49C0()
{
  result = qword_1EB135150;
  if (!qword_1EB135150)
  {
    sub_1A41F47E8(255, &qword_1EB135138, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E6981860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135150);
  }

  return result;
}

unint64_t sub_1A41F4A44()
{
  result = qword_1EB135158;
  if (!qword_1EB135158)
  {
    sub_1A41F455C(255);
    sub_1A41EF1A0(&qword_1EB135160, sub_1A41F45A4, MEMORY[0x1E697FDF8]);
    sub_1A41EF1A0(&qword_1EB135168, sub_1A41F4638, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135158);
  }

  return result;
}

uint64_t sub_1A41F4B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41F4BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A41F4C60(uint64_t a1)
{
  result = type metadata accessor for TimelineEngineCell(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimelineEngineCellFrame(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A41F4D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41F4E04()
{
  result = qword_1EB135188;
  if (!qword_1EB135188)
  {
    sub_1A41F44D8(255, &qword_1EB134FA8, sub_1A41EE81C, sub_1A41EF370, MEMORY[0x1E697E830]);
    sub_1A41EF1A0(&qword_1EB135190, sub_1A41EE81C, MEMORY[0x1E6981870]);
    sub_1A41EF1A0(&unk_1EB127C50, sub_1A41EF370, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135188);
  }

  return result;
}

unint64_t sub_1A41F4F28()
{
  result = qword_1EB135198;
  if (!qword_1EB135198)
  {
    sub_1A41F44D8(255, &qword_1EB1351A0, sub_1A41F455C, sub_1A41F45A4, MEMORY[0x1E697F960]);
    sub_1A41F4A44();
    sub_1A41EF1A0(&qword_1EB135160, sub_1A41F45A4, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135198);
  }

  return result;
}

uint64_t objectdestroyTm_33()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 9);

  if (v0[15])
  {
  }

  if (v0[17])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A41F50A4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A41EE630(0, a3, a4, MEMORY[0x1E6981F40]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A41F5124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A41EE630(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A41F5180(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1A3E75E68(a1, a2, a3 & 1);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A41F51BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1A3E04DF4(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_1A41F51F8(uint64_t a1, uint64_t a2)
{
  sub_1A41F46B8(0, &qword_1EB134FE0, sub_1A41EEA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41F5278(uint64_t a1)
{
  sub_1A41F46B8(0, &qword_1EB134FE0, sub_1A41EEA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A41F5314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41F537C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for TimelineEngineFrame(0) - 8);
  v10 = v2 + ((*(v9 + 80) + 152) & ~*(v9 + 80));

  return sub_1A41F12C0(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1A41F5428()
{
  result = qword_1EB1351B0;
  if (!qword_1EB1351B0)
  {
    sub_1A41EE630(255, &qword_1EB1350B8, sub_1A41EF4E0, MEMORY[0x1E69E6720]);
    sub_1A41EF564(255);
    sub_1A41EF610();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1351B0);
  }

  return result;
}

uint64_t sub_1A41F5500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41F5568(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A41F55D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41F5638(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A41EE180(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A41F569C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t), uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1A41F769C(a1, a2, a3, a4, a5);

  return v10;
}

double sub_1A41F5728()
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  [v1 inlinePlayerPlaceholderKenBurnsScale];
  v3 = v2;

  v4 = [ObjCClassFromMetadata sharedInstance];
  [v4 inlinePlayerFirstSegmentPlaceholderDuration];

  v5 = [ObjCClassFromMetadata sharedInstance];
  [v5 inlinePlayerPlaceholderKenBurnsExtraDuration];

  return v3;
}

BOOL sub_1A41F5810(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1A41F584C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1A41F5890()
{
  v80 = *v0;
  sub_1A3C56534(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v66 = &v64 - v2;
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v74 = v3;
  v65 = *(v3 - 1);
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v64 - v6;
  v8 = sub_1A524BEE4();
  v73 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1A524BF64();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1A524BFC4();
  v68 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v67 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v64 - v13;
  v14 = sub_1A52425F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = &v64 - v26;
  if (*(v0 + 24))
  {
    v74 = *(v0 + 24);
    v66 = v8;
    v28 = *(v0 + 32);
    v29 = *(v80 + 216);
    v30 = v0;

    v29(v31);
    (*(v15 + 104))(v23, *MEMORY[0x1E69C1EE8], v14);
    sub_1A41F7B04(&qword_1EB129250, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F18]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    v32 = *(v15 + 8);
    v32(v23, v14);
    v32(v27, v14);
    if (aBlock[0] == v82)
    {
      v33 = *(v0 + 24);
      v34 = *(v0 + 32);
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      v35 = sub_1A3C784D4(v33, v34);
      v80 = v28;
      v74(v35);
      v36 = *(v0 + 56);
      *(v0 + 56) = 1;
      if ((v36 & 1) == 0)
      {
        sub_1A41F5890();
      }

      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v65 = sub_1A524D474();
      v37 = v67;
      sub_1A524BFA4();
      sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
      v38 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v38 inlinePlayerFirstSegmentPlaceholderDuration];

      sub_1A524C014();
      v68 = *(v68 + 8);
      (v68)(v37, v76);
      v39 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1A41F7CBC;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_121;
      v40 = _Block_copy(aBlock);

      v41 = v69;
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A41F7B04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A3C56534(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v42 = v71;
      v43 = v66;
      sub_1A524E224();
      v44 = v75;
      v45 = v65;
      MEMORY[0x1A5908790](v75, v41, v42, v40);
      sub_1A3C784D4(v74, v80);
      _Block_release(v40);

      (*(v73 + 8))(v42, v43);
      (*(v70 + 8))(v41, v72);
      (v68)(v44, v76);
    }

    else
    {
      sub_1A3C784D4(v74, v28);
    }

    v46 = MEMORY[0x1E69C1EE0];
  }

  else
  {
    v75 = v4;
    v64 = v7;
    v76 = v15;
    if (*(v0 + 56))
    {
      v46 = MEMORY[0x1E69C1EE0];
      v15 = v76;
      v30 = v0;
    }

    else
    {
      v30 = v0;
      v73 = *(v80 + 216);
      (v73)(v25.n128_f64[0]);
      v47 = v76;
      (*(v76 + 104))(v23, *MEMORY[0x1E69C1EE8], v14);
      sub_1A41F7B04(&qword_1EB129250, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F18]);
      sub_1A524C9C4();
      sub_1A524C9C4();
      v48 = *(v47 + 8);
      v48(v23, v14);
      v49 = (v48)(v27, v14);
      if (aBlock[0] == v82)
      {
        aBlock[0] = *(v0 + 16);
        type metadata accessor for PhotosCollectionPreviewPlayer(0);

        sub_1A5245A64();
      }

      (v73)(v49);
      v50 = sub_1A52425C4();
      v48(v27, v14);
      if ((v50 & 1) == 0)
      {
        v51 = v30[5];
        sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v53 = [ObjCClassFromMetadata sharedInstance];
        v54 = [v53 collectionPreviewTransition];

        v51(1, 0, (v54 == 1) | ((v54 != 1) << 8));
      }

      v46 = MEMORY[0x1E69C1EE8];
      v15 = v76;
    }
  }

  v55 = v30[2];
  v56 = v77;
  (*(*v30 + 216))(v25);
  v57 = *v46;
  v58 = v78;
  (*(v15 + 104))(v78, v57, v14);
  sub_1A41F7B04(&qword_1EB129260, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F08]);
  v59 = sub_1A524C534();
  v60 = (v59 & 1) == 0;
  if (v59)
  {
    v61 = v56;
  }

  else
  {
    v61 = v58;
  }

  if (v60)
  {
    v58 = v56;
  }

  (*(v15 + 8))(v61, v14);
  v62 = v79;
  (*(v15 + 32))(v79, v58, v14);
  return (*(*v55 + 256))(v62);
}

uint64_t sub_1A41F658C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41F668C, 0, 0);
}

uint64_t sub_1A41F668C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v16 = v0[5];
  v18 = v0[7];
  v6 = v0[3];
  (*(v4 + 16))(v1, v0[4], v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[12] = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  v10 = (v9 + v8);
  *v10 = v16;
  v10[1] = v5;
  *(v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v11 = *(*v6 + 216);

  v17 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_1A41F6890;
  v13 = v0[2];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return v17(v13, sub_1A41F7D20, v9, v14);
}

uint64_t sub_1A41F6890()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1A41F69BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v32 = sub_1A524BEE4();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  v41 = sub_1A41F6E4C;
  v42 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1A3D59380;
  v40 = &block_descriptor_45_0;
  v17 = _Block_copy(&aBlock);
  [a1 performChanges_];
  _Block_release(v17);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v18 = sub_1A524D474();
  (*(v13 + 16))(v16, a2, v12);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v19, v16, v12);
  v22 = (v21 + v20);
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v41 = sub_1A41F7ED4;
  v42 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1A3C2E0D0;
  v40 = &block_descriptor_51_0;
  v24 = _Block_copy(&aBlock);

  sub_1A524BF14();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1A41F7B04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C56534(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v26 = v31;
  v25 = v32;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v10, v26, v24);
  _Block_release(v24);

  (*(v35 + 8))(v26, v25);
  (*(v33 + 8))(v10, v34);
}

uint64_t sub_1A41F6E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v4 = sub_1A52425F4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A41F6EE4(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_1A52425F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1A41F7B04(&qword_1EB129258, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F10]);
  LOBYTE(v11) = sub_1A524C594();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1A41F5890();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}