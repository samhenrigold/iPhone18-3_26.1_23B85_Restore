void sub_5D6DC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = [v3 results];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 firstItem];

  if (!v6)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v3 = 0;
  }

LABEL_11:
  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem);
  *(v1 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem) = v3;
  v7 = v3;
  sub_5E978(v8);
}

void *sub_5D7EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
  v2 = v1;
  return v1;
}

void sub_5D820()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_musicVideoViewModel);
  v2 = type metadata accessor for JSMusicVideoViewModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication28JSMusicVideoViewModelRequest_musicVideoViewModel] = v1;
  v66.receiver = v3;
  v66.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v66, "init");
  v6 = objc_opt_self();
  v63 = v5;
  v7 = [v6 kindWithVariants:3];
  [v63 setItemKind:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v61 = inited;
  v62 = inited + 32;
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF8810;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  *(v12 + 48) = sub_AB92A0();
  *(v12 + 56) = v14;
  *(v12 + 64) = sub_AB92A0();
  *(v12 + 72) = v15;
  *(v12 + 80) = sub_AB92A0();
  *(v12 + 88) = v16;
  *(v12 + 96) = sub_AB92A0();
  *(v12 + 104) = v17;
  *(v12 + 112) = sub_AB92A0();
  *(v12 + 120) = v18;
  *(v12 + 128) = sub_AB92A0();
  *(v12 + 136) = v19;
  *(v12 + 144) = sub_AB92A0();
  *(v12 + 152) = v20;
  *(v12 + 160) = sub_AB92A0();
  *(v12 + 168) = v21;
  *(v12 + 176) = sub_AB92A0();
  *(v12 + 184) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_AF8820;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_AF4EC0;
  *(v25 + 32) = sub_AB92A0();
  *(v25 + 40) = v26;
  isa = sub_AB9740().super.isa;
  v28 = objc_opt_self();
  v29 = [v28 propertySetWithProperties:isa];

  *(v23 + 48) = v29;
  *(v23 + 56) = sub_AB92A0();
  *(v23 + 64) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_AF4EC0;
  *(v31 + 32) = sub_AB92A0();
  *(v31 + 40) = v32;
  v33 = sub_AB9740().super.isa;
  v34 = [v28 propertySetWithProperties:v33];

  *(v23 + 72) = v34;
  *(v23 + 80) = sub_AB92A0();
  *(v23 + 88) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF4EC0;
  *(v36 + 32) = sub_AB92A0();
  *(v36 + 40) = v37;
  v38 = sub_AB9740().super.isa;
  v39 = [v28 propertySetWithProperties:v38];

  *(v23 + 96) = v39;
  sub_96EA4(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(MPPropertySet);
  v41 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v42 = sub_AB8FD0().super.isa;

  v43 = [v40 initWithProperties:v41 relationships:v42];

  v44 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v45 = sub_10F414(v44);
  v46 = [v43 propertySetByCombiningWithPropertySet:v45];

  v47 = sub_10F414(v44);
  v48 = [v46 propertySetByCombiningWithPropertySet:v47];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v51 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v52 = [v50 propertySetByCombiningWithPropertySet:v51];

  v53 = [v48 propertySetByCombiningWithPropertySet:v52];
  *(v61 + 48) = v53;
  sub_96EA4(v61);
  swift_setDeallocating();
  sub_12E1C(v62, &unk_DE8E80, &unk_AF87C0);
  v54 = objc_allocWithZone(MPPropertySet);
  v55 = sub_AB9740().super.isa;

  v56 = sub_AB8FD0().super.isa;

  v57 = [v54 initWithProperties:v55 relationships:v56];

  [v63 setItemProperties:v57];
  v58 = swift_allocObject();
  *(v58 + 16) = v64;
  aBlock[4] = sub_5F1BC;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_7;
  v59 = _Block_copy(aBlock);
  v60 = v64;

  [v63 performWithResponseHandler:v59];
  _Block_release(v59);
}

double sub_5DF94(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_5F254, v5);

  return result;
}

void sub_5E064(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
    v6 = a2;
    v7 = v5;
    sub_417214(a2);
    sub_5D6DC(v5);
  }
}

void sub_5E0F0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7F40, &qword_AF7998);
  __chkstk_darwin();
  v6 = &v53 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v53 - v8;
  v10 = *&v3[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem];
  if (!v10)
  {
    return;
  }

  v11 = [v10 song];
  if (!v11)
  {
    return;
  }

  v58 = v11;
  v12 = [v11 relativeModelObjectForStoreLibraryPersonalization];
  if (!v12)
  {
    v16 = v58;
    goto LABEL_8;
  }

  v13 = *&v3[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView];
  v57 = v12;
  if (v13)
  {
    v14 = (v13 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus);
    v15 = v14[4];
    if ((v15 & 0xFE) != 0xF8)
    {
      v17 = v14[1];
      v18 = v14[3];
      v54 = *v14;
      v55 = v18;
      v56 = v14[5];
      v19 = v14[2];
      v20 = [objc_allocWithZone(MPMutableSectionedCollection) init];
      v21 = sub_AB9260();
      [v20 appendSection:v21];

      [v20 appendItem:v57];
      v22 = v20;
      v23 = [v58 album];
      v24 = type metadata accessor for LibraryAddKeepLocalHandlingController();
      [a3 bounds];
      v77[0] = a3;
      v77[1] = v25;
      v77[2] = v26;
      v77[3] = v27;
      v77[4] = v28;
      v78 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v77, 15, v64);
      v73[0] = v64[0];
      v73[1] = v64[1];
      v74 = v65;
      v75 = v66;
      v76 = v67;
      v29 = a3;
      *&v30 = PresentationSource.init(viewController:position:)(v3, v73, v63).n128_u64[0];
      if ((v15 & 0xFE) == 0x7A)
      {
        goto LABEL_12;
      }

      v31 = v15 >> 1;
      if (v31 <= 0x7C)
      {
        if (v31 != 62)
        {
          if (v31 == 63)
          {
            goto LABEL_19;
          }

LABEL_22:
          if ((v15 & 0x80) != 0)
          {
            MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)(v56, v6);
            v47 = sub_AB8230();
            v48 = *(v47 - 8);
            if ((*(v48 + 48))(v6, 1, v47) == 1)
            {

              sub_1611C(v63);
              v49 = &qword_DE7F40;
              v50 = &qword_AF7998;
              v51 = v6;
            }

            else
            {
              MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter(v68);
              (*(v48 + 8))(v6, v47);
              if (!v71)
              {
                goto LABEL_12;
              }

              v59[0] = v68[0];
              v59[1] = v68[1];
              v59[2] = v69;
              v60 = v70;
              v61 = v71;
              v62 = v72;
              v52 = Alert.uiAlertController.getter(v69);
              PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v52, 1, 1, 0, 0);

              sub_1611C(v63);
              v49 = &unk_DE7F48;
              v50 = &unk_AF8BC0;
              v51 = v68;
            }

            sub_12E1C(v51, v49, v50);
            goto LABEL_14;
          }

          if (![v22 firstItem])
          {
LABEL_12:

LABEL_13:
            sub_1611C(v63);
LABEL_14:

            return;
          }

          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (v36)
          {
            v37 = v36;
            v38 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
            [v38 setModelObject:v37];
            [v38 setEnableState:3];
            v39 = [objc_opt_self() sharedDeviceLibraryController];
            [v39 performKeepLocalChangeRequest:v38 withRelatedModelObjects:0];

            sub_1611C(v63);
            swift_unknownObjectRelease();

            return;
          }

LABEL_36:

          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        if (![v22 firstItem])
        {
          goto LABEL_12;
        }

        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (!v42)
        {
          goto LABEL_36;
        }

        v43 = v42;
        if (([v42 libraryRemovalSupportedOptions] & 2) != 0)
        {
          sub_2BA534(v43, 0, v63);
        }

        else
        {
          sub_2BAC50(v43, 0);
        }
      }

      else
      {
        if (v31 == 125)
        {
          if ([v22 firstItem])
          {
            objc_opt_self();
            v40 = swift_dynamicCastObjCClass();
            if (!v40)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v40 = 0;
          }

          v44 = sub_AB9990();
          (*(*(v44 - 8) + 56))(v9, 1, 1, v44);
          sub_15F28(v63, v59);
          sub_AB9940();
          v45 = sub_AB9930();
          v46 = swift_allocObject();
          *(v46 + 16) = v45;
          *(v46 + 24) = &protocol witness table for MainActor;
          sub_17704(v59, v46 + 32);
          sub_DBDC8(0, 0, v9, &unk_AF79B0, v46);

          sub_1611C(v63);
          goto LABEL_39;
        }

        if (v31 != 126)
        {
          if (v31 == 127)
          {
LABEL_19:
            v32 = sub_AB9990();
            (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
            sub_15F28(v63, v59);
            v33 = swift_allocObject();
            *(v33 + 16) = 0;
            *(v33 + 24) = 0;
            *(v33 + 32) = v24;
            *(v33 + 40) = v22;
            v34 = v55;
            *(v33 + 48) = v54;
            *(v33 + 56) = v17;
            *(v33 + 64) = v19;
            *(v33 + 72) = v34;
            *(v33 + 80) = v15;
            *(v33 + 81) = v68[0];
            *(v33 + 84) = *(v68 + 3);
            *(v33 + 88) = v56;
            *(v33 + 96) = v23;
            *(v33 + 104) = 0;
            sub_17704(v59, v33 + 112);
            v35 = v23;
            sub_DC0B8(0, 0, v9, &unk_AF79C0, v33);
            sub_1611C(v63);

LABEL_39:

            return;
          }

          goto LABEL_22;
        }

        if (![v22 firstItem])
        {
          goto LABEL_12;
        }

        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (!v41)
        {
          goto LABEL_36;
        }

        sub_2B9FD0(v41, 0, v63);
      }

      sub_1611C(v63);
      swift_unknownObjectRelease();
      return;
    }
  }

  v16 = v57;
LABEL_8:
}

void sub_5E978(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem];
  if (result)
  {
    if (v3 == result)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  if ([v1 isViewLoaded])
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView];
    if (v4)
    {
      v5 = *&v1[v2];
      v6 = v4;
      if (v5)
      {
        v5 = [v5 song];
      }

      sub_27914C(v5);
    }

    sub_5EA54();
  }
}

void sub_5EA54()
{
  v1 = *(sub_AB35C0() - 8);
  __chkstk_darwin();
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView);
  if (!v5)
  {
    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem);
  if (!v6)
  {
    return;
  }

  v7 = v0;
  v8 = v2;
  v59 = v6;
  v9 = v5;
  v10 = MPModelStoreBrowseContentItem.kind.getter();
  v12 = v10;
  if (v11 != 7)
  {
    if (v11 == 255)
    {
LABEL_11:

      v18 = v59;

      return;
    }

LABEL_10:
    sub_3EB30(v10, v11);
    goto LABEL_11;
  }

  if (![v10 hasVideo])
  {
    v10 = v12;
    v11 = 7;
    goto LABEL_10;
  }

  v13 = [v12 title];
  if (v13)
  {
    v14 = v13;
    v15 = sub_AB92A0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  sub_277374(v15, v17);
  v19 = *(v7 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_musicVideoViewModel);
  v20 = OBJC_IVAR____TtC11MusicJSCore21JSMusicVideoViewModel_shouldHideArtist;
  swift_beginAccess();
  if ((*(v19 + v20) & 1) == 0)
  {
    v21 = [v12 artist];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 name];
      if (v23)
      {
        v24 = v23;
        v25 = sub_AB92A0();
        v27 = v26;

        goto LABEL_21;
      }
    }
  }

  v25 = 0;
  v27 = 0xE000000000000000;
LABEL_21:
  v28 = &v9[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artist];
  v29 = *&v9[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artist];
  v30 = *&v9[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artist + 8];
  *v28 = v25;
  v28[1] = v27;
  v31 = v29 == v25 && v30 == v27;
  if (!v31 && (sub_ABB3C0() & 1) == 0)
  {
    v32 = sub_278774();

    v33 = sub_AB9260();

    [v32 setTitle:v33 forState:0];

    [v9 setNeedsLayout];
  }

  [v12 duration];
  v35 = &v9[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_duration];
  v36 = *&v9[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_duration];
  v37 = v9[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_duration + 8];
  *v35 = v34;
  *(v35 + 8) = 0;
  if ((v37 & 1) != 0 || v36 != v34)
  {
    v38 = *&v9[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView] + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration;
    v39 = *v38;
    v40 = *(v38 + 8);
    *v38 = v34;
    *(v38 + 8) = 0;
    sub_25DB0C(v39, v40);
  }

  v41 = [v12 genre];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 name];
    if (v43)
    {
      v44 = v43;
      v45 = sub_AB92A0();
      v47 = v46;

      v48 = v47;
      v41 = v45;
      goto LABEL_35;
    }

    v41 = 0;
  }

  v48 = 0xE000000000000000;
LABEL_35:
  sub_277454(v41, v48);
  v49 = JSMusicVideoViewModel.item.getter();
  if (!v49 || (v50 = v49, v51 = (*(&stru_108.flags + (swift_isaMask & *v49)))(), v50, !v51) || (v52 = JSArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleBoundedBox), v51, !v52))
  {
    v52 = [v12 artworkCatalog];
  }

  sub_27930C(v52);

  v53 = [v12 year];
  sub_AB34F0();
  v54 = sub_45BF9C(v53);
  v56 = v55;
  (*(v1 + 8))(v4, v8);
  if (v56)
  {
    v57 = v54;
  }

  else
  {
    v57 = 0;
  }

  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  sub_277460(v57, v58);
  sub_3EB30(v12, 7);
}

void sub_5EF70()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem);
}

id sub_5EFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMusicVideoDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5F074()
{
  swift_unknownObjectRelease();
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

uint64_t sub_5F0F0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5F184()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5F1DC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_5F214()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall JSSettingsContainerViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0, &qword_AF8BD0);
  __chkstk_darwin();
  v56 = &v45 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA628, &qword_AF8BD8);
  v46 = *(v47 - 8);
  __chkstk_darwin();
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA630, &qword_AF8BE0);
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin();
  v45 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA638, &qword_AF8BE8);
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin();
  v50 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA640, &qword_AF8BF0);
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin();
  v53 = &v45 - v11;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  *&v12 = __chkstk_darwin().n128_u64[0];
  v59.receiver = v0;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "viewDidLoad", v12);
  sub_AB91E0();
  sub_AB3550();
  v13 = sub_AB9320();
  v15 = v14;
  v16 = objc_allocWithZone(type metadata accessor for JSSettingsComponentController(0));
  v17 = JSSettingsComponentController.init(title:)(v13, v15);
  v18 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v19 = *&v1[v18];
  if (v19)
  {
    v20 = *&stru_1F8.segname[(swift_isaMask & *v19) + 8];
    v21 = v19;
    v20(0, 0);

    v22 = *&v1[v18];
  }

  else
  {
    v22 = 0;
  }

  *&v1[v18] = v17;
  v23 = v17;

  sub_66F8C();
  v24 = [v1 navigationItem];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v58 = ObjectType;
  v57[0] = v1;
  v25 = v1;
  v26 = sub_AB9260();

  v27 = v58;
  if (v58)
  {
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v28 = *(v27 - 8);
    v29 = __chkstk_darwin();
    v31 = &v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v31, v29);
    v32 = sub_ABB3A0();
    (*(v28 + 8))(v31, v27);
    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v26 style:2 target:v32 action:"handleDoneButtonTapped"];

  swift_unknownObjectRelease();
  [v24 setRightBarButtonItem:v33];

  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  ApplicationCapabilities.Controller.$capabilities.getter();

  swift_getKeyPath();
  sub_36A00(&qword_DEA648, &qword_DEA628, &qword_AF8BD8, &protocol conformance descriptor for Published<A>.Publisher);
  v34 = v45;
  v35 = v47;
  sub_AB5560();
  (*(v46 + 8))(v5, v35);

  sub_36A00(&qword_DEA650, &qword_DEA630, &qword_AF8BE0, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  sub_36A00(&qword_DEA658, &unk_DFC570, &qword_B07BA0, &protocol conformance descriptor for Set<A>);
  v36 = v49;
  v37 = v50;
  sub_AB55B0();
  (*(v48 + 8))(v34, v36);
  sub_60044();
  v38 = sub_ABA150();
  v57[0] = v38;
  v39 = sub_ABA130();
  v40 = v56;
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  sub_36A00(&qword_DEA660, &qword_DEA638, &qword_AF8BE8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_60090();
  v42 = v52;
  v41 = v53;
  sub_AB5590();
  sub_12E1C(v40, &unk_DFA9F0, &qword_AF8BD0);
  (*(v51 + 8))(v37, v42);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_36A00(&qword_DEA670, &qword_DEA640, &qword_AF8BF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v43 = v55;
  v44 = sub_AB55C0();
  (*(v54 + 8))(v41, v43);

  *&v25[OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription] = v44;
}

void sub_5FB8C(uint64_t *a1, uint64_t a2)
{
  if ((sub_472A84(8, *a1) & 1) == 0)
  {
    if (qword_DE6748 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_DEA610);

    sub_480B4();

    v3 = sub_AB4BA0();
    v4 = sub_AB9F50();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v5 + 4) = Strong;
      *v6 = Strong;
      _os_log_impl(&dword_0, v3, v4, "Restriction for account modification was detected. Dismissing %{public}@.", v5, 0xCu);
      sub_12E1C(v6, &qword_DF9B20, &unk_AF8C60);
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 presentingViewController];

      if (v10)
      {
        [v10 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

id Gliss.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JSSettingsContainerViewController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id JSSettingsContainerViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

uint64_t sub_5FFE0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DEA610);
  __swift_project_value_buffer(v0, qword_DEA610);
  return static Logger.music(_:)(0xD000000000000011, 0x8000000000B4B050);
}

unint64_t sub_60044()
{
  result = qword_DE8ED0;
  if (!qword_DE8ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE8ED0);
  }

  return result;
}

unint64_t sub_60090()
{
  result = qword_DEA668;
  if (!qword_DEA668)
  {
    sub_60044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEA668);
  }

  return result;
}

uint64_t sub_600E8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for JSSettingsContainerViewController(uint64_t a1)
{
  result = qword_DEA6A8;
  if (!qword_DEA6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *JSDrivenViewController.componentController.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSDrivenViewController.componentController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *&stru_1F8.segname[(swift_isaMask & *v4) + 8];
    v6 = v4;
    v5(0, 0);

    v7 = *(v1 + v3);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + v3) = a1;
  v8 = a1;

  sub_66F8C();
}

void (*JSDrivenViewController.componentController.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_603B4;
}

void sub_603B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v6);
  if (a2)
  {
    if (v7)
    {
      v8 = *&stru_1F8.segname[(swift_isaMask & *v7) + 8];
      v9 = v3;
      v10 = v7;
      v8(0, 0);

      v7 = *(v5 + v6);
      v5 = v2[4];
      v6 = v2[5];
    }

    else
    {
      v9 = v3;
    }

    *(v5 + v6) = v3;
    v14 = v9;

    sub_66F8C();
    v13 = *v4;
  }

  else
  {
    if (v7)
    {
      v11 = *&stru_1F8.segname[(swift_isaMask & *v7) + 8];
      v12 = v7;
      v11(0, 0);

      v7 = *(v5 + v6);
      v5 = v2[4];
      v6 = v2[5];
    }

    *(v5 + v6) = v3;
    v13 = v3;

    sub_66F8C();
  }

  free(v2);
}

void sub_60578(_BYTE *a1, uint64_t *a2, void *a3, void (*a4)(void))
{
  v7 = v4;
  v9 = *a2;
  swift_beginAccess();
  if (a1[v9] == 1)
  {
    v10 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue;
    swift_beginAccess();
    v11 = *(v7 + v10);
    v12 = *(v11 + 16);
    if (v12)
    {
      v26 = a3;
      v27 = a4;
      sub_67418();

      v13 = 32;
      do
      {
        v16 = *(v11 + v13);
        if (sub_AB38D0())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_6D5F0(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v15 = _swiftEmptyArrayStorage[2];
          v14 = _swiftEmptyArrayStorage[3];
          if (v15 >= v14 >> 1)
          {
            sub_6D5F0((v14 > 1), v15 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v15 + 1;
          *(&_swiftEmptyArrayStorage[4] + v15) = v16;
        }

        ++v13;
        --v12;
      }

      while (v12);

      a4 = v27;
      a3 = v26;
    }

    *(v7 + v10) = _swiftEmptyArrayStorage;

    *(v7 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_hasInvokedDidLoadPreemptively) = 1;
  }

  v17 = *a3;
  swift_beginAccess();
  v18 = *&a1[v17];
  if (v18)
  {
    v19 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v20 = *(v7 + v19);
    if (v20)
    {
      v21 = *&stru_1F8.segname[(swift_isaMask & *v20) + 8];
      v22 = v18;
      v23 = v20;
      v21(0, 0);

      v20 = *(v7 + v19);
    }

    else
    {
      v22 = v18;
    }

    *(v7 + v19) = v18;
    v25 = v22;

    sub_66F8C();
  }

  else
  {
    v24 = a1;
    a4(a1);
  }
}

uint64_t JSDrivenViewController.forceShowingLargeFixedTitleHeader.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader;
  swift_beginAccess();
  return *(v0 + v1);
}

double JSDrivenViewController.forceShowingLargeFixedTitleHeader.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0();
}

double (*JSDrivenViewController.forceShowingLargeFixedTitleHeader.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_60920;
}

double sub_60920(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0();
  }

  return result;
}

uint64_t JSDrivenViewController.canShowOfflineMessage.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSDrivenViewController.canShowOfflineMessage.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_61E28(2);
  }
}

void (*JSDrivenViewController.canShowOfflineMessage.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_60A94;
}

void sub_60A94(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (v5 != v6)
  {
    sub_61E28(2);
  }

  free(v2);
}

uint64_t JSDrivenViewController.prefersCancelButton.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSDrivenViewController.prefersCancelButton.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_65DA0();
  }
}

void (*JSDrivenViewController.prefersCancelButton.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_60C28;
}

void sub_60C28(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_65DA0();
  }

  free(v1);
}

void *JSDrivenViewController.pageHeaderContentViewController.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSDrivenViewController.pageHeaderContentViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *JSDrivenViewController.promotionalParallaxViewController.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSDrivenViewController.promotionalParallaxViewController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + v3);
  if (v6)
  {
    type metadata accessor for JSLoadingViewController(0);
    v7 = swift_dynamicCastClass() == 0;
    v8 = v6[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay];
    v6[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay] = v7;
    if ((v7 ^ v8))
    {
      v9 = v6;
      sub_3740E4();
      sub_373738();
    }
  }
}

uint64_t (*JSDrivenViewController.promotionalParallaxViewController.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_60F1C;
}

void sub_60F1C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      type metadata accessor for JSLoadingViewController(0);
      v5 = swift_dynamicCastClass() == 0;
      v6 = v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay];
      v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay] = v5;
      if (v5 != v6)
      {
        v7 = v4;
        sub_3740E4();
        sub_373738();
      }
    }
  }

  free(v3);
}

double JSDrivenViewController.componentController(_:didUpdateViewModelKind:)(void *a1, unint64_t a2)
{
  sub_620B4(a2, a1);

  return _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0();
}

uint64_t JSDrivenViewController.prepareInitialContent(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController) != 1)
  {
    return a1();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_6C468(0, v7[2] + 1, 1, v7, &qword_DEAB08, &unk_AF9250, &qword_E07D90, &qword_AF9030);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_6C468((v9 > 1), v10 + 1, 1, v7, &qword_DEAB08, &unk_AF9250, &qword_E07D90, &qword_AF9030);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_70638;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

void sub_61244(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(v4 + *a2);
  if (v9)
  {
    v10 = &v9[*a3];
    swift_beginAccess();
    *(v10 + 1) = 0;
    swift_unknownObjectWeakAssign();
    v9 = *(v4 + v8);
  }

  *(v4 + v8) = a1;

  v11 = *(v4 + v8);
  if (v11)
  {
    v12 = v11 + *a3;
    swift_beginAccess();
    *(v12 + 8) = a4;
    swift_unknownObjectWeakAssign();
  }
}

void sub_612FC(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v6 = v4, ObjectType = swift_getObjectType(), v8 = *(v6 + 8), v9 = v3, LOBYTE(v6) = v8(ObjectType, v6), v9, (v6 & 1) == 0))
  {
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_hasInvokedDidLoadPreemptively) != 1 || a1 != 128)
    {
      v10 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue;
      swift_beginAccess();
      v11 = *(v1 + v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v10) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_6A914(0, *(v11 + 2) + 1, 1, v11, &qword_DEAAF8, qword_AF91B0);
        *(v1 + v10) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_6A914((v13 > 1), v14 + 1, 1, v11, &qword_DEAAF8, qword_AF91B0);
      }

      *(v11 + 2) = v14 + 1;
      v11[v14 + 32] = a1;
      *(v1 + v10) = v11;
      swift_endAccess();
      sub_614A0();
    }
  }
}

double sub_614A0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue;
    swift_beginAccess();
    v5 = *(v0 + v4);
    *(v0 + v4) = _swiftEmptyArrayStorage;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 32);
      v8 = v3;
      do
      {
        v10 = *v7++;
        v9 = v10;
        v11 = v10 >> 5;
        if (v10 >> 5 <= 1)
        {
          if (v11)
          {
            (*(&stru_1F8.flags + (swift_isaMask & *v8)))(v9 & 1);
          }

          else
          {
            (*(&stru_1F8.reloff + (swift_isaMask & *v8)))(v9 & 1);
          }
        }

        else if (v11 == 2)
        {
          (*(&stru_1F8.reserved2 + (swift_isaMask & *v8)))(v9 & 1);
        }

        else if (v11 == 3)
        {
          (*&stru_248.sectname[swift_isaMask & *v8])(v9 & 1);
        }

        else if (v9 == 128)
        {
          (*(&stru_1F8.offset + (swift_isaMask & *v8)))();
        }

        else
        {
          (*&stru_248.segname[(swift_isaMask & *v8) - 8])();
        }

        --v6;
      }

      while (v6);
    }
  }

  return result;
}

void sub_6164C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController;
  [v0 addChildViewController:*&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController]];
  v3 = *&v0[v2];
  v4 = [v1 viewBackgroundColor];
  [v3 setViewBackgroundColor:v4];

  v5 = *&v1[v2];
  type metadata accessor for JSVerticalStackViewController(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v9 = *&v1[v8];
    if (v9)
    {
      v10 = *&stru_B8.segname[(swift_isaMask & *v9) + 8];
      v11 = v5;
      v12 = v9;
      v13 = v10();

      LOBYTE(v12) = (*&stru_298.segname[(swift_isaMask & *v13) + 8])();
      if (v12 > 1u)
      {
      }

      else
      {
        v14 = sub_ABB3C0();

        if ((v14 & 1) == 0)
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      if (qword_DE6CA8 != -1)
      {
        swift_once();
      }

      v15 = qword_E718E8;
      v16 = *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor);
      *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor) = qword_E718E8;
      v17 = v15;
      sub_A335C(v16);

      sub_A3008(0);
      goto LABEL_10;
    }
  }

LABEL_11:
  if ([v1 isViewLoaded])
  {
    v18 = [*&v1[v2] view];
    if (v18)
    {
      v19 = v18;
      v20 = [v1 view];
      if (v20)
      {
        v21 = v20;
        [v20 bounds];
        [v19 setFrame:?];

        v22 = [v1 view];
        if (v22)
        {
          v23 = v22;
          [v22 addSubview:v19];

          goto LABEL_16;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_16:
  [*&v1[v2] didMoveToParentViewController:v1];
  v24 = *&v1[v2];
  v25 = [v1 title];
  [v24 setTitle:v25];

  sub_65DA0();
  sub_655C4();
  sub_658CC();
  if (v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] == 128)
  {
    v26 = 0x80;
  }

  else
  {
    v26 = -127;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] >= 0)
  {
    v27 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  }

  else
  {
    v27 = v26;
  }

  v28 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = v27;
  v29 = *&v1[v2];
  sub_69014(v28, v27, v30, v31);

  sub_61E28(2);
  v32 = *&v1[v2];
  [v32 preferredContentSize];
  [v1 setPreferredContentSize:?];

  [v1 setNeedsStatusBarAppearanceUpdate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v34 = [*&v1[v2] navigationItem];
  KeyPath = swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB00, qword_AF9200);
  *(inited + 56) = v36;
  *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 32) = v34;
  *(inited + 40) = KeyPath;
  v37 = [*&v1[v2] navigationItem];
  v38 = swift_getKeyPath();
  *(inited + 96) = v36;
  *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 72) = v37;
  *(inited + 80) = v38;
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v40 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_70CD0, v39);

  *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentNavigationItemBinding] = v40;
}

id sub_61BA0(void *a1)
{
  v2 = v1;
  [a1 willMoveToParentViewController:0];
  if ([a1 isViewLoaded])
  {
    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    [result removeFromSuperview];
  }

  type metadata accessor for JSVerticalStackViewController(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
    if (v7)
    {
      v8 = v7;
      v9 = a1;
      v10 = v8;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }

    else
    {
      v11 = a1;
    }

    v12 = a1;
    sub_4D4068(_swiftEmptyArrayStorage, 0);
  }

  v13 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState;
  v14 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState);
  if (!(v14 >> 6))
  {
    [a1 endAppearanceTransition];
LABEL_16:
    [a1 beginAppearanceTransition:0 animated:0];
    goto LABEL_17;
  }

  if (v14 >> 6 != 1)
  {
    if (v14 == 128)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  [a1 endAppearanceTransition];
LABEL_18:
  *(v2 + v13) = 0x80;
  v15 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = v16;
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 16);
    v21 = v15;
    v20(0, ObjectType, v18);
    (*(v18 + 40))(0, ObjectType, v18);
  }

  return [a1 removeFromParentViewController];
}

id sub_61E28(char a1)
{
  v2 = v1;
  result = [v2 isViewLoaded];
  if (!result)
  {
    return result;
  }

  if (a1 == 2)
  {
    static ApplicationCapabilities.shared.getter(v21);
    sub_70C54(v21);
    if (v21[1])
    {
LABEL_9:
      v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView);
      *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView) = 0;
      if (v9)
      {
        [v9 removeFromSuperview];
      }

      result = 0;
      v10 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage);
      *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage) = 0;
      if (v10)
      {
        return (*(&stru_388.flags + (swift_isaMask & *v2)))(result);
      }

      return result;
    }
  }

  else if (a1)
  {
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
  swift_beginAccess();
  if (*(v2 + v5) != 1)
  {
    goto LABEL_9;
  }

  v6 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView;
  v7 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView);
  }

  else
  {
    v8 = sub_693F8(v2);
    v7 = 0;
  }

  v11 = v7;
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v12 = result;
  [result addSubview:v8];

  result = [v2 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = result;
  [result bringSubviewToFront:v8];

  result = [v2 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v14 = result;
  [result bounds];
  [v8 setFrame:?];

  v15 = *(v2 + v6);
  *(v2 + v6) = v8;
  if (!v15)
  {
    v19 = v8;
    v17 = 0;
    goto LABEL_22;
  }

  sub_13C80(0, &qword_DF12A0, UIView_ptr);
  v16 = v8;
  v17 = v15;
  v18 = sub_ABA790();

  if ((v18 & 1) == 0)
  {
LABEL_22:
    [v17 removeFromSuperview];
    v16 = v8;
  }

  v20 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage);
  result = &dword_0 + 1;
  *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage) = 1;
  if ((v20 & 1) == 0)
  {
    return (*(&stru_388.flags + (swift_isaMask & *v2)))(result);
  }

  return result;
}

double sub_620B4(unint64_t a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v7 = &v94 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision) = v9;
  v10 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = v11;
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x17uLL:
      case 0x18uLL:
      case 0x1BuLL:
      case 0x1EuLL:
      case 0x1FuLL:
      case 0x20uLL:
      case 0x21uLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x26uLL:
      case 0x27uLL:
      case 0x29uLL:
      case 0x2BuLL:
        goto LABEL_41;
      case 6uLL:
        v36 = objc_allocWithZone(type metadata accessor for JSVerticalStackViewModelViewController(0));
        *&v36[OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_lastSeenScrollableHeight] = 0;
        *&v36[OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack] = a1 & 0xFFFFFFFFFFFFFF9;
        v94 = ((swift_isaMask & *(a1 & 0xFFFFFFFFFFFFFF9)) + 256);
        v95 = v9;
        v37 = *v94;
        sub_70E5C(a1);
        v38 = (a1 & 0xFFFFFFFFFFFFFF9);
        v39 = v37();
        v35 = sub_9F704(v39);
        v94 = *(&stru_B8.reloff + (swift_isaMask & *v38));
        v40 = v35;
        (v94)(v35, &off_D0CED8);
        v9 = v95;

        goto LABEL_19;
      case 7uLL:
        v44 = type metadata accessor for JSMenuViewController(0);
        v45 = objc_allocWithZone(v44);
        *&v45[qword_DE9D50] = 0;
        *&v45[qword_DE9D58] = 0;
        v45[qword_DE9D60] = 0;
        *&v45[qword_DE9D70] = 0;
        v46 = qword_DE9D78;
        v47 = sub_AB3820();
        (*(*(v47 - 8) + 56))(&v45[v46], 1, 1, v47);
        *&v45[qword_DE9D80] = 0;
        *&v45[qword_DE9D68] = a1 & 0xFFFFFFFFFFFFFF9;
        sub_70E5C(a1);
        v112.receiver = v45;
        v112.super_class = v44;
        v48 = (a1 & 0xFFFFFFFFFFFFFF9);
        v32 = objc_msgSendSuper2(&v112, "init");
        goto LABEL_25;
      case 8uLL:
        v41 = objc_allocWithZone(type metadata accessor for JSSettingsViewController());
        sub_70E5C(a1);
        v32 = sub_3F346C((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 9uLL:
        v42 = objc_allocWithZone(type metadata accessor for JSMessageViewController(0));
        *&v42[OBJC_IVAR____TtC16MusicApplication23JSMessageViewController____lazy_storage___noContentView] = 0;
        *&v42[OBJC_IVAR____TtC16MusicApplication23JSMessageViewController_messageViewModel] = a1 & 0xFFFFFFFFFFFFFF9;
        sub_70E5C(a1);
        v43 = (a1 & 0xFFFFFFFFFFFFFF9);
        v32 = sub_9F704(_swiftEmptyArrayStorage);
        goto LABEL_25;
      case 0xAuLL:
        v33 = objc_allocWithZone(UIViewController);
        v34 = (a1 & 0xFFFFFFFFFFFFFF9);
        v35 = [v33 init];
        *(v15 + 16) = v35;
        goto LABEL_27;
      case 0x19uLL:
        v60 = objc_allocWithZone(type metadata accessor for JSSocialProfileVerticalStackViewController(0));
        sub_70E5C(a1);
        v32 = sub_1960D0((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 0x1AuLL:
        v50 = objc_allocWithZone(type metadata accessor for JSSocialOnboardingVerticalStackViewController());
        sub_70E5C(a1);
        v32 = sub_1799F0((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 0x1CuLL:
        v49 = objc_allocWithZone(type metadata accessor for JSSocialProfileCollectionViewController(0));
        sub_70E5C(a1);
        v32 = sub_1AFD88((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 0x1DuLL:
        v61 = objc_allocWithZone(type metadata accessor for JSSocialProfileEditorViewController());
        sub_70E5C(a1);
        v32 = sub_4E1E34((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 0x28uLL:
        objc_allocWithZone(_s14ViewControllerCMa());
        sub_70E5C(a1);
        v62 = (a1 & 0xFFFFFFFFFFFFFF9);
        v32 = sub_2882EC(a1 & 0xFFFFFFFFFFFFFF9);
        goto LABEL_25;
      case 0x2AuLL:
        v51 = type metadata accessor for JSUserNotificationAuthorizationViewController();
        v52 = objc_allocWithZone(v51);
        *&v52[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_engagementViewController] = 0;
        *&v52[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_userNotificationAuthorizationViewModel] = a1 & 0xFFFFFFFFFFFFFF9;
        sub_70E5C(a1);
        v113.receiver = v52;
        v113.super_class = v51;
        v53 = (a1 & 0xFFFFFFFFFFFFFF9);
        v54 = objc_msgSendSuper2(&v113, "initWithNibName:bundle:", 0, 0);
        v55 = objc_opt_self();
        v35 = v54;
        v56 = [v55 engagementRequestForFullSheet];
        v57 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v120 = sub_14F30;
        v121 = v57;
        aBlock = _NSConcreteStackBlock;
        v117 = 1107296256;
        v118 = sub_151E0;
        v119 = &block_descriptor_140;
        v58 = _Block_copy(&aBlock);

        [v56 addFinishBlock:v58];
        _Block_release(v58);

LABEL_19:
        v59 = *(v15 + 16);
        *(v15 + 16) = v35;
        goto LABEL_26;
      case 0x2CuLL:
        v63 = objc_allocWithZone(type metadata accessor for JSWhatsNewViewController(0));
        sub_70E5C(a1);
        v32 = sub_3ACE9C((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      default:
        if ((*(a1 + OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind) & 0xFE) == 2)
        {
          v16 = type metadata accessor for JSContainerDetailModelRequest();
          v17 = objc_allocWithZone(v16);
          v18 = &v17[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
          *v18 = 0;
          v18[1] = 0;
          v17[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
          swift_unknownObjectWeakInit();
          v19 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
          *&v17[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
          v17[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
          *&v17[v19] = a1;
          sub_70E5C(a1);
          sub_70E5C(a1);
          v20 = (a1 & 0xFFFFFFFFFFFFFF9);
          sub_70E5C(a1);
          v96.receiver = v17;
          v96.super_class = v16;
          v21 = a2;
          v22 = objc_msgSendSuper2(&v96, "init");
          sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
          v23 = v22;
          v24 = static MPModelAlbum.defaultMusicKind.getter();
          [v23 setSectionKind:v24];

          v25 = [objc_opt_self() kindWithVariants:3];
          [v23 setItemKind:v25];

          v26 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
          swift_beginAccess();
          v27 = *(a1 + v26);
          v28 = v27;
          sub_2D4D8(a1);
          sub_2D4D8(a1);
          v29 = JSViewModel.playActivityRecommendationData.getter();
          v95 = v30;
          sub_466A4(0, 0xF000000000000000);
          *v124 = v114;
          *&v124[3] = *(&v114 + 3);
          aBlock = v23;
          v117 = a1;
          v118 = 0;
          v119 = 0;
          v120 = a2;
          v121 = 0;
          v122 = v27;
          v123 = 0;
          v125 = v29;
          v126 = v95;
          v101 = v23;
          v102 = a1;
          v103 = 0;
          v104 = 0;
          v105 = a2;
          v106 = 0;
          v107 = v27;
          v108 = 0;
          *&v109[3] = *(&v114 + 3);
          *v109 = v114;
          v110 = v29;
          v111 = v95;
          sub_70EB0(&aBlock, &v97);
          sub_70F0C(&v101);
          v31 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
          v32 = sub_2D72DC(&aBlock);
        }

        else
        {
          v64 = type metadata accessor for JSContainerDetailModelRequest();
          v65 = objc_allocWithZone(v64);
          v66 = &v65[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
          *v66 = 0;
          v66[1] = 0;
          v65[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
          swift_unknownObjectWeakInit();
          v67 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
          *&v65[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
          v65[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
          *&v65[v67] = a1;
          sub_70E5C(a1);
          sub_70E5C(a1);
          sub_70E5C(a1);
          sub_70E5C(a1);
          sub_70E5C(a1);
          v100.receiver = v65;
          v100.super_class = v64;
          v68 = a2;
          v69 = objc_msgSendSuper2(&v100, "init");
          sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
          v70 = static MPModelPlaylistEntry.defaultMusicKind.getter();
          v71 = objc_opt_self();
          v72 = v69;
          v73 = [v71 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v70 options:0];
          [v72 setSectionKind:v73];

          [v72 setItemKind:v70];
          v74 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
          swift_beginAccess();
          v75 = *(a1 + v74);
          v76 = v75;
          sub_2D4D8(a1);
          sub_2D4D8(a1);
          v77 = JSViewModel.playActivityRecommendationData.getter();
          v95 = v78;
          sub_466A4(0, 0xF000000000000000);
          *v124 = v114;
          *&v124[3] = *(&v114 + 3);
          aBlock = v72;
          v117 = a1;
          v118 = 0;
          v119 = 0;
          v120 = a2;
          v121 = 0;
          v122 = v75;
          v123 = 0;
          v125 = v77;
          v126 = v95;
          v101 = v72;
          v102 = a1;
          v103 = 0;
          v104 = 0;
          v105 = a2;
          v106 = 0;
          v107 = v75;
          v108 = 0;
          *&v109[3] = *(&v114 + 3);
          *v109 = v114;
          v110 = v77;
          v111 = v95;
          sub_70EB0(&aBlock, &v97);
          sub_70F0C(&v101);
          v79 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController(0));
          v32 = sub_39891C(&aBlock, 0);
        }

LABEL_25:
        v35 = v32;
        v59 = *(v15 + 16);
        *(v15 + 16) = v32;
LABEL_26:

LABEL_27:
        sub_2D4D8(a1);
        if (!v35)
        {
          break;
        }

        goto LABEL_29;
    }
  }

  v80 = objc_allocWithZone(type metadata accessor for JSLoadingViewController(0));
  *&v80[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView] = 0;
  *&v80[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView] = 0;
  *&v80[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_scriptingBridgeDidFailInitializationDidChangeObserver] = 0;
  v80[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView] = 0;
  v80[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView] = 0;
  *&v80[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask] = 0;
  *&v80[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask] = 0;
  v35 = sub_9F704(_swiftEmptyArrayStorage);
  v81 = *(v15 + 16);
  *(v15 + 16) = v35;

  if (!v35)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    sub_ABAFD0();
    __break(1u);
    JUMPOUT(0x635A8);
  }

LABEL_29:
  v114 = v35;
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v82 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10, &qword_AF9260);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v97, &v101);
    v83 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
    swift_beginAccess();
    sub_15F84(v3 + v83, v7, &unk_DF1330, &qword_AF9120);
    v84 = v104;
    v85 = v105;
    __swift_mutable_project_boxed_opaque_existential_1(&v101, v104);
    v85[2](v7, v84, v85);
    __swift_destroy_boxed_opaque_existential_0(&v101);
  }

  else
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    sub_12E1C(&v97, &qword_DEAB18, &qword_AF9268);
  }

  *(v3 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController) = 1;
  v86 = *(v15 + 16);
  if (!v86 || (v115 = *(v15 + 16), v87 = v86, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB28, &qword_AFACA0), (swift_dynamicCast() & 1) == 0))
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    goto LABEL_37;
  }

  if (!*(&v98 + 1))
  {
LABEL_37:
    sub_12E1C(&v97, &qword_DEAB20, &qword_AF9270);
    sub_69678(v3, v9, v15);
    goto LABEL_38;
  }

  sub_70DF8(&v97, &v101);
  v88 = v104;
  v89 = v105;
  __swift_project_boxed_opaque_existential_1(&v101, v104);
  v90 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v15;
  v92 = v89[1];

  (v92)(sub_70E50, v91, v88, v89);

  __swift_destroy_boxed_opaque_existential_0(&v101);
LABEL_38:

  return result;
}

double _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v119 - v8;
  sub_AB31C0();
  __chkstk_darwin();
  v12 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_132;
  }

  v123 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v11;
  v126 = v9;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID) = v13;
  v14 = swift_allocObject();
  v132 = v14;
  *(v14 + 16) = 0;
  v15 = v14 + 16;
  v16 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v1 = *(v0 + v16);
  v17 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v128 = v17;
  v18 = *&v17[v5];
  v129 = v16;
  v131 = v15;
  v122 = v7;
  if (!v18)
  {
    v25 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
    *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) = 0;
    v27 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
    v28 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle);
    v29 = v1;
    LODWORD(v30) = 0;
    v2 = 0;
    goto LABEL_23;
  }

  v19 = *&stru_B8.segname[(swift_isaMask & *v18) + 8];
  v20 = v1;
  v21 = v18;
  v2 = v19();

  if ((*(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_shouldIgnorePromotionalProperties) & 1) != 0 || !v2)
  {
    v25 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
    *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) = 0;
    v27 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
    v28 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle);
    if (!v2)
    {
      LODWORD(v30) = 0;
      LOBYTE(v18) = 0;
      goto LABEL_23;
    }

    v31 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
  }

  else
  {
    v22 = (*(&stru_1F8.size + (swift_isaMask & *v2)))();
    if (v22 || (v22 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v2)))()) != 0)
    {
      v23 = v22;
      v24 = 1;
      goto LABEL_8;
    }

    v51 = (*(&stru_2E8.size + (swift_isaMask & *v2)))();
    if (v51)
    {
      v23 = v51;
      v24 = (*&stru_B8.segname[(swift_isaMask & *v51) + 16])();
LABEL_8:

      if ((v24 & 1) == 0 || v1)
      {
        v25 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
        v26 = v24 & 1;
      }

      else
      {
        type metadata accessor for PromotionalParallaxViewController();
        v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v25 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
        v26 = 1;
      }

      *v25 = v26;
      v31 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
      v28 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle);
      goto LABEL_16;
    }

    v25 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
    *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) = 0;
    v31 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
    v28 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle);
  }

LABEL_16:
  v32 = *&stru_298.segname[(swift_isaMask & *v2) + 8];
  v33 = v2;
  v34 = v32();

  if (!v34)
  {
    v27 = v31;
LABEL_20:
    LOBYTE(v18) = sub_ABB3C0();

    LODWORD(v30) = 1;
    goto LABEL_23;
  }

  v27 = v31;
  if (v34 == 1)
  {
    goto LABEL_20;
  }

  LODWORD(v30) = 1;
  LOBYTE(v18) = 1;
LABEL_23:
  *v27 = v18 & 1;
  v130 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalLayoutStyleDidChange;
  *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalLayoutStyleDidChange) = (v28 ^ v18) & 1;
  if (v1)
  {
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v13;

    sub_370294(v2, sub_710D4, v36);
  }

  v133 = v27;
  if (v30)
  {
    v37 = *(&stru_158.reloff + (swift_isaMask & *v2));
    v3 = v2;
    v38 = v37();
    v40 = v39;
    v121 = v38;
    v41 = sub_AB9260();
    [v5 setTitle:v41];

    v42 = (*(&stru_2E8.size + (swift_isaMask & *v3)))();
    if (v42)
    {
      v43 = v42;
      v124 = (*&stru_B8.segname[(swift_isaMask & *v42) + 16])();
    }

    else
    {
      v124 = 0;
    }

    v44 = [v5 traitCollection];
    v45 = UITraitCollection.isMediaPicker.getter(v44);

    if (v45)
    {
      if (*v25)
      {
        v119 = v1;
        v120 = v40;
        v46 = 0;
        goto LABEL_48;
      }

      v50 = [v5 navigationItem];
      [v50 setLargeTitleDisplayMode:1];

LABEL_35:
      sub_6989C(v5, v3, v121, v40);
      sub_64C64(0);

      goto LABEL_36;
    }

    v47 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader;
    v48 = swift_beginAccess();
    v49 = *(v5 + v47);
    v120 = v40;
    v119 = v1;
    if (v49)
    {
      v46 = 1;
      goto LABEL_48;
    }

    if ((*&stru_1A8.segname[(swift_isaMask & *v3) + 8])(v48) == 1)
    {

      v46 = 1;
LABEL_48:
      v56 = [v5 navigationItem];
      [v56 setLargeTitleDisplayMode:2];

      v57 = [v5 navigationItem];
      if (v124 & 1 | ((*v25 & 1) == 0))
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      sub_3872E8(v58);

      if (*v25 == 1 && *v133 == 1)
      {
        v59 = [v5 navigationItem];
        v60 = [v59 navigationBar];

        if (v60)
        {
          v61 = [objc_opt_self() whiteColor];
          [v60 setTintColor:v61];
        }
      }

      v62 = v30;
      if (v46)
      {
        v63 = *&v128[v5];
        v1 = v119;
        if (v63)
        {
          v64 = *&stru_108.segname[swift_isaMask & *v63];
          v65 = v63;
          v66 = v64();

          if ((~v66 & 0xF000000000000007) != 0)
          {
            v67 = [v5 navigationItem];
            v68 = v67;
            if (((v66 >> 58) & 0x3C | (v66 >> 1) & 3) == 0x1A)
            {
              [v67 setBackButtonTitle:0];
            }

            else
            {
              v70 = sub_AB9260();
              [v68 setBackButtonTitle:v70];

              v68 = v70;
            }

            sub_2D4D8(v66);
          }
        }

        v71 = [v5 navigationItem];
        [v71 setTitle:0];

        v69 = v133;
        if (v124)
        {
          v72 = [v5 traitCollection];
          v73 = [v72 horizontalSizeClass];

          sub_64C64(v73 == &dword_0 + 1);
        }
      }

      else
      {
        sub_6989C(v5, v3, v121, v120);
        v69 = v133;
        v1 = v119;
        if (!v45)
        {
LABEL_68:
          if (*v69 != 1)
          {
LABEL_71:

            LOBYTE(v30) = v62;
            goto LABEL_72;
          }

          v30 = v127;
          (*(&stru_338.reloff + (swift_isaMask & *v3)))();
          v74 = v125;
          v75 = v126;
          if ((*(v125 + 48))(v30, 1, v126) == 1)
          {
            sub_12E1C(v30, &unk_DF2AE0, &qword_AFC930);
            goto LABEL_71;
          }

          v128 = v3;
          v96 = v123;
          (*(v74 + 32))(v123, v30, v75);
          v97 = v74;
          v98 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_artistRadioStationController);
          LOBYTE(v30) = v62;
          if (v98)
          {
            v99 = v75;
            v100 = v122;
            (*(v97 + 16))(v122, v96, v99);
            (*(v97 + 56))(v100, 0, 1, v99);
            v101 = v98;
            sub_26B814(v100);
            (*(v97 + 8))(v96, v99);

            goto LABEL_72;
          }

          (*(v97 + 8))(v96, v75);

LABEL_36:

          goto LABEL_72;
        }

        if (*v133 != 1)
        {
          goto LABEL_71;
        }
      }

      sub_699D4(v5, v132, v3);
      goto LABEL_68;
    }

    v52 = sub_ABB3C0();

    v46 = v52 | v124;
    if (*v25 & 1) != 0 || ((v52 | v124))
    {
      goto LABEL_48;
    }

    v4 = v30;
    if ((*&stru_298.segname[(swift_isaMask & *v3) + 8])(v53))
    {
      v54 = [v5 navigationItem];
      v55 = sub_387998();
      v40 = v120;
      v1 = v119;
      if (v55 <= 1)
      {
        v105 = v120;
      }

      else
      {
        if (v55 != 2)
        {
          if (v55 == 3)
          {

LABEL_109:
            LOBYTE(v30) = v4;
            goto LABEL_35;
          }

          goto LABEL_106;
        }

        v105 = v120;
      }

      v106 = sub_ABB3C0();

      v40 = v105;
      if (v106)
      {
LABEL_108:

        goto LABEL_109;
      }

LABEL_106:
      if (qword_DE6B20 == -1)
      {
LABEL_107:
        v107 = qword_E01290;
        v108 = sub_AB9260();
        objc_setAssociatedObject(v54, v107, v108, &dword_0 + 1);

        [v54 _setManualScrollEdgeAppearanceEnabled:0];
        [v54 _setAutoScrollEdgeTransitionDistance:16.0];
        [v54 _setManualScrollEdgeAppearanceEnabled:1];
        goto LABEL_108;
      }

LABEL_125:
      swift_once();
      goto LABEL_107;
    }

    v102 = (*&stru_1A8.segname[(swift_isaMask & *v3) + 8])();
    v40 = v120;
    v1 = v119;
    if (v102)
    {
      if (v102 == 1)
      {
        goto LABEL_35;
      }

      v13 = v120;
      v103 = [v5 navigationItem];
      [v103 setLargeTitleDisplayMode:2];

      v0 = [v5 navigationItem];
      v104 = sub_387998();
      if (v104 <= 1)
      {
        if (!v104)
        {

LABEL_130:
          LOBYTE(v30) = v4;
          v40 = v13;
          goto LABEL_35;
        }
      }

      else if (v104 != 2 && v104 != 3)
      {
        goto LABEL_127;
      }

      v116 = sub_ABB3C0();

      if (v116)
      {
LABEL_129:

        goto LABEL_130;
      }

LABEL_127:
      if (qword_DE6B20 == -1)
      {
LABEL_128:
        v117 = qword_E01290;
        v118 = sub_AB9260();
        objc_setAssociatedObject(v0, v117, v118, &dword_0 + 1);

        [v0 _setManualScrollEdgeAppearanceEnabled:1];
        [v0 _setManualScrollEdgeAppearanceProgress:1.0];
        [v0 _setManualScrollEdgeAppearanceEnabled:0];
        [v0 _setAutoScrollEdgeTransitionDistance:0.0];
        goto LABEL_129;
      }

LABEL_132:
      swift_once();
      goto LABEL_128;
    }

    v109 = v120;
    v110 = [v5 navigationItem];
    v111 = v110;
    v112 = HIBYTE(v109) & 0xF;
    if ((v109 & 0x2000000000000000) == 0)
    {
      v112 = v121 & 0xFFFFFFFFFFFFLL;
    }

    if (v112)
    {
      v113 = 1;
    }

    else
    {
      v113 = 2;
    }

    [v110 setLargeTitleDisplayMode:{v113, v119}];

    v54 = [v5 navigationItem];
    v114 = sub_387998();
    if (v114 <= 2)
    {
      v115 = sub_ABB3C0();

      if (v115)
      {

        goto LABEL_123;
      }
    }

    else if (v114 == 3)
    {

LABEL_123:
      LOBYTE(v30) = v4;
      v40 = v109;
      goto LABEL_35;
    }

    v40 = v109;
    if (qword_DE6B20 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

LABEL_72:
  v76 = v30;
  v77 = v131;
  v78 = swift_beginAccess();
  v79 = *v77;
  v80 = (*&stru_1F8.sectname[swift_isaMask & *v5])(v78);
  v81 = v80;
  if (v79)
  {
    v82 = v130;
    if (!v80 || (type metadata accessor for PageHeaderContentViewController(), v83 = v79, v84 = sub_ABA790(), v83, v81, (v84 & 1) == 0))
    {
LABEL_84:
      if ((v76 & *v133) == 1)
      {
        v89 = (*(&stru_1F8.size + (swift_isaMask & *v2)))();
        if (v89)
        {

          goto LABEL_88;
        }

        v90 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v2)))();

        if (v90)
        {
LABEL_88:
          (*&stru_1F8.segname[(swift_isaMask & *v5) - 8])(0);
          if (v1)
          {
            v91 = v79;
            sub_37048C(v79);
          }

          goto LABEL_91;
        }
      }

      v92 = *&stru_1F8.segname[(swift_isaMask & *v5) - 8];
      v93 = v79;
      v92(v79);
LABEL_91:
      v94 = v1;
      JSDrivenViewController.promotionalParallaxViewController.setter(v1);
      sub_655C4();
      sub_658CC();
      goto LABEL_92;
    }
  }

  else
  {
    v82 = v130;
    if (v80)
    {

      goto LABEL_84;
    }
  }

  v85 = *(v5 + v129);
  if (v1)
  {
    if (!v85)
    {
      goto LABEL_84;
    }

    type metadata accessor for PromotionalParallaxViewController();
    v86 = v85;
    v87 = v1;
    v88 = sub_ABA790();

    if ((v88 & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v85)
  {
    goto LABEL_84;
  }

  if (*(v5 + v82) == 1)
  {
    goto LABEL_84;
  }

LABEL_92:
  [v5 accessibilityUpdateForHeaderItemChange];

  *(v5 + v82) = 0;

  return result;
}

void sub_64B24(char a1)
{
  v3 = [v1 contentScrollView];
  if (v3 && (v4 = v3, [v3 contentOffset], v6 = v5, v4, v6 < 0.0))
  {
    v7 = [v1 navigationItem];
    v8 = [v7 searchController];

    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear) & 1) != 0 || v9 || (a1)
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear) = 0;
    v10 = [v1 contentScrollView];
    if (v10)
    {
      v11 = v10;
      [v10 _scrollToTopIfPossible:1];
    }
  }
}

void sub_64C64(int a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = [v1 navigationItem];
  v6 = sub_38720C() & 1;

  if (v6 == v4)
  {
    v12 = 0;
LABEL_5:

    sub_64B24(v12);
    return;
  }

  v7 = [v2 contentScrollView];
  if (v7)
  {
    v8 = v7;
    [v7 contentOffset];
    v10 = v9;

    v11 = v10 < 0.0;
  }

  else
  {
    v11 = 0;
  }

  v13 = [v2 view];
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 _isInAWindow];

  v16 = [v2 navigationItem];
  if ((sub_38720C() & 1) != (a1 & 1))
  {
    if (qword_DE6B08 != -1)
    {
      swift_once();
    }

    v17 = qword_E01278;
    isa = sub_AB9890().super.super.isa;
    objc_setAssociatedObject(v16, v17, isa, &dword_0 + 3);

    v16 = isa;
  }

  if (v11 & ~a1)
  {
    if (!v15)
    {
      v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear] = 1;
      return;
    }

    v12 = 1;
    goto LABEL_5;
  }

  if (v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController] == 1)
  {
    v19 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v20 = *&v2[v19];
    if (v20)
    {
      v21 = *&stru_B8.segname[(swift_isaMask & *v20) + 8];
      v22 = v20;
      v23 = v21();

      v24 = (*(&stru_2E8.size + (swift_isaMask & *v23)))();
      if (v24)
      {
        if ((*&stru_B8.segname[(swift_isaMask & *v24) + 16])())
        {
          if (v15)
          {
            sub_64B24(1);
          }

          else
          {
            v25 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
            swift_beginAccess();
            v26 = *&v2[v25];
            if (v26)
            {
              *(v26 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset) = 1;
            }

            v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear] = 1;
          }
        }
      }
    }
  }
}

void sub_64FAC(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    v44 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView];
    *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView] = 0;

    v45 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
    v46 = *(v45 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
    *(v45 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = 0;
    sub_34549C(v46);

    v47 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
    v48 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
    v49 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle + 8];
    *v47 = 0;
    *(v47 + 1) = 0xE000000000000000;
    sub_337BF0(v48, v49);

    v50 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
    v51 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
    v52 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle + 8];
    *v50 = 0;
    *(v50 + 1) = 0xE000000000000000;
    sub_337D34(v51, v52);

    return;
  }

  v6 = *&stru_B8.segname[(swift_isaMask & *v5) + 8];
  v7 = v5;
  v8 = v6();

  v9 = (*(&stru_158.reloff + (swift_isaMask & *v8)))();
  v10 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
  v12 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle + 8];
  *v10 = v9;
  *(v10 + 1) = v13;
  sub_337BF0(v11, v12);

  v15 = (*&stru_158.segname[(swift_isaMask & *v8) - 8])(v14);
  v16 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
  v17 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle + 8];
  *v16 = v15;
  *(v16 + 1) = v19;
  sub_337D34(v17, v18);

  v21 = (*(&stru_108.size + (swift_isaMask & *v8)))(v20);
  v22 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSubtitle];
  v23 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSubtitle];
  v24 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSubtitle + 8];
  *v22 = v21;
  *(v22 + 1) = v25;
  sub_337D0C(v23, v24);

  v26 = [v2 traitCollection];
  v27 = [v26 preferredContentSizeCategory];

  v28 = sub_ABA310();
  v29 = sub_ABA330();

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = 2;
  }

  if (v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = 4;
  }

  v32 = *&v2[v4];
  if (v32)
  {
    v33 = *&stru_108.segname[swift_isaMask & *v32];
    v34 = v32;
    v35 = v33();

    if ((~v35 & 0xF000000000000007) != 0)
    {
      sub_2D4D8(v35);
      if (((v35 >> 58) & 0x3C | (v35 >> 1) & 3) == 0x1A)
      {
        v30 = 0;
        v31 = 0;
      }
    }
  }

  v36 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_lineBreakMode];
  *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_lineBreakMode] = v31;
  if (v36 != v31)
  {
    sub_345874(v31);
    if ([a1 isViewLoaded])
    {
      v37 = [a1 view];
      if (!v37)
      {
        __break(1u);
        goto LABEL_32;
      }

      v38 = v37;
      [v37 setNeedsLayout];
    }
  }

  v39 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_maximumNumberOfLinesInTitle];
  *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_maximumNumberOfLinesInTitle] = v30;
  if (v39 == v30)
  {
    goto LABEL_20;
  }

  sub_345868(v30);
  if (([a1 isViewLoaded] & 1) == 0)
  {
    goto LABEL_20;
  }

  v40 = [a1 view];
  if (!v40)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v41 = v40;
  [v40 setNeedsLayout];

LABEL_20:
  v42 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
  if (v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle])
  {
    v43 = (*(&stru_1F8.size + (swift_isaMask & *v8)))();
    if (v43 || (v43 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v8)))()) != 0)
    {

      LOBYTE(v43) = 1;
    }
  }

  else
  {
    LOBYTE(v43) = 0;
  }

  sub_337EAC(v43);
  v53 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithText;
  a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithText] = v2[v42];
  sub_337AB4();
  v54 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView;
  v55 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView];
  if (v55 && (type metadata accessor for AccountButton(), (v56 = swift_dynamicCastClass()) != 0))
  {
    *&a1[v54] = v56;
    v57 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
    v58 = *(v57 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
    *(v57 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = v56;
    v59 = v55;
    sub_34549C(v58);

    a1[v53] = 1;
    sub_337AB4();
    a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithTextForAccessibilitySizes] = 1;
    sub_337AC8();
  }

  else
  {
    *&a1[v54] = 0;
    v60 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
    v61 = *(v60 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
    *(v60 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = 0;
    sub_34549C(v61);
  }
}

void sub_655C4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    v6 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7)
    {
      v8 = *&stru_B8.segname[(swift_isaMask & *v7) + 8];
      v2;
      v9 = v7;
      v10 = v8();

      ObjectType = swift_getObjectType();
      (v5)[7](v10, ObjectType, v5);
    }

    else
    {
      v12 = v2;
    }

    v13 = swift_getObjectType();
    v14 = (*&stru_1F8.sectname[swift_isaMask & *v1])();
    v5[2](v14, v13, v5);
    type metadata accessor for JSLoadingViewController(0);
    if (swift_dynamicCastClass())
    {
      v15 = *(v1 + v6);
      if (v15)
      {
        v16 = *&stru_B8.segname[(swift_isaMask & *v15) + 8];
        v17 = v15;
        v18 = v16();

        LOBYTE(v17) = (*&stru_298.segname[(swift_isaMask & *v18) + 8])();
        if (!v17)
        {

          v19 = 0;
LABEL_16:
          (v5)[5](v19, v13, v5);

          return;
        }

        v20 = sub_ABB3C0();

        if (v20)
        {
          v19 = 0;
          goto LABEL_16;
        }
      }
    }

    v21 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
    swift_beginAccess();
    v19 = *(v1 + v21);
    v22 = v19;
    goto LABEL_16;
  }
}

void sub_658CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    swift_beginAccess();
    v5 = *(v0 + v3);
    if (!v5)
    {
      return;
    }

    v6 = &v5[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
    v7 = *&v5[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
    v8 = v5[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle + 8];
    *v6 = 0;
    v6[8] = 1;
    v9 = v5;
    sub_3734EC(v7, v8);
    goto LABEL_10;
  }

  v10 = v2;
  swift_beginAccess();
  v11 = *(v0 + v3);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v13 = *(v10 + 8);
    v14 = v1;
    v9 = v11;
    v15 = v13(ObjectType, v10);
    v16 = &v9[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
    v17 = *&v9[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
    v18 = v9[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle + 8];
    *v16 = v15;
    v16[8] = v19 & 1;
    sub_3734EC(v17, v18);

LABEL_10:
  }
}

void sub_65A3C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (v14)
  {
    v36 = v7;
    v15 = *&stru_B8.segname[(swift_isaMask & *v14) + 8];
    v16 = v14;
    v17 = v15();

    v18 = sub_4D39CC();
    if (v18)
    {
      v19 = v18;
      swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v21 = v20;
        sub_70FD4(a1, v12, type metadata accessor for Metrics.Event.Action);
        v22 = v10[7];
        v23 = v10[8];
        v24 = v10[6];
        v12[v10[5]] = 0;
        *&v12[v24] = a2;
        *&v12[v22] = 0;
        *&v12[v23] = 0;
        ObjectType = swift_getObjectType();
        v26 = a2;
        v27 = ObjectType;
        v35 = ObjectType;
        v28 = *(v21 + 8);
        v29 = v26;
        v28(v27, v21);
        v31 = v30;
        v32 = swift_getObjectType();
        v38 = 0;
        memset(v37, 0, sizeof(v37));
        sub_3B8F68(v32);
        v33 = sub_21CCAC(1, v9, v37, v32, v31);
        (*(v36 + 8))(v9, v6);
        sub_12E1C(v37, &qword_DF2BD0, &unk_AFDC00);
        swift_unknownObjectRelease();
        v34 = (*(v21 + 16))(v35, v21);
        (*&stru_428.segname[(swift_isaMask & *v17) + 16])(v12, v33, v34);
        sub_7103C(v12, type metadata accessor for Metrics.Event);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

double sub_65DA0()
{
  v1 = v0;
  v88 = 0;
  v2 = _swiftEmptyArrayStorage;
  v94 = _swiftEmptyArrayStorage;
  v95 = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_trailingBarButtonItemMap;
  v91 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_trailingBarButtonItemMap);

  v4 = sub_96C40(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = &swift_isaMask;
    v8 = *&stru_B8.segname[(swift_isaMask & *v6) + 8];
    v9 = v6;
    v10 = v8();

    v11 = (*&stru_338.segname[(swift_isaMask & *v10) - 8])();
    if (v11)
    {
      v12 = sub_D1290(v11, v91);
      if (!v12)
      {
        v20 = (*&stru_B8.segname[swift_isaMask & *v11])();
        if (!v20)
        {
          sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
          v7 = (*(&stru_68.offset + (swift_isaMask & *v11)))();
          v31 = v30;
          sub_13C80(0, &unk_E05310, UIAction_ptr);
          v32 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v33 = swift_allocObject();
          *(v33 + 16) = v32;
          *(v33 + 24) = v11;
          v34 = v11;
          v80 = 0;
          v81 = 0;
          v83 = sub_70FA8;
          v84 = v33;
          v82 = 0;
          v101.is_nil = sub_ABA7D0();
          v110.value._countAndFlagsBits = v7;
          v110.value._object = v31;
          v101.value.super.isa = 0;
          v105.value.super.super.isa = 0;
          v14 = sub_AB9FA0(v110, v101, v105, v107).super.super.isa;
          goto LABEL_15;
        }

        v21 = v20;
        sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
        v108.value._countAndFlagsBits = (*(&stru_68.offset + (swift_isaMask & *v11)))();
        v100.value.super.isa = 0;
        v100.is_nil = 0;
        v103.value.super.super.isa = 0;
        memset(v96, 0, sizeof(v96));
        v97 = 0;
        v98 = xmmword_AF7710;
        v14 = sub_AB9FA0(v108, v100, v103, v106).super.super.isa;
        PresentationSource.init(viewController:position:)(v1, v96, v92);
        v22 = JSMenu.sections.getter();
        v23 = __chkstk_darwin();
        v82 = v21;
        v83 = v92;
        v7 = v21;
        v84 = v21;
        v24 = v88;
        sub_4BF0D0(sub_70FB0, &v80, v22, v23);
        v26 = v25;
        v88 = v24;

        if (v26 >> 62)
        {
          goto LABEL_70;
        }

        sub_ABB3E0();
        sub_13C80(0, &qword_DEAB30, UIMenuElement_ptr);
        v27 = v26;
        goto LABEL_13;
      }

      v13 = *(&stru_68.offset + (swift_isaMask & *v11));
      v14 = v12;
      v13();
      v15 = sub_AB9260();

      [(objc_class *)v14 setTitle:v15];

      if ((v4 & 0xC000000000000001) != 0)
      {
        while (1)
        {
          v16 = v4 < 0 ? v4 : v4 & 0xFFFFFFFFFFFFFF8;
          v17 = v11;
          v18 = v14;
          v19 = sub_ABAFA0();
          if (!__OFADD__(v19, 1))
          {
            break;
          }

          __break(1u);
LABEL_70:
          sub_13C80(0, &qword_DEAB30, UIMenuElement_ptr);

          v27 = sub_ABAFF0();

LABEL_13:
          sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
          v109._countAndFlagsBits = 0;
          v109._object = 0xE000000000000000;
          v111.value._countAndFlagsBits = 0;
          v111.value._object = 0;
          v104.value.super.isa = 0;
          v104.is_nil = 0;
          v28.value = 0;
          isa = sub_ABA5B0(v109, v111, v104, v28, 0xFFFFFFFFFFFFFFFFLL, v27, v85).super.super.isa;

          sub_1611C(v92);
          [(objc_class *)v14 setMenu:isa];

LABEL_15:
          v2 = _swiftEmptyArrayStorage;
          if ((v4 & 0xC000000000000001) == 0)
          {
            goto LABEL_16;
          }
        }

        v4 = sub_42639C(v16, v19 + 1);
      }

      else
      {
LABEL_16:
        v35 = v11;
        v36 = v14;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92[0] = v4;
      sub_92200(v14, v11, isUniquelyReferenced_nonNull_native);

      v4 = v92[0];
      sub_AB9730();
      if (*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v95 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }
  }

  *(v1 + v3) = v4;

  v38 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController;
  v39 = &selRef__authenticateReturningError_;
  v40 = [*(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) navigationItem];
  v41 = [v40 rightBarButtonItems];
  if (v41)
  {
    v42 = v41;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v43 = sub_AB9760();

    sub_19620(v43);
  }

  else
  {
  }

  v44 = [*(v1 + v38) navigationItem];
  v45 = [v44 leftBarButtonItems];
  if (v45)
  {
    v46 = v45;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v47 = sub_AB9760();

    sub_19620(v47);
  }

  else
  {
  }

  v48 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem);
  if (v48)
  {
    v49 = v48;
    sub_AB9730();
    if (*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v95 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_67:
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  v50 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
  swift_beginAccess();
  if (*(v1 + v50) == 1 && ([v1 _isInPopoverPresentation] & 1) == 0)
  {
    v51 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem;
    v52 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem);
    if (v52)
    {
      v53 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem);
    }

    else
    {
      sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
      sub_13C80(0, &unk_E05310, UIAction_ptr);
      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v80 = 0;
      v81 = 0;
      v83 = sub_70F60;
      v84 = v54;
      v82 = 0;
      v99.value.super.super.isa = sub_ABA7D0();
      v99.is_nil = 0;
      v55.super.super.isa = sub_AB9F90(UIBarButtonSystemItemCancel, v99, v102).super.super.isa;
      v56 = *(v1 + v51);
      *(v1 + v51) = v55.super.super.isa;
      v53 = v55.super.super.isa;

      v52 = 0;
    }

    v57 = v52;
    sub_AB9730();
    if (*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v95 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  v58 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousLeftBarButtonItems;
  v59 = v94;

  v61 = sub_12C280(v60, v59);

  if ((v61 & 1) == 0)
  {
    *(v1 + v58) = v59;

    v62 = [v1 v39[190]];
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v63 = sub_AB9740().super.isa;
    [v62 setLeftBarButtonItems:v63 animated:1];
  }

  v64 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousRightBarButtonItems;
  v65 = v95;

  v67 = sub_12C280(v66, v65);

  if ((v67 & 1) == 0)
  {
    *(v1 + v64) = v65;

    v68 = [v1 v39[190]];
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v69 = sub_AB9740().super.isa;
    [v68 setRightBarButtonItems:v69 animated:1];
  }

  v70 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v71 = *(v1 + v70);
  if (v71)
  {
    v93 = v2;
    if (v65 >> 62)
    {
      v1 = sub_ABB060();
    }

    else
    {
      v1 = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
    }

    v89 = v59;
    v90 = v4;
    v72 = v71;
    v73 = v72;
    if (v1)
    {
      v39 = 0;
      v74 = _swiftEmptyArrayStorage;
      v49 = &selRef_performWithResponseHandler_;
      v87 = v72;
      do
      {
        v86 = v74;
        v75 = v39;
        while (1)
        {
          if ((v65 & 0xC000000000000001) != 0)
          {
            v76 = sub_3600B8(v75, v65);
          }

          else
          {
            if (v75 >= *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_66;
            }

            v76 = *(v65 + 8 * v75 + 32);
          }

          v77 = v76;
          v39 = (v75 + 1);
          if (__OFADD__(v75, 1))
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v78 = [v76 customView];
          if (v78)
          {
            v4 = v78;
            type metadata accessor for SymbolButton(0);
            v2 = swift_dynamicCastClass();

            v77 = v4;
            if (v2)
            {
              break;
            }
          }

          ++v75;
          if (v39 == v1)
          {
            v73 = v87;
            v74 = v86;
            goto LABEL_63;
          }
        }

        sub_AB9730();
        if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v93 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
        v74 = v93;
        v73 = v87;
      }

      while (v39 != v1);
    }

    else
    {
      v74 = _swiftEmptyArrayStorage;
    }

LABEL_63:

    *&v73[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_barSymbolButtons] = v74;
  }

  else
  {
  }

  return result;
}

id JSDrivenViewController.init()()
{
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage] = 1;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_isContentReady] = 0;
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = 0x80;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = 0x80;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_hasInvokedDidLoadPreemptively] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_presentationSegue] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pushSegue] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_networkConnectivityObserver] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_shouldIgnorePromotionalProperties] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalLayoutStyleDidChange] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID] = 1;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_artistRadioStationController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_browseContentItem] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem] = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_trailingBarButtonItemMap;
  *&v0[v2] = sub_96C40(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousLeftBarButtonItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousRightBarButtonItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentNavigationItemBinding] = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
  v4 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v5 = objc_allocWithZone(type metadata accessor for JSLoadingViewController(0));
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_scriptingBridgeDidFailInitializationDidChangeObserver] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController] = sub_9F704(_swiftEmptyArrayStorage);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for JSDrivenViewController(0);
  v6 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  sub_6164C();
  v7 = [v6 navigationItem];
  [v7 _setSupportsTwoLineLargeTitles:1];

  return v6;
}

id JSDrivenViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady + 8];

    v2(v4);
    sub_17654(v2, v3);
  }

  sub_612FC(129);
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
  sub_61BA0(v5);

  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSDrivenViewController(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_66F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v2 = &v35 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v4 = &v35 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6)
  {
    v36 = v2;
    v7 = *&stru_1F8.segname[(swift_isaMask & *v6) + 8];
    v8 = v0;
    v9 = v6;
    v37 = v0;
    v7(v0, &protocol witness table for JSDrivenViewController);
    v10 = [v8 traitCollection];
    v11 = UITraitCollection.mediaPickerConfiguration.getter();

    if (v11)
    {
      v12 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
      v13 = v11;
      v14 = JSMediaPickerEnvironment.init(configuration:)(v13);
      v15 = v4;
      v16 = v8;
      v17 = *&stru_108.segname[(swift_isaMask & *v9) - 8];
      v35 = v14;
      v18 = v17(v38);
      v8 = v16;
      v4 = v15;
      v19 = v18;
      v21 = *v20;
      *v20 = v14;

      v19(v38, 0);
    }

    v35 = (*(&stru_108.flags + (swift_isaMask & *v9)))();
    v23 = v22;
    v24 = (*&stru_158.segname[(swift_isaMask & *v9) + 16])();
    v26 = v25;
    v27 = v36;
    v28 = (*&stru_1A8.sectname[swift_isaMask & *v9])();
    v29 = (*(&stru_1A8.offset + (swift_isaMask & *v9)))(v28);
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v35, v23, v24, v26, v27, v29, 0, 0, v4);
    v30 = type metadata accessor for MetricsPageProperties(0);
    (*(*(v30 - 8) + 56))(v4, 0, 1, v30);
    v31 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
    swift_beginAccess();
    sub_160B4(v4, &v8[v31], &unk_DF1330, &qword_AF9120);
    swift_endAccess();
    v32.n128_f64[0] = _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0();
    v33 = (*&stru_108.segname[swift_isaMask & *v9])(v32);
    sub_620B4(v33, 0);
    sub_2D4D8(v33);
  }

  else
  {
    sub_620B4(0xF000000000000007, 0);
  }

  return sub_614A0();
}

unint64_t sub_67418()
{
  result = qword_DEA6C8;
  if (!qword_DEA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEA6C8);
  }

  return result;
}

uint64_t sub_6746C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController;
  result = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  if (result != a1)
  {
    result = [result isEqual:a1];
    if ((result & 1) == 0)
    {
      sub_61BA0(a1);
      sub_6164C();
      v6 = *(v2 + v4);
      v7 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
      swift_beginAccess();
      v8 = *(v2 + v7);
      if (v8)
      {
        type metadata accessor for JSLoadingViewController(0);
        v9 = swift_dynamicCastClass() == 0;
        v10 = v8[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay];
        v8[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay] = v9;
        if ((v9 ^ v10))
        {
          v11 = v6;
          v12 = v8;
          sub_3740E4();
          sub_373738();
        }
      }

      type metadata accessor for JSLoadingViewController(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        v13 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_isContentReady);
        *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_isContentReady) = 1;
        if ((v13 & 1) == 0)
        {
          v14 = v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady;
          v15 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady);
          if (v15)
          {
            v16 = *(v14 + 8);

            v15(v17);
            return sub_17654(v15, v16);
          }
        }
      }
    }
  }

  return result;
}

void *JSDrivenViewController.childForStatusBarStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  v2 = v1;
  return v1;
}

void JSDrivenViewController.preferredContentSizeDidChange(forChildContentContainer:)(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for JSDrivenViewController(0);
  v3 = objc_msgSendSuper2(&v8, "preferredContentSizeDidChangeForChildContentContainer:", a1);
  v4 = (*&stru_1F8.sectname[swift_isaMask & *v1])(v3);
  if (v4)
  {
    v5 = v4;
    sub_64FAC(v4);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  if (v6 == a1)
  {
    v7 = v6;
    [v7 preferredContentSize];
    [v1 setPreferredContentSize:?];
  }
}

Swift::Void __swiftcall JSDrivenViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v48.receiver = v1;
  v48.super_class = type metadata accessor for JSDrivenViewController(0);
  v4 = objc_msgSendSuper2(&v48, "traitCollectionDidChange:", isa);
  v5 = (*&stru_1F8.sectname[swift_isaMask & *v1])(v4);
  if (v5)
  {
    goto LABEL_2;
  }

  v22 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v23 = *&v2[v22];
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pageHeaderContentViewController);
    if (v24)
    {
      v5 = v24;
LABEL_2:
      v6 = v5;
      sub_64FAC(v5);
    }
  }

  v7 = [v2 traitCollection];
  v8 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v8)
  {
    v9 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v10 = v8;
    v11 = JSMediaPickerEnvironment.init(configuration:)(v10);
    v12 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v13 = *&v2[v12];
    if (v13)
    {
      v14 = *&stru_108.segname[(swift_isaMask & *v13) - 8];
      v15 = v13;
      v16 = v11;
      v17 = v14(v47);
      v19 = *v18;
      *v18 = v11;

      v17(v47, 0);
    }

    v20 = *&v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem];
    if (v20)
    {
      v21 = v20;
      [v21 setHidden:1];
    }
  }

  else
  {
    v25 = *&v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem];
    if (v25)
    {
      [v25 setHidden:0];
    }
  }

  if (isa)
  {
    v26 = [(objc_class *)isa horizontalSizeClass];
  }

  else
  {
    v26 = 0;
  }

  v27 = [v2 traitCollection];
  v28 = [v27 horizontalSizeClass];

  if ((!isa || v26 != v28) && v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController] == 1)
  {
    v29 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v30 = *&v2[v29];
    if (v30)
    {
      v31 = *&stru_B8.segname[(swift_isaMask & *v30) + 8];
      v32 = v30;
      v33 = v31();

      v34 = (*(&stru_2E8.size + (swift_isaMask & *v33)))();
      if (v34)
      {
        if (((*&stru_B8.segname[(swift_isaMask & *v34) + 16])() & 1) == 0)
        {
          goto LABEL_32;
        }

        v35 = [v2 navigationItem];
        v36 = sub_38720C();

        v37 = [v2 navigationItem];
        v38 = [v2 traitCollection];
        v39 = [v38 horizontalSizeClass];

        if ((v39 == &dword_0 + 1) != (sub_38720C() & 1))
        {
          if (qword_DE6B08 != -1)
          {
            swift_once();
          }

          v40 = qword_E01278;
          v41 = sub_AB9890().super.super.isa;
          objc_setAssociatedObject(v37, v40, v41, &dword_0 + 3);

          v37 = v41;
        }

        v42 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
        swift_beginAccess();
        v43 = *&v2[v42];
        if (v43 && *&v43[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView])
        {
          v44 = v43;
          v45 = [v2 navigationItem];
          v46 = sub_38720C() & 1;

          if ((v36 & 1) != v46)
          {
            v44[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset] = 1;
          }
        }

        else
        {
LABEL_32:
          v44 = v34;
        }
      }
    }
  }
}

Swift::Void __swiftcall JSDrivenViewController.viewDidLoad()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for JSDrivenViewController(0);
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [*&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController] view];
    if (v3)
    {
      v4 = v3;
      [v2 addSubview:v3];

      v5 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
      v6 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();

      *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_networkConnectivityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v6, 1, 1, sub_7090C, v7);

      sub_61E28(2);
      sub_612FC(128);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JSDrivenViewController.viewDidLayoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for JSDrivenViewController(0);
  objc_msgSendSuper2(&v5, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      [v2 setFrame:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JSDrivenViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSDrivenViewController(0);
  objc_msgSendSuper2(&v7, "viewWillAppear:", v2);
  v3 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = v2;
  if (v3 > 0x3F || ((v3 ^ v2) & 1) != 0)
  {
    v4 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
    v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = v2;
    if (v4 >> 6)
    {
      v5 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
      if (v4 >> 6 == 1)
      {
        v6 = v5;
        [v6 endAppearanceTransition];
        [v6 beginAppearanceTransition:1 animated:v2];
      }

      else if (v4 == 128)
      {
        [v5 beginAppearanceTransition:1 animated:v2];
      }
    }
  }

  sub_612FC(v2);
  sub_65DA0();
}

Swift::Void __swiftcall JSDrivenViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSDrivenViewController(0);
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1);
  v3 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = -127;
  if (v3 == 129)
  {
    goto LABEL_9;
  }

  v4 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = -127;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
  if (!(v4 >> 6))
  {
    [v5 endAppearanceTransition];
    goto LABEL_9;
  }

  if (v4 >> 6 == 1)
  {
    v6 = v5;
    [v6 endAppearanceTransition];
    [v6 beginAppearanceTransition:1 animated:0];
    [v6 endAppearanceTransition];
  }

  else
  {
    if (v4 != 128)
    {
      goto LABEL_9;
    }

    v6 = v5;
    [v6 beginAppearanceTransition:1 animated:0];
    [v6 endAppearanceTransition];
  }

LABEL_9:
  sub_612FC(a1 | 0x20);
  sub_61E28(2);
  if (v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear])
  {
    sub_64B24(0);
  }
}

Swift::Void __swiftcall JSDrivenViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = a1;
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSDrivenViewController(0);
  v15.receiver = v1;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "viewWillDisappear:", v2);
  v6 = v2 | 0x40;
  v7 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = v2 | 0x40;
  if (v7 & 0xC0) != 0x40 || ((v7 ^ v2))
  {
    v8 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
    v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = v6;
    if (v8 >> 6)
    {
      if (v8 >> 6 != 1 && v8 != 128)
      {
        [*&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController] beginAppearanceTransition:0 animated:v2];
        v6 = v2 | 0x40;
      }
    }

    else
    {
      v9 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
      [v9 endAppearanceTransition];
      [v9 beginAppearanceTransition:0 animated:v2];

      v6 = v2 | 0x40;
    }
  }

  sub_612FC(v6);
  if (sub_2B510C())
  {
    v10 = [v1 navigationController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 topViewController];

      if (v12)
      {
        *v4 = 1;
        swift_storeEnumTagMultiPayload();
        v13 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_browseContentItem];
        v14 = v13;
        sub_65A3C(v4, v13);
        sub_7103C(v4, type metadata accessor for Metrics.Event.Action);
      }
    }
  }
}

Swift::Void __swiftcall JSDrivenViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for JSDrivenViewController(0);
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1);
  v3 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = 0x80;
  if (v3 != 128)
  {
    v4 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
    v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = 0x80;
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
    if (!(v4 >> 6))
    {
      v6 = v5;
      [v6 endAppearanceTransition];
      [v6 beginAppearanceTransition:0 animated:0];
      [v6 endAppearanceTransition];
LABEL_8:

      goto LABEL_9;
    }

    if (v4 >> 6 == 1)
    {
      [v5 endAppearanceTransition];
      goto LABEL_9;
    }

    if (v4 != 128)
    {
      v6 = v5;
      [v6 beginAppearanceTransition:0 animated:0];
      [v6 endAppearanceTransition];
      goto LABEL_8;
    }
  }

LABEL_9:
  v7 = sub_4D39CC();
  if (v7)
  {
    v8 = v7;
    swift_getObjectType();
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      v10 = v9;
      goto LABEL_14;
    }
  }

  sub_12B2FC();
  v8 = v11;
  v10 = v12;
LABEL_14:
  sub_612FC(a1 | 0x60);
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v14 = *(v10 + 8);
    swift_unknownObjectRetain();
    v14(ObjectType, v10);
    v16 = v15;
    swift_unknownObjectRelease();
    v17 = swift_getObjectType();
    (*(v16 + 104))(v17, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t JSDrivenViewController.title.getter()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for JSDrivenViewController(0);
  v1 = objc_msgSendSuper2(&v5, "title");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_AB92A0();

  return v3;
}

void JSDrivenViewController.title.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for JSDrivenViewController(0);
  objc_msgSendSuper2(&v6, "setTitle:", v3);

  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
  v5 = [v2 title];
  [v4 setTitle:v5];
}

Swift::Void __swiftcall JSDrivenViewController.willMove(toParent:)(UIViewController_optional toParent)
{
  isa = toParent.value.super.super.isa;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for JSDrivenViewController(0);
  objc_msgSendSuper2(&v5, "willMoveToParentViewController:", isa);
  if (isa)
  {
    v3 = [v1 navigationItem];
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v4 = sub_AB9740().super.isa;
    [v3 setRightBarButtonItems:v4 animated:0];
  }
}

id JSDrivenViewController.preferredStatusBarStyle.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return [*(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) preferredStatusBarStyle];
  }

  v3 = v2;
  v4 = PromotionalParallaxViewController.preferredStatusBarStyle.getter();

  return v4;
}

UIScrollView_optional __swiftcall JSDrivenViewController.contentScrollView()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) contentScrollView];

  v2 = v1;
  result.value.super.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void sub_68DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = a2;
  v8[4] = a3;
  aBlock[4] = sub_70D9C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_8;
  v9 = _Block_copy(aBlock);

  [v5 _performBlockAfterCATransactionCommits:v9];
  _Block_release(v9);
}

void sub_68F10(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_DE6A10 != -1)
    {
      v7 = Strong;
      swift_once();
      Strong = v7;
    }

    v6 = Strong;
    sub_274318(Strong, a2, a3);
  }
}

void sub_68FC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_65DA0();
  }
}

id sub_69014(id result, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5 = result >> 6;
  if (result >> 6)
  {
    if (v5 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return result;
      }
    }

    else if (result == 128)
    {
      if (a2 == 128)
      {
        return result;
      }
    }

    else if (a2 == 129)
    {
      return result;
    }
  }

  else if (a2 < 0x40u)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
    if (!(result >> 6))
    {
      return result;
    }

    if (v5 == 1)
    {
      [v4 endAppearanceTransition];
      v7 = "beginAppearanceTransition:animated:";
      a4 = a2 & 1;
      v6 = v4;
    }

    else
    {
      if (result != 128)
      {
        return result;
      }

      a4 = a2 & 1;
      v6 = v4;
      v7 = "beginAppearanceTransition:animated:";
    }

    a3 = 1;
    goto LABEL_32;
  }

  if (a2 >> 6 != 1)
  {
    if (a2 == 128)
    {
      if (result >> 6)
      {
        if (v5 != 1)
        {
          if (result == 128)
          {
            return result;
          }

          [v4 beginAppearanceTransition:0 animated:0];
        }

        goto LABEL_39;
      }

      [v4 endAppearanceTransition];
      [v4 beginAppearanceTransition:0 animated:0];
    }

    else
    {
      if (!(result >> 6))
      {
LABEL_39:
        v7 = "endAppearanceTransition";
LABEL_40:
        v6 = v4;

        return [v6 v7];
      }

      if (v5 != 1)
      {
        if (result != 128)
        {
          return result;
        }

        [v4 beginAppearanceTransition:1 animated:0];
        goto LABEL_39;
      }

      [v4 endAppearanceTransition];
      [v4 beginAppearanceTransition:1 animated:0];
    }

    v7 = "endAppearanceTransition";
    goto LABEL_40;
  }

  if (!(result >> 6))
  {
    [v4 endAppearanceTransition];
    v7 = "beginAppearanceTransition:animated:";
    a4 = a2 & 1;
    v6 = v4;
    a3 = 0;
LABEL_32:

    return [v6 v7];
  }

  if (v5 != 1 && result != 128)
  {
    a4 = a2 & 1;
    v6 = v4;
    v7 = "beginAppearanceTransition:animated:";
    a3 = 0;
    goto LABEL_32;
  }

  return result;
}

void sub_69258(uint64_t a1, uint64_t a2)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  static ApplicationCapabilities.shared.getter(v14);
  sub_70C54(v14);
  v6 = v14[1];
  v7 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_0, v8, v9, "[JSDrivenViewController] Network connectivity did change. Has network connectivity: %{BOOL}d", v10, 8u);
  }

  (*(v3 + 8))(v5, v2);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_61E28(v6);
  }
}

char *sub_693F8(void *a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  result = [a1 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [objc_allocWithZone(type metadata accessor for InformativeView()) initWithFrame:{v5, v7, v9, v11}];
    [v12 setAutoresizingMask:18];
    sub_AB91E0();
    sub_AB3550();
    v13 = sub_AB9320();
    v14 = &v12[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
    v15 = *&v12[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
    v16 = *&v12[OBJC_IVAR____TtC16MusicApplication15InformativeView_title + 8];
    *v14 = v13;
    v14[1] = v17;
    sub_22E6D0(v15, v16);

    static DeviceCapabilities.hasWAPICapability.getter();
    sub_AB91E0();
    sub_AB3550();
    v18 = sub_AB9320();
    v19 = &v12[OBJC_IVAR____TtC16MusicApplication15InformativeView_message];
    v20 = *&v12[OBJC_IVAR____TtC16MusicApplication15InformativeView_message];
    v21 = *&v12[OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8];
    *v19 = v18;
    v19[1] = v22;
    sub_22E7B0(v20, v21);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_69678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision) == a2)
  {
    swift_beginAccess();
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = *(a1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
      *(a1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) = v5;
      v7 = v5;
      sub_6746C(v6);

      *(a1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController) = 0;
      v8 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers;
      swift_beginAccess();
      v9 = *(a1 + v8);
      *(a1 + v8) = _swiftEmptyArrayStorage;
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 40;
        do
        {
          v12 = *(v11 - 8);

          v12(v13);

          v11 += 16;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_69788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_69678(Strong, a2, a3);
  }
}

void sub_697F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID) == a2 && (*(Strong + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) & 1) == 0)
    {
      v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
      swift_beginAccess();
      if (*&v4[v5])
      {
        JSDrivenViewController.promotionalParallaxViewController.setter(0);
        sub_655C4();
      }
    }
  }
}

void sub_6989C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 navigationItem];
  [v6 setBackButtonTitle:0];

  LODWORD(a2) = (*&stru_298.segname[(swift_isaMask & *a2) + 8])();
  v9 = [a1 navigationItem];
  if (a2 == 1)
  {
    [v9 setTitle:0];
    v7 = v9;
  }

  else
  {
    v8 = sub_AB9260();
    [v9 setTitle:v8];

    v7 = v8;
  }
}

void sub_699D4(void *a1, uint64_t a2, void *a3)
{
  v5 = (*&stru_1F8.sectname[swift_isaMask & *a1])();
  if (!v5)
  {
    type metadata accessor for PageHeaderContentViewController();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v6 = v5;
  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v6;

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(&stru_1F8.size + (swift_isaMask & *a3));
    v10 = v8;
    v11 = v9();
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v11 = (*(&stru_1A8.reserved2 + (swift_isaMask & *a3)))();
      v12 = v11 != 0;
    }

    v10[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBelowPromotionalImage] = v12;
    sub_337AA0();
  }

  swift_beginAccess();
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = v13;
    sub_64FAC(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_69B98(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_AB3430();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin();
  v57 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v55 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v13 = &v55 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v55 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v18 = &v55 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  v63 = a3;
  if ([a1 sender])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  v70[0] = v65;
  v70[1] = v66;
  if (!*(&v66 + 1))
  {
    sub_12E1C(v70, &unk_DE8E40, &unk_AF8050);
    goto LABEL_10;
  }

  sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v62 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v21 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v25 = 255;
    goto LABEL_11;
  }

  v21 = *&v75[0];
  v62 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  if (v21)
  {
    v79 = v21;
    v80 = 0u;
    v81 = 0u;
    v82 = 1;
    PresentationSource.Position.init(source:permittedArrowDirections:)(&v79, 15, v71);
    v22 = v71[0];
    v23 = v71[1];
    v24 = v72;
    v25 = v73;
    v26 = v74;
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v22 = 0uLL;
    v25 = 255;
    v23 = 0uLL;
  }

LABEL_11:
  v75[0] = v22;
  v75[1] = v23;
  v76 = v24;
  v77 = v25;
  v78 = v26;
  v61 = v21;
  v60 = v20;
  PresentationSource.init(viewController:position:)(v60, v75, v70);
  v27 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v68, 0, sizeof(v68));
  v69 = 0;
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  sub_15F84(v68, &v65, &unk_DE8E30, "\b]\r");
  if (*(&v66 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v28 = _s30CollectionViewSelectionHandlerVMa(0);
    v29 = swift_dynamicCast();
    v30 = *(v28 - 8);
    (*(v30 + 56))(v13, v29 ^ 1u, 1, v28);
    if ((*(v30 + 48))(v13, 1, v28) != 1)
    {
      (*(v8 + 16))(v16, &v13[*(v28 + 20)], v7);
      sub_7103C(v13, _s30CollectionViewSelectionHandlerVMa);
      v31 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_12E1C(&v65, &unk_DE8E30, "\b]\r");
    v32 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
  }

  sub_12E1C(v13, &qword_E037A0, &unk_AF8B30);
  v31 = 1;
LABEL_16:
  (*(v8 + 56))(v16, v31, 1, v7);
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33 && (v34 = v33, sub_12B2FC(), v36 = v35, v38 = v37, v34, v36))
  {
    ObjectType = swift_getObjectType();
    (*(v38 + 8))(ObjectType, v38);
    v41 = v40;
    swift_unknownObjectRelease();
    v42 = v56;
    sub_15F84(v16, v56, &unk_DE8E20, &qword_AF7990);
    if ((*(v8 + 48))(v42, 1, v7) == 1)
    {
      sub_12E1C(v42, &unk_DE8E20, &qword_AF7990);
      v65 = 0u;
      v66 = 0u;
      v67 = 0;
    }

    else
    {
      (*(v8 + 32))(v55, v42, v7);
      sub_2D668();
      sub_ABAD10();
    }

    v44 = swift_getObjectType();
    v45 = v57;
    sub_3B8F68(v44);
    v43 = sub_21CCAC(1, v45, &v65, v44, v41);
    (*(v58 + 8))(v45, v59);
    sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    v43 = 0;
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = v18;
    sub_12AFE8();
    v50 = v49;
  }

  else
  {
    v48 = v18;
    v50 = 0;
  }

  sub_15F28(v70, &v65);
  sub_15F84(v68, (v11 + 104), &unk_DE8E30, "\b]\r");
  v51 = v64;
  sub_15F84(v48, &v11[*(v64 + 28)], &unk_DEA510, "\b]\r");
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_160B4(&v65, v11, &unk_DEA520, &unk_AFDBF0);
  *(v11 + 12) = 0;
  v52 = *v62;
  *(&v66 + 1) = v51;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v65);
  sub_70FD4(v11, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v54 = v52;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v63, 0, v43, v50, &v65);

  sub_12E1C(v48, &unk_DEA510, "\b]\r");
  sub_12E1C(v68, &unk_DE8E30, "\b]\r");
  sub_1611C(v70);
  sub_7103C(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v65, &unk_DE8E40, &unk_AF8050);
}

void sub_6A4E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_6A544(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (v4)
    {
      if ((v3 & 0xE0) != 0x20)
      {
        return 0;
      }
    }

    else if (v3 >= 0x20)
    {
      return 0;
    }
  }

  else if (v4 == 2)
  {
    if ((v3 & 0xE0) != 0x40)
    {
      return 0;
    }
  }

  else if (v4 == 3)
  {
    if ((v3 & 0xE0) != 0x60)
    {
      return 0;
    }
  }

  else if (v2 == 128)
  {
    if (v3 != 128)
    {
      return 0;
    }
  }

  else if (v3 != 129)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_6A66C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady);
  sub_307CC(v1, *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady + 8));
  return v1;
}

char *sub_6A6C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA838, &qword_B00B20);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_6A914(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_6AA40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAF0, &unk_AF91A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6ABB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA30, &qword_AF90B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA38, &qword_AF90B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6ACE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9A8, &qword_AF8FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6AEB0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_6AFF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_6B0F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_6B1FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA88, &qword_AF9118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B31C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA28, &qword_AF90A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B43C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930, &qword_AF8F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6B564(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAA0, &qword_AF9140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAA8, &qword_AF9148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B698(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA818, &qword_AF8E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B8EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12B0, &unk_B02870);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_6BA68(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_6BB84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12F0, &qword_AF90E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6BCC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA40, &qword_AF90C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA48, &qword_AF90D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6BE34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_6BF7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9F8, &qword_AF9070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6C0A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_6C1E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_6C31C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEDC0, &unk_AF9180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_6C468(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_6C59C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04F10, &unk_B007B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6C6C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_6C7D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B8, &qword_AF9008);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6C8F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0, &qword_AF9000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_6C9F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9A0, &qword_AF8FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_6CB34(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_6CC50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1310, &qword_AF9058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6CD9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8A8, &qword_AF8ED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6CEBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8B8, &unk_AF8EE0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_6CFF0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_6D228(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_6D410(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6DB88(a1, a2, a3, *v3, &unk_E24B20, &unk_AF8E60, &unk_DED830, &unk_AFD670);
  *v3 = result;
  return result;
}

char *sub_6D450(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6D950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6D470(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6DA54(a1, a2, a3, *v3, &qword_DEAA68, &qword_AF90F8, &qword_DEAA70, &qword_AF9100);
  *v3 = result;
  return result;
}

void *sub_6D4B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6DA54(a1, a2, a3, *v3, &qword_DEA820, &unk_AF8E20, &qword_DEA828, &unk_AFF5B0);
  *v3 = result;
  return result;
}

void *sub_6D4F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6DB88(a1, a2, a3, *v3, &qword_DFC2B0, &qword_B077B0, &qword_DFE680, &qword_AF7B70);
  *v3 = result;
  return result;
}

char *sub_6D530(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEA878, &qword_AF8E90);
  *v3 = result;
  return result;
}

void *sub_6D560(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E34C(a1, a2, a3, *v3, &unk_DFAA80, &unk_AF9360, &qword_DEA868, &qword_AF8E80);
  *v3 = result;
  return result;
}

char *sub_6D5A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6DCBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D5C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEA830, &unk_AF8E30);
  *v3 = result;
  return result;
}

char *sub_6D5F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEAAF8, qword_AF91B0);
  *v3 = result;
  return result;
}

char *sub_6D620(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6DDC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D640(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6DED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D660(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6DFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6D680(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D6A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6D6C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E34C(a1, a2, a3, *v3, &qword_DEA8D0, &qword_AF8F08, &qword_DEA8D8, &qword_AF8F10);
  *v3 = result;
  return result;
}

void *sub_6D700(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D720(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E5C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D740(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &unk_DF1D40, &qword_AF90C0);
  *v3 = result;
  return result;
}

char *sub_6D770(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEA950, &qword_AF8FA0);
  *v3 = result;
  return result;
}

char *sub_6D7A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E7C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D7C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E9B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D7E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6EBFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D800(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6ED0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D820(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEA990, &qword_AF8FE0);
  *v3 = result;
  return result;
}

char *sub_6D850(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6EAD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6D870(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6EE38(a1, a2, a3, *v3, &qword_DEA970, &qword_AF8FC0, &type metadata accessor for MusicPlayActivityFields);
  *v3 = result;
  return result;
}

void *sub_6D8B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6EE38(a1, a2, a3, *v3, &qword_DEA8C8, &qword_AF8F00, type metadata accessor for Search.Item);
  *v3 = result;
  return result;
}

void *sub_6D8F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6EE38(a1, a2, a3, *v3, &qword_DEAAD8, &qword_AF9178, type metadata accessor for Search.Recents.Result.Item);
  *v3 = result;
  return result;
}

char *sub_6D950(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA860, &unk_AF8E70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_6DA54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_6DB88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_6DCBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_6DDC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAE0, &unk_AF9190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6DED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB38, &qword_AF9278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6DFE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04F10, &unk_B007B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6E0EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9A8, &qword_AF8FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6E22C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAE8, &qword_AFF600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6E34C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_6E494(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8F8, &qword_AF8F38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA900, &qword_AF8F40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6E5C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8F0, &qword_AF8F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6E6D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_6E7C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA18, &qword_AF9098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_6E8C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA980, &qword_AF8FD0);
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

char *sub_6E9B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAC8, &qword_AF9168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6EAD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1310, &qword_AF9058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6EBFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6ED0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8A0, &qword_AF8EC8);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}