uint64_t sub_1A4685350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = PhotoKitItem.keyAssets.getter();
  if (v10 && (v11 = v10, v12 = [v10 firstObject], v11, v12))
  {
    sub_1A4685DB8(v12, a2, a3);

    v13 = type metadata accessor for LemonadeNavigationDestination(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 0, 1, v13);
  }

  else
  {
    v16 = sub_1A3C38A40();
    (*(v7 + 16))(v9, v16, v6);

    v17 = sub_1A5246F04();
    v18 = sub_1A524D244();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = a1;
      v25 = v20;
      *v19 = 136315138;
      sub_1A46848EC(0, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);

      v21 = sub_1A524C714();
      sub_1A3C2EF94(v21, v22, &v25);
    }

    (*(v7 + 8))(v9, v6);
    v23 = type metadata accessor for LemonadeNavigationDestination(0);
    return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }
}

uint64_t sub_1A4685660(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = a1;
    PHPhotoLibrary.fetcher.getter(v3, v4);
    v30 = 4;
    v31 = 0;
    v5 = sub_1A3C6E9EC();
    v6 = sub_1A3C6E9EC();
    PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v5, v6, 0, 0, 0, v19);
    v27[0] = v19[0];
    v27[1] = v19[1];
    v28 = v20;
    v29 = v21;
    v7 = PhotoKitFetcher.fetch(_:for:options:)(&v30, v2, v27);

    v8 = v29;

    v26 = 2;
    sub_1A3C6C180(v27);
    v30 = *&v27[0];
    v31 = BYTE8(v27[0]);
    v9 = sub_1A42011B0();
    sub_1A3C6C18C(&v24);
    v22 = v24;
    v23 = v25;
    v10 = sub_1A3C5A374();
    v11 = sub_1A3C30368();
    v12 = sub_1A3C5A374();
    v13 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v30, 0, v9, 0, 1, &v22, v10 & 1, &v26, v19, v11, v12 & 1, 1, v13 & 1, 0);
    if (v7)
    {
      sub_1A3C4C460(0, &qword_1EB13FD20, sub_1A4687834, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = 0;
      *(inited + 40) = v7;
      v15 = v7;
      v16 = sub_1A3CA36F4(inited);
      swift_setDeallocating();
      sub_1A46878AC(inited + 32, sub_1A4687834);
    }

    else
    {
      v16 = sub_1A3CA36F4(MEMORY[0x1E69E7CC0]);
      v15 = 0;
    }

    sub_1A46848EC(0, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);
    PhotoKitItem.__allocating_init(value:options:metadata:)(v2, v19, v16);
    v2 = v17;
  }

  return v2;
}

void *sub_1A46858F8(uint64_t a1, char a2, uint64_t a3)
{
  v23 = a1;
  sub_1A3C4C460(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for LemonadeNavigationDestination(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    sub_1A4684FE8(a3);
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1A4685350(v23, a3, v7);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1A3C2CB18(v7, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720], sub_1A3C4C460);
  }

  else
  {
    sub_1A3CA2830(v7, v15, type metadata accessor for LemonadeNavigationDestination);
    sub_1A468842C(v15, v12, type metadata accessor for LemonadeNavigationDestination);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A4249320(0, v18[2] + 1, 1, v18);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1A4249320((v19 > 1), v20 + 1, 1, v18);
    }

    sub_1A46878AC(v15, type metadata accessor for LemonadeNavigationDestination);
    v18[2] = v20 + 1;
    sub_1A3CA2830(v12, v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, type metadata accessor for LemonadeNavigationDestination);
  }

  return v18;
}

uint64_t sub_1A4685DB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1A3C4C460(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = v42 - v7;
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata sharedInstance];
  v13 = [v12 ignoreSharedLibraryFilterForFeaturedPhotos];

  if (v13)
  {
    v14 = [objc_allocWithZone(PXLibraryFilterState) init];
    [v14 setViewMode_];
  }

  else
  {
    v14 = *(a2 + 24);
  }

  v15 = [v14 sharingFilter];

  type metadata accessor for PhotosIntelligenceFetcher();
  v16 = sub_1A4554E5C(v10, v15);
  v17 = objc_opt_self();
  v18 = @"PXFeaturedPhotosVirtualCollection";
  v19 = [v17 transientAssetCollectionWithAssetFetchResult:v16 title:0 identifier:v18];

  if (sub_1A486DC48(v20, v21))
  {
    v42[3] = ObjCClassFromMetadata;
    v42[5] = v8;
    v42[6] = a3;
    v22 = objc_opt_self();
    v42[2] = v19;
    v23 = [v22 fetchAssetsInAssetCollection:v19 options:0];
    LOBYTE(v46) = 1;
    v24 = [v23 photoLibrary];
    v42[4] = a1;
    PXDisplayAssetFetchResultFromAsset();
  }

  v25 = v44;
  v26 = v45;
  (*(v44 + 56))(v45, 1, 1, v8);
  if ((*(v25 + 48))(v26, 1, v8) == 1)
  {
    sub_1A3C2CB18(v26, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720], sub_1A3C4C460);
    v27 = [objc_allocWithZone(off_1E7721760) init];
    v28 = qword_1EB193E10;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_1A5244084();
    __swift_project_value_buffer(v30, qword_1EB193E18);
    swift_beginAccess();
    sub_1A5243F04();
    v32 = v31;
    swift_endAccess();
    [v29 setCornerRadius_];
    v46 = v19;
    LOBYTE(v47) = 0;
    v33 = a1;
    v34 = v19;
    v35 = [ObjCClassFromMetadata sharedInstance];
    v36 = [v35 ignoreSharedLibraryFilterForFeaturedPhotos];

    v37 = sub_1A3C5A374();
    sub_1A41DF298(v33, &v46, 1, v37 & 1, v36, v29, 0, v48);

    v38 = v48[1];
    *a3 = v48[0];
    a3[1] = v38;
    *(a3 + 4) = v49;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    v40 = v26;
    v41 = v43;
    sub_1A3CA2830(v40, v43, type metadata accessor for LemonadeNavigationDestination);
    return sub_1A3CA2830(v41, a3, type metadata accessor for LemonadeNavigationDestination);
  }
}

uint64_t sub_1A46864F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A3C2F0BC(a1, v6);
  sub_1A46848EC(0, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1A3C2F0BC(a1, a2);
  }

  v4 = PhotoKitItem.keyAsset.getter();

  if (!v4)
  {
    return sub_1A3C2F0BC(a1, a2);
  }

  result = sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  a2[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1A46865F8(__n128 a1)
{
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1A46866B4;

  return sub_1A46867A8(v3);
}

uint64_t sub_1A46866B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A46867A8(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1A5241144();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4686894, 0, 0);
}

uint64_t sub_1A4686894()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v5 = sub_1A524DBD4();
  v6 = objc_opt_self();
  v7 = sub_1A524CFB4();
  sub_1A5241104();
  v8 = sub_1A5241074();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v0[2] = 0;
    v9 = (v0 + 2);
    v10 = [v6 reportFeatureCheckpoint:60 forFeature:v7 atDate:v8 error:v0 + 2];
  }

  else
  {
    v0[3] = 0;
    v9 = (v0 + 3);
    v10 = [v6 reportFeatureCheckpoint:10 forFeature:v7 atDate:v8 error:v0 + 3];
  }

  v11 = v10;

  v12 = *v9;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v14 = v12;
    v15 = sub_1A5240B84();

    swift_willThrow();
    if (qword_1EB15B5C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1A5246F24();
    __swift_project_value_buffer(v16, qword_1EB15B5C8);
    v17 = v5;
    v18 = v15;
    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2112;
      v23 = v17;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      v22[1] = v25;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "Error: Unable to report background system task checkpoint %@: %@", v21, 0x16u);
      sub_1A46848EC(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v22, -1, -1);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    else
    {
    }
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1A4686BE4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB193E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5244084();
  v3 = __swift_project_value_buffer(v2, qword_1EB193E18);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 16))(a1, v3, v2);
  return (*(v4 + 56))(a1, 0, 1, v2);
}

void sub_1A4686CDC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer;
  *a2 = swift_allocObject();
  sub_1A468301C(a1);
}

uint64_t sub_1A4686D34@<X0>(uint64_t a1@<X8>)
{
  sub_1A5243CD4();
  v2 = sub_1A5243CC4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1A4686DFC()
{
  result = sub_1A52433A4();
  if (!v1)
  {
    result = sub_1A52433C4();
    if (!v2)
    {
      return sub_1A3C38BD4(0xD000000000000025);
    }
  }

  return result;
}

uint64_t sub_1A4686E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4688154(&qword_1EB13FD38, &qword_1EB12A858, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A4686EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A4685660(a1);
  *a2 = result;
  return result;
}

id sub_1A4686F34()
{
  v0 = PhotoKitItem.keyAssets.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 firstObject];

  return v2;
}

unint64_t sub_1A4686F88(uint64_t a1)
{
  v2 = sub_1A3C43F6C();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A4686FC4()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 featuredPhotosCollection];

  return v2;
}

double sub_1A468701C@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeSLHighlightView(0);
  v11 = v1 + *(v10 + 24);
  v12 = *v11;
  v13 = v11[8] == 1;
  v49 = v7;
  if (v13)
  {
    v77 = v12;
  }

  else
  {

    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v12, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v12) = v77;
  }

  v50 = v6;
  v76 = v12;
  v75 = 0;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v73 == v71 && v74 == v72)
  {
  }

  else
  {
    v16 = sub_1A524EAB4();

    if ((v16 & 1) == 0)
    {
      v37 = *v11;
      if (v11[8] == 1)
      {
        v66 = *v11;
      }

      else
      {

        v38 = sub_1A524D254();
        v39 = sub_1A524A014();
        sub_1A5246DF4(v38, &dword_1A3C1C000, v39, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v37, 0);
        (*(v49 + 8))(v9, v50);
        LOBYTE(v37) = v66;
      }

      v65 = v37;
      v64 = 2;
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v60 == v52)
      {
      }

      else
      {
        v40 = sub_1A524EAB4();

        if ((v40 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v41 = v2 + *(v10 + 28);
      v42 = *v41;
      if (v41[8] == 1)
      {
        if ((v42 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {

        v43 = sub_1A524D254();
        v44 = sub_1A524A014();
        sub_1A5246DF4(v43, &dword_1A3C1C000, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v42, 0);
        (*(v49 + 8))(v9, v50);
        if (v60 != 1)
        {
          goto LABEL_26;
        }
      }
    }
  }

  if (!*v2)
  {
LABEL_26:
    LOBYTE(v52) = 1;
    HIBYTE(v63) = 1;
    sub_1A4688734();
    sub_1A468878C();
    sub_1A5249744();
    goto LABEL_27;
  }

  v17 = *v2;
  PXDisplayCollectionDetailedCountsMake();
  v19 = v18;
  sub_1A421D420(v5);
  v20 = *v11;
  if (v11[8] == 1)
  {
    v66 = *v11;
    v21 = v50;
  }

  else
  {

    v22 = sub_1A524D254();
    v23 = sub_1A524A014();
    sub_1A5246DF4(v22, &dword_1A3C1C000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v20, 0);
    v21 = v50;
    (*(v49 + 8))(v9, v50);
    LOBYTE(v20) = v66;
  }

  v65 = v20;
  v24 = v2 + *(v10 + 28);
  v25 = *v24;
  if (v24[8] == 1)
  {
    v64 = v25 & 1;
  }

  else
  {

    v26 = sub_1A524D254();
    v27 = sub_1A524A014();
    sub_1A5246DF4(v26, &dword_1A3C1C000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v25, 0);
    (*(v49 + 8))(v9, v21);
    LOBYTE(v25) = v64;
  }

  v28 = sub_1A43A2D48(&v65, v25 & 1);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1A46878AC(v5, type metadata accessor for LemonadeItemsLayoutSpec);
  v35 = sub_1A524A064();
  v59 = 0;
  v58 = 0;
  *&v52 = v19;
  BYTE8(v52) = v35;
  v53 = v28;
  v54 = v30;
  v55 = v32;
  v56 = v34;
  v57 = 0;
  sub_1A4688734();
  sub_1A468878C();
  v36 = v19;
  sub_1A5249744();

  v67 = v60;
  v68 = v61;
  v69 = v62;
  v70 = v63;
LABEL_27:
  result = *&v67;
  v46 = v68;
  v47 = v69;
  v48 = v51;
  *v51 = v67;
  v48[1] = v46;
  v48[2] = v47;
  *(v48 + 24) = v70;
  return result;
}

uint64_t sub_1A46877B0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B5C8);
  __swift_project_value_buffer(v0, qword_1EB15B5C8);
  return sub_1A5246F14();
}

void sub_1A4687834(uint64_t a1)
{
  if (!qword_1EB13FD28)
  {
    sub_1A3C52C70(255, &qword_1EB126C40, 0x1E6978840);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13FD28);
    }
  }
}

uint64_t sub_1A46878AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A468790C(char a1, uint64_t a2, unint64_t a3)
{
  sub_1A3C4C460(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  if (a1)
  {
    if (a2)
    {
      v10 = *((*(*a2 + 280))(v7) + 24);
      v27 = v10;

      if (v10)
      {
        v11 = [v27 fetchedObjects];
        if (v11)
        {
          v12 = v11;
          sub_1A3C52C70(0, &unk_1EB12B198, 0x1E6978AE8);
          v13 = sub_1A524CA34();

          aBlock[0] = MEMORY[0x1E69E7CC0];
          if (v13 >> 62)
          {
            goto LABEL_23;
          }

          for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
          {
            v25 = v9;
            v26 = a3;
            v9 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x1A59097F0](v9, v13);
              }

              else
              {
                if (v9 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_22;
                }

                v15 = *(v13 + 8 * v9 + 32);
              }

              v16 = v15;
              a3 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if ([v15 state])
              {
              }

              else
              {
                sub_1A524E514();
                sub_1A524E564();
                sub_1A524E574();
                sub_1A524E524();
              }

              ++v9;
              if (a3 == i)
              {
                v17 = aBlock[0];
                v9 = v25;
                a3 = v26;
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            ;
          }

          v17 = MEMORY[0x1E69E7CC0];
LABEL_25:
          v19 = sub_1A524CCB4();
          (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
          v20 = swift_allocObject();
          v20[2] = 0;
          v20[3] = 0;
          v20[4] = v13;
          sub_1A3D4D930(0, 0, v9, &unk_1A5354F88, v20);

          if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
          {
            if (sub_1A524E2B4() > 0)
            {
              goto LABEL_28;
            }
          }

          else if (*(v17 + 16) > 0)
          {
LABEL_28:
            v21 = *(a3 + 16);
            v22 = swift_allocObject();
            *(v22 + 16) = v17;
            aBlock[4] = sub_1A4688240;
            aBlock[5] = v22;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1A3C2E0D0;
            aBlock[3] = &block_descriptor_243;
            v23 = _Block_copy(aBlock);

            [v21 performChanges:v23 completionHandler:0];

            _Block_release(v23);
            return;
          }
        }

        else
        {
          v18 = v27;
        }
      }
    }
  }
}

uint64_t sub_1A4687CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A468842C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1A4683814(*(a2 + 16), a2, 1);
  }

  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1A524E404();

  v8 = 0xD00000000000001BLL;
  v9 = 0x80000001A53B42A0;
  sub_1A4688340(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C618);
  v6 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v6);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

unint64_t sub_1A4687ED8(uint64_t a1)
{
  result = sub_1A3C43F6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4687FE0(double a1)
{
  result = qword_1EB1224B8;
  if (!qword_1EB1224B8)
  {
    sub_1A46880E4(255, &qword_1EB1224B0, MEMORY[0x1E697F960]);
    sub_1A4684DD8();
    sub_1A4684660(255);
    sub_1A4688340(&unk_1EB128FC0, sub_1A4684660, MEMORY[0x1E69C29F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224B8);
  }

  return result;
}

void sub_1A46880E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4684A08(255);
    v7 = v6;
    sub_1A4684954(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4688154(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A46848EC(255, a2, &unk_1EB12B198, 0x1E6978AE8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46881AC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A46865D8(v3, v4, v5, v2);
}

void sub_1A4688240(__n128 a1)
{
  v2 = *(v1 + 16);
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

  v4 = objc_opt_self();
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4;
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v5 changeRequestForSuggestion_];
      [v9 markActive];
    }

    while (v3 != v6);
  }
}

uint64_t sub_1A4688340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for LemonadeSLHighlightView(uint64_t a1)
{
  result = qword_1EB1CCD80;
  if (!qword_1EB1CCD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A46883D4()
{
  result = qword_1EB1CCD78;
  if (!qword_1EB1CCD78)
  {
    type metadata accessor for LemonadeSLHighlightView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CCD78);
  }

  return result;
}

uint64_t sub_1A468842C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4688494(uint64_t a1)
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 ignoreSharedLibraryFilterForFeaturedPhotos];

  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 8);
  }

  type metadata accessor for PhotosIntelligenceFetcher();
  PXSharingFilterFromLibraryFilterViewMode(v4);
  sub_1A3C6E9EC();
  return sub_1A4554DFC();
}

void sub_1A4688570(uint64_t a1)
{
  sub_1A46848EC(319, &unk_1EB138740, &qword_1EB126D00, 0x1E69D3810, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A3C4C460(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A46886C8(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A46886C8(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A46886C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A4688734()
{
  if (!qword_1EB13FD40)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FD40);
    }
  }
}

unint64_t sub_1A468878C()
{
  result = qword_1EB13FD48;
  if (!qword_1EB13FD48)
  {
    sub_1A4688734();
    sub_1A405ECC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FD48);
  }

  return result;
}

unint64_t sub_1A468880C()
{
  result = qword_1EB13FD50;
  if (!qword_1EB13FD50)
  {
    sub_1A468888C(255);
    sub_1A468878C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FD50);
  }

  return result;
}

void sub_1A468888C(uint64_t a1)
{
  if (!qword_1EB13FD58)
  {
    sub_1A4688734();
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FD58);
    }
  }
}

void static CuratedLibraryGeometryHelper.carouselHeight(for:)(double a1, double a2)
{
  v3 = a1;
  if (a1 == 0.0 || a2 == 0.0 || (*MEMORY[0x1E69BDDB0] == a1 ? (v4 = *(MEMORY[0x1E69BDDB0] + 8) == a2) : (v4 = 0), v4))
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v12, *&v3, *&a2, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v12, 0x20u);
    }

    if (a2 >= v3)
    {
      a1 = v3;
    }

    else
    {
      a1 = a2;
    }

    v8 = 0.6;
    v7 = 0.67;
  }

  else
  {
    v5 = fabs(a1 / a2);
    if (a2 < a1)
    {
      a1 = a2;
    }

    v6 = v5 <= 1.0;
    v7 = 0.67;
    if (!v6)
    {
      v7 = 0.7;
    }

    v8 = 0.6;
    if (!v6)
    {
      v8 = 0.55;
    }
  }

  if (a1 <= 460.0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  CGRound(v11 * a2);
}

void static CuratedLibraryGeometryHelper.carouselAspectRatio()()
{
  PFDeviceScreenSize();
  v1 = v0;
  v3 = v2;
  PFDeviceScreenScale();
  v5 = 1.0 / v4;
  v6 = v1 * v5;
  v7 = v3 * v5;
  if (v7 >= v6)
  {
    *&v8 = v6;
  }

  else
  {
    *&v8 = v7;
  }

  if (v6 > v7)
  {
    *&v9 = v6;
  }

  else
  {
    *&v9 = v7;
  }

  if (*&v8 >= *&v9)
  {
    v10 = *&v9;
  }

  else
  {
    v10 = *&v8;
  }

  v11 = *&v8 == 0.0 || *&v9 == 0.0;
  v12 = MEMORY[0x1E69BDDB0];
  if (v11 || (*&v9 == *MEMORY[0x1E69BDDB0] ? (v13 = *&v8 == *(MEMORY[0x1E69BDDB0] + 8)) : (v13 = 0), v13))
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v34, v9, v8, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v34, 0x20u);
    }

    v16 = 0.6;
    v15 = 0.67;
  }

  else
  {
    v14 = fabs(*&v9 / *&v8) <= 1.0;
    v15 = 0.67;
    if (!v14)
    {
      v15 = 0.7;
    }

    v16 = 0.6;
    if (!v14)
    {
      v16 = 0.55;
    }
  }

  if (v10 > 460.0)
  {
    v15 = v16;
  }

  v19 = CGRound(*&v8 * v15);
  v20 = *&v19;
  if (*&v9 == 0.0 || v19 == 0.0 || *&v9 == *v12 && v19 == v12[1])
  {
    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v34, v9, v20, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v34, 0x20u);
    }
  }

  if (*&v9 >= *&v8)
  {
    v23 = *&v8;
  }

  else
  {
    v23 = *&v9;
  }

  if (v11 || (*&v8 == *v12 ? (v24 = *&v9 == v12[1]) : (v24 = 0), v24))
  {
    v28 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v34, v8, v9, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v34, 0x20u);
    }

    v27 = 0.6;
    v26 = 0.67;
  }

  else
  {
    v25 = fabs(*&v8 / *&v9) <= 1.0;
    v26 = 0.67;
    if (!v25)
    {
      v26 = 0.7;
    }

    v27 = 0.6;
    if (!v25)
    {
      v27 = 0.55;
    }
  }

  if (v23 > 460.0)
  {
    v26 = v27;
  }

  v30 = CGRound(*&v9 * v26);
  v31 = *&v30;
  if (*&v8 == 0.0 || v30 == 0.0 || *&v8 == *v12 && v30 == v12[1])
  {
    v32 = MEMORY[0x1E69E9C10];
    v33 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v34, v8, v31, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v34, 0x20u);
    }
  }
}

uint64_t sub_1A4688E40(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A4688E98(a1, a2);
  return v4;
}

uint64_t sub_1A4688E98(void *a1, uint64_t a2)
{
  v6 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  LOBYTE(v8) = *(a2 + 24);
  *(v2 + 16) = a1;
  if ((v8 & 1) == 0)
  {
    sub_1A3C540A4(0);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A52F8E10;
    v16 = a1;
    sub_1A4689094(v11, v10, v16, v15 + v14);
    if (v3)
    {
      sub_1A4396924(v11, v10);

      *(v15 + 16) = 0;

      goto LABEL_6;
    }

    v17 = v11;
    v18 = v10;
LABEL_9:
    sub_1A4396924(v17, v18);
    *(v2 + 24) = v15;
    return v2;
  }

  v13 = a1;
  sub_1A4689094(v11, v10, v13, v9);
  if (!v3)
  {
    v15 = sub_1A46892E8(v9, v12);

    v17 = v11;
    v18 = v10;
    goto LABEL_9;
  }

  sub_1A4396924(v11, v10);
LABEL_6:

  type metadata accessor for LemonadeTestShelvesDataSource();
  swift_deallocPartialClassInstance();
  return v2;
}

void sub_1A4689094(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeFeatureLibrary(0);
  v11 = sub_1A3C4E89C(a3);
  v12 = *(*v11 + 240);
  v21 = v11;
  v13 = v12();
  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_8:

    sub_1A4689680();
    swift_allocError();
    *v18 = a1;
    v18[1] = a2;
    swift_willThrow();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v15 = 0;
  while (v15 < *(v13 + 16))
  {
    sub_1A3C531C8(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v10);
    sub_1A3C5322C();
    if (LemonadeShelfIdentifier.rawValue.getter() == a1 && v16 == a2)
    {

LABEL_11:
      sub_1A3C59944(v10, v20);
      return;
    }

    v17 = sub_1A524EAB4();

    if (v17)
    {

      goto LABEL_11;
    }

    ++v15;
    sub_1A3C53E7C(v10);
    if (v14 == v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1A46892E8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
      v5 = sub_1A524CAC4();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1A3C531C8(v3, v5 + v7);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_1A3C531C8(v3, v10);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1A3C53E7C(v3);
    return v5;
  }

  return result;
}

void (*sub_1A46894BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A42C9698(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A4689544(uint64_t a1)
{
  result = sub_1A4689640(&qword_1EB13FD60, &unk_1A5355134);
  *(a1 + 8) = result;
  return result;
}

void sub_1A46895BC()
{
  type metadata accessor for LemonadeTestShelvesDataSource();
  sub_1A4689640(&qword_1EB13FD68, &unk_1A535510C);

    ;
  }
}

uint64_t sub_1A4689640(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeTestShelvesDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4689680()
{
  result = qword_1EB13FD70;
  if (!qword_1EB13FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FD70);
  }

  return result;
}

void sub_1A46896D4()
{
  sub_1A4689B98(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A4689A00(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4689D80();
}

void sub_1A46898D0(uint64_t a1, double a2)
{
  if (!qword_1EB124410)
  {
    sub_1A4689938(255, a2);
    v2 = sub_1A52483B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124410);
    }
  }
}

void sub_1A4689938(uint64_t a1, double a2)
{
  if (!qword_1EB121108)
  {
    sub_1A4689990(255, a2);
    v2 = sub_1A524BE24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB121108);
    }
  }
}

void sub_1A4689990(uint64_t a1, double a2)
{
  if (!qword_1EB123188)
  {
    sub_1A4689A00(255);
    sub_1A4689B98(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123188);
    }
  }
}

void sub_1A4689A78(uint64_t a1)
{
  if (!qword_1EB123F08)
  {
    sub_1A4689B18(255);
    sub_1A468A988(255, &unk_1EB122350, sub_1A3DF20B4, MEMORY[0x1E697E3F0], MEMORY[0x1E697FB30]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123F08);
    }
  }
}

void sub_1A4689B18(uint64_t a1)
{
  if (!qword_1EB121E88)
  {
    sub_1A3DF20B4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E88);
    }
  }
}

void sub_1A4689BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A4689C4C(uint64_t a1)
{
  if (!qword_1EB123F10)
  {
    sub_1A4689B18(255);
    sub_1A4689CB4(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123F10);
    }
  }
}

void sub_1A4689CB4(uint64_t a1)
{
  if (!qword_1EB1245D8)
  {
    sub_1A468A988(255, &qword_1EB1222C0, sub_1A444E958, &type metadata for TimelineTextEngineCellViewModifier, MEMORY[0x1E697FDE8]);
    sub_1A468AF48(&qword_1EB1222C8, &qword_1EB1222C0, sub_1A444E958, &type metadata for TimelineTextEngineCellViewModifier);
    v1 = sub_1A5247FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1245D8);
    }
  }
}

void sub_1A4689D80()
{
  v2 = sub_1A5249354();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A4689A28(0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A47F3348();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A468A0FC()
{
  v3 = sub_1A5249354();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4689C4C(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A4689BC0(0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A47F3348();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A468A4E4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_14;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1A4300D10(v1);
    }

    *(v1 + 8 * i) = v8;

    if (v4 - 4 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    *(v1 + 8 * v4) = v7;

LABEL_5:
    --v4;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

double sub_1A468A5D8(double a1)
{
  v2 = *sub_1A47F33BC();
  v3 = *sub_1A47F33C8();
  v4 = *sub_1A47F33A4();
  v5 = v4 - *sub_1A47F3398();
  v6 = sub_1A47F33B0();
  v7 = (a1 - v2) / (v3 - v2);
  if (v7 <= 1.0)
  {
    v8 = (a1 - v2) / (v3 - v2);
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v7 > 0.0;
  v10 = 0.0;
  if (v9)
  {
    v10 = v8;
  }

  return v5 * (1.0 - v10) + v10 * *v6;
}

double sub_1A468A664(double a1)
{
  v2 = *sub_1A47F33BC();
  v3 = *sub_1A47F33C8();
  v4 = *sub_1A47F33A4();
  v5 = *sub_1A47F33B0();
  v6 = sub_1A47F3398();
  v7 = (a1 - v2) / (v3 - v2);
  if (v7 <= 1.0)
  {
    v8 = (a1 - v2) / (v3 - v2);
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v7 > 0.0;
  v10 = 0.0;
  if (v9)
  {
    v10 = v8;
  }

  return v4 * (1.0 - v10) + v10 * (v5 + *v6);
}

void sub_1A468A74C()
{
  if (!qword_1EB1202A0)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1202A0);
    }
  }
}

uint64_t sub_1A468A79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A468A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A468C5A0();

  return MEMORY[0x1EEDDDD18](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1A468A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A468C5A0();

  return MEMORY[0x1EEDDDD20](a1, a2, a3, a4, a5, v12, a6);
}

void sub_1A468A90C(uint64_t *a2@<X8>)
{
  *a2 = sub_1A524BC74();
  a2[1] = v3;
  sub_1A46898D0(0, v4);
  sub_1A46896D4();
}

double sub_1A468A968(uint64_t a1)
{
  result = *a1 / 1000.0;
  **(a1 + 8) = result;
  return result;
}

void sub_1A468A988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A468A9F0(uint64_t a1)
{
  if (!qword_1EB1240E8)
  {
    sub_1A468A988(255, &qword_1EB122280, sub_1A444EAF8, &type metadata for WriteOutEffect, MEMORY[0x1E697FDE8]);
    sub_1A468AA90(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1240E8);
    }
  }
}

void sub_1A468AA90(uint64_t a1)
{
  if (!qword_1EB1221D0)
  {
    sub_1A468AAEC();
    v1 = sub_1A5249D34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1221D0);
    }
  }
}

unint64_t sub_1A468AAEC()
{
  result = qword_1EB16CEC0[0];
  if (!qword_1EB16CEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16CEC0);
  }

  return result;
}

uint64_t sub_1A468AB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A468C54C();

  return MEMORY[0x1EEDDDD18](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1A468ABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A468C54C();

  return MEMORY[0x1EEDDDD20](a1, a2, a3, a4, a5, v12, a6);
}

void sub_1A468AC80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_1A468A988(0, &qword_1EB122280, sub_1A444EAF8, &type metadata for WriteOutEffect, MEMORY[0x1E697FDE8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  sub_1A468A9F0(0);
  *(a2 + *(v7 + 36)) = v5;
}

double sub_1A468AD40@<D0>(double *a1@<X8>)
{
  result = *v1 * 1000.0;
  *a1 = result;
  return result;
}

double sub_1A468AD5C(double *a1)
{
  result = *a1 / 1000.0;
  *v1 = result;
  return result;
}

double (*sub_1A468AD78(uint64_t a1))(uint64_t)
{
  *(a1 + 8) = v1;
  *a1 = *v1 * 1000.0;
  return sub_1A468C6C0;
}

void sub_1A468ADD8(uint64_t a1, double a2)
{
  if (!qword_1EB121520)
  {
    sub_1A4689938(255, a2);
    sub_1A468C37C(&qword_1EB121110, sub_1A4689938, MEMORY[0x1E6981F48]);
    v2 = sub_1A524B8B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB121520);
    }
  }
}

unint64_t sub_1A468AE6C()
{
  result = qword_1EB1240F0;
  if (!qword_1EB1240F0)
  {
    sub_1A468A9F0(255);
    sub_1A468AF48(&qword_1EB122288, &qword_1EB122280, sub_1A444EAF8, &type metadata for WriteOutEffect);
    sub_1A468C37C(&qword_1EB1221D8, sub_1A468AA90, MEMORY[0x1E6980630]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1240F0);
  }

  return result;
}

uint64_t sub_1A468AF48(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A468A988(255, a2, a3, a4, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A468AFBC(uint64_t a1, uint64_t *a2, double a3)
{
  v152 = a3;
  v151 = a2;
  v147 = sub_1A52486E4();
  v154 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1A524A404();
  v5 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v143 = v108 - v8;
  sub_1A468C1A0(0, &qword_1EB120B20, MEMORY[0x1E6981060]);
  v142 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v141 = v108 - v10;
  v11 = MEMORY[0x1E69E6AA0];
  sub_1A468C0DC(0, &qword_1EB120508, MEMORY[0x1E69E6AA0]);
  v121 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v120 = v108 - v14;
  sub_1A468C0BC(0, v13);
  v127 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v153 = (v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = sub_1A524A3D4();
  v150 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v119 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v124 = v108 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v130 = v108 - v21;
  sub_1A468C1A0(0, &qword_1EB120B28, MEMORY[0x1E6981028]);
  v129 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v128 = v108 - v23;
  sub_1A468C224(0, &qword_1EB120500, v11);
  v115 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v114 = v108 - v26;
  sub_1A468C204(0, v25);
  v118 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v132 = (v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1A524A3E4();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v113 = v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v108 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v116 = v108 - v37;
  sub_1A468C2E8(0, v36);
  v39 = v38 - 8;
  MEMORY[0x1EEE9AC00](v38);
  v41 = v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1A524A414();
  (*(*(v42 - 8) + 16))(v41, a1, v42);
  v43 = *(v39 + 44);
  v44 = sub_1A468C37C(&qword_1EB122048, MEMORY[0x1E6981090], MEMORY[0x1E69810A0]);
  sub_1A524CFD4();
  v45 = v41;
  sub_1A524D034();
  if (*&v41[v43] == *&v158.m11)
  {
    return sub_1A468C4EC(v45, sub_1A468C2E8);
  }

  v117 = (v30 + 16);
  v112 = (v30 + 32);
  v133 = (v150 + 32);
  v134 = (v150 + 16);
  v125 = (v150 + 8);
  v139 = (v5 + 32);
  v140 = (v5 + 16);
  v137 = (v5 + 8);
  v138 = (v154 + 8);
  v108[0] = v30 + 8;
  v126 = v29;
  v123 = v34;
  v110 = v42;
  v111 = v41;
  v108[1] = v44;
  v109 = v43;
  while (1)
  {
    v48 = sub_1A524D0C4();
    v49 = v116;
    v154 = *v117;
    v154(v116);
    v48(&v158, 0);
    sub_1A524D044();
    v50 = *v112;
    (*v112)(v34, v49, v29);
    v51 = sub_1A468C37C(&qword_1EB122050, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
    sub_1A524CFD4();
    v52 = v34;
    result = sub_1A524D034();
    m11 = v158.m11;
    v54 = v157.m11;
    if (*&v157.m11 < *&v158.m11)
    {
      break;
    }

    v55 = v114;
    v56 = *(v115 + 52);
    (v154)(&v114[v56], v52, v29);
    v57 = v132;
    *v132 = m11;
    v57[1] = v54;
    v57[2] = m11;
    v50(v113, &v55[v56], v29);
    v58 = v57 + *(v118 + 52);
    sub_1A468C37C(&qword_1EB122058, MEMORY[0x1E6981048], MEMORY[0x1E6981050]);
    v136 = v58;
    result = sub_1A524C914();
    v60 = v148;
    v61 = v124;
    if (*&m11 != *&v54)
    {
      v122 = v51;
      v131 = v54;
      while (*&m11 < *&v54)
      {
        v62 = *&m11 + 1;
        v132[2] = *&v62;
        sub_1A468C3C4(0, v59);
        v64 = *(v63 + 36);
        v65 = v136;
        sub_1A524D034();
        if (*&v65[v64] == *&v158.m11)
        {
          goto LABEL_4;
        }

        v135 = *&v62;
        v66 = sub_1A524D0C4();
        v67 = *v134;
        v68 = v130;
        (*v134)(v130);
        v66(&v158, 0);
        sub_1A524D044();
        v69 = v128;
        v70 = *(v129 + 48);
        v71 = *v133;
        (*v133)(&v128[v70], v68, v60);
        v71(v61, &v69[v70], v60);
        if (v152 >= 1.0)
        {
          sub_1A52486B4();
          result = (*v125)(v61, v60);
        }

        else
        {
          sub_1A468C37C(&qword_1EB122060, MEMORY[0x1E6981028], MEMORY[0x1E6981040]);
          sub_1A524CFD4();
          sub_1A524D034();
          v72 = sub_1A524D024();
          if (v72 > 1.0)
          {
            v73 = v72;
          }

          else
          {
            v73 = 1.0;
          }

          sub_1A524CFD4();
          result = sub_1A524D034();
          v74 = v158.m11;
          v75 = v157.m11;
          if (*&v157.m11 < *&v158.m11)
          {
            goto LABEL_29;
          }

          v76 = v120;
          v77 = *(v121 + 52);
          (v67)(&v120[v77], v61, v60);
          v78 = v153;
          *v153 = v74;
          v78[1] = v75;
          v78[2] = v74;
          v71(v119, &v76[v77], v60);
          v79 = v78 + *(v127 + 52);
          sub_1A468C37C(&qword_1EB122068, MEMORY[0x1E6981028], MEMORY[0x1E6981038]);
          sub_1A524C914();
          if (*&v74 != *&v75)
          {
            v81 = 1.0 / v73;
            sub_1A468C458(0, v80);
            v149 = v75;
            v150 = v82;
            do
            {
              *(v153 + 2) = *&v74 + 1;
              v83 = &v79[*(v150 + 36)];
              sub_1A524D034();
              if (*v83 == *&v158.m11)
              {
                break;
              }

              v84 = sub_1A524D0C4();
              v85 = *v140;
              v154 = (*&v74 + 1);
              v86 = v143;
              v87 = v145;
              v85(v143);
              v84(&v158, 0);
              sub_1A524D044();
              v88 = v141;
              v89 = *(v142 + 48);
              v90 = *v139;
              (*v139)(&v141[v89], v86, v87);
              v91 = &v88[v89];
              v60 = v148;
              v92 = v144;
              v90(v144, v91, v87);
              v159 = *v151;
              v93 = (v152 - v81 * *&v74 * 0.6) / (v81 * *&v74 * 0.6 + 0.4 - v81 * *&v74 * 0.6);
              v94 = v93 <= 1.0 ? (v152 - v81 * *&v74 * 0.6) / (v81 * *&v74 * 0.6 + 0.4 - v81 * *&v74 * 0.6) : 1.0;
              v95 = v94 + -1.0;
              v96 = v93 > 0.0 ? v95 : -1.0;
              v97 = v96 * v96 * 3.4 + pow(v96, 3.0) * 4.4 + 1.0;
              v98 = v97 + (1.0 - v97) * 0.0;

              sub_1A524A3F4();
              v172.origin.x = v160;
              v172.size.width = v162;
              v172.origin.y = v161 - v163;
              v172.size.height = v163 + v164;
              MidX = CGRectGetMidX(v172);
              sub_1A524A3F4();
              v100 = v165;
              v101 = *(MEMORY[0x1E69792E8] + 80);
              *&v158.m31 = *(MEMORY[0x1E69792E8] + 64);
              *&v158.m33 = v101;
              v102 = *(MEMORY[0x1E69792E8] + 112);
              *&v158.m41 = *(MEMORY[0x1E69792E8] + 96);
              *&v158.m43 = v102;
              v103 = *(MEMORY[0x1E69792E8] + 16);
              *&v158.m11 = *MEMORY[0x1E69792E8];
              *&v158.m13 = v103;
              v104 = *(MEMORY[0x1E69792E8] + 48);
              *&v158.m21 = *(MEMORY[0x1E69792E8] + 32);
              *&v158.m23 = v104;
              CATransform3DTranslate(&v157, &v158, MidX, v165, 0.0);
              v156 = v157;
              CATransform3DScale(&v158, &v156, v98, v98, 1.0);
              v156 = v158;
              CATransform3DTranslate(&v155, &v156, -MidX, -v100, 0.0);
              v166 = *&v155.m11;
              v167 = *&v155.m14;
              m22 = v155.m22;
              m24 = v155.m24;
              v170 = *&v155.m41;
              m44 = v155.m44;
              v105 = v146;
              sub_1A52486D4();
              sub_1A52486F4();
              (*v138)(v105, v147);
              sub_1A52486C4();
              v106 = v149;
              (*v137)(v92, v87);

              v74 = *&v154;
            }

            while (*&v106 != v154);
          }

          v61 = v124;
          (*v125)(v124, v60);
          v107 = v153;
          *(v153 + *(v127 + 56)) = 1;
          result = sub_1A468C4EC(v107, sub_1A468C0BC);
        }

        m11 = v135;
        v54 = v131;
        v29 = v126;
        if (*&v135 == *&v131)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

LABEL_4:
    v34 = v123;
    (*v108[0])(v123, v29);
    v47 = v132;
    *(v132 + *(v118 + 56)) = 1;
    sub_1A468C4EC(v47, sub_1A468C204);
    v45 = v111;
    sub_1A524D034();
    if (*(v45 + v109) == *&v158.m11)
    {
      return sub_1A468C4EC(v45, sub_1A468C2E8);
    }
  }

  __break(1u);
  return result;
}

void (*sub_1A468BF5C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A5247AC4();
  return sub_1A3D3D728;
}

unint64_t sub_1A468BFE8()
{
  result = qword_1EB16CEB0;
  if (!qword_1EB16CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16CEB0);
  }

  return result;
}

unint64_t sub_1A468C03C()
{
  result = qword_1EB120B08;
  if (!qword_1EB120B08)
  {
    sub_1A3D868AC();
    sub_1A3DE7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120B08);
  }

  return result;
}

void sub_1A468C0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3D868AC();
    v9[0] = v6;
    v9[1] = sub_1A524A3D4();
    v9[2] = sub_1A468C03C();
    v9[3] = sub_1A468C37C(&qword_1EB122068, MEMORY[0x1E6981028], MEMORY[0x1E6981038]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A468C1A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A468C224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3D868AC();
    v9[0] = v6;
    v9[1] = sub_1A524A3E4();
    v9[2] = sub_1A468C03C();
    v9[3] = sub_1A468C37C(&qword_1EB122058, MEMORY[0x1E6981048], MEMORY[0x1E6981050]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A468C2E8(uint64_t a1, double a2)
{
  if (!qword_1EB1204B0)
  {
    sub_1A524A414();
    sub_1A468C37C(&qword_1EB122048, MEMORY[0x1E6981090], MEMORY[0x1E69810A0]);
    v2 = sub_1A524E684();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1204B0);
    }
  }
}

uint64_t sub_1A468C37C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A468C3C4(uint64_t a1, double a2)
{
  if (!qword_1EB1204B8)
  {
    sub_1A524A3E4();
    sub_1A468C37C(&qword_1EB122050, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
    v2 = sub_1A524E684();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1204B8);
    }
  }
}

void sub_1A468C458(uint64_t a1, double a2)
{
  if (!qword_1EB1204C0)
  {
    sub_1A524A3D4();
    sub_1A468C37C(&qword_1EB122060, MEMORY[0x1E6981028], MEMORY[0x1E6981040]);
    v2 = sub_1A524E684();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1204C0);
    }
  }
}

uint64_t sub_1A468C4EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A468C54C()
{
  result = qword_1EB125BB0;
  if (!qword_1EB125BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BB0);
  }

  return result;
}

unint64_t sub_1A468C5A0()
{
  result = qword_1EB1252C0;
  if (!qword_1EB1252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252C0);
  }

  return result;
}

uint64_t sub_1A468C5F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A468C65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A468C6C8()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();

  swift_beginAccess();
  return v0[32];
}

uint64_t sub_1A468C748@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

void sub_1A468C7E8(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[32] == v2)
  {
    v1[32] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1088))(v4);
  }
}

void sub_1A468C8E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 32) = v2;
}

uint64_t (*sub_1A468C938(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8(v4);
  return sub_1A468CA88;
}

uint64_t type metadata accessor for GenerativeStoryAmbiguityManager(uint64_t a1)
{
  result = qword_1EB163370;
  if (!qword_1EB163370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A468CB40@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1080))();

  v3 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity;
  swift_beginAccess();
  return sub_1A469B324(v1 + v3, a1, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
}

uint64_t sub_1A468CC6C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1A469B324(a1, &v9 - v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v4, sub_1A4699E4C);
  return (*(**a2 + 304))(v7);
}

uint64_t sub_1A468CD8C(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity;
  swift_beginAccess();
  sub_1A469B324(v1 + v7, v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v3, sub_1A4699E4C);
  v8 = sub_1A4699430(v6, a1);
  sub_1A3C2CB78(v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v3, sub_1A4699E4C);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 1088))(v10);
  }

  else
  {
    sub_1A469B324(a1, v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
    swift_beginAccess();
    sub_1A4699840(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1A3C2CB78(a1, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
}

uint64_t sub_1A468D034(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A469B324(a2, &v10 - v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v4, sub_1A4699E4C);
  v8 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity;
  swift_beginAccess();
  sub_1A4699840(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t (*sub_1A468D148(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468CAE0(v4);
  return sub_1A468D298;
}

void sub_1A468D2A4(uint64_t a1)
{
  v3 = (*v1 + 344);
  v4 = *v3;
  v5 = (*v3)();
  sub_1A4696ECC(v5, a1);
  LOBYTE(a1) = v6;

  if ((a1 & 1) == 0)
  {
    swift_retain_n();
    v7 = sub_1A5246F04();
    v8 = sub_1A524D264();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 136643075;
      v4();
      sub_1A3C52C70(0, &qword_1EB13CD38, 0x1E6978A50);
      v10 = sub_1A524C3F4();
      v12 = v11;

      sub_1A3C2EF94(v10, v12, &v13);
    }
  }
}

void sub_1A468D4B8(void *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__forceDisambiguatedTexts;
  a1[2] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__forceDisambiguatedTexts;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A468D510(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A468D2A4(v4);

  return result;
}

uint64_t sub_1A468D580@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

void sub_1A468D78C(uint64_t *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  sub_1A468D4B8(v4);
}

uint64_t (*sub_1A468D998(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468D8E8(v4);
  return sub_1A468DAE8;
}

uint64_t sub_1A468DB54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A468DD84(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468DAF4(v4);
  return sub_1A468DED4;
}

void sub_1A468DF40()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468DFCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  return result;
}

double sub_1A468E07C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__selectedLocationAssetsUUIDs;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1088))(v5);

    return result;
  }

  *(v1 + v3) = 0;

  return result;
}

uint64_t (*sub_1A468E1C0(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468DEE0(v4);
  return sub_1A468E310;
}

uint64_t (*sub_1A468E3B8(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468E31C(v4);
  return sub_1A468E508;
}

uint64_t (*sub_1A468E5B0(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468E514(v4);
  return sub_1A468E700;
}

uint64_t sub_1A468E780(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 1080))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void sub_1A468E830(char a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1 & 1;
  v5 = *a2;
  swift_beginAccess();
  if (*(v3 + v5) == v4)
  {
    *(v3 + v5) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 1088))(v7);
  }
}

uint64_t (*sub_1A468E92C(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468E70C(v4);
  return sub_1A468EA7C;
}

uint64_t sub_1A468EA88()
{
  if ((*(*v0 + 536))() & 1) != 0 || ((*(*v0 + 584))())
  {
    return 1;
  }

  v2 = *(*v0 + 632);

  return v2();
}

void sub_1A468EB40(void *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__unresolvedAmbiguityData[0];
  a1[2] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__unresolvedAmbiguityData[0];
  *a1 = *(v1 + v2);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A468EB98(uint64_t *a1, char a2, __n128 a3)
{
  v4 = a1[1];
  *(v4 + a1[2]) = *a1;
  swift_unknownObjectUnownedLoadStrong();
  v5 = v4[3];
  swift_getObjectType();
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(*v4 + 688))();
  (*(v5 + 8))();

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_1A468ECD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 688))();
  *a2 = result;
  return result;
}

void sub_1A468ED94(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 1080))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A468EFD8(uint64_t *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  sub_1A468EB40(v4);
}

uint64_t sub_1A468F134(double a1)
{
  v2 = sub_1A5244FE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = sub_1A52444C4();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v14 = *(v39 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v39);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v1 + 688))(v15);
  v19 = result;
  v43 = *(result + 16);
  if (v43)
  {
    v20 = v3;
    v21 = 0;
    v41 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v36 = (v37 + 4);
    v35 = *MEMORY[0x1E69C1300];
    v33 = v11;
    v34 = (v20 + 104);
    v42 = (v20 + 8);
    ++v37;
    v38 = v8;
    v32 = v14;
    v40 = result;
    while (v21 < *(v19 + 16))
    {
      sub_1A469B0D8(v41 + *(v14 + 72) * v21, v17, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B0D8(v17, v13, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A469B580(v17, type metadata accessor for GenerativeStoryAmbiguityData);
        result = sub_1A469B580(v13, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      }

      else
      {
        (*v36)(v10, v13, v8);
        v22 = v10;
        sub_1A5244484();
        (*v34)(v44, v35, v2);
        sub_1A469B4A4(&qword_1EB12EE28, MEMORY[0x1E69C1388], MEMORY[0x1E69C1390]);
        v23 = v7;
        sub_1A524C9C4();
        sub_1A524C9C4();
        if (v47 == v45 && v48 == v46)
        {
          v24 = 1;
        }

        else
        {
          v24 = sub_1A524EAB4();
        }

        v25 = *v42;
        (*v42)(v44, v2);

        if ((v24 & 1) != 0 && (v17[*(v39 + 40)] & 1) == 0)
        {

          v25(v7, v2);
          (*v37)(v22, v38);
          sub_1A469B580(v17, type metadata accessor for GenerativeStoryAmbiguityData);
          return 1;
        }

        if (sub_1A47C04C0(v26))
        {
          v25(v7, v2);
          v8 = v38;
          v10 = v22;
          (*v37)(v22, v38);
          result = sub_1A469B580(v17, type metadata accessor for GenerativeStoryAmbiguityData);
          v14 = v32;
          v19 = v40;
        }

        else
        {
          v10 = v22;
          if ([objc_opt_self() isMemoryCreationTimeEventDisambiguationEnabled])
          {
            v28 = sub_1A47C0BC8(v27);
          }

          else
          {
            v28 = 0;
          }

          v19 = v40;
          if (*&v17[*(v39 + 32)])
          {
            v7 = v23;
            v25(v23, v2);
            v8 = v38;
            (*v37)(v22, v38);
            result = sub_1A469B580(v17, type metadata accessor for GenerativeStoryAmbiguityData);
            v14 = v32;
          }

          else
          {
            v29 = sub_1A47C0724(v27);
            v25(v23, v2);
            v8 = v38;
            (*v37)(v22, v38);
            result = sub_1A469B580(v17, type metadata accessor for GenerativeStoryAmbiguityData);
            v30 = v29 | v28;
            v19 = v40;
            v7 = v23;
            v14 = v32;
            if (v30)
            {

              return 1;
            }
          }
        }
      }

      if (v43 == ++v21)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    return 0;
  }

  return result;
}

uint64_t sub_1A468F82C()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession);
  swift_beginAccess();
  v2 = *v1;
  sub_1A40C7F38(*v1, v1[1], v1[2]);
  return v2;
}

uint64_t sub_1A468F8E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 744))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

double sub_1A468F940(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v3;
  v5 = *a1;
  v9 = a1[1];
  v8 = v5;
  (*(*v3 + 1088))(KeyPath, sub_1A469B620, v7, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double sub_1A468F9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  (*(*v4 + 1088))();
  sub_1A3DAECB8(a1, a2, a3);

  return result;
}

double sub_1A468FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  sub_1A40C7F38(a2, a3, a4);
  return sub_1A3DAECB8(v10, v11, v12);
}

uint64_t (*sub_1A468FB80(uint64_t *a1))()
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager, &protocol conformance descriptor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468F7CC(v4);
  return sub_1A468FCD0;
}

uint64_t sub_1A468FCDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 792))();
  *a2 = result;
  return result;
}

double sub_1A468FD30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 1088))(KeyPath, sub_1A469B5E4, v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void sub_1A468FDF4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 1080))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A468FE80(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 1088))();

  return result;
}

void sub_1A468FF28(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__userSuggestionByTokenString;
  swift_beginAccess();
  *(a1 + v4) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468FFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 840))();
  *a2 = result;
  return result;
}

double sub_1A4690060(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 1080))();

  return result;
}

uint64_t sub_1A46900DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 888))();
  *a2 = result;
  return result;
}

double sub_1A4690184(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(v3 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 1088))(v5);
  }

  return result;
}

uint64_t sub_1A469028C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager____lazy_storage___appleMusicUnavailableHandler;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager____lazy_storage___appleMusicUnavailableHandler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager____lazy_storage___appleMusicUnavailableHandler);
  }

  else
  {
    type metadata accessor for GenerativeStoryAppleMusicUnavailableHandler(0);
    v2 = sub_1A470E13C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t GenerativeStoryAmbiguityManager.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GenerativeStoryAmbiguityManager.init(delegate:)(a1, a2);
  return v4;
}

uint64_t GenerativeStoryAmbiguityManager.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 0;
  v5 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity;
  v6 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  (*(*(v6 - 8) + 56))(v3 + v5, 1, 1, v6);
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__forceDisambiguatedTexts) = sub_1A4699900(MEMORY[0x1E69E7CC0]);
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentPeoplePickerSelection) = v7;
  v8 = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__tokenToPeoplePickerSelection) = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__selectedLocationAssetsUUIDs) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__isPresentingPeoplePicker) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__isPresentingEventPicker) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__isPresentingLocationsPicker) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__unresolvedAmbiguityData) = v7;
  v9 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager_logger;
  v10 = sub_1A3C4A780();
  v11 = sub_1A5246F24();
  (*(*(v11 - 8) + 16))(v3 + v9, v10, v11);
  v12 = (v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession);
  *v12 = 0u;
  v12[1] = 0u;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__userSuggestionByTokenString) = v8;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager____lazy_storage___appleMusicUnavailableHandler) = 0;
  sub_1A5241604();
  *(v3 + 24) = a2;
  swift_unknownObjectUnownedInit();
  type metadata accessor for GenerativeStoryEventAmbiguityDataSource(0);
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__eventAmbiguityDataSource) = sub_1A3FFECB0();
  type metadata accessor for GenerativeStoryDateAmbiguityDataSource(0);
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__dateAmbiguityDataSource) = GenerativeStoryDateAmbiguityDataSource.__allocating_init()(v13);
  sub_1A52415B4();
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v14 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v10) = [v14 enableLocationDisambiguation];

  if (v10)
  {
    sub_1A52415B4();
  }

  if ([objc_opt_self() isMemoryCreationTimeEventDisambiguationEnabled])
  {
    sub_1A52415B4();
    sub_1A52415B4();
  }

  swift_unknownObjectRelease();
  return v3;
}

void sub_1A4690674(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v84 = a4;
  v87 = a1;
  v88 = a2;
  v6 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v66 - v8;
  v81 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v66 - v13;
  v91 = sub_1A5244FE4();
  v14 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A52444C4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v83 = &v66 - v27;
  v67 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - v30;
  sub_1A4699E4C(0, &qword_1EB130318, MEMORY[0x1E69C0EC8], v6);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v74 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v66 - v38;
  v40 = [objc_opt_self() isMemoryCreationTimeEventDisambiguationEnabled];
  v41 = *(*v4 + 960);
  v77 = v4;
  v42 = v41(a3, v40);
  v43 = *(v42 + 16);
  v89 = v18;
  v86 = v43;
  v76 = v39;
  if (!v43)
  {

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v85 = v36;
  v44 = v17;
  v45 = v42;
  v46 = 0;
  v47 = (v14 + 8);
  while (v46 < *(v45 + 16))
  {
    v48 = v45;
    v49 = v44;
    (*(v89 + 16))(v31, v45 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v46, v44);
    sub_1A5244484();
    v51 = sub_1A47C04C0(v50);
    (*v47)(v16, v91);
    if (v51)
    {
      v53 = v89;
      v54 = v76;
      (*(v89 + 32))(v76, v31, v44);
      v52 = 0;
      v55 = v85;
LABEL_9:
      (*(v53 + 56))(v54, v52, 1, v49);
      sub_1A469B324(v54, v55, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720], sub_1A4699E4C);
      v56 = *(v53 + 48);
      v73 = v53 + 48;
      v72 = v56;
      v57 = v56(v55, 1, v49);
      v75 = v49;
      if (v57 == 1)
      {
        sub_1A3C2CB78(v55, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720], sub_1A4699E4C);
      }

      else
      {

        v58 = *(v53 + 32);
        v59 = v83;
        v58(v83, v55, v49);
        sub_1A4699E4C(0, &qword_1EB13FD78, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6F90]);
        v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1A52F8E10;
        v58((v61 + v60), v59, v49);
      }

      if (v84)
      {
        v62 = v84;
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v64 = v87;
      v65 = v88;
      *(&v66 - 6) = v77;
      *(&v66 - 5) = v64;
      *(&v66 - 4) = v65;
      *(&v66 - 3) = v62;
      *(&v66 - 2) = 0;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    ++v46;
    (*(v18 + 8))(v31, v44);
    v45 = v48;
    if (v86 == v46)
    {
      v52 = 1;
      v53 = v89;
      v54 = v76;
      v55 = v85;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1A46916B8(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v36 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v36);
  v32 = sub_1A52444C4();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v27 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A524BEC4();
  v23[8] = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23[7] = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A524BFC4();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v23[6] = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v25 = v23 - v13;
  sub_1A3F52CD8(0);
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v35 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB12EE60, sub_1A3F52CD8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23[1] = v8;
    v23[2] = v6;
    v23[3] = v7;
    v23[4] = v4;
    v23[5] = v3;
    v28 = Strong;
    v19 = sub_1A5246F04();
    v20 = sub_1A524D264();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "Apple Music unavailability was resolved, automatically restarting generation", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    (*(*v28 + 688))();
    v37 += 48;
    v22 = v30 + 32;
    v30 += 8;
    v31 = v22;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A469224C(uint64_t a1, char a2)
{
  sub_1A4699E4C(0, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = (&v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v92 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v92 - v9;
  v10 = sub_1A5244FE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = (&v92 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v92 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v92 - v23;
  v108 = sub_1A52444C4();
  MEMORY[0x1EEE9AC00](v108);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v92 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v92 - v30;
  v33.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v35 = &v92 - v34;
  if (a2)
  {
    v36 = *(a1 + 16);
    if (v36)
    {
      v38 = *(v32 + 16);
      v37 = v32 + 16;
      v103 = v38;
      v101 = ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v39 = v101 + a1;
      v40 = *(v37 + 56);
      v41 = (v11 + 8);
      v99 = (v11 + 88);
      v95 = *MEMORY[0x1E69C1368];
      LODWORD(v94) = *MEMORY[0x1E69C1328];
      v96 = (v37 - 8);
      v107 = v37;
      v105 = (v37 + 16);
      v42 = MEMORY[0x1E69E7CC0];
      v102 = v40;
      (v38)(v35, v39, v108, v33);
      while (1)
      {
        v45 = v104;
        sub_1A5244484();
        v47 = sub_1A47C096C(v46);
        v48 = *v41;
        (*v41)(v45, v10);
        if (v47 & 1) != 0 || ((v49 = v104, sub_1A5244484(), v51 = sub_1A47C0BC8(v50), v48(v49, v10), v52 = v100, (v51) || (v53 = v97, sub_1A5244484(), v54 = *v99, v55 = (*v99)(v53, v10), v48(v53, v10), v52 = v98, v55 == v95) || (v56 = v92, sub_1A5244484(), v57 = v54(v56, v10), v48(v56, v10), v52 = v93, v57 == v94)) && (sub_1A52444A4(), v58 = sub_1A5245604(), v59 = (*(*(v58 - 8) + 48))(v52, 1, v58), sub_1A3C2CB78(v52, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720], sub_1A4699E4C), v59 == 1))
        {
          v60 = *v105;
          (*v105)(v106, v35, v108);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A46976F0(0, *(v42 + 16) + 1, 1);
            v42 = v109;
          }

          v63 = *(v42 + 16);
          v62 = *(v42 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1A46976F0((v62 > 1), v63 + 1, 1);
            v42 = v109;
          }

          *(v42 + 16) = v63 + 1;
          v44 = v102;
          v60(v101 + v42 + v63 * v102, v106, v108);
        }

        else
        {
          (*v96)(v35, v108);
          v44 = v102;
        }

        v39 += v44;
        if (!--v36)
        {
          break;
        }

        (v103)(v35, v39, v108, v43);
      }

      return v42;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v64 = *(a1 + 16);
  if (!v64)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v66 = *(v32 + 16);
  v65 = v32 + 16;
  v101 = v66;
  v97 = ((*(v65 + 64) + 32) & ~*(v65 + 64));
  v67 = &v97[a1];
  v68 = *(v65 + 56);
  v103 = (v11 + 88);
  LODWORD(v99) = *MEMORY[0x1E69C1368];
  v98 = (v11 + 8);
  v95 = *MEMORY[0x1E69C1328];
  v93 = (v65 - 8);
  v107 = v65;
  v105 = (v65 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v102 = v10;
  v100 = v68;
  do
  {
    v106 = v64;
    v101(v28, v67, v108, v33);
    sub_1A5244484();
    v69 = *v103;
    v70 = (*v103)(v17, v10);
    v71 = v10;
    v72 = *v98;
    (*v98)(v17, v71);
    if (v70 == v99 || (v73 = v28, v74 = v25, v75 = v17, v76 = v96, sub_1A5244484(), v77 = v69(v76, v71), v78 = v76, v17 = v75, v25 = v74, v28 = v73, v72(v78, v71), v77 == v95) || (v79 = v94, sub_1A5244484(), v81 = sub_1A47C0BC8(v80), v72(v79, v71), (v81 & 1) != 0) || (v82 = v104, sub_1A5244484(), v84 = sub_1A47C096C(v83), v72(v82, v71), (v84 & 1) != 0))
    {
      v85 = *v105;
      (*v105)(v25, v28, v108);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v42;
      if ((v86 & 1) == 0)
      {
        sub_1A46976F0(0, *(v42 + 16) + 1, 1);
        v42 = v109;
      }

      v87 = v106;
      v89 = *(v42 + 16);
      v88 = *(v42 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_1A46976F0((v88 > 1), v89 + 1, 1);
        v42 = v109;
      }

      *(v42 + 16) = v89 + 1;
      v90 = v100;
      v85(&v97[v42 + v89 * v100], v25, v108);
    }

    else
    {
      (*v93)(v28, v108);
      v90 = v100;
      v87 = v106;
    }

    v67 += v90;
    v64 = v87 - 1;
    v10 = v102;
  }

  while (v64);
  return v42;
}

uint64_t (*sub_1A4692B28())()
{
  result = sub_1A468FB80(v5);
  if (!*(v1 + 8))
  {
    return (result)(v5, 0);
  }

  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    return (result)(v5, 0);
  }

  return result;
}

double sub_1A4692BA8()
{
  swift_getKeyPath();
  (*(*v0 + 1088))();

  return result;
}

void sub_1A4692C50(void *a1)
{
  v9 = sub_1A4699900(MEMORY[0x1E69E7CC0]);
  v2 = *MEMORY[0x1E6978F98];
  v3 = [a1 length];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &v9;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A4699F14;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1A40919A8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A40912AC;
  aBlock[3] = &block_descriptor_244;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v7 enumerateAttribute:v2 inRange:0 options:v3 usingBlock:{0, v6}];

  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1A4692FE0()
{
  v1 = (*(*v0 + 984))();
  (*(*v0 + 1008))(v1);

  v3 = (*(*v0 + 344))(v2);
  v4 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  if ((v6 & *(v3 + 64)) != 0)
  {
LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= ((v5 + 63) >> 6))
    {
      break;
    }

    ++v4;
    if (*(v3 + 64 + 8 * v7))
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1A4693208(uint64_t a1)
{
  v3 = sub_1A52414C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5241494();
  v10 = v6;
  v7 = sub_1A469A40C(a1, sub_1A469A0C4, v9, sub_1A469A0D0, sub_1A469A0D0);
  (*(*v1 + 352))(v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A469335C(void *a1, uint64_t a2)
{
  v3 = sub_1A52414C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 QUToken];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 entityCategoryTypes];

    sub_1A5241444();
    sub_1A469B4A4(&qword_1EB12AF60, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v11 = sub_1A524CFE4();
    (*(v4 + 8))(v7, v3);
    if (v11)
    {
      return 1;
    }
  }

  result = [a1 suggestion];
  if (result)
  {
    v13 = result;
    if ([result categoriesType] == 7)
    {

      return 1;
    }

    else
    {
      v14 = [v13 categoriesType];

      return v14 == 9;
    }
  }

  return result;
}

uint64_t sub_1A469358C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  sub_1A4699E4C(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3 - 8);
  v19 = v18 - v5;
  v6 = (*(*v2 + 792))(v4);
  v7 = 0;
  v8 = *(v6 + 64);
  v22 = v6;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v18[0] = MEMORY[0x1E69E7CC8];
  v18[1] = v6 + 64;
  v12 = 0;
  if (v11)
  {
LABEL_7:
    v13 = (*(v22 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v11)))));
    v14 = *v13;
    v15 = v13[1];
    v25 = v20;
    v26 = v21;
    v23 = v14;
    v24 = v15;
    v16 = sub_1A5241284();
    (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v7 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v7 >= ((v9 + 63) >> 6))
    {

      return v18[0];
    }

    v11 = *(v6 + 64 + 8 * v7);
    ++v12;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  type metadata accessor for _NSRange(0);
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

double sub_1A46939E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A4699E4C(0, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720]);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34[-v8 - 8];
  v10 = *(*v2 + 792);
  v11 = *(v10(v7) + 16);

  if (v11)
  {
    v14 = (v10)(v12);
    v15 = sub_1A46989C0(v14);

    v17 = *((v10)(v16) + 16);

    v18 = v15[2];
    v19 = (*(*v3 + 408))(v34);
    *v20 = MEMORY[0x1E69E7CC0];

    v21 = v19(v34, 0);
    v22 = (*(*v3 + 440))(v21);
    MEMORY[0x1EEE9AC00](v22);
    *(&v33 - 2) = a1;
    *(&v33 - 1) = a2;
    v24 = sub_1A469A40C(v23, sub_1A469A240, (&v33 - 4), sub_1A469A298, sub_1A469A298);

    v25 = (*(*v3 + 448))(v24);
    v26 = (*(*v3 + 840))(v25);
    v27 = sub_1A52444C4();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    (*(*v26 + 480))(v9);

    sub_1A3C2CB78(v9, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720], sub_1A4699E4C);
    if (v17 == v18)
    {
    }

    else
    {
      v28 = sub_1A5246F04();
      v29 = sub_1A524D264();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v17 - v18;
        _os_log_impl(&dword_1A3C1C000, v28, v29, "Removing %ld previous applied user suggestions", v30, 0xCu);
        MEMORY[0x1A590EEC0](v30, -1, -1);
      }

      KeyPath = swift_getKeyPath();
      v32.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      *(&v33 - 2) = v3;
      *(&v33 - 1) = v15;
      (*(*v3 + 1088))(v32);
    }
  }

  return result;
}

uint64_t sub_1A4693ED0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52444C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A469B0D8(a1, v6, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_1A469B580(v6, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = sub_1A5244464();
    v13 = v12;
    if (*((*(*v2 + 440))() + 16))
    {
      sub_1A3C5DCA4(v11, v13);
      if (v14)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_1A4694224(uint64_t a1)
{
  v34 = sub_1A523FBB4();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52444C4();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v31 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*a1 + 392);
  v16 = *(v15(v13) + 16);

  if (v16)
  {
    (*(*a1 + 296))(v17);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1A3C2CB78(v10, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
    }

    else
    {
      v18 = v31;
      sub_1A469B2BC(v10, v31, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B0D8(v18, v5, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v29 + 32))(v28, v5, v30);
        v22 = sub_1A5244464();
        v24 = v23;
        if (*((*(*a1 + 440))() + 16))
        {
          sub_1A3C5DCA4(v22, v24);
          if (v25)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        (v15)(v26);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A469B580(v18, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B580(v5, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    }

    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "People picker selection changed but no current ambiguity", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }
  }
}

uint64_t sub_1A4694C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4694CE0, v6, v5);
}

uint64_t sub_1A4694CE0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

double sub_1A4694DBC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 840);
  v9 = *v8(v5);
  v10 = (*(v9 + 264))();

  v11 = *(v10 + 16);

  if (!v11)
  {
    return result;
  }

  v14 = (v8)(v12);
  v15 = (*(*v14 + 488))(v14);

  if (v15)
  {
    v17 = (v8)(v16);
    (*(*v17 + 472))(v17);

    v19 = *(v8)(v18);
    v20 = (*(v19 + 264))();

    v39 = MEMORY[0x1E69E7CD0];
    if (*(v20 + 16))
    {
      sub_1A469B0D8(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v7, type metadata accessor for GenerativeStoryEventSuggestion);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v26 = MEMORY[0x1E69E7CD0];
    v27 = *(MEMORY[0x1E69E7CD0] + 16);
    if (!v27)
    {

      goto LABEL_14;
    }

    v21 = sub_1A3C51BF0(v27, 0);
    v22 = sub_1A3C423E8(&v39, v21 + 4, v27, v26);
    sub_1A3C42540(v39);
    if (v22 == v27)
    {
LABEL_14:
      v28 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      v29 = sub_1A524CA14();

      v30 = [v28 initForPersonalEventFilterWithMomentUUIDs_];

      sub_1A46965F0(v30);
      v31 = v30;
      v32 = sub_1A5246F04();
      v33 = sub_1A524D224();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v31;
        v36 = v31;
        _os_log_impl(&dword_1A3C1C000, v32, v33, "Applied personal event suggestion: %@", v34, 0xCu);
        sub_1A469B580(v35, sub_1A3D3F118);
        MEMORY[0x1A590EEC0](v35, -1, -1);
        MEMORY[0x1A590EEC0](v34, -1, -1);
      }

      v37 = *(v8)();
      (*(v37 + 448))();

      return result;
    }

    __break(1u);
  }

  v38 = sub_1A5246F04();
  v23 = sub_1A524D264();
  if (os_log_type_enabled(v38, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1A3C1C000, v38, v23, "Not updating event disambiguation as it has not changed value", v24, 2u);
    MEMORY[0x1A590EEC0](v24, -1, -1);
  }

  v25 = v38;

  return result;
}

void sub_1A4695320(uint64_t a1)
{
  v1 = 0;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  if ((v3 & *(a1 + 56)) != 0)
  {
LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v4 >= ((v2 + 63) >> 6))
    {
      break;
    }

    ++v1;
    if (*(a1 + 56 + 8 * v4))
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1A4695424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46954BC, v6, v5);
}

uint64_t sub_1A46954BC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4695598(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v55 - v4;
  sub_1A4699E4C(0, &qword_1EB130318, MEMORY[0x1E69C0EC8], v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v55 - v6;
  v60 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52444C4();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, v2);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v55 - v18;
  v20 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  v21 = *(v20 - 8);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v62 = *(*a1 + 888);
  v63 = v25 + 888;
  v26 = v62(v22);
  (*(*v26 + 136))(v26);

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1A3C2CB78(v19, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720], sub_1A4699E4C);
  }

  v28 = sub_1A469B2BC(v19, v24, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  (*(*a1 + 296))(v28);
  v29 = v24;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A3C2CB78(v12, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
    v30 = v64;
  }

  else
  {
    sub_1A469B2BC(v12, v16, type metadata accessor for GenerativeStoryAmbiguityData);
    v31 = v61;
    sub_1A469B0D8(v16, v61, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v64;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1A469B580(v16, type metadata accessor for GenerativeStoryAmbiguityData);
      v33 = type metadata accessor for GenerativeStoryAmbiguityData.Payload;
      v34 = v31;
    }

    else
    {
      v36 = v56;
      v35 = v57;
      v37 = v58;
      v38 = (*(v57 + 32))(v56, v31, v58);
      v39 = (*(*a1 + 840))(v38);
      v40 = v59;
      (*(v35 + 16))(v59, v36, v37);
      (*(v35 + 56))(v40, 0, 1, v37);
      (*(*v39 + 480))(v40);

      sub_1A3C2CB78(v40, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720], sub_1A4699E4C);
      (*(v35 + 8))(v36, v37);
      v33 = type metadata accessor for GenerativeStoryAmbiguityData;
      v34 = v16;
    }

    sub_1A469B580(v34, v33);
  }

  sub_1A469B324(v29 + *(v20 + 20), v30, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720], sub_1A4699E4C);
  v41 = sub_1A5240604();
  v42 = sub_1A5240664();
  v43 = *(v42 - 8);
  v44 = 0;
  if ((*(v43 + 48))(v30, 1, v42) != 1)
  {
    v44 = sub_1A5240604();
    (*(v43 + 8))(v30, v42);
  }

  v45 = [objc_allocWithZone(MEMORY[0x1E6978A98]) initForDateFilterWithStartDateComponents:v41 endDateComponents:v44];

  sub_1A46965F0(v45);
  v46 = v45;
  v47 = sub_1A5246F04();
  v48 = sub_1A524D224();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v29;
    v51 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v51 = v46;
    v52 = v46;
    _os_log_impl(&dword_1A3C1C000, v47, v48, "Applied date components suggestion: %@", v49, 0xCu);
    sub_1A469B580(v51, sub_1A3D3F118);
    v53 = v51;
    v29 = v50;
    MEMORY[0x1A590EEC0](v53, -1, -1);
    MEMORY[0x1A590EEC0](v49, -1, -1);
  }

  v54 = (v62)();
  (*(*v54 + 176))(v54);

  return sub_1A469B580(v29, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A4695F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4695FF4, v6, v5);
}

uint64_t sub_1A4695FF4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1A46960D0(uint64_t a1)
{
  if ((*(*a1 + 488))())
  {
    v2 = objc_allocWithZone(MEMORY[0x1E6978A98]);
    v3 = sub_1A524CF34();

    v4 = [v2 initForLocationFilterWithAssetUUIDs:v3 locationText:0];

    sub_1A46965F0(v4);
    v10 = v4;
    v5 = sub_1A5246F04();
    v6 = sub_1A524D224();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v10;
      *v8 = v10;
      v9 = v10;
      _os_log_impl(&dword_1A3C1C000, v5, v6, "Applied location suggestion: %@", v7, 0xCu);
      sub_1A469B580(v8, sub_1A3D3F118);
      MEMORY[0x1A590EEC0](v8, -1, -1);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    (*(*a1 + 496))(0);
  }
}

double sub_1A46962DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4699E4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  sub_1A3EA52F4(0, 0, v6, a3, v10);

  return result;
}

uint64_t sub_1A469647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4696514, v6, v5);
}

uint64_t sub_1A4696514()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A46965F0(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52444C4();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v15 = *(v14 - 8);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 296))(v16);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1A3C2CB78(v13, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
  }

  sub_1A469B2BC(v13, v18, type metadata accessor for GenerativeStoryAmbiguityData);
  sub_1A469B0D8(v18, v5, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1A469B580(v5, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    v21 = v36;
  }

  else
  {
    v22 = v35;
    (*(v35 + 32))(v8, v5, v6);
    v38[0] = 2;
    v23 = sub_1A5244464();
    v21 = v36;
    (*(*v1 + 992))(v36, v38, v23, v24);

    v20 = (*(v22 + 8))(v8, v6);
  }

  v39 = 0;
  v25 = (*v1 + 688);
  v26 = *v25;
  v27 = *((*v25)(v20) + 16);

  if (v27)
  {
    v29 = v26(v28);
    MEMORY[0x1EEE9AC00](v29);
    *(&v35 - 4) = v18;
    *(&v35 - 3) = v21;
    *(&v35 - 2) = &v39;
    sub_1A3FC5364(sub_1A469AAF0, (&v35 - 6), v29);
    v31 = v30;

    (*(*v2 + 696))(v31);
  }

  else
  {
    swift_unknownObjectUnownedLoadStrong();
    v32 = v2[3];
    ObjectType = swift_getObjectType();
    (*(v32 + 16))(ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v34 = v37;
  (*(v15 + 56))(v37, 1, 1, v14);
  (*(*v2 + 304))(v34);
  return sub_1A469B580(v18, type metadata accessor for GenerativeStoryAmbiguityData);
}

uint64_t GenerativeStoryAmbiguityManager.deinit()
{
  sub_1A3C6B94C(v0 + 16);
  sub_1A3C2CB78(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);

  v1 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A3DAECB8(*(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession), *(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession + 8), *(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession + 16));

  v3 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStoryAmbiguityManager.__deallocating_deinit()
{
  GenerativeStoryAmbiguityManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1A4696ECC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    if ((v3 & *(a1 + 64)) != 0)
    {
LABEL_10:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = 0;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5 >= ((v2 + 63) >> 6))
      {
        return;
      }

      ++v4;
      if (*(a1 + 64 + 8 * v5))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1A469704C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A523FBB4();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v7 = 0;
    v8 = *(a1 + 64);
    v16 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v8;
    v12 = (v9 + 63) >> 6;
    v21 = v24 + 8;
    v22 = v24 + 16;
    v17 = v12;
    v18 = a1;
    if (v11)
    {
      v20 = (v11 - 1) & v11;
      goto LABEL_12;
    }

    v13 = 0;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        return;
      }

      v14 = *(v16 + 8 * v7);
      ++v13;
      if (v14)
      {
        v20 = (v14 - 1) & v14;
LABEL_12:
        v19 = v7;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }
}

unint64_t sub_1A46973E4(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](a1);
  MEMORY[0x1A590A010](a2);
  v4 = sub_1A524ECE4();

  return sub_1A4697464(a1, a2, v4);
}

unint64_t sub_1A4697464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1A46974DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A523FBB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A469B4A4(&qword_1EB1260F0, MEMORY[0x1E6985D18], MEMORY[0x1E6985D20]);
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void *sub_1A46976F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4697740(a1, a2, a3, *v3, &qword_1EB13FD78, MEMORY[0x1E69C0EC8], MEMORY[0x1E69C0EC8]);
  *v3 = result;
  return result;
}

void *sub_1A4697740(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A4699E4C(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_1A4697934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A469AC84();
  v38 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v39 = *v26;
      v27 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v28 = sub_1A524ECE4();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v39;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4697BEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A469ACE4(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v31 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v31);
      MEMORY[0x1A590A010](*(&v31 + 1));
      v22 = sub_1A524ECE4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1A4697E78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A469ABEC(0);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4698114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A452AFAC(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A452B25C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = (v21[6] + 16 * v11);
    *v24 = a2;
    v24[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

void sub_1A469828C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A3C5DCA4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A4697934(v18, a5 & 1);
      v13 = sub_1A3C5DCA4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1A4698598();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v26 = (v23[6] + 16 * v13);
    *v26 = a3;
    v26[1] = a4;
    v27 = v23[7] + 16 * v13;
    *v27 = a1;
    *(v27 + 8) = a2;
    v28 = v23[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v23[2] = v29;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v24 = v23[7] + 16 * v13;
  v25 = *(v24 + 8);
  *v24 = a1;
  *(v24 + 8) = a2;
}

void sub_1A469841C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A4697E78(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A469885C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;
}

void sub_1A4698598()
{
  v1 = v0;
  sub_1A469AC84();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = 16 * (v13 | (v8 << 6));
        v17 = (*(v2 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(v2 + 56) + v16;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = (*(v4 + 48) + v16);
        *v23 = v19;
        v23[1] = v18;
        v24 = *(v4 + 56) + v16;
        *v24 = v21;
        *(v24 + 8) = v22;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A4698708()
{
  v1 = v0;
  sub_1A469ACE4(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1A469885C()
{
  v1 = v0;
  sub_1A469ABEC(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void *sub_1A46989C0(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1A4698B20(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1A4698CF8(v8, v4, v2);
  result = MEMORY[0x1A590EEC0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1A4698B20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = sub_1A3F5CDC4();
    if (result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1A46991DC(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1A46991DC(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A4698C58(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void *sub_1A4698CF8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1A4698B20(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1A4698D70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1A469ADA0(0);
  result = sub_1A524E794();
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v8)
  {
LABEL_13:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return result;
    }

    ++v9;
    if (a1[v10])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A4698FA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1A469ABEC(0);
  result = sub_1A524E794();
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v8)
  {
LABEL_13:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return result;
    }

    ++v9;
    if (a1[v10])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A46991DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1A469AC84();
  result = sub_1A524E794();
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v8)
  {
LABEL_13:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return result;
    }

    ++v9;
    if (a1[v10])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A4699430(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  sub_1A469B4EC(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 56);
  sub_1A469B324(a1, v12, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v6, sub_1A4699E4C);
  sub_1A469B324(v21, &v12[v14], &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v6, sub_1A4699E4C);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) != 1)
  {
    sub_1A469B324(v12, v9, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v17 = v20;
      sub_1A469B2BC(&v12[v14], v20, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B4A4(&qword_1EB12FBF0, type metadata accessor for GenerativeStoryAmbiguityData, &protocol conformance descriptor for GenerativeStoryAmbiguityData);
      v18 = sub_1A524C594();
      sub_1A469B580(v17, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B580(v9, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A3C2CB78(v12, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
      v16 = v18 ^ 1;
      return v16 & 1;
    }

    sub_1A469B580(v9, type metadata accessor for GenerativeStoryAmbiguityData);
    goto LABEL_6;
  }

  if (v15(&v12[v14], 1, v3) != 1)
  {
LABEL_6:
    sub_1A469B580(v12, sub_1A469B4EC);
    v16 = 1;
    return v16 & 1;
  }

  sub_1A3C2CB78(v12, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1A4699840(uint64_t a1, uint64_t a2)
{
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4699900(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A469ADA0(0);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1A4699A90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__selectedLocationAssetsUUIDs;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4699B5C(__n128 a1)
{
  *(*(v1 + 16) + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__unresolvedAmbiguityData[0]) = *(v1 + 24);
  swift_unknownObjectUnownedLoadStrong();
  swift_getObjectType();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double (*sub_1A4699CD4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A469B398;
}

double (*sub_1A4699D34())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A469B1E4;
}

double (*sub_1A4699D94())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A469B000;
}

double (*sub_1A4699DF4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A469AF28;
}

void sub_1A4699E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4699EB0()
{
  v1 = *(sub_1A52444C4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1A46916B8(v2, v3);
}

void sub_1A4699F14(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = MEMORY[0x1E69E7CA0];
  sub_1A469B324(a1, v17, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A469B140);
  if (v17[3])
  {
    sub_1A3C52C70(0, &qword_1EB13CD38, 0x1E6978A50);
    if (swift_dynamicCast())
    {
      if ([v16 ambiguityType])
      {
      }

      else
      {
        v10 = [v7 attributedSubstringFromRange_];
        v11 = [v10 string];
        v12 = sub_1A524C674();
        v14 = v13;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17[0] = *v8;
        *v8 = 0x8000000000000000;
        sub_1A4698114(v16, v12, v14, isUniquelyReferenced_nonNull_native);

        *v8 = v17[0];
      }
    }
  }

  else
  {
    sub_1A3C2CB78(v17, &qword_1EB126130, v9 + 8, MEMORY[0x1E69E6720], sub_1A469B140);
  }
}

void sub_1A469A0D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  if ((v5 & *(a3 + 64)) != 0)
  {
LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = 0;
  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= ((v4 + 63) >> 6))
    {
      sub_1A4698D70(a1, a2, 0, a3);
      return;
    }

    ++v6;
    if (*(a3 + 64 + 8 * v7))
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1A469A298(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, __n128))
{
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  if ((v5 & *(a3 + 64)) != 0)
  {
LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = 0;
  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= ((v4 + 63) >> 6))
    {
      sub_1A4698FA4(a1, a2, 0, a3);
      return;
    }

    ++v6;
    if (*(a3 + 64 + 8 * v7))
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void *sub_1A469A40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_1A4698C58(v16, v11, v9, a2, a3, a5);
  result = MEMORY[0x1A590EEC0](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

void sub_1A469A5A4(uint64_t a1)
{
  sub_1A4699E4C(319, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      sub_1A5241614();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1A469AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v9 = *(v8 + 24);
  v11 = *(a1 + v9);
  v10 = *(a1 + v9 + 8);
  v12 = (v6 + v9);
  v14 = *v12;
  v13 = v12[1];
  if (v11 == v14 && v10 == v13)
  {
    GenerativeStoryAmbiguityData.copy(withAppliedDisambiguation:)(v5, a2);
  }

  v16 = v8;
  v21 = *(a1 + *(v8 + 36));
  v20 = 0;
  if (static GenerativeStoryAmbiguityData.MenuAutoPresentationState.== infix(_:_:)(&v21, &v20) && (*v7 & 1) == 0)
  {
    *v7 = 1;
    v18 = *(v16 + 20);
    v19 = 1;
    sub_1A47BF4FC(a1 + v18, &v19, a2);
  }

  return sub_1A469B0D8(a1, a2, type metadata accessor for GenerativeStoryAmbiguityData);
}

void sub_1A469ABEC(uint64_t a1)
{
  if (!qword_1EB13FD80)
  {
    sub_1A4699E4C(255, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FD80);
    }
  }
}

void sub_1A469AC84()
{
  if (!qword_1EB13FD88)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FD88);
    }
  }
}

void sub_1A469ACE4(uint64_t a1)
{
  if (!qword_1EB13FD90)
  {
    type metadata accessor for _NSRange(255);
    sub_1A3C52C70(255, &qword_1EB1209D8, 0x1E6978A98);
    sub_1A469B4A4(&qword_1EB120568, type metadata accessor for _NSRange, MEMORY[0x1E6969FA0]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FD90);
    }
  }
}

void sub_1A469ADA0(uint64_t a1)
{
  if (!qword_1EB13CD80)
  {
    sub_1A3C52C70(255, &qword_1EB13CD38, 0x1E6978A50);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CD80);
    }
  }
}

uint64_t sub_1A469AE18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4699E4C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A469AE98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectUnownedLoadStrong();
    v2 = *(v1 + 24);

    ObjectType = swift_getObjectType();
    (*(v2 + 24))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A469AF60(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A469647C(a1, v5, v6, v4);
}

uint64_t sub_1A469B038(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A4695424(a1, v5, v6, v4);
}

uint64_t sub_1A469B0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A469B140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A469B190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A469B21C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A4695F5C(a1, v5, v6, v4);
}

uint64_t sub_1A469B2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A469B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A469B3D0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A4694C48(a1, v5, v6, v4);
}

uint64_t sub_1A469B4A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A469B4EC(uint64_t a1)
{
  if (!qword_1EB13FD98)
  {
    sub_1A4699E4C(255, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13FD98);
    }
  }
}

uint64_t sub_1A469B580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A469B638(uint64_t a1)
{
  sub_1A469BF4C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A469BFA4();
  v9 = sub_1A524D334();
  v10 = *(a1 + 16);
  if (v10 <= 4)
  {
    if (*(a1 + 16) > 1u)
    {
      if (v10 != 2)
      {
        if (v10 == 3)
        {
          v11 = sub_1A5240524();
          (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
          sub_1A3CB8F68();
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_1A52F9790;
          *(v12 + 32) = v9;
          sub_1A5244194();
          swift_allocObject();
          v13 = v9;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        sub_1A3CB8F68();
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1A52F9790;
        *(v21 + 32) = v9;
        sub_1A5241EF4();
        swift_allocObject();
        v22 = v9;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A5241EB4();
      v17 = sub_1A5240524();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      sub_1A3CB8F68();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1A52F9790;
      *(v18 + 32) = v9;
      v19 = v9;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (*(a1 + 16))
    {
      v23 = sub_1A5240524();
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
      sub_1A3CB8F68();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1A52F9790;
      *(v24 + 32) = v9;
      sub_1A5243E64();
      swift_allocObject();
      v25 = v9;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*(a1 + 16) > 7u)
  {
    if (v10 != 8)
    {
      if (v10 == 9)
      {
        sub_1A5242B34();
        swift_allocObject();
        v14 = v9;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A5243DB4();
      swift_allocObject();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (v10 == 5)
  {
    sub_1A5242674();
    swift_allocObject();
    v20 = v9;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3CB8F68();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A52F9790;
  *(v15 + 32) = v9;
  sub_1A5244174();
  swift_allocObject();
  v16 = v9;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A469BDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeMockObservableCollectionBookmark(0, a4, a5, v18);
  sub_1A3C5820C(a2, v17, type metadata accessor for LemonadeBookmark);
  (*(v12 + 16))(v14, a1, a4);

  v20 = sub_1A4838E98(v17, a3, v14);
  a6[3] = v19;
  result = swift_getWitnessTable();
  a6[4] = result;
  *a6 = v20;
  return result;
}

void sub_1A469BF4C(uint64_t a1)
{
  if (!qword_1EB1260A0)
  {
    sub_1A5240524();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1260A0);
    }
  }
}

unint64_t sub_1A469BFA4()
{
  result = qword_1EB13D178;
  if (!qword_1EB13D178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB13D178);
  }

  return result;
}

uint64_t sub_1A469BFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhotosViewBannerCompletionReason.description.getter()
{
  if (*v0)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x657373696D736964;
  }
}

uint64_t PhotosViewBannerCompletionReason.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

unint64_t sub_1A469C110()
{
  result = qword_1EB13FDD8;
  if (!qword_1EB13FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FDD8);
  }

  return result;
}

uint64_t sub_1A469C164()
{
  if (*v0)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x657373696D736964;
  }
}

id sub_1A469C24C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = &v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_pixelBufferDidChangeHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_providePlaceholderHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer;
  sub_1A46A19AC(0);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  *&v14[v17] = v18;
  v19 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__desiredPlayState;
  sub_1A46A1A48(0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  *&v14[v19] = v20;
  *&v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player] = 0;
  *&v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene] = 0;
  v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 0;
  *&v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask] = 0;
  v21 = &v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_spriteSize];
  *v21 = a4;
  v21[1] = a5;
  *(v21 + 16) = 0;
  v22 = &v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_displayScale];
  *v22 = a6;
  *(v22 + 8) = 0;
  sub_1A3EBECA4(a3, v33);
  v23 = v34;
  if (v34)
  {
    v24 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v25 = *(v23 - 8);
    v26 = MEMORY[0x1EEE9AC00](v24);
    v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    v29 = sub_1A524EA94();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v29 = 0;
  }

  v32.receiver = v14;
  v32.super_class = v7;
  v30 = objc_msgSendSuper2(&v32, sel_initWithDisplayAsset_mediaProvider_geometryReference_, a1, a2, v29);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A3C35B00(a3);
  return v30;
}

double sub_1A469C630(uint64_t a1)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A524BF64();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__desiredPlayState];
  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  *(v12 + 16) = a1;
  os_unfair_lock_unlock((v12 + 24));
  if (v13 != a1)
  {
    v33 = v4;
    v34 = v3;
    sub_1A5246BD4();
    v15 = v1;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();

    if (os_log_type_enabled(v16, v17))
    {
      v30[3] = v17;
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v18 = 136446466;
      v32 = v15;
      v19 = [v15 displayAsset];
      if (v19 && (v20 = [v19 uuid], swift_unknownObjectRelease(), v20))
      {
        v21 = sub_1A524C674();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      sub_1A3C2EF94(v21, v23, aBlock);
    }

    (*(v9 + 8))(v11, v8);
    v24 = v33;
    if (qword_1EB1CD270 != -1)
    {
      swift_once();
    }

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A46A1D34;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_245;
    v26 = _Block_copy(aBlock);

    sub_1A524BF14();
    v38 = MEMORY[0x1E69E7CC0];
    sub_1A3C29D74(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v27 = MEMORY[0x1E69E7F60];
    sub_1A46A1D84(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9AEE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v27);
    v28 = v36;
    v29 = v34;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v7, v28, v26);
    _Block_release(v26);
    (*(v24 + 8))(v28, v29);
    (*(v35 + 8))(v7, v37);
  }

  return result;
}

void *sub_1A469CD20()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_1A469CDC0(void *a1)
{
  sub_1A46A1DE8();
}

void (*sub_1A469CDF8(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_1A469CE68;
}

void sub_1A469CE68(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1A46A1DE8();

    v3 = v2;
  }

  else
  {
    sub_1A46A1DE8();
    v3 = v4;
  }
}

void sub_1A469CEE8(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id sub_1A469D064(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1A469D144(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1A3D607F0(*v2, v2[1]);
  return v3;
}

id sub_1A469D2C8()
{
  if (*&v0[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask])
  {

    sub_1A524CD94();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A469D474()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C29D74(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A46A1D84(0, &qword_1EB126E40, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AEE0(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1CD278 = result;
  return result;
}

uint64_t sub_1A469D6FC()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C29D74(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A46A1D84(0, &qword_1EB126E40, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AEE0(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1CD288 = result;
  return result;
}

double sub_1A469D984(uint64_t a1)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_1A5246BD4();
    v8 = v1;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = 7104878;
      v12 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v12 = 136446210;
      v13 = [v8 displayAsset];
      if (v13 && (v14 = [v13 uuid], swift_unknownObjectRelease(), v14))
      {
        v11 = sub_1A524C674();
        v16 = v15;
      }

      else
      {
        v16 = 0xE300000000000000;
      }

      sub_1A3C2EF94(v11, v16, &v18);
    }

    (*(v4 + 8))(v7, v3);
    sub_1A524CD94();
  }

  return result;
}

void sub_1A469DBD4()
{
  v0 = sub_1A5246B34();
  v75 = *(v0 - 8);
  v76 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v74 = v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v70 = v68 - v3;
  v4 = sub_1A5246F24();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v71 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = v68 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v68 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v68 - v12;
  v14 = sub_1A5246B54();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v68 - v19;
  v21 = sub_1A524BFF4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1CD270 != -1)
  {
    swift_once();
  }

  v25 = qword_1EB1CD278;
  *v24 = qword_1EB1CD278;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v72 = v25;
  LOBYTE(v25) = sub_1A524C024();
  (*(v22 + 8))(v24, v21);
  if (v25)
  {
    sub_1A5246B94();
    (*(v15 + 104))(v17, *MEMORY[0x1E69C1B80], v14);
    sub_1A3C29D74(&qword_1EB12EDD8, MEMORY[0x1E69C1B90], MEMORY[0x1E69C1B98]);
    v26 = sub_1A524C534();
    v27 = *(v15 + 8);
    v27(v17, v14);
    v27(v20, v14);
    v28 = v79;
    if ((v26 & 1) == 0 && (v79[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_spriteSize + 16] & 1) == 0)
    {
      v29 = [v79 desiredPlayState];
      v30 = v29;
      if (v29 == 1)
      {
        if (!*&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene])
        {
          sub_1A5246BD4();
          v31 = v28;
          v32 = sub_1A5246F04();
          v33 = sub_1A524D264();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = 7104878;
            v35 = swift_slowAlloc();
            v80[0] = swift_slowAlloc();
            *v35 = 136446210;
            v36 = [v31 displayAsset];
            v69 = 1;
            if (v36)
            {
              v37 = [v36 uuid];
              swift_unknownObjectRelease();
              if (v37)
              {
                v34 = sub_1A524C674();
                v39 = v38;
              }

              else
              {
                v39 = 0xE300000000000000;
                v34 = 7104878;
              }
            }

            else
            {
              v39 = 0xE300000000000000;
            }

            sub_1A3C2EF94(v34, v39, v80);
          }

          (*(v77 + 8))(v13, v78);
          sub_1A469E9B4();
        }
      }

      else if (!v29)
      {
        v40 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene;
        if (*&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene])
        {
          sub_1A5246BD4();
          v41 = v28;
          v42 = sub_1A5246F04();
          v43 = sub_1A524D264();

          if (os_log_type_enabled(v42, v43))
          {
            v68[1] = v43;
            v44 = 7104878;
            v45 = swift_slowAlloc();
            v80[0] = swift_slowAlloc();
            *v45 = 136446210;
            v46 = [v41 displayAsset];
            v69 = 0;
            if (v46)
            {
              v47 = [v46 uuid];
              swift_unknownObjectRelease();
              if (v47)
              {
                v44 = sub_1A524C674();
                v49 = v48;
              }

              else
              {
                v49 = 0xE300000000000000;
                v44 = 7104878;
              }
            }

            else
            {
              v49 = 0xE300000000000000;
            }

            sub_1A3C2EF94(v44, v49, v80);
          }

          (*(v77 + 8))(v10, v78);
          *&v28[v40] = 0;

          v50 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player;
          if (*&v41[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player])
          {
            (*(v75 + 104))(v70, *MEMORY[0x1E69C1B60], v76);

            sub_1A5246B04();
          }

          *&v41[v50] = 0;
        }

        v51 = *&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask];
        if (v51)
        {
          *&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask] = 0;
          sub_1A469D984(v51);

          v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 0;
        }
      }

      if (*&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene])
      {
        v52 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player;
        v53 = *&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player];

        if (v53)
        {
          goto LABEL_42;
        }

        v54 = v73;
        sub_1A5246BD4();
        v55 = v28;
        v56 = sub_1A5246F04();
        v57 = sub_1A524D264();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = 7104878;
          v59 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v80[0] = v70;
          *v59 = 136446466;
          v60 = [v55 displayAsset];
          if (v60)
          {
            v61 = [v60 uuid];
            swift_unknownObjectRelease();
            if (v61)
            {
              v58 = sub_1A524C674();
              v63 = v62;
            }

            else
            {
              v63 = 0xE300000000000000;
            }
          }

          else
          {
            v63 = 0xE300000000000000;
          }

          sub_1A3C2EF94(v58, v63, v80);
        }

        (*(v77 + 8))(v54, v78);
        sub_1A5246B44();
        swift_allocObject();
        v64 = v72;

        v65 = sub_1A5246B24();
        v66 = v79;
        *&v79[v52] = v65;

        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1A5246B14();

        if (*&v66[v52])
        {
LABEL_42:
          v67 = MEMORY[0x1E69C1B68];
          if (v30 != 1)
          {
            v67 = MEMORY[0x1E69C1B60];
          }

          (*(v75 + 104))(v74, *v67, v76);

          sub_1A5246B04();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A469E9B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 1;
    if ([v1 displayAsset])
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v23 = v8;
        if (qword_1EB1CD270 != -1)
        {
          swift_once();
        }

        v24 = v4;
        v14 = qword_1EB1CD278;
        if (qword_1EB1CD280 != -1)
        {
          swift_once();
        }

        v22 = qword_1EB1CD288;
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = v14;
        v16[4] = v13;
        v16[5] = ObjectType;
        aBlock[4] = sub_1A46A1ED4;
        aBlock[5] = v16;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_32_4;
        v21 = _Block_copy(aBlock);

        v17 = v14;
        swift_unknownObjectRetain();
        sub_1A524BF14();
        v25 = MEMORY[0x1E69E7CC0];
        sub_1A3C29D74(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        v18 = MEMORY[0x1E69E7F60];
        sub_1A46A1D84(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1A3C9AEE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v18);
        sub_1A524E224();
        v19 = v21;
        MEMORY[0x1A5908800](0, v11, v6, v21);
        _Block_release(v19);
        swift_unknownObjectRelease();
        (*(v24 + 8))(v6, v3);
        (*(v23 + 8))(v11, v7);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1A469EDF4(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v14[11] = a4;
  sub_1A46A1D84(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v14[13] = v14 - v5;
  v6 = sub_1A5246F24();
  v14[9] = *(v6 - 8);
  v14[10] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v14[12] = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46A1D84(0, &qword_1EB13FEC8, v8, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
    v13 = v12;
    sub_1A5245DF4();
  }
}

double sub_1A469F818(int a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v24 = a1;
  v4 = sub_1A524BEE4();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1A524BF64();
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A46A1D84(0, &qword_1EB13FEC8, v10, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v23[-v16];
  (*(v13 + 16))(&v23[-v16], a3, v12, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v12);
  *(v19 + v18 + v14) = v24;
  aBlock[4] = sub_1A46A21EC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_68_1;
  v20 = _Block_copy(aBlock);
  sub_1A524BF14();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A3C29D74(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1A46A1D84(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AEE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v21);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v20);
  _Block_release(v20);
  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);

  return result;
}

uint64_t sub_1A469FBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1A524CC04();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = sub_1A5246F24();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A469FD2C, 0, 0);
}

uint64_t sub_1A469FD2C()
{
  if (qword_1EB1CD290 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5245104();
  __swift_project_value_buffer(v1, qword_1EB1CD298);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1A469FE0C;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE2A290](v3);
}

uint64_t sub_1A469FE0C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1A46A015C;
  }

  else
  {
    v2 = sub_1A469FF20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A469FF20(__n128 a1)
{
  v18 = v1;
  v2 = v1[4];
  sub_1A5246BD4();
  v3 = v2;
  v4 = sub_1A5246F04();
  LOBYTE(v2) = sub_1A524D264();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = 7104878;
    v6 = v1[4];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446210;
    v8 = [v6 displayAsset];
    if (v8 && (v9 = [v8 uuid], swift_unknownObjectRelease(), v9))
    {
      v5 = sub_1A524C674();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    sub_1A3C2EF94(v5, v11, &v17);
  }

  v12 = v1[14];
  v13 = v1[10];
  v14 = v1[11];

  (*(v14 + 8))(v12, v13);
  sub_1A469F818(1, v1[5], v1[6]);

  v15 = v1[1];

  return v15();
}

uint64_t sub_1A46A015C()
{
  v42 = v0;
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_1A3DBD9A0();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 128);
  v5 = *(v0 + 32);
  if (v3)
  {

    sub_1A5246BD4();
    v6 = v5;
    v7 = sub_1A5246F04();
    v8 = sub_1A524D264();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = 7104878;
      v10 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v11 = 136446210;
      v12 = [v10 displayAsset];
      if (v12 && (v13 = [v12 uuid], swift_unknownObjectRelease(), v13))
      {
        v9 = sub_1A524C674();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      sub_1A3C2EF94(v9, v15, &v41);
    }

    v27 = *(v0 + 104);
    v28 = *(v0 + 80);
    v29 = *(v0 + 88);

    (*(v29 + 8))(v27, v28);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    v35 = *(v0 + 56);
    v36 = sub_1A469F818(0, *(v0 + 40), *(v0 + 48));
    (*(v34 + 8))(v33, v35, v36);
    v37 = *(v0 + 16);
  }

  else
  {

    sub_1A5246BD4();
    v16 = v5;
    v17 = v4;
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 32);
      v21 = swift_slowAlloc();
      swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v21 = 136446466;
      v22 = [v20 displayAsset];
      if (v22 && (v23 = [v22 uuid], swift_unknownObjectRelease(), v23))
      {
        v24 = sub_1A524C674();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      sub_1A3C2EF94(v24, v26, &v41);
    }

    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    v32 = *(v0 + 80);

    (*(v31 + 8))(v30, v32);
    v38 = *(v0 + 128);
    sub_1A469F818(0, *(v0 + 40), *(v0 + 48));
    v37 = v38;
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1A46A0610(uint64_t a1, uint64_t a2)
{
  sub_1A46A1D84(0, &unk_1EB12B250, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = swift_projectBox();
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  swift_beginAccess();
  return sub_1A46A2154(v5, v6);
}

uint64_t sub_1A46A0760(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1A5240DE4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

double sub_1A46A0854(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v55 = a5;
  v56 = a4;
  v57 = a3;
  v6 = sub_1A5246F24();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v46 - v10;
  v11 = sub_1A524BEE4();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A524BF64();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E6968FB0];
  sub_1A46A1D84(0, &unk_1EB12B250, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v46 - v16;
  v18 = sub_1A5240E64();
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v25 = swift_projectBox();
  swift_beginAccess();
  sub_1A46A20AC(v25, v17, &unk_1EB12B250, v14);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1A3C6898C(v17, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    sub_1A5246BD4();
    v26 = v56;
    v27 = a1;
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = 7104878;
      v31 = swift_slowAlloc();
      swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v31 = 136446466;
      v32 = [v26 displayAsset];
      if (v32 && (v33 = [v32 uuid], swift_unknownObjectRelease(), v33))
      {
        v30 = sub_1A524C674();
        v35 = v34;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      sub_1A3C2EF94(v30, v35, aBlock);
    }

    (*(v53 + 8))(v8, v54);
    return sub_1A469F818(0, v57, v55);
  }

  else
  {
    v36 = v56;
    (*(v19 + 32))(v24, v17, v18);
    (*(v19 + 16))(v21, v24, v18);
    sub_1A5246BC4();
    swift_allocObject();
    v37 = sub_1A5246BB4();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    aBlock[4] = sub_1A46A212C;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_62_0;
    v39 = _Block_copy(aBlock);
    v40 = v36;

    v56 = v18;
    v41 = v46;
    sub_1A524BF14();
    v58 = MEMORY[0x1E69E7CC0];
    sub_1A3C29D74(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v42 = MEMORY[0x1E69E7F60];
    sub_1A46A1D84(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9AEE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v42);
    v43 = v48;
    v44 = v51;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v41, v43, v39);
    _Block_release(v39);

    (*(v50 + 8))(v43, v44);
    (*(v47 + 8))(v41, v49);
    (*(v19 + 8))(v24, v56);
  }

  return result;
}

uint64_t sub_1A46A1224()
{
  v0 = sub_1A52450C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5245104();
  __swift_allocate_value_buffer(v4, qword_1EB1CD298);
  __swift_project_value_buffer(v4, qword_1EB1CD298);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C13D0], v0);
  return sub_1A52450E4();
}

void sub_1A46A132C(uint64_t a1)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BFF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1CD270 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB1CD278;
  *v10 = qword_1EB1CD278;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1A524C024();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_1A5246BD4();
    v13 = v1;
    v14 = sub_1A5246F04();
    v15 = sub_1A524D264();

    if (os_log_type_enabled(v14, v15))
    {
      v22[1] = v3;
      v22[2] = a1;
      v16 = 7104878;
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v17 = 136446210;
      v18 = [v13 displayAsset];
      if (v18 && (v19 = [v18 uuid], swift_unknownObjectRelease(), v19))
      {
        v16 = sub_1A524C674();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
      }

      sub_1A3C2EF94(v16, v21, &v23);
    }

    (*(v4 + 8))(v6, v3);
    *&v13[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene] = a1;

    v13[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 0;
    sub_1A469DBD4();
  }

  else
  {
    __break(1u);
  }
}

void sub_1A46A16AC(char a1)
{
  v3 = sub_1A524BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1CD270 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB1CD278;
  *v6 = qword_1EB1CD278;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1A524C024();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene) == 1)
    {
      *(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene) = 0;
      v9 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask);
      *(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask) = 0;
      sub_1A469D984(v9);

      if (a1)
      {
        sub_1A469DBD4();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1A46A182C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1A3EBECA4(a3, v17);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1A524EA94();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 initWithDisplayAsset:a1 mediaProvider:a2 geometryReference:v14 spriteSize:0.0 displayScale:{0.0, 1.0}];
  swift_unknownObjectRelease();
  sub_1A3C35B00(a3);
  return v15;
}

void sub_1A46A19AC(uint64_t a1)
{
  if (!qword_1EB13FDF8)
  {
    sub_1A46A1D84(255, &qword_1EB13FE00, 255, type metadata accessor for CVBuffer, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1A524E4E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FDF8);
    }
  }
}

void sub_1A46A1A48(uint64_t a1)
{
  if (!qword_1EB13FE10)
  {
    type metadata accessor for PXVideoSessionDesiredPlayState(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1A524E4E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FE10);
    }
  }
}

id sub_1A46A1AD8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = &v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_pixelBufferDidChangeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_providePlaceholderHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer;
  sub_1A46A19AC(0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  *&v6[v15] = v16;
  v17 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__desiredPlayState;
  sub_1A46A1A48(0);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *&v6[v17] = v18;
  *&v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene] = 0;
  v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask] = 0;
  *(v18 + 16) = 0;
  v19 = &v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_spriteSize];
  *v19 = a4;
  v19[1] = a5;
  *(v19 + 16) = 0;
  v20 = &v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_displayScale];
  *v20 = a6;
  *(v20 + 8) = 0;
  sub_1A3EBECA4(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22);
    v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_1A524EA94();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
  v31.receiver = v6;
  v31.super_class = v28;
  v29 = objc_msgSendSuper2(&v31, sel_initWithDisplayAsset_mediaProvider_geometryReference_, a1, a2, v27);
  swift_unknownObjectRelease();
  sub_1A3C35B00(a3);
  return v29;
}

void sub_1A46A1D34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A469DBD4();
  }
}

void sub_1A46A1D84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A46A1DE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer);
  os_unfair_lock_lock((v1 + 24));
  sub_1A46A2374((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  if (v6)
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
    if (v2)
    {
      v4 = v3;
      v5 = v2;
      v2();
      sub_1A3C784D4(v5, v4);
    }
  }
}

double sub_1A46A1EE8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A46A1D84(0, &qword_1EB13FEC8, a3, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3 + ((*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80));

  return sub_1A46A0854(a1, v6, v7, v8, v9);
}

uint64_t sub_1A46A1F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A46A1D84(0, &qword_1EB13FEC8, a3, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A3D60150;

  return sub_1A469FBF4(v10, v11, v12, v7, v8, v9, v3 + v6);
}

uint64_t sub_1A46A20AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A46A1D84(0, a3, 255, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46A2154(uint64_t a1, uint64_t a2)
{
  sub_1A46A1D84(0, &unk_1EB12B250, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A46A22E0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0);
    v5 = a1;
    v4(a1);
  }
}

id sub_1A46A2374@<X0>(void **a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  v7 = v5 == 0;
  if (*a1)
  {
    if (v5)
    {
      type metadata accessor for CVBuffer(0);
      sub_1A3C29D74(&qword_1EB13FED0, type metadata accessor for CVBuffer, &unk_1A5337BB0);
      v7 = sub_1A5241714();
    }

    else
    {
      v7 = 0;
    }
  }

  *a1 = v5;
  *a2 = (v7 & 1) == 0;
  return v5;
}

void sub_1A46A2440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for AsyncPersonImageConfiguration(uint64_t a1)
{
  result = qword_1EB164D40;
  if (!qword_1EB164D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46A250C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  *(a7 + 9) = a3;
  *(a7 + 10) = a4;
  v12 = type metadata accessor for AsyncPersonImageConfiguration(0);
  v13 = v12[7];
  v14 = sub_1A5243624();
  result = (*(*(v14 - 8) + 32))(a7 + v13, a5, v14);
  *(a7 + v12[8]) = a8;
  *(a7 + v12[9]) = a6;
  return result;
}

id sub_1A46A25C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result = [v1 uuid];
  v4 = result;
  if (v2)
  {
    if (result)
    {
LABEL_5:
      v5 = sub_1A524C674();

      return v5;
    }

    __break(1u);
  }

  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1A46A2660(unsigned int *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() sharedManager];
  [v2 cancelRequestForRequestID_];
}

BOOL sub_1A46A26D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncPersonImageConfiguration(0);
  v5 = *(v4 + 36);
  v6 = *(a1 + v5);
  if (v6)
  {
    v7 = *(a2 + v5);
    if (([v6 hasContentEqualTo_] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + v5))
    {
      return 0;
    }

    v7 = 0;
    v6 = 0;
  }

  v8 = v6;
  v9 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      return 0;
    }
  }

  v11 = *a1;
  v12 = sub_1A524EB54();
  v20 = *a2;
  v13 = *a2;
  v14 = sub_1A524EB54();
  v15 = v12;
  v16 = v14;
  if (v12 == v14)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = [v15 isEqual:v16];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10))
  {
    sub_1A5243624();
    sub_1A46A323C(&qword_1EB124D78, MEMORY[0x1E69C2540], MEMORY[0x1E69C2548]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v20 == v19)
    {
      return *(a1 + *(v4 + 32)) == *(a2 + *(v4 + 32));
    }
  }

  return 0;
}

void sub_1A46A2908(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = sub_1A5243624();
  MEMORY[0x1EEE9AC00](v5);
  type metadata accessor for AsyncPersonImageConfiguration(0);
  PXSizeScale();
}

unint64_t sub_1A46A2CAC()
{
  result = qword_1EB125830;
  if (!qword_1EB125830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125830);
  }

  return result;
}

void sub_1A46A2D70(uint64_t a1)
{
  sub_1A5243624();
  if (v1 <= 0x3F)
  {
    sub_1A3F2D6AC(319, v1);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A46A2E48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  if (*(a1 + 64))
  {
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v5;
    aBlock[4] = sub_1A46A3010;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_246;
    _Block_copy(aBlock);

    sub_1A46A30B8(a1, v15);
  }

  else
  {
    v7 = *(a1 + 8);
    [*a1 px_pixelSize];
    v9 = v8;
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v3;
    *(v12 + 32) = v5;
    *(v12 + 40) = v9;
    *(v12 + 48) = v11;
    v13 = *(a1 + 16);
    *(v12 + 72) = *(a1 + 32);
    *(v12 + 56) = v13;
    *(v12 + 88) = v7 & 1;
    v15[4] = sub_1A46A31D4;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1A3C2E0D0;
    v15[3] = &block_descriptor_16_10;
    _Block_copy(v15);

    v14 = v5;
  }

  px_dispatch_on_main_queue();
}

void sub_1A46A3010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1A46A3180();
  v3 = swift_allocError();
  *v4 = v2;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v12 = 1;
  v6 = v3;
  v11 = 1;
  v5 = v2;
  v1(&v6);
}

uint64_t sub_1A46A30B8(uint64_t a1, uint64_t a2)
{
  sub_1A46A311C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A46A311C(uint64_t a1)
{
  if (!qword_1EB13FED8)
  {
    sub_1A46A3180();
    v1 = sub_1A524ECF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FED8);
    }
  }
}

unint64_t sub_1A46A3180()
{
  result = qword_1EB13FEE0;
  if (!qword_1EB13FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FEE0);
  }

  return result;
}

uint64_t sub_1A46A31D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);
  v13 = 0;
  v6 = v2;
  v4 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = v4;
  v9 = *(v0 + 72);
  v10 = v3;
  v11 = 0;
  v12 = 0;
  return v1(&v6);
}

uint64_t sub_1A46A323C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A46A328C()
{
  result = [objc_allocWithZone(type metadata accessor for PlacesLocationAuthorizationMonitor(0)) init];
  qword_1EB17AC78 = result;
  return result;
}

uint64_t *sub_1A46A32C0()
{
  if (qword_1EB17AC70 != -1)
  {
    swift_once();
  }

  return &qword_1EB17AC78;
}

id static PlacesLocationAuthorizationMonitor.sharedInstance.getter()
{
  if (qword_1EB17AC70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB17AC78;

  return v1;
}

uint64_t type metadata accessor for PlacesLocationAuthorizationMonitor(uint64_t a1)
{
  result = qword_1EB160EC0;
  if (!qword_1EB160EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for CLAuthorizationStatus()
{
  if (!qword_1EB126990)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB126990);
    }
  }
}

uint64_t sub_1A46A3480@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

void sub_1A46A3534()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor, &protocol conformance descriptor for PlacesLocationAuthorizationMonitor);
  v1 = v0;
  sub_1A5245714();
}

void sub_1A46A35F4(int a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor, &protocol conformance descriptor for PlacesLocationAuthorizationMonitor);
  v2 = v1;
  sub_1A5245724();
}

void sub_1A46A36A0(uint64_t *a1)
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
  *(v3 + 40) = swift_getKeyPath();
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 32) = v1;
  v5 = v1;
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor, &protocol conformance descriptor for PlacesLocationAuthorizationMonitor);
  sub_1A5245704();
}

void sub_1A46A3794(id **a1)
{
  v1 = *a1;
  ((*a1)[7])(*a1, 0);

  free(v1);
}

void PlacesLocationAuthorizationMonitor.init(locationManager:)(void *a1)
{
  sub_1A46A3B70(0);
  MEMORY[0x1EEE9AC00](v1);
  LODWORD(v2) = 0;
  v3 = 1;
  type metadata accessor for PlacesLocationAuthorizationMonitor(0);
  type metadata accessor for CLAuthorizationStatus();
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor, &protocol conformance descriptor for PlacesLocationAuthorizationMonitor);
  sub_1A46A4328(&unk_1EB1269A0, type metadata accessor for CLAuthorizationStatus, &unk_1A5355F30);
  sub_1A5245754();
}

void sub_1A46A3B70(uint64_t a1)
{
  if (!qword_1EB124BC8)
  {
    type metadata accessor for PlacesLocationAuthorizationMonitor(255);
    type metadata accessor for CLAuthorizationStatus();
    sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor, &protocol conformance descriptor for PlacesLocationAuthorizationMonitor);
    sub_1A5245764();
  }
}

uint64_t sub_1A46A3C1C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

void sub_1A46A3C78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PXPlacesLocationAuthorizationMonitor_observable;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1A46A3CD8()
{
  v1 = OBJC_IVAR___PXPlacesLocationAuthorizationMonitor_observable;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A46A3D2C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPlacesLocationAuthorizationMonitor_observable;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PlacesLocationAuthorizationMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlacesLocationAuthorizationMonitor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46A3E64@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x88))();
  *a1 = result;
  return result;
}

void sub_1A46A3EC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlacesLocationAuthorizationMonitor(0);
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor, &protocol conformance descriptor for PlacesLocationAuthorizationMonitor);

  sub_1A5245C54();
}

void _s12PhotosUICore34PlacesLocationAuthorizationMonitorC024locationManagerDidChangeE0yySo010CLLocationH0CF_0()
{
  v1 = [*(v0 + OBJC_IVAR___PXPlacesLocationAuthorizationMonitor_locationManager) authorizationStatus];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v6[4] = sub_1A46A457C;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3DC72D4;
  v6[3] = &block_descriptor_247;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 performChanges_];
  _Block_release(v4);
}

unint64_t sub_1A46A40E4()
{
  result = qword_1EB13FF00;
  if (!qword_1EB13FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF00);
  }

  return result;
}

unint64_t sub_1A46A413C()
{
  result = qword_1EB13FF08;
  if (!qword_1EB13FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF08);
  }

  return result;
}

unint64_t sub_1A46A4194()
{
  result = qword_1EB13FF10;
  if (!qword_1EB13FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF10);
  }

  return result;
}

unint64_t sub_1A46A41EC()
{
  result = qword_1EB13FF18;
  if (!qword_1EB13FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF18);
  }

  return result;
}

unint64_t sub_1A46A4244()
{
  result = qword_1EB13FF20;
  if (!qword_1EB13FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF20);
  }

  return result;
}

uint64_t sub_1A46A4328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A46A4374()
{
  result = qword_1EB13FF30;
  if (!qword_1EB13FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF30);
  }

  return result;
}

void sub_1A46A43D0(uint64_t a1)
{
  sub_1A46A3B70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t SharedAlbumCreationView.viewModel.getter()
{
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

void *sub_1A46A464C@<X0>(void *a2@<X8>)
{
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a2 = v4;
  return result;
}

uint64_t sub_1A46A46C8(void **a1, void *a2)
{
  v2 = *a1;
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v3 = v2;
  return sub_1A524B6B4();
}

void (*SharedAlbumCreationView.viewModel.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = *(v1 + 8);
  v3[6] = v6;
  v3[7] = v5;
  *v3 = v6;
  v3[1] = v5;
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v7;
  v8 = v6;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedAlbumCreationView.$viewModel.getter()
{
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

void *SharedAlbumCreationView.sharedAlbum.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1A46A49BC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a1;
  type metadata accessor for SharedAlbumActionViewModel(0);
  v8 = a1;
  sub_1A524B694();
  v9 = v17[1];
  *a4 = v17[0];
  *(a4 + 8) = v9;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  sub_1A46A53DC(0, &qword_1EB12E7A8, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel);
  v10 = a2;
  v11 = v8;
  v12 = sub_1A415F150(v11, a2);
  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x1F8))(a3);
  v17[0] = v12;
  sub_1A46A4C64(0, &qword_1EB13FFA0, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  LOBYTE(v16) = a3 ^ 1;
  v13 = v12;
  v14 = sub_1A4407D6C(v17, &v16, 0, 0);
  v15 = type metadata accessor for SharedAlbumCreationView(0);
  sub_1A478C8F8(v14, (a4 + *(v15 + 28)));
}

uint64_t type metadata accessor for SharedAlbumCreationView(uint64_t a1)
{
  result = qword_1EB1CD940;
  if (!qword_1EB1CD940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharedAlbumCreationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SharedAlbumCreationView(0) + 28);

  return sub_1A46A4BE4(v3, a1);
}

uint64_t sub_1A46A4BE4(uint64_t a1, uint64_t a2)
{
  sub_1A46A4C64(0, &qword_1EB136178, type metadata accessor for LemonadeCollectionCustomizationView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A46A4C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A46A53DC(255, &qword_1EB12E7A8, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel);
    v7 = v6;
    v8 = sub_1A440DC18();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A46A4D10()
{
  sub_1A46A53DC(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v12 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v13 = sub_1A5240D44();
  v14 = [v12 initWithPhotoLibraryURL_];

  (*(v8 + 8))(v10, v7);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  type metadata accessor for LemonadePhotoLibraryContext(0, v16);
  v17 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v14, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v21);
  v18 = sub_1A3C799F0(v6, 0, 0, 0, v3, &v21, v17, 2);
  type metadata accessor for SharedAlbumActionViewModel(0);

  v19 = sub_1A3C30368();
  SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v18, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v19 & 1, 0, 0, 0, 0);
}

unint64_t sub_1A46A5188()
{
  result = qword_1EB13FFA8;
  if (!qword_1EB13FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FFA8);
  }

  return result;
}

uint64_t sub_1A46A51FC(uint64_t a1)
{
  v2 = sub_1A46A551C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A46A5248(uint64_t a1)
{
  v2 = sub_1A46A551C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A46A52BC(uint64_t a1)
{
  sub_1A46A53DC(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1A46A53DC(319, &qword_1EB120A30, sub_1A3D9D024, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A46A4C64(319, &qword_1EB136178, type metadata accessor for LemonadeCollectionCustomizationView);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A46A53DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A46A5450()
{
  result = qword_1EB13FFB0;
  if (!qword_1EB13FFB0)
  {
    sub_1A46A4C64(255, &qword_1EB136178, type metadata accessor for LemonadeCollectionCustomizationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FFB0);
  }

  return result;
}

unint64_t sub_1A46A54C4()
{
  result = qword_1EB136188;
  if (!qword_1EB136188)
  {
    type metadata accessor for SharedAlbumCreationView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136188);
  }

  return result;
}

unint64_t sub_1A46A551C()
{
  result = qword_1EB13FFB8;
  if (!qword_1EB13FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FFB8);
  }

  return result;
}

uint64_t sub_1A46A5598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1A3C77080(v16);
    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v16[0];
    v13 = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v15 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v15);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A46A57FC(double a1)
{
  sub_1A524CC54();
  v6 = v1;
  v7 = a1;
  return sub_1A41D1440(sub_1A46A5884, &v5, "PhotosUICore/LemonadeBookmarkItemListManager.swift", 50, 2, 91, v3) & 1;
}

uint64_t sub_1A46A5884@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**(*(v1 + 16) + 32) + 376))(*(v1 + 24));
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A46A58F4()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A46A598C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadeBookmarkItemListManager(a1, a2);

    ;
  }
}

id sub_1A46A5AA0(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset] = 0;
  *&v5[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup] = a1;
  *&v5[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_newKeyAsset] = a2;
  v6 = a1;
  v7 = a2;
  result = [v6 photoLibrary];
  if (result)
  {
    v9 = result;
    v11.receiver = v5;
    v11.super_class = v2;
    v10 = objc_msgSendSuper2(&v11, sel_initWithPhotoLibrary_, result);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A46A5C48(void (*a1)(), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup];
  v6 = [v5 photoLibrary];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v7 librarySpecificFetchOptions];

    v10 = [v8 fetchKeyAssetForSocialGroup:v5 options:v9];
    if (v10 && (v11 = [v10 firstObject]) != 0)
    {
      v12 = *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset];
      *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset] = v11;
    }

    else
    {
      v13 = *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset];
      *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset] = 0;

      v14 = sub_1A524D244();
      v15 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v15, v14))
      {
        v16 = v15;
        v17 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v17 = 136315138;
        v18 = [v5 localIdentifier];
        v19 = sub_1A524C674();
        v21 = v20;

        sub_1A3C2EF94(v19, v21, &aBlock);
      }
    }

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_1A46A5F80;
    v30 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1A3C2E0D0;
    v28 = &block_descriptor_248;
    v23 = _Block_copy(&aBlock);

    v29 = a1;
    v30 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1A3D6084C;
    v28 = &block_descriptor_3_6;
    v24 = _Block_copy(&aBlock);

    [v2 performChanges:v23 completionHandler:v24];
    _Block_release(v24);
    _Block_release(v23);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A46A5F80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup;
    v3 = [objc_opt_self() changeRequestForSocialGroup:*(Strong + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup) userAction:1];
    if (v3)
    {
      v4 = v3;
      [v3 setKeyAsset_];
    }

    else
    {
      v5 = sub_1A524D244();
      v6 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v6, v5))
      {
        v7 = v6;
        v8 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v8 = 136315138;
        v9 = [*&v1[v2] localIdentifier];
        v10 = sub_1A524C674();
        v12 = v11;

        sub_1A3C2EF94(v10, v12, &v13);
      }
    }
  }
}

void sub_1A46A616C(void (*a1)(), uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1A46A6414;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3C2E0D0;
  v11 = &block_descriptor_7_2;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D6084C;
  v11 = &block_descriptor_10_11;
  v7 = _Block_copy(&v8);

  [v2 performChanges:v6 completionHandler:v7];
  _Block_release(v7);
  _Block_release(v6);
}

double sub_1A46A62F4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);

  return result;
}

void sub_1A46A6414()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset);
    if (v2)
    {
      v3 = OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup;
      v4 = *(Strong + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup);
      v5 = objc_opt_self();
      v6 = v2;
      v7 = [v5 changeRequestForSocialGroup:v4 userAction:1];
      if (v7)
      {
        v8 = v7;
        [v7 setKeyAsset_];

        return;
      }

      v17 = sub_1A524D244();
      v18 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = v18;
        v20 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v20 = 136315138;
        v21 = [*&v1[v3] localIdentifier];
        v22 = sub_1A524C674();
        v24 = v23;

        sub_1A3C2EF94(v22, v24, &v25);
      }
    }

    else
    {
      v9 = sub_1A524D244();
      v10 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = v10;
        v12 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v12 = 136315138;
        v13 = [*&v1[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup] localIdentifier];
        v14 = sub_1A524C674();
        v16 = v15;

        sub_1A3C2EF94(v14, v16, &v25);
      }
    }
  }
}

uint64_t StoryAsyncPlayerView.init(player:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for StoryAsyncPlayerView(0);
  type metadata accessor for TungstenFirstFrameObserver(0);

  return sub_1A5247C74();
}

uint64_t sub_1A46A67A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TungstenFirstFrameObserver(0);
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  v4 = v3;
  result = sub_1A3EEE49C(v3);
  *a1 = result;
  return result;
}