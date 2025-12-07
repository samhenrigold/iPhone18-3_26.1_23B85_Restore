uint64_t sub_1A4074294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A40742F4(uint64_t a1)
{
  if (!qword_1EB1310C8)
  {
    sub_1A407435C(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1310C8);
    }
  }
}

void sub_1A4074390(uint64_t a1)
{
  if (!qword_1EB1310D8)
  {
    sub_1A4074420(255);
    sub_1A4074568(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1310D8);
    }
  }
}

void sub_1A4074420(uint64_t a1)
{
  if (!qword_1EB1310E0)
  {
    sub_1A4074590(255, &qword_1EB1310E8, sub_1A40744AC, MEMORY[0x1E697E048]);
    sub_1A4074504(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1310E0);
    }
  }
}

void sub_1A40744AC()
{
  if (!qword_1EB1310F0)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1310F0);
    }
  }
}

void sub_1A4074504(uint64_t a1)
{
  if (!qword_1EB1310F8)
  {
    sub_1A3EE213C(255);
    sub_1A3F37498();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1310F8);
    }
  }
}

void sub_1A4074590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A40745F4(uint64_t a1)
{
  if (!qword_1EB133820)
  {
    sub_1A4074688(255);
    sub_1A4074718(&qword_1EB1270E0, sub_1A4074688, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133820);
    }
  }
}

void sub_1A40746BC()
{
  if (!qword_1EB127680)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB127680);
    }
  }
}

uint64_t sub_1A4074718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A407480C(uint64_t a1)
{
  type metadata accessor for PXStorageTipType();
  if (v1 <= 0x3F)
  {
    sub_1A40730D8(319, &qword_1EB131110, sub_1A40730A4, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for PXStorageTipType()
{
  if (!qword_1EB131130)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB131130);
    }
  }
}

void sub_1A4074924(uint64_t a1)
{
  if (!qword_1EB128980)
  {
    sub_1A3F93828();
    v1 = sub_1A52480E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128980);
    }
  }
}

void sub_1A4074994(uint64_t a1)
{
  sub_1A4074924(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A4074A1C(uint64_t a1)
{
  if (!qword_1EB131120)
  {
    sub_1A407435C(255);
    sub_1A4074718(&qword_1EB131128, sub_1A407435C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131120);
    }
  }
}

unint64_t sub_1A4074AB0()
{
  result = qword_1EB131148;
  if (!qword_1EB131148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131148);
  }

  return result;
}

uint64_t sub_1A4074B04(uint64_t a1, uint64_t a2)
{
  sub_1A40730D8(0, &unk_1EB139370, sub_1A40730A4, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4074B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4074C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static PhotoKitPlayMovieAssetActionPerformer.localizedTitle(for:actionManager:)()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

id sub_1A4074F18()
{
  sub_1A40751A0();

  return [v0 completeUserInteractionTaskWithSuccess:1 error:0];
}

void sub_1A40751A0()
{
  v1 = v0;
  v2 = sub_1A5241574();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - v8;
  v10 = [v1 selectionSnapshot];
  if (!v10)
  {
    sub_1A4076270();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return;
  }

  v11 = v10;
  v12 = [v1 person];
  v13 = _s12PhotosUICore37PhotoKitPlayMovieAssetActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialO0CSgtFZ_0(v11);

  if ((v13 & 1) == 0)
  {
    sub_1A4076270();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();

    return;
  }

  v58 = v3;
  v14 = [v1 photosDataSourceSnapshot];
  v15 = [v11 selectedIndexPaths];
  [v15 firstItemIndexPathForDataSourceIdentifier_];
  v16 = v62;
  v17 = sub_1A52403B4();
  v60 = v15;
  v67 = v14;
  if (v16 == v17)
  {
    v18 = [v14 firstAssetCollection];
    if (!v18)
    {
      v19 = [v1 assetsByAssetCollection];
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      sub_1A404B7BC(0);
      sub_1A3D8E4B0();
      v20 = sub_1A524C3E4();

      v18 = sub_1A4075998(v20);
      v15 = v60;

      if (!v18)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v18 = [v14 assetCollectionForSection_];
    if (!v18)
    {
LABEL_6:
      sub_1A4076270();
      swift_allocError();
      *v21 = 2;
      swift_willThrow();

      return;
    }
  }

  if ([v15 itemCount] != 1)
  {
    v32 = [v67 fetchResultWithAssetsAtIndexPaths_];
    goto LABEL_15;
  }

  v24 = [v1 assetsFetchResult];
  v25 = [v24 firstObject];

  if (!v25)
  {
    sub_1A4076270();
    swift_allocError();
    *v53 = 3;
    swift_willThrow();

LABEL_20:
    return;
  }

  v26 = v67;
  v27 = [v67 indexPathForAsset:v25 inCollection:v18];
  if (!v27)
  {
    sub_1A4076270();
    swift_allocError();
    *v54 = 4;
    swift_willThrow();

    goto LABEL_20;
  }

  v59 = v18;
  v28 = v27;
  sub_1A5241554();

  v29 = v58;
  (v58)[4](v9, v5, v2);
  v30 = sub_1A5241544();
  v31 = [v67 assetsStartingAtIndexPath_];

  (v29[1])(v9, v2);
  v32 = v31;
  v18 = v59;
LABEL_15:
  v33 = v32;
  v34 = sub_1A4075A08(1);
  v35 = sub_1A4075A08(*MEMORY[0x1E6978FE8]);
  v58 = v33;

  v36 = objc_allocWithZone(MEMORY[0x1E6978AF8]);
  v57 = v35;
  v37 = [v36 initWithAssetFetchResult_];
  if ([objc_opt_self() shouldDisplayTitleOfAssetCollection_])
  {
    v38 = [v18 localizedTitle];
    [v37 setTitle_];

    v39 = [v18 localizedSubtitle];
    [v37 setSubtitle_];
  }

  v56 = [objc_opt_self() transientAssetCollectionWithOptions_];
  v40 = [objc_allocWithZone(PXStoryConfiguration) initWithAssetCollection_];
  v41 = [v40 copyWithKeyAsset_];
  v55 = v37;
  v42 = v41;

  v43 = sub_1A524C634();
  [v42 setLaunchType_];

  [v42 configureForSlideShow];
  [v42 setAllowsVerticalGestures_];
  sub_1A3C52C70(0, &qword_1EB126B38, off_1E7720430);
  static PXStoryUIFactory.viewController(configuration:)(v42);
  v45 = v44;
  swift_unknownObjectRelease();
  v46 = objc_opt_self();
  v47 = sub_1A5242A64();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = sub_1A40762C4;
  v66 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1A4075CF4;
  v64 = &block_descriptor_87;
  v49 = _Block_copy(&aBlock);
  v59 = v18;
  v50 = v34;
  v51 = v49;

  v52 = [v46 _zoomWithOptions_sourceItemProvider_];
  _Block_release(v51);

  [v45 setPreferredTransition_];
  [v1 presentViewController_];
}

void *sub_1A4075998(uint64_t a1)
{
  v2 = sub_1A524E234();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1A4076180(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_1A4075A08(uint64_t a1)
{
  if ([v1 count] > a1 && (v4 = objc_msgSend(v16, sel_fetchedObjectIDs)) != 0)
  {
    v5 = v4;
    sub_1A3C52C70(0, &qword_1EB126AF0, 0x1E695D630);
    v6 = sub_1A524CA34();

    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8 >= a1)
        {
          v9 = a1;
        }

        else
        {
          v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (v8 >= v10)
        {
          goto LABEL_12;
        }

LABEL_32:
        __break(1u);
        __break(1u);
        swift_unknownObjectRelease_n();
        sub_1A4075EB0(a1, v2, v5, v10);
        swift_unknownObjectRelease();
        v12 = objc_allocWithZone(MEMORY[0x1E6978840]);
        v13 = sub_1A524CA14();

        v14 = [v12 initWithExistingFetchResult:v16 filteredObjectIDs:v13];

        return v14;
      }
    }

    if (v6 < 0)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }

    v2 = sub_1A524E2B4();
    result = sub_1A524E2B4();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v2 >= a1)
      {
        v15 = a1;
      }

      else
      {
        v15 = v2;
      }

      if (v2 < 0)
      {
        v15 = a1;
      }

      if (a1)
      {
        v10 = v15;
      }

      else
      {
        v10 = 0;
      }

      if (sub_1A524E2B4() >= v10)
      {
LABEL_12:
        if ((v6 & 0xC000000000000001) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {

    return v16;
  }

  return result;
}

id sub_1A4075CF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id PhotoKitPlayMovieAssetActionPerformer.__allocating_init(actionType:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = sub_1A524C634();

  v5 = [v3 initWithActionType_];

  return v5;
}

id PhotoKitPlayMovieAssetActionPerformer.init(actionType:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A524C634();

  v8.receiver = v2;
  v8.super_class = type metadata accessor for PhotoKitPlayMovieAssetActionPerformer(v4, v5);
  v6 = objc_msgSendSuper2(&v8, sel_initWithActionType_, v3);

  return v6;
}

id PhotoKitPlayMovieAssetActionPerformer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotoKitPlayMovieAssetActionPerformer(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A4075EB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_1A3C52C70(0, &qword_1EB126AF0, 0x1E695D630);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3CB8F68();
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

uint64_t _s12PhotosUICore37PhotoKitPlayMovieAssetActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialO0CSgtFZ_0(void *a1)
{
  result = PFIsPhotosAppAnyPlatform();
  if (result)
  {
    sub_1A3C52C70(0, &unk_1EB131150, off_1E771D0A8);
    v3 = [swift_getObjCClassFromMetadata() sharedInstance];
    v4 = [v3 enablePlayMovieAction];

    if (v4)
    {
      v5 = [a1 dataSource];
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if ([a1 isAnyItemSelected])
        {
          if ([v7 numberOfSections] != 1 || objc_msgSend(v7, sel_numberOfItemsInSection_, 0) != 1)
          {
            v8 = [v7 containerCollection];
            if (v8)
            {
              v9 = v8;
              if (([v8 px_isRecentlyDeletedSmartAlbum] & 1) != 0 || objc_msgSend(v9, sel_px_isHiddenSmartAlbum))
              {

                swift_unknownObjectRelease();
                return 0;
              }

              v10 = [v9 px_canContainPotentiallySensitiveContent];
              swift_unknownObjectRelease();

              if (v10)
              {
                return 0;
              }
            }

            else
            {
            }

            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1A4076128(uint64_t a1)
{
  if (!qword_1EB1261F0)
  {
    sub_1A3C5D744();
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1261F0);
    }
  }
}

uint64_t sub_1A4076180(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1A407620C()
{
  if (!qword_1EB126420)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126420);
    }
  }
}

unint64_t sub_1A4076270()
{
  result = qword_1EB1A4010;
  if (!qword_1EB1A4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A4010);
  }

  return result;
}

void *sub_1A40762C4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result sender];

    if (v2)
    {
      result = swift_dynamicCastObjCProtocolConditional();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

unint64_t sub_1A407636C()
{
  result = qword_1EB1A4018[0];
  if (!qword_1EB1A4018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A4018);
  }

  return result;
}

id static PXSharedAlbumsUtilities.fetchSharedAlbum(withScopeIdentifier:in:allowPending:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = sub_1A4076458(a3, a1, a2, 0, 0, a4);
  v5 = [v4 firstObject];

  return v5;
}

uint64_t sub_1A4076458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = [a1 px_standardLibrarySpecificFetchOptions];
  [v11 setIncludePendingShares_];
  v12 = MEMORY[0x1E69E7CC0];
  v27[5] = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E6158];
  if (a3)
  {
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3E072BC(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A52FC9F0;
    *(v14 + 56) = v13;
    v15 = sub_1A3D710E8();
    *(v14 + 32) = 0x65644965706F6373;
    *(v14 + 40) = 0xEF7265696669746ELL;
    *(v14 + 96) = v13;
    *(v14 + 104) = v15;
    *(v14 + 64) = v15;
    *(v14 + 72) = a2;
    *(v14 + 80) = a3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (a5)
  {
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3E072BC(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52FC9F0;
    *(v16 + 56) = v13;
    v17 = sub_1A3D710E8();
    *(v16 + 32) = 0x656C746974;
    *(v16 + 40) = 0xE500000000000000;
    *(v16 + 96) = v13;
    *(v16 + 104) = v17;
    *(v16 + 64) = v17;
    *(v16 + 72) = a4;
    *(v16 + 80) = a5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1A524E2B4() == 1)
    {
      result = sub_1A524E2B4();
      if (result)
      {
        goto LABEL_7;
      }
    }

    result = sub_1A524E2B4();
LABEL_14:
    if (result < 2)
    {
    }

    else
    {
      sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
      v21 = sub_1A524CA14();

      v22 = [objc_opt_self() andPredicateWithSubpredicates_];

      [v11 setPredicate_];
    }

    goto LABEL_17;
  }

  result = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1A59097F0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v12 + 32);
  }

  v20 = v19;

  [v11 setPredicate_];

LABEL_17:
  v23 = sub_1A5241C44();
  v27[3] = v23;
  v27[4] = sub_1A408E96C(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v23);
  LOBYTE(v23) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (v23)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = 102;
  }

  sub_1A3C52C70(0, &unk_1EB120A20, 0x1E6978770);
  v26 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:12 subtype:v25 options:v11];

  return v26;
}

id static PXSharedAlbumsUtilities.fetchSharedAlbum(withTitle:in:allowPending:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v4 = sub_1A4076458(a3, 0, 0, a1, a2, a4);
  v5 = [v4 firstObject];

  return v5;
}

id static PXSharedAlbumsUtilities.sharedAlbumIsOwned(_:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    return ([v2 status] == 1);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result isOwned];
  }

  return result;
}

void *static PXSharedAlbumsUtilities.sharedAlbumIsAppleFamily(_:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return ([result cloudAlbumSubtype] == 1);
  }

  return result;
}

uint64_t static PXSharedAlbumsUtilities.canContributeAssets(toSharedAlbum:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  if ([v3 sharedAlbumIsOwned_])
  {
    return 1;
  }

  else
  {
    return [v3 multipleContributorsEnabledForSharedAlbum_];
  }
}

uint64_t static PXSharedAlbumsUtilities.localizedSharedByDescription(forSharedAlbum:)(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = a1;
    if ([ObjCClassFromMetadata sharedAlbumIsOwned_])
    {
      v13 = sub_1A524C634();
      v14 = PXLocalizedSharedAlbumsString(v13);

      v15 = sub_1A524C674();
      return v15;
    }

    v21 = [ObjCClassFromMetadata ownerForSharedAlbum_];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 displayNameWithAddressAppended_];
      v24 = sub_1A524C674();
      v26 = v25;

      v27 = sub_1A524C634();
      v28 = PXLocalizedSharedAlbumsString(v27);

      sub_1A524C674();
      sub_1A3E072BC(0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1A52F8E10;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1A3D710E8();
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v30 = sub_1A524C6C4();

      return v30;
    }

    v31 = sub_1A3C56D80();
    (*(v3 + 16))(v8, v31, v2);
    v32 = v12;
    v33 = sub_1A5246F04();
    v34 = sub_1A524D244();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v10;
      *v36 = v10;
      v37 = v32;
      _os_log_impl(&dword_1A3C1C000, v33, v34, "Could not retrieve owner for shared album: %@", v35, 0xCu);
      sub_1A3CB65E4(v36);
      MEMORY[0x1A590EEC0](v36, -1, -1);
      MEMORY[0x1A590EEC0](v35, -1, -1);
    }

    else
    {
      v37 = v33;
      v33 = v32;
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v17 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v17, v2);
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "An invalid asset collection was passed in to localizedSharedByDescription(forSharedAlbum:withAddressAppended:)", v20, 2u);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_1A407738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4077454, 0, 0);
}

uint64_t sub_1A4077454()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[33] = v2;
  *(v2 + 16) = 0;
  v3 = [v1 photoLibrary];
  v0[34] = v3;
  if (v3)
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[27];
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v2;
    v7[4] = v5;
    v7[5] = v4;
    v0[22] = sub_1A408E660;
    v0[23] = v7;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_365;
    v0[35] = _Block_copy(v0 + 18);
    v8 = v6;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return MEMORY[0x1EEE6DEC8](0);
}

uint64_t sub_1A4077674()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1A40779FC;
  }

  else
  {
    v2 = sub_1A4077784;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4077784()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);

  _Block_release(v1);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    v3 = *(v0 + 256);
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1A524CC54();
    sub_1A3C66EE8(v5, v4);
    v7 = sub_1A524CC44();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v5;
    v8[5] = v4;
    sub_1A3EA52F4(0, 0, v3, &unk_1A53169D0, v8);
  }

  else
  {
    sub_1A408C0E8();
    v10 = swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 1;
    swift_willThrow();
    v12 = *(v0 + 256);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);

    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_1A524CC54();
    sub_1A3C66EE8(v14, v13);
    v16 = v10;
    v17 = sub_1A524CC44();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v14;
    v18[5] = v13;
    v18[6] = v10;
    sub_1A3EA52F4(0, 0, v12, &unk_1A53169C0, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1A40779FC(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[34];
  swift_willThrow();

  _Block_release(v2);
  v4 = v1[36];
  v5 = v1[32];
  v7 = v1[30];
  v6 = v1[31];

  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1A524CC54();
  sub_1A3C66EE8(v7, v6);
  v9 = v4;
  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v7;
  v11[5] = v6;
  v11[6] = v4;
  sub_1A3EA52F4(0, 0, v5, &unk_1A53169C0, v11);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1A4077B64(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x1EEE6DEE0](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE0](v5);
  }

  sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x1EEE6DEE8](v6, v7);
}

uint64_t sub_1A4077C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1A524CC54();
  v5[5] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A408EA48, v7, v6);
}

uint64_t sub_1A4077CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A408EA4C, v8, v7);
}

void static PXSharedAlbumsUtilities.acceptInvitationToSharedAlbum(_:completionHandler:)(void *a1, void (*a2)(void, id), uint64_t a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = a1;
    sub_1A524CC74();
    v16 = sub_1A524CCB4();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v14;
    v17[5] = a2;
    v17[6] = a3;

    sub_1A3D4D930(0, 0, v12, &unk_1A53165A8, v17);
  }

  else
  {
    v18 = sub_1A3C56D80();
    (*(v7 + 16))(v9, v18, v6);
    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "An invalid asset collection was passed in to resendInvitationToParticipant:", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v22 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
    a2(0, v22);
  }
}

uint64_t sub_1A4078148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407820C, 0, 0);
}

uint64_t sub_1A407820C()
{
  v1 = [*(v0 + 144) uuid];
  if (!v1)
  {
    sub_1A524C674();
    v1 = sub_1A524C634();
  }

  *(v0 + 176) = v1;
  v2 = [*(v0 + 144) photoLibrary];
  *(v0 + 184) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 200;
    *(v0 + 24) = sub_1A40783A8;
    v5 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB131250, MEMORY[0x1E69E6370]);
    *(v0 + 136) = v6;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A3FA485C;
    *(v0 + 104) = &block_descriptor_346;
    *(v0 + 112) = v5;
    [v4 acceptShareWithUUID:v1 photoLibrary:v3 completion:v0 + 80];
    v2 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1A40783A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1A40785E4;
  }

  else
  {
    v2 = sub_1A40784B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A40784B8()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);

  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v3;
  sub_1A3D4D930(0, 0, v2, &unk_1A53169A0, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A40785E4(uint64_t a1)
{
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[21];
  v5 = v1[22];
  v7 = v1[19];
  v6 = v1[20];
  swift_willThrow();

  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1A524CC54();

  v9 = v2;
  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v7;
  v11[5] = v6;
  v11[6] = v2;
  sub_1A3D4D930(0, 0, v4, &unk_1A5316990, v11);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1A4078744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A524CC54();
  v5[4] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40787DC, v7, v6);
}

uint64_t sub_1A40787DC()
{
  v1 = *(v0 + 16);

  v1(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4078850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40788EC, v8, v7);
}

uint64_t sub_1A40788EC()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(0, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4078A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4078AD4, 0, 0);
}

uint64_t sub_1A4078AD4()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1A4078BF0;
  v2 = swift_continuation_init();
  sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4078F5C;
  v0[13] = &block_descriptor_329;
  v0[14] = v2;
  [v1 declineWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4078BF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1A4078E24;
  }

  else
  {
    v2 = sub_1A4078D00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4078D00()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1A524CC54();
  sub_1A3C66EE8(v3, v2);
  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = 0;
  sub_1A3EA52F4(0, 0, v1, &unk_1A5316978, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A4078E24(uint64_t a1)
{
  v2 = v1[22];
  swift_willThrow();
  v4 = v1[20];
  v3 = v1[21];
  v5 = v1[19];
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_1A524CC54();
  sub_1A3C66EE8(v5, v4);
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v2;
  sub_1A3EA52F4(0, 0, v3, &unk_1A5316978, v8);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1A4078F5C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1A407900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40790A8, v8, v7);
}

uint64_t sub_1A40790A8()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(*(v0 + 40) == 0);
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4079244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4079308, 0, 0);
}

uint64_t sub_1A4079308()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1A4079424;
  v2 = swift_continuation_init();
  sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4078F5C;
  v0[13] = &block_descriptor_318;
  v0[14] = v2;
  [v1 reportWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4079424()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1A4079658;
  }

  else
  {
    v2 = sub_1A4079534;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4079534()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1A524CC54();
  sub_1A3C66EE8(v3, v2);
  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = 0;
  sub_1A3EA52F4(0, 0, v1, &unk_1A5316958, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A4079658(uint64_t a1)
{
  v2 = v1[22];
  swift_willThrow();
  v4 = v1[20];
  v3 = v1[21];
  v5 = v1[19];
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_1A524CC54();
  sub_1A3C66EE8(v5, v4);
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v2;
  sub_1A3EA52F4(0, 0, v3, &unk_1A5316958, v8);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1A4079790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A408EA50, v8, v7);
}

uint64_t sub_1A4079900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1A5246F24();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4079A20, 0, 0);
}

uint64_t sub_1A4079A20(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 16);
    v6 = swift_task_alloc();
    *(v2 + 80) = v6;
    *v6 = v2;
    v6[1] = sub_1A4079BEC;
    v7 = *(v2 + 24);

    return sub_1A407A164(v7, v4);
  }

  else
  {
    v9 = *(v2 + 72);
    v11 = *(v2 + 32);
    v10 = *(v2 + 40);
    v12 = sub_1A524CCB4();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_1A524CC54();
    sub_1A3C66EE8(v11, v10);
    v13 = sub_1A524CC44();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    v14[5] = v10;
    sub_1A3EA52F4(0, 0, v9, &unk_1A5316920, v14);

    v16 = *(v2 + 8);

    return v16();
  }
}

uint64_t sub_1A4079BEC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1A4079E34;
  }

  else
  {
    v2 = sub_1A4079D00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4079D00()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1A524CC54();
  sub_1A3C66EE8(v3, v2);
  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  sub_1A3EA52F4(0, 0, v1, &unk_1A5316920, v6);

  v8 = *(v0 + 8);

  return v8();
}

void sub_1A4079E34()
{
  v5 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = sub_1A3C56D80();
  (*(v2 + 16))(v1, v4, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A407A164(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A407A184, 0, 0);
}

id sub_1A407A184(__n128 a1)
{
  v2 = v1[8];
  if (v2 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v3 = v1[9];
    sub_1A3C52C70(0, &qword_1EB12C1B0, off_1E771F698);
    v4 = sub_1A524CA14();
    PXSharedAlbumsRecordRecentContactEventsForParticipants(v4);

    v5 = swift_allocObject();
    *(v5 + 16) = MEMORY[0x1E69E7CC0];
    result = [v3 photoLibrary];
    if (result)
    {
      v7 = v1[8];
      v8 = v1[9];
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v8;
      v9[4] = v5;
      v1[6] = sub_1A408DE78;
      v1[7] = v9;
      v1[2] = MEMORY[0x1E69E9820];
      v1[3] = 1107296256;
      v1[4] = sub_1A3C2E0D0;
      v1[5] = &block_descriptor_302;
      _Block_copy(v1 + 2);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    return result;
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1A407A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[6] = swift_task_alloc();
  v8 = sub_1A5246F24();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407A61C, 0, 0);
}

uint64_t sub_1A407A61C()
{
  v32 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_1A3C56D80();
  *(v0 + 96) = v6;
  v7 = *(v3 + 16);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  v8 = v5;
  v9 = v4;
  v10 = sub_1A5246F04();
  LOBYTE(v4) = sub_1A524D264();

  v11 = os_log_type_enabled(v10, v4);
  v12 = *(v0 + 88);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  if (v11)
  {
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v15;
    *v18 = v15;
    *(v17 + 12) = 2082;
    v19 = v15;
    v20 = [v16 uuid];
    v21 = sub_1A524C674();
    v23 = v22;

    sub_1A3C2EF94(v21, v23, &v31);
  }

  v24 = *(v13 + 8);
  v24(v12, v14);
  *(v0 + 120) = v24;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    return sub_1A524E6E4();
  }

  v26 = v25;
  v27 = *(v0 + 24);
  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  *v28 = v0;
  v28[1] = sub_1A407A918;
  v29 = *(v0 + 16);

  return sub_1A407AF7C(v29, v26);
}

uint64_t sub_1A407A918()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A407AC88;
  }

  else
  {
    v2 = sub_1A407AA2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407AA2C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  v1(v3, v2, v4);
  v6 = v5;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_1A3C1C000, v7, v8, "Successfully resent invitation to participant (%@)", v10, 0xCu);
    sub_1A3CB65E4(v11);
    MEMORY[0x1A590EEC0](v11, -1, -1);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = *(v0 + 32);

  v13(v14, v15);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  sub_1A524CC54();
  sub_1A3C66EE8(v18, v17);
  v20 = sub_1A524CC44();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v18;
  v21[5] = v17;
  sub_1A3EA52F4(0, 0, v16, &unk_1A5316900, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A407AC88()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);

  v2(v4, v3, v5);
  v7 = v6;
  v8 = v1;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 16);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2112;
    v15 = v12;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    v14[1] = v17;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Could not resend invitation to participant: %@ in shared album: %@", v13, 0x16u);
    sub_1A3C4B840(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    MEMORY[0x1A590EEC0](v14, -1, -1);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  v18 = *(v0 + 136);
  v19 = *(v0 + 120);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);

  v19(v20, v22);
  v25 = sub_1A524CCB4();
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  sub_1A524CC54();
  sub_1A3C66EE8(v24, v23);
  v26 = v18;
  v27 = sub_1A524CC44();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v24;
  v28[5] = v23;
  v28[6] = v18;
  sub_1A3EA52F4(0, 0, v21, &unk_1A53168F0, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1A407AF7C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_1A5246F24();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407B03C, 0, 0);
}

uint64_t sub_1A407B03C()
{
  v35 = v0;
  v1 = [*(v0 + 144) shareParticipant];
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 152);
    sub_1A3C4EDC8(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F9790;
    *(v4 + 32) = v2;
    sub_1A3C52C70(0, &qword_1EB1209C8, 0x1E6978AC0);
    v5 = v2;
    v6 = sub_1A524CA14();
    *(v0 + 192) = v6;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1A407B484;
    v7 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
    *(v0 + 136) = v8;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A4078F5C;
    *(v0 + 104) = &block_descriptor_279;
    *(v0 + 112) = v7;
    [v3 sendInvitationsForParticipants:v6 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
    v14 = sub_1A3C56D80();
    (*(v10 + 16))(v9, v14, v11);
    v15 = v13;
    v16 = v12;
    v17 = sub_1A5246F04();
    LOBYTE(v13) = sub_1A524D244();

    v18 = os_log_type_enabled(v17, v13);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);
    if (v18)
    {
      v22 = *(v0 + 144);
      v23 = *(v0 + 152);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v24 = 138412802;
      *(v24 + 4) = v22;
      *v25 = v22;
      *(v24 + 12) = 2082;
      v26 = v22;
      v27 = [v23 uuid];
      v28 = sub_1A524C674();
      v30 = v29;

      sub_1A3C2EF94(v28, v30, &v34);
    }

    (*(v20 + 8))(v19, v21);
    sub_1A408D9A4();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1A407B484()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1A407B608;
  }

  else
  {
    v2 = sub_1A407B594;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407B594()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A407B608(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1A407B688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1A524CC54();
  v5[5] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A407B724, v7, v6);
}

uint64_t sub_1A407B724()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(1, 0);
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A407B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A407B84C, v8, v7);
}

uint64_t sub_1A407B84C()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(0, *(v0 + 40));
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A407B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[6] = swift_task_alloc();
  v8 = sub_1A5246F24();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407BAFC, 0, 0);
}

void sub_1A407BAFC(__n128 a1)
{
  v38 = v1;
  v2 = *(v1 + 16);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v26 = *(v1 + 104);
    v27 = *(v1 + 56);
    v28 = *(v1 + 64);
    v29 = *(v1 + 24);
    v30 = sub_1A3C56D80();
    (*(v28 + 16))(v26, v30, v27);
    v31 = v29;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (sub_1A524E2B4() != 1 || !sub_1A524E2B4())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1A59097F0](0, *(v1 + 16));
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(*(v1 + 16) + 32);
  }

  v4 = v3;
  v5 = *(v1 + 112);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 24);
  v9 = sub_1A3C56D80();
  v10 = *(v7 + 16);
  v10(v5, v9, v6);
  v11 = v4;
  v12 = v8;
  v13 = sub_1A5246F04();
  LOBYTE(v7) = sub_1A524D264();

  v14 = os_log_type_enabled(v13, v7);
  v15 = *(v1 + 112);
  v17 = *(v1 + 56);
  v16 = *(v1 + 64);
  if (v14)
  {
    v18 = *(v1 + 24);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v11;
    *v20 = v11;
    *(v19 + 12) = 2082;
    v11;
    v21 = [v18 uuid];
    v22 = sub_1A524C674();
    v24 = v23;

    sub_1A3C2EF94(v22, v24, &v37);
  }

  v25 = *(v16 + 8);
  v25(v15, v17);
  *(v1 + 152) = 1;
  *(v1 + 120) = v25;
  *(v1 + 128) = v10;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = *(v1 + 24);
    v35 = swift_task_alloc();
    *(v1 + 136) = v35;
    *v35 = v1;
    v35[1] = sub_1A407C054;
    v36 = *(v1 + 16);

    sub_1A407CD80(v36, v33);
  }

  else
  {
    sub_1A524E6E4();
  }
}

uint64_t sub_1A407C054()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1A407C70C;
  }

  else
  {
    v2 = sub_1A407C168;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407C168()
{
  v40 = v0;
  v1 = *(v0 + 152);

  v2 = *(v0 + 16);
  if (v1 != 1)
  {
    goto LABEL_10;
  }

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:
    v25 = *(v0 + 128);
    v26 = *(v0 + 88);
    v27 = *(v0 + 56);
    v28 = *(v0 + 24);
    v29 = sub_1A3C56D80();
    v25(v26, v29, v27);
    v30 = v28;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  v2 = *(v0 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);
  v10 = sub_1A3C56D80();
  v6(v7, v10, v8);
  v11 = v9;
  v12 = v5;
  v13 = sub_1A5246F04();
  LOBYTE(v6) = sub_1A524D264();

  v14 = os_log_type_enabled(v13, v6);
  v15 = *(v0 + 120);
  v16 = *(v0 + 96);
  v17 = *(v0 + 56);
  if (v14)
  {
    v18 = *(v0 + 24);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v12;
    *v20 = v12;
    *(v19 + 12) = 2082;
    v12;
    v21 = [v18 uuid];
    v22 = sub_1A524C674();
    v24 = v23;

    sub_1A3C2EF94(v22, v24, &v39);
  }

  v15(v16, v17);
  v32 = *(v0 + 40);
  v31 = *(v0 + 48);
  v33 = *(v0 + 32);
  v34 = sub_1A524CCB4();
  (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
  sub_1A524CC54();
  sub_1A3C66EE8(v33, v32);
  v35 = sub_1A524CC44();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v33;
  v36[5] = v32;
  sub_1A3EA52F4(0, 0, v31, &unk_1A53168C8, v36);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1A407C70C()
{
  v43 = v0;
  v1 = *(v0 + 152);

  v2 = *(v0 + 16);
  if (v1 != 1)
  {
    goto LABEL_10;
  }

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:
    v23 = *(v0 + 128);
    v24 = *(v0 + 72);
    v25 = *(v0 + 56);
    v26 = *(v0 + 24);
    v27 = sub_1A3C56D80();
    v23(v24, v27, v25);
    v28 = v26;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  v2 = *(v0 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 24);
  v11 = sub_1A3C56D80();
  v7(v8, v11, v9);
  v12 = v10;
  v13 = v5;
  v14 = v6;
  v15 = sub_1A5246F04();
  LOBYTE(v7) = sub_1A524D244();

  if (os_log_type_enabled(v15, v7))
  {
    v16 = *(v0 + 24);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 138412802;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2082;
    v13;
    v19 = [v16 uuid];
    v20 = sub_1A524C674();
    v22 = v21;

    sub_1A3C2EF94(v20, v22, &v42);
  }

  v29 = *(v0 + 120);
  v30 = *(v0 + 80);
  v31 = *(v0 + 56);

  v29(v30, v31);
  v32 = *(v0 + 144);
  v34 = *(v0 + 40);
  v33 = *(v0 + 48);
  v35 = *(v0 + 32);
  v36 = sub_1A524CCB4();
  (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  sub_1A524CC54();
  sub_1A3C66EE8(v35, v34);
  v37 = v32;
  v38 = sub_1A524CC44();
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = v35;
  v39[5] = v34;
  v39[6] = v32;
  sub_1A3EA52F4(0, 0, v33, &unk_1A53168B8, v39);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1A407CD80(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A407CDA0, 0, 0);
}

uint64_t sub_1A407CDA0()
{
  v1 = v0[18];
  v2 = swift_allocObject();
  v0[20] = v2;
  v23 = v2;
  *(v2 + 16) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_20:
    v4 = sub_1A524E2B4();
    v5 = v0[18];
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v1;
  }

  v6 = 0;
  v7 = v1 & 0xC000000000000001;
  v8 = v5 + 32;
  v24 = MEMORY[0x1E69E7CC0];
  v1 = &selRef_setYearsHeadersFadeoutMinimumAlpha_;
  while (v4 != v6)
  {
    if (v7)
    {
      v9 = MEMORY[0x1A59097F0](v6, v0[18]);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_19;
      }

      v9 = *(v8 + 8 * v6);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v12 = [v9 shareParticipant];

    ++v6;
    if (v12)
    {
      MEMORY[0x1A5907D70]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v24 = v25;
      v6 = v11;
    }
  }

  v13 = [v0[19] photoLibrary];
  v0[21] = v13;
  if (v13)
  {
    v14 = v13;
    v15 = v0[19];
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v23;
    v16[4] = v24;
    v0[14] = sub_1A408D8E4;
    v0[15] = v16;
    v17 = MEMORY[0x1E69E9820];
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A3C2E0D0;
    v0[13] = &block_descriptor_259;
    v18 = _Block_copy(v0 + 10);
    v0[22] = v18;
    v19 = v15;

    v0[2] = v0;
    v0[3] = sub_1A407D0C4;
    v20 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
    v0[17] = v21;
    v0[10] = v17;
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_262;
    v0[14] = v20;
    [v14 performChanges:v18 completionHandler:v0 + 10];
    v13 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v13);
}

uint64_t sub_1A407D0C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1A407D2BC;
  }

  else
  {
    v2 = sub_1A407D1D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407D1D4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  _Block_release(v1);
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    sub_1A408D9A4();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A407D2BC(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  _Block_release(v2);

  v4 = v1[1];

  return v4();
}

id static PXSharedAlbumsUtilities.multipleContributorsEnabled(forSharedAlbum:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    return ([v2 publicPermission] == 3);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result isCloudMultipleContributorsEnabled];
  }

  return result;
}

id static PXSharedAlbumsUtilities.canSetMultipleContributorsEnabled(forSharedAlbum:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  result = [v3 sharedAlbumIsOwned_];
  if (result)
  {
    return ([v3 sharedAlbumIsAppleFamily_] ^ 1);
  }

  return result;
}

uint64_t sub_1A407D644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 224) = a6;
  *(v7 + 232) = a7;
  *(v7 + 312) = a5;
  *(v7 + 216) = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v7 + 240) = swift_task_alloc();
  v8 = sub_1A5246F24();
  *(v7 + 248) = v8;
  *(v7 + 256) = *(v8 - 8);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407D774, 0, 0);
}

uint64_t sub_1A407D774()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[35] = v2;
  *(v2 + 16) = 1;
  v3 = [v1 photoLibrary];
  v0[36] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 312);
    v6 = v0[27];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    *(v7 + 32) = v2;
    v0[22] = sub_1A408D3A0;
    v0[23] = v7;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_228;
    v8 = _Block_copy(v0 + 18);
    v0[37] = v8;
    v9 = v6;

    v0[2] = v0;
    v0[3] = sub_1A407D98C;
    v10 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
    v0[17] = v11;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_231;
    v0[14] = v10;
    [v4 performChanges:v8 completionHandler:v0 + 10];
    v3 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A407D98C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1A407E07C;
  }

  else
  {
    v2 = sub_1A407DA9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407DA9C()
{
  v60 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  _Block_release(v1);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 216);
    v7 = sub_1A3C56D80();
    (*(v5 + 16))(v3, v7, v4);
    v8 = v6;
    v9 = sub_1A5246F04();
    LOBYTE(v6) = sub_1A524D264();

    v10 = os_log_type_enabled(v9, v6);
    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    if (v10)
    {
      v14 = *(v0 + 312);
      v15 = *(v0 + 216);
      v16 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v16 = 67109378;
      *(v16 + 4) = v14;
      *(v16 + 8) = 2082;
      v17 = [v15 uuid];
      v18 = sub_1A524C674();
      v20 = v19;

      sub_1A3C2EF94(v18, v20, v59);
    }

    (*(v12 + 8))(v11, v13);
    v43 = *(v0 + 232);
    v42 = *(v0 + 240);
    v44 = *(v0 + 224);
    v45 = sub_1A524CCB4();
    (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
    sub_1A524CC54();
    sub_1A3C66EE8(v44, v43);
    v46 = sub_1A524CC44();
    v47 = swift_allocObject();
    v48 = MEMORY[0x1E69E85E0];
    v47[2] = v46;
    v47[3] = v48;
    v47[4] = v44;
    v47[5] = v43;
    sub_1A3EA52F4(0, 0, v42, &unk_1A5316890, v47);
  }

  else
  {
    sub_1A408C0E8();
    v21 = swift_allocError();
    *v22 = 3;
    *(v22 + 8) = 1;
    swift_willThrow();
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v25 = *(v0 + 248);
    v26 = *(v0 + 216);

    v27 = sub_1A3C56D80();
    (*(v24 + 16))(v23, v27, v25);
    v28 = v26;
    v29 = v21;
    v30 = sub_1A5246F04();
    LOBYTE(v26) = sub_1A524D244();

    v31 = os_log_type_enabled(v30, v26);
    v33 = *(v0 + 256);
    v32 = *(v0 + 264);
    v34 = *(v0 + 248);
    if (v31)
    {
      v35 = *(v0 + 312);
      v36 = *(v0 + 216);
      v37 = swift_slowAlloc();
      swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v37 = 67109634;
      *(v37 + 4) = v35;
      *(v37 + 8) = 2082;
      v38 = [v36 uuid];
      v39 = sub_1A524C674();
      v41 = v40;

      sub_1A3C2EF94(v39, v41, v59);
    }

    (*(v33 + 8))(v32, v34);
    v50 = *(v0 + 232);
    v49 = *(v0 + 240);
    v51 = *(v0 + 224);
    v52 = sub_1A524CCB4();
    (*(*(v52 - 8) + 56))(v49, 1, 1, v52);
    sub_1A524CC54();
    sub_1A3C66EE8(v51, v50);
    v53 = v21;
    v54 = sub_1A524CC44();
    v55 = swift_allocObject();
    v56 = MEMORY[0x1E69E85E0];
    v55[2] = v54;
    v55[3] = v56;
    v55[4] = v51;
    v55[5] = v50;
    v55[6] = v21;
    sub_1A3EA52F4(0, 0, v49, &unk_1A5316880, v55);
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1A407E07C(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 296);
  v3 = *(v1 + 288);
  swift_willThrow();

  _Block_release(v2);
  v4 = *(v1 + 304);
  v6 = *(v1 + 256);
  v5 = *(v1 + 264);
  v7 = *(v1 + 248);
  v8 = *(v1 + 216);

  v9 = sub_1A3C56D80();
  (*(v6 + 16))(v5, v9, v7);
  v10 = v8;
  v11 = v4;
  v12 = sub_1A5246F04();
  LOBYTE(v8) = sub_1A524D244();

  v13 = os_log_type_enabled(v12, v8);
  v15 = *(v1 + 256);
  v14 = *(v1 + 264);
  v16 = *(v1 + 248);
  if (v13)
  {
    v17 = *(v1 + 312);
    v18 = *(v1 + 216);
    v19 = swift_slowAlloc();
    swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v19 = 67109634;
    *(v19 + 4) = v17;
    *(v19 + 8) = 2082;
    v20 = [v18 uuid];
    v21 = sub_1A524C674();
    v23 = v22;

    sub_1A3C2EF94(v21, v23, &v34);
  }

  (*(v15 + 8))(v14, v16);
  v25 = *(v1 + 232);
  v24 = *(v1 + 240);
  v26 = *(v1 + 224);
  v27 = sub_1A524CCB4();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  sub_1A524CC54();
  sub_1A3C66EE8(v26, v25);
  v28 = v4;
  v29 = sub_1A524CC44();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v26;
  v30[5] = v25;
  v30[6] = v4;
  sub_1A3EA52F4(0, 0, v24, &unk_1A5316880, v30);

  v32 = *(v1 + 8);

  return v32();
}

id static PXSharedAlbumsUtilities.notificationsEnabled(forSharedAlbum:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    return ([v2 notificationState] == 0x7FFF);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result isCloudNotificationsEnabled];
  }

  return result;
}

uint64_t sub_1A407E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 224) = a6;
  *(v7 + 232) = a7;
  *(v7 + 312) = a5;
  *(v7 + 216) = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v7 + 240) = swift_task_alloc();
  v8 = sub_1A5246F24();
  *(v7 + 248) = v8;
  *(v7 + 256) = *(v8 - 8);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407E748, 0, 0);
}

uint64_t sub_1A407E748()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[35] = v2;
  *(v2 + 16) = 1;
  v3 = [v1 photoLibrary];
  v0[36] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 312);
    v6 = v0[27];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    *(v7 + 32) = v2;
    v0[22] = sub_1A408CF94;
    v0[23] = v7;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_206;
    v8 = _Block_copy(v0 + 18);
    v0[37] = v8;
    v9 = v6;

    v0[2] = v0;
    v0[3] = sub_1A407E960;
    v10 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
    v0[17] = v11;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_209_0;
    v0[14] = v10;
    [v4 performChanges:v8 completionHandler:v0 + 10];
    v3 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A407E960()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1A407F050;
  }

  else
  {
    v2 = sub_1A407EA70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407EA70()
{
  v60 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  _Block_release(v1);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 216);
    v7 = sub_1A3C56D80();
    (*(v5 + 16))(v3, v7, v4);
    v8 = v6;
    v9 = sub_1A5246F04();
    LOBYTE(v6) = sub_1A524D264();

    v10 = os_log_type_enabled(v9, v6);
    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    if (v10)
    {
      v14 = *(v0 + 312);
      v15 = *(v0 + 216);
      v16 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v16 = 67109378;
      *(v16 + 4) = v14;
      *(v16 + 8) = 2082;
      v17 = [v15 uuid];
      v18 = sub_1A524C674();
      v20 = v19;

      sub_1A3C2EF94(v18, v20, v59);
    }

    (*(v12 + 8))(v11, v13);
    v43 = *(v0 + 232);
    v42 = *(v0 + 240);
    v44 = *(v0 + 224);
    v45 = sub_1A524CCB4();
    (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
    sub_1A524CC54();
    sub_1A3C66EE8(v44, v43);
    v46 = sub_1A524CC44();
    v47 = swift_allocObject();
    v48 = MEMORY[0x1E69E85E0];
    v47[2] = v46;
    v47[3] = v48;
    v47[4] = v44;
    v47[5] = v43;
    sub_1A3EA52F4(0, 0, v42, &unk_1A5316860, v47);
  }

  else
  {
    sub_1A408C0E8();
    v21 = swift_allocError();
    *v22 = 3;
    *(v22 + 8) = 1;
    swift_willThrow();
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v25 = *(v0 + 248);
    v26 = *(v0 + 216);

    v27 = sub_1A3C56D80();
    (*(v24 + 16))(v23, v27, v25);
    v28 = v26;
    v29 = v21;
    v30 = sub_1A5246F04();
    LOBYTE(v26) = sub_1A524D244();

    v31 = os_log_type_enabled(v30, v26);
    v33 = *(v0 + 256);
    v32 = *(v0 + 264);
    v34 = *(v0 + 248);
    if (v31)
    {
      v35 = *(v0 + 312);
      v36 = *(v0 + 216);
      v37 = swift_slowAlloc();
      swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v37 = 67109634;
      *(v37 + 4) = v35;
      *(v37 + 8) = 2082;
      v38 = [v36 uuid];
      v39 = sub_1A524C674();
      v41 = v40;

      sub_1A3C2EF94(v39, v41, v59);
    }

    (*(v33 + 8))(v32, v34);
    v50 = *(v0 + 232);
    v49 = *(v0 + 240);
    v51 = *(v0 + 224);
    v52 = sub_1A524CCB4();
    (*(*(v52 - 8) + 56))(v49, 1, 1, v52);
    sub_1A524CC54();
    sub_1A3C66EE8(v51, v50);
    v53 = v21;
    v54 = sub_1A524CC44();
    v55 = swift_allocObject();
    v56 = MEMORY[0x1E69E85E0];
    v55[2] = v54;
    v55[3] = v56;
    v55[4] = v51;
    v55[5] = v50;
    v55[6] = v21;
    sub_1A3EA52F4(0, 0, v49, &unk_1A5316850, v55);
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1A407F050(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 296);
  v3 = *(v1 + 288);
  swift_willThrow();

  _Block_release(v2);
  v4 = *(v1 + 304);
  v6 = *(v1 + 256);
  v5 = *(v1 + 264);
  v7 = *(v1 + 248);
  v8 = *(v1 + 216);

  v9 = sub_1A3C56D80();
  (*(v6 + 16))(v5, v9, v7);
  v10 = v8;
  v11 = v4;
  v12 = sub_1A5246F04();
  LOBYTE(v8) = sub_1A524D244();

  v13 = os_log_type_enabled(v12, v8);
  v15 = *(v1 + 256);
  v14 = *(v1 + 264);
  v16 = *(v1 + 248);
  if (v13)
  {
    v17 = *(v1 + 312);
    v18 = *(v1 + 216);
    v19 = swift_slowAlloc();
    swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v19 = 67109634;
    *(v19 + 4) = v17;
    *(v19 + 8) = 2082;
    v20 = [v18 uuid];
    v21 = sub_1A524C674();
    v23 = v22;

    sub_1A3C2EF94(v21, v23, &v34);
  }

  (*(v15 + 8))(v14, v16);
  v25 = *(v1 + 232);
  v24 = *(v1 + 240);
  v26 = *(v1 + 224);
  v27 = sub_1A524CCB4();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  sub_1A524CC54();
  sub_1A3C66EE8(v26, v25);
  v28 = v4;
  v29 = sub_1A524CC44();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v26;
  v30[5] = v25;
  v30[6] = v4;
  sub_1A3EA52F4(0, 0, v24, &unk_1A5316850, v30);

  v32 = *(v1 + 8);

  return v32();
}

id sub_1A407F4A0(uint64_t a1, SEL *a2, SEL *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    return ([v5 *a2] == 2);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result *a3];
  }

  return result;
}

id sub_1A407F538(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, const char **a5)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    return ([v7 *a4] == 2);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v9 = *a5;

    return [result v9];
  }

  return result;
}

void static PXSharedAlbumsUtilities.publicURL(forSharedAlbum:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A408BC44(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = a1;
    if ([ObjCClassFromMetadata publicURLEnabledForSharedAlbum_])
    {
      v11 = [v8 shareURL];
      if (v11)
      {
        v12 = v11;
        sub_1A5240DE4();

        v13 = sub_1A5240E64();
        (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
      }

      else
      {

        v21 = sub_1A5240E64();
        (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
      }

      sub_1A408A03C(v6, a2);
      return;
    }

    goto LABEL_10;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
LABEL_11:
    v19 = sub_1A5240E64();
    v20 = *(*(v19 - 8) + 56);

    v20(a2, 1, 1, v19);
    return;
  }

  v15 = v14;
  v16 = a1;
  v17 = [v15 publicURL];
  if (!v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  v18 = v17;
  sub_1A524C674();

  sub_1A5240E34();
}

uint64_t sub_1A407FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = a7;
  *(v7 + 280) = a5;
  *(v7 + 192) = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v7 + 216) = swift_task_alloc();
  v8 = sub_1A5246F24();
  *(v7 + 224) = v8;
  *(v7 + 232) = *(v8 - 8);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407FB8C, 0, 0);
}

uint64_t sub_1A407FB8C()
{
  v1 = [v0[24] photoLibrary];
  v0[32] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 280);
    v4 = v0[24];
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v0[22] = sub_1A408CC38;
    v0[23] = v5;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_184;
    v6 = _Block_copy(v0 + 18);
    v0[33] = v6;
    v7 = v4;

    v0[2] = v0;
    v0[3] = sub_1A407FD70;
    v8 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
    v0[17] = v9;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_187;
    v0[14] = v8;
    [v2 performChanges:v6 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1A407FD70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1A4080150;
  }

  else
  {
    v2 = sub_1A407FE80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407FE80()
{
  v30 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);

  _Block_release(v1);
  v6 = sub_1A3C56D80();
  (*(v4 + 16))(v2, v6, v3);
  v7 = v5;
  v8 = sub_1A5246F04();
  LOBYTE(v4) = sub_1A524D264();

  v9 = os_log_type_enabled(v8, v4);
  v10 = *(v0 + 248);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  if (v9)
  {
    v13 = *(v0 + 280);
    v14 = *(v0 + 192);
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = v13;
    *(v15 + 8) = 2082;
    v16 = [v14 uuid];
    v17 = sub_1A524C674();
    v19 = v18;

    sub_1A3C2EF94(v17, v19, &v29);
  }

  (*(v11 + 8))(v10, v12);
  v21 = *(v0 + 208);
  v20 = *(v0 + 216);
  v22 = *(v0 + 200);
  v23 = sub_1A524CCB4();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_1A524CC54();
  sub_1A3C66EE8(v22, v21);
  v24 = sub_1A524CC44();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v22;
  v25[5] = v21;
  sub_1A3EA52F4(0, 0, v20, &unk_1A5316830, v25);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1A4080150(uint64_t a1)
{
  v38 = v1;
  v3 = *(v1 + 264);
  v2 = *(v1 + 272);
  v4 = *(v1 + 256);
  v6 = *(v1 + 232);
  v5 = *(v1 + 240);
  v7 = *(v1 + 224);
  v8 = *(v1 + 192);
  swift_willThrow();

  _Block_release(v3);
  v9 = sub_1A3C56D80();
  (*(v6 + 16))(v5, v9, v7);
  v10 = v8;
  v11 = v2;
  v12 = sub_1A5246F04();
  LOBYTE(v5) = sub_1A524D244();

  if (os_log_type_enabled(v12, v5))
  {
    v34 = *(v1 + 232);
    v35 = *(v1 + 224);
    v36 = *(v1 + 240);
    v13 = *(v1 + 280);
    v14 = *(v1 + 192);
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v15 = 67109634;
    *(v15 + 4) = v13;
    *(v15 + 8) = 2082;
    v16 = [v14 uuid];
    v17 = sub_1A524C674();
    v19 = v18;

    sub_1A3C2EF94(v17, v19, &v37);
  }

  v21 = *(v1 + 232);
  v20 = *(v1 + 240);
  v22 = *(v1 + 224);

  (*(v21 + 8))(v20, v22);
  v23 = *(v1 + 272);
  v25 = *(v1 + 208);
  v24 = *(v1 + 216);
  v26 = *(v1 + 200);
  v27 = sub_1A524CCB4();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  sub_1A524CC54();
  sub_1A3C66EE8(v26, v25);
  v28 = v23;
  v29 = sub_1A524CC44();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v26;
  v30[5] = v25;
  v30[6] = v23;
  sub_1A3EA52F4(0, 0, v24, &unk_1A5316820, v30);

  v32 = *(v1 + 8);

  return v32();
}

id sub_1A40805A4(int a1, uint64_t a2, void *a3)
{
  v48 = a3;
  LODWORD(v47) = a1;
  v3 = sub_1A5246F24();
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = sub_1A5240C64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CD0];
  v54 = MEMORY[0x1E69E7CD0];
  swift_unknownObjectRetain();
  sub_1A5240C74();
  sub_1A5240C54();
  v14 = MEMORY[0x1E69E7CA0];
  if (!v52)
  {
LABEL_7:
    sub_1A3C2C6B8(&v51, &qword_1EB126130, v14 + 8, MEMORY[0x1E69E6720], sub_1A3C4EDC8);
    objc_opt_self();
    sub_1A4086BDC(v13, v18);
  }

  v44 = v10;
  v45 = v9;
  v15 = v3;
  while (1)
  {
    sub_1A3C57128(&v51, v53);
    sub_1A3C2F0BC(v53, &v51);
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    if (!swift_dynamicCast())
    {
      break;
    }

    v16 = v49[0];
    v17 = [v49[0] pl_managedAsset];
    if (!v17)
    {

      v29 = sub_1A3C56D80();
      v30 = v46;
      (*(v46 + 16))(v8, v29, v15);
      v31 = v16;
      v32 = sub_1A5246F04();
      v33 = sub_1A524D244();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v31;
        v36 = v31;
        _os_log_impl(&dword_1A3C1C000, v32, v33, "Could not get PL asset from PHAsset: %@", v34, 0xCu);
        sub_1A3CB65E4(v35);
        MEMORY[0x1A590EEC0](v35, -1, -1);
        MEMORY[0x1A590EEC0](v34, -1, -1);
      }

      (*(v30 + 8))(v8, v15);
      v37 = v44;
      v38 = v45;
      v39 = v48;
      if (v48)
      {
        sub_1A408C0E8();
        v40 = swift_allocError();
        *v41 = 1;
        *(v41 + 8) = 1;
        *v39 = sub_1A5240B74();

LABEL_16:
        __swift_destroy_boxed_opaque_existential_0(v53);
        (*(v37 + 8))(v12, v38);

        return 0;
      }

      goto LABEL_18;
    }

    sub_1A3EE81DC(&v51, v17);

    __swift_destroy_boxed_opaque_existential_0(v53);
    sub_1A5240C54();
    if (!v52)
    {
      v13 = v54;
      goto LABEL_7;
    }
  }

  v19 = sub_1A3C56D80();
  v20 = v46;
  (*(v46 + 16))(v5, v19, v15);
  sub_1A3C2F0BC(v53, &v51);
  v21 = sub_1A5246F04();
  v22 = sub_1A524D244();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v48;
  if (v23)
  {
    v25 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = v47;
    *v25 = 136315138;
    sub_1A3C2F0BC(&v51, v49);
    v26 = sub_1A524C714();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(&v51);
    sub_1A3C2EF94(v26, v28, &v50);
  }

  __swift_destroy_boxed_opaque_existential_0(&v51);
  (*(v20 + 8))(v5, v15);
  v37 = v44;
  v38 = v45;
  if (v24)
  {
    sub_1A408C0E8();
    v40 = swift_allocError();
    *v42 = 1;
    *(v42 + 8) = 1;
    *v24 = sub_1A5240B74();
    goto LABEL_16;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v53);
  (*(v37 + 8))(v12, v38);
  return 0;
}

uint64_t sub_1A4080C28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[4] = swift_task_alloc();
  if (a4)
  {
    v10 = swift_task_alloc();
    v7[5] = v10;
    *v10 = v7;
    v10[1] = sub_1A4080D8C;

    return sub_1A4081370(a5);
  }

  else
  {
    v12 = swift_task_alloc();
    v7[7] = v12;
    *v12 = v7;
    v12[1] = sub_1A4080EA0;

    return sub_1A40821A8(a5);
  }
}

uint64_t sub_1A4080D8C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1A40810D8;
  }

  else
  {
    v2 = sub_1A4080FB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4080EA0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1A4081224;
  }

  else
  {
    v2 = sub_1A408EA54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4080FB4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1A524CC54();
  sub_1A3C66EE8(v3, v2);
  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  sub_1A3EA52F4(0, 0, v1, &unk_1A53167F0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A40810D8()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1A524CC54();
  sub_1A3C66EE8(v4, v3);
  v6 = v1;
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v1;
  sub_1A3EA52F4(0, 0, v2, &unk_1A53167E0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A4081224()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1A524CC54();
  sub_1A3C66EE8(v4, v3);
  v6 = v1;
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v1;
  sub_1A3EA52F4(0, 0, v2, &unk_1A53167E0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A4081370(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_1A5246F24();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4081460, 0, 0);
}

uint64_t sub_1A4081460(uint64_t a1, __n128 a2)
{
  v46 = v2;
  v3 = v2[24];
  if (v3 >> 62)
  {
    v43 = sub_1A524E2B4();
    if (v43 >= 1)
    {
      v4 = v43;
      a1 = sub_1A524E2B4();
      if (a1)
      {
        goto LABEL_3;
      }
    }

LABEL_19:

    v36 = v2[1];
    goto LABEL_20;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_3:
  v2[32] = v4;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](0, v2[24], a2);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](a1);
    }

    v5 = *(v2[24] + 32);
  }

  v6 = v5;
  v2[33] = v5;
  v7 = [v5 photoLibrary];
  v2[34] = v7;
  if (v7)
  {
    v8 = v2[26];
    v9 = sub_1A3C56D80();
    v10 = *(v8 + 16);
    v2[35] = v10;
    v11 = v2[25];
    if (v4 != 1)
    {
      v10(v2[30], v9, v11);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v10(v2[31], v9, v11);
    v12 = v6;
    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (!os_log_type_enabled(v13, v14))
    {
      v37 = v2[31];
      v38 = v2[25];
      v39 = v2[26];

      v40 = *(v39 + 8);
      v40(v37, v38);
      v2[36] = v40;
      v41 = v2[24];
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      v2[22] = sub_1A408C7C4;
      v2[23] = v42;
      v2[18] = MEMORY[0x1E69E9820];
      v2[19] = 1107296256;
      v2[20] = sub_1A3C2E0D0;
      v2[21] = &block_descriptor_151;
      v2[37] = _Block_copy(v2 + 18);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v15 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v15 = 136446210;
    v16 = [v12 uuid];

    if (v16)
    {
      v17 = sub_1A524C674();
      v19 = v18;

      sub_1A3C2EF94(v17, v19, v45);
    }

    goto LABEL_26;
  }

  v20 = v2[29];
  v21 = v2[25];
  v22 = v2[26];
  v23 = sub_1A3C56D80();
  (*(v22 + 16))(v20, v23, v21);
  v24 = v6;
  v25 = sub_1A5246F04();
  v26 = sub_1A524D244();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v27 = 136446210;
    v28 = [v24 uuid];

    if (v28)
    {
      v29 = sub_1A524C674();
      v31 = v30;

      sub_1A3C2EF94(v29, v31, v45);
    }

    goto LABEL_25;
  }

  v32 = v2[29];
  v33 = v2[25];
  v34 = v2[26];

  (*(v34 + 8))(v32, v33);
  sub_1A408C0E8();
  swift_allocError();
  *v35 = 1;
  *(v35 + 8) = 1;
  swift_willThrow();

  v36 = v2[1];
LABEL_20:

  return v36();
}

uint64_t sub_1A4081BA4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1A4081D60;
  }

  else
  {
    v2 = sub_1A4081CB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4081CB4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);

  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1A4081D60(uint64_t a1)
{
  v30 = v1;
  v2 = *(v1 + 296);
  v3 = *(v1 + 256);
  swift_willThrow();
  _Block_release(v2);
  v4 = sub_1A3C56D80();
  v5 = *(v1 + 304);
  v6 = *(v1 + 280);
  if (v3 != 1)
  {
    v6(*(v1 + 216), v4, *(v1 + 200));
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = *(v1 + 264);
  v6(*(v1 + 224), v4, *(v1 + 200));
  v8 = v7;
  v9 = v5;
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v1 + 264);
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = [v12 uuid];
    v15 = *(v1 + 304);
    if (v14)
    {
      v16 = v14;
      v17 = *(v1 + 264);

      v18 = sub_1A524C674();
      v20 = v19;

      sub_1A3C2EF94(v18, v20, &v29);
    }

    v28 = *(v1 + 264);

    __break(1u);
  }

  else
  {
    v21 = *(v1 + 304);
    v22 = *(v1 + 288);
    v23 = *(v1 + 224);
    v24 = *(v1 + 200);

    v22(v23, v24);
    v25 = *(v1 + 264);
    v26 = *(v1 + 272);
    swift_willThrow();

    v27 = *(v1 + 8);

    v27();
  }
}

uint64_t sub_1A40821A8(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_1A5246F24();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40822A4, 0, 0);
}

uint64_t sub_1A40822A4(id a1, __n128 a2)
{
  v77 = v2;
  v3 = v2[24];
  if (v3 >> 62)
  {
    goto LABEL_39;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v4;
  if (!v4)
  {
LABEL_42:

    v66 = v2[1];
LABEL_43:

    return v66();
  }

  while (1)
  {
    v2[33] = v5;
    v74 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](0, v2[24], a2);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v6 = *(v2[24] + 32);
    }

    v7 = v6;
    v2[34] = v6;
    v8 = [v6 photoLibrary];
    v2[35] = v8;
    v70 = v2;
    if (!v8)
    {
      v23 = v2[29];
      v24 = v2[25];
      v25 = v2[26];
      v26 = sub_1A3C56D80();
      (*(v25 + 16))(v23, v26, v24);
      v27 = v7;
      v28 = sub_1A5246F04();
      v29 = sub_1A524D244();
      if (!os_log_type_enabled(v28, v29))
      {
        v35 = v2[29];
        v36 = v2[25];
        v37 = v2[26];

        (*(v37 + 8))(v35, v36);
        sub_1A408C0E8();
        swift_allocError();
        *v38 = 1;
        *(v38 + 8) = 1;
        swift_willThrow();

        v66 = v2[1];
        goto LABEL_43;
      }

      v30 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v30 = 136446210;
      v31 = [v27 uuid];

      if (v31)
      {
        v32 = sub_1A524C674();
        v34 = v33;

        sub_1A3C2EF94(v32, v34, v76);
      }

      goto LABEL_50;
    }

    v9 = v8;
    v10 = v2[26];
    v11 = sub_1A3C56D80();
    v12 = *(v10 + 16);
    v2[36] = v12;
    v13 = v2[25];
    v69 = v12;
    if (v5 != 1)
    {
      v12(v2[31], v11, v13);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v12(v2[32], v11, v13);
    v14 = v7;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();
    v17 = v2;
    if (os_log_type_enabled(v15, v16))
    {
      break;
    }

    v39 = v2[32];
    v40 = v2[25];
    v41 = v2[26];

    v42 = *(v41 + 8);
    v42(v39, v40);
    v2 = v17;
    v17[37] = v42;
    v43 = v17[24];
    v73 = sub_1A408AB5C(MEMORY[0x1E69E7CC0]);
    v44 = 0;
    v75 = [v9 librarySpecificFetchOptions];
    v17[38] = v75;
    v71 = v43 + 32;
    v72 = v3 & 0xFFFFFFFFFFFFFF8;
    v3 = &selRef_internalReleaseAgreementTitle;
    while (1)
    {
      if (v74)
      {
        v45 = MEMORY[0x1A59097F0](v44, v2[24]);
      }

      else
      {
        if (v44 >= *(v72 + 16))
        {
          goto LABEL_38;
        }

        v45 = *(v71 + 8 * v44);
      }

      v46 = v45;
      if (__OFADD__(v44++, 1))
      {
        break;
      }

      a1 = [objc_opt_self() fetchLikesForAsset:v45 options:v75];
      if (!a1)
      {
        goto LABEL_48;
      }

      v48 = a1;
      v49 = [a1 count];
      if ((v49 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v50 = v49;
      if (v49)
      {
        v51 = 0;
        while (1)
        {
          v52 = [v48 objectAtIndexedSubscript_];
          if ([v52 isMyComment])
          {
            break;
          }

          if (v50 == ++v51)
          {
            goto LABEL_17;
          }
        }

        v53 = v4;
        a1 = [v46 uuid];
        if (!a1)
        {
          goto LABEL_49;
        }

        v54 = a1;
        v55 = sub_1A524C674();
        v57 = v56;

        v58 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = v73;
        sub_1A40877E0(v58, v55, v57, isUniquelyReferenced_nonNull_native);

        v4 = v53;
        v60 = v44 == v53;
        v2 = v70;
        if (v60)
        {
LABEL_33:
          if (*(v73 + 16) == 1)
          {
            v61 = v2[24];
            v62 = swift_allocObject();
            *(v62 + 16) = v61;
            *(v62 + 24) = v73;
            v2[22] = sub_1A408C90C;
            v2[23] = v62;
            v2[18] = MEMORY[0x1E69E9820];
            v2[19] = 1107296256;
            v2[20] = sub_1A3C2E0D0;
            v2[21] = &block_descriptor_171_0;
            v2[39] = _Block_copy(v2 + 18);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v63 = v2[30];
          v64 = v2[25];
          v65 = sub_1A3C56D80();
          v69(v63, v65, v64);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
LABEL_17:

        if (v44 == v4)
        {
          goto LABEL_33;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v67 = sub_1A524E2B4();
    if (v67 < 1)
    {
      goto LABEL_42;
    }

    v5 = v67;
    a1 = sub_1A524E2B4();
    if (!a1)
    {
      goto LABEL_42;
    }

    v4 = a1;
  }

  v18 = swift_slowAlloc();
  v76[0] = swift_slowAlloc();
  *v18 = 136446210;
  v19 = [v14 uuid];

  if (v19)
  {
    v20 = sub_1A524C674();
    v22 = v21;

    sub_1A3C2EF94(v20, v22, v76);
  }

LABEL_51:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](a1);
}

uint64_t sub_1A4082DEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_1A4082FBC;
  }

  else
  {
    v2 = sub_1A4082EFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4082EFC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);

  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1A4082FBC(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 312);
  v3 = *(v1 + 264);
  swift_willThrow();
  _Block_release(v2);
  v4 = sub_1A3C56D80();
  v5 = *(v1 + 320);
  v6 = *(v1 + 288);
  if (v3 != 1)
  {
    v6(*(v1 + 216), v4, *(v1 + 200));
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = *(v1 + 272);
  v6(*(v1 + 224), v4, *(v1 + 200));
  v8 = v7;
  v9 = v5;
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v1 + 272);
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = [v12 uuid];
    v15 = *(v1 + 320);
    if (v14)
    {
      v16 = v14;
      v17 = *(v1 + 272);

      v18 = sub_1A524C674();
      v20 = v19;

      sub_1A3C2EF94(v18, v20, &v30);
    }

    v29 = *(v1 + 272);

    __break(1u);
  }

  else
  {
    v21 = *(v1 + 320);
    v22 = *(v1 + 296);
    v23 = *(v1 + 224);
    v24 = *(v1 + 200);

    v22(v23, v24);
    v25 = *(v1 + 304);
    v27 = *(v1 + 272);
    v26 = *(v1 + 280);
    swift_willThrow();

    v28 = *(v1 + 8);

    v28();
  }
}

uint64_t sub_1A4083410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40834AC, v8, v7);
}

uint64_t sub_1A40834AC()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = sub_1A5240B74();
    v2(0, v3);
  }

  **(v0 + 16) = v1 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A4083604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[29] = v11;
  v8[26] = a6;
  v8[27] = a7;
  v8[24] = a4;
  v8[25] = a5;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40836D4, 0, 0);
}

void sub_1A40836D4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = swift_allocObject();
  v0[31] = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v4;
  v0[22] = sub_1A408C434;
  v0[23] = v5;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1A3C2E0D0;
  v0[21] = &block_descriptor_119_0;
  v0[32] = _Block_copy(v0 + 18);
  v6 = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40838CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1A4083B38;
  }

  else
  {
    v2 = sub_1A40839DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A40839DC()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  _Block_release(*(v0 + 256));
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1A524CC54();
  v7 = v5;

  sub_1A3C66EE8(v4, v3);
  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = v4;
  v9[6] = v3;
  v9[7] = v1;
  sub_1A3D4D930(0, 0, v2, &unk_1A53167B8, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A4083B38(uint64_t a1)
{
  v3 = v1[32];
  v2 = v1[33];
  v4 = v1[30];
  v6 = v1[28];
  v5 = v1[29];
  v7 = v1[25];
  swift_willThrow();
  _Block_release(v3);

  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1A524CC54();
  v9 = v7;
  sub_1A3C66EE8(v6, v5);
  v10 = v2;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = v2;
  v12[6] = v6;
  v12[7] = v5;
  sub_1A3D4D930(0, 0, v4, &unk_1A53167A8, v12);

  v14 = v1[1];

  return v14();
}

void sub_1A4083CB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A3C56D80();
  (*(v9 + 16))(v11, v12, v8);
  v13 = a1;
  v14 = sub_1A5246F04();
  v15 = sub_1A524D264();
  if (os_log_type_enabled(v14, v15))
  {
    v35[2] = a2;
    v35[3] = a3;
    v35[4] = a4;
    v16 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v16 = 136446210;
    v17 = [v13 uuid];
    v18 = v13;
    v19 = v17;
    v35[1] = v18;

    if (v19)
    {
      v20 = sub_1A524C674();
      v22 = v21;

      sub_1A3C2EF94(v20, v22, v36);
    }

    __break(1u);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    v23 = sub_1A524C634();
    v24 = [objc_opt_self() creationRequestForAssetCommentWithText_];

    v25 = [objc_opt_self() changeRequestForAsset_];
    v26 = [v24 placeholderForCreatedAssetComment];
    sub_1A3C4EDC8(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A52F9790;
    *(v27 + 32) = v26;
    sub_1A3C52C70(0, &qword_1EB131210, 0x1E6978960);
    v28 = v26;
    v29 = sub_1A524CA14();

    [v25 addComments_];

    v30 = [v28 uuid];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1A524C674();
      v34 = v33;
    }

    else
    {

      v32 = 0;
      v34 = 0;
    }

    swift_beginAccess();
    *(a4 + 16) = v32;
    *(a4 + 24) = v34;
  }
}

uint64_t sub_1A4084098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_1A5246F24();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_1A524CC54();
  v7[12] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4084190, v10, v9);
}

void sub_1A4084190()
{
  v20 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);

  v5 = sub_1A3C56D80();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136446210;
    v11 = [v9 uuid];

    if (v11)
    {
      v12 = sub_1A524C674();
      v14 = v13;

      sub_1A3C2EF94(v12, v14, &v19);
    }

    __break(1u);
  }

  else
  {
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 72);

    (*(v16 + 8))(v15, v17);
    if (*(v0 + 48))
    {
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v18 = *(v0 + 8);

    v18();
  }
}

uint64_t sub_1A40843E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1A5246F24();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_1A524CC54();
  v7[9] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40844E0, v10, v9);
}

void sub_1A40844E0()
{
  v28 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v6 = sub_1A3C56D80();
  (*(v3 + 16))(v1, v6, v2);
  v7 = v5;
  v8 = v4;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 16);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136446466;
    v13 = [v11 uuid];
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 16);

      v16 = sub_1A524C674();
      v18 = v17;

      sub_1A3C2EF94(v16, v18, &v27);
    }

    v26 = *(v0 + 16);

    __break(1u);
  }

  else
  {
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = *(v0 + 48);
    v22 = *(v0 + 24);

    (*(v20 + 8))(v19, v21);
    v23 = *(v0 + 32);
    if (v23)
    {
      v24 = sub_1A5240B74();
      v23(0, 0, v24);
    }

    v25 = *(v0 + 8);

    v25();
  }
}

void sub_1A408485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1A524C634();
    if (a3)
    {
LABEL_3:
      v7 = sub_1A5240B74();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1A40848F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[29] = v11;
  v8[26] = a6;
  v8[27] = a7;
  v8[24] = a4;
  v8[25] = a5;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40849C0, 0, 0);
}

uint64_t sub_1A40849C0()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[22] = sub_1A408C200;
  v0[23] = v4;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1A3C2E0D0;
  v0[21] = &block_descriptor_95;
  v5 = _Block_copy(v0 + 18);
  v0[31] = v5;

  v6 = v2;

  v0[2] = v0;
  v0[3] = sub_1A4084B84;
  v7 = swift_continuation_init();
  sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
  v0[17] = v8;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4077B64;
  v0[13] = &block_descriptor_98_0;
  v0[14] = v7;
  [v3 performChanges:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4084B84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1A4084DDC;
  }

  else
  {
    v2 = sub_1A4084C94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4084C94()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  _Block_release(*(v0 + 248));
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_1A524CC54();
  v7 = v5;
  swift_unknownObjectRetain();
  sub_1A3C66EE8(v3, v2);
  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v4;
  v9[5] = v7;
  v9[6] = v3;
  v9[7] = v2;
  sub_1A3D4D930(0, 0, v1, &unk_1A5316788, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A4084DDC(uint64_t a1)
{
  v3 = v1[31];
  v2 = v1[32];
  v5 = v1[29];
  v4 = v1[30];
  v7 = v1[27];
  v6 = v1[28];
  v8 = v1[26];
  swift_willThrow();
  _Block_release(v3);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1A524CC54();
  v10 = v8;
  swift_unknownObjectRetain();
  sub_1A3C66EE8(v6, v5);
  v11 = v2;
  v12 = sub_1A524CC44();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v7;
  v13[5] = v10;
  v13[6] = v2;
  v13[7] = v6;
  v13[8] = v5;
  sub_1A3D4D930(0, 0, v4, &unk_1A5316778, v13);

  v15 = v1[1];

  return v15();
}

void sub_1A4084F60(uint64_t a1, void *a2)
{
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    if (sub_1A524E2B4() != 1)
    {
      goto LABEL_14;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:
    v24 = sub_1A3C56D80();
    (*(v6 + 16))(v8, v24, v5);
    v25 = a2;

    v26 = sub_1A5246F04();
    v27 = sub_1A524D264();
    if (!os_log_type_enabled(v26, v27))
    {

      (*(v6 + 8))(v8, v5);
LABEL_20:
      v34 = [objc_opt_self() changeRequestForAsset_];
      swift_beginAccess();
      sub_1A3C52C70(0, &unk_1EB131200, 0x1E6978668);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v36 = v5;
    v28 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v28 = 134218242;
    swift_beginAccess();
    v29 = *(a1 + 16);
    if (v29 >> 62)
    {
      v30 = sub_1A524E2B4();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = a2;
    *(v28 + 4) = v30;

    *(v28 + 12) = 2082;
    v2 = [v25 uuid];

    if (v2)
    {
      v31 = sub_1A524C674();
      v33 = v32;

      sub_1A3C2EF94(v31, v33, v38);
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = *(v13 + 32);
  v15 = sub_1A3C56D80();
  (*(v6 + 16))(v11, v15, v5);
  v16 = v14;
  v2 = a2;
  v17 = sub_1A5246F04();
  v18 = sub_1A524D264();
  if (!os_log_type_enabled(v17, v18))
  {

    (*(v6 + 8))(v11, v5);
    goto LABEL_20;
  }

  v36 = v5;
  v37 = a2;
  v19 = swift_slowAlloc();
  v35[0] = swift_slowAlloc();
  v38[0] = v35[0];
  *v19 = 136315394;
  v20 = [v16 uuid];
  v35[1] = v16;

  if (v20)
  {
    v21 = sub_1A524C674();
    v23 = v22;

    sub_1A3C2EF94(v21, v23, v38);
  }

LABEL_25:

  __break(1u);
  __break(1u);
}

uint64_t sub_1A4085564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1A5246F24();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_1A524CC54();
  v7[9] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A408565C, v10, v9);
}

void sub_1A408565C()
{
  v22 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);

  v5 = sub_1A3C56D80();
  (*(v3 + 16))(v1, v5, v2);
  swift_unknownObjectRetain();
  v6 = v4;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = [v10 count];
    swift_unknownObjectRelease();
    *(v11 + 12) = 2082;
    v12 = [v9 uuid];

    if (v12)
    {
      v13 = sub_1A524C674();
      v15 = v14;

      sub_1A3C2EF94(v13, v15, &v21);
    }

    __break(1u);
  }

  else
  {
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);

    swift_unknownObjectRelease();
    (*(v17 + 8))(v16, v18);
    v19 = *(v0 + 32);
    if (v19)
    {
      v19(1, 0);
    }

    v20 = *(v0 + 8);

    v20();
  }
}

uint64_t sub_1A40858A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1A5246F24();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  sub_1A524CC54();
  v8[10] = sub_1A524CC44();
  v11 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40859A4, v11, v10);
}

void sub_1A40859A4()
{
  v29 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  v6 = sub_1A3C56D80();
  (*(v3 + 16))(v1, v6, v2);
  swift_unknownObjectRetain();
  v7 = v5;
  v8 = v4;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 134218498;
    *(v13 + 4) = [v12 count];
    swift_unknownObjectRelease();
    *(v13 + 12) = 2082;
    v14 = [v11 uuid];
    if (v14)
    {
      v15 = v14;
      v16 = *(v0 + 24);

      v17 = sub_1A524C674();
      v19 = v18;

      sub_1A3C2EF94(v17, v19, &v28);
    }

    v27 = *(v0 + 24);

    __break(1u);
  }

  else
  {
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = *(v0 + 32);

    swift_unknownObjectRelease();
    (*(v21 + 8))(v20, v22);
    v24 = *(v0 + 40);
    if (v24)
    {
      v25 = sub_1A5240B74();
      v24(0, v25);
    }

    v26 = *(v0 + 8);

    v26();
  }
}

uint64_t sub_1A4085D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_1A5246F24();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4085E20, 0, 0);
}

uint64_t sub_1A4085E20()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[32] = v2;
  *(v2 + 16) = 0;
  v3 = [v1 photoLibrary];
  v0[33] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = v0[27];
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v0[22] = sub_1A408C05C;
    v0[23] = v6;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_88;
    v7 = _Block_copy(v0 + 18);
    v0[34] = v7;
    v8 = v5;

    v0[2] = v0;
    v0[3] = sub_1A4086028;
    v9 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950, MEMORY[0x1E69E7CA8] + 8);
    v0[17] = v10;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_82_1;
    v0[14] = v9;
    [v4 performChanges:v7 completionHandler:v0 + 10];
    v3 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A4086028()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1A40863B0;
  }

  else
  {
    v2 = sub_1A4086138;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4086138()
{
  v24 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);

  _Block_release(v1);
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    v6 = *(v0 + 216);
    v7 = sub_1A3C56D80();
    (*(v5 + 16))(v3, v7, v4);
    v8 = v6;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 248);
    v13 = *(v0 + 224);
    v14 = *(v0 + 232);
    if (v11)
    {
      v15 = *(v0 + 216);
      v16 = swift_slowAlloc();
      swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = [v15 uuid];
      v18 = sub_1A524C674();
      v20 = v19;

      sub_1A3C2EF94(v18, v20, &v23);
    }

    (*(v14 + 8))(v12, v13);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1A40863B0(uint64_t a1)
{
  v3 = v1[34];
  v2 = v1[35];
  v4 = v1[33];
  v6 = v1[29];
  v5 = v1[30];
  v7 = v1[28];
  swift_willThrow();

  _Block_release(v3);

  v8 = sub_1A3C56D80();
  (*(v6 + 16))(v5, v8, v7);
  v9 = v2;
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[35];
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Could not mark collection share as viewed: %@", v14, 0xCu);
    sub_1A3CB65E4(v15);
    MEMORY[0x1A590EEC0](v15, -1, -1);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }

  else
  {
  }

  (*(v1[29] + 8))(v1[30], v1[28]);

  v18 = v1[1];

  return v18();
}

PXSharedAlbumsUtilities __swiftcall PXSharedAlbumsUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A4086664(unint64_t a1, void *a2, uint64_t a3)
{
  v48 = sub_1A5246F24();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v9 = sub_1A524E2B4();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 >= 1)
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v46 = (v6 + 16);
    v44 = (v6 + 8);
    *&v7 = 138412546;
    v42 = v7;
    v49 = a1;
    v50 = a2;
    v51 = a1 & 0xC000000000000001;
    v52 = v9;
    v45 = a3;
    while (1)
    {
      if (v11)
      {
        v12 = MEMORY[0x1A59097F0](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v13 emailAddressString];
      if (v14)
      {
        v15 = v14;

        v16 = [objc_opt_self() changeRequestForCollectionShare_];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 addParticipantWithEmailAddress_];

          if (v18)
          {
            goto LABEL_17;
          }

LABEL_22:

          goto LABEL_6;
        }
      }

      else
      {
        v15 = [v13 phoneNumberString];

        if (!v15)
        {
          v29 = sub_1A3C56D80();
          v30 = v47;
          v31 = v48;
          (*v46)(v47, v29, v48);
          v32 = v13;
          v33 = a2;
          v34 = sub_1A5246F04();
          v35 = sub_1A524D244();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v53[0] = swift_slowAlloc();
            *v36 = v42;
            *(v36 + 4) = v32;
            *v37 = v32;
            *(v36 + 12) = 2082;
            v43 = v32;
            v38 = [v33 uuid];
            v39 = sub_1A524C674();
            v41 = v40;

            sub_1A3C2EF94(v39, v41, v53);
          }

          (*v44)(v30, v31);
          a3 = v45;
          goto LABEL_26;
        }

        v19 = [objc_opt_self() changeRequestForCollectionShare_];
        if (v19)
        {
          v17 = v19;
          v18 = [v19 addParticipantWithPhoneNumber_];

          if (v18)
          {
LABEL_17:
            v20 = [v18 localIdentifier];
            v21 = sub_1A524C674();
            v23 = v22;

            swift_beginAccess();
            v24 = *(a3 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a3 + 16) = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v24 = sub_1A3D3D914(0, *(v24 + 2) + 1, 1, v24);
              *(a3 + 16) = v24;
            }

            v27 = *(v24 + 2);
            v26 = *(v24 + 3);
            if (v27 >= v26 >> 1)
            {
              v24 = sub_1A3D3D914((v26 > 1), v27 + 1, 1, v24);
            }

            *(v24 + 2) = v27 + 1;
            v28 = &v24[16 * v27];
            *(v28 + 4) = v21;
            *(v28 + 5) = v23;
            *(a3 + 16) = v24;
            swift_endAccess();

            a1 = v49;
            a2 = v50;
LABEL_26:
            v11 = v51;
            v9 = v52;
            goto LABEL_6;
          }

          goto LABEL_22;
        }
      }

LABEL_6:
      if (v9 == ++v10)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A4086B70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1A4086BDC(uint64_t a1, __n128 a2)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 16))
  {
LABEL_3:
    sub_1A408CB30();
    sub_1A524E3D4();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (v2)
  {
LABEL_4:

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_7:

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t HostingViewControllerProvider.viewControllerReference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
  swift_beginAccess();
  return sub_1A408BB20(v1 + v3, a1);
}

uint64_t HostingViewControllerProvider.viewControllerReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
  swift_beginAccess();
  sub_1A408BB84(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t HostingViewControllerProvider.__deallocating_deinit()
{
  sub_1A408BBE8(v0 + OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference);

  return swift_deallocClassInstance();
}

uint64_t sub_1A40870F0()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1A4087198@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

void View.embeddedInHostingViewController()(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v23 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(255, &qword_1EB131160, sub_1A408BCA8, MEMORY[0x1E6980A08]);
  v4 = sub_1A5248804();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  type metadata accessor for HostingViewControllerProvider(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  v14 = *(v13 - 8);
  v21[0] = *(v14 + 56);
  v21[1] = v14 + 56;
  (v21[0])(v11 + v12, 1, 1, v13);
  sub_1A408E96C(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider, &protocol conformance descriptor for HostingViewControllerProvider);
  v15 = v22;
  sub_1A524AC44();
  v16 = sub_1A408BD28();
  v24 = v15;
  v25 = v16;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for PXSwiftUIHostingViewController(0, v4, WitnessTable, v18);
  (*(v5 + 16))(v7, v10, v4);
  v19 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v7);
  sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
  v20 = v19;
  sub_1A5245CA4();
}

void sub_1A4087548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A408CAB8(0);
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

void sub_1A40877E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_1A4087548(v16, a4 & 1);
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
      sub_1A4087958();
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

void sub_1A4087958()
{
  v1 = v0;
  sub_1A408CAB8(0);
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

id _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE06sharedB7Enabled3forSbSo14PHPhotoLibraryC_tFZ_0(void *a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 photoLibrary];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  result = [v7 pathManager];
  if (result)
  {
    v10 = result;
    v11 = objc_opt_self();
    v12 = [v10 libraryURL];

    sub_1A5240DE4();
    v13 = sub_1A5240D44();
    (*(v3 + 8))(v6, v2);
    v14 = [v11 sharedStreamsEnabledForPhotoLibraryURL_];

    return v14;
  }

  __break(1u);
  return result;
}

id _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE20sharedAlbumIsPendingySbSo17PHAssetCollectionCFZ_0(void *a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    return ([v3 status] == 2);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = a1;
    result = [v6 cloudRelationshipState];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = [result integerValue];

    return (v9 == 1);
  }
}

PXSharedAlbumParticipant *_sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE5owner14forSharedAlbumSo0aI11ParticipantCSgSo17PHAssetCollectionC_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    result = [v7 photoLibrary];
    if (result)
    {
      v10 = result;
      v11 = objc_opt_self();
      v12 = [(PXSharedAlbumParticipant *)v10 px_standardLibrarySpecificFetchOptions];

      v13 = [v11 fetchOwnerParticipantInShare:v7 options:v12];
      v14 = [v13 firstObject];
      if (v14)
      {
        v15 = v14;
        v16 = PXSharedAlbumParticipantForShareParticipant(v14);

        return v16;
      }

LABEL_9:
      v21 = sub_1A3C56D80();
      (*(v3 + 16))(v5, v21, v2);
      v22 = a1;
      v23 = sub_1A5246F04();
      v24 = sub_1A524D244();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_1A3C1C000, v23, v24, "An invalid asset collection was passed in to owner(forSharedAlbum:): %@", v25, 0xCu);
        sub_1A3CB65E4(v26);
        MEMORY[0x1A590EEC0](v26, -1, -1);
        MEMORY[0x1A590EEC0](v25, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      goto LABEL_9;
    }

    v18 = v17;
    v19 = a1;
    result = [v18 pl_assetContainer];
    if (result)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClassUnconditional();
      v16 = PXSharedAlbumOwnerParticipantForAlbum(v20);

      swift_unknownObjectRelease();
      return v16;
    }
  }

  __break(1u);
  return result;
}

id _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE13ownerIsVetted14forSharedAlbumSbSo17PHAssetCollectionC_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    result = [v7 photoLibrary];
    if (result)
    {
      v10 = result;
      v11 = objc_opt_self();
      v12 = [v10 px_standardLibrarySpecificFetchOptions];

      v13 = [v11 fetchOwnerParticipantInShare:v7 options:v12];
      v14 = [v13 firstObject];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 allowlistedState];

        return (v16 == 1);
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = a1;
    result = [v18 pl_assetContainer];
    if (result)
    {
      objc_opt_self();
      v20 = [swift_dynamicCastObjCClassUnconditional() cloudOwnerIsWhitelisted];

      swift_unknownObjectRelease();
      return v20;
    }

    goto LABEL_14;
  }

LABEL_9:
  v21 = sub_1A3C56D80();
  (*(v3 + 16))(v5, v21, v2);
  v22 = a1;
  v23 = sub_1A5246F04();
  v24 = sub_1A524D244();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_1A3C1C000, v23, v24, "An invalid asset collection was passed in to ownerIsVetted(forSharedAlbum:): %@", v25, 0xCu);
    sub_1A3CB65E4(v26);
    MEMORY[0x1A590EEC0](v26, -1, -1);
    MEMORY[0x1A590EEC0](v25, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE15scopeIdentifier14forSharedAlbumSSSgSo17PHAssetCollectionC_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = a1;
      v15 = [v13 cloudGUID];
      v11 = sub_1A524C674();

      return v11;
    }

    v16 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v16, v2);
    v17 = a1;
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "An invalid asset collection was passed in to scopeIdentifier(forSharedAlbum:): %@", v20, 0xCu);
      sub_1A3CB65E4(v21);
      MEMORY[0x1A590EEC0](v21, -1, -1);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v7 scopeIdentifier];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_1A524C674();

  return v11;
}

double _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE8setTitle_14forSharedAlbum17completionHandlerySS_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, id), uint64_t a5)
{
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - v18;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v37 = a5;
    sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
    v20 = [swift_getObjCClassFromMetadata() sharedInstance];
    v21 = [v20 simulateErrorWhileRenaming];

    if ((v21 & 1) == 0)
    {
      sub_1A524CC74();
      v33 = sub_1A524CCB4();
      (*(*(v33 - 8) + 56))(v19, 0, 1, v33);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = a3;
      v34[5] = a1;
      v34[6] = a2;
      v34[7] = a4;
      v34[8] = v37;
      v35 = a3;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v22 = sub_1A3C56D80();
    (*(v11 + 16))(v16, v22, v10);
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A3C1C000, v23, v24, "Simulating error during setTitle(_:forSharedAlbum:completionHandler:)", v25, 2u);
      MEMORY[0x1A590EEC0](v25, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    if (a4)
    {
      v27 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:1 userInfo:0];
      v28 = v27;
LABEL_11:
      a4(0, v28);
    }
  }

  else
  {
    v29 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v29, v10);
    v30 = sub_1A5246F04();
    v31 = sub_1A524D244();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1A3C1C000, v30, v31, "An invalid asset collection was passed in to setTitle(_:forSharedAlbum:completionHandler:)", v32, 2u);
      MEMORY[0x1A590EEC0](v32, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    if (a4)
    {
      v27 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
      v28 = v27;
      goto LABEL_11;
    }
  }

  return result;
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE031hasReachedLimitOfAcceptedSharedB02inSbSo14PHPhotoLibraryC_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 simulateHasReachedLimitOfAcceptedSharedAlbums];

  if (v7)
  {
    v8 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Simulating user has reached max limit of subscribed shared albums", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

  v12 = [a1 px_standardLibrarySpecificFetchOptions];
  sub_1A3C52C70(0, &unk_1EB120A20, 0x1E6978770);
  v13 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:12 subtype:102 options:v12];
  v14 = [objc_opt_self() maxSubscribedStreams];
  if ([v13 count] < v14)
  {
LABEL_13:

    return;
  }

  v15 = [v13 count];
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_14:

    return;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = [v13 objectAtIndex_];
    v20 = [v19 status];

    if (v20 != 3)
    {
      goto LABEL_9;
    }

    if (__OFADD__(v17++, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v16 == ++v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1A4088D58()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4078148(v5, v6, v7, v2, v3, v4);
}

void sub_1A4088E00(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  _Block_copy(a2);
  if (v12)
  {
    v13 = a1;
    sub_1A524CC74();
    v14 = sub_1A524CCB4();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    v15[5] = sub_1A3FABAE4;
    v15[6] = v11;

    sub_1A3D4D930(0, 0, v10, &unk_1A5316740, v15);
  }

  else
  {
    v16 = sub_1A3C56D80();
    (*(v5 + 16))(v7, v16, v4);
    v17 = sub_1A5246F04();
    v18 = sub_1A524D244();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1A3C1C000, v17, v18, "An invalid asset collection was passed in to resendInvitationToParticipant:", v19, 2u);
      MEMORY[0x1A590EEC0](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v20 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
    v21 = sub_1A5240B74();
    (a2)[2](a2, 0, v21);
  }
}

void sub_1A4089140(void *a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v28 = a5;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = a1;
    sub_1A524CC74();
    v20 = sub_1A524CCB4();
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v18;
    v21[5] = a2;
    v21[6] = a3;
    sub_1A3C66EE8(a2, a3);
    sub_1A3D4D930(0, 0, v16, v28, v21);
  }

  else
  {
    v22 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v22, v10);
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A3C1C000, v23, v24, a6, v25, 2u);
      MEMORY[0x1A590EEC0](v25, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    if (a2)
    {
      v26 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
      a2(0, v26);
    }
  }
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE18inviteParticipants_13toSharedAlbum17completionHandlerySaySo0aJ11ParticipantCG_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(uint64_t a1, void *a2, void (*a3)(void, id), uint64_t a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1A524CC74();
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = a1;
    v16[6] = a3;
    v16[7] = a4;
    v17 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18 = sub_1A3C56D80();
  (*(v9 + 16))(v11, v18, v8);
  v19 = sub_1A5246F04();
  v20 = sub_1A524D244();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1A3C1C000, v19, v20, "An invalid asset collection was passed in to inviteParticipants:", v21, 2u);
    MEMORY[0x1A590EEC0](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (a3)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
    a3(0, v22);
  }
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE16resendInvitation2to13inSharedAlbum17completionHandlerySo0aK11ParticipantC_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(void *a1, void *a2, void (*a3)(void, id), uint64_t a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1A524CC74();
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v16[7] = a4;
    v17 = a1;
    v18 = a2;
    sub_1A3C66EE8(a3, a4);
    sub_1A3D4D930(0, 0, v14, &unk_1A53168D8, v16);
  }

  else
  {
    v19 = sub_1A3C56D80();
    (*(v9 + 16))(v11, v19, v8);
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v20, v21, "An invalid asset collection was passed in to resendInvitationToParticipant:", v22, 2u);
      MEMORY[0x1A590EEC0](v22, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    if (a3)
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
      a3(0, v23);
    }
  }
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE18removeParticipants_15fromSharedAlbum17completionHandlerySaySo0aJ11ParticipantCG_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(uint64_t a1, void *a2, void (*a3)(void, id), uint64_t a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1A524CC74();
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v16[7] = a4;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v17 = sub_1A3C56D80();
  (*(v9 + 16))(v11, v17, v8);
  v18 = sub_1A5246F04();
  v19 = sub_1A524D244();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1A3C1C000, v18, v19, "An invalid asset collection was passed in to removeParticipants:", v20, 2u);
    MEMORY[0x1A590EEC0](v20, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (a3)
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
    a3(0, v21);
  }
}

void sub_1A4089D24(char a1, void *a2, void (*a3)(void, id), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v28 = a7;
  v12 = sub_1A5246F24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    sub_1A524CC74();
    v19 = sub_1A524CCB4();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = a2;
    *(v20 + 40) = a1 & 1;
    *(v20 + 48) = a3;
    *(v20 + 56) = a4;
    v21 = a2;
    sub_1A3C66EE8(a3, a4);
    sub_1A3D4D930(0, 0, v18, a6, v20);
  }

  else
  {
    v22 = sub_1A3C56D80();
    (*(v13 + 16))(v15, v22, v12);
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A3C1C000, v23, v24, v28, v25, 2u);
      MEMORY[0x1A590EEC0](v25, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    if (a3)
    {
      v26 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
      a3(0, v26);
    }
  }
}

uint64_t sub_1A408A03C(uint64_t a1, uint64_t a2)
{
  sub_1A408BC44(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE8setLiked2to9forAssets17completionHandlerySb_So17PXFastEnumeration_pySb_s5Error_pSgtcSgtFZ_0(int a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v83 = *MEMORY[0x1E69E9840];
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v69 - v9;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v20 = sub_1A5240C64();
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 count] < 1)
  {
    v27 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v27, v10);
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v72 = v10;
      *&v82[0] = v31;
      *v30 = 136315138;
      if (a1)
      {
        v32 = 0;
      }

      else
      {
        v32 = 28277;
      }

      if (a1)
      {
        v33 = 0xE000000000000000;
      }

      else
      {
        v33 = 0xE200000000000000;
      }

      sub_1A3C2EF94(v32, v33, v82);
    }

    (*(v11 + 8))(v13, v10);
    if (a3)
    {
      sub_1A408C0E8();
      v46 = swift_allocError();
      *v47 = 1;
      *(v47 + 8) = 1;
      a3(0, v46);
    }
  }

  else
  {
    v74 = a3;
    *&v82[0] = 0;
    v71 = a1;
    if (sub_1A40805A4(a1 & 1, a2, v82))
    {
      v70 = a4;
      v24 = MEMORY[0x1E69E7CC0];
      v77 = MEMORY[0x1E69E7CC0];
      v69 = *&v82[0];
      swift_unknownObjectRetain();
      sub_1A5240C74();
      sub_1A5240C54();
      v25 = MEMORY[0x1E69E7CA0];
      if (v81)
      {
        v72 = v10;
        sub_1A3C57128(&v80, v82);
        sub_1A3C2F0BC(v82, &v80);
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        if (!swift_dynamicCast())
        {
LABEL_28:

          v51 = sub_1A3C56D80();
          v52 = v72;
          (*(v11 + 16))(v19, v51, v72);
          sub_1A3C2F0BC(v82, &v80);
          v53 = sub_1A5246F04();
          v54 = sub_1A524D244();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *v55 = 136315138;
            sub_1A3C2F0BC(&v80, v78);
            v56 = sub_1A524C714();
            v58 = v57;
            __swift_destroy_boxed_opaque_existential_0(&v80);
            sub_1A3C2EF94(v56, v58, &v79);
          }

          __swift_destroy_boxed_opaque_existential_0(&v80);
          (*(v11 + 8))(v19, v52);
          v61 = v74;
          if (v74)
          {
            sub_1A408C0E8();
            v62 = swift_allocError();
            *v63 = 1;
            *(v63 + 8) = 1;
            v64 = sub_1A5240B74();
            v61(0, v64);

            __swift_destroy_boxed_opaque_existential_0(v82);
            (*(v75 + 8))(v23, v76);

LABEL_37:
            return;
          }

          __swift_destroy_boxed_opaque_existential_0(v82);
LABEL_36:
          (*(v75 + 8))(v23, v76);
          goto LABEL_37;
        }

        while (1)
        {
          v26 = v78[0];
          MEMORY[0x1A5907D70]();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          __swift_destroy_boxed_opaque_existential_0(v82);
          v24 = v77;
          sub_1A5240C54();
          if (!v81)
          {
            break;
          }

          sub_1A3C57128(&v80, v82);
          sub_1A3C2F0BC(v82, &v80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v60 = v71;
        v59 = v74;
      }

      else
      {
        v59 = v74;
        v60 = v71;
      }

      sub_1A3C2C6B8(&v80, &qword_1EB126130, v25 + 8, MEMORY[0x1E69E6720], sub_1A3C4EDC8);
      v65 = v73;
      sub_1A524CC74();
      v66 = sub_1A524CCB4();
      (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
      v67 = swift_allocObject();
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      *(v67 + 32) = v60 & 1;
      *(v67 + 40) = v24;
      *(v67 + 48) = v59;
      v68 = v70;
      *(v67 + 56) = v70;
      sub_1A3C66EE8(v59, v68);
      sub_1A3D4D930(0, 0, v65, &unk_1A53167C8, v67);

      goto LABEL_36;
    }

    v34 = *&v82[0];
    v35 = sub_1A3C56D80();
    (*(v11 + 16))(v16, v35, v10);
    v36 = sub_1A5246F04();
    v37 = sub_1A524D244();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v76 = v11;
      v73 = v39;
      v75 = swift_slowAlloc();
      *&v82[0] = v75;
      *v38 = 136315394;
      if (v71)
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      v41 = v40;
      v72 = v10;
      v42 = v41;
      v43 = sub_1A524C674();
      v45 = v44;

      sub_1A3C2EF94(v43, v45, v82);
    }

    (*(v11 + 8))(v16, v10);
    v48 = v74;
    if (v74)
    {
      sub_1A408C0E8();
      v49 = swift_allocError();
      *v50 = 1;
      *(v50 + 8) = 1;
      v48(0, v49);
    }
  }
}

unint64_t sub_1A408AB5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A408CAB8(0);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE10addComment_7toAsset17completionHandlerySS_So7PHAssetCySSSg_s5Error_pSgtcSgtFZ_0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void, void *), uint64_t a5)
{
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v39 - v16;
  v18 = [a3 photoLibrary];
  if (v18)
  {
    v19 = v18;
    sub_1A524CC74();
    v20 = sub_1A524CCB4();
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a3;
    v21[6] = a1;
    v21[7] = a2;
    v21[8] = a4;
    v21[9] = a5;
    v22 = a3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v23 = sub_1A3C56D80();
  (*(v11 + 16))(v13, v23, v10);
  v24 = a3;
  v25 = sub_1A5246F04();
  v26 = sub_1A524D244();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v27 = 136315138;
    v28 = v24;
    v29 = [v28 description];
    v39[1] = v26;
    v30 = v29;
    v31 = sub_1A524C674();
    v41 = a4;
    v32 = v31;
    v34 = v33;

    sub_1A3C2EF94(v32, v34, &v42);
  }

  (*(v11 + 8))(v13, v10);
  if (a4)
  {
    sub_1A408C0E8();
    v35 = a4;
    v36 = swift_allocError();
    *v37 = 1;
    *(v37 + 8) = 1;
    v38 = sub_1A5240B74();
    v35(0, 0, v38);
  }
}

double _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE14removeComments_9fromAsset17completionHandlerySo17PXFastEnumeration_p_So7PHAssetCySb_s5Error_pSgtcSgtFZ_0(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v71 - v9;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v71 - v15;
  v16 = sub_1A5240C64();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a2 photoLibrary];
  if (v21)
  {
    v73 = a2;
    v75 = v21;
    v77 = v17;
    v78 = v16;
    v72 = v11;
    v74 = v10;
    v81 = a4;
    v82 = a3;
    v22 = swift_allocObject();
    v76 = v22;
    *(v22 + 16) = MEMORY[0x1E69E7CC0];
    v23 = (v22 + 16);
    swift_unknownObjectRetain();
    v24 = a1;
    sub_1A5240C74();
    sub_1A5240C54();
    v25 = MEMORY[0x1E69E7CA0];
    if (v86)
    {
      while (1)
      {
        sub_1A3C57128(&v85, v87);
        sub_1A3C2F0BC(v87, &v85);
        sub_1A3C52C70(0, &unk_1EB131200, 0x1E6978668);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v26 = v83[0];
        MEMORY[0x1A5907D70]();
        if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        __swift_destroy_boxed_opaque_existential_0(v87);
        sub_1A5240C54();
        if (!v86)
        {
          goto LABEL_7;
        }
      }

      v51 = sub_1A3C56D80();
      v52 = v72;
      v53 = v79;
      v54 = v74;
      (*(v72 + 16))(v79, v51, v74);
      sub_1A3C2F0BC(v87, &v85);
      v55 = sub_1A5246F04();
      v56 = sub_1A524D244();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v57 = 136315138;
        sub_1A3C2F0BC(&v85, v83);
        v58 = sub_1A524C714();
        v60 = v59;
        __swift_destroy_boxed_opaque_existential_0(&v85);
        sub_1A3C2EF94(v58, v60, &v84);
      }

      __swift_destroy_boxed_opaque_existential_0(&v85);
      (*(v52 + 8))(v53, v54);
      v65 = v82;
      v67 = v77;
      v66 = v78;
      if (v82)
      {
        sub_1A408C0E8();
        v68 = swift_allocError();
        *v69 = 1;
        *(v69 + 8) = 1;
        v70 = sub_1A5240B74();
        v65(0, v70);

        __swift_destroy_boxed_opaque_existential_0(v87);
        (*(v67 + 8))(v20, v66);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v87);
        (*(v67 + 8))(v20, v66);
      }
    }

    else
    {
LABEL_7:
      sub_1A3C2C6B8(&v85, &qword_1EB126130, v25 + 8, MEMORY[0x1E69E6720], sub_1A3C4EDC8);
      v27 = v80;
      sub_1A524CC74();
      v28 = sub_1A524CCB4();
      (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v31 = v75;
      v30 = v76;
      v29[4] = v75;
      v29[5] = v30;
      v32 = v73;
      v29[6] = v73;
      v34 = v81;
      v33 = v82;
      v29[7] = v24;
      v29[8] = v33;
      v29[9] = v34;
      swift_unknownObjectRetain();
      v35 = v31;

      v36 = v32;
      sub_1A3C66EE8(v33, v34);
      sub_1A3D4D930(0, 0, v27, &unk_1A5316768, v29);

      (*(v77 + 8))(v20, v78);
    }
  }

  else
  {
    v37 = a4;
    v38 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v38, v10);
    v39 = a2;
    v40 = sub_1A5246F04();
    v41 = sub_1A524D244();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v82 = a3;
      v43 = v42;
      v44 = swift_slowAlloc();
      v81 = v37;
      *&v87[0] = v44;
      *v43 = 136315138;
      v45 = v39;
      v46 = [v45 description];
      v74 = v10;
      v47 = v46;
      v48 = sub_1A524C674();
      v50 = v49;

      sub_1A3C2EF94(v48, v50, v87);
    }

    (*(v11 + 8))(v13, v10);
    if (a3)
    {
      sub_1A408C0E8();
      v62 = swift_allocError();
      *v63 = 1;
      *(v63 + 8) = 1;
      v64 = sub_1A5240B74();
      a3(0, v64);
    }
  }

  return result;
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE23markSharedAlbumAsViewedyySo17PHAssetCollectionCFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    sub_1A524CC94();
    v12 = sub_1A524CCB4();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    sub_1A3D4D930(0, 0, v8, &unk_1A5316750, v13);
  }

  else
  {
    v14 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v14, v2);
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "An invalid asset collection was passed in to markSharedAlbumAsViewed:", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A408BB20(uint64_t a1, uint64_t a2)
{
  sub_1A3D63A58(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A408BB84(uint64_t a1, uint64_t a2)
{
  sub_1A3D63A58(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A408BBE8(uint64_t a1)
{
  sub_1A3D63A58(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A408BC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for HostingViewControllerProvider(uint64_t a1)
{
  result = qword_1EB1A4428;
  if (!qword_1EB1A4428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A408BD28()
{
  result = qword_1EB131178;
  if (!qword_1EB131178)
  {
    sub_1A408BC44(255, &qword_1EB131160, sub_1A408BCA8, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131178);
  }

  return result;
}

unint64_t sub_1A408BDB4()
{
  result = qword_1EB131180;
  if (!qword_1EB131180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131180);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeGridStyle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LemonadeGridStyle(uint64_t result, int a2, int a3)
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

uint64_t sub_1A408BE58(uint64_t a1)
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

uint64_t sub_1A408BE74(uint64_t result, int a2)
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

void sub_1A408BED0(uint64_t a1)
{
  sub_1A3D63A58(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroyTm_21()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A408BFC8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4085D54(v3, v4, v5, v2);
}

void sub_1A408C05C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    *(v4 + 16) = 1;
    [v6 markAsViewed];
  }
}

unint64_t sub_1A408C0E8()
{
  result = qword_1EB131190;
  if (!qword_1EB131190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131190);
  }

  return result;
}

uint64_t sub_1A408C13C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A40848F0(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A408C208()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A40858A8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A408C2C4()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4085564(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408C370()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A4083604(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A408C45C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A40843E8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408C508()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4084098(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408C5B4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4080C28(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_1A408C664(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4083410(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408C718(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

void sub_1A408C7C4(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (v4 >> 62)
  {
    v5 = sub_1A524E2B4();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  v6 = objc_opt_self();
  v7 = objc_opt_self();
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    v9 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1A59097F0](v9, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v6 creationRequestForAssetCommentLike];
      v13 = [v12 placeholderForCreatedAssetComment];
      v14 = [v8 changeRequestForAsset_];
      [v14 addLike_];
    }

    while (v5 != v9);
  }
}

void sub_1A408C90C(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2 >> 62)
  {
LABEL_17:
    v4 = sub_1A524E2B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  for (i = 4; ; ++i)
  {
    v6 = i - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](i - 4, v2, a1);
    }

    else
    {
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(v2 + 8 * i);
    }

    v8 = v7;
    v9 = i - 3;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v10 = [v7 uuid];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = sub_1A524C674();
    v14 = v13;

    if (*(v3 + 16))
    {
      v15 = sub_1A3C5DCA4(v12, v14);
      v17 = v16;

      if (v17)
      {
        v18 = *(*(v3 + 56) + 8 * v15);
        v19 = objc_opt_self();
        v20 = v18;
        v21 = [v19 changeRequestForAsset_];
        v22 = v20;
        [v21 removeLike_];
      }
    }

    else
    {
    }

    if (v9 == v4)
    {
      return;
    }
  }

  __break(1u);
}

void sub_1A408CAB8(uint64_t a1)
{
  if (!qword_1EB131218)
  {
    sub_1A3C52C70(255, &unk_1EB131200, 0x1E6978668);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131218);
    }
  }
}

void sub_1A408CB30()
{
  if (!qword_1EB131238)
  {
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131238);
    }
  }
}

uint64_t sub_1A408CB88()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407FA5C(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A408CC38(uint64_t a1, uint64_t a2)
{
  v16 = *(v2 + 16);
  v3 = *(v2 + 24);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = objc_opt_self();
    v15 = v16;
    v8 = [v14 changeRequestForCloudSharedAlbum_];
    if (v8)
    {
      v9 = v8;
      v10 = sel_setIsPublic_;
      v11 = v3;
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = v16;
  v8 = [v6 changeRequestForCollectionShare_];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = sel_setPublicURLState_;
  if (v3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

LABEL_9:
  [v8 v10];
}

uint64_t sub_1A408CD84(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408CE38(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t sub_1A408CEE4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407E618(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A408CF94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = v3;
    v10 = [v8 changeRequestForCollectionShare_];
    if (v10)
    {
      if (v4)
      {
        v11 = 0x7FFFLL;
      }

      else
      {
        v11 = 1;
      }

      [v10 setNotificationState_];
      goto LABEL_10;
    }

LABEL_13:

    swift_beginAccess();
    *(v5 + 16) = 0;
    return;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v9 = v3;
  v15 = [v14 changeRequestForCloudSharedAlbum_];
  if (!v15)
  {
    goto LABEL_13;
  }

  [v15 setCloudNotificationsEnabled_];
LABEL_10:
}

uint64_t sub_1A408D100(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408D1B4(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t objectdestroy_176Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408D2B0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407D644(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t objectdestroy_202Tm()
{

  return swift_deallocObject();
}

void sub_1A408D3A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = v3;
    v10 = [v8 changeRequestForCollectionShare_];
    if (!v10)
    {

      swift_beginAccess();
      *(v5 + 16) = 0;
      return;
    }

    if (v4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    [v10 setPublicPermission_];
  }

  else
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = objc_opt_self();
    v17 = v3;
    v15 = [v14 changeRequestForCloudSharedAlbum_];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v9 = v15;
    [v15 setCloudMultipleContributorsEnabled_];
  }
}

uint64_t sub_1A408D510(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408D5C4(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t objectdestroy_104Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  if (*(v1 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408D6D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407B9A0(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408D784(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408D838(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

void sub_1A408D8E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    *(v3 + 16) = 1;
    sub_1A3C52C70(0, &qword_1EB1209C8, 0x1E6978AC0);
    v6 = sub_1A524CA14();
    [v5 stopSharingWithParticipants_];
  }
}

unint64_t sub_1A408D9A4()
{
  result = qword_1EB131240;
  if (!qword_1EB131240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131240);
  }

  return result;
}

uint64_t sub_1A408D9F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407A4E4(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408DAA4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A407B7B0(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408DB58(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A407B688(a1, v6, v7, v5, v4);
}

uint64_t objectdestroy_124Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));
  if (*(v1 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408DC6C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4079900(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408DD18(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t sub_1A408DDC4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_91Tm()
{

  return swift_deallocObject();
}

void sub_1A408DEC4(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A408E0E4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4079244(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A408E18C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4079790(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_313Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408E290()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4078A10(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A408E338(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A407900C(a1, v7, v8, v4, v5, v6);
}

void sub_1A408E3EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1A3C34400(255, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v4 = sub_1A524CDF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A408E464()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4078850(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A408E50C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4078744(v4, v5, v6, v2, v3);
}

uint64_t sub_1A408E5A4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A407738C(v7, v8, v9, v2, v3, v4, v5, v6);
}

void sub_1A408E660(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_self();
    v11 = v3;
    v8 = [v7 changeRequestForCollectionShare_];
    if (v8)
    {
      v9 = v8;
      swift_beginAccess();
      *(v4 + 16) = 1;
      v10 = sub_1A524C634();
      [v9 setTitle_];
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_136Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408E7C4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_141Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408E8C0(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t sub_1A408E96C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A408EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v7;
  v39 = v8;
  v37 = a1;
  v11 = sub_1A408EE40(v9, v10, v7, v8);
  v12 = *(v11 + 2);
  if (v12)
  {
    v33 = v5 + 16;
    v32 = v6 + 7;
    v35 = v5;
    v31 = v5 + 32;
    v30 = v43;
    v13 = 32;
    v34 = v11;
    do
    {
      v25 = *&v11[v13 + 16];
      v24 = *&v11[v13 + 32];
      v26 = v11[v13 + 48];
      v45 = *&v11[v13];
      v46 = v25;
      v48 = v26;
      v47 = v24;
      v27 = *(&v25 + 1);
      sub_1A408EF48(&v45, v44);
      v28 = sub_1A524C634();
      if (v27)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v41 = v47;
      v14 = v35;
      v15 = v36;
      v16 = v38;
      (*(v35 + 16))(v36, v37, v38);
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = (v32 + v17) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      v20 = v39;
      *(v19 + 16) = v16;
      *(v19 + 24) = v20;
      (*(v14 + 32))(v19 + v17, v15, v16);
      v21 = v19 + v18;
      v22 = v46;
      *v21 = v45;
      *(v21 + 16) = v22;
      *(v21 + 32) = v47;
      *(v21 + 48) = v48;
      v43[2] = sub_1A408EF80;
      v43[3] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v43[0] = sub_1A3F4ECC0;
      v43[1] = &block_descriptor_89;
      v23 = _Block_copy(aBlock);
      sub_1A408EF48(&v45, v44);

      [v40 addItemWithTitle:v28 systemImageName:0 state:v41 options:v23 handler:{v30, v31}];
      _Block_release(v23);

      sub_1A408F084(&v45);
      v13 += 56;
      --v12;
      v11 = v34;
    }

    while (v12);
  }

  return result;
}

char *sub_1A408EE40(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  (*(v9 + 16))(&v20, a3, v9);
  v10 = v20;
  v11 = (*(v9 + 24))(a3, v9);
  v12 = (*(v9 + 32))(a3, v9);
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v11;
  v16 = a2;
  v17 = v4;
  v18 = v10;
  v19 = a1;
  v13 = sub_1A408F420(sub_1A408F0B4, v15, v12);

  return v13;
}

void sub_1A408EF80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v0 + ((*(*(v1 - 8) + 64) + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(v3 + 16);
  *(v4 + 32) = *v3;
  *(v4 + 48) = v5;
  *(v4 + 64) = *(v3 + 32);
  *(v4 + 80) = *(v3 + 48);
  sub_1A408EF48(v3, v6);
  sub_1A5245BF4();
}

uint64_t sub_1A408F0B4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v36 = *(v2 + 56);
  v8 = *(v2 + 57);
  v9 = *a1;
  result = sub_1A408F39C(*a1, v6);
  v11 = result;
  if ((v7 & 1) == 0 && (result & 1) == 0)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v34 = v8;
  sub_1A524E404();

  v35[0] = 0xD000000000000022;
  v35[1] = 0x80000001A53C5C50;
  v37 = v9;
  v12 = sub_1A41B8178();
  MEMORY[0x1A5907B60](v12);

  v13 = sub_1A524C634();

  v14 = PXLocalizedString(v13);

  v15 = sub_1A524C674();
  v17 = v16;

  LOBYTE(v35[0]) = v9;
  v18 = (*(*(v4 + 8) + 40))(v35, v5);
  if ((v19 & 1) == 0)
  {
    v20 = v18;
    v21 = sub_1A524C634();
    v22 = PXLocalizedString(v21);

    sub_1A524C674();
    sub_1A3E072BC(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A52FC9F0;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v24 = sub_1A3D710E8();
    *(v23 + 64) = v24;
    *(v23 + 32) = v15;
    *(v23 + 40) = v17;
    v25 = PXLocalizedStringFromInteger(v20);
    v26 = sub_1A524C674();
    v28 = v27;

    *(v23 + 96) = MEMORY[0x1E69E6158];
    *(v23 + 104) = v24;
    *(v23 + 72) = v26;
    *(v23 + 80) = v28;
    v15 = sub_1A524C6C4();
    v17 = v29;
  }

  v30 = v34;
  if (v9 == 6)
  {
    if (v36 != 6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v35[0]) = v9;
    if (v36 == 6 || (v37 = v36, sub_1A3F5F320(), v18 = sub_1A524C594(), v30 = v34, (v18 & 1) == 0))
    {
LABEL_13:
      v31 = 0;
      if (v30)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  v31 = 1;
  if (v30)
  {
LABEL_14:
    LOBYTE(v35[0]) = v9;
    result = LemonadeCurationKind.listedSystemImageName.getter(v18, v19);
    goto LABEL_15;
  }

LABEL_12:
  result = 0;
  v32 = 0;
LABEL_15:
  v33 = 4;
  if (v11)
  {
    v33 = 0;
  }

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = result;
  *(a2 + 24) = v32;
  *(a2 + 32) = v31;
  *(a2 + 40) = v33;
  *(a2 + 48) = v9;
  return result;
}

BOOL sub_1A408F39C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_1A3F5F320();
  }

  while ((sub_1A524C594() & 1) == 0);
  return v4 != 0;
}

char *sub_1A408F420(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *v5++;
    v28 = v7;
    a1(&v20, &v28);
    if (v3)
    {
      break;
    }

    v9 = v20;
    v8 = v21;
    v11 = v22;
    v10 = v23;
    if (v21)
    {
      v18 = v24;
      v19 = v25;
      v27 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1A408F794(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      v14 = v6;
      if (v13 >= v12 >> 1)
      {
        v14 = sub_1A408F794((v12 > 1), v13 + 1, 1, v6);
      }

      *(v14 + 2) = v13 + 1;
      v6 = v14;
      v15 = &v14[56 * v13];
      *(v15 + 4) = v9;
      *(v15 + 5) = v8;
      *(v15 + 6) = v11;
      *(v15 + 7) = v10;
      *(v15 + 8) = v18;
      *(v15 + 9) = v19;
      v15[80] = v27;
    }

    else
    {
      sub_1A408F8D0(v20, 0, v22, v23);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1A408F588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1A408F5D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A408F6E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PXMenuItemOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1A408F794(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A408F914(0, &qword_1EB1312E8, &type metadata for LemonadeCurationSectionItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1A408F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void sub_1A408F914(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A408F964()
{
  v5 = *(v0 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 16);
  v3 = swift_checkMetadataState();
  return v2(&v5, v3, AssociatedConformanceWitness);
}

char *LemonadeRootTitleSubtitleView.init(tabIdentifier:)(char *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = &v2[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction];
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleWindowConstraint] = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAllowsDefaultTighteningForTruncation_];
  v8 = [v7 setAdjustsFontForContentSizeCategory_];
  *&v2[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel] = v7;
  v10 = [objc_allocWithZone(type metadata accessor for LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel(v8 v9))];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  *&v10[OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_horizontalHitAreaExpansion] = 0x4034000000000000;
  *&v10[OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_verticalHitAreaExpansion] = 0x4034000000000000;
  *&v2[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel] = v10;
  v2[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_tabIdentifier] = v5;
  v51.receiver = v2;
  v51.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v51, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = *&v11[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel];
  v13 = OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel;
  v14 = v11;
  [v14 addSubview_];
  v15 = OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel;
  [v14 addSubview_];
  v16 = *&v11[v13];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DDD58];
  v19 = *MEMORY[0x1E69DB958];
  v20 = v16;
  v21 = [v17 _preferredFontForTextStyle_weight_];
  [v20 setFont_];

  v22 = *MEMORY[0x1E69DDD80];
  v23 = *&v14[v15];
  v24 = [v17 _preferredFontForTextStyle_weight_];
  [v23 setFont_];

  v25 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
  [*&v14[v15] setShowsLargeContentViewer_];
  [*&v14[v15] addInteraction_];
  v50 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v14 action:sel_handleSubtitleLabelTapGesture];

  v26 = [v25 gestureRecognizerForExclusionRelationship];
  [v50 requireGestureRecognizerToFail_];

  [*&v14[v15] addGestureRecognizer_];
  [v14 setClipsToBounds_];

  v49 = objc_opt_self();
  sub_1A3C69A2C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A5316C10;
  v28 = v13;
  v29 = [*&v11[v13] centerYAnchor];
  v30 = [v14 centerYAnchor];

  v31 = [v29 constraintEqualToAnchor_];
  *(v27 + 32) = v31;
  v32 = [*&v11[v28] bottomAnchor];
  v33 = [*&v14[v15] topAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v27 + 40) = v34;
  v35 = [*&v14[v15] bottomAnchor];
  v36 = [v14 bottomAnchor];

  v37 = [v35 constraintLessThanOrEqualToAnchor_];
  *(v27 + 48) = v37;
  v38 = [*&v11[v28] leadingAnchor];
  v39 = [v14 leadingAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v27 + 56) = v40;
  v41 = [*&v14[v15] leadingAnchor];
  v42 = [v14 leadingAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  *(v27 + 64) = v43;
  v44 = [*&v11[v28] trailingAnchor];
  v45 = [v14 trailingAnchor];

  v46 = [v44 constraintLessThanOrEqualToAnchor_];
  *(v27 + 72) = v46;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v47 = sub_1A524CA14();

  [v49 activateConstraints_];

  return v14;
}

Swift::Void __swiftcall LemonadeRootTitleSubtitleView.didMoveToSuperview()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didMoveToSuperview);
  [v0 setNeedsUpdateConstraints];
}

Swift::Void __swiftcall LemonadeRootTitleSubtitleView.updateConstraints()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_updateConstraints);
  v1 = OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleWindowConstraint;
  v2 = *&v0[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleWindowConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = [v0 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 trailingAnchor];

    v6 = [*&v0[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel] trailingAnchor];
    v7 = [v5 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v6 multiplier:1.0];
  }

  else
  {
    v7 = 0;
  }

  v8 = *&v0[v1];
  *&v0[v1] = v7;

  v9 = *&v0[v1];
  if (v9)
  {
    [v9 setActive_];
  }
}

id sub_1A40903B4(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel];
  if (a2)
  {
    v4 = sub_1A524C634();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];

  [v2 invalidateIntrinsicContentSize];

  return [v2 setNeedsLayout];
}

void sub_1A409043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v65 = a7;
  v66 = a6;
  v68 = a1;
  sub_1A4091A20(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = OBJC_IVAR___PXLemonadeRootTitleSubtitleView_tabIdentifier;
  LOBYTE(v70) = v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_tabIdentifier];
  LOBYTE(v72[0]) = 0;
  v19 = static LemonadeRootSubtitleTabIdentifier.== infix(_:_:)(&v70, v72);
  v20 = objc_opt_self();
  v21 = &selRef_labelColor;
  if (!v19)
  {
    v21 = &selRef_secondaryLabelColor;
  }

  v22 = [v20 *v21];
  LOBYTE(v70) = v8[v18];
  LOBYTE(v72[0]) = 0;
  if ((a5 == 0) | !static LemonadeRootSubtitleTabIdentifier.== infix(_:_:)(&v70, v72))
  {
    v23 = v22;
  }

  else
  {
    v23 = a5;
  }

  v24 = v22;
  v67 = v23;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  v72[0] = 0;
  if (a4)
  {
    v25 = sub_1A524C634();
    v26 = [objc_opt_self() systemImageNamed_];

    if (v26)
    {
      v27 = [objc_opt_self() configurationWithScale_];
      v28 = [v26 imageWithSymbolConfiguration_];

      if (v28)
      {
        if (a2)
        {
          v64 = v24;
          v63 = v28;
          if (v66)
          {
            v29 = sub_1A524C634();
            v62 = PXLocalizedAttributedString(v29);

            v30 = sub_1A5241284();
            v60 = *(v30 - 8);
            v61 = v30;
            (*(v60 + 56))(v17, 1, 1, v30);
            sub_1A4091A20(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1A52FF950;
            v70 = 0;
            v71 = 0xE000000000000000;
            sub_1A524ED54();
            v33 = v70;
            v32 = v71;
            v34 = MEMORY[0x1E69E6158];
            *(inited + 56) = MEMORY[0x1E69E6158];
            v35 = sub_1A3D710E8();
            *(inited + 32) = v33;
            *(inited + 40) = v32;
            *(inited + 96) = v34;
            *(inited + 104) = v35;
            v36 = v68;
            *(inited + 64) = v35;
            *(inited + 72) = v36;
            *(inited + 80) = a2;
            v70 = 0;
            v71 = 0xE000000000000000;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v43 = sub_1A524C634();
          v62 = PXLocalizedAttributedString(v43);

          v44 = sub_1A5241284();
          v61 = *(v44 - 8);
          (*(v61 + 56))(v14, 1, 1, v44);
          sub_1A4091A20(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
          v45 = swift_initStackObject();
          *(v45 + 16) = xmmword_1A52FC9F0;
          v70 = 0;
          v71 = 0xE000000000000000;
          sub_1A524ED54();
          v46 = v70;
          v47 = v71;
          v48 = MEMORY[0x1E69E6158];
          *(v45 + 56) = MEMORY[0x1E69E6158];
          v49 = sub_1A3D710E8();
          *(v45 + 32) = v46;
          *(v45 + 40) = v47;
          *(v45 + 96) = v48;
          *(v45 + 104) = v49;
          v50 = v68;
          *(v45 + 64) = v49;
          *(v45 + 72) = v50;
          *(v45 + 80) = a2;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v42 = objc_opt_self();
        v41 = v28;
        v38 = [v42 textAttachmentWithImage_];
        sub_1A409110C(v72, v8, v67);

        type metadata accessor for Key(0);
        sub_1A3C8C10C(&unk_1EB1208B0, &unk_1A5304050);
        v39 = sub_1A524C3D4();

        v40 = [objc_opt_self() attributedStringWithAttachment:v38 attributes:v39];

        goto LABEL_14;
      }
    }
  }

  if (a2)
  {
    sub_1A4090F6C(v69, v8, v24);
    v37 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v38 = sub_1A524C634();
    type metadata accessor for Key(0);
    sub_1A3C8C10C(&unk_1EB1208B0, &unk_1A5304050);
    v39 = sub_1A524C3D4();

    v40 = [v37 initWithString:v38 attributes:v39];
    v41 = 0;
LABEL_14:

    goto LABEL_18;
  }

  v40 = 0;
  v41 = 0;
LABEL_18:
  v51 = *&v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel];
  [v51 setAttributedText_];
  if (a2)
  {
    v52 = sub_1A524C634();
  }

  else
  {
    v52 = 0;
  }

  [v51 setLargeContentTitle_];

  [v51 setLargeContentImage_];
  v53 = v66;
  if (v66)
  {
    v54 = 1;
  }

  else
  {
    v54 = [objc_opt_self() isEnabled];
  }

  [v51 setUserInteractionEnabled_];
  [v51 setLineBreakMode_];
  [v51 setNumberOfLines_];
  v55 = &v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction];
  v56 = *&v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction];
  v57 = *&v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction + 8];
  v58 = v65;
  *v55 = v53;
  v55[1] = v58;
  sub_1A3D607F0(v53, v58);
  sub_1A3C784D4(v56, v57);
  [v8 invalidateIntrinsicContentSize];
  [v8 setNeedsLayout];
}

id sub_1A4090F6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = (a1 + 16);
  sub_1A4091A20(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = *(a2 + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel);
  v9 = v7;
  result = [v8 font];
  if (result)
  {
    v11 = result;
    v12 = sub_1A3C52C70(0, &qword_1EB120610, 0x1E69DB878);
    *(inited + 40) = v11;
    v13 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v12;
    *(inited + 72) = v13;
    *(inited + 104) = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
    *(inited + 80) = a3;
    v14 = v13;
    v15 = a3;
    v16 = sub_1A3C8BCC0(inited);
    swift_setDeallocating();
    sub_1A3C8BC40(0);
    swift_arrayDestroy();
    swift_beginAccess();
    *v5 = v16;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

id sub_1A409110C(unint64_t *a1, uint64_t a2, void *a3)
{
  if (*a1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4091A20(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = *(a2 + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel);
  v9 = v7;
  result = [v8 font];
  if (result)
  {
    v11 = result;
    v12 = sub_1A3C52C70(0, &qword_1EB120610, 0x1E69DB878);
    *(inited + 40) = v11;
    v13 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v12;
    *(inited + 72) = v13;
    *(inited + 104) = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
    *(inited + 80) = a3;
    v14 = v13;
    v15 = a3;
    v16 = sub_1A3C8BCC0(inited);
    swift_setDeallocating();
    sub_1A3C8BC40(0);
    swift_arrayDestroy();
    swift_beginAccess();
    *a1 = v16;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A40912AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1A3C57128(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1A3C35B00(v13);
}

id sub_1A4091560(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id LemonadeRootTitleSubtitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LemonadeRootTitleSubtitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4091700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  sub_1A3EBECA4(a1, v18);
  if (!v19)
  {
    sub_1A3C35B00(v18);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v16 == 0x6567616D69 && v17 == 0xE500000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    v9 = [objc_opt_self() textAttachmentWithImage_];
    [v6 addAttribute:*MEMORY[0x1E69DB5F8] value:v9 range:{a2, a3}];
    [v6 addAttribute:*MEMORY[0x1E69DB650] value:v8 range:{a2, a3}];

    return;
  }

  if (v16 == 0x6E6F7276656863 && v17 == 0xE700000000000000)
  {
  }

  else
  {
    v10 = sub_1A524EAB4();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  v11 = sub_1A524C634();
  v12 = [objc_opt_self() systemImageNamed_];

  if (v12)
  {
    v13 = [objc_opt_self() configurationWithScale_];
    v14 = [v12 imageWithSymbolConfiguration_];

    if (v14)
    {
      v15 = [objc_opt_self() textAttachmentWithImage_];
      [v6 addAttribute:*MEMORY[0x1E69DB5F8] value:v15 range:{a2, a3}];
    }
  }
}