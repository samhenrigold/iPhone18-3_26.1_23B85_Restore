uint64_t sub_1A465E568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4C3FC(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  v7 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a2 = a1;
  *(a2 + 8) = 1;
  v10 = type metadata accessor for LemonadeICloudLinksShelfProvider(0);
  v11 = v10[6];
  v12 = *MEMORY[0x1E69C2418];
  v13 = sub_1A5243334();
  (*(*(v13 - 8) + 104))(a2 + v11, v12, v13);
  v14 = v10[7];
  v15 = sub_1A3C47918();
  v17 = v16;
  v18 = sub_1A3C47918();
  v20 = v19;
  v21 = sub_1A3C4ED50(v18);
  v26[8] = 1;
  *v9 = xmmword_1A5317AE0;
  v9[16] = 1;
  *(v9 + 3) = 2;
  v9[32] = 1;
  *(v9 + 5) = v15;
  *(v9 + 6) = v17;
  *(v9 + 7) = v18;
  *(v9 + 8) = v20;
  *(v9 + 72) = xmmword_1A5317AF0;
  v9[88] = 0;
  v9[89] = v21;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v6);
  sub_1A3C52D78(v9, 0, v6, a2 + v14);
  v22 = v10[8];
  v23 = *MEMORY[0x1E69C2958];
  v24 = sub_1A5244094();
  result = (*(*(v24 - 8) + 104))(a2 + v22, v23, v24);
  *(a2 + v10[9]) = 1;
  return result;
}

uint64_t sub_1A465E810@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 px_isMomentShareVirtualCollection])
  {

    PXDisplayCollectionDetailedCountsMake();
    *a2 = v3;
    v4 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);
    v6 = a2;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v9 = type metadata accessor for LemonadeNavigationDestination(0);
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a2;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

uint64_t sub_1A465E8EC@<X0>(void *a1@<X8>)
{

  PXDisplayCollectionDetailedCountsMake();
  *a1 = v2;
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

void sub_1A465E978(void **a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for iCloudLinkItemListManager(0);
  v4 = *(a2 + 24);
  v5 = objc_opt_self();
  sub_1A3E4D48C(v3, v4, [v5 specForLayoutVariant_], 3, 0);
}

__n128 sub_1A465EA24@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = a1;
    sub_1A4622C1C([v6 invitationWithMomentShare_], v13);

    PXDisplayCollectionDetailedCountsMake();
  }

  else
  {
    sub_1A41854A8(v13);
  }

  v8 = v13[9];
  *(a2 + 128) = v13[8];
  *(a2 + 144) = v8;
  *(a2 + 160) = v13[10];
  v9 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v9;
  v10 = v13[7];
  *(a2 + 96) = v13[6];
  *(a2 + 112) = v10;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  result = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_1A465EB18(uint64_t a1)
{
  v2 = sub_1A465EC8C(&qword_1EB1296A0, type metadata accessor for LemonadeICloudLinksShelfProvider, &unk_1A5353460);

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A465EB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A465EBEC(uint64_t a1)
{
  result = sub_1A465EC8C(&qword_1EB1296A8, type metadata accessor for LemonadeICloudLinksShelfProvider, &unk_1A535347C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A465EC8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PostAssetsToSharedCollectionAction.__allocating_init(with:assets:comment:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = &v8[OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_comment];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_sharedCollection] = a1;
  *v9 = a3;
  *(v9 + 1) = a4;
  sub_1A3DB58C8(0, v10);
  v11 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void PostAssetsToSharedCollectionAction.init(with:assets:comment:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (v4 + OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_comment);
  *v6 = 0;
  v6[1] = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_sharedCollection) = a1;
  *v6 = a3;
  v6[1] = a4;
  sub_1A3DB58C8(0, a2);
  v7 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A465F068(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v3[OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_sharedCollection];
  aBlock[0] = [v3 assets];
  sub_1A465F274();
  sub_1A465F364(0, &qword_1EB120C10, sub_1A3DB58C8, MEMORY[0x1E69E62F8]);
  swift_dynamicCast();
  sub_1A3DB58C8(0, v7);
  v8 = sub_1A524CA14();

  if (*&v3[OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_comment + 8])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_1A3D7ADE8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_236;
  v11 = _Block_copy(aBlock);

  [v9 addAssetsTo:v6 assets:v8 comment:0 completionHandler:v11];
  _Block_release(v11);
}

unint64_t sub_1A465F274()
{
  result = qword_1EB13F988;
  if (!qword_1EB13F988)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13F988);
  }

  return result;
}

void sub_1A465F364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id PostAssetsToSharedCollectionAction.__allocating_init(assets:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithAssets_];
  swift_unknownObjectRelease();
  return v2;
}

id PostAssetsToSharedCollectionAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostAssetsToSharedCollectionAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A465F58C(uint64_t a1)
{
  v2 = *off_1E7721FC0;
  sub_1A465F364(0, &qword_1EB1261F0, sub_1A3C5D744, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000037;
  *(inited + 56) = 0x80000001A53E1F40;
  v5 = v2;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A3C5DDD4(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1A524C3D4();

  v8 = [v6 initWithDomain:v5 code:-1 userInfo:v7];

  v9 = sub_1A5240B74();
  (*(a1 + 16))(a1, 0, v9);
}

void (*sub_1A465F718(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3FC589C;
}

uint64_t sub_1A465F7A8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A465F7E0()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

void *sub_1A465F844(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v59 = a2;
  v55 = a6;
  v56 = a7;
  v47 = a5;
  v48 = a3;
  v52 = a4;
  v60 = a1;
  v57 = a9;
  v9 = type metadata accessor for PhotosSearchResults(0);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45[0] = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PhotosSearchResults;
  v53 = MEMORY[0x1E69E6720];
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = v45 - v12;
  v46 = sub_1A524D464();
  v13 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = swift_allocObject();
  v18[3] = 0;
  swift_unknownObjectWeakInit();
  v19 = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v45[1] = "tificationPresentationContext";
  v45[2] = v19;
  v18[4] = 0;
  v18[5] = 0;
  sub_1A524BF24();
  v61 = MEMORY[0x1E69E7CC0];
  sub_1A4669918(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v20 = MEMORY[0x1E69E8030];
  sub_1A46600E8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  v21 = v47;
  sub_1A3C9AE7C(&qword_1EB126E30, &qword_1EB126E40, v20);
  v22 = v48;
  sub_1A524E224();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8090], v46);
  v18[7] = sub_1A524D4B4();
  v23 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults;
  v25 = v49;
  v24 = v50;
  (*(v49 + 56))(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults, 1, 1, v50);
  v26 = v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionResultsController) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_allResultsPrewarmedFetchResult) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection) = 1;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionSectionProvider) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bodyLayoutProvider) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___viewOptionsModel) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsConfiguration) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSourceManager) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsScrollPositionManager) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___gridActionPerformerInformationProviderManager) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewDelegateManager) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewModelObserver) = 0;
  v27 = (v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier);
  *v27 = 0;
  v27[1] = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = 2;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bottomPalette) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___photosSegmentAction) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionsSegmentAction) = 0;
  swift_beginAccess();
  v28 = v18 + v23;
  v29 = v52;
  sub_1A455287C(v60, v28);
  swift_endAccess();
  swift_beginAccess();
  sub_1A4552910(v59, v26);
  swift_endAccess();
  v18[6] = v22;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary) = v29;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchBarCoordinator) = v21;
  v30 = (v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_customAssetSelectionHandler);
  v31 = v55;
  *v30 = v55;
  v32 = v56;
  v30[1] = v56;
  swift_beginAccess();
  v18[3] = v57;
  swift_unknownObjectWeakAssign();
  v33 = v51;
  sub_1A4667558(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults, v51, &qword_1EB125F80, v54, v53, sub_1A46600E8);
  if ((*(v25 + 48))(v33, 1, v24))
  {

    v34 = v29;
    sub_1A3C66EE8(v31, v32);
    sub_1A3C2CA58(v33, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  }

  else
  {
    v35 = v45[0];
    sub_1A3C8BF0C(v33, v45[0], type metadata accessor for PhotosSearchResults);

    v36 = v29;
    sub_1A3C66EE8(v31, v32);
    sub_1A3C2CA58(v33, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v37 = sub_1A4667278();
    sub_1A3DA541C(!v37);
    sub_1A466B4E4(v35, type metadata accessor for PhotosSearchResults);
  }

  v38 = sub_1A4660440();
  sub_1A43718E4(v38);

  sub_1A466AFD4(0, &qword_1EB13F998, &qword_1EB126C40, 0x1E6978840, type metadata accessor for PrewarmedObject);
  v39 = v18[7];
  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  v41 = v29;
  v42 = v39;
  v43 = sub_1A4949CA0(v39, sub_1A4660588, v40);
  swift_unknownObjectRelease();
  sub_1A3C33378(v31, v32);

  sub_1A3C2CE9C(v59);
  sub_1A3C2CA58(v60, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_allResultsPrewarmedFetchResult) = v43;

  return v18;
}

void sub_1A46600E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A466014C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() px:a1 searchAssetFetchOptionsForPhotoLibrary:?];
  v4 = [objc_opt_self() fetchAssetsWithOptions_];

  *a2 = v4;
}

uint64_t sub_1A466020C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A466026C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A4660300;
}

void sub_1A4660300(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_1A4660384()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel(0);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v3;
    v5 = v0;
    v6 = sub_1A3F3C714(0, 0, 0, 0, 0, sub_1A466B0D0, v4);
    v7 = *(v0 + 32);
    *(v5 + 32) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_1A4660440()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel(0);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v3;
    v5 = v0;
    v6 = sub_1A4372EDC(0, sub_1A466B95C, v4);
    v7 = *(v0 + 40);
    *(v5 + 40) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1A46604EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults;
  swift_beginAccess();
  return sub_1A4667558(v1 + v3, a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
}

uint64_t sub_1A46605B4(uint64_t a1)
{
  v3 = type metadata accessor for PhotosSearchResults(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults;
  swift_beginAccess();
  sub_1A455287C(a1, v1 + v10);
  v11 = swift_endAccess();
  (*(*v1 + 416))(v11);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    v12 = MEMORY[0x1E69E6720];
    sub_1A3C2CA58(a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    return sub_1A3C2CA58(v9, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v12, sub_1A46600E8);
  }

  else
  {
    sub_1A3C8BF0C(v9, v6, type metadata accessor for PhotosSearchResults);
    v14 = MEMORY[0x1E69E6720];
    sub_1A3C2CA58(v9, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v15 = sub_1A4667278();
    sub_1A3DA541C(!v15);
    sub_1A3C2CA58(a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v14, sub_1A46600E8);
    return sub_1A466B4E4(v6, type metadata accessor for PhotosSearchResults);
  }
}

uint64_t sub_1A46608AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container;
  swift_beginAccess();
  return sub_1A3C451FC(v1 + v3, a1);
}

uint64_t sub_1A4660904(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container;
  swift_beginAccess();
  sub_1A46674C8(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1A4660964()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController);
  }

  else
  {
    v4 = sub_1A4666354();
    v5 = *v0;
    if (v4)
    {
      v6 = (*(v5 + 520))();
    }

    else
    {
      v6 = (*(v5 + 488))();
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1A4660A18(void *a1)
{
  v3 = (*v1 + 464);
  v4 = *v3;
  v12 = (*v3)();
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController) = a1;
  v6 = a1;

  v7 = v4();
  if (v7 == v12 || !(*(*v1 + 344))())
  {
  }

  else
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = v4();
    (*(v9 + 8))(v11, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

id sub_1A4660B8C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController);
  }

  else
  {
    type metadata accessor for PhotosSearchAssetResultsViewController();
    v4 = v0;
    v5 = sub_1A4664660();
    v6 = *(v4 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchBarCoordinator);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_weakInit();

    v9 = sub_1A42E5458(v5, v6, v4, &off_1F171C230, sub_1A466B54C, v7, sub_1A466B7B8, v8);
    v10 = [v9 navigationItem];
    type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
    v11 = v9;

    sub_1A47F04D8(v12, v11);
    v14 = v13;
    [v10 setTitleView_];

    v15 = [v11 navigationItem];
    v17 = sub_1A4666378(v15, v16);
    [v15 _setBottomPalette_];

    v18 = [v11 navigationItem];
    [v18 setStyle_];

    v19 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v20 = v2;
  return v3;
}

void sub_1A4660DB4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController) = a1;
}

void sub_1A4660E2C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A46600E8(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A4669BE4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A46600E8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-v7 - 8];
  v9 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for LemonadePhotoLibraryContext(0, v12);
  v13 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(*(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary), 0, 0);
  v15 = sub_1A46644C8(v13, v14);
  v16 = sub_1A4660384();
  sub_1A3F3AB58(v13, v15, v16, v24);
  type metadata accessor for LemonadeNavigationContext(0);
  v17 = v24[3];
  v11[2] = v24[2];
  v11[3] = v17;
  v11[4] = v24[4];
  v18 = v24[1];
  *v11 = v24[0];
  v11[1] = v18;
  swift_storeEnumTagMultiPayload();
  sub_1A466B340(v24, v23);
  sub_1A486B6E8(v8);
  v19 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  v23[0] = 4;
  v20 = *&v24[0];

  v21 = sub_1A3C799F0(v11, 0, 0, 0, v8, v23, v20, 2);
  sub_1A3F3A30C(v21, v23);
}

uint64_t sub_1A46613B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A52407E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A3C38BD4(0xD000000000000013);
  sub_1A52408B4();
  sub_1A52407F4();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  sub_1A52406B4();
  sub_1A4669918(&qword_1EB13FA70, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
  v7 = sub_1A52406F4();
  sub_1A42172D8(0);
  sub_1A4114188();
  sub_1A5240C34();
  v7(v10, 0);

  (*(v4 + 32))(a1, v6, v3);
  return (*(v4 + 56))(a1, 0, 1, v3);
}

void sub_1A4661638(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionResultsController);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionResultsController) = a1;
}

uint64_t sub_1A466164C(uint64_t a1)
{
  v71 = a1;
  v2 = sub_1A52411C4();
  v70 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45526E4(0);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosSearchResults(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  sub_1A46600E8(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8], v10);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v64 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v66 = v1;
  v26 = *(**(v1 + 24) + 416);

  v26(v27);

  v28 = *(v7 + 48);
  if (v28(v18, 1, v6))
  {
    sub_1A3C2CA58(v18, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v29 = 1;
    v30 = v70;
  }

  else
  {
    sub_1A3C8BF0C(v18, v9, type metadata accessor for PhotosSearchResults);
    sub_1A3C2CA58(v18, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v30 = v70;
    (*(v70 + 2))(v25, v9, v2);
    sub_1A466B4E4(v9, type metadata accessor for PhotosSearchResults);
    v29 = 0;
  }

  v31 = *(v30 + 56);
  v70 = v25;
  v31(v25, v29, 1, v2);
  sub_1A4667558(v71, v15, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  v32 = v28(v15, 1, v6);
  v33 = v68;
  v34 = v2;
  if (v32 == 1)
  {
    sub_1A3C2CA58(v15, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v35 = 1;
    v36 = v69;
  }

  else
  {
    v36 = v69;
    (*(v30 + 16))(v69, v15, v34);
    sub_1A466B4E4(v15, type metadata accessor for PhotosSearchResults);
    v35 = 0;
  }

  v31(v36, v35, 1, v34);
  v37 = *(v67 + 48);
  v38 = MEMORY[0x1E69695A8];
  v39 = MEMORY[0x1E69E6720];
  v40 = v70;
  sub_1A4667558(v70, v33, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
  v67 = v37;
  sub_1A4667558(v36, v33 + v37, &qword_1EB12AFA0, v38, v39, sub_1A46600E8);
  v41 = v30;
  v42 = *(v30 + 48);
  if (v42(v33, 1, v34) == 1)
  {
    v43 = MEMORY[0x1E69695A8];
    v44 = MEMORY[0x1E69E6720];
    sub_1A3C2CA58(v36, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
    sub_1A3C2CA58(v40, &qword_1EB12AFA0, v43, v44, sub_1A46600E8);
    if (v42(v33 + v67, 1, v34) == 1)
    {
      sub_1A3C2CA58(v33, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
LABEL_15:
      v54 = MEMORY[0x1E69E6720];
      v53 = v71;
      return sub_1A3C2CA58(v53, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v54, sub_1A46600E8);
    }

    goto LABEL_12;
  }

  v45 = v64;
  sub_1A4667558(v33, v64, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
  v46 = v67;
  if (v42(v33 + v67, 1, v34) == 1)
  {
    v47 = v45;
    v48 = MEMORY[0x1E69695A8];
    v49 = MEMORY[0x1E69E6720];
    sub_1A3C2CA58(v69, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
    sub_1A3C2CA58(v70, &qword_1EB12AFA0, v48, v49, sub_1A46600E8);
    (*(v41 + 8))(v47, v34);
LABEL_12:
    sub_1A466B4E4(v33, sub_1A45526E4);
    goto LABEL_13;
  }

  v55 = v33 + v46;
  v56 = v63;
  (*(v41 + 32))(v63, v55, v34);
  sub_1A4669918(&unk_1EB12AFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v57 = sub_1A524C594();
  v58 = *(v41 + 8);
  v58(v56, v34);
  v59 = MEMORY[0x1E69695A8];
  v60 = MEMORY[0x1E69E6720];
  sub_1A3C2CA58(v69, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
  sub_1A3C2CA58(v70, &qword_1EB12AFA0, v59, v60, sub_1A46600E8);
  v58(v45, v34);
  sub_1A3C2CA58(v33, &qword_1EB12AFA0, v59, v60, sub_1A46600E8);
  if (v57)
  {
    goto LABEL_15;
  }

LABEL_13:
  v50 = v65;
  v51 = MEMORY[0x1E69E6720];
  v52 = v71;
  sub_1A4667558(v71, v65, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);

  sub_1A46605B4(v50);

  swift_beginAccess();
  sub_1A4669820(&v72, 0);
  swift_endAccess();
  v53 = v52;
  v54 = v51;
  return sub_1A3C2CA58(v53, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v54, sub_1A46600E8);
}

double sub_1A4662124()
{
  v1 = *(**(v0 + 24) + 416);

  v1(v2);

  return result;
}

void (*sub_1A466219C(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  v6 = *(**(v1 + 24) + 416);

  v6(v7);

  return sub_1A46622C0;
}

void sub_1A46622C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = MEMORY[0x1E69E6720];
    sub_1A4667558(*(a1 + 16), v2, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    sub_1A466164C(v2);
    sub_1A3C2CA58(v3, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v4, sub_1A46600E8);
  }

  else
  {
    sub_1A466164C(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_1A46623A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(**(v1 + 24) + 440);

  v4(v27, v5);

  v6 = v28;
  if (v28)
  {
    v7 = v29;
    v8 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v9 = *(v6 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v12, v10);
    sub_1A3C2CE9C(v27);
    v13 = (*(v7 + 8))(v6, v7);
    v15 = v14;
    (*(v9 + 8))(v12, v6);
  }

  else
  {
    sub_1A3C2CE9C(v27);
    v13 = 0;
    v15 = 0;
  }

  sub_1A3C451FC(a1, v27);
  v16 = v28;
  if (v28)
  {
    v17 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0(v27);
    if (v15)
    {
      if (v20)
      {
        if (v13 == v18 && v15 == v20)
        {

          return sub_1A3C2CE9C(a1);
        }

        v22 = sub_1A524EAB4();

        if (v22)
        {
          return sub_1A3C2CE9C(a1);
        }

        goto LABEL_17;
      }

LABEL_16:

LABEL_17:
      v23 = *(v2 + 24);
      sub_1A3C451FC(a1, v27);
      v24 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container;
      swift_beginAccess();

      sub_1A46674C8(v27, v23 + v24);
      swift_endAccess();

      swift_beginAccess();
      sub_1A4669820(v26, 1);
      swift_endAccess();
      return sub_1A3C2CE9C(a1);
    }

    if (v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1A3C2CE9C(v27);
    if (v15)
    {
      goto LABEL_16;
    }
  }

  return sub_1A3C2CE9C(a1);
}

double sub_1A4662688()
{
  v1 = *(**(v0 + 24) + 440);

  v1(v2);

  return result;
}

void (*sub_1A4662700(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  v4 = *(**(v1 + 24) + 440);

  v4(v5);

  return sub_1A46627BC;
}

void sub_1A46627BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A3C451FC(*a1, v2 + 40);
    sub_1A46623A8(v2 + 40);
    sub_1A3C2CE9C(v2);
  }

  else
  {
    sub_1A46623A8(*a1);
  }

  free(v2);
}

uint64_t sub_1A4662824()
{
  swift_beginAccess();
  sub_1A4669820(&v1, 2);
  return swift_endAccess();
}

uint64_t sub_1A4662884()
{

  return swift_deallocClassInstance();
}

void sub_1A46628C4(void (*a1)(uint64_t))
{
  type metadata accessor for PhotosSearchResultsCoordinator.Mutable();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  *(v3 + 24) = v1;

  a1(v3);
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4662978(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosSearchResults(0);
  v188 = *(v4 - 8);
  v189 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v180 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v182 = *(v6 - 8);
  v7 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v185 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v173 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v178 = &v173 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v177 = &v173 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v173 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v173 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v173 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v173 - v24;
  MEMORY[0x1EEE9AC00](v26);
  *&v181 = &v173 - v27;
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v31 = &v173 - v30;
  v32 = (*(*v1 + 416))(v29);
  (*(*v1 + 440))(v198, v32);
  if (sub_1A46675CC(1u, a1))
  {
    v33 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
    v34 = sub_1A4009928(*(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary), v198);
    v35 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection) = v34;
    sub_1A3C327F4(v35);
    v36 = sub_1A4009E10(v33, v198, 0);
    v37 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection) = v36;

    v38 = sub_1A46645DC();
    sub_1A3C451FC(v198, v190);
    v39 = swift_allocObject();
    v40 = v190[1];
    *(v39 + 16) = v190[0];
    *(v39 + 32) = v40;
    *(v39 + 48) = v191;
    v196 = sub_1A466B1EC;
    v197 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v193 = 1107296256;
    v194 = sub_1A4554DF8;
    v195 = &block_descriptor_180_0;
    v41 = _Block_copy(&aBlock);

    [v38 performChanges_];
    _Block_release(v41);
  }

  if (sub_1A46675CC(2u, a1) && (*(*v2 + 344))())
  {
    v43 = v42;
    ObjectType = swift_getObjectType();
    (*(v43 + 48))(ObjectType, v43);
    swift_unknownObjectRelease();
  }

  if (sub_1A46675CC(1u, a1) || sub_1A46675CC(0, a1) || sub_1A46675CC(2u, a1))
  {
    v183 = v19;
    v187 = v31;
    v45 = sub_1A4664F30();
    v47 = v46;
    v49 = v48;
    v50 = sub_1A46675CC(1u, a1);
    v184 = v16;
    if (v50)
    {
      v51 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
      v52 = sub_1A4664330();
      v176 = v25;
      v53 = v22;
      v54 = a1;
      v55 = v52;
      v56 = sub_1A46643F0();
      v57 = sub_1A400A650(v51, v198, 0, v55, v56, v45, v47, v49);

      a1 = v54;
      v22 = v53;
      v25 = v176;
      v58 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource;
      v59 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource);
      *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource) = v57;
      v60 = v57;

      v61 = sub_1A4665560();
      v62 = sub_1A4664DE8();
      sub_1A4668A24(v62);

      v63 = sub_1A46654E8();
      v64 = *(v2 + v58);
      [v63 setPhotosDataSource_];
    }

    else if (sub_1A46675CC(0, a1) || sub_1A46675CC(2u, a1))
    {
      v66 = sub_1A46654E8();
      v67 = swift_allocObject();
      v67[2] = v45;
      v67[3] = v47;
      v67[4] = v49;
      v196 = sub_1A45531EC;
      v197 = v67;
      aBlock = MEMORY[0x1E69E9820];
      v193 = 1107296256;
      v194 = sub_1A3D59380;
      v195 = &block_descriptor_174_1;
      v68 = _Block_copy(&aBlock);

      [v66 performChanges_];
      _Block_release(v68);
    }

    else
    {
    }

    v186 = a1;
    v69 = (*(*v2 + 488))(v65);
    v70 = [v69 viewModelIfLoaded];

    v31 = v187;
    v73 = v183;
    if (v70)
    {
      v74 = v181;
      sub_1A4667558(v187, v181, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v75 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v76 = swift_allocObject();
      sub_1A3EA751C(v74, v76 + v75);
      v196 = sub_1A466B14C;
      v197 = v76;
      aBlock = MEMORY[0x1E69E9820];
      v193 = 1107296256;
      v194 = sub_1A3D7692C;
      v195 = &block_descriptor_168_2;
      v77 = _Block_copy(&aBlock);

      [v70 performChanges_];
      _Block_release(v77);
    }

    v78 = sub_1A46644C8(v71, v72);
    sub_1A4667558(v31, v25, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v79 = v189;
    v80 = v188 + 48;
    v81 = *(v188 + 48);
    if (v81(v25, 1, v189) == 1)
    {
      sub_1A3C2CA58(v25, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v82 = 0;
    }

    else
    {
      v82 = *&v25[*(v79 + 40)];
      v83 = v82;
      sub_1A466B4E4(v25, type metadata accessor for PhotosSearchResults);
    }

    sub_1A4667558(v31, v22, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    if (v81(v22, 1, v79) != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C2CA58(v22, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v84 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    sub_1A4667558(v31, v73, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v85 = v81(v73, 1, v79);
    if (v85 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C2CA58(v73, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v86 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    v87 = v184;
    sub_1A4667558(v31, v184, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v88 = v81(v87, 1, v79);
    if (v88 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C2CA58(v87, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v89 = sub_1A452D80C(MEMORY[0x1E69E7CC0], &qword_1EB126440, &qword_1EB126610, 0x1E696AD98);
    (*((*MEMORY[0x1E69E7D40] & *v78) + 0x278))(v82, v84, v86, v89, 0, 0);

    v90 = sub_1A4666400();
    [v90 setHidden_];

    v91 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl;
    v92 = [*(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl) isHidden];
    v93 = v80;
    a1 = v186;
    if ((v92 & 1) == 0)
    {
      v183 = v91;
      v94 = sub_1A524C634();
      v95 = PXLocalizedString(v94);

      sub_1A524C674();
      v96 = sub_1A524C634();
      v97 = PXLocalizedString(v96);

      sub_1A524C674();
      v98 = v177;
      sub_1A4667558(v31, v177, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v99 = v81;
      v100 = v189;
      v184 = v99;
      v101 = v99(v98, 1, v189);
      v182 = v93;
      if (v101 == 1)
      {
        sub_1A3C2CA58(v98, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      }

      else
      {
        v102 = v98;
        v103 = v180;
        sub_1A3DAF754(v102, v180);
        if ((sub_1A3DA5294() & 1) == 0 || !*(*(v103 + *(v100 + 20)) + 16))
        {

          v104 = sub_1A524C634();
          v105 = PXLocalizedString(v104);

          v175 = sub_1A524C674();
          sub_1A3C71138(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v177 = v106;
          v107 = swift_allocObject();
          v181 = xmmword_1A52F8E10;
          *(v107 + 16) = xmmword_1A52F8E10;
          v108 = objc_opt_self();
          v109 = sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
          v110 = sub_1A524DBD4();
          v111 = [v108 localizedStringFromNumber:v110 numberStyle:1];

          v112 = sub_1A524C674();
          v113 = v100;
          v115 = v114;

          v116 = v180;
          *(v107 + 56) = MEMORY[0x1E69E6158];
          v176 = sub_1A3D710E8();
          *(v107 + 64) = v176;
          *(v107 + 32) = v112;
          *(v107 + 40) = v115;
          v117 = sub_1A524C6C4();
          v119 = v118;

          v120 = *(*(v116 + *(v113 + 20)) + 16);
          v174 = v109;
          if (v120 >= 0x3E9)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v121 = v117;
          v122 = sub_1A524DBD4();
          v123 = [v108 localizedStringFromNumber:v122 numberStyle:1];

          v124 = sub_1A524C674();
          v175 = v125;

          if (sub_1A3DA535C() <= 1000)
          {

            sub_1A3DA535C();
            v126 = sub_1A524DBD4();
            v127 = [v108 localizedStringFromNumber:v126 numberStyle:1];

            v173 = sub_1A524C674();
            v174 = v128;
          }

          else
          {
            v174 = v119;
            v173 = v121;
          }

          v129 = sub_1A524C634();
          v130 = PXLocalizedString(v129);

          sub_1A524C674();
          v131 = swift_allocObject();
          *(v131 + 16) = v181;
          v132 = MEMORY[0x1E69E6158];
          v133 = v176;
          *(v131 + 56) = MEMORY[0x1E69E6158];
          *(v131 + 64) = v133;
          v134 = v175;
          *(v131 + 32) = v124;
          *(v131 + 40) = v134;
          sub_1A524C6C4();

          v135 = sub_1A524C634();
          v136 = PXLocalizedString(v135);

          sub_1A524C674();
          v137 = swift_allocObject();
          *(v137 + 16) = v181;
          aBlock = v173;
          v193 = v174;
          v138 = sub_1A524C8D4();
          *(v137 + 56) = v132;
          *(v137 + 64) = v133;
          *(v137 + 32) = v138;
          *(v137 + 40) = v139;
          sub_1A524C6C4();

          v100 = v189;
          v103 = v180;
        }

        sub_1A466B4E4(v103, type metadata accessor for PhotosSearchResults);
      }

      v140 = v183;
      v141 = *&v183[v2];
      v142 = sub_1A524C634();

      [v141 setTitle:v142 forSegmentAtIndex:0];

      v143 = *&v140[v2];
      v144 = sub_1A524C634();

      [v143 setTitle:v144 forSegmentAtIndex:1];

      v145 = sub_1A4660384();
      v146 = *(v2 + 48);
      v147 = [*(v146 + 48) title];
      if (v147)
      {
        v148 = v147;
        v149 = sub_1A524C674();
        v151 = v150;
      }

      else
      {
        v149 = 0;
        v151 = 0;
      }

      v152 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v145) + 0x98))(v149, v151);

      v153 = *(v146 + 48);
      v154 = *(v2 + 32);
      v155 = [v153 message];
      if (v155)
      {
        v156 = v155;
        v157 = sub_1A524C674();
        v159 = v158;
      }

      else
      {
        v157 = 0;
        v159 = 0;
      }

      v160 = v178;
      (*((*v152 & *v154) + 0xC8))(v157, v159);

      v161 = *(v2 + 32);
      sub_1A4667558(v187, v160, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      if ((v184)(v160, 1, v100) != 1)
      {
        v163 = v161;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v162 = v161;
      sub_1A3C2CA58(v160, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      a1 = v186;
      v164 = v179;
      v165 = sub_1A524CFC4();
      (*((*v152 & *v162) + 0xF8))(v165);

      v166 = sub_1A4660440();
      v31 = v187;
      sub_1A4667558(v187, v164, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v167 = (v184)(v164, 1, v100);
      if (v167 == 1)
      {
        sub_1A3C2CA58(v164, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
        v168 = 0;
      }

      else
      {
        v169 = sub_1A3DA535C();
        sub_1A466B4E4(v164, type metadata accessor for PhotosSearchResults);
        v168 = v169;
      }

      sub_1A4372AD8(v168);
    }
  }

  v170 = v185;
  sub_1A4667558(v31, v185, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  if ((*(v188 + 48))(v170, 1, v189) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C2CA58(v170, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  if (sub_1A46675CC(1u, a1) || sub_1A46675CC(0, a1))
  {
    v171 = sub_1A4665560();
    sub_1A3C2CA58(v31, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v171[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_shouldResetAgainAfterDataSourceChange] = 1;
  }

  else
  {
    sub_1A3C2CA58(v31, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  }

  return sub_1A3C2CE9C(v198);
}

id sub_1A4664330()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
    (*(*v0 + 440))(v8);
    v3 = sub_1A4009928(v4, v8);
    sub_1A3C2CE9C(v8);
    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_1A3C327F4(v5);
  }

  sub_1A3C327E4(v2);
  return v3;
}

void *sub_1A46643F0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
    (*(*v0 + 440))(v10);
    v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_allResultsPrewarmedFetchResult);

    v6 = sub_1A4009E10(v4, v10, v5);

    sub_1A3C2CE9C(v10);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1A46644C8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionSectionProvider;
  v4 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionSectionProvider);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionSectionProvider);
  }

  else
  {
    type metadata accessor for PhotosSearchCollectionSectionProvider(0, a2);
    v6 = v2;
    v7 = PhotosSearchCollectionSectionProvider.__allocating_init(photoLibrary:)(*(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary));
    v8 = *(v2 + v3);
    *(v6 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_1A466454C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bodyLayoutProvider;
  v4 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bodyLayoutProvider);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bodyLayoutProvider);
  }

  else
  {
    v6 = sub_1A46644C8(a1, a2);
    v7 = [objc_allocWithZone(PXPhotosSearchBodyLayoutProvider) initWithCollectionSectionProvider_];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_1A46645DC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___viewOptionsModel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___viewOptionsModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___viewOptionsModel);
  }

  else
  {
    v4 = [objc_allocWithZone(PXPhotosViewOptionsModel) initWithPhotoLibrary_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A4664680(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1A4664DE8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
    v5 = v0;
    (*(*v0 + 440))(v16);
    v6 = sub_1A4664330();
    v7 = sub_1A46643F0();
    v8 = sub_1A4664F30();
    v11 = sub_1A400A650(v4, v16, 0, v6, v7, v8, v9, v10);

    sub_1A3C2CE9C(v16);
    v12 = sub_1A4665560();
    v3 = v11;
    sub_1A4668A24(v11);

    v13 = *(v5 + v1);
    *(v5 + v1) = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

uint64_t sub_1A4664F30()
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v24 - v2;
  v4 = type metadata accessor for PhotosSearchResults(0);
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 416))(v6);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_1A3DAF754(v3, v8);
    v16 = sub_1A4664330();
    v17 = sub_1A46643F0();
    if (sub_1A4667278())
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A400AC78(0, v16, v17, 0, MEMORY[0x1E69E7CC0], *&v8[*(v4 + 20)]);
  }

  v9 = sub_1A3C2CA58(v3, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  (*(*v0 + 440))(v25, v9);
  v10 = v25[3];
  sub_1A3C2CE9C(v25);
  v11 = sub_1A4664330();
  if (v10)
  {
    v24[5] = v11;
    v12 = 0;
    v24[6] = sub_1A46643F0();
    v13 = MEMORY[0x1E69E7CC0];
    v25[0] = MEMORY[0x1E69E7CC0];
    while (v12 != 2)
    {
      v14 = v24[v12++ + 5];
      if (v14)
      {
        v15 = v14;
        MEMORY[0x1A5907D70]();
        if (*((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v13 = v25[0];
      }
    }

    sub_1A466AFD4(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    sub_1A400B0AC(v13);
  }

  v24[11] = v11;
  v18 = 0;
  v24[12] = sub_1A46643F0();
  v19 = MEMORY[0x1E69E7CC0];
  v25[0] = MEMORY[0x1E69E7CC0];
  while (v18 != 2)
  {
    v20 = v24[v18++ + 11];
    if (v20)
    {
      v21 = v20;
      MEMORY[0x1A5907D70]();
      if (*((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v19 = v25[0];
    }
  }

  sub_1A466AFD4(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v22 = sub_1A400B130(v19);

  return v22;
}

id sub_1A46654E8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSourceManager;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSourceManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSourceManager);
  }

  else
  {
    type metadata accessor for PhotosSearchPhotoKitAssetsDataSourceManager();
    v4 = v0;
    v5 = sub_1A4664DE8();
    v6 = sub_1A43F36AC(v5);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1A4665560()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsScrollPositionManager;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsScrollPositionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsScrollPositionManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AssetResultsScrollPositionManager()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A46655D0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___gridActionPerformerInformationProviderManager;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___gridActionPerformerInformationProviderManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___gridActionPerformerInformationProviderManager);
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = type metadata accessor for GridActionPerformerInformationProviderManager();
    v6 = objc_allocWithZone(v5);
    swift_weakInit();
    swift_weakAssign();
    v7 = &v6[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0045GridActionPerformerInformationProviderManager_searchBarResignFirstResponderIfPossible];
    *v7 = sub_1A466AF08;
    v7[1] = v4;
    v12.receiver = v6;
    v12.super_class = v5;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1A46656C4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewDelegateManager;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewDelegateManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewDelegateManager);
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = type metadata accessor for AssetResultsViewDelegateManager();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_resignSearchBarFirstResponder];
    *v9 = sub_1A466B9F8;
    *(v9 + 1) = v4;
    v10 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_saveSearchResults];
    *v10 = sub_1A466B9FC;
    *(v10 + 1) = v5;
    v11 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_reportAssetResultSelectedAnalytics];
    *v11 = sub_1A466AB08;
    v11[1] = v6;
    v16.receiver = v8;
    v16.super_class = v7;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    v13 = *(v0 + v1);
    *(v0 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

uint64_t sub_1A4665818()
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11[-1] - v3;
  (*(*v0 + 440))(v11, v2);
  v5 = v11[3];
  result = sub_1A3C2CE9C(v11);
  if (!v5)
  {
    result = (*(*v0 + 344))(result);
    if (result)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(*v0 + 416))();
      (*(v8 + 24))(v4, *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary), ObjectType, v8);
      swift_unknownObjectRelease();
      return sub_1A3C2CA58(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    }
  }

  return result;
}

id sub_1A46659FC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewModelObserver;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewModelObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewModelObserver);
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = type metadata accessor for AssetResultsViewModelObserver();
    v8 = objc_allocWithZone(v7);
    swift_unknownObjectWeakInit();
    v9 = &v8[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_resignSearchBarFirstResponder];
    *v9 = sub_1A466A974;
    *(v9 + 1) = v4;
    v10 = &v8[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_saveSearchResults];
    *v10 = sub_1A466A978;
    *(v10 + 1) = v5;
    v11 = &v8[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_updateSegmentedControl];
    *v11 = sub_1A466A97C;
    v11[1] = v6;
    v16.receiver = v8;
    v16.super_class = v7;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    v13 = *(v0 + v1);
    *(v0 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_1A4665B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  v14 = &v13[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_resignSearchBarFirstResponder];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_saveSearchResults];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_updateSegmentedControl];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id (*sub_1A4665C28())(void *a1, uint64_t a2)
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier);
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier);
  }

  else
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_1A466A96C;
    *v1 = sub_1A466A96C;
    v1[1] = v5;

    sub_1A3C33378(v6, v7);
  }

  sub_1A3C66EE8(v2, v3);
  return v4;
}

id sub_1A4665CE4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for PhotosSearchResults(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_13;
  }

  (*(*Strong + 416))(Strong);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_13:
    sub_1A3C2CA58(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    return a2;
  }

  sub_1A3DAF754(v7, v11);
  v13 = *&v11[v8[12]];
  if (!v13)
  {
    goto LABEL_20;
  }

  result = [a1 uuid];
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v15 = result;
  v16 = sub_1A524C674();
  v18 = v17;

  if (!*(v13 + 16))
  {

    goto LABEL_20;
  }

  v19 = sub_1A3C5DCA4(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_20;
  }

  v22 = *(*(v13 + 56) + 8 * v19);
  if (v22 == 3)
  {
    if ((a2 & 0x1000000000000) != 0)
    {
      goto LABEL_20;
    }

    v23 = 0x1000000000000;
  }

  else if (v22 == 2)
  {
    if ((a2 & 0x800000000000) != 0)
    {
      goto LABEL_20;
    }

    v23 = 0x800000000000;
  }

  else
  {
    if (v22 != 1 || (a2 & 0x400000000000) != 0)
    {
      goto LABEL_20;
    }

    v23 = 0x400000000000;
  }

  a2 |= v23;
LABEL_20:
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v24 = [swift_getObjCClassFromMetadata() sharedInstance];
  v25 = [v24 showSearchDebugBadges];

  if (!v25)
  {
    goto LABEL_28;
  }

  v27 = *&v11[v8[11]];
  if (!v27)
  {
    goto LABEL_28;
  }

  result = [a1 uuid];
  if (result)
  {
    v28 = result;
    v29 = sub_1A524C674();
    v31 = v30;

    if (*(v27 + 16))
    {
      sub_1A3C5DCA4(v29, v31);
      v33 = v32;

      if (v33)
      {
        a2 |= 0x2000000000000uLL;
      }
    }

    else
    {
    }

LABEL_28:
    v34 = type metadata accessor for PhotosSearchUtilities(0, v26);
    a2 = (*(v34 + 272))(a1, a2, *&v11[v8[10]]);
    sub_1A466B4E4(v11, type metadata accessor for PhotosSearchResults);
    return a2;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A46660E0(char a1)
{
  v2 = v1;
  result = sub_1A4666354();
  if ((a1 & 1) != result)
  {
    v5 = sub_1A4666400();
    v6 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status;
    [v5 setSelectedSegmentIndex_];

    v7 = *v2;
    v8 = (*(v2 + v6) & 1) != 0 ? (*(v7 + 520))() : (*(v7 + 488))();
    v9 = v8;
    v10 = (*v2 + 464);
    v11 = *v10;
    v12 = (*v10)();
    v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController) = v9;
    v14 = v9;

    v15 = v11();
    if (v15 == v12 || !(*(*v2 + 344))())
    {
    }

    else
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      v19 = v11();
      (*(v17 + 8))(v19, ObjectType, v17);

      v20 = swift_unknownObjectRelease();
    }

    result = (*(*v2 + 344))(v20);
    if (result)
    {
      v22 = v21;
      v23 = swift_getObjectType();
      (*(v22 + 16))(v23, v22);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A4666354()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = 0;
  }

  return v1 & 1;
}

id sub_1A4666378(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bottomPalette;
  v4 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bottomPalette);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bottomPalette);
  }

  else
  {
    type metadata accessor for PhotosSearchNavigationBarPalette(0, a2);
    v6 = v2;
    v7 = sub_1A4666400();
    v8 = sub_1A3C5A374();
    v9 = sub_1A3DEFCE8(v7, v8 & 1);
    v10 = *(v6 + v3);
    *(v6 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_1A4666400()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl);
  }

  else
  {
    sub_1A3C373D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F9DE0;
    *(v4 + 32) = sub_1A46665D0();
    *(v4 + 40) = sub_1A466670C();
    v5 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
    sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
    v6 = sub_1A524CA14();

    v7 = [v5 initWithFrame:v6 actions:{0.0, 0.0, 0.0, 0.0}];

    [v7 _setUseGlass_];
    [v7 setSelectedSegmentIndex_];
    v8 = *(*v0 + 440);
    v9 = v7;
    v8(v14);
    v10 = v14[3] != 0;
    sub_1A3C2CE9C(v14);
    [v9 setHidden_];

    v11 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_1A46665D0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___photosSegmentAction;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___photosSegmentAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___photosSegmentAction);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
    v4 = sub_1A524C634();
    v5 = PXLocalizedString(v4);

    sub_1A524C674();
    swift_allocObject();
    swift_weakInit();
    v6 = v0;
    v7 = sub_1A524DC64();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1A466670C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionsSegmentAction;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionsSegmentAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionsSegmentAction);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
    v4 = sub_1A524C634();
    v5 = PXLocalizedString(v4);

    sub_1A524C674();
    swift_allocObject();
    swift_weakInit();
    v6 = v0;
    v7 = sub_1A524DC64();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1A4666848()
{
  v1 = sub_1A4666354();
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = 0;

  return sub_1A46660E0(v1);
}

uint64_t sub_1A466687C()
{
  v1 = sub_1A4666354();
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = 1;

  return sub_1A46660E0(v1);
}

uint64_t sub_1A46668B4(void *a1, uint64_t a2)
{
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = type metadata accessor for PhotosSearchResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v13 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    (*(*Strong + 416))(Strong);

    if ((*(v6 + 48))(v11, 1, v5))
    {
      sub_1A3C2CA58(v11, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    }

    else
    {
      sub_1A3C8BF0C(v11, v8, type metadata accessor for PhotosSearchResults);
      sub_1A3C2CA58(v11, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v15 = *&v8[*(v5 + 56)];
      v16 = v15;
      v17 = sub_1A466B4E4(v8, type metadata accessor for PhotosSearchResults);
      if (v15)
      {
        v22[1] = v4;
        v18 = (*((*v13 & *a1) + 0xC8))(v17);
        if (v19)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        type metadata accessor for PhotosSearchUtilities(0, v19);
        sub_1A3ECBAC4(v16);
        v22[2] = v16;
        v22[3] = v20;
        v22[4] = v21;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  return (*((*v13 & *a1) + 0x200))(0);
}

id sub_1A4666DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524C634();
  v5 = [objc_opt_self() _systemImageNamed_];

  sub_1A4667558(a1, v15, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C373D0);
  v6 = v16;
  if (v16)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1A524EA94();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v5 style:0 target:v12 action:a2];

  swift_unknownObjectRelease();
  return v13;
}

id *sub_1A4666FC8()
{
  sub_1A3D35A10((v0 + 2));

  sub_1A3C2CA58(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  sub_1A3C2CE9C(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container);

  sub_1A3C33378(*(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_customAssetSelectionHandler), *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_customAssetSelectionHandler + 8));

  sub_1A3C327F4(*(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection));

  sub_1A3C33378(*(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier), *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier + 8));
  return v0;
}

uint64_t sub_1A46671F4()
{
  sub_1A4666FC8();

  return swift_deallocClassInstance();
}

BOOL sub_1A4667278()
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-1] - v2;
  v4 = type metadata accessor for PhotosSearchResults(0);
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 440))(v14, v6);
  v9 = v14[3];
  v10 = sub_1A3C2CE9C(v14);
  if (!v9)
  {
    (*(*v0 + 416))(v10);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_1A3DAF754(v3, v8);
      v12 = *(*&v8[*(v4 + 20)] + 16) > 0x14uLL;
      sub_1A466B4E4(v8, type metadata accessor for PhotosSearchResults);
      return v12;
    }

    sub_1A3C2CA58(v3, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  }

  return 0;
}

uint64_t sub_1A46674C8(uint64_t a1, uint64_t a2)
{
  sub_1A3C71138(0, &qword_1EB129AC0, &qword_1EB129AD0, &protocol descriptor for LemonadeSearchableContainer, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4667558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

BOOL sub_1A46675CC(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v3);
  v4 = sub_1A524ECE4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

id sub_1A4667698(void *a1, char *a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1A4667558(a2, &v15 - v9, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v4, sub_1A46600E8);
  v11 = type metadata accessor for PhotosSearchResults(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_1A3C2CA58(v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v13 = 0;
  }

  else
  {
    v13 = *&v10[*(v11 + 40)];
    sub_1A466B4E4(v10, type metadata accessor for PhotosSearchResults);
  }

  [a1 setSearchQueryMatchInfo_];

  sub_1A4667558(a2, v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  if (v12(v7, 1, v11) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C2CA58(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  [a1 setSearchContextualVideoThumbnailIdentifiers_];

  [a1 setAllowsEmptyPlaceholderBehavior_];
  result = (v12)(a2, 1, v11);
  if (result == 1)
  {
    [a1 setIsInSelectMode_];
    return [a1 resetToInitialSelectionAndFilteringState];
  }

  return result;
}

uint64_t sub_1A4667A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v10 = sub_1A524D474();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1A466A8DC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_237;
  v13 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4669918(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v14 = MEMORY[0x1E69E7F60];
  sub_1A46600E8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AE7C(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

void sub_1A4667D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v5 = sub_1A524BEE4();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BFC4();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = a3;
    v18 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0045GridActionPerformerInformationProviderManager_searchBarResignFirstResponderIfPossible);
    v19 = Strong;

    v18();

    a3 = v17;
  }

  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E7CC0];
  *(v20 + 16) = sub_1A3C5D7A8(MEMORY[0x1E69E7CC0]);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v30 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v32 = *(v32 + 8);
  (v32)(v12, v10);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = a1;
  v22[4] = v31;
  v22[5] = a3;
  aBlock[4] = sub_1A466A8E8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_124_1;
  v23 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = v21;
  sub_1A4669918(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v24 = v10;
  v25 = v9;
  v26 = MEMORY[0x1E69E7F60];
  sub_1A46600E8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AE7C(&qword_1EB12B1B0, &qword_1EB12B1C0, v26);
  v27 = v35;
  v28 = v37;
  sub_1A524E224();
  v29 = v30;
  MEMORY[0x1A5908790](v15, v25, v27, v23);
  _Block_release(v23);

  (*(v36 + 8))(v27, v28);
  (*(v33 + 8))(v25, v34);
  (v32)(v15, v24);
}

void sub_1A4668240(uint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t a4)
{
  v18[4] = a4;
  v18[5] = a3;
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for PhotosSearchResults(0);
  MEMORY[0x1EEE9AC00](v5);
  v18[1] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() px_mainScreen];
  v8 = [v7 snapshotViewAfterScreenUpdates_];

  [v8 frame];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds_];
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A4554B80;
  *(v15 + 24) = v14;
  v18[3] = v14;
  v21 = sub_1A3D78DD0;
  v22 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  v20 = &block_descriptor_133_0;
  v16 = _Block_copy(aBlock);
  v18[2] = v8;

  v17 = [v13 imageWithActions_];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    sub_1A4A38E34();
    v20 = sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
    aBlock[0] = v17;
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

void sub_1A4668A24(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    [Strong unregisterChangeObserver_];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 registerChangeObserver_];
  }
}

void sub_1A4668ED0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A4668F2C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_observing;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

uint64_t sub_1A4668FC4(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  if (v4)
  {
    v5 = v4;
    [v4 unregisterChangeObserver:v1 context:0];
  }

  [a1 registerChangeObserver:v1 context:0];
  v8 = *((*v3 & *v1) + 0x78);
  v6 = a1;

  return v8(a1);
}

id sub_1A46690EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A466919C(void *a1, int a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v9 = a1;
    if ((a2 & 0x40000) != 0 && [v7 isInteractiveZooming])
    {
      (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_resignSearchBarFirstResponder))();
    }

    if ((a2 & 4) != 0)
    {
      (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_updateSegmentedControl))([v7 isInSelectMode]);
      if ([v7 isInSelectMode])
      {
        v8 = (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_resignSearchBarFirstResponder))();
        (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_saveSearchResults))(v8);
      }
    }

    if ((a2 & 0x2000000) != 0)
    {
      (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_saveSearchResults))();
    }
  }
}

void sub_1A466938C()
{
  v0._object = 0x80000001A53D5C30;
  v1.value._countAndFlagsBits = 0xD00000000000002FLL;
  v1.value._object = 0x80000001A53E2A60;
  v0._countAndFlagsBits = 0xD000000000000016;
  TTRWorkflowStep.init(title:description:)(&v6, v0, v1);
  id = v6.id;
  title = v6.title;
  description = v6.description;
  *&v5 = v6.actions._rawValue;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = 4;
  TTRWorkflowStep.add(action:)(v8, &v7);
}

uint64_t sub_1A4669770(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(7, 0);
  return (*((*v4 & *a1) + 0x100))(a2, 0);
}

uint64_t sub_1A4669820(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A524EC94();
  MEMORY[0x1A590A010](a2);
  v6 = sub_1A524ECE4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A466A204(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A4669918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PhotosSearchResultsCoordinator(uint64_t a1)
{
  result = qword_1EB1CB6A8;
  if (!qword_1EB1CB6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4669A2C(uint64_t a1)
{
  sub_1A46600E8(319, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A4669BE4(uint64_t a1)
{
  if (!qword_1EB1294F0)
  {
    sub_1A4669CBC(255);
    v3 = v2;
    v4 = sub_1A4669918(&qword_1EB1295F8, sub_1A4669CBC, &unk_1A5325F70);
    v5 = sub_1A4669918(&unk_1EB129380, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider, &unk_1A534EAF8);
    v6 = type metadata accessor for LemonadeSearchCollectionResultFeedView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1294F0);
    }
  }
}

void sub_1A4669CBC(uint64_t a1)
{
  if (!qword_1EB1295E8)
  {
    v2 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(255);
    v3 = sub_1A4669918(&unk_1EB129380, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider, &unk_1A534EAF8);
    v5 = type metadata accessor for LemonadeBasicSectionedFeedProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB1295E8);
    }
  }
}

unint64_t sub_1A4669E94()
{
  result = qword_1EB1CB940[0];
  if (!qword_1EB1CB940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CB940);
  }

  return result;
}

unint64_t sub_1A4669EEC()
{
  result = qword_1EB13FA38;
  if (!qword_1EB13FA38)
  {
    sub_1A3C373D0(255, &unk_1EB13FA40, &type metadata for PhotosSearchResultsCoordinator.Mutable.UpdateFlag, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FA38);
  }

  return result;
}

unint64_t sub_1A4669F6C()
{
  result = qword_1EB172730;
  if (!qword_1EB172730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB172730);
  }

  return result;
}

void sub_1A4669FC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A466B290(0);
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1A524EC94();
      MEMORY[0x1A590A010](v17);
      v18 = sub_1A524ECE4();
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
      *(*(v5 + 48) + v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1A466A204(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A4669FC0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1A466A350();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A466A484(v5 + 1);
  }

  v8 = *v3;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v4);
  v9 = sub_1A524ECE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

void sub_1A466A350()
{
  v1 = v0;
  sub_1A466B290(0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void sub_1A466A484(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A466B290(0);
  v4 = sub_1A524E3B4();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1A524EC94();
      MEMORY[0x1A590A010](v16);
      v17 = sub_1A524ECE4();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1A466A698()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_shouldResetAgainAfterDataSourceChange;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_shouldResetAgainAfterDataSourceChange) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition + 8);

      v2(v4);
      sub_1A3C33378(v2, v3);
    }

    *(v0 + v1) = 0;
  }
}

uint64_t sub_1A466A71C(void *a1)
{
  v3 = (*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_resignSearchBarFirstResponder))();
  (*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_saveSearchResults))(v3);
  [a1 asset];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    if ([a1 sectionObject])
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6 && (v7 = [v6 transientIdentifier]) != 0)
      {
        v8 = v7;
        v9 = sub_1A524C674();
        v11 = v10;

        if (v9 == sub_1A524C674() && v11 == v12)
        {
          v13 = 1;
        }

        else
        {
          v13 = sub_1A524EAB4();
        }
      }

      else
      {
        v13 = 0;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_reportAssetResultSelectedAnalytics);
    swift_unknownObjectRetain();
    v14(v5, v13 & 1);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

double sub_1A466A904(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1A4666354();
    *(v5 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = a2;
    sub_1A46660E0(v6);
  }

  return result;
}

void sub_1A466A97C(char a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_1A4666400();

    [v2 setHidden_];
  }
}

void sub_1A466A9F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = (*(*Strong + 344))();
    v3 = v2;

    if (v1)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }
}

double sub_1A466AAB4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4665818();
  }

  return result;
}

void sub_1A466AB08(void *a1, char a2)
{
  sub_1A46600E8(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v5;
  sub_1A3C52C70(0, &unk_1EB1265F0, 0x1E696AEC0);
  *(inited + 48) = sub_1A524DC24();
  sub_1A452D80C(inited, &qword_1EB126430, &qword_1EB12B160, 0x1E69E58C0);
  swift_setDeallocating();
  sub_1A466B4E4(inited + 32, sub_1A3F24E98);
  v6 = sub_1A524C674();
  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    v9 = v10;
  }

  sub_1A454F230(v9, v6, v8);
  v11 = sub_1A524C674();
  v13 = v12;
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  sub_1A454F230(v15, v11, v13);
  v16 = objc_opt_self();
  v17 = *MEMORY[0x1E6991CB0];
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v18 = v17;
  v19 = sub_1A524C3D4();
  [v16 sendEvent:v18 withPayload:v19];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = (*(*Strong + 344))(Strong);
    v23 = v22;

    if (v21)
    {
      ObjectType = swift_getObjectType();
      v25 = (*(v23 + 32))(ObjectType, v23);
      swift_unknownObjectRelease();
      if (v25)
      {
        v26 = [a1 uuid];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1A524C674();
          if (*(v25 + 16))
          {
            v30 = sub_1A3C5DCA4(v28, v29);
            v32 = v31;

            if (v32)
            {
              v33 = *(*(v25 + 56) + 8 * v30);

              v34 = [v33 unsignedIntegerValue];

LABEL_15:

              v35 = [objc_opt_self() sharedSession];
              [v35 reportSearchAssetResultSelected:v27 isTopResult:a2 & 1 retrievalType:v34];

              return;
            }
          }

          else
          {
          }

          v34 = 0;
          goto LABEL_15;
        }
      }
    }
  }
}

uint64_t sub_1A466AF08()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v1 = (*(*Strong + 344))();
  v3 = v2;

  if (!v1)
  {
    return 2;
  }

  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

void sub_1A466AFD4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_1A466B03C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 544))(sub_1A4664DA0, 0);
  }

  return result;
}

double sub_1A466B0D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1016))(Strong);
  }

  return result;
}

id sub_1A466B14C(void *a1)
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v4 = (v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_1A4667698(a1, v4);
}

id sub_1A466B1EC(void *a1)
{
  sub_1A3C451FC(v1 + 16, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1A3C2CE9C(v7);
    v5 = 0;
  }

  return [a1 setHidesSortOrderMenu_];
}

void sub_1A466B290(uint64_t a1)
{
  if (!qword_1EB13FA60)
  {
    sub_1A466B2EC();
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FA60);
    }
  }
}

unint64_t sub_1A466B2EC()
{
  result = qword_1EB172740;
  if (!qword_1EB172740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB172740);
  }

  return result;
}

uint64_t sub_1A466B39C(uint64_t a1)
{
  result = sub_1A5247EA4();
  if (result)
  {
    result = (*(*v1 + 344))();
    if (result)
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1A466B438(uint64_t a1)
{
  if (!qword_1EB13FA68)
  {
    sub_1A4669BE4(255);
    v3 = v2;
    v4 = sub_1A4669918(&qword_1EB1294F8, sub_1A4669BE4, &unk_1A534E1A4);
    v6 = type metadata accessor for PhotosSearchCollectionResultsController(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB13FA68);
    }
  }
}

uint64_t sub_1A466B4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A466B54C(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = [a1 viewModel];
    aBlock[4] = sub_1A4660DA4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_191_0;
    v4 = _Block_copy(aBlock);
    [v3 performChanges_];
    _Block_release(v4);

    v5 = sub_1A46659FC();
    v6 = [a1 viewModel];
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x90))();

    v7 = sub_1A4665560();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = &v7[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition];
    v10 = *&v7[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition];
    v11 = *&v7[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition + 8];
    *v9 = sub_1A466B900;
    v9[1] = v8;

    sub_1A3C33378(v10, v11);

    v12 = [a1 viewModel];
    v13 = [v12 gridActionManager];

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = sub_1A46655D0();
      [v15 setUserInfoDelegate_];
    }

    else
    {
    }
  }

  return result;
}

double sub_1A466B7D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = (*(*Strong + 464))();
    TTRWorkflow.init(stepsBuilder:)(sub_1A466938C, &v6);
    v5 = swift_allocObject();
    swift_weakInit();

    TTRWorkflow.present(in:completion:)(v4, a1, v5);
  }

  return result;
}

void sub_1A466B900()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong resetScrollPositionAnimated_];
  }
}

double sub_1A466B95C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1024))(Strong);
  }

  return result;
}

void *sub_1A466BAAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 304))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A466BB10(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 312))(&v4);
}

double sub_1A466BB70(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__zoomLevel;
  swift_beginAccess();
  sub_1A4188660();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v6);
  }

  return result;
}

uint64_t (*sub_1A466BCC8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  v4[7] = sub_1A466BA38(v4);
  return sub_1A466BE18;
}

uint64_t sub_1A466BE84()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  v1 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__wantsSidebarToggleButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A466BF0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

void sub_1A466BFB4(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__wantsSidebarToggleButton;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v5);
  }
}

void sub_1A466C0B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__wantsSidebarToggleButton;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t (*sub_1A466C114(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  v4[7] = sub_1A466BE24(v4);
  return sub_1A466C264;
}

uint64_t sub_1A466C2AC()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopSignal);
}

uint64_t sub_1A466C318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

double sub_1A466C394(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopSignal) != a1)
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v3);
  }

  return result;
}

double sub_1A466C494()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration);
}

void sub_1A466C57C(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) == a1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v3);
  }
}

double sub_1A466C674()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) = result;
  return result;
}

uint64_t sub_1A466C68C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 928))();

  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest;
  swift_beginAccess();
  return sub_1A466C7B0(v1 + v3, a1);
}

uint64_t sub_1A466C7B0(uint64_t a1, uint64_t a2)
{
  sub_1A46717CC(0, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A466C838(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest;
  swift_beginAccess();
  sub_1A466C7B0(v1 + v3, v9);
  sub_1A466C7B0(v9, v13);
  sub_1A466C7B0(a1, &v14);
  if (v13[40] != 0xFF)
  {
    sub_1A466C7B0(v13, v12);
    if (v15[24] != 0xFF)
    {
      v10 = v14;
      v11[0] = *v15;
      *(v11 + 10) = *&v15[10];
      if (sub_1A3F6816C())
      {
        v7 = v12[41];
        v8 = BYTE9(v11[1]);
        sub_1A44839F4(&v10);
        sub_1A44839F4(v12);
        sub_1A467043C(v13);
        sub_1A467043C(v9);
        if (v7 == v8)
        {
          goto LABEL_4;
        }

LABEL_9:
        KeyPath = swift_getKeyPath();
        v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
        (*(*v1 + 936))(v5);

        return sub_1A467043C(a1);
      }

      sub_1A44839F4(&v10);
      sub_1A44839F4(v12);
      sub_1A467043C(v13);
LABEL_8:
      sub_1A467043C(v9);
      goto LABEL_9;
    }

    sub_1A44839F4(v12);
LABEL_7:
    sub_1A3C79538(v13, sub_1A46718A4);
    goto LABEL_8;
  }

  if (v15[24] != 0xFF)
  {
    goto LABEL_7;
  }

  sub_1A467043C(v13);
  sub_1A467043C(v9);
LABEL_4:
  sub_1A466C7B0(a1, v13);
  swift_beginAccess();
  sub_1A46704BC(v13, v1 + v3);
  swift_endAccess();
  return sub_1A467043C(a1);
}

double sub_1A466CAF4(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v12 = a3.n128_u64[0];
  v13 = a4.n128_f64[0];
  v10 = a1.n128_u64[0];
  v11 = a2.n128_u64[0];
  v5 = v4 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSafeAreaInsets;
  swift_beginAccess();
  *&v6.f64[0] = v10;
  *&v6.f64[1] = v11;
  *&v7.f64[0] = v12;
  v7.f64[1] = v13;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(*(v5 + 16), v7)))))
  {
    *v5 = v10;
    *(v5 + 8) = v11;
    result = v13;
    *(v5 + 16) = v12;
    *(v5 + 24) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 936))();
  }

  return result;
}

void sub_1A466CC3C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSize);
  v6 = swift_beginAccess();
  v7.n128_f64[0] = *v5;
  v8.n128_f64[0] = v5[1];
  if (*v5 == a1 && v8.n128_f64[0] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
    v12 = (*(*v2 + 632))(v6, v7, v8);
    sub_1A46E1E74(v12, v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 936))(v11);
  }
}

double sub_1A466CD8C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___horizontalSizeClass;
  swift_beginAccess();
  sub_1A3F17D14();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v6);
  }

  return result;
}

double sub_1A466CEC4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___verticalSizeClass;
  swift_beginAccess();
  sub_1A4188350();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v6);
  }

  return result;
}

double sub_1A466CFFC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___orientation;
  swift_beginAccess();
  sub_1A41883A8();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v6);
  }

  return result;
}

double sub_1A466D134(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*a1 + 560))(v5);
  v9 = *(v8 + 16);
  v34 = a1;
  if (v9)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v9, 0);
    v10 = v36;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1A4671764(v11, v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      sub_1A3C79538(v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v13 = v35;
      v36 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A3C4ED58((v14 > 1), v15 + 1, 1);
        v10 = v36;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + v15 + 32) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);

    a1 = v34;
    v16 = *(v10 + 16);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_16:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v16 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_7:
  v17 = *(*a1 + 432);
  v18 = (v10 + 32);
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v23 = *v18++;
    v22 = v23;
    v35 = v23;
    if ((v17(&v35) & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3C4ED58(0, *(v19 + 16) + 1, 1);
        v19 = v36;
      }

      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1A3C4ED58((v20 > 1), v21 + 1, 1);
        v19 = v36;
      }

      *(v19 + 16) = v21 + 1;
      *(v19 + v21 + 32) = v22;
      a1 = v34;
    }

    --v16;
  }

  while (v16);
LABEL_17:

  type metadata accessor for LemonadeAnalyticsCustomization();
  v25 = sub_1A47E502C();
  type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource(0);
  v26 = *static LemonadeLibraryDefaultsShelvesDataSource.defaultsShelvesDataSource(for:)(v33);
  v27 = (*(v26 + 576))();

  v29 = (*(*a1 + 1104))(v28);
  PHPhotoLibrary.lemonadeBookmarksManager.getter();
  v30 = sub_1A42E12AC();

  v31 = *(v19 + 16);

  (*(*v25 + 120))(v27 & 1, v29, v30, v31);

  return result;
}

uint64_t sub_1A466D540(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*a1 + 536))(v4);
  v8 = sub_1A4531AA8();
  (*(v3 + 16))(v6, v8, v2);
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7 & 1;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "PXPhotosResetViewNotification success:%{BOOL}d", v11, 8u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1A466D6EC(char a1)
{
  v3 = (*(*v1 + 448))();
  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) == v4)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v7);
  }

  swift_getKeyPath();
  (*(*v1 + 928))();

  swift_getKeyPath();
  sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  ++*(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopSignal);
  swift_getKeyPath();
  sub_1A52415E4();

  if (*(v1 + v5) == v3)
  {
    *(v1 + v5) = v3;
  }

  else
  {
    v8 = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
    (*(*v1 + 936))(v9);
  }
}

uint64_t sub_1A466D9E8(uint64_t a1)
{
  v2 = sub_1A46E59CC();
  if (v2)
  {
    (*(*v1 + 528))(0);
    sub_1A5243B04();
  }

  return v2 & 1;
}

uint64_t sub_1A466DA88()
{
  if (sub_1A4630760()[2] == 1)
  {
    return (*(**(v0 + 40) + 144))() & 1;
  }

  else
  {
    return 0;
  }
}

double sub_1A466DB48()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

void sub_1A466DBD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 584))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t (*sub_1A466DC84(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  v4[7] = sub_1A466DAE8(v4);
  return sub_1A466DDD4;
}

void (*sub_1A466DDE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A466DE44;
}

void sub_1A466DE44(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*(**(a1 + 24) + 632))(v4);
    sub_1A46E1E74(v5, v6);
  }
}

double sub_1A466DEAC()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSize;
  swift_beginAccess();
  return *v1;
}

uint64_t (*sub_1A466DFDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  v4[7] = sub_1A466DDE0(v4);
  return sub_1A466E12C;
}

void sub_1A466E198(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 928))();

  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___horizontalSizeClass;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1A466E230@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 680))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A466E294(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 688))(&v4);
}

uint64_t (*sub_1A466E2F4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  v4[7] = sub_1A466E138(v4);
  return sub_1A466E444;
}

void sub_1A466E4C4(uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  (*(*v3 + 928))();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v3 + v6);
}

void *sub_1A466E554@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 728))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A466E5B8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 736))(&v4);
}

uint64_t (*sub_1A466E618(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  v4[7] = sub_1A466E450(v4);
  return sub_1A466E768;
}

void sub_1A466E7D4(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 928))();

  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___orientation;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1A466E86C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 776))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A466E8D0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 784))(&v4);
}

uint64_t (*sub_1A466E930(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  v4[7] = sub_1A466E774(v4);
  return sub_1A466EA80;
}

uint64_t sub_1A466EA8C(uint64_t a1, char a2)
{
  sub_1A3F683AC(a1, v4);
  v4[41] = a2;
  return sub_1A466C838(v4);
}

uint64_t sub_1A466EAC8()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v3 = 255;
  return sub_1A466C838(v1);
}

uint64_t sub_1A466EB4C(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return (*(*v2 + 744))(&v4);
}

uint64_t (*sub_1A466EBAC(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  (*(*v2 + 736))();
  return sub_1A466EC2C;
}

uint64_t sub_1A466EC2C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(a1 + 8);
    return (*(*v2 + 744))(&v4);
  }

  else
  {
    v5 = *(a1 + 8);
    return (*(*v2 + 744))(&v5);
  }
}

void (*sub_1A466EDA0(char *a1))(void)
{
  v2 = v1;
  v3 = *(v1 + 64);
  v9 = *a1;
  v4 = (*(*v3 + 640))(&v9);
  result = (*(*v2 + 904))(v4);
  if (result)
  {
    v7 = v6;
    v8 = result;
    result();

    return sub_1A3C784D4(v8, v7);
  }

  return result;
}

void (*(*sub_1A466EE7C(void *a1))(uint64_t *a1, char a2))(void)
{
  v2 = *(v1 + 64);
  *a1 = v1;
  a1[1] = v2;
  (*(*v2 + 632))();
  return sub_1A466EEF4;
}

void (*sub_1A466EEF4(uint64_t *a1, char a2))(void)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v9 = *(a1 + 16);
    v4 = (*(*v3 + 640))(&v9);
  }

  else
  {
    v10 = *(a1 + 16);
    v4 = (*(*v3 + 640))(&v10);
  }

  result = (*(*v2 + 904))(v4);
  if (result)
  {
    v7 = v6;
    v8 = result;
    result();

    return sub_1A3C784D4(v8, v7);
  }

  return result;
}

uint64_t sub_1A466F05C()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A466F0FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 904))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A466F194(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 912);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A466F254(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  (*(*v2 + 936))();
  sub_1A3C784D4(a1, a2);

  return result;
}

uint64_t (*sub_1A466F310(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  sub_1A52415F4();

  v4[7] = sub_1A466EFFC(v4);
  return sub_1A466F460;
}

uint64_t sub_1A466F5AC()
{
  swift_unknownObjectRelease();

  sub_1A3C79538(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel_cellSpecs, sub_1A3C39450);
  sub_1A467043C(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler), *(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler + 8));
  v1 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A466F6AC()
{
  sub_1A466F5AC();

  return swift_deallocClassInstance();
}

void (*sub_1A466F75C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 648))();
  return sub_1A3E62A10;
}

void (*sub_1A466F84C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 600))();
  return sub_1A3E658B0;
}

void (*sub_1A466F964(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 696))();
  return sub_1A3E658B0;
}

void (*sub_1A466FA7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 744))();
  return sub_1A3E658B0;
}

void (*sub_1A466FB94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 792))();
  return sub_1A3E658B0;
}

void (*sub_1A466FCAC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 832))();
  return sub_1A3E658B0;
}

void (*sub_1A466FE1C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 872))();
  return sub_1A3E658B0;
}

void (*sub_1A466FF0C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 920))();
  return sub_1A3E658B0;
}

void (*sub_1A4670024(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 320))();
  return sub_1A3E658B0;
}

double sub_1A46700BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  LemonadeMutableContainerSizeSpecsProviderModel.containerSize.getter(a1, WitnessTable);
  return result;
}

double sub_1A4670108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  LemonadeMutableContainerSizeSpecsProviderModel.containerSafeAreaInsets.getter(a1, WitnessTable);
  return result;
}

uint64_t sub_1A46702F4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeRootViewModel(0);
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

uint64_t sub_1A4670334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A524CC54();
  swift_unknownObjectRetain();
  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = v2;
  swift_unknownObjectRetain();
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v3;

  return sub_1A524B944();
}

uint64_t sub_1A467043C(uint64_t a1)
{
  sub_1A46717CC(0, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A46704BC(uint64_t a1, uint64_t a2)
{
  sub_1A46717CC(0, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4670544()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest;
  swift_beginAccess();
  sub_1A467181C(v1, v2 + v3);
  return swift_endAccess();
}

void sub_1A46705AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1A5243B24();
  swift_allocObject();
  v5[11] = sub_1A5243B14();
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__zoomLevel) = *sub_1A44DAFD8();
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__wantsSidebarToggleButton) = 0;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopSignal) = 0;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) = 0x3FE0000000000000;
  v9 = v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest;
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 20) = 255;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel_verticalMargin) = 0;
  v10 = (v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSafeAreaInsets);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSize);
  *v11 = 0;
  v11[1] = 0;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___horizontalSizeClass) = 2;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___verticalSizeClass) = 0;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___orientation) = 1;
  v12 = (v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler);
  *v12 = 0;
  v12[1] = 0;
  sub_1A5241604();
  v5[2] = a1;
  v5[3] = a2;
  type metadata accessor for LemonadePhotoLibraryContext(0, v13);
  v14 = a1;
  swift_unknownObjectRetain();
  v15 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v14, 0, v15);
  sub_1A3C3B2D4(0);

  sub_1A3C3DD04(v16, a5);
  type metadata accessor for PhotosXCPTestUtilities(0, v17);
  sub_1A3C4CE7C(&aBlock);
  v18 = v33;
  if (v33 == 255)
  {
    v28 = type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource(0);
    v24 = static LemonadeLibraryDefaultsShelvesDataSource.defaultsShelvesDataSource(for:)(v14);
    v35 = v28;
    v25 = &unk_1EB1250C8;
    v26 = type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource;
    v27 = &unk_1A52F8890;
  }

  else
  {
    v19 = aBlock;
    v20 = v31;
    v21 = v32;
    v22 = type metadata accessor for LemonadeTestShelvesDataSource();
    aBlock = v19;
    v31 = v20;
    v32 = v21;
    LOBYTE(v33) = v18 & 1;
    v23 = v14;
    sub_1A4396980(v19, v20, v21, v18);
    v24 = sub_1A4688E40(v23, &aBlock);
    sub_1A439690C(v19, v20, v21, v18);
    v35 = v22;
    v25 = &unk_1EB13FA88;
    v26 = type metadata accessor for LemonadeTestShelvesDataSource;
    v27 = &unk_1A53550F0;
  }

  v36 = sub_1A3C3DA2C(v25, v26, v27);
  v34 = v24;
  v29 = *(**sub_1A3C29A08() + 112);

  v29(0);
  v29(1);
  sub_1A5242164();
  sub_1A5242144();
  sub_1A5242154();
  [objc_msgSend(objc_opt_self() sharedScheduler)];
  type metadata accessor for LemonadeRootSubtitleModel(0);
  LOBYTE(aBlock) = 1;
  LemonadeRootSubtitleModel.__allocating_init(photoLibrary:tabIdentifier:)(v14, &aBlock);
}

__n128 sub_1A4670DC4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSafeAreaInsets);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

void sub_1A4670E28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSize);
  v5 = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  v6 = (*(*v1 + 632))(v5);
  sub_1A46E1E74(v6, v7);
}

void sub_1A4670F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___orientation;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A4670F74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1A3C66EE8(v2, v3);
  return sub_1A3C784D4(v5, v6);
}

uint64_t objectdestroyTm_70()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A4671070(_BYTE *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  LOBYTE(v9[0]) = *a1;
  (*(v3 + 32))(v9, v2);
  v4 = objc_opt_self();
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000038, 0x80000001A53E2C90);
  v5 = LemonadeShelvesLayoutStyle.rawValue.getter();
  MEMORY[0x1A5907B60](v5);

  v8 = sub_1A524C634();

  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4(0, v6);
  v7 = sub_1A524C3D4();

  [v4 sendEvent:v8 withPayload:v7];
}

uint64_t sub_1A46711B8(uint64_t a1)
{
  result = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel, &unk_1A5353CC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4671210(uint64_t a1)
{
  result = sub_1A3C3DA2C(&qword_1EB125908, type metadata accessor for LemonadeRootViewModel, &unk_1A5353C88);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A4671284(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1A46712CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_1A4671458()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = [objc_opt_self() px_sharedApplication];
  v3 = [v4 _launchTestName];
  [v4 finishedTest_];

  sub_1A5242134();
  (*(*v1 + 128))(0);
  [v2 applicationDidFinishExtendedLaunch];
}

void sub_1A4671558()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  sub_1A5242134();
  sub_1A5242124();
  (*(*v1 + 128))(1);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v7[4] = sub_1A467175C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3C2E0D0;
  v7[3] = &block_descriptor_98_2;
  v5 = _Block_copy(v7);

  v6 = v3;

  px_perform_after_ca_commit(v5);
  _Block_release(v5);
}

double sub_1A4671698()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1A524CC54();
    sub_1A3C67884(sub_1A4671730, v2, "PhotosUICore/LemonadeRootViewModel.swift", 40, 2u, 114);
  }

  return result;
}

uint64_t sub_1A4671764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A46717CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A467181C(uint64_t a1, uint64_t a2)
{
  sub_1A46717CC(0, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A46718A4(uint64_t a1)
{
  if (!qword_1EB125920)
  {
    sub_1A46717CC(255, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB125920);
    }
  }
}

id sub_1A467194C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsAssetProvenanceViewModel(0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v9 = v8();
  v10 = sub_1A3FBD1E0(v9);

  result = 0;
  if (v10)
  {
    v12 = *((*v7 & *v2) + 0x108);
    v13 = a1;
    v14 = v12();
    v15 = v8();
    v16 = sub_1A3FBBCFC(v13, v14, v15);
    v17 = sub_1A4671BAC();
    v18 = *((*v7 & *v16) + 0x110);
    v19 = v16;
    v18(v17 & 1);
    v20 = sub_1A4671BD0();
    (*((*v7 & *v19) + 0x128))(v20 & 1);
    (*((*v7 & *v2) + 0xE0))(v16);
    sub_1A4671BF4(0);
    v21 = v19;
    sub_1A49DBE00(v6);
    v22 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

    return v22;
  }

  return result;
}

uint64_t sub_1A4671BAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetAbove);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetAbove) = 0;
  }

  return v1 & 1;
}

uint64_t sub_1A4671BD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetBelow);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetBelow) = 0;
  }

  return v1 & 1;
}

void sub_1A4671BF4(uint64_t a1)
{
  if (!qword_1EB13FA90)
  {
    v2 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(255);
    v3 = sub_1A4671C58();
    v5 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13FA90);
    }
  }
}

unint64_t sub_1A4671C58()
{
  result = qword_1EB13FA98;
  if (!qword_1EB13FA98)
  {
    type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FA98);
  }

  return result;
}

uint64_t sub_1A4671D9C()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))())
  {
    return 2;
  }

  if (sub_1A4671BAC())
  {
    return 2;
  }

  return 0;
}

double sub_1A4671E0C()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6EE860);
  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1A4672168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsAssetProvenanceWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MemoryEntity.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A4675CDC(0, &qword_1EB1260C0, sub_1A40D7C08, MEMORY[0x1E69E6370], MEMORY[0x1E695A088]);
  swift_getKeyPath();
  sub_1A4105350();
  result = sub_1A523FE54();
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t MemoryEntity.id.getter()
{
  v1 = [*v0 uuid];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A46722CC(void *a1)
{
  v1 = [a1 uuid];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t MemoryEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = sub_1A5240214();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246E54();
  v17 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D654();
  v18 = sub_1A4895DCC();
  v9 = *v18;
  sub_1A5246E44();
  sub_1A5246E04();

  v10 = *(v6 + 8);
  v16 = *v1;
  v10(v8, v5);
  v22 = v16;
  v11 = MEMORY[0x1E695A3C0];
  sub_1A4676010(0, &qword_1EB131A00, MEMORY[0x1E695A3C0], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52FC9F0;
  sub_1A52401F4();
  sub_1A5240204();
  v21 = v12;
  sub_1A40D8D28();
  sub_1A4676010(0, &qword_1EB131A08, v11, MEMORY[0x1E69E62F8]);
  sub_1A40D8DE4();
  v13 = v19;
  sub_1A524E224();
  sub_1A4672650(v4, v20);
  (*(v2 + 8))(v4, v13);
  sub_1A524D644();
  v14 = *v18;
  sub_1A5246E44();
  sub_1A5246E04();

  return (v10)(v8, v17);
}

uint64_t sub_1A4672650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v65 = a2;
  v6 = sub_1A5240BB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E6720];
  sub_1A4676010(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  sub_1A4676010(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v13);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = *v4;
  v72 = v7;
  v29 = *(v7 + 56);
  v74 = &v57 - v30;
  v29(v27);
  v71 = v25;
  v63 = v29;
  (v29)(v25, 1, 1, v6);
  v31 = sub_1A5240244();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v68 = v18;
  v61 = v33;
  v62 = v31;
  v60 = v32 + 56;
  v33(v18, 1, 1);
  sub_1A52401F4();
  sub_1A40D8D28();
  v66 = a1;
  LOBYTE(v25) = sub_1A524E114();
  v34 = *(v10 + 8);
  v64 = v10 + 8;
  v34(v12, v9);
  if (v25)
  {
    v35 = [v28 localizedTitle];
    v59 = v28;
    if (v35)
    {
      v36 = v35;
      sub_1A524C674();

      v58 = v9;
      v37 = v73;
      sub_1A5240B94();
      v38 = MEMORY[0x1E6968E10];
      v39 = v74;
      sub_1A4676074(v74, &qword_1EB12B008, MEMORY[0x1E6968E10]);
      (v63)(v37, 0, 1, v6);
      v40 = v37;
      v9 = v58;
      v28 = v59;
      sub_1A4676164(v40, v39, &qword_1EB12B008, v38);
    }

    v41 = [v28 subtitle];
    if (v41)
    {
      v42 = v41;
      sub_1A524C674();

      v43 = v9;
      v44 = v73;
      sub_1A5240B94();
      v45 = MEMORY[0x1E6968E10];
      v46 = v71;
      sub_1A4676074(v71, &qword_1EB12B008, MEMORY[0x1E6968E10]);
      (v63)(v44, 0, 1, v6);
      v47 = v44;
      v9 = v43;
      v28 = v59;
      sub_1A4676164(v47, v46, &qword_1EB12B008, v45);
    }
  }

  sub_1A5240204();
  v48 = sub_1A524E114();
  v34(v12, v9);
  v50 = v68;
  v49 = v69;
  if (v48)
  {
    sub_1A4896E90(v28);
  }

  v51 = v67;
  sub_1A46760E4(v74, v67, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  v52 = *(v72 + 48);
  if (v52(v51, 1, v6) == 1)
  {
    sub_1A5240B94();
    if (v52(v51, 1, v6) != 1)
    {
      sub_1A4676074(v51, &qword_1EB12B008, MEMORY[0x1E6968E10]);
    }
  }

  else
  {
    (*(v72 + 32))(v70, v51, v6);
  }

  v53 = MEMORY[0x1E6968E10];
  v54 = v71;
  sub_1A46760E4(v71, v73, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  v55 = MEMORY[0x1E695A3E8];
  sub_1A46760E4(v50, v49, &qword_1EB12B0F0, MEMORY[0x1E695A3E8]);
  sub_1A5240264();
  sub_1A4676074(v50, &qword_1EB12B0F0, v55);
  sub_1A4676074(v54, &qword_1EB12B008, v53);
  return sub_1A4676074(v74, &qword_1EB12B008, v53);
}

uint64_t MemoryEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_1A5246E54();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1A4672E4C, 0, 0);
}

uint64_t sub_1A4672E4C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_1A524D654();
  v6 = sub_1A4895DCC();
  v7 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8 = *(v2 + 8);
  v8(v1, v3);
  sub_1A4672650(v4, v5);
  sub_1A524D644();
  v9 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8(v1, v3);

  v10 = v0[1];

  return v10();
}

void sub_1A4672FE8(uint64_t *a1@<X8>)
{
  v3 = [*v1 uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1A4673040(uint64_t a1)
{
  v2 = sub_1A4675FBC();

  return MEMORY[0x1EEDB39B0](a1, v2);
}

uint64_t sub_1A467308C(uint64_t a1)
{
  v2 = sub_1A4105350();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A46730DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return MemoryEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_1A4673184(uint64_t a1)
{
  v2 = sub_1A4675BF4();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t MemoryEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A5246F24();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1A5246E54();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A46732FC, 0, 0);
}

uint64_t sub_1A46732FC(double a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v1[10] = *(v1[2] + 16);
  sub_1A524D654();
  v5 = sub_1A4895DCC();
  v1[11] = v5;
  v6 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7 = *(v3 + 8);
  v1[12] = v7;
  v1[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  type metadata accessor for PXAppDependencyManager();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_1A4673458;

  return sub_1A4896234();
}

uint64_t sub_1A4673458(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A46735B4, 0, 0);
  }
}

id sub_1A46735B4()
{
  v1 = [*(v0 + 120) librarySpecificFetchOptions];
  [v1 setIncludeLocalMemories_];
  [v1 setIncludePendingMemories_];
  [v1 setIncludeStoryMemories_];
  v2 = objc_opt_self();
  v3 = sub_1A524CA14();
  v4 = [v2 fetchMemoriesWithLocalIdentifiers:v3 options:v1];

  if ([v4 count] < 1)
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    v11 = sub_1A3CB648C();
    (*(v9 + 16))(v8, v11, v10);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = [v4 fetchedObjects];
  if (result)
  {
    v6 = result;
    sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
    v7 = sub_1A524CA34();

    if (!(v7 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t MemoryEntityQuery.displayRepresentations(for:requestedComponents:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1A5246E54();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A4673C80;

  return MemoryEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A4673C80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1A413F4AC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1A4673DA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4673DA8(double a1)
{
  v2 = v1[8];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[3];
  v16 = v5;
  v15 = v1[2];
  sub_1A524D654();
  v6 = sub_1A4895DCC();
  v7 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8 = *(v3 + 8);
  v8(v4, v5);
  v9 = swift_task_alloc();
  *(v9 + 16) = v15;
  sub_1A4674168(MEMORY[0x1E69E7CC8], sub_1A4675A00, v9, v2);
  v11 = v10;

  sub_1A524D644();
  v12 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8(v4, v16);

  v13 = v1[1];

  return v13(v11);
}

uint64_t sub_1A4673F80(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  sub_1A4676010(0, &qword_1EB1260B0, MEMORY[0x1E695A3F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  v8 = sub_1A5240274();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *a2;
  v17[1] = v17[0];
  sub_1A4672650(a3, v11);
  v12 = [*&v17[0] uuid];
  v13 = sub_1A524C674();
  v15 = v14;

  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1A40DA2B0(v7, v13, v15);
  return (*(v9 + 8))(v11, v8);
}

void sub_1A4674168(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v10 = *i;
      v8 = v10;

      a2(&v11, &v10);
      v9 = v10;

      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }
  }
}

uint64_t MemoryEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5246F24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A467430C, 0, 0);
}

uint64_t sub_1A467430C(uint64_t a1, uint64_t a2)
{
  if ((sub_1A3DEFE6C(a1, a2) & 1) == 0)
  {
    v6 = v2[5];
    v5 = v2[6];
    v7 = v2[4];
    v8 = sub_1A3CB648C();
    (*(v6 + 16))(v5, v8, v7);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PXAppDependencyManager();
  v3 = swift_task_alloc();
  v2[11] = v3;
  *v3 = v2;
  v3[1] = sub_1A4674580;

  return sub_1A4896234();
}

uint64_t sub_1A4674580(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A46746FC, 0, 0);
  }
}

void sub_1A46746FC()
{
  v1 = *(v0 + 96);
  v4 = v0 + 16;
  v3 = *(v0 + 16);
  v2 = *(v4 + 8);
  v5 = [v1 librarySpecificFetchOptions];
  [v5 setIncludeLocalMemories_];
  [v5 setIncludePendingMemories_];
  [v5 setIncludeStoryMemories_];
  sub_1A3C4D5E4(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9DE0;
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A4676010(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52FC9F0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1A3D710E8();
  strcpy((v6 + 32), "localizedTitle");
  *(v6 + 47) = -18;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = v3;
  *(v6 + 80) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46754B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A40DB798;

  return MemoryEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1A4675558(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBBB04;

  return MemoryEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A46755EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return MemoryEntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2);
}

uint64_t sub_1A4675688(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A4675AE4();
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

char *sub_1A4675740(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D5E4(0, &qword_1EB13FB28, &type metadata for MemoryEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A4675864(void *a1)
{
  result = [a1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    sub_1A4675CDC(0, &qword_1EB1260C0, sub_1A40D7C08, MEMORY[0x1E69E6370], MEMORY[0x1E695A088]);
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = [a1 objectAtIndexedSubscript_];
      swift_getKeyPath();
      sub_1A4105350();
      v7 = v6;
      v8 = sub_1A523FE54();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4675740(0, *(v5 + 2) + 1, 1, v5);
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = sub_1A4675740((v9 > 1), v10 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v10 + 1;
      v11 = &v5[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

unint64_t sub_1A4675A34()
{
  result = qword_1EB13FAB0;
  if (!qword_1EB13FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAB0);
  }

  return result;
}

unint64_t sub_1A4675A8C()
{
  result = qword_1EB13FAB8;
  if (!qword_1EB13FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAB8);
  }

  return result;
}

unint64_t sub_1A4675AE4()
{
  result = qword_1EB13FAC0;
  if (!qword_1EB13FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAC0);
  }

  return result;
}

unint64_t sub_1A4675B40()
{
  result = qword_1EB13FAC8;
  if (!qword_1EB13FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAC8);
  }

  return result;
}

unint64_t sub_1A4675B98()
{
  result = qword_1EB13FAD0;
  if (!qword_1EB13FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAD0);
  }

  return result;
}

unint64_t sub_1A4675BF4()
{
  result = qword_1EB13FAD8;
  if (!qword_1EB13FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAD8);
  }

  return result;
}

unint64_t sub_1A4675C4C()
{
  result = qword_1EB13FAE0;
  if (!qword_1EB13FAE0)
  {
    sub_1A4675CDC(255, &qword_1EB13FAE8, sub_1A4104288, &type metadata for MemoryEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAE0);
  }

  return result;
}

void sub_1A4675CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A4675D48()
{
  result = qword_1EB13FAF0;
  if (!qword_1EB13FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAF0);
  }

  return result;
}

unint64_t sub_1A4675DA0()
{
  result = qword_1EB13FAF8;
  if (!qword_1EB13FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAF8);
  }

  return result;
}

unint64_t sub_1A4675DF8()
{
  result = qword_1EB13FB00;
  if (!qword_1EB13FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB00);
  }

  return result;
}

unint64_t sub_1A4675E50()
{
  result = qword_1EB13FB08;
  if (!qword_1EB13FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB08);
  }

  return result;
}

unint64_t sub_1A4675EA8()
{
  result = qword_1EB13FB10;
  if (!qword_1EB13FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB10);
  }

  return result;
}

unint64_t sub_1A4675F00()
{
  result = qword_1EB13FB18;
  if (!qword_1EB13FB18)
  {
    sub_1A3C4D5E4(255, &qword_1EB1325B8, &type metadata for MemoryEntity, MEMORY[0x1E69E62F8]);
    sub_1A4104288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB18);
  }

  return result;
}

unint64_t sub_1A4675FBC()
{
  result = qword_1EB13FB20;
  if (!qword_1EB13FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB20);
  }

  return result;
}

void sub_1A4676010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4676074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4676010(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A46760E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4676010(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4676164(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4676010(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46761F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746361706D6F63;
  v5 = 0x80000001A53E2F00;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001A53E2F00;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x72616C75676572;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x746361706D6F63;
  if (*a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72616C75676572;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A46762EC()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A4676394(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A4676428(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A46764D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001A53E2F00;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A467653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A40A3BDC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1A46765A0()
{
  sub_1A46765E8();

  return sub_1A5249244();
}

unint64_t sub_1A46765E8()
{
  result = qword_1EB15AB00[0];
  if (!qword_1EB15AB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AB00);
  }

  return result;
}

uint64_t sub_1A467667C()
{
  sub_1A46766B8();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A46766B8()
{
  result = qword_1EB15ACB8[0];
  if (!qword_1EB15ACB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15ACB8);
  }

  return result;
}

uint64_t View.largeNavigationTitleConfiguration(horizontalInsets:multiline:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A524BC74();
  sub_1A4676878();
  sub_1A46768D0();
  return sub_1A524A8E4();
}

void sub_1A4676878()
{
  if (!qword_1EB13FB30)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FB30);
    }
  }
}

unint64_t sub_1A46768D0()
{
  result = qword_1EB13FB38;
  if (!qword_1EB13FB38)
  {
    sub_1A4676878();
    sub_1A4676950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB38);
  }

  return result;
}

unint64_t sub_1A4676950()
{
  result = qword_1EB1CC410[0];
  if (!qword_1EB1CC410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CC410);
  }

  return result;
}

void sub_1A4676AC4(uint64_t a1, unsigned int a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v6 navigationController];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 topViewController];
  if (v9)
  {
    v10 = v9;
    v20 = [v9 navigationItem];

    if (v20)
    {
      if ((a2 & 1) != 0 || (([v20 largeTitleInsets], v14 == 0.0) ? (v15 = v11 == *&a1) : (v15 = 0), v15 && (v12 == 0.0 ? (v16 = v13 == *&a1) : (v16 = 0), v16)))
      {
        v17 = 0;
        if (BYTE1(a2) == 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        [v20 setLargeTitleInsets_];
        v17 = 1;
        if (BYTE1(a2) == 2)
        {
          goto LABEL_24;
        }
      }

      if ([v20 _largeTitleTwoLineMode] != ((a2 >> 8) & 1))
      {
        [v20 _setLargeTitleTwoLineMode_];
LABEL_27:
        v19 = [v8 navigationBar];
        [v19 setNeedsLayout];

LABEL_28:
        v18 = v20;
        goto LABEL_29;
      }

LABEL_24:
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v18 = v8;
LABEL_29:
}

id sub_1A4676C9C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXLargeNavigationTitleIntrospectionView.IntrospectionUIViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A4676CF4(uint64_t a1)
{
  if (!qword_1EB13FB48)
  {
    sub_1A4676878();
    sub_1A46768D0();
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FB48);
    }
  }
}

unint64_t sub_1A4676D58()
{
  result = qword_1EB13FB50;
  if (!qword_1EB13FB50)
  {
    sub_1A4676CF4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB50);
  }

  return result;
}

uint64_t _s12PhotosUICore39PXLargeNavigationTitleIntrospectionViewV29IntrospectionUIViewControllerC22MultiLineConfigurationVwet_0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s12PhotosUICore39PXLargeNavigationTitleIntrospectionViewV29IntrospectionUIViewControllerC22MultiLineConfigurationVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

id sub_1A4676E80()
{
  v0 = type metadata accessor for PXLargeNavigationTitleIntrospectionView.IntrospectionUIViewController();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController_configuration];
  *v2 = 0;
  *(v2 + 4) = 513;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A4676EE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = a1 + OBJC_IVAR____TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController_configuration;
  *v5 = *v1;
  *(v5 + 8) = v4;
  v6 = *(v1 + 9);
  *(v5 + 9) = v6;
  sub_1A4676AC4(v3, v4 | (v6 << 8), 0);
}

uint64_t sub_1A4676F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4677030();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4676FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4677030();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4677008(uint64_t a1)
{
  sub_1A4677030();
  sub_1A5249ED4();
  __break(1u);
}

unint64_t sub_1A4677030()
{
  result = qword_1EB1CC520;
  if (!qword_1EB1CC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CC520);
  }

  return result;
}

void sub_1A4677490()
{
  v1 = v0;
  v2 = [v0 people];
  if (v2)
  {
    v3 = v2;
    if ([v2 count] == 1)
    {
      v4 = [v3 firstObject];
      if (v4)
      {
        v5 = v4;
        sub_1A467853C(0);
        sub_1A46785D0(0);
        v6 = v5;
        v14 = sub_1A4044134(v6, [v1 presentationEnvironment]);
        sub_1A4678638(&qword_1EB13FB78, sub_1A46785D0, &unk_1A531416C);
        j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v13);
        v12 = v13;
        v7 = sub_1A4407D6C(&v14, &v12, 0, 0);
        v11 = 1;
        sub_1A44078B8(&v11);
        v8 = sub_1A49FC410(v7);
        [v8 setModalPresentationStyle_];
        [v1 presentViewController_];
        [v1 completeUserInteractionTaskWithSuccess:1 error:0];

        return;
      }
    }
  }

  [v0 completeUserInteractionTaskWithSuccess:0 error:0];
  v9 = sub_1A524D244();
  v10 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Failed to present the customize people album view because the initial state was invalid", 87, 2, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1A4677828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1A5243AC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1A467789C()
{
  if (v0[6])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1A5245D74();
}

void sub_1A467790C()
{
  if (v0[8])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1A5245D84();
}

uint64_t sub_1A467797C()
{
  if (!v0[8])
  {
    __swift_project_boxed_opaque_existential_1(v0, v0[3]);
    sub_1A5245D54();
  }

  return 0;
}

uint64_t sub_1A46779D4()
{
  if (!v0[8])
  {
    __swift_project_boxed_opaque_existential_1(v0, v0[3]);
    sub_1A5245D44();
  }

  return 0;
}

void sub_1A4677A7C(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = sub_1A5243AC4();
  v14 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v12[10] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s12PhotosUICore24CustomizeMenuHeaderModelVMa_1(0);
  MEMORY[0x1EEE9AC00](v13);
  v12[9] = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5243624();
  v12[7] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A46786F0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12[8] = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v12 - v11;
  sub_1A5245BA4();
}

void sub_1A467853C(uint64_t a1)
{
  if (!qword_1EB13FB60)
  {
    sub_1A46785D0(255);
    v3 = v2;
    v4 = sub_1A4678638(&qword_1EB13FB78, sub_1A46785D0, &unk_1A531416C);
    v6 = type metadata accessor for LemonadeCollectionCustomizationViewModel(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB13FB60);
    }
  }
}

void sub_1A46785D0(uint64_t a1)
{
  if (!qword_1EB13FB68)
  {
    v2 = sub_1A3C52C70(255, &qword_1EB1265C0, 0x1E6978980);
    v5 = type metadata accessor for LemonadeCollectionCustomizationPeopleModel(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13FB68);
    }
  }
}

uint64_t sub_1A4678638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s12PhotosUICore24CustomizeMenuHeaderModelVMa_1(uint64_t a1)
{
  result = qword_1EB1CC540;
  if (!qword_1EB1CC540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A46786F0(uint64_t a1)
{
  if (!qword_1EB13FB88)
  {
    sub_1A5243AC4();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FB88);
    }
  }
}

unint64_t sub_1A4678748()
{
  result = qword_1EB1CC530;
  if (!qword_1EB1CC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CC530);
  }

  return result;
}

uint64_t sub_1A467879C(uint64_t a1, uint64_t a2)
{
  v4 = _s12PhotosUICore24CustomizeMenuHeaderModelVMa_1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4678800()
{
  result = qword_1EB1CC538;
  if (!qword_1EB1CC538)
  {
    _s12PhotosUICore24CustomizeMenuHeaderModelVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CC538);
  }

  return result;
}

uint64_t sub_1A4678858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46788C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4678920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A4678968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A46789F0(uint64_t a1)
{
  sub_1A3C34400(319, &qword_1EB128D20, off_1E7721088);
  if (v1 <= 0x3F)
  {
    sub_1A3E792C4(319, &qword_1EB13FB90, &qword_1EB13FCC0, MEMORY[0x1E6981170]);
    if (v2 <= 0x3F)
    {
      sub_1A5243AC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4678B00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4678B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

double sub_1A4678BA0()
{
  swift_beginAccess();

  return result;
}

double sub_1A4678BD8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_1A4678C70()
{
  swift_beginAccess();
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A4679D84(&qword_1EB134310, type metadata accessor for SharedLibraryInvitationViewModel, &protocol conformance descriptor for SharedLibraryInvitationViewModel);

  v0 = sub_1A52484A4();

  return v0;
}

uint64_t sub_1A4678D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4678D70(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

double sub_1A4678DC4()
{
  swift_beginAccess();

  return result;
}

double sub_1A4678DFC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t sub_1A4678E94()
{
  swift_beginAccess();
  type metadata accessor for SharedAlbumsInvitationsViewModel(0);
  sub_1A4679D84(&qword_1EB134318, type metadata accessor for SharedAlbumsInvitationsViewModel, &protocol conformance descriptor for SharedAlbumsInvitationsViewModel);

  v0 = sub_1A52484A4();

  return v0;
}

uint64_t type metadata accessor for LemonadeProfileBadgingStatusProvider(uint64_t a1)
{
  result = qword_1EB1CCA80;
  if (!qword_1EB1CCA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4678F94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

void sub_1A4678FE4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider, &protocol conformance descriptor for LemonadeProfileBadgingStatusProvider);

  sub_1A5245724();
}

void sub_1A4679098()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider, &protocol conformance descriptor for LemonadeProfileBadgingStatusProvider);

  sub_1A5245714();
}

void sub_1A467915C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider, &protocol conformance descriptor for LemonadeProfileBadgingStatusProvider);

  sub_1A5245724();
}

void LemonadeProfileBadgingStatusProvider.init(photoLibrary:)(void *a1)
{
  sub_1A46796DC(0);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for LemonadeProfileBadgingStatusProvider(0);
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider, &protocol conformance descriptor for LemonadeProfileBadgingStatusProvider);
  sub_1A5245754();
}

void sub_1A46796DC(uint64_t a1)
{
  if (!qword_1EB13FBA0)
  {
    type metadata accessor for LemonadeProfileBadgingStatusProvider(255);
    sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider, &protocol conformance descriptor for LemonadeProfileBadgingStatusProvider);
    sub_1A5245764();
  }
}

double sub_1A467977C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 272))(Strong);
  }

  return result;
}

void sub_1A46797F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore36LemonadeProfileBadgingStatusProvider_observable);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_1A46798DC;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3DC72D4;
  v4[3] = &block_descriptor_239;
  v3 = _Block_copy(v4);

  [v1 performChanges_];
  _Block_release(v3);
}

uint64_t sub_1A46798DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider, &protocol conformance descriptor for LemonadeProfileBadgingStatusProvider);
    sub_1A5245724();
  }

  return result;
}

uint64_t LemonadeProfileBadgingStatusProvider.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore36LemonadeProfileBadgingStatusProvider__shouldBadge;
  sub_1A46796DC(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LemonadeProfileBadgingStatusProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore36LemonadeProfileBadgingStatusProvider__shouldBadge;
  sub_1A46796DC(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1A4679B40()
{
  result = qword_1EB13FBA8;
  if (!qword_1EB13FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBA8);
  }

  return result;
}

unint64_t sub_1A4679B98()
{
  result = qword_1EB13FBB0;
  if (!qword_1EB13FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBB0);
  }

  return result;
}

unint64_t sub_1A4679BF0()
{
  result = qword_1EB13FBB8;
  if (!qword_1EB13FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBB8);
  }

  return result;
}

unint64_t sub_1A4679C48()
{
  result = qword_1EB13FBC0;
  if (!qword_1EB13FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBC0);
  }

  return result;
}

unint64_t sub_1A4679CA0()
{
  result = qword_1EB13FBC8;
  if (!qword_1EB13FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBC8);
  }

  return result;
}

uint64_t sub_1A4679D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A4679DCC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore36LemonadeProfileBadgingStatusProvider_observable);
  *a1 = v2;
  return v2;
}

unint64_t sub_1A4679DE8()
{
  result = qword_1EB13FBD8;
  if (!qword_1EB13FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBD8);
  }

  return result;
}

void sub_1A4679E3C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadeProfileBadgingStatusProvider(0);
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider, &protocol conformance descriptor for LemonadeProfileBadgingStatusProvider);

  sub_1A5245C54();
}

void sub_1A4679ED0(uint64_t a1)
{
  sub_1A46796DC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1A467A134(void **a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1A467BA18(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1A467A188()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

id sub_1A467A1D4(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
  v4 = a1;
  v5 = v3;
  if (v3 == a1)
  {

    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  if (!a1 || !v3)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v10 = [v4 isContentEqualTo:v5];
  if (!v10)
  {
    v10 = [v5 isContentEqualTo:v4];
  }

  swift_unknownObjectRelease();
  if (v10 != 2)
  {
    return 0;
  }

LABEL_3:
  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews);
  if (v6 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    [v1 bounds];
    return [objc_allocWithZone(off_1E7721860) initWithRect:v1 inCoordinateSpace:{v11, v12, v13, v14}];
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
    v9 = [v8 contentRegionOfInterest];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A467A3C4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A467A408(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model + 8);
    v8 = ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(v5) & 1) != 0 && *(*(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_reasonsForHidingContent) + 16) == 0;
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v8, ObjectType, v7);
  }
}

void (*sub_1A467A4FC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A467A590;
}

void sub_1A467A590(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = v1[3];
    v7 = *(v6 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model + 8);
    v8 = ((*((*MEMORY[0x1E69E7D40] & *v6) + 0x98))() & 1) != 0 && *(*(v1[3] + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_reasonsForHidingContent) + 16) == 0;
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v8, ObjectType, v7);
  }

  free(v1);
}

void sub_1A467A680(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A467A860(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model + 8);
  ObjectType = swift_getObjectType();
  v10[4] = (*(v1 + 40))(ObjectType, v1);
  v3 = 0;
  v10[5] = (*(v1 + 48))(ObjectType, v1);
  v4 = MEMORY[0x1E69E7CC0];
  v11[0] = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != 2)
  {
    if (v10[v3++ + 4])
    {
      v7 = swift_unknownObjectRetain();
      MEMORY[0x1A5907D70](v7);
      if (*((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v5 = v11[0];
    }
  }

  sub_1A3C568EC(0, &qword_1EB126BC0, sub_1A3D435C4);
  swift_arrayDestroy();
  *(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssets) = v5;

  v8 = *(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews);
  v10[6] = v4;
  v10[7] = v8;
  if (*(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssets) >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A467ADFC(uint64_t a1)
{
  sub_1A3C568EC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;

  sub_1A3EA52F4(0, 0, v3, &unk_1A5354B50, v8);

  return result;
}

uint64_t sub_1A467AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A467B020, v6, v5);
}

uint64_t sub_1A467B020()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(swift_task_alloc() + 16) = Strong;
    *(swift_task_alloc() + 16) = Strong;
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1A467B130(uint64_t a1, __n128 a2)
{
  v6 = *(v3 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = sub_1A524E2B4();
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 >= 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  v21 = MEMORY[0x1A59097F0](0, a1, a2);
  v8 = v21;
  aBlock = v21;
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v22[2] = &aBlock;
  if ((sub_1A40C23C4(sub_1A467BF1C, v9, v22, v6) & 1) == 0)
  {

    v12 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v8;
    v27 = sub_1A3EF7388;
    v28 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1A3C2E0D0;
    v26 = &block_descriptor_240;
    v14 = _Block_copy(&aBlock);
    v15 = v8;

    v19 = swift_allocObject();
    *(v19 + 16) = sub_1A467BF14;
    *(v19 + 24) = v2;
    v27 = sub_1A3C7146C;
    v28 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v17 = &block_descriptor_40_2;
    goto LABEL_13;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1A59097F0](0, v6);
    goto LABEL_11;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v6 + 32);
LABEL_11:
    v11 = v10;

    [v11 setAlpha_];
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v27 = sub_1A467BF38;
    v28 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1A3C2E0D0;
    v26 = &block_descriptor_46_8;
    v14 = _Block_copy(&aBlock);
    v15 = v11;

    v16 = swift_allocObject();
    *(v16 + 16) = sub_1A467BF14;
    *(v16 + 24) = v2;
    v27 = sub_1A3DDBE10;
    v28 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v17 = &block_descriptor_52_1;
LABEL_13:
    v25 = sub_1A3E01E70;
    v26 = v17;
    v20 = _Block_copy(&aBlock);

    [v12 animateWithDuration:v14 animations:v20 completion:v4];

    _Block_release(v20);
    _Block_release(v14);

    return;
  }

  __break(1u);
}

void sub_1A467B680(unint64_t a1, unint64_t a2, __n128 a3)
{
  if (a1 >> 62)
  {
    v5 = sub_1A524E2B4();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](i, a1, a3);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      v11 = v7;
      v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
      v10[2] = &v11;
      if ((sub_1A40C23C4(sub_1A467BFC8, v9, v10, a2) & 1) == 0)
      {
        [v8 removeFromSuperview];
      }
    }
  }
}

void sub_1A467B7B0(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PhotosPreviewHeaderContentView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews];
  if (v2 >> 62)
  {
    v3 = sub_1A524E2B4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

id sub_1A467B968(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosPreviewHeaderContentView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A467BA18(void **a1, unint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive] = 0;
  v7 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_settings;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_reasonsForHidingContent] = MEMORY[0x1E69E7CD0];
  v9 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssets] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews] = v9;
  v10 = [v8 solariumDetailsViewPreviewHeaderKind];
  if (v10 == 1)
  {
    type metadata accessor for PhotosPreviewHeaderSlideshowContentViewModel(0);
    v22 = v5;
    v23 = v6;
    v11 = *&v3[v7];
    swift_unknownObjectRetain();
    [v11 solariumDetailsViewPreviewHeaderAssetDisplayDuration];
    PhotosPreviewHeaderSlideshowContentViewModel.__allocating_init(collection:initialAsset:assetChangeTimeInterval:)(&v22, a2, v12);
  }

  if (v10)
  {
    type metadata accessor for PXSolariumDetailsViewPreviewHeaderKind(0);
    result = sub_1A524EB44();
    __break(1u);
  }

  else
  {
    type metadata accessor for PhotosPreviewableCollectionKeyAssetModel(0);
    v22 = v5;
    v23 = v6;
    swift_unknownObjectRetain();
    v13 = PhotosPreviewableCollectionKeyAssetModel.__allocating_init(collection:initialKeyAsset:)(&v22, a2);
    v14 = sub_1A467BDC8(&unk_1EB13FC20, type metadata accessor for PhotosPreviewableCollectionKeyAssetModel, &unk_1A532CC88);
    v15 = &v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model];
    *v15 = v13;
    v15[1] = v14;
    v21.receiver = v3;
    v21.super_class = type metadata accessor for PhotosPreviewHeaderContentView();
    v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    MEMORY[0x1EEE9AC00](v16);
    MEMORY[0x1EEE9AC00](v17);
    v19 = v18;
    sub_1A52415B4();

    return v19;
  }

  return result;
}

void sub_1A467BCBC()
{
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive) = 0;
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_settings;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  *(v0 + v1) = [swift_getObjCClassFromMetadata() sharedInstance];
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_reasonsForHidingContent) = MEMORY[0x1E69E7CD0];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssets) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews) = v2;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A467BDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A467BE18(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A467AF88(a1, v5, v6, v4);
}

double (*sub_1A467BEB8())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A467BE10;
}

void sub_1A467C0A0()
{
  if (qword_1EB176110 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

uint64_t sub_1A467D77C()
{
  sub_1A3C52C70(0, &qword_1EB13FCA0, off_1E771E550);
  sub_1A486D7B0(v0, &v6);
  if (v7)
  {
    sub_1A3C34460(&v6, v8);
    v1 = MEMORY[0x1E69E7CC0];
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = sub_1A408EE40(1, 0, v2, v3);
    if (*(v4 + 2))
    {
      if (*(v4 + 8) < 3uLL)
      {
        LOBYTE(v6) = v4[80];
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      *&v6 = 0;
      *(&v6 + 1) = 0xE000000000000000;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1A3C2CAB8(&v6, &qword_1EB13FCA8, &qword_1EB13FCB0, &protocol descriptor for LemonadeMutableCurationModel, sub_1A3E792C4);
    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1A467DAC0()
{
  sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 canShowInternalUI];

  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = xmmword_1A5354BC0;
    *(v3 + 40) = 1;
    sub_1A4680220(0);
    v5 = objc_allocWithZone(v4);
    sub_1A52466B4();
  }

  sub_1A4680220(0);
  sub_1A5246614();
}

void sub_1A467E79C(uint64_t a2@<X8>)
{
  v3 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4680304(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 1;
  _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2(0);
  sub_1A5245FB4();
}

void __swiftcall PXStoryViewModel.makeDefaultActionsMenu()(UIMenu *__return_ptr retstr)
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1A467FF8C;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3D7692C;
  v4[3] = &block_descriptor_241;
  v3 = _Block_copy(v4);

  [v1 menuWithDeferredConfiguration_];
  _Block_release(v3);
}

double sub_1A467F2EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A467C2A4();
  }

  return result;
}

void sub_1A467F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong actionPerformer];

    if (v13)
    {
      if (a6)
      {
        a5 = 0;
      }

      sub_1A46807E4(a1, v22, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37420);
      v14 = v23;
      if (v23)
      {
        v15 = __swift_project_boxed_opaque_existential_1(v22, v23);
        v16 = *(v14 - 8);
        v17 = MEMORY[0x1EEE9AC00](v15);
        v19 = &v22[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v19, v17);
        v20 = sub_1A524EA94();
        (*(v16 + 8))(v19, v14);
        __swift_destroy_boxed_opaque_existential_0(v22);
      }

      else
      {
        v20 = 0;
      }

      [v13 performActionForChromeActionMenuItem:a4 withValue:a5 sender:v20 presentationSource:a2];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

id sub_1A467FA00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14AssociatedDataCMa_9();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void PXStoryMutableViewModel.actionContext.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  sub_1A467C0A0();
}

void PXStoryMutableViewModel.actionContext.setter(char *a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  sub_1A467C0A0();
}

void PXStoryMutableViewModel.actionContext.modify(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = v2;
  PXStoryMutableViewModel.actionContext.getter();
}

void sub_1A467FC38(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v2 = &v3;
  }

  else
  {
    v2 = (a1 + 16);
  }

  PXStoryMutableViewModel.actionContext.setter(v2);
}

uint64_t StoryViewActionContext.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A467FD08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_1A4680858(qword_1EB1CCCD0, &unk_1A5354D2C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_1A468089C(v2, boxed_opaque_existential_1);
}

void sub_1A467FE38()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1CCA98);
  __swift_project_value_buffer(v0, qword_1EB1CCA98);
  sub_1A5246EF4();
}

void sub_1A467FE9C(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  v7 = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v7, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A467FF94(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1A467FF94(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A46802D0(0);
          sub_1A4680600(&qword_1EB13FC98, sub_1A46802D0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A4680220(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A4680134()
{
  result = qword_1EB13FC50;
  if (!qword_1EB13FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FC50);
  }

  return result;
}

unint64_t sub_1A46801BC()
{
  result = qword_1EB13FC60;
  if (!qword_1EB13FC60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13FC60);
  }

  return result;
}

void sub_1A4680220(uint64_t a1)
{
  if (!qword_1EB13FC70)
  {
    sub_1A468027C();
    sub_1A52466D4();
  }
}

unint64_t sub_1A468027C()
{
  result = qword_1EB13FC78;
  if (!qword_1EB13FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FC78);
  }

  return result;
}

void sub_1A4680304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A468036C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_1A3C52C70(0, &qword_1EB126C10, 0x1E69DCC78);
  v6[3] = _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2(0);
  v6[4] = sub_1A4680858(&qword_1EB1CCBB0, &unk_1A5354D74);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  v5 = v3;
  sub_1A467E79C(boxed_opaque_existential_1);
}

uint64_t _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2(uint64_t a1)
{
  result = qword_1EB1CCBB8;
  if (!qword_1EB1CCBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46804C8(void *a1)
{
  v3 = *(v1 + 16);
  v6[3] = sub_1A3C52C70(0, &qword_1EB126C10, 0x1E69DCC78);
  v6[0] = a1;
  v4 = a1;
  v3(v6, 0);
  return sub_1A3C2CAB8(v6, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37420);
}

uint64_t sub_1A4680574(uint64_t a1)
{
  sub_1A4680304(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4680600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4680670(uint64_t a1)
{
  sub_1A3E792C4(319, &qword_1EB13FB90, &qword_1EB13FCC0, MEMORY[0x1E6981170]);
  if (v1 <= 0x3F)
  {
    sub_1A3C37420(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A3C37420(319, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A4680304(319, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A46807E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A4680858(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A468089C(uint64_t a1, uint64_t a2)
{
  v4 = _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A4680978(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PXPhotoKitSocialGroupActionManager_socialGroups] = a1;
  *&v5[OBJC_IVAR___PXPhotoKitSocialGroupActionManager_photoLibrary] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1A4680B60(char *a1, char *a2)
{
  v3 = v2;
  v4 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v5 = sub_1A524CA14();
  v6 = [v4 transientAssetCollectionWithAssets:v5 title:0 identifier:0 photoLibrary:*(v3 + OBJC_IVAR___PXPhotoKitSocialGroupActionManager_photoLibrary)];

  v7 = v6;
  sub_1A524D5F4();
}

uint64_t sub_1A4681620(char *a1, char *a2, uint64_t a3)
{
  if ((a1 != 0xD000000000000029 || 0x80000001A53E39B0 != a2) && (sub_1A524EAB4() & 1) == 0)
  {

    sub_1A4680B60(a1, a2);
  }

  if (!*(a3 + 16))
  {
    goto LABEL_34;
  }

  v6 = sub_1A3FBDC38(*off_1E77219C8);
  if ((v7 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1A3C2F0BC(*(a3 + 56) + 32 * v6, v27);
  sub_1A3C5D0E8(0, &qword_1EB13F988, &protocolRef_PXFastEnumeration);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  if ([v25[0] firstObject])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    *v25 = 0u;
    v26 = 0u;
  }

  v27[0] = *v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    swift_unknownObjectRelease();
    sub_1A3C35B00(v27);
    goto LABEL_30;
  }

  sub_1A3C52C70(0, &qword_1EB126C28, 0x1E6978AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  if (!*(a3 + 16) || (v8 = sub_1A3FBDC38(*off_1E77219D0), (v9 & 1) == 0))
  {
LABEL_18:
    sub_1A4680B60(a1, a2);
  }

  sub_1A3C2F0BC(*(a3 + 56) + 32 * v8, v27);
  if (!swift_dynamicCast())
  {
LABEL_34:
    while (1)
    {
LABEL_30:
      sub_1A524E6E4();
      __break(1u);
    }
  }

  v10 = [v25[0] localIdentifier];
  v11 = sub_1A524C674();
  v13 = v12;

  v14 = [v24 localIdentifier];
  v15 = sub_1A524C674();
  v17 = v16;

  if (v15 == v11 && v17 == v13)
  {

    goto LABEL_23;
  }

  v18 = sub_1A524EAB4();

  if ((v18 & 1) == 0)
  {

    goto LABEL_18;
  }

LABEL_23:
  v19 = sub_1A524D224();
  v20 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = v20;
    v22 = swift_slowAlloc();
    *&v27[0] = swift_slowAlloc();
    *v22 = 136315138;
    sub_1A3C2EF94(v11, v13, v27);
  }

  swift_unknownObjectRelease();

  return 0;
}

void sub_1A46821A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A524CA14();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A4682640;
  aBlock[3] = &block_descriptor_242;
  v7 = _Block_copy(aBlock);

  v8 = [v3 actionItemsForActionTypes:v6 handler:v7];
  _Block_release(v7);

  sub_1A3C52C70(0, &qword_1EB13FD10, &off_1E7721410);
  v9 = sub_1A524CA34();

  if (!(v9 >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C5D0E8(0, &qword_1EB120AE0, &protocolRef_PXMenuElement);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4682640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1A524C674();
  v5 = v4;

  v2(v3, v5);

  return result;
}

char *sub_1A46826AC(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB126C28, 0x1E6978AD8);
        swift_dynamicCast();
        v14 = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1A3D3E490((v7 > 1), v8 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v8 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v8 + 32));
      }
    }

    else
    {
      v9 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB126C28, 0x1E6978AD8);
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v14 = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A3D3E490((v11 > 1), v12 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v12 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v12 + 32));
        ++v9;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_1A46829EC(uint64_t a1)
{
  if (!qword_1EB13FCF0)
  {
    sub_1A4682A44();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FCF0);
    }
  }
}

unint64_t sub_1A4682A44()
{
  result = qword_1EB13FCF8;
  if (!qword_1EB13FCF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13FCF8);
  }

  return result;
}

uint64_t sub_1A4682AA8(uint64_t a1)
{
  sub_1A46829EC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A4682B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A44DADDC(0);
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A4682FB0(v4, &v11, sub_1A44D9E98);
      v5 = v11;
      result = sub_1A3FBDC38(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A4682C14(uint64_t a1, uint64_t a2)
{
  v3 = 0x80000001A53E38C0;
  v4 = a1 == 0xD000000000000026 && 0x80000001A53E38C0 == a2;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupCustomizeAlbumActionPerformer(0, v3);
  }

  v7 = 0x80000001A53E38F0;
  if (a1 == 0xD000000000000026 && 0x80000001A53E38F0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupAddPeopleActionPerformer(0, v7);
  }

  if (a1 == 0xD000000000000028 && 0x80000001A53E3920 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupCreateGroupActionPerformer();
  }

  v8 = 0x80000001A53E3950;
  if (a1 == 0xD000000000000028 && 0x80000001A53E3950 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupModifyGroupActionPerformer(0, v8);
  }

  v9 = 0x80000001A53E3980;
  if (a1 == 0xD000000000000028 && 0x80000001A53E3980 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupRejectGroupActionPerformer(0, v9);
  }

  if (a1 == 0xD000000000000029 && 0x80000001A53E39B0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupReorderGroupActionPerformer();
  }

  if (a1 == 0xD00000000000002CLL && 0x80000001A53E39E0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupCopyInternalURLActionPerformer();
  }

  v10 = 0x80000001A53E3A10;
  if (a1 == 0xD000000000000022 && 0x80000001A53E3A10 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for PeoplePromoteAsMagicInternalActionPerformer(0, v10);
  }

  sub_1A524E404();

  MEMORY[0x1A5907B60](a1, a2);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4682F58(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1A524C634();
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_1A4682FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A468301C(uint64_t a1)
{
  sub_1A3C4C460(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  v4 = [*(a1 + 16) px_virtualCollections];
  v5 = [v4 featuredPhotosCollection];

  v6 = [v5 localizedTitle];
  if (v6)
  {
    v7 = v6;
    sub_1A524C674();
  }

  sub_1A5245FB4();
}

uint64_t sub_1A46831DC()
{
  v0 = sub_1A5243F74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241F84();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A5241FC4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5244084();
  __swift_allocate_value_buffer(v6, qword_1EB193E18);
  __swift_project_value_buffer(v6, qword_1EB193E18);
  sub_1A5241F74();
  sub_1A5241FA4();
  sub_1A5247B94();
  sub_1A5241F54();
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2930], v0);
  return sub_1A5244034();
}

uint64_t sub_1A46834F0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C460(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3DC1AF8();
    v10 = v9;
    v11 = sub_1A3C5A374();

    return sub_1A42E7F0C(v8, v10 & 1, v11, a1);
  }

  else
  {
    v13 = sub_1A3C47918();
    v15 = v14;
    v16 = sub_1A3C47918();
    v18 = v17;
    v19 = sub_1A3C52D68();
    v21 = v20;
    v25 = a1;
    v23 = v22;
    v24 = sub_1A3C4ED50(v19);
    v26 = 1;
    *v7 = sub_1A46836E8;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v13;
    *(v7 + 6) = v15;
    *(v7 + 7) = v16;
    *(v7 + 8) = v18;
    *(v7 + 9) = v19;
    *(v7 + 10) = v21;
    v7[88] = v23;
    v7[89] = v24;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 0, v4, v25);
  }
}

uint64_t sub_1A46836E8(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F8] || v7 == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

void sub_1A4683814(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v8 = sub_1A524C634();
  v9 = [v6 transientCollectionListWithCollections:v7 title:v8 identifier:0 photoLibrary:a1];

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v7) = [v10 ignoreSharedLibraryFilterForFeaturedPhotos];

  if (v7)
  {
    v11 = [objc_allocWithZone(PXLibraryFilterState) init];
    [v11 setViewMode_];
  }

  else
  {
    v11 = *(a2 + 24);
  }

  sub_1A46848EC(0, &qword_1EB129FC8, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItemListManager);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 2;
  v12 = v9;
  v13 = v11;
  sub_1A3C6C180(&v20);
  v28 = v20;
  v29 = v21;
  sub_1A3C6C18C(&v26);
  v24 = v26;
  v25 = v27;
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C30368();
  v16 = sub_1A3C5A374();
  v17 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v28, 0, &unk_1F171D660, a3, 0, &v24, v14 & 1, &v30, v23, v15, v16 & 1, v17 & 1, 1, 0);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = a1;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v12, v11, v31, v23, &v20, sub_1A4688494, v18);
}

uint64_t sub_1A4683AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  sub_1A4684660(0);
  v72 = v3;
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4684954(0);
  v73 = v6;
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46880E4(0, &qword_1EB13FD18, MEMORY[0x1E697F948]);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v67 - v10;
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v67 - v14;
  v16 = sub_1A5243B94();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A52433D4();
    if (v94)
    {
      v86 = a1;
      v68 = v94;

      sub_1A52433B4();
      v69 = v78;
      sub_1A4244368(0);
      v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A52F8E10;
      v67 = v21 + v20;
      (*(v17 + 104))(v19, *MEMORY[0x1E69C2808], v16);
      v22 = swift_allocObject();
      v23 = v68;
      *(v22 + 16) = v68;
      v24 = *(v17 + 32);
      v24(v15, v19, v16);
      v25 = v67;
      v24(v67, v15, v16);
      v26 = (v25 + *(v12 + 48));
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1A4684E80;
      *(v27 + 24) = v22;
      *v26 = sub_1A4244548;
      v26[1] = v27;
      v28 = v23;
      v29 = sub_1A42762E8(v21);
      swift_setDeallocating();
      sub_1A44F2020(v25);
      swift_deallocClassInstance();
      sub_1A46847BC(0);
      v31 = v30;
      v32 = sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC, MEMORY[0x1E69C2458]);
      v33 = MEMORY[0x1E6981E70];
      v34 = MEMORY[0x1E6981E60];
      v35 = sub_1A41F7694();
      v36 = sub_1A3C5A374();
      v37 = sub_1A43C9BB4();
      v39 = v38;
      v40 = swift_allocObject();
      *(v40 + 16) = v37;
      *(v40 + 24) = v39;
      LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v86, 0, 0, 0, 0, v69, v36 & 1, sub_1A4276878, &v87, v35, v40, v29, v33, v31, v34, v32);
      v75[4] = v91;
      v75[5] = v92;
      v76 = v93;
      v75[0] = v87;
      v75[1] = v88;
      v75[2] = v89;
      v75[3] = v90;
      v98 = v91;
      v99 = v92;
      v100 = v93;
      v94 = v87;
      v95 = v88;
      v96 = v89;
      v97 = v90;
      v77 = 0;
      sub_1A468842C(v75, &v79, sub_1A4684A64);
      sub_1A4684A64(0);
      sub_1A4688340(&qword_1EB125740, sub_1A4684A64, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
      sub_1A5249744();

      sub_1A46878AC(v75, sub_1A4684A64);
      v98 = v83;
      v99 = v84;
      v100 = v85;
      v94 = v79;
      v95 = v80;
      v96 = v81;
      v97 = v82;
    }

    else
    {
      *&v75[0] = a1;

      sub_1A52433B4();
      v44 = v86;
      sub_1A46847BC(0);
      v46 = v45;
      v47 = sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC, MEMORY[0x1E69C2458]);
      v48 = MEMORY[0x1E6981E70];
      v49 = MEMORY[0x1E6981E60];
      v50 = sub_1A41F7694();
      v51 = sub_1A3C5A374();
      v52 = sub_1A43C9BB4();
      v54 = v53;
      v55 = swift_allocObject();
      *(v55 + 16) = v52;
      *(v55 + 24) = v54;
      v56 = sub_1A43C9BD0();
      LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v75, 0, 0, 0, 0, v44, v51 & 1, sub_1A3F8B548, &v87, v50, v55, v56, v48, v46, v49, v47);
      v83 = v91;
      v84 = v92;
      LOBYTE(v85) = v93;
      v79 = v87;
      v80 = v88;
      v81 = v89;
      v82 = v90;
      LOBYTE(v78) = 1;
      HIBYTE(v85) = 1;
      sub_1A4684A64(0);
      sub_1A4688340(&qword_1EB125740, sub_1A4684A64, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
      sub_1A5249744();
    }

    v57 = v99;
    v58 = v71;
    *(v71 + 4) = v98;
    *(v58 + 5) = v57;
    *(v58 + 48) = v100;
    v59 = v95;
    *v58 = v94;
    *(v58 + 1) = v59;
    v60 = v97;
    *(v58 + 2) = v96;
    *(v58 + 3) = v60;
    swift_storeEnumTagMultiPayload();
    sub_1A4684A08(0);
    sub_1A4684DD8();
    v61 = sub_1A4688340(&unk_1EB128FC0, sub_1A4684660, MEMORY[0x1E69C29F8]);
    *&v79 = v72;
    *(&v79 + 1) = v61;
    swift_getOpaqueTypeConformance2();
    return sub_1A5249744();
  }

  else
  {
    *&v94 = a1;
    sub_1A46847BC(0);
    v67 = v41;
    sub_1A3C52C70(0, &qword_1EB126D00, 0x1E69D3810);
    sub_1A5243EC4();
    sub_1A4688340(&qword_1EB1290E0, sub_1A46847BC, MEMORY[0x1E69C2468]);
    sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC, MEMORY[0x1E69C2458]);
    sub_1A4688340(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A405ECC8();
    swift_retain_n();
    sub_1A5244264();
    sub_1A52433B4();
    v42 = v94;
    if (v94)
    {
      v43 = sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    }

    else
    {
      v94 = 0uLL;
      v43 = 0;
      *&v95 = 0;
    }

    *&v94 = v42;
    *(&v95 + 1) = v43;
    v63 = sub_1A4688340(&unk_1EB128FC0, sub_1A4684660, MEMORY[0x1E69C29F8]);
    v64 = v72;
    sub_1A524A534();
    v68[1](v5, v64);
    sub_1A3C2CB18(&v94, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A46886C8);
    v65 = v69;
    v66 = v73;
    (*(v69 + 16))(v71, v8, v73);
    swift_storeEnumTagMultiPayload();
    sub_1A4684A08(0);
    sub_1A4684DD8();
    *&v94 = v64;
    *(&v94 + 1) = v63;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v65 + 8))(v8, v66);
  }
}

void sub_1A4684660(uint64_t a1)
{
  if (!qword_1EB128FB8)
  {
    sub_1A46847BC(255);
    sub_1A3C52C70(255, &qword_1EB126D00, 0x1E69D3810);
    sub_1A5243EC4();
    sub_1A4688340(&qword_1EB1290E0, sub_1A46847BC, MEMORY[0x1E69C2468]);
    sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC, MEMORY[0x1E69C2458]);
    sub_1A4688340(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A405ECC8();
    v1 = sub_1A5244254();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128FB8);
    }
  }
}

void sub_1A46847BC(uint64_t a1)
{
  if (!qword_1EB1290D8)
  {
    sub_1A46848EC(255, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);
    sub_1A4688154(&qword_1EB12A860, &qword_1EB12A858, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for <> PhotoKitItem<A>);
    sub_1A4688154(&qword_1EB12A868, &qword_1EB12A858, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    sub_1A4688154(&unk_1EB12A870, &qword_1EB12A858, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    v1 = sub_1A52433E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1290D8);
    }
  }
}

void sub_1A46848EC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4684954(uint64_t a1)
{
  if (!qword_1EB127678)
  {
    sub_1A4684660(255);
    sub_1A4688340(&unk_1EB128FC0, sub_1A4684660, MEMORY[0x1E69C29F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127678);
    }
  }
}

void sub_1A4684A08(uint64_t a1)
{
  if (!qword_1EB1228F0)
  {
    sub_1A4684A64(255);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1228F0);
    }
  }
}

void sub_1A4684A64(uint64_t a1)
{
  if (!qword_1EB125738)
  {
    sub_1A46847BC(255);
    v3 = v2;
    v4 = sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC, MEMORY[0x1E69C2458]);
    v7[0] = MEMORY[0x1E6981E70];
    v7[1] = v3;
    v7[2] = MEMORY[0x1E6981E60];
    v7[3] = v4;
    v5 = type metadata accessor for LemonadeMaterialTitleCell(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125738);
    }
  }
}

uint64_t sub_1A4684B14(void *a1)
{
  v2 = type metadata accessor for LemonadeSLHighlightView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  v6 = *(v5 + 20);
  *(v4 + v6) = swift_getKeyPath();
  sub_1A3C4C460(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = v4 + *(v2 + 24);
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v4 + *(v2 + 28);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  sub_1A46883D4();
  v9 = a1;
  return sub_1A524B8E4();
}

uint64_t sub_1A4684C40()
{
  v0 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3C4C460(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v6 - v2;
  sub_1A52433B4();
  memset(v6, 0, sizeof(v6));
  v7 = 1;
  v4 = sub_1A52429A4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1A5243824();
  return sub_1A5243ED4();
}

unint64_t sub_1A4684DD8()
{
  result = qword_1EB1228F8;
  if (!qword_1EB1228F8)
  {
    sub_1A4684A08(255);
    sub_1A4688340(&qword_1EB125740, sub_1A4684A64, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228F8);
  }

  return result;
}

void sub_1A4684E88(uint64_t a1)
{
  v2 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A3C38BD4(0xD000000000000020);
  sub_1A3C38BD4(0xD000000000000022);
  sub_1A3C38BD4(0xD00000000000002FLL);
  sub_1A3C38BD4(0xD000000000000020);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468510C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3C4C460(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v12 - v7;
  sub_1A4685350(a1, a2, (v12 - v7));
  v9 = type metadata accessor for LemonadeNavigationDestination(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) != 1)
  {
    return sub_1A3CA2830(v8, a3, type metadata accessor for LemonadeNavigationDestination);
  }

  sub_1A3C2CB18(v8, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720], sub_1A3C4C460);
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000032, 0x80000001A53E3E20);
  v12[1] = a1;
  sub_1A46848EC(0, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);

  v11 = sub_1A524C714();
  MEMORY[0x1A5907B60](v11);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}