uint64_t sub_264184()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_2641C4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v12 = &v39 - v11;
  v13 = type metadata accessor for PlaybackIntentDescriptor(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(a5, 1, 1, v13);
  if (!a1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_12E1C(&v43, &qword_DFAF18, &qword_B06860);
LABEL_16:
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_17;
  }

  v42 = a1;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAF10, &qword_B06858);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_9;
  }

  if (!*(&v44 + 1))
  {
LABEL_9:
    sub_12E1C(&v43, &qword_DFAF18, &qword_B06860);
    goto LABEL_12;
  }

  v40 = a3;
  v41 = a4;
  v16 = sub_70DF8(&v43, v46);
  v17 = (*(&stru_B8.offset + (swift_isaMask & *v5)))(v16);
  if (v17)
  {
    v18 = v17;
    v19 = JSIdentifierSet.ContentIdentifierKind.library.unsafeMutableAddressor();
    if ((*(&stru_108.flags + (swift_isaMask & *v18)))(*v19))
    {
      v20 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v21 = [objc_opt_self() deviceMediaLibrary];
      (*(v20 + 8))();

      sub_267C14(v12, a5);
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v46);
      goto LABEL_18;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v46);
  a3 = v40;
  a4 = v41;
LABEL_12:
  v42 = v15;
  v22 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAF20, &qword_B06868);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(&v44 + 1))
  {
    sub_70DF8(&v43, v46);
    v23 = v47;
    v24 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v24 + 8))(a3, a4, v23, v24);
    sub_267C14(v12, a5);
    goto LABEL_15;
  }

LABEL_17:
  sub_12E1C(&v43, &qword_DFAF28, &unk_B06870);
LABEL_18:
  if ((*(v14 + 48))(a5, 1, v13))
  {
    v25 = 1;
  }

  else
  {
    v25 = a2 == 0;
  }

  if (!v25)
  {
    v26 = a2;
    v27 = UIViewController.playActivityInformation.getter();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter(v27, v28, v30, v32, v34);
    v36 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v36 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {

      v37 = sub_AB9260();
    }

    else
    {
      v37 = 0;
    }

    [v35 setPlayActivityFeatureName:v37];

    if (v33 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_AB3250().super.isa;
    }

    [v35 setPlayActivityRecommendationData:isa];

    sub_466A4(v31, v33);
  }
}

uint64_t sub_264648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAF10, &qword_B06858);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v19, v23);
    v10 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
    MPModelObject.bestIdentifier(for:)(*v10, 1u);
    if (v11)
    {

      v12 = v24;
      v13 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v13 + 8))(a3, v12, v13);
      return __swift_destroy_boxed_opaque_existential_0(v23);
    }

    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_12E1C(&v19, &qword_DFAF18, &qword_B06860);
  }

  v22 = v9;
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAF20, &qword_B06868);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v19, v23);
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v16 + 8))(a1, a2, v15, v16);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_12E1C(&v19, &qword_DFAF28, &unk_B06870);
  v18 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
}

void sub_2648A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v8 = sub_AB9260();
  [v22 setLabel:v8];

  v9 = a1;
  if (!a1)
  {
    v9 = [objc_opt_self() deviceMediaLibrary];
  }

  v10 = a1;
  [v22 setMediaLibrary:v9];

  v11 = [objc_opt_self() kindWithVariants:3];
  [v22 setItemKind:v11];

  sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v12 = static MPModelAlbum.defaultMusicKind.getter();
  [v22 setSectionKind:v12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF82B0;
  *(v13 + 32) = v3;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v14 = v3;
  isa = sub_AB9740().super.isa;

  [v22 setScopedContainers:isa];

  static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter();
  sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);
  v16 = sub_AB9740().super.isa;

  [v22 setItemSortDescriptors:v16];

  v17 = [v22 playbackIntentWithStartItemIdentifiers:0];
  if (v17)
  {
    *v7 = v17;
    swift_storeEnumTagMultiPayload();
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v25, 3, 0, 0, 1, 0, 1, a2, 0, v23);

    v18 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
    v20 = v22;
  }
}

void sub_264C8C(uint64_t a1@<X8>)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v4 = (v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [objc_allocWithZone(MPModelStaticRequest) init];
  sub_13C80(0, &unk_E04560, MPModelMediaClip_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setItemKind:v9];

  [v8 copy];
  sub_ABAB50();
  sub_13C80(0, &qword_DFAF30, MPModelStaticRequest_ptr);
  swift_dynamicCast();
  v10 = *&v18[0];
  v11 = [objc_allocWithZone(MPModelStaticResponse) initWithRequest:*&v18[0]];
  swift_unknownObjectRelease();

  if (v11)
  {
    v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v13 = sub_AB9260();
    [v12 appendSection:v13];

    [v12 appendItem:v1];
    [v11 setResults:v12];
    v14 = sub_AB9260();
    [v8 setLabel:v14];

    [v8 setStaticResponse:v11];
    v15 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
    [v15 setRequest:v8];

    v16 = [objc_allocWithZone(MPCPlaybackIntent) init];
    [v16 setTracklistToken:v15];
    [v16 setTracklistSource:3];
    *v4 = v16;
    swift_storeEnumTagMultiPayload();
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v20, 3, 0, 0, 1, 0, 1, a1, 0, v18);

    v17 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265034@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = (v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v7 = MPModelObject.bestIdentifier(for:)(*v6, 1u);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    [v11 setInGroupSession:0];
    v12 = v11;
    v13 = sub_AB9260();
    [v12 setLabel:v13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_AF4EC0;
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    isa = sub_AB9740().super.isa;

    [v12 setStoreIDs:isa];

    v16 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
    [v16 setRequest:v12];

    v17 = [objc_allocWithZone(MPCPlaybackIntent) init];
    [v17 setTracklistToken:v16];
    [v17 setTracklistSource:3];
    *v5 = v17;
    swift_storeEnumTagMultiPayload();
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v24, 3, 0, 0, 1, 0, 1, a3, 0, v22);

    v18 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
  }

  else
  {
    v20 = type metadata accessor for PlaybackIntentDescriptor(0);
    v21 = *(*(v20 - 8) + 56);

    return v21(a3, 1, 1, v20);
  }
}

void sub_26536C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v25 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v9 = v8;
  v10 = sub_AB9260();
  [v9 setLabel:v10];

  v11 = a1;
  if (!a1)
  {
    v11 = [objc_opt_self() deviceMediaLibrary];
  }

  v12 = a1;
  [v9 setMediaLibrary:v11];

  v13 = objc_opt_self();
  v14 = [v13 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v25 options:0];
  [v9 setSectionKind:v14];

  [v9 setItemKind:v25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82B0;
  *(v15 + 32) = v3;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v16 = v3;
  isa = sub_AB9740().super.isa;

  [v9 setScopedContainers:isa];

  v18 = v16;
  v19 = sub_226C8C(v18);

  if (v19)
  {

    sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);
    v19 = sub_AB9740().super.isa;
  }

  [v9 setItemSortDescriptors:v19];

  v20 = [v9 playbackIntentWithStartItemIdentifiers:0];
  if (v20)
  {
    *v7 = v20;
    swift_storeEnumTagMultiPayload();
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v28, 3, 0, 0, 1, 0, 1, a2, 0, v26);

    v21 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  else
  {
    v22 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);

    v23 = v25;
  }
}

uint64_t sub_26579C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v5, 1u);
  if (v6)
  {

    *v4 = [objc_opt_self() radioPlaybackIntentWithStation:v1];
    swift_storeEnumTagMultiPayload();
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v13, 3, 0, 0, 1, 0, 1, a1, 0, v11);
    v7 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for PlaybackIntentDescriptor(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t sub_265980@<X0>(uint64_t (*a1)(__n128)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6 = __chkstk_darwin();
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1(v6);
  v41 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    v34 = 0;
    v10 = 0;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = &v41;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_267BE8;
  *(v11 + 24) = v10;
  v37 = sub_581C8;
  v38 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v36 = sub_48D644;
  *(&v36 + 1) = &block_descriptor_36;
  v12 = _Block_copy(&aBlock);
  v13 = v38;
  v14 = v9;
  v15 = v3;

  [v14 enumerateItemIdentifiersUsingBlock:v12];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v34 = sub_267BE8;
  if (!*(v41 + 2))
  {
LABEL_6:
    v16 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v17 = MPModelObject.bestIdentifier(for:)(*v16, 1u);
    v14 = v41;
    if (v18)
    {
      v11 = v17;
      v13 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v14;
      v33 = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_8:
        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_6B0F0((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v22 = &v14[16 * v21];
        *(v22 + 4) = v11;
        *(v22 + 5) = v13;
        v41 = v14;
        a2 = v33;
        goto LABEL_12;
      }

LABEL_16:
      v14 = sub_6B0F0(0, *(v14 + 2) + 1, 1, v14);
      v41 = v14;
      goto LABEL_8;
    }

    if (!*(v41 + 2))
    {

      v30 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v23 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
  [v23 setInGroupSession:0];
  v24 = v23;
  v25 = sub_AB9260();
  [v24 setLabel:v25];

  isa = sub_AB9740().super.isa;

  [v24 setStoreIDs:isa];

  v27 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v27 setRequest:v24];

  v28 = [v3 identifiers];
  [v27 setStartItemIdentifiers:v28];

  v29 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v29 setTracklistToken:v27];
  [v29 setTracklistSource:3];
  [v29 setPrefersEnqueuingUsingAirPlay:1];
  *v8 = v29;
  swift_storeEnumTagMultiPayload();
  v37 = 0;
  aBlock = 0u;
  v36 = 0u;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, &aBlock, 3, 0, 0, 1, 0, 1, a2, 0, v39);

  v30 = 0;
LABEL_13:
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v31 - 8) + 56))(a2, v30, 1, v31);

  return sub_3FC30(v34, v10);
}

void sub_265E90(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v8 = sub_AB9260();
  [v20 setLabel:v8];

  v9 = a1;
  if (!a1)
  {
    v9 = [objc_opt_self() deviceMediaLibrary];
  }

  v10 = a1;
  [v20 setMediaLibrary:v9];

  sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v11 = static MPModelMovie.defaultMusicKind.getter();
  [v20 setItemKind:v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF82B0;
  *(v12 + 32) = [v3 identifiers];
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  isa = sub_AB9740().super.isa;

  [v20 setAllowedItemIdentifiers:isa];

  v14 = [v20 playbackIntentWithStartItemIdentifiers:0];
  if (v14)
  {
    v15 = v14;
    [v14 setPrefersEnqueuingUsingAirPlay:1];
    *v7 = v15;
    swift_storeEnumTagMultiPayload();
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v23, 3, 0, 0, 1, 0, 1, a2, 0, v21);

    v16 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
    v18 = v20;
  }
}

uint64_t sub_266214@<X0>(uint64_t (*a1)(__n128)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6 = __chkstk_darwin();
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1(v6);
  v41 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    v34 = 0;
    v10 = 0;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = &v41;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_267BBC;
  *(v11 + 24) = v10;
  v37 = sub_581C8;
  v38 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v36 = sub_48D644;
  *(&v36 + 1) = &block_descriptor_26_1;
  v12 = _Block_copy(&aBlock);
  v13 = v38;
  v14 = v9;
  v15 = v3;

  [v14 enumerateItemIdentifiersUsingBlock:v12];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v34 = sub_267BBC;
  if (!*(v41 + 2))
  {
LABEL_6:
    v16 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v17 = MPModelObject.bestIdentifier(for:)(*v16, 1u);
    v14 = v41;
    if (v18)
    {
      v11 = v17;
      v13 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v14;
      v33 = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_8:
        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_6B0F0((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v22 = &v14[16 * v21];
        *(v22 + 4) = v11;
        *(v22 + 5) = v13;
        v41 = v14;
        a2 = v33;
        goto LABEL_12;
      }

LABEL_16:
      v14 = sub_6B0F0(0, *(v14 + 2) + 1, 1, v14);
      v41 = v14;
      goto LABEL_8;
    }

    if (!*(v41 + 2))
    {

      v30 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v23 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
  [v23 setInGroupSession:0];
  v24 = v23;
  v25 = sub_AB9260();
  [v24 setLabel:v25];

  isa = sub_AB9740().super.isa;

  [v24 setStoreIDs:isa];

  v27 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v27 setRequest:v24];

  v28 = [v3 identifiers];
  [v27 setStartItemIdentifiers:v28];

  v29 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v29 setTracklistToken:v27];
  [v29 setTracklistSource:3];
  *v8 = v29;
  swift_storeEnumTagMultiPayload();
  v37 = 0;
  aBlock = 0u;
  v36 = 0u;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, &aBlock, 3, 0, 0, 1, 0, 1, a2, 0, v39);

  v30 = 0;
LABEL_13:
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v31 - 8) + 56))(a2, v30, 1, v31);

  return sub_3FC30(v34, v10);
}

uint64_t sub_2666E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  ObjectType = swift_getObjectType();
  v12 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  sub_13C80(0, a6, a7);
  result = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, v12, 1u, a2);
  if (v14)
  {
    v15 = result;
    v16 = v14;
    v17 = *a5;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v17;
    if ((result & 1) == 0)
    {
      result = sub_6B0F0(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
      *a5 = result;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_6B0F0((v18 > 1), v19 + 1, 1, v17);
      v17 = result;
      *a5 = result;
    }

    *(v17 + 16) = v19 + 1;
    v20 = v17 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v16;
  }

  return result;
}

void sub_266834(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v8 = sub_AB9260();
  [v19 setLabel:v8];

  v9 = a1;
  if (!a1)
  {
    v9 = [objc_opt_self() deviceMediaLibrary];
  }

  v10 = a1;
  [v19 setMediaLibrary:v9];

  v11 = [objc_opt_self() kindWithVariants:3];
  [v19 setItemKind:v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF82B0;
  *(v12 + 32) = [v3 identifiers];
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  isa = sub_AB9740().super.isa;

  [v19 setAllowedItemIdentifiers:isa];

  v14 = [v19 playbackIntentWithStartItemIdentifiers:0];
  if (v14)
  {
    *v7 = v14;
    swift_storeEnumTagMultiPayload();
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v22, 3, 0, 0, 1, 0, 1, a2, 0, v20);

    v15 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    v17 = v19;
  }
}

uint64_t sub_266BA4@<X0>(uint64_t (*a1)(__n128)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6 = __chkstk_darwin();
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1(v6);
  v41 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    v34 = 0;
    v10 = 0;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = &v41;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_267B68;
  *(v11 + 24) = v10;
  v37 = sub_57B9C;
  v38 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v36 = sub_48D644;
  *(&v36 + 1) = &block_descriptor_85;
  v12 = _Block_copy(&aBlock);
  v13 = v38;
  v14 = v9;
  v15 = v3;

  [v14 enumerateItemIdentifiersUsingBlock:v12];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v34 = sub_267B68;
  if (!*(v41 + 2))
  {
LABEL_6:
    v16 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v17 = MPModelObject.bestIdentifier(for:)(*v16, 1u);
    v14 = v41;
    if (v18)
    {
      v11 = v17;
      v13 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v14;
      v33 = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_8:
        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_6B0F0((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v22 = &v14[16 * v21];
        *(v22 + 4) = v11;
        *(v22 + 5) = v13;
        v41 = v14;
        a2 = v33;
        goto LABEL_12;
      }

LABEL_16:
      v14 = sub_6B0F0(0, *(v14 + 2) + 1, 1, v14);
      v41 = v14;
      goto LABEL_8;
    }

    if (!*(v41 + 2))
    {

      v30 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v23 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
  [v23 setInGroupSession:0];
  v24 = v23;
  v25 = sub_AB9260();
  [v24 setLabel:v25];

  isa = sub_AB9740().super.isa;

  [v24 setStoreIDs:isa];

  v27 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v27 setRequest:v24];

  v28 = [v3 identifiers];
  [v27 setStartItemIdentifiers:v28];

  v29 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v29 setTracklistToken:v27];
  [v29 setTracklistSource:3];
  [v29 setPrefersEnqueuingUsingAirPlay:1];
  *v8 = v29;
  swift_storeEnumTagMultiPayload();
  v37 = 0;
  aBlock = 0u;
  v36 = 0u;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, &aBlock, 3, 0, 0, 1, 0, 1, a2, 0, v39);

  v30 = 0;
LABEL_13:
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v31 - 8) + 56))(a2, v30, 1, v31);

  return sub_3FC30(v34, v10);
}

void sub_2670BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v8 = sub_AB9260();
  [v20 setLabel:v8];

  v9 = a1;
  if (!a1)
  {
    v9 = [objc_opt_self() deviceMediaLibrary];
  }

  v10 = a1;
  [v20 setMediaLibrary:v9];

  sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v11 = static MPModelTVEpisode.defaultMusicKind.getter();
  [v20 setItemKind:v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF82B0;
  *(v12 + 32) = [v3 identifiers];
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  isa = sub_AB9740().super.isa;

  [v20 setAllowedItemIdentifiers:isa];

  v14 = [v20 playbackIntentWithStartItemIdentifiers:0];
  if (v14)
  {
    v15 = v14;
    [v14 setPrefersEnqueuingUsingAirPlay:1];
    *v7 = v15;
    swift_storeEnumTagMultiPayload();
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v23, 3, 0, 0, 1, 0, 1, a2, 0, v21);

    v16 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
    v18 = v20;
  }
}

uint64_t sub_267448@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v3 = (v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v5 = MPModelObject.bestIdentifier(for:)(*v4, 1u);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    [v9 setInGroupSession:0];
    v10 = v9;
    v11 = sub_AB9260();
    [v10 setLabel:v11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_AF4EC0;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    isa = sub_AB9740().super.isa;

    [v10 setStoreIDs:isa];

    v14 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
    [v14 setRequest:v10];

    v15 = [objc_allocWithZone(MPCPlaybackIntent) init];
    [v15 setTracklistToken:v14];
    [v15 setTracklistSource:3];
    [v15 setPrefersEnqueuingUsingAirPlay:1];
    *v3 = v15;
    swift_storeEnumTagMultiPayload();
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v3, v22, 3, 0, 0, 1, 0, 1, a1, 0, v20);

    v16 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
  }

  else
  {
    v18 = type metadata accessor for PlaybackIntentDescriptor(0);
    v19 = *(*(v18 - 8) + 56);

    return v19(a1, 1, 1, v18);
  }
}

void sub_267778(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v9 = sub_AB9260();
  [v8 setLabel:v9];

  v10 = a1;
  if (!a1)
  {
    v10 = [objc_opt_self() deviceMediaLibrary];
  }

  v11 = a1;
  [v8 setMediaLibrary:v10];

  sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v22 = static MPModelTVEpisode.defaultMusicKind.getter();
  [v8 setItemKind:v22];
  v12 = [objc_opt_self() kindWithEpisodeKind:v22];
  [v8 setSectionKind:v12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF82B0;
  *(v13 + 32) = v3;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v14 = v3;
  isa = sub_AB9740().super.isa;

  [v8 setScopedContainers:isa];

  v16 = [v8 playbackIntentWithStartItemIdentifiers:0];
  if (v16)
  {
    v17 = v16;
    [v16 setPrefersEnqueuingUsingAirPlay:1];
    *v7 = v17;
    swift_storeEnumTagMultiPayload();
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v25, 3, 0, 0, 1, 0, 1, a2, 0, v23);

    v18 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);

    v20 = v22;
  }
}

uint64_t sub_267B30()
{

  return swift_deallocObject();
}

double block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_267C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_267D60()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  *&v0[qword_DFAF60] = 0;
  *&v0[qword_DFAF68] = 0;
  v1 = &v0[qword_DFAF70];
  *v1 = 0;
  v1[8] = 1;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GenresViewController(0);
  v2 = objc_msgSendSuper2(&v12, "init");
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v3 = sub_AB9260();

  [v2 setTitle:v3];

  v4 = sub_AB9260();
  [v2 setPlayActivityFeatureName:v4];

  v5 = objc_opt_self();
  v6 = [v5 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (!v7)
  {
    v8 = sub_AB9260();
    [v2 setRestorationIdentifier:v8];
  }

  v9 = [v5 currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    _s16MusicApplication16RestorationClassCMa_2();
    [v2 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  return v2;
}

void sub_268000(uint64_t a1)
{
  *(a1 + qword_DFAF60) = 0;
  *(a1 + qword_DFAF68) = 0;
  v1 = a1 + qword_DFAF70;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_ABAFD0();
  __break(1u);
}

void sub_26808C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  v2 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;

  v4 = [v2 initWithProperties:isa relationships:0];

  qword_E71390 = v4;
}

uint64_t sub_268148()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = qword_DFAF60;
  if (*&v0[qword_DFAF60])
  {
    v2 = *&v0[qword_DFAF60];
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

void sub_2682DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_268620();
  }
}

double sub_268330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for GenresViewController(0);
  v4 = v10.receiver;
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v5 = sub_268148();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 88) = sub_269408;
  *(v5 + 96) = v6;

  sub_17654(v7, v8);

  return result;
}

void sub_268400(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenresViewController(0);
  v11.receiver = a1;
  v11.super_class = v7;
  v8 = a1;
  objc_msgSendSuper2(&v11, "viewDidAppear:", a3);
  v9 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v10 = MetricsEvent.Page.libraryGenresList.unsafeMutableAddressor();
  sub_9D330(v10, v6);
  (*(&stru_68.reloff + (swift_isaMask & *v9)))(v6, 0, 0, 0, 0, 0);
  sub_9D394(v6);
}

double sub_26851C()
{
  v1 = v0;
  sub_268E80();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_268148();
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

  v6 = (*(*(v1 + qword_DFAF60) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
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

void sub_268620()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v3 = objc_opt_self();
  sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v4 = v2;
  v5 = static MPModelAlbum.defaultMusicKind.getter();
  v6 = [v3 kindWithAlbumKind:v5];

  [v4 setItemKind:v6];
  v7 = sub_AB9260();
  [v4 setLabel:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  [v4 setSectionProperties:v11];
  if (qword_DE6A00 != -1)
  {
    swift_once();
  }

  [v4 setItemProperties:qword_E71390];

  v12 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v4);

  if (*(*(sub_268148() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v13 = sub_AB9260();
  }

  else
  {
    v13 = 0;
  }

  [v4 setFilterText:v13];

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_2693A8;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_151E0;
  v16[3] = &block_descriptor_86;
  v15 = _Block_copy(v16);

  [v4 performWithResponseHandler:v15];
  _Block_release(v15);
}

double sub_268964(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);

  return result;
}

id sub_268A08(char *a1, id a2)
{
  v3 = v2;
  v5 = [a2 name];
  if (v5)
  {
    v6 = v5;
    v7 = sub_AB92A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = &a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
  v12 = *&a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8];
  *v10 = v7;
  *(v10 + 1) = v9;
  sub_4EE4B4(v11, v12);

  v13 = v3 + qword_DFAF70;
  if (*(v3 + qword_DFAF70 + 8) == 1)
  {
    *v13 = 1;
    *(v13 + 8) = 0;
  }

  return [a1 setAccessoryType:?];
}

void sub_268AEC(void *a1)
{
  v2 = v1;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  objc_allocWithZone(type metadata accessor for AlbumsViewController(0));
  v9 = a1;
  v13 = sub_13B3E0(3, a1, 2, v6, v8);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 pushViewController:v13 animated:1];

    v12 = v11;
  }

  else
  {
    v12 = v13;
  }
}

void sub_268BEC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a2;
    v7 = [v5 tableViewCell];
    if (v7)
    {
      [v7 _setDrawsSeparatorAtTopOfSection:sub_AB37F0() > 0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_268CBC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_3B38B0(v13, v14, v12);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_5;
  }

  v18 = v17;
  v14 = v14;
  v19 = [v18 tableViewCell];
  if (v19)
  {
    v20 = v19;
    [v19 _setDrawsSeparatorAtTopOfSection:sub_AB37F0() > 0];
    (*(v10 + 8))(v12, v9);

    v16 = v20;
LABEL_5:

    return;
  }

  __break(1u);
}

void *sub_268E80()
{
  v1 = qword_DFAF68;
  if (*&v0[qword_DFAF68])
  {
    v2 = *&v0[qword_DFAF68];
  }

  else
  {
    v2 = sub_268EE8(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_268EE8(void *a1)
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
    v3[27] = sub_2693A0;
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

__n128 sub_269024@<Q0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v6 = Strong;
  v7 = sub_268148();

  v8 = (*(v7 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v9 = v8[1];
  if (!v9)
  {

LABEL_10:
    v14 = *(a1 + 72);
    v12 = *(a1 + 80);
    v13 = *(a1 + 64);
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v18 = *a1;
    v19 = *(a1 + 16);
    v16 = v23;
    v15 = a1;
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

  v23[3] = xmmword_E717A8;
  v23[4] = xmmword_E717B8;
  v23[1] = xmmword_E71788;
  v23[2] = xmmword_E71798;
  v23[0] = xmmword_E71778;
  v12 = qword_E717C8;
  v24 = qword_E717C8;
  v14 = *(&xmmword_E717B8 + 1);
  v13 = xmmword_E717B8;
  v20 = xmmword_E71798;
  v21 = xmmword_E717A8;
  v18 = xmmword_E71778;
  v19 = xmmword_E71788;
  v15 = v23;
  v16 = &v22;
LABEL_11:
  sub_576EC(v15, v16);
  *a3 = v18;
  *(a3 + 16) = v19;
  result = v21;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  *(a3 + 64) = v13;
  *(a3 + 72) = v14;
  *(a3 + 80) = v12;
  return result;
}

double sub_26918C()
{

  return result;
}

id sub_2691E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_269224(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for GenresViewController(uint64_t a1)
{
  result = qword_DFAFA0;
  if (!qword_DFAFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269368()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2693C8()
{

  return swift_deallocObject();
}

void sub_269410(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v4 = &v17[-v3];
  sub_15F84(a1 + 24, v26, &unk_DE8E40, &unk_AF8050);
  if (!v27)
  {
    sub_12E1C(v26, &unk_DE8E40, &unk_AF8050);
    v13 = _s23MusicPerformanceContextVMa(0);
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    goto LABEL_8;
  }

  v5 = _s23MusicPerformanceContextVMa(0);
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
  if ((*(v7 + 48))(v4, 1, v5) == 1)
  {
LABEL_8:
    sub_12E1C(v4, &unk_DEE570, &qword_B0E730);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 1;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_9;
  }

  sub_15F84(v4, &v18, &unk_DEA520, &unk_AFDBF0);
  sub_26AC3C(v4, _s23MusicPerformanceContextVMa);
  if (v22 == 1)
  {
LABEL_9:
    sub_12E1C(&v18, &unk_DEA520, &unk_AFDBF0);
    return;
  }

  sub_17704(&v18, v26);
  v8 = OBJC_IVAR____TtC11MusicJSCore24JSSocialNetworkAuthSegue_network;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_isAuthenticated;
    swift_beginAccess();
    v11 = v9[v10];
    v12 = v9;
    if (v11)
    {
      sub_269DF4(v26, v12);
    }

    else
    {
      sub_26A280(v26, v12);
    }

    sub_414AFC(&v18);
    if (*(&v19 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        _s30CollectionViewSelectionHandlerVMa(0);
        isa = sub_AB3770().super.isa;
        [v15 deselectItemAtIndexPath:isa animated:1];
        sub_1611C(v26);
      }

      else
      {
        sub_1611C(v26);
      }

      __swift_destroy_boxed_opaque_existential_0(&v18);
    }

    else
    {
      sub_1611C(v26);
      sub_12E1C(&v18, &unk_DE8E30, "\b]\r");
    }
  }

  else
  {
    sub_1611C(v26);
  }
}

void sub_26976C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (a1)
  {
    JSSocialOnboardingNetwork.didAuthenticate()();
  }

  else if (a2)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v6 = sub_AB9260();

    v7 = [objc_opt_self() alertControllerWithTitle:0 message:v6 preferredStyle:1];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v8 = sub_AB9260();

    aBlock[4] = UIScreen.Dimensions.size.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1546C;
    aBlock[3] = &block_descriptor_18_0;
    v9 = _Block_copy(aBlock);

    v10 = [objc_opt_self() actionWithTitle:v8 style:1 handler:v9];
    _Block_release(v9);

    [v7 addAction:v10];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong presentViewController:v7 animated:1 completion:0];
    }

    else
    {
    }
  }
}

void sub_269A28(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (a1)
  {
    JSSocialOnboardingNetwork.didUnlink()();
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v6 = sub_AB9260();

    v7 = [objc_opt_self() alertControllerWithTitle:0 message:v6 preferredStyle:1];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v8 = sub_AB9260();

    aBlock[4] = UIScreen.Dimensions.size.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1546C;
    aBlock[3] = &block_descriptor_12_0;
    v9 = _Block_copy(aBlock);

    v10 = [objc_opt_self() actionWithTitle:v8 style:1 handler:v9];
    _Block_release(v9);

    [v7 addAction:v10];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong presentViewController:v7 animated:1 completion:0];
    }

    else
    {
    }
  }
}

double sub_269CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (a3 + OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];

  BagProvider.shared.unsafeMutableAddressor();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v9;
  v11[6] = v8;

  BagProvider.getBag(completion:)(sub_26AB34, v11);

  return result;
}

void sub_269DF4(uint64_t a1, char *a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  type metadata accessor for SocialOnboardingNetworkRegistrationController();
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(NSOperationQueue) init];
  v6 = sub_AB9260();
  [v5 setName:v6];

  [v5 setQualityOfService:25];
  *(v4 + 16) = v5;
  sub_15F28(a1, aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = a2;
  sub_17704(aBlock, v7 + 32);
  v8 = &a2[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_name];
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  v11 = a2;

  static String.socialDisconnectMessage(networkName:)(v10, v9);

  v12 = sub_AB9260();

  v13 = [objc_opt_self() alertControllerWithTitle:v12 message:0 preferredStyle:0];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v14 = sub_AB9260();

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v14 style:1 handler:0];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v11;
  v17[4] = sub_26AA3C;
  v17[5] = v7;

  v18 = v11;

  v19 = sub_AB9260();

  aBlock[4] = sub_26AA90;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_87;
  v20 = _Block_copy(aBlock);

  v21 = [v15 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v13 addAction:v21];
  [v13 addAction:v16];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong presentViewController:v13 animated:1 completion:0];

    v16 = v21;
    v21 = v23;
  }
}

double sub_26A280(uint64_t a1, char *a2)
{
  type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.Flow(0);
  __chkstk_darwin();
  v59 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor(0);
  __chkstk_darwin();
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA8, &qword_AFD298);
  __chkstk_darwin();
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v48 - v9;
  __chkstk_darwin();
  v12 = &v48 - v11;
  __chkstk_darwin();
  v61 = &v48 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v15 = &v48 - v14;
  v16 = sub_AB31C0();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v60 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_authProtocol;
  swift_beginAccess();
  if ((a2[v19] & 1) == 0)
  {
    v51 = v10;
    v52 = v6;
    v53 = a1;
    v21 = &a2[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier];
    swift_beginAccess();
    v22 = *(v21 + 1);
    v50 = *v21;
    v23 = &a2[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_name];
    swift_beginAccess();
    v24 = *v23;
    v25 = *(v23 + 1);
    v49 = v24;
    type metadata accessor for SocialOnboardingNetworkRegistrationController();
    v26 = swift_allocObject();
    v27 = objc_allocWithZone(NSOperationQueue);
    v55 = v22;

    v54 = v25;

    v28 = [v27 init];
    v29 = sub_AB9260();
    [v28 setName:v29];

    [v28 setQualityOfService:25];
    v56 = v26;
    *(v26 + 16) = v28;
    v30 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_authURL;
    swift_beginAccess();
    sub_15F84(&a2[v30], v15, &unk_DF2AE0, &qword_AFC930);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_12E1C(v15, &unk_DF2AE0, &qword_AFC930);
    }

    else
    {
      v48 = v17;
      v31 = *(v17 + 32);
      v31(v60, v15, v16);
      v32 = *(v7 + 48);
      v33 = v61;
      (*(v17 + 16))();
      v34 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_redirectURL;
      swift_beginAccess();
      sub_15F84(&a2[v34], v33 + v32, &unk_DF2AE0, &qword_AFC930);
      sub_15F84(v33, v12, &qword_DEEAA8, &qword_AFD298);
      v35 = *(v7 + 48);
      v36 = v51;
      v31(v51, v12, v16);
      sub_36B0C(&v12[v35], v36 + *(v7 + 48), &unk_DF2AE0, &qword_AFC930);
      v37 = v52;
      v38 = v55;
      *v52 = v50;
      v37[1] = v38;
      v39 = v54;
      v37[2] = v49;
      v37[3] = v39;
      v40 = v57;
      sub_36B0C(v36, v57, &qword_DEEAA8, &qword_AFD298);
      v41 = *(v7 + 48);
      v42 = v37 + *(v58 + 20);
      v31(v42, v40, v16);
      sub_36B0C(v40 + v41, &v42[*(v7 + 48)], &unk_DF2AE0, &qword_AFC930);
      v43 = v59;
      sub_26AB44(v37, v59);
      v44 = v53;
      sub_15F28(v53, v62);
      v45 = swift_allocObject();
      v46 = v56;
      *(v45 + 16) = v56;
      sub_17704(v62, v45 + 24);
      *(v45 + 120) = a2;
      swift_retain_n();

      v47 = a2;
      sub_EB0E4(v44, v43, v46, sub_26AC2C, v45);

      sub_26AC3C(v43, type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.Flow);
      sub_26AC3C(v37, type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor);
      sub_12E1C(v61, &qword_DEEAA8, &qword_AFD298);
      (*(v48 + 8))(v60, v16);
    }
  }

  return result;
}

uint64_t sub_26A9B8()
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

  return swift_deallocObject();
}

uint64_t sub_26AA48()
{

  return swift_deallocObject();
}

double block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_26AAB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_26AAEC()
{

  return swift_deallocObject();
}

uint64_t sub_26AB44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26ABA8()
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

  return swift_deallocObject();
}

uint64_t sub_26AC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26ACAC(uint64_t a1)
{
  if (*(v1 + 24) == 2)
  {
    v3 = *(v1 + 16);
    v4 = [v3 properties];
    v5 = sub_AB9B40();

    v6 = sub_AB92A0();
    v8 = sub_4DFDA8(v6, v7, v5);
    v10 = v9;
    v12 = v11;

    v68 = v12 != -1;
    sub_F01A0(v8, v10, v12);
    v13 = sub_AB92A0();
    v15 = sub_4DFDA8(v13, v14, v5);
    v17 = v16;
    v19 = v18;
    v67 = ~v18 != 0;

    sub_F01A0(v15, v17, v19);
    v20 = sub_AB92A0();
    v22 = sub_4DFDA8(v20, v21, v5);
    v24 = v23;
    v26 = v25;
    v66 = ~v25 != 0;

    sub_F01A0(v22, v24, v26);
    v27 = sub_AB92A0();
    v29 = sub_4DFDA8(v27, v28, v5);
    v31 = v30;
    v33 = v32;
    v65 = ~v32 != 0;

    sub_F01A0(v29, v31, v33);
    v34 = sub_AB92A0();
    v36 = sub_4DFDA8(v34, v35, v5);
    v38 = v37;
    v40 = v39;
    v41 = ~v39 != 0;

    sub_F01A0(v36, v38, v40);
    v42 = sub_AB92A0();
    v44 = sub_4DFDA8(v42, v43, v5);
    v46 = v45;
    v48 = v47;
    v49 = ~v47 != 0;

    sub_F01A0(v44, v46, v48);
    v50 = sub_AB92A0();
    v52 = sub_4DFDA8(v50, v51, v5);
    v54 = v53;
    v56 = v55;
    v57 = ~v55 != 0;

    sub_F01A0(v52, v54, v56);
    v58 = v68 | (v67 << 8) | (v66 << 16) | (v65 << 24);
    v59 = v58 | (v41 << 32) | (v49 << 40);
    *(v1 + 28) = WORD2(v59);
    *(v1 + 24) = v58;
    *(v1 + 30) = (v59 | (v57 << 48)) >> 48;
  }

  v60 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin();
  v64[2] = v1;
  v64[3] = a1;
  v61 = objc_allocWithZone(MusicModelShelfSection);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_26B7E4;
  *(v62 + 24) = v64;
  aBlock[4] = sub_57B84;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_88;
  v63 = _Block_copy(aBlock);

  [v61 initWithIdentifiers:v60 block:v63];
  _Block_release(v63);

  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    __break(1u);
  }
}

void sub_26B0E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32);
  if (*(a2 + 24) == 2)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  v7 = v5;
  if (*(a2 + 24))
  {
    swift_beginAccess();

    v8 = sub_AB9260();

    [v7 setTitle:v8];

    v6 = *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32);
  }

  if (v6 == 2)
  {
    goto LABEL_78;
  }

  if ((v6 & 0x100) != 0)
  {
    v9 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured;
    swift_beginAccess();
    [v7 setFeatured:*(a3 + v9)];
    v6 = *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32);
  }

  if (v6 == 2)
  {
    goto LABEL_79;
  }

  if ((v6 & 0x10000) != 0)
  {
    v10 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList;
    swift_beginAccess();
    [v7 setRankedList:*(a3 + v10)];
    v6 = *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32);
  }

  if (v6 == 2)
  {
    goto LABEL_80;
  }

  if ((v6 & 0x1000000) != 0)
  {
    v11 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
    swift_beginAccess();
    v12 = *(a3 + v11);
    if (v12 >> 62)
    {
      goto LABEL_37;
    }

    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (v13)
    {
      while (1)
      {
        v37 = a2;
        v39 = v7;
        v41 = a3;

        a2 = 0;
        LOBYTE(v15) = 0;
        if ((v12 & 0xC000000000000001) != 0)
        {
          break;
        }

        while (1)
        {
          if (a2 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_36;
          }

          v16 = *(v12 + 8 * a2 + 32);
          v7 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            break;
          }

LABEL_20:
          if (v15)
          {

            v15 = 1;
            if (v7 == v13)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v17 = v16;
            v18 = (*&stru_3D8.segname[(swift_isaMask & *v16) - 8])();
            v20 = v19;

            if (v20)
            {
              a3 = v18 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              a3 = 0;
            }

            if (v20)
            {
              v21 = v20;
            }

            else
            {
              v21 = 0xE000000000000000;
            }

            v22 = HIBYTE(v21) & 0xF;
            if ((v21 & 0x2000000000000000) == 0)
            {
              v22 = a3;
            }

            v15 = v22 != 0;
            if (v7 == v13)
            {
LABEL_34:

              v7 = v39;
              a3 = v41;
              a2 = v37;
              goto LABEL_39;
            }
          }

          ++a2;
          if ((v12 & 0xC000000000000001) != 0)
          {
            goto LABEL_15;
          }
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v13 = sub_ABB060();
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_15:
      v16 = sub_361634(a2, v12, v14);
      v7 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        goto LABEL_35;
      }

      goto LABEL_20;
    }

LABEL_38:
    v15 = 0;
LABEL_39:
    [v7 setHasHeadlineText:v15];
    v6 = *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32);
  }

  if (v6 == 2)
  {
    goto LABEL_81;
  }

  if ((v6 & 0x100000000) != 0)
  {
    v23 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
    swift_beginAccess();
    v24 = *(a3 + v23);
    if (v24 >> 62)
    {
      goto LABEL_67;
    }

    v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (v25)
    {
      while (1)
      {
        v38 = a2;
        v40 = v7;
        v42 = a3;

        a2 = 0;
        LOBYTE(v27) = 0;
        if ((v24 & 0xC000000000000001) != 0)
        {
          break;
        }

        while (1)
        {
          if (a2 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_66;
          }

          v28 = *(v24 + 8 * a2 + 32);
          v7 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            break;
          }

LABEL_50:
          if (v27)
          {

            v27 = 1;
            if (v7 == v25)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v29 = v28;
            v30 = (*(&stru_338.reserved2 + (swift_isaMask & *v28)))();
            v32 = v31;

            if (v32)
            {
              a3 = v30 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              a3 = 0;
            }

            if (v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0xE000000000000000;
            }

            v34 = HIBYTE(v33) & 0xF;
            if ((v33 & 0x2000000000000000) == 0)
            {
              v34 = a3;
            }

            v27 = v34 != 0;
            if (v7 == v25)
            {
LABEL_64:

              v7 = v40;
              a3 = v42;
              a2 = v38;
              goto LABEL_69;
            }
          }

          ++a2;
          if ((v24 & 0xC000000000000001) != 0)
          {
            goto LABEL_45;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        v25 = sub_ABB060();
        if (!v25)
        {
          goto LABEL_68;
        }
      }

LABEL_45:
      v28 = sub_361634(a2, v24, v26);
      v7 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        goto LABEL_65;
      }

      goto LABEL_50;
    }

LABEL_68:
    v27 = 0;
LABEL_69:
    [v7 setHasSubtitleText:v27];
    v6 = *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32);
  }

  if (v6 == 2)
  {
    goto LABEL_82;
  }

  if ((v6 & 0x10000000000) != 0)
  {
    v35 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height;
    swift_beginAccess();
    [v7 setHeightClass:*(a3 + v35)];
    v6 = *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32);
  }

  if (v6 == 2)
  {
    goto LABEL_83;
  }

  if ((v6 & 0x1000000000000) != 0)
  {
    v36 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
    swift_beginAccess();
    [v7 setUniformCellType:qword_B06988[*(a3 + v36)]];
  }
}

uint64_t sub_26B6C8()
{

  return swift_deallocClassInstance();
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSModelShelfSectionBuilder.InitializedProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for JSModelShelfSectionBuilder.InitializedProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_26B814(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_artistContainerURL;
  swift_beginAccess();
  sub_26E064(a1, v1 + v5);
  swift_endAccess();
  sub_15F84(v1 + v5, v4, &unk_DF2AE0, &qword_AFC930);
  v6 = sub_AB31C0();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_12E1C(a1, &unk_DF2AE0, &qword_AFC930);
  }

  else
  {
    sub_12E1C(v4, &unk_DF2AE0, &qword_AFC930);
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_shouldStartStationPlaybackWhenReady))
    {
      *(v1 + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_shouldStartStationPlaybackWhenReady) = 0;
      sub_26BB4C();
    }

    v4 = a1;
  }

  return sub_12E1C(v4, &unk_DF2AE0, &qword_AFC930);
}

id sub_26B980()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_isStartingStationPlayback] = 0;
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler];
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler];
  if (v4)
  {
    v5 = v3[1];

    v4(v6);
    sub_17654(v4, v5);
    v7 = *v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_17654(v7, v8);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t type metadata accessor for ArtistRadioStationController(uint64_t a1)
{
  result = qword_DFB678;
  if (!qword_DFB678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_26BB4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  *&result = __chkstk_darwin().n128_u64[0];
  v3 = &v11[-v2 - 8];
  v4 = OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_isStartingStationPlayback;
  if ((v0[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_isStartingStationPlayback] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_presentationSource;
    swift_beginAccess();
    sub_15F84(&v0[v5], v11, &unk_DEA520, &unk_AFDBF0);
    if (v12 == 1)
    {
      sub_12E1C(v11, &unk_DEA520, &unk_AFDBF0);
    }

    else
    {
      sub_17704(v11, v13);
      v0[v4] = 1;
      v6 = sub_AB9990();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      sub_15F28(v13, v11);
      sub_AB9940();
      v7 = v0;
      v8 = sub_AB9930();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = &protocol witness table for MainActor;
      v9[4] = v7;
      sub_17704(v11, (v9 + 5));
      sub_DBDC8(0, 0, v3, &unk_B06A80, v9);
      sub_1611C(v13);
    }
  }

  return result;
}

uint64_t sub_26BD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  sub_AB9940();
  v5[16] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_26BDC4, v7, v6);
}

uint64_t sub_26BDC4()
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = *(v0[14] + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_modelObject);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_15F28(v1, (v0 + 2));
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_17704((v0 + 2), v4 + 24);

  sub_1109D4(v2, 0, 0, 1, v1, sub_26E2CC, v4);

  v5 = v0[1];

  return v5();
}

double sub_26BF20(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = sub_AB9990();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_15F28(a3, v12);
  sub_AB9940();

  v9 = sub_AB9930();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = a2;
  *(v10 + 40) = a1;
  sub_17704(v12, v10 + 48);
  sub_DBDC8(0, 0, v7, &unk_B06A90, v10);

  return result;
}

uint64_t sub_26C078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 272) = a5;
  *(v6 + 216) = a4;
  *(v6 + 224) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  *(v6 + 232) = swift_task_alloc();
  v7 = sub_AB31C0();
  *(v6 + 240) = v7;
  *(v6 + 248) = *(v7 - 8);
  *(v6 + 256) = swift_task_alloc();
  sub_AB9940();
  *(v6 + 264) = sub_AB9930();
  v9 = sub_AB98B0();

  return _swift_task_switch(sub_26C1A8, v9, v8);
}

uint64_t sub_26C1A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 272) == 1)
    {
      v3 = *(v0 + 240);
      v4 = *(v0 + 248);
      v5 = *(v0 + 232);
      v6 = OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_artistContainerURL;
      swift_beginAccess();
      sub_15F84(&v2[v6], v5, &unk_DF2AE0, &qword_AFC930);
      if ((*(v4 + 48))(v5, 1, v3) == 1)
      {
        sub_12E1C(*(v0 + 232), &unk_DF2AE0, &qword_AFC930);
        sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        v2 = v2;
        static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_26E45C, v7);

        v2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_isStartingStationPlayback] = 0;
        v8 = &v2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler];
        v9 = *&v2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler];
        if (!v9)
        {
LABEL_5:
          v10 = 0;
LABEL_10:
          v14 = v8[1];
          *v8 = 0;
          v8[1] = 0;
LABEL_11:
          sub_17654(v10, v14);

          goto LABEL_17;
        }

LABEL_9:
        v12 = v8[1];

        v9(v13);
        sub_17654(v9, v12);
        v10 = *v8;
        goto LABEL_10;
      }

      (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
      static ApplicationCapabilities.shared.getter(v0 + 16);
      sub_70C54(v0 + 16);
      if (*(v0 + 112) == 2)
      {
      }

      else
      {
        v15 = sub_ABB3C0();

        if ((v15 & 1) == 0)
        {
          if (qword_DE6838 != -1)
          {
            swift_once();
          }

          v21 = sub_1101F4(*&v2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_modelObject], *(v0 + 224));
          v2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_isStartingStationPlayback] = 0;
          v22 = &v2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler];
          v23 = *&v2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler];
          v25 = *(v0 + 248);
          v24 = *(v0 + 256);
          v26 = *(v0 + 240);
          if (v23)
          {
            v27 = v22[1];

            v23(v28);
            (*(v25 + 8))(v24, v26);
            sub_17654(v23, v27);
          }

          else
          {
            (*(v25 + 8))(*(v0 + 256), *(v0 + 240), v21);
          }

          v10 = *v22;
          v14 = v22[1];
          *v22 = 0;
          v22[1] = 0;
          goto LABEL_11;
        }
      }

      v16 = *(v0 + 256);
      v17 = *(v0 + 240);
      v18 = *(v0 + 248);
      sub_26C5DC();

      (*(v18 + 8))(v16, v17);
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v2 = v11;
    *(v11 + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_isStartingStationPlayback) = 0;
    v8 = (v11 + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler);
    v9 = *(v11 + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_17:

  v19 = *(v0 + 8);

  return v19();
}

double sub_26C5DC()
{
  v1 = v0;
  v2 = sub_AB2A90();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v20 - v10;
  if (qword_DE6A08 != -1)
  {
    swift_once();
  }

  URL.parametrize(_:)(qword_DFB618, v11);
  (*(v7 + 16))(v9, v11, v6);
  sub_AB2A50();
  sub_AB2A20();
  sub_13C80(0, &qword_DEE560, ICStoreRequestContext_ptr);
  v12 = static ICStoreRequestContext.current.getter();
  v13 = objc_allocWithZone(ICStoreURLRequest);
  v14 = sub_AB2A30();
  v15 = [v13 initWithURLRequest:v14 requestContext:v12];

  [v15 setMaxRetryCount:0];
  sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
  v16 = static ICURLSessionManager.musicSession.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v18 = v1;
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v15, sub_26E464, v17);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v11, v6);

  return result;
}

id sub_26C8D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_radioStationStoreItemMetadata);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 itemKind];
  if (!v3)
  {
    sub_AB92A0();
    goto LABEL_11;
  }

  v4 = v3;
  v5 = sub_AB92A0();
  v7 = v6;

  v8 = sub_AB92A0();
  if (!v7)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v5 == v8 && v7 == v9)
  {

    goto LABEL_22;
  }

  v11 = sub_ABB3C0();

  if (v11)
  {
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_AF85F0;
    *(v23 + 32) = sub_AB92A0();
    *(v23 + 40) = v24;
    *(v23 + 48) = sub_AB92A0();
    *(v23 + 56) = v25;
    isa = sub_AB9740().super.isa;
    v27 = [objc_opt_self() propertySetWithProperties:isa];

    v28 = [objc_allocWithZone(MPStoreModelRadioStationBuilder) initWithRequestedPropertySet:v27];
    if (v28)
    {
      v29 = v28;
      v30 = objc_opt_self();
      v2 = v2;
      v31 = [v30 activeAccount];
      v32 = [v29 modelObjectWithStoreItemMetadata:v2 userIdentity:v31];

      if (v32)
      {
        v33 = [objc_opt_self() radioPlaybackIntentWithStation:v32];

        return v33;
      }
    }

    goto LABEL_26;
  }

LABEL_12:
  v12 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
  [v12 setInGroupSession:0];
  if ([v2 storeID])
  {
    sub_ABAB50();
    sub_9ACFC(&v36, &v34);
    swift_unknownObjectRelease();
    if (*(&v35 + 1))
    {
      sub_9ACFC(&v34, &v36);
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      sub_ABB3A0();
      v13 = MPStoreItemMetadataStringNormalizeStoreIDValue();
      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = sub_AB92A0();
        v16 = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_AF4EC0;
        *(v17 + 32) = v14;
        *(v17 + 40) = v16;
        v18 = sub_AB9740().super.isa;

        [v12 setStoreIDs:v18];
        __swift_destroy_boxed_opaque_existential_0(&v36);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v36);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  sub_12E1C(&v34, &unk_DE8E40, &unk_AF8050);
LABEL_18:
  v19 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v19 setRequest:v12];
  v20 = [objc_allocWithZone(MPCPlaybackIntent) init];
  if (v20)
  {
    v21 = v20;
    [v20 setTracklistToken:v19];
    [v21 setTracklistSource:3];

    return v21;
  }

LABEL_26:
  return 0;
}

uint64_t sub_26CD34()
{
  v0 = sub_96B2C(&off_CF1000);
  result = sub_12E1C(&unk_CF1020, &qword_DEE730, &qword_AFCCA0);
  qword_DFB618 = v0;
  return result;
}

void sub_26CD84(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB7C50();
  v9 = *(v18 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = sub_ABA150();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a3;
  aBlock[4] = sub_26E4AC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_89;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a3;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
  _Block_release(v14);
}

uint64_t sub_26D020(void *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v34 - v5;
  if (!a1)
  {
    goto LABEL_16;
  }

  v7 = [a1 parsedBodyDictionary];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = sub_AB8FF0();

  v35 = 0xD000000000000011;
  v36 = 0x8000000000B50AD0;
  sub_ABAD10();
  if (!*(v9 + 16) || (v10 = sub_2EC004(v37), (v11 & 1) == 0))
  {
    sub_8085C(v37);
    goto LABEL_15;
  }

  sub_808B0(*(v9 + 56) + 32 * v10, v39);
  sub_8085C(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
  if (swift_dynamicCast())
  {

    sub_473EC0(v12, v37);

    if (v38)
    {
      if (swift_dynamicCast())
      {
        v13 = v39[0];
        v35 = 0x73746C75736572;
        v36 = 0xE700000000000000;
        sub_ABAD10();
        if (*(v13 + 16) && (v14 = sub_2EC004(v37), (v15 & 1) != 0))
        {
          sub_808B0(*(v13 + 56) + 32 * v14, v39);
          sub_8085C(v37);
          if (swift_dynamicCast())
          {

            sub_473EC0(v16, v37);

            if (v38)
            {
              if (swift_dynamicCast())
              {
                v17 = objc_allocWithZone(MPStoreItemMetadata);
                isa = sub_AB8FD0().super.isa;
                v19 = [v17 initWithStorePlatformDictionary:isa];

                v20 = *&a2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_radioStationStoreItemMetadata];
                *&a2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_radioStationStoreItemMetadata] = v19;

                v21 = sub_AB9990();
                (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
                sub_AB9940();
                v22 = a2;
                v23 = sub_AB9930();
                v24 = swift_allocObject();
                v24[2] = v23;
                v24[3] = &protocol witness table for MainActor;
                v24[4] = v22;
                sub_DBDC8(0, 0, v6, &unk_B06AA8, v24);

                goto LABEL_17;
              }
            }

            else
            {
              sub_12E1C(v37, &unk_DE8E40, &unk_AF8050);
            }

            goto LABEL_15;
          }
        }

        else
        {
          sub_8085C(v37);
        }

        goto LABEL_15;
      }
    }

    else
    {
      sub_12E1C(v37, &unk_DE8E40, &unk_AF8050);
    }
  }

LABEL_15:

LABEL_16:
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  v26 = a2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_26E61C, v25);
LABEL_17:

  a2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_isStartingStationPlayback] = 0;
  v27 = &a2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler];
  v28 = *&a2[OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_playbackCompletionHandler];
  if (v28)
  {
    v29 = v27[1];

    v28(v30);
    sub_17654(v28, v29);
    v31 = *v27;
  }

  else
  {
    v31 = 0;
  }

  v32 = v27[1];
  *v27 = 0;
  v27[1] = 0;
  return sub_17654(v31, v32);
}

uint64_t sub_26D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a4;
  v4[36] = type metadata accessor for PlaybackIntentDescriptor(0);
  v4[37] = swift_task_alloc();
  v4[38] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[39] = swift_task_alloc();
  sub_AB9940();
  v4[40] = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_26D624, v6, v5);
}

uint64_t sub_26D624()
{
  v41 = v0;
  v1 = sub_26C8D8();
  if (!v1)
  {
    v14 = v0[35];
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = v14;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_26E61C, v15);

    goto LABEL_19;
  }

  v2 = v1;
  v3 = [objc_opt_self() emptyIdentifierSet];
  v4 = objc_allocWithZone(MPModelRadioStation);
  v0[30] = UIScreen.Dimensions.size.getter;
  v0[31] = 0;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_41A314;
  v0[29] = &block_descriptor_37_0;
  v5 = _Block_copy(v0 + 26);
  v6 = [v4 initWithIdentifiers:v3 block:v5];
  _Block_release(v5);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[39];
    v9 = v0[35];
    v3 = swift_allocBox();
    v11 = v10;
    *v8 = v2;
    swift_storeEnumTagMultiPayload();
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    isEscapingClosureAtFileLocation = v2;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, v37, 3, 0, 0, 1, 0, 1, v11, 0, v39);
    v12 = v9 + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_presentationSource;
    swift_beginAccess();
    sub_15F84(v12, (v0 + 14), &unk_DEA520, &unk_AFDBF0);
    if (v0[22] == 1)
    {
      v13 = v0[37];
      sub_12E1C((v0 + 14), &unk_DEA520, &unk_AFDBF0);
      sub_1912D4(v11, v13);
      sub_37D3DC(0);

      sub_1914D8(v13);

      goto LABEL_19;
    }

    sub_17704((v0 + 14), (v0 + 2));
    if (*(v12 + 64) != 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        v19 = UIViewController.playActivityInformation.getter();
        v21 = v20;
        v36 = v22;
        v24 = v23;
        v26 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter(v19, v20, v22, v23, v25);
        v27 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v27 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {

          v28 = sub_AB9260();
        }

        else
        {
          v28 = 0;
        }

        [v26 setPlayActivityFeatureName:v28];

        if (v24 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = sub_AB3250().super.isa;
        }

        [v26 setPlayActivityRecommendationData:isa];

        sub_466A4(v36, v24);
      }
    }

    if (qword_DE6838 == -1)
    {
      goto LABEL_18;
    }
  }

  swift_once();
LABEL_18:
  v30 = v0[35];
  v31 = swift_allocObject();
  *(v31 + 16) = v3;
  *(v31 + 24) = v30;
  v32 = v30;
  v33 = v6;

  sub_1109D4(v6, 0, 0, 1, (v0 + 2), sub_26E600, v31);

  sub_1611C((v0 + 2));

LABEL_19:

  v34 = v0[1];

  return v34();
}

void sub_26DB08(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (v4 == 1)
  {
    v7 = swift_projectBox();
    swift_beginAccess();
    sub_1912D4(v7, v6);
    sub_37D3DC(0);
    sub_1914D8(v6);
    memset(v10, 0, sizeof(v10));
    v11 = 1;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v8 = OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_presentationSource;
    swift_beginAccess();
    sub_2D594(v10, a3 + v8);
    swift_endAccess();
  }
}

void sub_26DC10(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v2 = sub_AB9260();

  v3 = [objc_opt_self() alertControllerWithTitle:0 message:v2 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v4 = sub_AB9260();

  *&v10 = UIScreen.Dimensions.size.getter;
  *(&v10 + 1) = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v9 = sub_1546C;
  *(&v9 + 1) = &block_descriptor_43_5;
  v5 = _Block_copy(&aBlock);

  v6 = [objc_opt_self() actionWithTitle:v4 style:1 handler:v5];
  _Block_release(v5);

  [v3 addAction:v6];
  v7 = a1 + OBJC_IVAR____TtC16MusicApplication28ArtistRadioStationController_presentationSource;
  swift_beginAccess();
  if (*(v7 + 64) != 1)
  {
    sub_15F28(v7, &aBlock);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v3, 1, 1, 0, 0);
    sub_1611C(&aBlock);
  }

  v10 = 0u;
  v11 = 0u;
  aBlock = 0u;
  v9 = 0u;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  swift_beginAccess();
  sub_2D594(&aBlock, v7);
  swift_endAccess();
}

void sub_26DF44(uint64_t a1)
{
  sub_26E00C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26E00C(uint64_t a1)
{
  if (!qword_E24D20)
  {
    sub_AB31C0();
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E24D20);
    }
  }
}

uint64_t sub_26E064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26E0D4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26E158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_26BD2C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_26E218()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_26E250()
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

  return swift_deallocObject();
}

uint64_t sub_26E2D8()
{
  swift_unknownObjectRelease();

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

  return swift_deallocObject();
}

uint64_t sub_26E35C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_26C078(a1, v4, v5, v6, v7, v1 + 48);
}

uint64_t sub_26E424()
{

  return swift_deallocObject();
}

uint64_t sub_26E46C()
{

  return swift_deallocObject();
}

double block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_26E4CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26E50C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_26D52C(a1, v4, v5, v6);
}

uint64_t sub_26E5C0()
{

  return swift_deallocObject();
}

uint64_t sub_26E6A0(uint64_t a1)
{
  sub_AB93F0();
  sub_AB93F0();
  sub_ABB5D0(*(v1 + 32));
  if (*(v1 + 48))
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
    if (*(v1 + 64))
    {
LABEL_3:
      sub_ABB5E0(1u);
      sub_AB93F0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_ABB5E0(0);
    if (*(v1 + 64))
    {
      goto LABEL_3;
    }
  }

  sub_ABB5E0(0);
LABEL_6:
  sub_AB93F0();
  if (*(v1 + 96))
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
    if (*(v1 + 112))
    {
LABEL_8:
      sub_ABB5E0(1u);
      sub_AB93F0();
      goto LABEL_11;
    }
  }

  else
  {
    sub_ABB5E0(0);
    if (*(v1 + 112))
    {
      goto LABEL_8;
    }
  }

  sub_ABB5E0(0);
LABEL_11:

  return sub_AB93F0();
}

Swift::Int sub_26E7D4()
{
  sub_ABB5C0();
  sub_26E6A0(v1);
  return sub_ABB610();
}

Swift::Int sub_26E818(uint64_t a1)
{
  sub_ABB5C0();
  sub_26E6A0(v2);
  return sub_ABB610();
}

uint64_t sub_26E854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_27128C(v11, v13) & 1;
}

void sub_26E8D8(uint64_t a1)
{
  v2 = qword_DFB690;
  type metadata accessor for ReportConcern.ViewModel(0);
  v3 = swift_allocObject();
  sub_271A30(v9);
  v4 = v9[7];
  *(v3 + 112) = v9[6];
  *(v3 + 128) = v4;
  v5 = v10;
  v6 = v9[3];
  *(v3 + 48) = v9[2];
  *(v3 + 64) = v6;
  v7 = v9[5];
  *(v3 + 80) = v9[4];
  *(v3 + 96) = v7;
  v8 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v8;
  *(v3 + 144) = v5;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0xE000000000000000;
  *(v3 + 168) = _swiftEmptyArrayStorage;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(a1 + v2) = v3;
  sub_ABAFD0();
  __break(1u);
}

double sub_26EA24()
{

  return result;
}

id sub_26EAAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportConcern.ViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_26EAE4(uint64_t a1)
{

  return result;
}

__n128 sub_26EB78@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v12 = v1;
  sub_270EE0();
  sub_AB3990();

  v3 = *(v1 + 128);
  v18 = *(v1 + 112);
  v19 = v3;
  v20 = *(v1 + 144);
  v4 = *(v1 + 64);
  v14 = *(v1 + 48);
  v15 = v4;
  v5 = *(v1 + 96);
  v16 = *(v1 + 80);
  v17 = v5;
  v6 = *(v1 + 32);
  v12 = *(v1 + 16);
  v13 = v6;
  sub_15F84(&v12, v11, &qword_DE6EF8, &qword_B06DD0);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26EC60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v16[0] = v3;
  sub_270EE0();
  sub_AB3990();

  v4 = *(v3 + 96);
  v5 = *(v3 + 112);
  v6 = *(v3 + 128);
  v17 = *(v3 + 144);
  v16[6] = v5;
  v16[7] = v6;
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  v16[3] = *(v3 + 64);
  v16[4] = v9;
  v16[1] = v7;
  v16[2] = v8;
  v16[5] = v4;
  v16[0] = *(v3 + 16);
  v10 = *(v3 + 128);
  *(a2 + 96) = *(v3 + 112);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 144);
  v11 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v11;
  v12 = *(v3 + 96);
  *(a2 + 64) = *(v3 + 80);
  *(a2 + 80) = v12;
  v13 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v13;
  return sub_15F84(v16, v15, &qword_DE6EF8, &qword_B06DD0);
}

void sub_26ED50(uint64_t a1)
{
  v3 = *(v1 + 128);
  v18[6] = *(v1 + 112);
  v18[7] = v3;
  v19 = *(v1 + 144);
  v4 = *(v1 + 64);
  v18[2] = *(v1 + 48);
  v18[3] = v4;
  v5 = *(v1 + 96);
  v18[4] = *(v1 + 80);
  v18[5] = v5;
  v6 = *(v1 + 32);
  v18[0] = *(v1 + 16);
  v18[1] = v6;
  sub_15F84(v18, v16, &qword_DE6EF8, &qword_B06DD0);
  v7 = sub_271458(v18, a1);
  sub_12E1C(v18, &qword_DE6EF8, &qword_B06DD0);
  if (v7)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *&v16[0] = v1;
    sub_270EE0();
    sub_AB3980();
    sub_12E1C(a1, &qword_DE6EF8, &qword_B06DD0);
  }

  else
  {
    v8 = *(v1 + 128);
    v16[6] = *(v1 + 112);
    v16[7] = v8;
    v17 = *(v1 + 144);
    v9 = *(v1 + 64);
    v16[2] = *(v1 + 48);
    v16[3] = v9;
    v10 = *(v1 + 96);
    v16[4] = *(v1 + 80);
    v16[5] = v10;
    v11 = *(v1 + 32);
    v16[0] = *(v1 + 16);
    v16[1] = v11;
    v12 = *(a1 + 80);
    *(v1 + 80) = *(a1 + 64);
    *(v1 + 96) = v12;
    v13 = *(a1 + 112);
    *(v1 + 112) = *(a1 + 96);
    *(v1 + 128) = v13;
    *(v1 + 144) = *(a1 + 128);
    v14 = *(a1 + 48);
    *(v1 + 48) = *(a1 + 32);
    *(v1 + 64) = v14;
    v15 = *(a1 + 16);
    *(v1 + 16) = *a1;
    *(v1 + 32) = v15;
    sub_12E1C(v16, &qword_DE6EF8, &qword_B06DD0);
  }
}

uint64_t sub_26EF1C()
{
  swift_getKeyPath();
  sub_270EE0();
  sub_AB3990();

  v1 = *(v0 + 152);

  return v1;
}

double sub_26EF9C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_270EE0();
  sub_AB3990();

  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;

  return result;
}

double sub_26F018(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152) == a1 && *(v2 + 160) == a2;
  if (v5 || (sub_ABB3C0() & 1) != 0)
  {
    *(v2 + 152) = a1;
    *(v2 + 160) = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_270EE0();
    sub_AB3980();
  }

  return result;
}

double sub_26F148()
{
  swift_getKeyPath();
  sub_270EE0();
  sub_AB3990();

  return result;
}

double sub_26F1BC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_270EE0();
  sub_AB3990();

  *a2 = *(v3 + 168);

  return result;
}

double sub_26F238(uint64_t a1)
{
  if (sub_12D2B8(*(v1 + 168), a1))
  {
    *(v1 + 168) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_270EE0();
    sub_AB3980();
  }

  return result;
}

uint64_t sub_26F34C()
{
  v1 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v1;
  v9 = *(v0 + 144);
  v2 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v2;
  v3 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v3;
  v4 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v4;
  sub_12E1C(v8, &qword_DE6EF8, &qword_B06DD0);

  v5 = OBJC_IVAR____TtCO16MusicApplication13ReportConcern9ViewModel___observationRegistrar;
  v6 = sub_AB39D0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return swift_deallocClassInstance();
}

uint64_t sub_26F45C(uint64_t a1, __n128 a2)
{
  result = sub_AB39D0();
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

uint64_t sub_26F534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB878, &qword_B06B98);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26F5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB878, &qword_B06B98);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26F65C(uint64_t a1)
{
  sub_26F6C8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26F6C8(uint64_t a1)
{
  if (!qword_DFB8E8)
  {
    type metadata accessor for ReportConcern.ViewModel(255);
    v1 = sub_AB7960();
    if (!v2)
    {
      atomic_store(v1, &qword_DFB8E8);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26F764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_26F7AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F820()
{
  result = qword_DFB918;
  if (!qword_DFB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFB918);
  }

  return result;
}

uint64_t sub_26F890@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v78 = *(type metadata accessor for ReportConcern.ContentView(0) - 8);
  __chkstk_darwin();
  v79 = v3;
  v80 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEAD0, &unk_B06D00);
  v83 = *(v86 - 8);
  __chkstk_darwin();
  v82 = &v74 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB930, &qword_B09B90);
  v85 = *(v87 - 8);
  __chkstk_darwin();
  v84 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB938, &qword_B06D10);
  v103 = *(v6 - 8);
  v104 = v6;
  __chkstk_darwin();
  v81 = &v74 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB940, &qword_B06D18);
  __chkstk_darwin();
  v99 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v74 - v9;
  v10 = sub_AB6280();
  v11 = *(v10 - 8);
  v94 = v10;
  v95 = v11;
  __chkstk_darwin();
  v93 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB948, &qword_B06D20);
  __chkstk_darwin();
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB878, &qword_B06B98);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB950, &qword_B06D28);
  v20 = *(v19 - 8);
  v91 = v19;
  v92 = v20;
  __chkstk_darwin();
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB958, &qword_B06D30);
  v97 = *(v23 - 8);
  v98 = v23;
  __chkstk_darwin();
  v96 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v74 - v25;
  v89 = a1;
  sub_AB7940();
  KeyPath = swift_getKeyPath();
  sub_AB7950();
  v26 = *(v16 + 8);
  v76 = v18;
  v77 = v16 + 8;
  v75 = v26;
  v26(v18, v15);
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v120 = v130;
  v113 = v123;
  v114 = v124;
  v115 = v125;
  v116 = v126;
  v111 = v121;
  v112 = v122;
  v106 = a1;
  sub_AB6360();
  v27 = sub_AB6F00();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB960, &qword_B06D60) + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB968, &qword_B06D68) + 28);
  v36 = sub_AB6E60();
  v37 = *(*(v36 - 8) + 56);
  v101 = 1;
  v37(v34 + v35, 1, 1, v36);
  *v34 = swift_getKeyPath();
  *v14 = v27;
  *(v14 + 1) = v29;
  v14[16] = v31 & 1;
  *(v14 + 3) = v33;
  v38 = sub_AB6B90();
  v39 = swift_getKeyPath();
  v40 = &v14[*(v90 + 36)];
  *v40 = v39;
  v40[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6EF8, &qword_B06DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB970, &qword_B06DD8);
  sub_270B28();
  sub_270C98();
  sub_270D70();
  sub_AB7760();

  v41 = v93;
  sub_AB6270();
  sub_36A00(&qword_DFB9B0, &qword_DFB950, &qword_B06D28, &protocol conformance descriptor for Picker<A, B, C>);
  v42 = v91;
  v43 = v94;
  sub_AB7000();
  (*(v95 + 8))(v41, v43);
  (*(v92 + 8))(v22, v42);
  v44 = v89;
  sub_AB7930();
  v45 = v121;
  swift_getKeyPath();
  *&v121 = v45;
  v46 = sub_270EE0();
  sub_AB3990();

  v47 = *(v45 + 112);
  v116 = *(v45 + 96);
  v117 = v47;
  v118 = *(v45 + 128);
  *&v119 = *(v45 + 144);
  v48 = *(v45 + 48);
  v112 = *(v45 + 32);
  v113 = v48;
  v49 = *(v45 + 80);
  v114 = *(v45 + 64);
  v115 = v49;
  v111 = *(v45 + 16);
  sub_15F84(&v111, &v121, &qword_DE6EF8, &qword_B06DD0);

  v127 = v117;
  v128 = v118;
  *&v129 = v119;
  v123 = v113;
  v124 = v114;
  v125 = v115;
  v126 = v116;
  v121 = v111;
  v122 = v112;
  if (sub_270F38(&v121) != 1)
  {
    sub_12E1C(&v111, &qword_DE6EF8, &qword_B06DD0);
    sub_AB6360();
    v95 = v46;
    v50 = v76;
    sub_AB7940();
    swift_getKeyPath();
    sub_AB7950();
    v75(v50, v15);
    v51 = v82;
    sub_AB7B20();

    sub_AB7930();
    v52 = v107;
    swift_getKeyPath();
    v107 = v52;
    sub_AB3990();

    v53 = *(v52 + 152);
    v54 = *(v52 + 160);

    v107 = v53;
    v108 = v54;
    v55 = v80;
    sub_27106C(v44, v80);
    v56 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v57 = swift_allocObject();
    sub_2711A8(v55, v57 + v56);
    v58 = sub_36A00(&qword_DFB9C8, &unk_DFEAD0, &unk_B06D00, &protocol conformance descriptor for TextField<A>);
    v59 = v84;
    v60 = v86;
    sub_AB7330();
    (*(v83 + 8))(v51, v60);

    v107 = v60;
    v108 = &type metadata for String;
    v109 = v58;
    v110 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v61 = v81;
    v62 = v87;
    sub_AB7390();
    (*(v85 + 8))(v59, v62);
    (*(v103 + 32))(v102, v61, v104);
    v101 = 0;
  }

  v63 = v102;
  (*(v103 + 56))(v102, v101, 1, v104);
  v65 = v96;
  v64 = v97;
  v66 = *(v97 + 16);
  v67 = v105;
  v68 = v98;
  v66(v96, v105, v98);
  v69 = v99;
  sub_270F50(v63, v99);
  v70 = v100;
  v66(v100, v65, v68);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB9C0, &qword_B06DE0);
  sub_270F50(v69, &v70[*(v71 + 48)]);
  sub_270FC0(v63);
  v72 = *(v64 + 8);
  v72(v67, v68);
  sub_270FC0(v69);
  return (v72)(v65, v68);
}

uint64_t sub_270508()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB878, &qword_B06B98);
  sub_AB7930();
  swift_getKeyPath();
  sub_270EE0();
  sub_AB3990();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB9D0, &qword_B06E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB9D8, &unk_B06E60);
  sub_36A00(&qword_DFB9E0, &qword_DFB9D0, &qword_B06E58, &protocol conformance descriptor for [A]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE9B0, &qword_AF4F18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE6EF8, &qword_B06DD0);
  sub_270E5C();
  sub_270C98();
  swift_getOpaqueTypeConformance2();
  return sub_AB78B0();
}

uint64_t sub_2706D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v43 = a1[6];
  v44 = v3;
  v45 = *(a1 + 16);
  v4 = a1[3];
  v39 = a1[2];
  v40 = v4;
  v5 = a1[5];
  v41 = a1[4];
  v42 = v5;
  v6 = a1[1];
  v37 = *a1;
  v38 = v6;
  sub_36A48();

  v7 = sub_AB6F20();
  v9 = v8;
  v11 = v10;
  sub_AB6B90();
  v12 = sub_AB6E80();
  v14 = v13;
  v16 = v15;
  v35 = v17;

  sub_36B74(v7, v9, v11 & 1);

  LOBYTE(v7) = sub_AB6B00();
  sub_AB5690();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v36[160] = v16 & 1;
  v36[152] = 0;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v46 = v37;
  v47 = v38;
  UIScreen.Dimensions.size.getter();
  v58 = v45;
  v27 = v42;
  v57[6] = v43;
  v26 = v43;
  v57[7] = v44;
  v28 = v38;
  v57[2] = v39;
  v29 = v39;
  v57[3] = v40;
  v30 = v40;
  v57[4] = v41;
  v31 = v41;
  v57[5] = v42;
  v57[0] = v37;
  v32 = v37;
  v57[1] = v38;
  v33 = v44;
  v55[6] = v43;
  *v56 = v44;
  *&v56[16] = v45;
  v55[2] = v39;
  v55[3] = v40;
  v55[4] = v41;
  v55[5] = v42;
  v55[0] = v37;
  v55[1] = v38;
  v56[24] = 1;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v7;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v25;
  *(a2 + 72) = 0;
  *(a2 + 176) = v26;
  *(a2 + 192) = v33;
  *(a2 + 112) = v29;
  *(a2 + 128) = v30;
  *(a2 + 144) = v31;
  *(a2 + 160) = v27;
  *(a2 + 80) = v32;
  *(a2 + 96) = v28;
  *(a2 + 201) = *&v56[9];
  v59 = 1;
  sub_2718B0(&v37, v36);
  sub_15F84(v55, v36, &unk_DE6F00, &qword_AF4F10);
  return sub_12E1C(v57, &unk_DE6F00, &qword_AF4F10);
}

double sub_270924(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB878, &qword_B06B98);
  sub_AB7930();

  sub_2717E4(400, v2, v3);

  v4 = sub_AB93B0();
  v6 = v5;

  sub_26F018(v4, v6);

  return result;
}

uint64_t sub_2709E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB920, &qword_B06CF8);
  sub_36A00(&qword_DFB928, &qword_DFB920, &qword_B06CF8, &protocol conformance descriptor for TupleView<A>);
  return sub_AB6CE0();
}

void sub_270A98(uint64_t a1)
{
  v1 = *(a1 + 112);
  v6[6] = *(a1 + 96);
  v6[7] = v1;
  v7 = *(a1 + 128);
  v2 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v2;
  v3 = *(a1 + 80);
  v6[4] = *(a1 + 64);
  v6[5] = v3;
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  sub_15F84(v6, v5, &qword_DE6EF8, &qword_B06DD0);
  sub_26ED50(v6);
}

unint64_t sub_270B28()
{
  result = qword_DFB978;
  if (!qword_DFB978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFB948, &qword_B06D20);
    sub_270BE0();
    sub_36A00(&qword_DEB890, &qword_DEB898, &unk_AFB040, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFB978);
  }

  return result;
}

unint64_t sub_270BE0()
{
  result = qword_DFB980;
  if (!qword_DFB980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFB960, &qword_B06D60);
    sub_36A00(&qword_DFB988, &qword_DFB968, &qword_B06D68, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFB980);
  }

  return result;
}

unint64_t sub_270C98()
{
  result = qword_DFB990;
  if (!qword_DFB990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE6EF8, &qword_B06DD0);
    sub_270D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFB990);
  }

  return result;
}

unint64_t sub_270D1C()
{
  result = qword_DFB998;
  if (!qword_DFB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFB998);
  }

  return result;
}

unint64_t sub_270D70()
{
  result = qword_DFB9A0;
  if (!qword_DFB9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFB970, &qword_B06DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE9B0, &qword_AF4F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE6EF8, &qword_B06DD0);
    sub_270E5C();
    sub_270C98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFB9A0);
  }

  return result;
}

unint64_t sub_270E5C()
{
  result = qword_DFB9A8;
  if (!qword_DFB9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE9B0, &qword_AF4F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFB9A8);
  }

  return result;
}

unint64_t sub_270EE0()
{
  result = qword_DFB9B8;
  if (!qword_DFB9B8)
  {
    type metadata accessor for ReportConcern.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFB9B8);
  }

  return result;
}

uint64_t sub_270F38(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_270F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB940, &qword_B06D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB940, &qword_B06D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_27102C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_26F018(v1, v2);
}

uint64_t sub_27106C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcern.ContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2710D0()
{
  v1 = *(type metadata accessor for ReportConcern.ContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB878, &qword_B06B98);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_2711A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcern.ContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_27120C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ReportConcern.ContentView(0);

  return sub_270924(a1, a2);
}

uint64_t sub_27128C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_ABB3C0() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[6];
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (a1[5] != *(a2 + 40) || v6 != v7) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9 || (a1[7] != *(a2 + 56) || v8 != v9) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((a1[9] != *(a2 + 72) || a1[10] != *(a2 + 80)) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[12];
  v11 = *(a2 + 96);
  if (v10)
  {
    if (!v11 || (a1[11] != *(a2 + 88) || v10 != v11) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[14];
  v13 = *(a2 + 112);
  if (v12)
  {
    if (v13 && (a1[13] == *(a2 + 104) && v12 == v13 || (sub_ABB3C0() & 1) != 0))
    {
      goto LABEL_41;
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_41:
  if (a1[15] == *(a2 + 120) && a1[16] == *(a2 + 128))
  {
    return 1;
  }

  return sub_ABB3C0();
}

uint64_t sub_271458(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 112);
  __src[6] = *(a1 + 96);
  __src[7] = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  __src[2] = *(a1 + 32);
  __src[3] = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  __src[4] = *(a1 + 64);
  __src[5] = v9;
  v10 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v10;
  v11 = a2[4];
  *(&__src[13] + 8) = a2[5];
  v12 = a2[7];
  *(&__src[14] + 8) = a2[6];
  *(&__src[15] + 8) = v12;
  v13 = *a2;
  *(&__src[9] + 8) = a2[1];
  v14 = a2[3];
  *(&__src[10] + 8) = a2[2];
  *(&__src[11] + 8) = v14;
  *(&__src[12] + 8) = v11;
  *(&__src[8] + 8) = v13;
  v15 = *(a1 + 112);
  v37[6] = __src[6];
  v37[7] = v15;
  v37[2] = __src[2];
  v37[3] = v8;
  v37[4] = __src[4];
  v37[5] = v4;
  v16 = *(a2 + 16);
  *&__src[8] = *(a1 + 128);
  *(&__src[16] + 1) = v16;
  v38 = *(a1 + 128);
  v37[0] = __src[0];
  v37[1] = v6;
  if (sub_270F38(v37) != 1)
  {
    v24[6] = *(&__src[14] + 8);
    v24[7] = *(&__src[15] + 8);
    v25 = *(&__src[16] + 1);
    v24[2] = *(&__src[10] + 8);
    v24[3] = *(&__src[11] + 8);
    v24[4] = *(&__src[12] + 8);
    v24[5] = *(&__src[13] + 8);
    v24[0] = *(&__src[8] + 8);
    v24[1] = *(&__src[9] + 8);
    if (sub_270F38(v24) != 1)
    {
      v20[6] = *(&__src[14] + 8);
      v20[7] = *(&__src[15] + 8);
      v21 = *(&__src[16] + 1);
      v20[2] = *(&__src[10] + 8);
      v20[3] = *(&__src[11] + 8);
      v20[4] = *(&__src[12] + 8);
      v20[5] = *(&__src[13] + 8);
      v20[0] = *(&__src[8] + 8);
      v20[1] = *(&__src[9] + 8);
      __dst[6] = *(&__src[14] + 8);
      __dst[7] = *(&__src[15] + 8);
      *&__dst[8] = *(&__src[16] + 1);
      __dst[2] = *(&__src[10] + 8);
      __dst[3] = *(&__src[11] + 8);
      __dst[4] = *(&__src[12] + 8);
      __dst[5] = *(&__src[13] + 8);
      __dst[0] = *(&__src[8] + 8);
      __dst[1] = *(&__src[9] + 8);
      v34 = __src[6];
      v35 = __src[7];
      v36 = *&__src[8];
      v30 = __src[2];
      v31 = __src[3];
      v33 = __src[5];
      v32 = __src[4];
      v28 = __src[0];
      v29 = __src[1];
      v18 = sub_27128C(&v28, __dst);
      sub_15F84(a1, v22, &qword_DE6EF8, &qword_B06DD0);
      sub_15F84(a2, v22, &qword_DE6EF8, &qword_B06DD0);
      sub_12E1C(v20, &qword_DE6EF8, &qword_B06DD0);
      v22[6] = __src[6];
      v22[7] = __src[7];
      v23 = *&__src[8];
      v22[2] = __src[2];
      v22[3] = __src[3];
      v22[4] = __src[4];
      v22[5] = __src[5];
      v22[0] = __src[0];
      v22[1] = __src[1];
      sub_12E1C(v22, &qword_DE6EF8, &qword_B06DD0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    goto LABEL_5;
  }

  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  *&__dst[8] = *(&__src[16] + 1);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  if (sub_270F38(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_15F84(a1, &v28, &qword_DE6EF8, &qword_B06DD0);
    sub_15F84(a2, &v28, &qword_DE6EF8, &qword_B06DD0);
    sub_12E1C(__dst, &qword_DFB9E8, &qword_B06E70);
    v17 = 1;
    return v17 & 1;
  }

  v34 = __src[6];
  v35 = __src[7];
  v36 = *&__src[8];
  v30 = __src[2];
  v31 = __src[3];
  v33 = __src[5];
  v32 = __src[4];
  v28 = __src[0];
  v29 = __src[1];
  sub_15F84(a1, v24, &qword_DE6EF8, &qword_B06DD0);
  sub_15F84(a2, v24, &qword_DE6EF8, &qword_B06DD0);
  sub_12E1C(&v28, &qword_DE6EF8, &qword_B06DD0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2717E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_AB9450();

    return sub_AB9590();
  }

  return result;
}

void sub_2718E8()
{
  *(*(v0 + 16) + 168) = *(v0 + 24);
}

void sub_271924()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 152) = v0[3];
  *(v1 + 160) = v2;
}

uint64_t sub_271964()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 112);
  v14[5] = *(v2 + 96);
  v14[6] = v3;
  v14[7] = *(v2 + 128);
  v15 = *(v2 + 144);
  v4 = *(v2 + 48);
  v14[1] = *(v2 + 32);
  v14[2] = v4;
  v5 = *(v2 + 80);
  v14[3] = *(v2 + 64);
  v14[4] = v5;
  v14[0] = *(v2 + 16);
  v6 = *(v1 + 128);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v8;
  *(v2 + 96) = v7;
  v10 = *(v1 + 48);
  v9 = *(v1 + 64);
  v11 = *(v1 + 32);
  *(v2 + 32) = *(v1 + 16);
  *(v2 + 48) = v11;
  *(v2 + 64) = v10;
  *(v2 + 80) = v9;
  *(v2 + 16) = *v1;
  *(v2 + 144) = v6;
  sub_15F84(v1, v13, &qword_DE6EF8, &qword_B06DD0);
  return sub_12E1C(v14, &qword_DE6EF8, &qword_B06DD0);
}

double sub_271A30(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_271AA4()
{
  result = qword_DFBA00[0];
  if (!qword_DFBA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_DFBA00);
  }

  return result;
}

id sub_271B9C()
{
  v1 = [v0 itemType];
  if ((v1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return [v0 *off_D069F0[(v1 - 1)]];
  }
}

void *sub_271C3C(void *a1)
{
  v3 = [v1 itemType];
  v4 = 0;
  if (v3 > 5)
  {
    if (v3 > 8 && v3 != &dword_C && v3 != (&dword_C + 1))
    {
      return v4;
    }
  }

  else if (v3 <= 2 && v3 != (&dword_0 + 1) && v3 != (&dword_0 + 2))
  {
    return v4;
  }

  v5 = [a1 relationships];
  sub_119B5C();
  v6 = sub_AB8FF0();
  v7 = sub_AB92A0();
  if (*(v6 + 16) && (v9 = sub_2EBF88(v7, v8), (v10 & 1) != 0))
  {
    v4 = *(*(v6 + 56) + 8 * v9);
    v11 = v4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_2721EC(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 *a3];
  v6 = [v5 storeContentItemObject];

  return v6;
}

id sub_272264(void *a1, void *a2)
{
  v3 = v2;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);

    v11 = [v3 contentItem];
    v12 = [v11 storeContentItemObjectPropertiesFor:v10];

    return v12;
  }

  else
  {

    return 0;
  }
}

id sub_272438(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_2725F0(a1);
  (*(*(*(v2 + qword_E713B0) - 8) + 8))(a1);
  return v5;
}

id sub_27255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StaticHostingController(0, *((swift_isaMask & *v4) + qword_E713B0), *((swift_isaMask & *v4) + qword_E713B0 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_2725F0(uint64_t a1)
{
  v1 = __chkstk_darwin();
  (*(v3 + 16))(&v8 - v2, v1);
  v4 = sub_AB64F0();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    sub_AB64B0();
    [v4 setPreferredContentSize:?];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2727C8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BadgeLabel();
  v1 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor:v4];

  v5 = v3;
  [v5 setClipsToBounds:1];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v5 setTextColor:qword_E718D8];
  [v5 setTextAlignment:1];
  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v5 setFont:v6];

  v7 = [v5 layer];
  [v7 setBorderWidth:1.0];

  [v5 _setContinuousCornerRadius:1.0];
  return v5;
}

void sub_272AC0()
{
  v1 = [v0 layer];
  v2 = [v0 textColor];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 cgColor];
    v5 = v3;
    if (!v4)
    {
      __break(1u);
      return;
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v1 setBorderColor:?];
}

id sub_272BB4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BadgeLabel();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_272C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;
  v5 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(v1) = [v0 hasLoadedValuesForPropertySet:v5];
  if (!v1)
  {
    return 0;
  }

  v6 = [v0 isPrivate];
  if ([v0 isVerified])
  {
    return 2;
  }

  else
  {
    return v6;
  }
}

void *sub_272D38(uint64_t a1)
{
  result = sub_272C0C();
  if (a1)
  {
    v5[1] = 0;
    v5[2] = 0;
    v3 = result;
    v5[0] = result;
    v6 = 0;
    __chkstk_darwin();
    v4[2] = v5;
    if (sub_1B3B10(sub_273A5C, v4, a1))
    {
      sub_7FCC4(v3);
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_272E00()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  v1 = [v0 handle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_AB92A0();
  v5 = v4;

  sub_AB9220();
  v8._countAndFlagsBits = 64;
  v8._object = 0xE100000000000000;
  sub_AB9210(v8);
  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_AB9200(v9);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_AB9210(v10);
  sub_AB9240();
  sub_AB3550();
  v6 = sub_AB9320();

  return v6;
}

void MPModelSocialPerson.isEqual(_:)(uint64_t a1)
{
  sub_F46A0(a1, aBlock);
  if (v10)
  {
    sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);
    if (swift_dynamicCast())
    {
      v2 = v13;
      LOBYTE(v13) = 0;
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      v4[2] = &v13;
      v4[3] = v1;
      v4[4] = v2;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_273720;
      *(v5 + 24) = v4;
      v11 = sub_2D4D0;
      v12 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1822E0;
      v10 = &block_descriptor_90;
      v6 = _Block_copy(aBlock);
      v7 = v1;
      v8 = v2;

      [v3 performWithoutEnforcement:v6];

      _Block_release(v6);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_9BC10(aBlock);
  }
}

void sub_2731B0(BOOL *a1, void *a2, void *a3)
{
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  v6 = [a2 identifiers];
  v7 = [a3 identifiers];
  v8 = sub_ABA790();

  *a1 = v8 & 1;
  if (v8)
  {
    v9 = [a2 name];
    if (v9)
    {
      v10 = v9;
      v11 = sub_AB92A0();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = [a3 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_AB92A0();
      v18 = v17;

      if (v13)
      {
        if (v18)
        {
          if (v11 != v16 || v13 != v18)
          {
            v30 = sub_ABB3C0();

            *a1 = v30 & 1;
            if ((v30 & 1) == 0)
            {
              goto LABEL_69;
            }

LABEL_18:
            v20 = [a2 uncensoredName];
            if (v20)
            {
              v21 = v20;
              v22 = sub_AB92A0();
              v24 = v23;
            }

            else
            {
              v22 = 0;
              v24 = 0;
            }

            v25 = [a3 uncensoredName];
            if (v25)
            {
              v26 = v25;
              v27 = sub_AB92A0();
              v29 = v28;

              if (v24)
              {
                if (!v29)
                {
                  goto LABEL_62;
                }

                if (v22 != v27 || v24 != v29)
                {
                  v41 = sub_ABB3C0();

                  *a1 = v41 & 1;
                  if ((v41 & 1) == 0)
                  {
                    goto LABEL_69;
                  }

LABEL_33:
                  v31 = [a2 handle];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = sub_AB92A0();
                    v35 = v34;
                  }

                  else
                  {
                    v33 = 0;
                    v35 = 0;
                  }

                  v36 = [a3 handle];
                  if (v36)
                  {
                    v37 = v36;
                    v38 = sub_AB92A0();
                    v40 = v39;

                    if (v35)
                    {
                      if (v40)
                      {
                        if (v33 != v38 || v35 != v40)
                        {
                          v52 = sub_ABB3C0();

                          *a1 = v52 & 1;
                          if ((v52 & 1) == 0)
                          {
                            goto LABEL_69;
                          }

LABEL_48:
                          v42 = [a2 biography];
                          if (v42)
                          {
                            v43 = v42;
                            v44 = sub_AB92A0();
                            v46 = v45;
                          }

                          else
                          {
                            v44 = 0;
                            v46 = 0;
                          }

                          v47 = [a3 biography];
                          if (v47)
                          {
                            v48 = v47;
                            v49 = sub_AB92A0();
                            v51 = v50;

                            if (v46)
                            {
                              if (v51)
                              {
                                if (v44 != v49 || v46 != v51)
                                {
                                  v60 = sub_ABB3C0();

                                  *a1 = v60 & 1;
                                  if ((v60 & 1) == 0)
                                  {
                                    goto LABEL_69;
                                  }

                                  goto LABEL_64;
                                }

LABEL_63:
                                *a1 = 1;
LABEL_64:
                                v53 = [a2 pendingRequestsCount];
                                v54 = [a3 pendingRequestsCount];
                                *a1 = v53 == v54;
                                if (v53 == v54)
                                {
                                  v55 = [a2 isPrivate];
                                  v56 = [a3 isPrivate];
                                  *a1 = v55 ^ v56 ^ 1;
                                  if (((v55 ^ v56) & 1) == 0)
                                  {
                                    v57 = [a2 isVerified];
                                    v58 = [a3 isVerified];
                                    *a1 = v57 ^ v58 ^ 1;
                                    if (((v57 ^ v58) & 1) == 0)
                                    {
                                      v59 = [a2 hasLightweightProfile];
                                      v19 = v59 ^ [a3 hasLightweightProfile] ^ 1;
                                      goto LABEL_16;
                                    }
                                  }
                                }

LABEL_69:
                                v19 = 0;
                                goto LABEL_16;
                              }
                            }

                            else if (!v51)
                            {
                              goto LABEL_63;
                            }
                          }

                          else if (!v46)
                          {
                            goto LABEL_63;
                          }

                          goto LABEL_62;
                        }

LABEL_47:
                        *a1 = 1;
                        goto LABEL_48;
                      }
                    }

                    else if (!v40)
                    {
                      goto LABEL_47;
                    }
                  }

                  else if (!v35)
                  {
                    goto LABEL_47;
                  }

LABEL_62:

                  v19 = 0;
                  goto LABEL_16;
                }
              }

              else if (v29)
              {
                goto LABEL_62;
              }
            }

            else if (v24)
            {
              goto LABEL_62;
            }

            *a1 = 1;
            goto LABEL_33;
          }

LABEL_17:
          *a1 = 1;
          goto LABEL_18;
        }
      }

      else if (!v18)
      {
        goto LABEL_17;
      }
    }

    else if (!v13)
    {
      goto LABEL_17;
    }
  }

  v19 = 0;
  *a1 = 0;
LABEL_16:
  *a1 = v19;
}

uint64_t sub_2736E0()
{

  return swift_deallocObject();
}

double block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t MPModelSocialPerson.hash.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 hash];

  v3 = [v0 name];
  if (v3)
  {
    v4 = v3;
    sub_AB92A0();

    v5 = sub_AB9540();

    v2 ^= v5;
  }

  v6 = [v0 uncensoredName];
  if (v6)
  {
    v7 = v6;
    sub_AB92A0();

    v8 = sub_AB9540();

    v2 ^= v8;
  }

  v9 = [v0 handle];
  if (v9)
  {
    v10 = v9;
    sub_AB92A0();

    v11 = sub_AB9540();

    v2 ^= v11;
  }

  v12 = [v0 biography];
  if (v12)
  {
    v13 = v12;
    sub_AB92A0();

    v14 = sub_AB9540();

    v2 ^= v14;
  }

  [v0 pendingRequestsCount];
  v15 = sub_AB9C30();
  [v0 isPrivate];
  v16 = v15 ^ sub_AB98A0() ^ v2;
  [v0 isVerified];
  v17 = sub_AB98A0();
  [v0 hasLightweightProfile];
  return v16 ^ v17 ^ sub_AB98A0();
}

unint64_t sub_273A08()
{
  result = qword_DFBAB0;
  if (!qword_DFBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBAB0);
  }

  return result;
}

id sub_273A7C()
{
  _s24LoadingStatusCoordinatorCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:0];
  result = [objc_allocWithZone(NSMapTable) initWithKeyOptions:5 valueOptions:0 capacity:0];
  *(v0 + 24) = result;
  qword_E713C0 = v0;
  return result;
}

void sub_273B00(uint64_t a1)
{
  [*(v1 + 16) removeObject:?];
  v89 = sub_978E8(_swiftEmptyArrayStorage);
  v80 = v1;
  v2 = [*(v1 + 24) keyEnumerator];
  v76 = v2;
  if ([v2 nextObject])
  {
    while (1)
    {
      sub_ABAB50();
      sub_9ACFC(&v85, &v86);
      swift_unknownObjectRelease();
      if (!*(&v87 + 1))
      {
        break;
      }

      sub_9ACFC(&v86, v88);
      sub_808B0(v88, &v86);
      sub_13C80(0, &qword_DE7500, UIViewController_ptr);
      if (swift_dynamicCast())
      {
        v3 = v85;
        v4 = [*(v80 + 24) objectForKey:v85];
        if (v4)
        {
          v5 = v4;
          v6 = v89;
          if ((v89 & 0xC000000000000001) != 0)
          {
            if (v89 >= 0)
            {
              v6 = v89 & 0xFFFFFFFFFFFFFF8;
            }

            v7 = sub_ABAFA0();
            if (__OFADD__(v7, 1))
            {
              goto LABEL_76;
            }

            v6 = sub_4265D8(v6, v7 + 1);
            v89 = v6;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v86 = v6;
          v9 = sub_2EC3D0(v3);
          v11 = *(v6 + 16);
          v12 = (v10 & 1) == 0;
          v13 = __OFADD__(v11, v12);
          v14 = v11 + v12;
          if (v13)
          {
            goto LABEL_75;
          }

          v15 = v10;
          if (*(v6 + 24) >= v14)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v20 = v9;
              sub_331CB0();
              v9 = v20;
            }
          }

          else
          {
            sub_328AB8(v14, isUniquelyReferenced_nonNull_native);
            v9 = sub_2EC3D0(v3);
            if ((v15 & 1) != (v16 & 1))
            {
              goto LABEL_78;
            }
          }

          v2 = v76;
          v17 = v86;
          if (v15)
          {
            *(*(v86 + 56) + 8 * v9) = v5;

            __swift_destroy_boxed_opaque_existential_0(v88);
          }

          else
          {
            *(v86 + 8 * (v9 >> 6) + 64) |= 1 << v9;
            *(v17[6] + 8 * v9) = v3;
            *(v17[7] + 8 * v9) = v5;
            __swift_destroy_boxed_opaque_existential_0(v88);
            v18 = v17[2];
            v13 = __OFADD__(v18, 1);
            v19 = v18 + 1;
            if (v13)
            {
              goto LABEL_77;
            }

            v17[2] = v19;
          }

          v89 = v17;
        }

        else
        {
          sub_27B63C(v3);

          __swift_destroy_boxed_opaque_existential_0(v88);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v88);
      }

      if (![v2 nextObject])
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v86 = 0u;
    v87 = 0u;
  }

  sub_9BC10(&v86);
  v21 = v89;
  if ((v89 & 0xC000000000000001) == 0)
  {
    if (*(v89 + 16))
    {
      v26 = -1 << *(v89 + 32);
      v23 = v89 + 64;
      v24 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v25 = v28 & *(v89 + 64);
      goto LABEL_34;
    }

LABEL_68:

LABEL_70:

    return;
  }

  if (sub_ABAFA0() <= 0)
  {
    goto LABEL_68;
  }

  v22 = sub_ABAF90();
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v21 = v22 | 0x8000000000000000;
LABEL_34:
  v29 = 0;
  v30 = (v24 + 64) >> 6;
  v31 = _swiftEmptyArrayStorage;
  v32 = &selRef__authenticateReturningError_;
  v74 = v30;
  v75 = v21;
  v73 = v23;
  while ((v21 & 0x8000000000000000) != 0)
  {
    v42 = sub_ABAFC0();
    if (!v42 || (v44 = v43, *&v85 = v42, sub_13C80(0, &qword_DE7500, UIViewController_ptr), swift_unknownObjectRetain(), swift_dynamicCast(), v45 = v86, swift_unknownObjectRelease(), *&v85 = v44, _s24LoadingStatusCoordinatorC12ObserverListCMa(), swift_unknownObjectRetain(), v32 = &selRef__authenticateReturningError_, swift_dynamicCast(), v40 = v86, swift_unknownObjectRelease(), v38 = v29, v78 = v25, (v79 = v45) == 0))
    {
LABEL_64:
      sub_2BB88(v21);
      v69 = v31[2];
      if (v69)
      {
        v70 = v31 + 5;
        do
        {
          v71 = *(v70 - 1);

          v71(v72);

          v70 += 2;
          --v69;
        }

        while (v69);
      }

      goto LABEL_70;
    }

LABEL_47:
    v77 = v38;
    swift_beginAccess();
    v46 = *(v40 + 16);
    v49 = *(v46 + 16);
    v48 = (v46 + 16);
    v47 = v49;
    if (v49)
    {

      v50 = -v47;
      v51 = v47 - 1;
      v52 = 24 * v47 + 32;
      v53 = a1;
      v81 = v40;
      v84 = v48;
      do
      {
        if (!v50)
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (v51 >= *v48)
        {
          goto LABEL_72;
        }

        v56 = (v48 + v52);
        v57 = *(v48 + v52 - 40);
        v58 = *(v48 + v52 - 32);
        v59 = *(v56 - 3);

        [v59 removeObject:v53];
        if (![v59 v32[74]])
        {
          v83 = v57;
          swift_beginAccess();
          v60 = *(v40 + 16);
          v61 = swift_isUniquelyReferenced_nonNull_native();
          *(v40 + 16) = v60;
          if ((v61 & 1) == 0)
          {
            v60 = sub_284518(v60);
            *(v40 + 16) = v60;
          }

          v62 = *(v60 + 2);
          if (v51 >= v62)
          {
            goto LABEL_73;
          }

          v63 = v31;
          v64 = v62 - 1;
          v65 = *&v60[v52 - 8];
          memmove(&v60[v52 - 24], &v60[v52], 24 * (v50 + v62));
          *(v60 + 2) = v64;
          v31 = v63;
          *(v40 + 16) = v60;
          swift_endAccess();

          v66 = swift_allocObject();
          *(v66 + 16) = v83;
          *(v66 + 24) = v58;
          v67 = v63[2];

          v68 = swift_isUniquelyReferenced_nonNull_native();
          if (!v68 || v67 >= v31[3] >> 1)
          {
            v31 = sub_6AA00(v68, v67 + 1, 1, v31);
          }

          v32 = &selRef__authenticateReturningError_;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D90, &qword_AF9030);
          swift_arrayDestroy();
          v54 = v31[2];
          memmove(v31 + 6, v31 + 4, 16 * v54);
          v31[2] = v54 + 1;
          v31[4] = sub_2D4D0;
          v31[5] = v66;
          v40 = v81;
          v53 = a1;
        }

        --v51;
        v52 -= 24;
        v55 = __CFADD__(v50++, 1);
        v48 = v84;
      }

      while (!v55);
      v34 = v79;
      if (*(*(v40 + 16) + 16))
      {

        v21 = v75;
        v23 = v73;
        v29 = v77;
        v33 = v78;
        goto LABEL_37;
      }

      v23 = v73;
      v29 = v77;
      v33 = v78;
    }

    else
    {

      v29 = v77;
      v33 = v78;
      v34 = v79;
    }

    v35 = *(v80 + 24);
    [v35 removeObjectForKey:v34];

    v21 = v75;
LABEL_37:

    v25 = v33;
    v30 = v74;
  }

  v36 = v29;
  v37 = v25;
  v38 = v29;
  if (v25)
  {
LABEL_43:
    v78 = (v37 - 1) & v37;
    v39 = (v38 << 9) | (8 * __clz(__rbit64(v37)));
    v40 = *(*(v21 + 56) + v39);
    v41 = *(*(v21 + 48) + v39);

    v79 = v41;
    if (!v41)
    {
      goto LABEL_64;
    }

    goto LABEL_47;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v30)
    {
      goto LABEL_64;
    }

    v37 = *(v23 + 8 * v38);
    ++v36;
    if (v37)
    {
      goto LABEL_43;
    }
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  sub_ABB4C0();
  __break(1u);
}

void sub_274318(void *a1, void (*a2)(void), uint64_t a3)
{
  if ([a1 isViewLoaded])
  {
    v7 = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:0];

    v8 = v7;
    v35 = [a1 view];
    v9 = *(v3 + 16);
    v10 = [v9 allObjects];
    _s9ComponentCMa(0);
    v11 = sub_AB9760();

    v34 = v8;
    v32 = a2;
    v33 = a3;
    v30 = v3;
    v31 = a1;
    if (v11 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v14 = 0;
LABEL_6:
      while (2)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = sub_3602B8(v14, v11, v12);
          v16 = __OFADD__(v14++, 1);
          if (!v16)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (v14 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_30;
          }

          v15 = *(v11 + 32 + 8 * v14);

          v16 = __OFADD__(v14++, 1);
          if (!v16)
          {
LABEL_12:
            v17 = *(v15 + 112);
            while (1)
            {
              v18 = v17;
              if (v35)
              {
                sub_13C80(0, &qword_DF12A0, UIView_ptr);
                v19 = v18;
                v20 = v35;
                v21 = sub_ABA790();

                if (v21)
                {
                  break;
                }
              }

              v17 = [v18 superview];

              if (!v17)
              {

                if (v14 == i)
                {
                  goto LABEL_17;
                }

                goto LABEL_6;
              }
            }

            [v34 addObject:v15];

            if (v14 != i)
            {
              continue;
            }

            goto LABEL_17;
          }
        }

        break;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_17:

    if ([v34 count])
    {
      v22 = [*(v30 + 24) objectForKey:v31];
      if (!v22)
      {
        _s24LoadingStatusCoordinatorC12ObserverListCMa();
        v22 = swift_allocObject();
        *(v22 + 2) = _swiftEmptyArrayStorage;
        v23 = *(v30 + 24);

        [v23 setObject:v22 forKey:v31];
      }

      swift_beginAccess();
      v24 = *(v22 + 2);

      v25 = v34;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 2) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_6B31C(0, *(v24 + 2) + 1, 1, v24);
        *(v22 + 2) = v24;
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_6B31C((v27 > 1), v28 + 1, 1, v24);
      }

      *(v24 + 2) = v28 + 1;
      v29 = &v24[24 * v28];
      *(v29 + 4) = v32;
      *(v29 + 5) = v33;
      *(v29 + 6) = v25;
      *(v22 + 2) = v24;
      swift_endAccess();
    }

    else
    {
      v32();
    }
  }

  else
  {
    a2();
  }
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_274798()
{

  return swift_deallocClassInstance();
}

uint64_t sub_274830()
{

  return swift_deallocObject();
}

void sub_2748FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSMusicVideoViewModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication28JSMusicVideoViewModelRequest_musicVideoViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication28JSMusicVideoViewModelRequest_musicVideoViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication28JSMusicVideoViewModelRequest_musicVideoViewModel] = v5;
    v7 = v5;
  }
}

double sub_274A20(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_275A48, v12);

  return result;
}

double sub_274AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_274D90(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication37JSMusicVideoViewModelRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication28JSMusicVideoViewModelRequest_musicVideoViewModel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = v2;
  v5 = [v1 itemProperties];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v1 itemKind];
  if (!v7 || (v8 = v7, [v7 modelClass], v8, swift_getObjCClassMetadata(), (v9 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
  {
    v9 = [objc_opt_self() emptyPropertySet];
  }

  v10 = [v6 propertySetByCombiningWithPropertySet:v9];

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  v12 = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11[3] = v12;

LABEL_9:
  v13 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v14 = sub_AB9260();
  [v13 appendSection:v14];

  v15 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v16 = sub_AB9260();
  [v15 appendSection:v16];

  v17 = JSMusicVideoViewModel.item.getter();
  if (!v17)
  {
LABEL_15:
    v26 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v13];
    [v26 setRepresentedObjects:v15];
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = a1;
    v31[4] = sub_27595C;
    v31[5] = v27;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 1107296256;
    v31[2] = sub_151E0;
    v31[3] = &block_descriptor_27_3;
    v28 = _Block_copy(v31);
    v29 = v1;
    v30 = a1;

    [v26 performWithResponseHandler:v28];
    _Block_release(v28);

    return;
  }

  v18 = v17;
  if (!v11)
  {
LABEL_14:

    goto LABEL_15;
  }

  v19 = [a1 userIdentity];
  if (v19)
  {
    v20 = v19;
    sub_4D3314(v18, v19);
    v22 = v21;
    v24 = v23;

    if (v22)
    {
      [v15 appendItem:v18];
      v25 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v22 personalizationStyle:v24];
      [v13 appendItem:v25];

      v18 = v25;
    }

    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_27513C(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSMusicVideoViewModelResponse());
    v9 = a1;
    v13 = sub_275398(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication37JSMusicVideoViewModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication37JSMusicVideoViewModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_275398(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication29JSMusicVideoViewModelResponse_itemDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication29JSMusicVideoViewModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication29JSMusicVideoViewModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication29JSMusicVideoViewModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSMusicVideoViewModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication28JSMusicVideoViewModelRequest_musicVideoViewModel];
    v12 = v11;
    v13 = *JSMusicVideoViewModel.itemDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication29JSMusicVideoViewModelResponse_itemDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication29JSMusicVideoViewModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2757C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_27588C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

double block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2758DC()
{

  return swift_deallocObject();
}

uint64_t sub_27591C()
{

  return swift_deallocObject();
}

uint64_t sub_275964()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_27599C()
{

  return swift_deallocObject();
}

uint64_t sub_2759F0()
{

  return swift_deallocObject();
}

uint64_t sub_275A58()
{

  return swift_deallocObject();
}

void sub_275B0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_119878;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  *a4 = v9;
}

id sub_275BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  sub_B9A4C();
  if (v7 == &dword_0 + 2)
  {
    v8 = a2;
    v9 = a2;
    v10 = a3;
  }

  else
  {
    v8 = a4;
    v9 = a4;
    v10 = a4;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v8, v9, v10, 1.0);
}

id sub_275C58()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
  qword_E713D8 = result;
  return result;
}

double block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_275D20()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView);
  }

  else
  {
    v4 = sub_275D84(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_275D84(uint64_t a1)
{
  v24 = a1;
  v25 = sub_AB2E70();
  v1 = *(v25 - 8);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB2F20();
  v4 = *(v23 - 8);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v21 - v7;
  v9 = sub_AB2F50();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(UITextView) init];
  [v12 setEditable:0];
  v13 = [v12 textContainer];
  [v13 setLineFragmentPadding:0.0];

  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v14 setMinimumLineHeight:22.0];
  [v14 copy];
  sub_ABAB50();
  sub_13C80(0, &qword_DF0930, NSParagraphStyle_ptr);
  swift_dynamicCast();
  v15 = v28;

  swift_unknownObjectRelease();
  sub_AB2F40();
  v29 = v15;
  sub_B4908();
  v22 = v15;
  sub_AB2F70();
  v29 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_B4860();
  sub_AB2F70();
  v16 = *(v24 + OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController_descriptionText + 8);
  v29 = *(v24 + OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController_descriptionText);
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750, &unk_AFD830);
  swift_allocObject();

  v17 = v23;
  sub_AB3890();
  sub_AB3880();

  v18 = v25;
  (*(v1 + 104))(v3, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v25);
  sub_AB2E40();
  (*(v1 + 8))(v3, v18);
  sub_13C80(0, &unk_DECB20, NSAttributedString_ptr);
  (*(v4 + 16))(v6, v8, v17);
  v19 = sub_ABA1C0();
  [v12 setAttributedText:v19];

  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v12 setTextColor:qword_E718D8];

  (*(v4 + 8))(v8, v17);
  (*(v26 + 8))(v11, v27);
  return v12;
}

void sub_27625C()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v3 = v2;
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor:qword_E71898];

  v4 = [v1 view];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = sub_275D20();
  [v5 addSubview:v6];

  v7 = [v1 navigationItem];
  v8 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"dismissAnimated"];
  [v7 setRightBarButtonItem:v8];

  v9 = [v1 navigationItem];
  v10 = [v9 rightBarButtonItem];

  if (v10)
  {
    v11 = AccessibilityIdentifier.doneButton.unsafeMutableAddressor();
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v12, v13, v16, v14, v15);
  }

  sub_27651C(0.0, 0.0, 540.0, 0.0);
  v17 = OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView] sizeThatFits:{540.0, 0.0}];
  if (v18 > 648.0)
  {
    v18 = 648.0;
  }

  [v1 setPreferredContentSize:{540.0, v18}];
  v19 = *&v1[v17];
  [v19 textContainerInset];
  [v19 contentOffset];
  [v19 setContentOffset:?];
}

id sub_27651C(double a1, double a2, double a3, double a4)
{
  Width = CGRectGetWidth(*&a1);
  v6 = HI.SizeClass.init(_:)(Width);
  v7 = HI.SizeClass.margin.getter(v6);
  v8 = sub_275D20();
  [v8 textContainerInset];

  v9 = OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView;
  [*(v4 + OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView) adjustedContentInset];
  if (24.0 - v10 < 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 24.0 - v10;
  }

  result = [*(v4 + v9) textContainerInset];
  if (v16 != 24.0 || v7 != v13 || v11 != v14 || v7 != v15)
  {
    v20 = *(v4 + v9);

    return [v20 setTextContainerInset:{24.0, v7, v11, v7}];
  }

  return result;
}

id sub_276650()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v1 = sub_275D20();
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    [v1 setFrame:?];

    result = [v0 view];
    if (result)
    {
      v4 = result;
      [result bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      return sub_27651C(v6, v8, v10, v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_276850(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v108 = v102 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v107 = v102 - v11;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v105 = *(v12 - 8);
  v106 = v12;
  __chkstk_darwin();
  v14 = (v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_title];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artist];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_duration];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_genre];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v19 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_year];
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_lockupImageArtworkCatalog] = 0;
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_buildMenu];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusObserver;
  type metadata accessor for LibraryAddKeepLocalStatusObserver();
  swift_allocObject();
  *&v4[v23] = sub_259C34();
  v24 = &v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = xmmword_B03DA0;
  *&v4[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusControllableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalControl;
  SymbolButton.Configuration.init()(v14);
  v26 = type metadata accessor for SymbolButton(0);
  v27 = objc_allocWithZone(v26);
  *&v4[v25] = SymbolButton.init(configuration:handler:)(v14, 0, 0);
  v28 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_contextualActionsButton;
  v29 = SymbolButton.Configuration.contextualAction.unsafeMutableAddressor();
  sub_BD494(v29, v14);
  v30 = objc_allocWithZone(v26);
  *&v4[v28] = SymbolButton.init(configuration:handler:)(v14, 0, 0);
  v31 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView;
  *&v4[v31] = [objc_allocWithZone(type metadata accessor for VideoHeaderLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v32 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_titleLabel;
  v33 = [objc_allocWithZone(UILabel) init];
  [v33 setNumberOfLines:1];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v33 setTextColor:qword_E718D8];
  *&v5[v32] = v33;
  *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView____lazy_storage___actionableBylineView] = 0;
  v34 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_detailLabel;
  v35 = [objc_allocWithZone(UILabel) init];
  [v35 setNumberOfLines:1];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v35 setTextColor:qword_E718C8];
  *&v5[v34] = v35;
  v36 = type metadata accessor for MusicVideoDetailHeaderLockupView();
  v110.receiver = v5;
  v110.super_class = v36;
  v37 = objc_msgSendSuper2(&v110, "initWithFrame:", a1, a2, a3, a4);
  v38 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalControl;
  v39 = *&v37[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalControl];
  v40 = *(&stru_1A8.reloff + (swift_isaMask & *v39));
  v109 = v37;
  v41 = v39;

  v43 = v107;
  v40(v42);
  v105[7](v43, 0, 1, v106);
  sub_25A964(v43, 0, v14);
  sub_12E1C(v43, &unk_DFAAB0, qword_B05AE0);

  (*(&stru_1A8.flags + (swift_isaMask & *v41)))(v14);

  v44 = *&v37[v38];
  v45 = swift_allocObject();
  v46 = v109;
  swift_unknownObjectWeakInit();
  v47 = *(&stru_108.reloff + (swift_isaMask & *v44));
  v48 = v44;

  v47(sub_279714, v45);

  v49 = v46;
  v50 = *&v46[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView];
  v51 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = &v50[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  v54 = *&v50[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  v55 = *&v50[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler + 8];
  *v53 = sub_27971C;
  v53[1] = v52;
  v56 = v50;

  sub_17654(v54, v55);

  v57 = *&v49[v51];
  v58 = v49;
  v107 = v51;
  v59 = v57;
  v60 = UIView.Corner.medium.unsafeMutableAddressor();
  v61 = sub_ABA680();
  v62 = *(v61 - 8);
  v63 = v108;
  (*(v62 + 16))(v108, v60, v61);
  (*(v62 + 56))(v63, 0, 1, v61);
  v64 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(v63, v59 + v64);
  swift_endAccess();
  sub_25D6BC();
  sub_12E1C(v63, &unk_DFFBC0, &unk_AF85C0);

  v65 = *&v58[v51];
  v66 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v67 = *v66;
  v68 = v66[1];
  v69 = v66[2];
  v70 = v66[3];
  v72 = v66[5];
  v108 = v66[4];
  v71 = v108;
  v106 = v72;
  v73 = &v65[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  v105 = *&v65[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  v104 = *&v65[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 8];
  v74 = *&v65[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 24];
  v103 = *&v65[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 16];
  v102[2] = *&v65[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 32];
  v102[1] = *&v65[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 40];
  *v73 = v67;
  *(v73 + 1) = v68;
  *(v73 + 2) = v69;
  *(v73 + 3) = v70;
  *(v73 + 4) = v71;
  *(v73 + 5) = v72;
  v75 = v69;
  v76 = v70;
  v77 = v67;
  v78 = v68;
  v79 = v75;
  v80 = v76;
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v81;
  v86 = v82;
  sub_2F1C8(v105, v104, v103, v74);
  v87 = *&v65[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent];
  v88 = *(v87 + 168);
  v111[0] = *(v87 + 152);
  v111[1] = v88;
  v111[2] = *(v87 + 184);
  *(v87 + 152) = v67;
  *(v87 + 160) = v68;
  *(v87 + 168) = v69;
  *(v87 + 176) = v70;
  v89 = v106;
  *(v87 + 184) = v108;
  *(v87 + 192) = v89;
  v90 = v85;
  v91 = v86;
  v92 = v83;
  v93 = v84;

  sub_75948(v111);
  sub_12E1C(v111, &unk_DF8690, &unk_AF9900);

  v94 = v109;
  v95 = v107;
  v96 = *&v107[v109];
  v97 = v96[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle];
  v96[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle] = 2;
  v98 = v96;
  sub_25D814(v97);

  v99 = *&v95[v94];
  v99[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled] = 1;
  v100 = v99;
  sub_25DF4C();

  return v94;
}

void sub_2771C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusControllableDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      swift_getObjectType();
      v6 = *(v5 + 8);
      v7 = v3;
      v6();
      swift_unknownObjectRelease();
    }
  }
}

void sub_27729C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler + 8);

      v3(v5);
      sub_17654(v3, v4);
    }
  }
}

double sub_277374(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (!v7 && (sub_ABB3C0() & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_titleLabel];

    v9 = sub_AB9260();

    [v8 setText:v9];

    [v2 setNeedsLayout];
  }

  return result;
}

double sub_27746C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[*a3];
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v3[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_detailLabel];
    sub_278968();
    v10 = sub_AB9260();

    [v9 setText:v10];

    [v3 setNeedsLayout];
  }

  return result;
}

double sub_27753C(void *a1, CGFloat a2)
{
  sub_45B2C4(a1, 0.0, 0.0, a2, 1.79769313e308);
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, &v27, a2);
  [a1 displayScale];
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = a2;
  v29.size.height = 1.79769313e308;
  CGRectGetWidth(v29);
  sub_AB3A00();
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, v28, a2);
  [a1 displayScale];
  sub_AB3A00();
  [a1 displayScale];
  [v2 music_inheritedLayoutInsets];
  v6 = v5;
  [*&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_titleLabel] _firstBaselineOffsetFromTop];
  v8 = v7;
  v9 = sub_278774();
  v10 = [v9 titleLabel];
  if (v10)
  {
    v11 = v10;
    [v10 _firstBaselineOffsetFromTop];
    v13 = v12;

    v9 = v11;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_detailLabel;
  [*&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_detailLabel] _firstBaselineOffsetFromTop];
  v16 = v15;
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    sub_AB3A00();
    v18 = v6 + v8 + 0.0 + v13 + v16 + v17 + 8.0;
    [*&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalControl] frame];
    MinX = CGRectGetMinX(v30);
    [*&v2[v14] frame];
    if (MinX < CGRectGetMaxX(v31))
    {
      v20 = [a1 horizontalSizeClass];
      sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
      if (v20 == &dword_0 + 1)
      {
        v21 = 28.0;
      }

      else
      {
        v21 = 34.0;
      }

      v22 = sub_ABA560();
      [v22 _scaledValueForValue:v21];
      v24 = v23;

      return v18 + v24;
    }
  }

  else
  {
    sub_AB3A00();
    return v6 + v25;
  }

  return v18;
}

void sub_277828(uint64_t a1)
{
  v2 = v1;
  v160.receiver = v1;
  v160.super_class = type metadata accessor for MusicVideoDetailHeaderLockupView();
  objc_msgSendSuper2(&v160, "layoutSubviews");
  v3 = [v1 traitCollection];
  [v3 displayScale];
  [v1 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v151 = v5;
  v148 = v9;
  v154 = UIEdgeInsetsInsetRect(v10, v12, v14, v16, v5, v7);
  v156 = v18;
  rect = v19;
  v158 = v20;
  [v3 horizontalSizeClass];
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v21 = sub_ABA560();
  v22 = [v3 horizontalSizeClass];
  v23 = 44.0;
  if (v22 == &dword_0 + 1)
  {
    v23 = 28.0;
  }

  v142 = v23;
  v24 = sub_ABA560();
  v25 = [v3 horizontalSizeClass];
  v26 = 34.0;
  if (v25 == &dword_0 + 1)
  {
    v26 = 28.0;
  }

  v150 = v26;
  v153 = sub_ABA560();
  sub_45B2C4(v3, v11, v13, v15, v17);
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, v161, v15);
  [v3 displayScale];
  v163.origin.x = v11;
  v27 = v154;
  v163.origin.y = v13;
  v163.size.width = v15;
  v163.size.height = v17;
  CGRectGetWidth(v163);
  v28 = v156;
  sub_AB3A00();
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, v162, v15);
  [v3 displayScale];
  sub_AB3A00();
  v30 = v29;
  sub_AB3A00();
  v32 = v31;
  v33 = *&v1[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView];
  [*&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView] setFrame:{v154, v156, v30, v31}];
  if (([v33 isDescendantOfView:v2] & 1) == 0)
  {
    [v2 addSubview:v33];
  }

  v145 = [v3 horizontalSizeClass];
  v140 = v33;
  if (v145 == &dword_0 + 1)
  {
    v28 = v156 + v32 + 8.0;
    v34 = rect;
    v35 = v158 - (v32 + 8.0);
  }

  else
  {
    v27 = v154 + v30 + 18.0;
    v35 = v158;
    v34 = rect - (v30 + 18.0);
  }

  v164.origin.x = v27;
  v164.origin.y = v28;
  v164.size.width = v34;
  v164.size.height = v35;
  Width = CGRectGetWidth(v164);
  v165.origin.x = v27;
  v165.origin.y = v28;
  v165.size.width = v34;
  v165.size.height = v35;
  v37 = CGRectGetHeight(v165) - v151 - v148;
  v38 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_titleLabel;
  v39 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_titleLabel];
  [v39 setFont:v21];
  if (([v39 isDescendantOfView:v2] & 1) == 0)
  {
    [v2 addSubview:v39];
  }

  v146 = v39;
  v149 = v21;
  v40 = *&v2[v38];
  [v40 frame];
  [v40 sizeThatFits:{Width, v37}];
  v42 = v41;
  if (Width < v41)
  {
    sub_AB3A10();
    v42 = v43;
  }

  v152 = Width;
  v147 = v37;
  sub_AB3A10();
  v45 = v44;
  v166.origin.x = v27;
  v166.origin.y = v28;
  v166.size.width = v34;
  v166.size.height = v35;
  left = UIEdgeInsetsZero.left;
  v46 = CGRectGetMinX(v166) - left;
  v155.origin.x = v27;
  v155.origin.y = v28;
  v167.origin.x = v27;
  v167.origin.y = v28;
  v155.size.width = v34;
  v155.size.height = v35;
  v167.size.width = v34;
  v167.size.height = v35;
  v47 = CGRectGetMinY(v167) - UIEdgeInsetsZero.top;
  sub_ABA490();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  type metadata accessor for CGRect(0);
  [v40 frame];
  if (sub_AB38D0())
  {
    [v40 setFrame:{v49, v51, v53, v55}];
  }

  v168.origin.x = v46;
  v168.origin.y = v47;
  v168.size.width = v42;
  v168.size.height = v45;
  v56 = v147 - CGRectGetHeight(v168);
  if (v56 > 0.0)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0.0;
  }

  v169.origin.x = v46;
  v169.origin.y = v47;
  v169.size.width = v42;
  v169.size.height = v45;
  CGRectGetMaxY(v169);
  [v40 _baselineOffsetFromBottom];

  v58 = sub_278774();
  v59 = [v58 titleLabel];

  if (v59)
  {
    [v59 setFont:v24];
  }

  v60 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView____lazy_storage___actionableBylineView;
  if (([*&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView____lazy_storage___actionableBylineView] isDescendantOfView:{v2, v140}] & 1) == 0)
  {
    [v2 addSubview:*&v2[v60]];
  }

  v61 = *&v2[v60];
  [v24 _scaledValueForValue:v142];
  v62 = v61;
  [v62 frame];
  [v62 sizeThatFits:{v152, v57}];
  v64 = v63;
  if (v152 < v63)
  {
    sub_AB3A10();
    v64 = v65;
  }

  v143 = v57;
  sub_AB3A10();
  v67 = v66;
  [v62 contentRectForBounds:{0.0, 0.0, v64, v66}];
  [v62 titleRectForContentRect:?];
  x = v170.origin.x;
  y = v170.origin.y;
  v70 = v170.size.width;
  height = v170.size.height;
  CGRectGetMinY(v170);
  v171.origin.x = 0.0;
  v171.origin.y = 0.0;
  v171.size.width = v64;
  v171.size.height = v67;
  CGRectGetMinY(v171);
  v172.origin.x = x;
  v172.origin.y = y;
  v172.size.width = v70;
  v172.size.height = height;
  MinX = CGRectGetMinX(v172);
  v173.origin.x = 0.0;
  v173.origin.y = 0.0;
  v173.size.width = v64;
  v173.size.height = v67;
  v73 = MinX - CGRectGetMinX(v173);
  v174.origin.x = 0.0;
  v174.origin.y = 0.0;
  v174.size.width = v64;
  v174.size.height = v67;
  CGRectGetMaxY(v174);
  v175.origin.x = x;
  v175.origin.y = y;
  v175.size.width = v70;
  v175.size.height = height;
  CGRectGetMaxY(v175);
  v176.origin.x = 0.0;
  v176.origin.y = 0.0;
  v176.size.width = v64;
  v176.size.height = v67;
  CGRectGetMaxX(v176);
  v177.origin.x = x;
  v177.origin.y = y;
  v177.size.width = v70;
  v177.size.height = height;
  CGRectGetMaxX(v177);
  v74 = CGRectGetMinX(v155) - v73;
  v75 = [v62 titleLabel];
  if (v75)
  {
    v76 = v75;
    [v75 _firstBaselineOffsetFromTop];
  }

  sub_AB3A10();
  v78 = v77;
  sub_ABA490();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  [v62 frame];
  if (sub_AB38D0())
  {
    [v62 setFrame:{v80, v82, v84, v86}];
  }

  v178.origin.x = v74;
  v178.origin.y = v78;
  v178.size.width = v64;
  v178.size.height = v67;
  v87 = v143 - CGRectGetHeight(v178);
  if (v87 > 0.0)
  {
    v88 = v87;
  }

  else
  {
    v88 = 0.0;
  }

  v179.origin.x = v74;
  v179.origin.y = v78;
  v179.size.width = v64;
  v179.size.height = v67;
  CGRectGetMaxY(v179);
  v89 = [v62 titleLabel];
  v90 = v62;
  if (v89)
  {
    v90 = v89;
    [v89 _baselineOffsetFromBottom];
  }

  v91 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_detailLabel;
  v92 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_detailLabel];
  [v92 setFont:v153];
  if (([v92 isDescendantOfView:v2] & 1) == 0)
  {
    [v2 addSubview:v92];
  }

  v93 = *&v2[v91];
  [v153 _scaledValueForValue:v150];
  v94 = v93;
  [v94 frame];
  [v94 sizeThatFits:{v152, v88}];
  v96 = v95;
  if (v152 < v95)
  {
    sub_AB3A10();
    v96 = v97;
  }

  sub_AB3A10();
  v99 = v98;
  v100 = CGRectGetMinX(v155) - left;
  [v94 _firstBaselineOffsetFromTop];
  sub_AB3A10();
  v102 = v101;
  sub_ABA490();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  [v94 frame];
  if (sub_AB38D0())
  {
    [v94 setFrame:{v104, v106, v108, v110}];
  }

  v180.origin.x = v100;
  v180.origin.y = v102;
  v180.size.width = v96;
  v180.size.height = v99;
  CGRectGetHeight(v180);
  v181.origin.x = v100;
  v181.origin.y = v102;
  v181.size.width = v96;
  v181.size.height = v99;
  [v94 _baselineOffsetFromBottom];

  v111 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_contextualActionsButton];
  if (([v111 isDescendantOfView:v2] & 1) == 0)
  {
    [v2 addSubview:v111];
  }

  [v111 frame];
  v113 = v112;
  v115 = v114;
  sub_ABA510();
  [v111 sizeThatFits:?];
  v117 = v116;
  v119 = v118;
  v120 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalControl];
  [v120 sizeThatFits:{0.0, 0.0}];
  v122 = v121;
  v159 = v123;
  v124 = v155.size.height;
  v125 = v155.origin.x;
  v126 = v155.origin.y;
  if (v145 == &dword_0 + 1)
  {
    v127 = v155.size.width;
    MaxX = CGRectGetMaxX(*&v125);
    v182.origin.x = v113;
    v182.origin.y = v115;
    v182.size.width = v117;
    v182.size.height = v119;
    v129 = MaxX - CGRectGetWidth(v182);
    [v92 frame];
    MaxY = CGRectGetMaxY(v183);
    v184.origin.x = v129;
    v184.origin.y = v115;
    v184.size.width = v117;
    v184.size.height = v119;
    v131 = ceil(MaxY - CGRectGetHeight(v184)) + 2.0;
    [*&v2[v91] frame];
    if (v129 + -24.0 - v122 < CGRectGetMaxX(v185))
    {
      [v153 _scaledValueForValue:v150];
      v131 = v131 + v132 + 4.0;
    }

    v133 = &selRef__authenticateReturningError_;
    sub_ABA490();
  }

  else
  {
    v134 = v155.size.width;
    v129 = v122 + CGRectGetMinX(*&v125) + 24.0;
    [v141 frame];
    v135 = CGRectGetMaxY(v186);
    v187.origin.x = v129;
    v187.origin.y = v115;
    v187.size.width = v117;
    v187.size.height = v119;
    v131 = ceil(v135 - CGRectGetHeight(v187));
    sub_ABA490();
    v133 = &selRef__authenticateReturningError_;
  }

  [v111 v133[262]];
  [v120 setHidden:0];
  if (([v120 isDescendantOfView:v2] & 1) == 0)
  {
    [v2 addSubview:v120];
  }

  [v120 frame];
  v137 = v136;
  v139 = v138;
  v188.origin.x = v129;
  v188.origin.y = v131;
  v188.size.width = v117;
  v188.size.height = v119;
  CGRectGetMinX(v188);
  v189.origin.x = v137;
  v189.origin.y = v139;
  v189.size.width = v122;
  v189.size.height = v159;
  CGRectGetWidth(v189);
  v190.origin.x = v129;
  v190.origin.y = v131;
  v190.size.width = v117;
  v190.size.height = v119;
  CGRectGetMinY(v190);
  sub_ABA490();
  [v120 v133[262]];
}

void sub_278660(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = *a2;
  v12 = a2[1];
  v3 = *(a2 + 32);
  v4 = *(a2 + 5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong traitCollection];
    rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

    if ((rawValue & 2) != 0 || (v9 = [v6 traitCollection], v10 = UITraitCollection.isMediaPicker.getter(v9), v9, v10))
    {
      v4 = 0;
      v13 = 0u;
      v14 = 0u;
      v15 = 248;
    }

    else
    {
      v13 = v11;
      v14 = v12;
      v15 = v3;
    }

    v16 = v4;
    [objc_opt_self() areAnimationsEnabled];
    sub_278D7C(&v13);
  }
}

id sub_278774()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView____lazy_storage___actionableBylineView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView____lazy_storage___actionableBylineView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView____lazy_storage___actionableBylineView);
  }

  else
  {
    v4 = sub_2787D4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2787D4()
{
  v0 = [objc_opt_self() buttonWithType:1];
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setLineBreakMode:4];
  }

  [v0 setContentHorizontalAlignment:1];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = sub_13C80(0, &qword_DF13D0, UIButton_ptr);
  ControlEventHandling<>.on(_:handler:)(64, sub_279304, v3, v4);

  return v0;
}

void sub_2788D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler);
    if (v5)
    {
      v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler + 8);

      v5(a1);
      sub_17654(v5, v6);
    }
  }
}

uint64_t sub_278968()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_genre);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_genre);
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_genre + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_year);
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_year + 8);
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_year) & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  if (v7)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10, &unk_B071A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_AF85F0;
    v10 = *v1;
    v9 = v1[1];
    *(v8 + 56) = &type metadata for String;
    v11 = sub_2792B0();
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;
    v12 = *v5;
    v13 = v5[1];
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v11;
    *(v8 + 64) = v11;
    *(v8 + 72) = v12;
    *(v8 + 80) = v13;

    v2 = sub_AB92E0();
  }

  else
  {
  }

  return v2;
}

id sub_278B6C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MusicVideoDetailHeaderLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_278D0C(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusControllableDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_278D5C@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus);
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus);
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

double sub_278D7C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus];
  v11 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus + 24];
  v12 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus + 32];
  v13 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v13;
  v14 = *(a1 + 32);
  *(v10 + 2) = v14;
  if ((v12 & 0xFE) == 0xF8)
  {
    v11 = 0.0;
  }

  LOBYTE(v15) = 122;
  if ((v12 & 0xFE) == 0xF8)
  {
    v16 = 122;
  }

  else
  {
    v16 = v12;
  }

  if ((*(a1 + 32) & 0xFELL) == 0xF8)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *(a1 + 24);
    v15 = *(a1 + 32);
  }

  if ((v16 & 0xFFFFFFFE) != 0x7A)
  {
    if ((v15 & 0xFE) == 0x7A)
    {
      [*&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalControl] setHidden:1];
      goto LABEL_14;
    }

    v21 = v16 >> 1;
    if (v21 <= 0x7C)
    {
      if (v21 == 62)
      {
        if ((v15 & 0xFE) == 0x7C)
        {
          return *&v14;
        }

        goto LABEL_11;
      }

      if (v21 == 63)
      {
        if ((v15 & 0xFE) == 0x7E)
        {
          return *&v14;
        }

        goto LABEL_11;
      }
    }

    else
    {
      switch(v21)
      {
        case '}':
          if ((v15 & 0xFE) == 0xFA)
          {
            return *&v14;
          }

          goto LABEL_11;
        case '~':
          if ((v15 & 0xFE) == 0xFC)
          {
            return *&v14;
          }

          goto LABEL_11;
        case '\x7F':
          if (v15 > 0xFDu)
          {
            return *&v14;
          }

          goto LABEL_11;
      }
    }

    v22 = v15 >> 1;
    if ((v22 - 125) >= 3 && (v22 - 62) >= 2)
    {
      if (v16 < 0)
      {
        if ((v15 & 0x80) == 0 || *&v11 != *&v17)
        {
          goto LABEL_11;
        }

        return *&v14;
      }

      if ((v15 & 0x80) == 0)
      {
        if (v16)
        {
          if (v15)
          {
            return *&v14;
          }

          goto LABEL_11;
        }

        if ((v15 & 1) == 0)
        {
          *&v14 = v11;
          if (v11 == v17)
          {
            return *&v14;
          }
        }
      }
    }

LABEL_11:
    v18 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalControl];
    v19 = [v18 setHidden:(v15 & 0xFE) == 124];
    (*(&stru_1A8.reloff + (swift_isaMask & *v18)))(v19);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_25A964(v5, 0, v9);
    sub_12E1C(v5, &unk_DFAAB0, qword_B05AE0);
    v20 = SymbolButton.Animation.default.unsafeMutableAddressor();
    (*&stru_1F8.segname[(swift_isaMask & *v18) + 8])(v9, *v20, v20[1], v20[2], 0, _swiftEmptyArrayStorage);
    sub_BD4F8(v9);
LABEL_14:
    [v2 setNeedsLayout];
    return *&v14;
  }

  if ((v15 & 0xFE) != 0x7A)
  {
    goto LABEL_11;
  }

  return *&v14;
}

double sub_27914C(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusObserver);
    *(v2 + 32) = UIScreen.Dimensions.size.getter;
    *(v2 + 40) = 0;
    v4 = a1;

    v5 = *(v2 + 72);
    *(v2 + 72) = a1;
    v6 = v4;
    sub_25A2AC(v5);

    v7 = *(v2 + 104);
    v10[0] = *(v2 + 88);
    v10[1] = v7;
    v10[2] = *(v2 + 120);
    sub_278D7C(v10);

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 32) = sub_2792A8;
    *(v2 + 40) = v8;
  }

  return result;
}

uint64_t sub_279270()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_2792B0()
{
  result = qword_DFDE90;
  if (!qword_DFDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFDE90);
  }

  return result;
}

id sub_27930C(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_lockupImageArtworkCatalog];
  *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_lockupImageArtworkCatalog] = a1;
  v5 = a1;

  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView];
  v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog);
  *(v6 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = a1;
  v8 = v5;

  sub_74EA4(a1);

  return [v2 setNeedsLayout];
}

void sub_2793D0()
{
  v1 = v0;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artist);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_duration;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_genre);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_year);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_lockupImageArtworkCatalog) = 0;
  v9 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_buildMenu);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusObserver;
  type metadata accessor for LibraryAddKeepLocalStatusObserver();
  swift_allocObject();
  *(v0 + v12) = sub_259C34();
  v13 = (v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = xmmword_B03DA0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusControllableDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalControl;
  SymbolButton.Configuration.init()(v3);
  v15 = type metadata accessor for SymbolButton(0);
  v16 = objc_allocWithZone(v15);
  *(v0 + v14) = SymbolButton.init(configuration:handler:)(v3, 0, 0);
  v17 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_contextualActionsButton;
  v18 = SymbolButton.Configuration.contextualAction.unsafeMutableAddressor();
  sub_BD494(v18, v3);
  v19 = objc_allocWithZone(v15);
  *(v0 + v17) = SymbolButton.init(configuration:handler:)(v3, 0, 0);
  v20 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView;
  *(v1 + v20) = [objc_allocWithZone(type metadata accessor for VideoHeaderLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_titleLabel;
  v22 = [objc_allocWithZone(UILabel) init];
  [v22 setNumberOfLines:1];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v22 setTextColor:qword_E718D8];
  *(v1 + v21) = v22;
  *(v1 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView____lazy_storage___actionableBylineView) = 0;
  v23 = OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_detailLabel;
  v24 = [objc_allocWithZone(UILabel) init];
  [v24 setNumberOfLines:1];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v24 setTextColor:qword_E718C8];
  *(v1 + v23) = v24;
  sub_ABAFD0();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication18ImpressionsElementV9ComponentO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication18ImpressionsElementV9ComponentOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 8;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_279794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2797F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27987C(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        return 0x666C656853;
      }

      else
      {
        return 0x657449666C656853;
      }
    }

    if (a1 == 6)
    {
      return 1802398060;
    }

    if (a1 == 7)
    {
      return 0x6954656C62627562;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x7265746C6966;
      }

      else
      {
        return 0x6D6574497473694CLL;
      }
    }

    if (!a1)
    {
      return 0x4C746E65746E6F43;
    }

    if (a1 == 1)
    {
      return 0x7473694C746E6948;
    }
  }

  swift_getObjectType();
  v4 = sub_ABB6D0();

  v5._countAndFlagsBits = 21322;
  v5._object = 0xE200000000000000;
  v2 = sub_AB9530(v5);

  if (v2)
  {
    v3 = sub_AB9420();
    sub_279A40(v3);
  }

  return v4;
}

uint64_t sub_279A40(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_AB9450();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_AB93C0();
}

unint64_t sub_279AC8(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
    case 16:
      result = 0x7473696C79616C70;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65506C6169636F73;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 0x776F68537674;
      break;
    case 7:
      result = 0x646F736970457674;
      break;
    case 8:
      result = 0x7265736F706D6F63;
      break;
    case 9:
      result = 0x726F7461727563;
      break;
    case 10:
      result = 0x65726E6567;
      break;
    case 11:
      result = 0x6174536F69646172;
      break;
    case 12:
      result = 0x686372616573;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6E6F736165537674;
      break;
    case 17:
      result = 0x497972617262696CLL;
      break;
    case 18:
      result = 0x614C64726F636572;
      break;
    case 19:
      result = 0x4173746964657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_279D24(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C6C616D73;
  }

  else
  {
    v2 = 0x656772616CLL;
  }

  if (*a2)
  {
    v3 = 0x6C6C616D73;
  }

  else
  {
    v3 = 0x656772616CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_ABB3C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_279DA4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_279E14(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_279E68(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_279ED4(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CF1040;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_279F34(uint64_t *a1@<X8>)
{
  v2 = 0x656772616CLL;
  if (*v1)
  {
    v2 = 0x6C6C616D73;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_279F64(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_279AC8(*a1);
  v5 = v4;
  if (v3 == sub_279AC8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_279FEC()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_279AC8(v1);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_27A050(uint64_t a1)
{
  sub_279AC8(*v1);
  sub_AB93F0();

  return result;
}

Swift::Int sub_27A0A4(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_279AC8(v2);
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_27A104@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27F694(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_27A134@<X0>(unint64_t *a1@<X8>)
{
  result = sub_279AC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_27A160(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MPModelObject.bestIdentifier(for:)(0, 2u);
  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;

    v9 = [v8 innermostModelObject];
    sub_27A160(v9, &v92);

LABEL_3:
    v10 = v98;
    v11 = v96;
    v12 = v97;
    v13 = v94;
    v14 = v95;
    v4 = v92;
    v6 = v93;
LABEL_20:
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v10;
    return;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 name];
    if (v17)
    {
      v18 = v17;
      v13 = sub_AB92A0();
      v14 = v19;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v24 = [v16 name];
    if (v24)
    {
      v25 = v24;
      v11 = sub_AB92A0();
      v12 = v26;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v10 = 3;
    goto LABEL_20;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = [v20 name];
    if (v21)
    {
      v22 = v21;
      v13 = sub_AB92A0();
      v14 = v23;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = 4;
    goto LABEL_20;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 title];
    if (v29)
    {
      v30 = v29;
      v13 = sub_AB92A0();
      v14 = v31;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v36 = [v28 artist];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 name];
      if (v38)
      {
        v39 = v38;
        v11 = sub_AB92A0();
        v12 = v40;

        v10 = 0;
        goto LABEL_20;
      }
    }

    v11 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_20;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = [v32 name];
    if (v33)
    {
      v34 = v33;
      v13 = sub_AB92A0();
      v14 = v35;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = 8;
    goto LABEL_20;
  }

  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41)
  {
    v42 = [v41 name];
    if (v42)
    {
      v43 = v42;
      v13 = sub_AB92A0();
      v14 = v44;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = 9;
    goto LABEL_20;
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = [v45 name];
    if (v46)
    {
      v47 = v46;
      v13 = sub_AB92A0();
      v14 = v48;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = 10;
    goto LABEL_20;
  }

  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  if (v49)
  {
    v50 = [v49 name];
    if (v50)
    {
      v51 = v50;
      v13 = sub_AB92A0();
      v14 = v52;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = 1;
    goto LABEL_20;
  }

  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (v53)
  {
    v54 = [v53 name];
    if (v54)
    {
      v55 = v54;
      v13 = sub_AB92A0();
      v14 = v56;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = 11;
    goto LABEL_20;
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (v57)
  {
    v58 = v57;
    v59 = [v57 title];
    if (v59)
    {
      v60 = v59;
      v90 = sub_AB92A0();
      v62 = v61;
    }

    else
    {
      v90 = 0;
      v62 = 0;
    }

    v65 = [v58 artist];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 name];
      if (v67)
      {
        v68 = v67;
        v69 = sub_AB92A0();
        v71 = v70;

LABEL_64:
        v92 = v4;
        v93 = v6;
        v94 = v90;
        v95 = v62;
        v96 = v69;
        v97 = v71;
        v98 = 2;
        v72 = objc_opt_self();
        v73 = swift_allocObject();
        *(v73 + 16) = v58;
        *(v73 + 24) = &v92;
        v74 = swift_allocObject();
        *(v74 + 16) = sub_27F34C;
        *(v74 + 24) = v73;
        aBlock[4] = sub_2D4D0;
        aBlock[5] = v74;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1822E0;
        aBlock[3] = &block_descriptor_93;
        v75 = _Block_copy(aBlock);
        v76 = a1;

        [v72 performWithoutEnforcement:v75];
        _Block_release(v75);
        LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

        if ((v72 & 1) == 0)
        {
          v4 = v92;
          v6 = v93;
          v13 = v94;
          v14 = v95;
          v11 = v96;
          v12 = v97;
          v10 = v98;

          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_88;
      }
    }

    v69 = 0;
    v71 = 0;
    goto LABEL_64;
  }

  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (v63)
  {
    v11 = [v63 title];
    if (v11)
    {
      v13 = sub_AB92A0();
      v14 = v64;

      v11 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
    v10 = 6;
    goto LABEL_20;
  }

  objc_opt_self();
  v77 = swift_dynamicCastObjCClass();
  if (v77)
  {
    v11 = [v77 title];
    if (v11)
    {
      v13 = sub_AB92A0();
      v14 = v78;

      v11 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
    v10 = 7;
    goto LABEL_20;
  }

  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  if (v79)
  {
    v11 = [v79 title];
    if (v11)
    {
      v13 = sub_AB92A0();
      v14 = v80;

      v11 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
    v10 = 5;
    goto LABEL_20;
  }

  objc_opt_self();
  v81 = swift_dynamicCastObjCClass();
  if (v81)
  {
    v82 = [v81 innermostModelObject];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v13 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v10 = 16;
      goto LABEL_20;
    }

    sub_27A160(v82, &v92);

    goto LABEL_3;
  }

  objc_opt_self();
  v83 = swift_dynamicCastObjCClass();
  if (v83)
  {
    v11 = [v83 name];
    if (v11)
    {
      v13 = sub_AB92A0();
      v14 = v84;

      v11 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
    v10 = 18;
    goto LABEL_20;
  }

LABEL_88:
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_ABAD90(50);

  v92 = 0xD000000000000045;
  v93 = 0x8000000000B5B0A0;
  v85 = sub_27ECD0(&off_CEF7F8);
  MPModelObject.humanDescription(including:)(v85);
  v87 = v86;
  v89 = v88;

  v99._countAndFlagsBits = v87;
  v99._object = v89;
  sub_AB94A0(v99);

  sub_ABAFD0();
  __break(1u);
}

double sub_27AAD0(void *a1, uint64_t a2)
{
  v3 = [a1 cloudStatus];
  if (v3 == &dword_4 + 1 || v3 == &dword_0 + 3)
  {
    *a2 = xmmword_B071B0;
    *(a2 + 16) = xmmword_B071B0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 17;
  }

  return result;
}

uint64_t sub_27AB70()
{
  v1 = v0;
  v2 = sub_97E70(_swiftEmptyArrayStorage);
  v48 = v2;
  v3 = *(v1 + 152);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    strcpy(&v45, "sharedContent");
    HIWORD(v45) = -4864;
    sub_ABAD10();
    v46 = &type metadata for Bool;
    LOBYTE(v45) = 1;
    sub_9ACFC(&v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v2;
    sub_913C0(v44, v47, isUniquelyReferenced_nonNull_native);
    sub_8085C(v47);
    v2 = v49;
    *&v45 = 25705;
    *(&v45 + 1) = 0xE200000000000000;
    sub_ABAD10();
    v46 = &type metadata for String;
    strcpy(&v45, "SharedItem");
    BYTE11(v45) = 0;
    HIDWORD(v45) = -369098752;
    sub_9ACFC(&v45, v44);
LABEL_6:
    v7 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v2;
    sub_913C0(v44, v47, v7);
    sub_8085C(v47);
    v8 = v49;
    v48 = v49;
    goto LABEL_8;
  }

  *&v45 = 25705;
  *(&v45 + 1) = 0xE200000000000000;
  sub_ABAD10();
  v5 = v1[1];
  if (v5)
  {
    v6 = *v1;
    v46 = &type metadata for String;
    *&v45 = v6;
    *(&v45 + 1) = v5;
    sub_9ACFC(&v45, v44);

    goto LABEL_6;
  }

  sub_27B3D4(v47, &v45);
  sub_12E1C(&v45, &unk_DE8E40, &unk_AF8050);
  sub_8085C(v47);
  v8 = v48;
LABEL_8:
  *&v45 = 0x6973736572706D69;
  *(&v45 + 1) = 0xEF7865646E496E6FLL;
  sub_ABAD10();
  v9 = v1[5];
  v46 = &type metadata for Int;
  *&v45 = v9;
  sub_9ACFC(&v45, v44);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = v8;
  sub_913C0(v44, v47, v10);
  sub_8085C(v47);
  v11 = v49;
  v48 = v49;
  v12 = *(v1 + 50);
  if (v12 != 20)
  {
    *&v45 = 1684957547;
    *(&v45 + 1) = 0xE400000000000000;
    sub_ABAD10();
    v13 = sub_279AC8(v12);
    v46 = &type metadata for String;
    *&v45 = v13;
    *(&v45 + 1) = v14;
    sub_9ACFC(&v45, v44);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    sub_913C0(v44, v47, v15);
    sub_8085C(v47);
    v11 = v49;
    v48 = v49;
  }

  v16 = v1[8];
  if (v16)
  {
    v17 = v1[7];
    *&v45 = 0xD000000000000013;
    *(&v45 + 1) = 0x8000000000B5B050;
    sub_ABAD10();
    v46 = &type metadata for String;
    *&v45 = v17;
    *(&v45 + 1) = v16;
    sub_9ACFC(&v45, v44);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    sub_913C0(v44, v47, v18);
    sub_8085C(v47);
    v11 = v49;
    v48 = v49;
  }

  v19 = *(v1 + 49);
  if (v19 != 2)
  {
    strcpy(&v45, "displayStyle");
    BYTE13(v45) = 0;
    HIWORD(v45) = -5120;
    sub_ABAD10();
    v20 = 0x656772616CLL;
    if (v19)
    {
      v20 = 0x6C6C616D73;
    }

    v46 = &type metadata for String;
    *&v45 = v20;
    *(&v45 + 1) = 0xE500000000000000;
    sub_9ACFC(&v45, v44);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    sub_913C0(v44, v47, v21);
    sub_8085C(v47);
    v11 = v49;
    v48 = v49;
  }

  v22 = v1[3];
  if (v22)
  {
    v23 = v1[2];
    *&v45 = 1701667182;
    *(&v45 + 1) = 0xE400000000000000;
    sub_ABAD10();
    v46 = &type metadata for String;
    *&v45 = v23;
    *(&v45 + 1) = v22;
    sub_9ACFC(&v45, v44);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    sub_913C0(v44, v47, v24);
    sub_8085C(v47);
    v11 = v49;
    v48 = v49;
  }

  v25 = v1[4];
  if (v25 != &dword_8)
  {
    strcpy(&v45, "impressionType");
    HIBYTE(v45) = -18;
    sub_27F2E4(v25);
    sub_ABAD10();
    v26 = sub_27987C(v25);
    v46 = &type metadata for String;
    *&v45 = v26;
    *(&v45 + 1) = v27;
    sub_9ACFC(&v45, v44);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    sub_913C0(v44, v47, v28);
    sub_8085C(v47);
    sub_27F2F4(v25);
    v11 = v49;
    v48 = v49;
  }

  v29 = v1[13];
  if (v29)
  {
    v30 = v1[12];
    strcpy(&v45, "description");
    HIDWORD(v45) = -352321536;
    sub_ABAD10();
    v46 = &type metadata for String;
    *&v45 = v30;
    *(&v45 + 1) = v29;
    sub_9ACFC(&v45, v44);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    sub_913C0(v44, v47, v31);
    sub_8085C(v47);
    v11 = v49;
    v48 = v49;
  }

  v32 = v1[11];
  if (v32)
  {
    v33 = v1[10];
    strcpy(&v45, "heading");
    *(&v45 + 1) = 0xE700000000000000;
    sub_ABAD10();
    v46 = &type metadata for String;
    *&v45 = v33;
    *(&v45 + 1) = v32;
    sub_9ACFC(&v45, v44);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    sub_913C0(v44, v47, v34);
    sub_8085C(v47);
    v11 = v49;
    v48 = v49;
  }

  v35 = v1[15];
  if (v35)
  {
    v36 = v1[14];
    strcpy(&v45, "artistName");
    BYTE11(v45) = 0;
    HIDWORD(v45) = -369098752;
    sub_ABAD10();
    v46 = &type metadata for String;
    *&v45 = v36;
    *(&v45 + 1) = v35;
    sub_9ACFC(&v45, v44);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    sub_913C0(v44, v47, v37);
    sub_8085C(v47);
    v11 = v49;
    v48 = v49;
  }

  v49 = *(v1 + 17);
  v38 = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    v39 = v49;
    strcpy(&v45, "actionDetails");
    HIWORD(v45) = -4864;
    sub_ABAD10();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_AF4EC0;
    strcpy((v40 + 32), "lyricSnippet");
    *(v40 + 45) = 0;
    *(v40 + 46) = -5120;
    *(v40 + 48) = v39;
    *(v40 + 56) = v38;
    sub_15F84(&v49, &v45, &unk_DEE6F0, &unk_AF8970);
    v41 = sub_96B2C(v40);
    swift_setDeallocating();
    sub_12E1C(v40 + 32, &qword_DEE730, &qword_AFCCA0);
    swift_deallocClassInstance();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590, &unk_B02860);
    *&v45 = v41;
    sub_9ACFC(&v45, v44);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v44, v47, v42);
    sub_8085C(v47);
  }

  return v11;
}

double sub_27B3D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2EC004(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_330244();
      v9 = v11;
    }

    sub_8085C(*(v9 + 48) + 40 * v7);
    sub_9ACFC((*(v9 + 56) + 32 * v7), a2);
    sub_27C0C4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_27B4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2EC048(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_33159C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_AB3820();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_27CB20(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_AB3820();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_27B6BC(void *a1, uint64_t (*a2)(void *, uint64_t (*)(void), uint64_t, uint64_t (*)(uint64_t, uint64_t)), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v7 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v13 = a3;
    v18 = a2(a1, a2, a3, a4);
    if (v19)
    {
      v7 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v4;
      v23 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v17 = *(*(v21 + 56) + 8 * v7);
        sub_27C804(v7, v21);
        *v6 = v21;
        return v17;
      }

LABEL_14:
      (v13)();
      v21 = v23;
      goto LABEL_10;
    }

    return 0;
  }

  if (v7 < 0)
  {
    v9 = *v4;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = a1;
  v11 = sub_ABAFB0();

  if (!v11)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v12 = sub_ABAFA0();
  v13 = a4(v9, v12);

  v14 = (a2)(v10);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(*(v13 + 56) + 8 * v14);
  sub_27C804(v14, v13);

  *v6 = v13;
  return v17;
}

double sub_27B830@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2EBF88(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_331FD8();
      v10 = v12;
    }

    sub_9ACFC((*(v10 + 56) + 32 * v8), a3);
    sub_27CFD0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}