uint64_t type metadata accessor for StoryAsyncPlayerView(uint64_t a1)
{
  result = qword_1EB1884D0;
  if (!qword_1EB1884D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoryAsyncPlayerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for StoryAsyncPlayerView(0);
  v43 = *(v3 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TungstenHostingView(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A46A6D8C(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46A6DEC(0);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46A6EB0(0);
  v16 = *(v15 - 8);
  v44 = v15;
  v45 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  TungstenHostingView.init(hostingController:)(*(*v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController), v7);
  sub_1A46A7148(0, &qword_1EB13FFD8, MEMORY[0x1E697DA80]);
  v19 = sub_1A5247C84();
  v20 = (*(*v47 + 136))(v19);

  v21 = 0.001;
  if (v20)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.001;
  }

  v23 = sub_1A46A71A8(v7, v11, type metadata accessor for TungstenHostingView);
  *&v11[*(v9 + 44)] = v22;
  v24 = MEMORY[0x1A5907080](v23, 0.15, 1.0, 0.0);
  v25 = sub_1A5247C84();
  v26 = (*(*v47 + 136))(v25);

  if (v26)
  {
    v21 = 1.0;
  }

  sub_1A46A71A8(v11, v14, sub_1A46A6D8C);
  v27 = v39;
  v28 = &v14[*(v39 + 36)];
  *v28 = v24;
  *(v28 + 1) = v21;
  v47 = v18;
  v29 = v41;
  sub_1A46A70E4(v2, v41);
  v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v31 = swift_allocObject();
  sub_1A46A71A8(v29, v31 + v30, type metadata accessor for StoryAsyncPlayerView);
  v32 = type metadata accessor for StoryAsyncPlayer(0);
  v33 = sub_1A46A6F84();
  v34 = sub_1A46A7354(&qword_1EB12A488, type metadata accessor for StoryAsyncPlayer, &protocol conformance descriptor for StoryAsyncPlayer);
  swift_retain_n();
  v35 = v40;
  sub_1A524B144();

  sub_1A46A72F8(v14);
  v50 = v34;
  v51 = v18;
  v47 = v27;
  v48 = v32;
  v49 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1A46A7354(&qword_1EB12A490, type metadata accessor for StoryAsyncPlayer, &protocol conformance descriptor for StoryAsyncPlayer);
  v36 = v44;
  sub_1A524A4F4();

  return (*(v45 + 8))(v35, v36);
}

void sub_1A46A6D8C(uint64_t a1)
{
  if (!qword_1EB128868)
  {
    type metadata accessor for TungstenHostingView(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128868);
    }
  }
}

void sub_1A46A6DEC(uint64_t a1)
{
  if (!qword_1EB128488)
  {
    sub_1A46A6D8C(255);
    sub_1A46A6E54(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128488);
    }
  }
}

void sub_1A46A6E54(uint64_t a1)
{
  if (!qword_1EB128018)
  {
    sub_1A3E75420();
    v1 = sub_1A52494B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128018);
    }
  }
}

void sub_1A46A6EB0(uint64_t a1)
{
  if (!qword_1EB127598)
  {
    sub_1A46A6DEC(255);
    type metadata accessor for StoryAsyncPlayer(255);
    sub_1A46A6F84();
    sub_1A46A7354(&qword_1EB12A488, type metadata accessor for StoryAsyncPlayer, &protocol conformance descriptor for StoryAsyncPlayer);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127598);
    }
  }
}

unint64_t sub_1A46A6F84()
{
  result = qword_1EB128490;
  if (!qword_1EB128490)
  {
    sub_1A46A6DEC(255);
    sub_1A46A7034();
    sub_1A46A7354(&unk_1EB128020, sub_1A46A6E54, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128490);
  }

  return result;
}

unint64_t sub_1A46A7034()
{
  result = qword_1EB128870;
  if (!qword_1EB128870)
  {
    sub_1A46A6D8C(255);
    sub_1A46A7354(&qword_1EB12A398, type metadata accessor for TungstenHostingView, &protocol conformance descriptor for TungstenHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128870);
  }

  return result;
}

uint64_t sub_1A46A70E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryAsyncPlayerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A46A7148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    FrameObserver = type metadata accessor for TungstenFirstFrameObserver(255);
    v7 = a3(a1, FrameObserver);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A46A71A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1A46A7210()
{
  v1 = type metadata accessor for StoryAsyncPlayerView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_1A46A7148(0, &qword_1EB13FFD8, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v3 = *(*v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  v4 = *(*v7 + 120);
  v5 = v3;
  v4(v3);

  return result;
}

uint64_t sub_1A46A72F8(uint64_t a1)
{
  sub_1A46A6DEC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A46A7354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A46A73E4(uint64_t a1)
{
  type metadata accessor for StoryAsyncPlayer(319);
  if (v1 <= 0x3F)
  {
    sub_1A46A7148(319, &qword_1EB13FFD8, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A46A7484()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1CD958);
  __swift_project_value_buffer(v0, qword_1EB1CD958);
  sub_1A5246EF4();
}

void sub_1A46A74F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for LemonadeStatusView(uint64_t a1)
{
  result = qword_1EB16C860;
  if (!qword_1EB16C860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A46A75A4(char a1, uint64_t a2)
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeStatusView(0);
  sub_1A3FF29A0(v4);
  sub_1A3D63A8C(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1A408BBE8(v4);
    PXPresentationEnvironmentForSender();
  }

  sub_1A5245C94();
}

uint64_t sub_1A46A786C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for LemonadeStatusView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A46A74F0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

id sub_1A46A7900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v11 = *v2;
  sub_1A46A8834(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeStatusView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1A46A87CC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeStatusView);
  v8 = v11;
  *a2 = v11;
  a2[1] = sub_1A46A889C;
  a2[2] = v7;

  return v8;
}

id sub_1A46A7A2C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC12PhotosUICore21FooterViewCoordinator_viewControllerPresentationHandler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1A46A7AA4()
{
  v1 = *v0;
  sub_1A46A7E94(0);
  sub_1A5249DA4();
  v2 = objc_allocWithZone(PXPhotosGlobalFooterView);
  v3 = v6;
  v4 = [v2 initWithFrame:0 needsWorkaroundFor53118165:{0.0, 0.0, 0.0, 0.0}];
  [v4 setViewModel_];
  [v4 setDelegate_];

  return v4;
}

void *sub_1A46A7B60@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for FooterViewCoordinator();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  v7 = &v6[OBJC_IVAR____TtC12PhotosUICore21FooterViewCoordinator_viewControllerPresentationHandler];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A46A7BF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    return 0;
  }

  [a5 sizeThatFits_];
  return v7;
}

uint64_t sub_1A46A7C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46A7EF0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A46A7CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46A7EF0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A46A7D18(uint64_t a1)
{
  sub_1A46A7EF0();
  sub_1A52496F4();
  __break(1u);
}

void sub_1A46A7E94(uint64_t a1)
{
  if (!qword_1EB13FFE0)
  {
    sub_1A46A7EF0();
    v1 = sub_1A5249DB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FFE0);
    }
  }
}

unint64_t sub_1A46A7EF0()
{
  result = qword_1EB13FFE8;
  if (!qword_1EB13FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FFE8);
  }

  return result;
}

void sub_1A46A7F68(void *a1)
{
  v2 = a1;
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    (*(v1 + OBJC_IVAR____TtC12PhotosUICore21FooterViewCoordinator_viewControllerPresentationHandler))(0, v3);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_unknownObjectWeakAssign();
      (*(v1 + OBJC_IVAR____TtC12PhotosUICore21FooterViewCoordinator_viewControllerPresentationHandler))(1, v3);
    }

    else
    {
      if (qword_1EB1CD950 != -1)
      {
        swift_once();
      }

      v5 = sub_1A5246F24();
      __swift_project_value_buffer(v5, qword_1EB1CD958);
      v3 = sub_1A5246F04();
      v6 = sub_1A524D244();
      if (os_log_type_enabled(v3, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1A3C1C000, v3, v6, "No presented view controller to dismiss for the footer view action", v7, 2u);
        MEMORY[0x1A590EEC0](v7, -1, -1);
      }
    }
  }
}

uint64_t sub_1A46A80F0(void *a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v10 = sub_1A524D474();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_1A46A87BC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_249;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A46A83DC()
{
  result = qword_1EB140000;
  if (!qword_1EB140000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140000);
  }

  return result;
}

unint64_t sub_1A46A8450()
{
  result = qword_1EB140008;
  if (!qword_1EB140008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140008);
  }

  return result;
}

void sub_1A46A84DC(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB120A10, &off_1E7721588);
  if (v1 <= 0x3F)
  {
    sub_1A46A74F0(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t objectdestroyTm_71()
{
  v1 = (type metadata accessor for LemonadeStatusView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  sub_1A46A74F0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v2 + v3, 1, v4))
    {
      (*(v6 + 8))(v2 + v3, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A46A87CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46A8834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall PXCreateSharedAlbumActionPerformer.performLemonadeUserInteractionTask()()
{
  v1 = v0;
  v2 = type metadata accessor for SharedAlbumCreationView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  type metadata accessor for LemonadePhotoLibraryContext(0, v11);
  v12 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)([v0 photoLibrary], 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v18);
  v13 = sub_1A3C799F0(v9, 0, 0, 0, v6, &v18, v12, 2);
  type metadata accessor for SharedAlbumActionViewModel(0);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;

  v15 = v1;
  v16 = sub_1A3C30368();
  SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v13, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v16 & 1, 0, 0, sub_1A46A8BE8, v14);
}

void sub_1A46A8BE8(char a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  if (a2)
  {
    v5 = sub_1A5240B74();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 completeUserInteractionTaskWithSuccess:a1 & 1 error:?];
}

void sub_1A46A8C60(uint64_t a1)
{
  if (!qword_1EB140078)
  {
    v2 = type metadata accessor for SharedAlbumCreationView(255);
    v3 = sub_1A46A54C4();
    v5 = type metadata accessor for PXSwiftUIHostingViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB140078);
    }
  }
}

uint64_t sub_1A46A8CC4(uint64_t a1)
{
  v2 = type metadata accessor for SharedAlbumCreationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A46A8D68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = a4;
  v15 = type metadata accessor for SocialGroupView(0, a6, a7, a4);
  v16 = a8 + v15[14];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = *(a6 - 8);
  (*(v17 + 16))(a8, a1, a6);
  *(a8 + v15[9]) = a2;
  *(a8 + v15[10]) = a3;
  *(a8 + v15[11]) = v10;
  *(a8 + v15[12]) = a5;
  v18 = a3;
  v19 = a2;
  PXDisplayCollectionDetailedCountsMake();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = (*(v17 + 8))(a1, a6);
  v27 = (a8 + v15[13]);
  *v27 = v21;
  v27[1] = v23;
  v27[2] = v25;
  return result;
}

uint64_t sub_1A46A8EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v59 = sub_1A5249234();
  v58 = *(v59 - 1);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 24);
  v11 = type metadata accessor for SocialGroupView.AssetView(255, v5, v9, v10);
  WitnessTable = swift_getWitnessTable();
  v72.n128_u64[0] = v5;
  v72.n128_u64[1] = v11;
  v73 = v9;
  v74 = WitnessTable;
  v13 = type metadata accessor for LemonadeInlineStoryPlayerView(0, &v72);
  v61 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v56 - v17;
  v64 = sub_1A5249754();
  v63 = *(v64 - 8);
  v19 = MEMORY[0x1EEE9AC00](v64);
  v20 = &v56 - v18;
  if (*(v2 + *(a1 + 48)) == 1)
  {
    v21 = (*(v6 + 16))(v62, v2, v5, v19);
    v59 = &v56;
    v80.n128_u64[0] = *(v2 + *(a1 + 36));
    v80.n128_u8[8] = 3;
    MEMORY[0x1EEE9AC00](v21);
    v23 = v22;
    sub_1A3D3F1B0(&v72);
    v66 = v72;
    LOBYTE(v67) = v73;
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v71 = v77;
    *(&v55 + 1) = v9;
    *&v55 = v11;
    sub_1A3D3F204(v62, &v80, &v66, sub_1A46A98B8, 0, 0, v5, v15, v55, WitnessTable);
    v62 = swift_getWitnessTable();
    v24 = v61;
    v25 = *(v61 + 2);
    v26 = v60;
    v25(v60, v15, v13);
    v27 = *(v24 + 1);
    v27(v15, v13);
    v25(v15, v26, v13);
    sub_1A3DF4798(v15, v13, v11, v62, WitnessTable);
    v27(v15, v13);
    v27(v26, v13);
    v28 = WitnessTable;
  }

  else
  {
    v61 = &v56 - v18;
    v62 = WitnessTable;
    v29 = *(a1 + 56);
    v30 = v2 + *(a1 + 52);
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v2 + v29);
    if (*(v2 + v29 + 8) != 1)
    {

      v34 = sub_1A524D254();
      v35 = sub_1A524A014();
      sub_1A5246DF4(v34, &dword_1A3C1C000, v35, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v36 = v57;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3DD15BC(v33, 0);
      (*(v58 + 8))(v36, v59);
    }

    v37 = v32;
    v38 = v31;
    PXDisplayCollectionDetailedCountsMake();
    v40 = v39;
    v42 = v41;
    v43 = *(v2 + *(a1 + 44));
    v66.n128_u64[0] = v39;
    v66.n128_u64[1] = v41;
    v67 = v44;
    LOBYTE(v68) = v43;
    v45 = *(*(v11 - 8) + 16);
    v45(&v72, &v66, v11);
    v46 = v72;
    v80 = v72;
    v81 = v73;
    v82 = v74;
    v45(&v66, &v80, v11);
    v47 = v66.n128_u64[0];
    v80 = v66;
    v81 = v67;
    v82 = v68;
    v48 = v66.n128_u64[1];
    v49 = v47;
    v50 = swift_getWitnessTable();
    v20 = v61;
    v51 = v11;
    v28 = v62;
    sub_1A3DF4890(&v80, v13, v51, v50, v62);
  }

  v78 = swift_getWitnessTable();
  v79 = v28;
  v52 = v64;
  swift_getWitnessTable();
  v53 = v63;
  (*(v63 + 16))(v65, v20, v52);
  return (*(v53 + 8))(v20, v52);
}

void sub_1A46A962C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v13 = type metadata accessor for SocialGroupView(0, a2, a3, v12);
  v14 = v13[14];
  v15 = a1 + v13[13];
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(a1 + v14);
  if (*(a1 + v14 + 8) != 1)
  {

    v19 = sub_1A524D254();
    v40 = v8;
    v20 = a3;
    v21 = a4;
    v22 = v19;
    v23 = sub_1A524A014();
    v41 = v16;
    v24 = v23;
    v25 = v22;
    a4 = v21;
    a3 = v20;
    sub_1A5246DF4(v25, &dword_1A3C1C000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v16 = v41;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v18, 0);
    (*(v9 + 8))(v11, v40);
  }

  v26 = v17;
  v27 = v16;
  PXDisplayCollectionDetailedCountsMake();
  v29 = v28;
  v31 = v30;
  v32 = *(a1 + v13[11]);
  v43 = v28;
  v44 = v30;
  v45 = v33;
  v46 = v32;
  v35 = type metadata accessor for SocialGroupView.AssetView(0, v42, a3, v34);
  swift_getWitnessTable();
  v36 = *(*(v35 - 8) + 16);
  v36(&v47, &v43, v35);

  v37 = v47;
  v38 = v48;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  v36(a4, &v43, v35);
}

uint64_t sub_1A46A9908@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v29 = a3;
  v27 = a1;
  v31 = a4;
  v7 = sub_1A52429A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AA280(0);
  v30 = v11;
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AA474(0, &qword_1EB122D38, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = sub_1A5243594();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v29 & 1) == 0 || a2)
  {
    PXDisplayCollectionDetailedCountsMake();
    v22 = v27;
    v32 = v27;
    v33 = a2;
    v34 = a5;
    (*(v8 + 104))(v10, *MEMORY[0x1E69C2050], v7);
    sub_1A46AA2DC();
    v23 = v22;
    v24 = a2;
    sub_1A5242594();
    v25 = v28;
    v26 = v30;
    (*(v28 + 16))(v16, v13, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A46AA330(&qword_1EB129098, MEMORY[0x1E69C2520], MEMORY[0x1E69C2518]);
    sub_1A46AA330(&qword_1EB124F30, sub_1A46AA280, MEMORY[0x1E69C1ED8]);
    sub_1A5249744();
    return (*(v25 + 8))(v13, v26);
  }

  else
  {
    sub_1A5243584();
    (*(v18 + 16))(v16, v20, v17);
    swift_storeEnumTagMultiPayload();
    sub_1A46AA330(&qword_1EB129098, MEMORY[0x1E69C2520], MEMORY[0x1E69C2518]);
    sub_1A46AA330(&qword_1EB124F30, sub_1A46AA280, MEMORY[0x1E69C1ED8]);
    sub_1A5249744();
    return (*(v18 + 8))(v20, v17);
  }
}

void sub_1A46A9D70(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126C28, 0x1E6978AD8);
    if (v2 <= 0x3F)
    {
      sub_1A3F2D6AC(319, v2);
      if (v3 <= 0x3F)
      {
        sub_1A46AA1B0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A46A9E4C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1A46A9FB8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1A46AA1B0()
{
  if (!qword_1EB124830)
  {
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124830);
    }
  }
}

uint64_t sub_1A46AA200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A46AA280(uint64_t a1)
{
  if (!qword_1EB124F28)
  {
    sub_1A46AA2DC();
    v1 = sub_1A52425B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124F28);
    }
  }
}

unint64_t sub_1A46AA2DC()
{
  result = qword_1EB125598;
  if (!qword_1EB125598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125598);
  }

  return result;
}

uint64_t sub_1A46AA330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A46AA378(double a1)
{
  result = qword_1EB122A98;
  if (!qword_1EB122A98)
  {
    sub_1A46AA474(255, &qword_1EB122A90, MEMORY[0x1E697F960]);
    sub_1A46AA330(&qword_1EB129098, MEMORY[0x1E69C2520], MEMORY[0x1E69C2518]);
    sub_1A46AA330(&qword_1EB124F30, sub_1A46AA280, MEMORY[0x1E69C1ED8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A98);
  }

  return result;
}

void sub_1A46AA474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243594();
    sub_1A46AA280(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1A46AA53C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v11 = a3.n128_u64[0];
  v12 = a4.n128_f64[0];
  v9 = a1.n128_u64[0];
  v10 = a2.n128_u64[0];
  swift_beginAccess();
  *&v5.f64[0] = v9;
  *&v5.f64[1] = v10;
  *&v6.f64[0] = v11;
  v6.f64[1] = v12;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 40), v5), vceqq_f64(*(v4 + 56), v6)))))
  {
    *(v4 + 40) = v9;
    *(v4 + 48) = v10;
    result = v12;
    *(v4 + 56) = v11;
    *(v4 + 64) = v12;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948(v12);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A46AA674(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 72) == v2)
  {
    *(v1 + 72) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948(v4);
    sub_1A52415C4();
  }
}

void sub_1A46AA768(double a1)
{
  swift_beginAccess();
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948(v4);
    sub_1A52415C4();
  }
}

void sub_1A46AA864(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 128) == v2)
  {
    *(v1 + 128) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948(v4);
    sub_1A52415C4();
  }
}

void sub_1A46AA958(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 129) == v2)
  {
    *(v1 + 129) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948(v4);
    sub_1A52415C4();
  }
}

uint64_t sub_1A46AAA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1A46AAAF4(uint64_t a1)
{
  v2 = v1;
  if ((a1 & 0x800000000000) != 0)
  {
    v4 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel) allowsPreviewHeader];
    swift_beginAccess();
    if (v4 == *(v2 + 72))
    {
      *(v2 + 72) = v4;
      if ((a1 & 0x2000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948(v6);
    sub_1A52415C4();
  }

  if ((a1 & 0x2000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  [*(v2 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel) chromeTitleFloatingFraction];
  v8 = 1.0 - v7;
  swift_beginAccess();
  if (*(v2 + 80) == v8)
  {
    *(v2 + 80) = v8;
  }

  else
  {
    v9 = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](v9);
    sub_1A46AD948(v10);
    sub_1A52415C4();
  }

LABEL_10:
  if ((a1 & 0x800200000000) != 0)
  {
    sub_1A46AAE40();
  }

  else if ((a1 & 4) == 0)
  {
    return;
  }

  sub_1A46AAF94();
}

double sub_1A46AAE40()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  if ([v1 allowsPreviewHeader])
  {
    v2 = [v1 emptyPlaceholderState] - 4 < 0xFFFFFFFFFFFFFFFELL;
    v3 = (v0 + 128);
    swift_beginAccess();
    if (((v2 ^ *(v0 + 128)) & 1) == 0)
    {
LABEL_3:
      *v3 = v2;
      return result;
    }
  }

  else
  {
    v3 = (v0 + 128);
    swift_beginAccess();
    LOBYTE(v2) = 0;
    if ((*(v0 + 128) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  v6 = MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A46AD948(v6);
  sub_1A52415C4();

  return result;
}

void sub_1A46AAF94()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  if ([v1 allowsPreviewHeader] && !objc_msgSend(v1, sel_isInSelectMode))
  {
    v3 = [v1 emptyPlaceholderState] - 4 < 0xFFFFFFFFFFFFFFFELL;
    v2 = (v0 + 129);
    swift_beginAccess();
    if ((v3 ^ *(v0 + 129)))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v2 = (v0 + 129);
    swift_beginAccess();
    LOBYTE(v3) = 0;
    if (*(v0 + 129))
    {
LABEL_4:
      KeyPath = swift_getKeyPath();
      v5 = MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A46AD948(v5);
      sub_1A52415C4();

      return;
    }
  }

  *v2 = v3;
}

uint64_t sub_1A46AB0FC()
{
  swift_getKeyPath();
  sub_1A46AD948(v1);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 16);
}

__n128 sub_1A46AB184@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948(v4);
  sub_1A52415D4();

  swift_beginAccess();
  v5 = v3[2].n128_u8[0];
  result = v3[1];
  *a2 = result;
  a2[1].n128_u8[0] = v5;
  return result;
}

void sub_1A46AB24C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if ((*(v3 + 32) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 16) == *&a1 && *(v3 + 24) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948(v9);
    sub_1A52415C4();

    return;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 16) = *&a1;
  *(v3 + 24) = *&a2;
  *(v3 + 32) = a3 & 1;
}

double sub_1A46AB380()
{
  swift_getKeyPath();
  sub_1A46AD948(v1);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 40);
}

__n128 sub_1A46AB408@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948(v4);
  sub_1A52415D4();

  swift_beginAccess();
  result = *(v3 + 40);
  v6 = *(v3 + 56);
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

double sub_1A46AB498(unint64_t *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_u64[0] = *a1;
  a3.n128_u64[0] = a1[1];
  a4.n128_u64[0] = a1[2];
  a5.n128_u64[0] = a1[3];
  return sub_1A46AA53C(a2, a3, a4, a5);
}

double sub_1A46AB4C4()
{
  v1 = v0;
  sub_1A46ADAC0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v0;
  sub_1A46AD948(v7);
  sub_1A52415D4();

  swift_beginAccess();
  if (*(v0 + 72) != 1)
  {
    v12 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__bottomChromeHeight;
    swift_beginAccess();
    (*(v4 + 16))(v6, v1 + v12, v3);
    sub_1A52467B4();
  }

  swift_getKeyPath();
  v26[3] = v0;
  sub_1A52415D4();

  swift_beginAccess();
  if (*(v0 + 32))
  {
    if (qword_1EB15B710 != -1)
    {
      swift_once();
    }

    v8 = sub_1A5246F24();
    __swift_project_value_buffer(v8, qword_1EB15B718);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v11 = 136315138;
      sub_1A3C2EF94(0xD000000000000015, 0x80000001A53E47A0, v26);
    }

    v13 = [objc_opt_self() currentDevice];
    v14 = [v13 userInterfaceIdiom];

    v15 = 87.0;
    if (v14 == 1)
    {
      v15 = 76.5;
    }

    if (v14 == 6)
    {
      return 98.5;
    }

    else
    {
      return v15;
    }
  }

  else
  {
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    if (v17 >= v18)
    {
      v19 = *(v0 + 16);
    }

    else
    {
      v19 = *(v0 + 24);
    }

    v20 = v18 > v17;
    v21 = 0.55;
    if (!v20)
    {
      v21 = 0.6;
    }

    v22 = 0.7;
    if (!v20)
    {
      v22 = 0.565;
    }

    if (v19 <= 460.0)
    {
      v21 = v22;
    }

    v23 = v17 * v21;
    swift_getKeyPath();
    v26[0] = v0;
    sub_1A52415D4();

    swift_beginAccess();
    return v23 - *(v0 + 40);
  }
}

uint64_t sub_1A46AB9F8()
{
  swift_getKeyPath();
  sub_1A46AD948(v1);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 72);
}

double sub_1A46ABA7C(uint64_t a1)
{
  sub_1A5247BA4();
  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_specModel);
  swift_getKeyPath();
  sub_1A46ADB3C();
  sub_1A52415D4();

  if ([*(v4 + 16) globalHeaderBackgroundShouldRespectSafeAreaInsets])
  {
    swift_getKeyPath();
    sub_1A46AD948(v5);
    sub_1A52415D4();

    swift_beginAccess();
    swift_getKeyPath();
    sub_1A52415D4();
  }

  return v3;
}

id sub_1A46ABBD0()
{
  swift_getKeyPath();
  sub_1A46ADB3C();
  sub_1A52415D4();

  v1 = *(v0 + 16);

  return v1;
}

double sub_1A46ABC50(uint64_t a1)
{
  sub_1A5247BA4();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 sharedInstance];
  [v4 interitemSpacing];

  sub_1A46ABA7C(v5);
  if (v6 > 0.0)
  {
    v7 = [objc_opt_self() sharedInstance];
    [v7 sidebarPadding];

    v8 = [v3 sharedInstance];
    [v8 interitemSpacing];
  }

  return v2;
}

void sub_1A46ABD50(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948(v4);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 72);
}

double sub_1A46ABE04()
{
  swift_getKeyPath();
  sub_1A46AD948(v1);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 80);
}

double sub_1A46ABE88@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948(v4);
  sub_1A52415D4();

  swift_beginAccess();
  result = *(v3 + 80);
  *a2 = result;
  return result;
}

uint64_t sub_1A46ABF3C()
{
  swift_getKeyPath();
  sub_1A46AD948(v1);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 128);
}

void sub_1A46ABFC0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948(v4);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_1A46AC074()
{
  swift_getKeyPath();
  sub_1A46AD948(v1);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 129);
}

void sub_1A46AC0F8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948(v4);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 129);
}

void sub_1A46AC1AC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A46AD948(v3);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v5 = *(a2 + v4);
  swift_getObjectType();
  v6 = v5;
  sub_1A524D7A4();
}

void *sub_1A46AC25C()
{
  swift_getKeyPath();
  v6 = v0;
  sub_1A46AD948(v1);
  sub_1A52415D4();

  v2 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v3 = *(v6 + v2);
  v4 = v3;
  return v3;
}

uint64_t (*sub_1A46AC2F0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1A46AC378;
}

void sub_1A46AC378(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
    v3[4] = sub_1A46AE1EC;
    v3[5] = v4;
    *v3 = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1A3D7692C;
    v3[3] = &block_descriptor_42_4;
    v6 = _Block_copy(v3);

    [v5 performChanges_];
    _Block_release(v6);
  }

  free(v3);
}

id sub_1A46AC46C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948(v4);
  sub_1A52415D4();

  v5 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v6 = *(v3 + v5);
  *a2 = v6;

  return v6;
}

void sub_1A46AC510(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A46AC540(v1);
}

void sub_1A46AC540(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v2;
    sub_1A46AD948(v11);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PhotosPreviewHeaderContentView();
  v6 = v5;
  v7 = a1;
  v8 = sub_1A524DBF4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
  v12 = v7;

  v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  aBlock[4] = sub_1A46ADCC0;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_250;
  v14 = _Block_copy(aBlock);

  [v13 performChanges_];
  _Block_release(v14);
}

uint64_t (*sub_1A46AC73C(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A46AD948(v5);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A46AC2F0(v4);
  return sub_1A46AC844;
}

void sub_1A46AC844(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void sub_1A46AC8D8()
{
  v1 = v0;
  swift_getKeyPath();
  v10 = v0;
  sub_1A46AD948(v2);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v4 = *(v10 + v3);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
    v6 = v4;
    sub_1A48E15E0(v5);
  }

  else
  {
    if (qword_1EB15B710 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB15B718);
    v6 = sub_1A5246F04();
    v8 = sub_1A524D244();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v6, v8, "can't present 1-up because of missing content view", v9, 2u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }
  }
}

uint64_t sub_1A46ACA3C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  v1 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__bottomChromeHeight;
  sub_1A46ADAC0(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A46ACB34()
{
  sub_1A46ACA3C();

  return swift_deallocClassInstance();
}

void sub_1A46ACB94(void *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel) dataSourceManager];
  v5 = [v3 dataSource];

  sub_1A49107E4(v5, v4, a1);
}

void sub_1A46ACCA0()
{
  sub_1A46ADAC0(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__bottomChromeHeight;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A52467B4();
}

void sub_1A46ACDB8(uint64_t a1, char a2)
{
  swift_beginAccess();
  sub_1A46ADAC0(0);
  sub_1A52467C4();
}

void sub_1A46ACE24(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A46ADAC0(0);
  sub_1A52467A4();
}

void (*sub_1A46ACEC8(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A46AC73C(v2);
  return sub_1A3D3D728;
}

void sub_1A46ACF3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  v3[4] = sub_1A40178A4;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D7692C;
  v3[3] = &block_descriptor_37_5;
  v2 = _Block_copy(v3);
  [v1 performChanges_];
  _Block_release(v2);
}

void sub_1A46ACFEC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1A3C52C70(0, &qword_1EB126A08, &off_1E7721818);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46ADB3C();
    sub_1A52415C4();
  }
}

id sub_1A46AD128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46ADB3C();
  sub_1A52415D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1A46AD1DC()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1006DC28BB32D3E2873CE0C2560545B221PhotosLayoutSpecModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A46AD290()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B718);
  __swift_project_value_buffer(v0, qword_1EB15B718);
  sub_1A5246EF4();
}

void sub_1A46AD2F4(void *a1, void *a2)
{
  v3 = v2;
  v10 = 0;
  sub_1A46ADAC0(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v3 + 40) = *MEMORY[0x1E69DDCE0];
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 56) = v7;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0x3FF0000000000000;
  *(v3 + 128) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView) = 0;
  v8 = (v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModelObservation);
  *v8 = 0;
  v8[1] = 0;
  sub_1A5241604();
  *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel) = a1;
  v11 = a2;
  sub_1A3C341C8(a2, v3 + 88);
  v9 = a1;
  aBlock = sub_1A47A5E88();
  swift_getKeyPath();
  sub_1A4233CD4();
  sub_1A52467D4();
}

__n128 sub_1A46AD8EC()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 56) = v3;
  *(v1 + 40) = v4;
  return result;
}

unint64_t sub_1A46AD948(double a1)
{
  result = qword_1EB125E08;
  if (!qword_1EB125E08)
  {
    type metadata accessor for PhotosDetailsViewHeaderContainerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125E08);
  }

  return result;
}

void sub_1A46AD9D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 80) = v2;
}

void sub_1A46ADA5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
}

void sub_1A46ADAC0(uint64_t a1)
{
  if (!qword_1EB124A58)
  {
    sub_1A46717CC(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A52467E4();
  }
}

unint64_t sub_1A46ADB3C()
{
  result = qword_1EB173DD0;
  if (!qword_1EB173DD0)
  {
    type metadata accessor for PhotosLayoutSpecModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB173DD0);
  }

  return result;
}

void sub_1A46ADBB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  aBlock[4] = sub_1A46AE1EC;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_46_9;
  v7 = _Block_copy(aBlock);

  [v6 performChanges_];
  _Block_release(v7);
}

void sub_1A46ADCD0(uint64_t a1)
{
  sub_1A46ADAC0(319);
  if (v1 <= 0x3F)
  {
    sub_1A5241614();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A46ADE0C(uint64_t a1)
{
  result = sub_1A5241614();
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

double sub_1A46ADEB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A46AAAF4(a2);
  }

  return result;
}

void sub_1A46ADF50()
{
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1A524D7F4();
}

void sub_1A46ADFE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 129) = v2;
}

void sub_1A46AE03C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 128) = v2;
}

uint64_t sub_1A46AE090()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1A419BCF8();

  return v2;
}

void sub_1A46AE0F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 72) = v2;
}

double sub_1A46AE144(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      sub_1A46ACFEC([*(Strong + 24) spec]);
    }
  }

  return result;
}

uint64_t sub_1A46AE238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AE444(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1A3E87388(v2, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248284();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A46AE444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double LemonadeNavigationContainer.init(navigationContext:content:)@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  v10 = MEMORY[0x1E697DCB8];
  sub_1A46AE444(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LemonadeNavigationContainer(0, a3, a4, v11);
  v13 = v12[9];
  *(a5 + v13) = swift_getKeyPath();
  sub_1A46AE444(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v10);
  swift_storeEnumTagMultiPayload();
  v14 = a5 + v12[12];
  sub_1A524B694();
  *v14 = v18;
  *(v14 + 1) = v19;
  v15 = a5 + v12[13];
  *v15 = swift_getKeyPath();
  *(v15 + 1) = 0;
  *(v15 + 8) = 0;
  *(a5 + v12[10]) = a1;

  a2(v16);

  return result;
}

uint64_t LemonadeNavigationContainer.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v47 = *(a1 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  sub_1A46AEB0C(255);
  v9 = v8;
  v10 = *(a1 + 24);
  sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
  v12 = v11;
  v13 = sub_1A46AF12C();
  v55 = v12;
  v56 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v7;
  v56 = v9;
  v41 = v10;
  v57 = v10;
  v58 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = v7;
  v56 = v9;
  v57 = v10;
  v58 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for LemonadeNavigationStack(0, OpaqueTypeMetadata2, v16, v17);
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  sub_1A46AF234(255);
  v21 = sub_1A5248804();
  v43 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v42 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v44 = &v40 - v24;
  v25 = v3;
  v26 = v41;
  v50 = v7;
  v51 = v41;
  v52 = v3;

  v27 = sub_1A457A75C(sub_1A46AF4DC, OpaqueTypeMetadata2, v16, v20);
  v29 = v46;
  v28 = v47;
  (*(v47 + 16))(v46, v25, a1, v27);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v7;
  *(v31 + 24) = v26;
  (*(v28 + 32))(v31 + v30, v29, a1);
  WitnessTable = swift_getWitnessTable();
  sub_1A4135204();
  v33 = v42;
  sub_1A524AD04();

  (*(v45 + 8))(v20, v18);
  v34 = sub_1A46B0138(&qword_1EB127AA8, sub_1A46AF234, MEMORY[0x1E6980620]);
  v53 = WitnessTable;
  v54 = v34;
  swift_getWitnessTable();
  v36 = v43;
  v35 = v44;
  v37 = *(v43 + 16);
  v37(v44, v33, v21);
  v38 = *(v36 + 8);
  v38(v33, v21);
  v37(v49, v35, v21);
  return (v38)(v35, v21);
}

void sub_1A46AEB0C(uint64_t a1)
{
  if (!qword_1EB140088)
  {
    sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
    sub_1A46AF12C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140088);
    }
  }
}

void sub_1A46AEBC0(uint64_t a1)
{
  if (!qword_1EB140098)
  {
    sub_1A46AEC74(255);
    sub_1A46B0138(&qword_1EB1400C0, sub_1A46AEC74, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140098);
    }
  }
}

void sub_1A46AEC74(uint64_t a1)
{
  if (!qword_1EB1400A0)
  {
    sub_1A46AECE4(255);
    sub_1A46AEF90();
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1400A0);
    }
  }
}

void sub_1A46AECE4(uint64_t a1)
{
  if (!qword_1EB1400A8)
  {
    sub_1A46AED4C(255);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1400A8);
    }
  }
}

void sub_1A46AED4C(uint64_t a1)
{
  if (!qword_1EB1400B0)
  {
    sub_1A3FF1E68();
    sub_1A46AEE8C(255);
    sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68, MEMORY[0x1E697D680]);
    sub_1A52434E4();
    sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0], MEMORY[0x1E69C24E8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1400B0);
    }
  }
}

void sub_1A46AEE8C(uint64_t a1)
{
  if (!qword_1EB121F08)
  {
    sub_1A3FF1E68();
    sub_1A52434E4();
    sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68, MEMORY[0x1E697D680]);
    sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0], MEMORY[0x1E69C24E8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F08);
    }
  }
}

unint64_t sub_1A46AEF90()
{
  result = qword_1EB1400B8;
  if (!qword_1EB1400B8)
  {
    sub_1A46AECE4(255);
    sub_1A3FF1E68();
    sub_1A46AEE8C(255);
    sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68, MEMORY[0x1E697D680]);
    sub_1A52434E4();
    sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0], MEMORY[0x1E69C24E8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A46B0138(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1400B8);
  }

  return result;
}

unint64_t sub_1A46AF12C()
{
  result = qword_1EB1400C8;
  if (!qword_1EB1400C8)
  {
    sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
    sub_1A46AEC74(255);
    sub_1A46B0138(&qword_1EB1400C0, sub_1A46AEC74, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1400C8);
  }

  return result;
}

void sub_1A46AF234(uint64_t a1)
{
  if (!qword_1EB127AA0)
  {
    sub_1A4135204();
    v1 = sub_1A5249D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127AA0);
    }
  }
}

uint64_t sub_1A46AF298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v21 = a4;
  sub_1A46AEB0C(255);
  v8 = v7;
  sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
  sub_1A46AF12C();
  v25 = a2;
  v26 = v8;
  v27 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  type metadata accessor for LemonadeNavigationContainer(0, a2, a3, v16);
  v22 = a2;
  v23 = a3;
  v24 = a1;
  swift_checkMetadataState();
  sub_1A524B0E4();
  v17 = *(v10 + 16);
  v17(v15, v12, OpaqueTypeMetadata2);
  v18 = *(v10 + 8);
  v18(v12, OpaqueTypeMetadata2);
  v17(v21, v15, OpaqueTypeMetadata2);
  return (v18)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_1A46AF4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  sub_1A46AEBC0(0);
  v54 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AEC74(0);
  v51 = v10;
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52498B4();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v45 - v16;
  sub_1A46AE444(0, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = a2;
  v25 = a2;
  v26 = a3;
  v28 = (a1 + *(type metadata accessor for LemonadeNavigationContainer(0, v25, a3, v27) + 48));
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v57) = v29;
  v58 = v30;
  sub_1A46B0944(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v56 == 1)
  {
    v31 = v50;
    sub_1A5249814();
    v32 = (*(v52 + 16))(v14, v31, v53);
    v46 = v18;
    v33 = v51;
    MEMORY[0x1EEE9AC00](v32);
    *(&v45 - 4) = v24;
    *(&v45 - 3) = v26;
    *(&v45 - 2) = a1;
    sub_1A46AECE4(0);
    sub_1A46AEF90();
    v34 = v47;
    sub_1A5247F24();
    v35 = sub_1A46B0138(&qword_1EB1400C0, sub_1A46AEC74, MEMORY[0x1E697BEF0]);
    v36 = v49;
    MEMORY[0x1A5904CD0](v34, v33, v35);
    v37 = v54;
    (*(v8 + 16))(v20, v36, v54);
    (*(v8 + 56))(v20, 0, 1, v37);
    v57 = v33;
    v58 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v20, v37, OpaqueTypeConformance2);
    sub_1A3D19D5C(v20);
    (*(v8 + 8))(v36, v37);
    v39 = v33;
    v18 = v46;
    (*(v48 + 8))(v34, v39);
    (*(v52 + 8))(v50, v53);
  }

  else
  {
    v40 = v54;
    (*(v8 + 56))(v20, 1, 1, v54);
    v41 = sub_1A46B0138(&qword_1EB1400C0, sub_1A46AEC74, MEMORY[0x1E697BEF0]);
    v57 = v51;
    v58 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v20, v40, v42);
    sub_1A3D19D5C(v20);
  }

  v43 = sub_1A46AF12C();
  MEMORY[0x1A5904CD0](v23, v18, v43);
  return sub_1A3D19D5C(v23);
}

uint64_t sub_1A46AFA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v8 = type metadata accessor for LemonadeNavigationContainer(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  sub_1A3FF1E68();
  v13 = v12;
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AED4C(0);
  v17 = *(v16 - 8);
  v32 = v16;
  v33 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v18);
  v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  (*(v9 + 32))(v22 + v21, v11, v8);
  sub_1A524B704();
  sub_1A46AEE8C(0);
  v24 = v23;
  v25 = sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68, MEMORY[0x1E697D680]);
  v26 = sub_1A52434E4();
  v27 = sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0], MEMORY[0x1E69C24E8]);
  v35 = v13;
  v36 = v26;
  v37 = v25;
  v38 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  (*(v31 + 8))(v15, v13);
  v35 = v13;
  v36 = v24;
  v37 = v25;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v29 = v32;
  sub_1A524AA94();
  return (*(v33 + 8))(v20, v29);
}

uint64_t sub_1A46AFE3C()
{
  v0 = sub_1A5248284();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AE238(v3);
  sub_1A5248274();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A46AFF08()
{
  v0 = sub_1A52434E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D84();
  sub_1A3FF1E68();
  sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68, MEMORY[0x1E697D680]);
  sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0], MEMORY[0x1E69C24E8]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A46B0074(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeNavigationContainer(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1A46B0944(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A46B0138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1A46B01D0(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

void sub_1A46B028C(uint64_t a1)
{
  sub_1A46AE444(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A46AE444(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1A46B0944(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A46AE444(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A46B0428(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5248284() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_1A5242D14() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v7 + v15 + 1;
  v17 = v9 + 8;
  v18 = v13 + 8;
  if (v14 >= a2)
  {
    goto LABEL_34;
  }

  v19 = ((((*(v10 + 64) + ((v18 + ((v17 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v19 <= 3)
  {
    v20 = ((a2 - v14 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = *(a1 + v19);
      if (!v23)
      {
        goto LABEL_34;
      }
    }

LABEL_30:
    v25 = (v23 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v26 = *a1;
    }

    else
    {
      v25 = 0;
      v26 = *a1;
    }

    return v14 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_30;
    }
  }

LABEL_34:
  v27 = ((v17 + ((a1 + v16) & ~v15)) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v29 = *(v10 + 48);

    return v29((v27 + v18) & ~v13);
  }

  else
  {
    v28 = *v27;
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }
}

void sub_1A46B0694(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5248284() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1A5242D14() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v14 & 0xF8 | 7;
  v18 = v9 + v17 + 1;
  v19 = v11 + 8;
  v20 = ((((*(v12 + 64) + ((v15 + 8 + ((v19 + (v18 & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v16 >= a3)
  {
    v23 = 0;
    if (v16 >= a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v16 >= a2)
    {
LABEL_23:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v26 = ((v19 + ((a1 + v18) & ~v17)) & 0xFFFFFFFFFFFFFFF8);
      if ((v13 & 0x80000000) != 0)
      {
        v28 = *(v12 + 56);

        v28((v26 + v15 + 8) & ~v15, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v27 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v27 = (a2 - 1);
        }

        *v26 = v27;
      }

      return;
    }
  }

  v24 = ~v16 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = HIWORD(v24) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_33:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_33;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_1A46B0944(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroyTm_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeNavigationContainer(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = v4 + v7;
  sub_1A46AE444(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5248284();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  v10 = v6[9];
  sub_1A46AE444(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v8 + v6[11], v5);

  sub_1A3EF9960(*(v8 + v6[13]), *(v8 + v6[13] + 8), *(v8 + v6[13] + 16), *(v8 + v6[13] + 17));

  return swift_deallocObject();
}

uint64_t sub_1A46B0C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeNavigationContainer(0, *(v4 + 16), *(v4 + 24), a4);

  return sub_1A46AFE3C();
}

uint64_t AsyncSequence.px_first(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3D60150;

  return MEMORY[0x1EEE6DB20](a1, a2, a3, a4, a5);
}

Swift::Void __swiftcall PXCuratedLibraryViewModel.zoomAllPhotos(toColumns:)(Swift::Int toColumns)
{
  v2 = v1;
  v3 = [v1 zoomablePhotosViewModel];
  v4 = [v3 allowedColumns];

  sub_1A3F9ADFC(0, v5);
  v6 = sub_1A524CA34();

  v7 = sub_1A524DBD4();
  v9 = sub_1A46B0ED0(v7, v6, v8);
  LOBYTE(v4) = v10;

  if ((v4 & 1) == 0)
  {
    v11 = [v2 zoomablePhotosViewModel];
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v14[4] = sub_1A46B0FC0;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1A3D7692C;
    v14[3] = &block_descriptor_251;
    v13 = _Block_copy(v14);

    [v11 performChanges_];
    _Block_release(v13);
  }
}

unint64_t sub_1A46B0ED0(uint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v5 = sub_1A524E2B4();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](v6, a2, a3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a2 + 8 * v6 + 32);
    }

    v9 = v7;
    sub_1A3F9ADFC(0, v8);
    v10 = sub_1A524DBF4();

    if (v10)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

id PXCuratedLibraryUIViewController.ppt_navigateToBottom()()
{
  v1 = [v0 viewProvider];
  v2 = [v1 gridView];

  v3 = [v2 scrollViewController];
  [v3 scrollToEdge:3 animated:0];

  result = sub_1A46E5F3C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id PXCuratedLibraryUIViewController.ppt_scroll(toPreviousAssetOfAsset:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 viewProvider];
  v9 = [v8 viewModel];

  v10 = [v9 currentDataSource];
  [v10 indexPathForAssetReference_];
  v18 = v23;
  v20 = aBlock;
  v11 = [v4 viewProvider];
  aBlock = v20;
  v23 = v18;
  [v11 selectableIndexPathClosestToIndexPath:&aBlock fromDataSource:v10 inDirection:6];
  v19 = v27;
  v21 = v26;

  aBlock = v21;
  v23 = v19;
  v12 = [v10 assetReferenceAtItemIndexPath_];
  v13 = [v4 viewProvider];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v24 = sub_1A3DEF314;
  v25 = v14;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_1A4043B58;
  *(&v23 + 1) = &block_descriptor_6_9;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  [v13 scrollLibraryViewToAssetReference:v16 scrollPosition:128 completionHandler:v15];

  _Block_release(v15);
  return v16;
}

void PXCuratedLibraryUIViewController.ppt_navigate(to:revealInOneUp:completionHandler:)(void *a1)
{
  v2 = [a1 asset];
  v3 = [a1 assetCollection];
  sub_1A524E6E4();
  __break(1u);
}

id sub_1A46B137C()
{
  v1 = [*v0 viewProvider];
  v2 = [v1 gridView];

  v3 = [v2 scrollViewController];
  [v3 scrollToEdge:3 animated:0];

  result = sub_1A46E5F3C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1A46B1448(void *a1)
{
  v2 = [a1 asset];
  v3 = [a1 assetCollection];
  sub_1A524E6E4();
  __break(1u);
}

id sub_1A46B14D8()
{
  v1 = [*v0 ppt_navigateToBottom];

  return v1;
}

id sub_1A46B1510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3E01E70;
  v9[3] = &block_descriptor_12_8;
  v6 = _Block_copy(v9);

  v7 = [v5 ppt:a1 scrollToPreviousAssetOfAsset:v6 completion:?];
  _Block_release(v6);

  return v7;
}

double sub_1A46B15DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3D54680;
  v10[3] = &block_descriptor_9_7;
  v8 = _Block_copy(v10);

  [v7 ppt:a1 navigateToAssetReference:a2 & 1 revealInOneUp:v8 completionHandler:?];
  _Block_release(v8);

  return result;
}

void *MapDataProvider.__allocating_init(photoLibraryObjectIdentifier:locationManager:mostRecentCoordinateFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = v8;
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = 0;
  if (a2)
  {
    v8[5] = a2;
  }

  else
  {
    v10 = objc_opt_self();

    v11 = [v10 sharedScheduler];
    v12 = swift_allocObject();
    swift_weakInit();
    v15[4] = sub_1A46B1BAC;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1A3C2E0D0;
    v15[3] = &block_descriptor_252;
    v13 = _Block_copy(v15);

    [v11 scheduleTaskWithQoS:1 block:v13];

    _Block_release(v13);
  }

  return v9;
}

uint64_t sub_1A46B185C(uint64_t a1)
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695FBE8]) init];
    v20 = v6;
    v11 = v10;
    [v10 setDesiredAccuracy_];
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v12 = sub_1A524D474();
    v19 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v11;
    aBlock[4] = sub_1A46B1C48;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_18_4;
    v16 = _Block_copy(aBlock);
    v17 = v11;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C2A46C(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v4, v16);
    _Block_release(v16);

    (*(v2 + 8))(v4, v1);
    return (*(v20 + 8))(v8, v19);
  }

  return result;
}

uint64_t MapDataProvider.deinit()
{

  return v0;
}

uint64_t MapDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1A46B1C48()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 40);
    *(Strong + 40) = v1;

    v5 = v1;
  }

  return result;
}

double sub_1A46B1CB4(id a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
    v2 = a1;
  }

  return result;
}

uint64_t sub_1A46B1CDC()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0x6F686563616C502DLL;
  }

  v2 = *(v0 + 16);
  v3 = v2[2];

  v4 = [v3 localIdentifier];
  v5 = sub_1A524C674();

  sub_1A4267BB4(v2, v1);
  return v5;
}

uint64_t SearchResultItem.objectIdentifier.getter()
{
  result = *(v0 + 24);
  if (*(v0 + 24))
  {
    if (result == 1)
    {
      v2 = &qword_1EB125C30;
      v3 = &qword_1EB1265C0;
      v4 = 0x1E6978980;
      sub_1A3C379F4(0, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980);
      v5 = &qword_1EB1317E0;
    }

    else
    {
      v2 = &qword_1EB12A800;
      v3 = &qword_1EB126AC0;
      v4 = 0x1E6978650;
      sub_1A3C379F4(0, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
      v5 = &qword_1EB12A820;
    }

    sub_1A46B1E60(v5, v2, v3, v4);
    return sub_1A5242564();
  }

  return result;
}

uint64_t sub_1A46B1E60(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C379F4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id *SearchResultItem.id.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v1 = [v1[2] px_opaqueIdentifier];
  }

  return v1;
}

id SearchResultItem.value.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 24))
  {
    v3 = *(*(v1 + 16) + 16);
    result = v3;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t SearchResultItem.name.getter()
{
  v1 = *(v0 + 24);
  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);

    if (v1 == 1)
    {
      v3 = PhotoKitItem<>.name.getter();
    }

    else
    {
      v3 = PhotoKitItem<>.title.getter();
    }

    v4 = v3;
    sub_1A4267BB4(v2, v1);
    return v4;
  }

  return v1;
}

uint64_t SearchResultItem.title.getter()
{
  v1 = *(v0 + 24);
  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);
    if (v1 == 1)
    {

      v1 = PhotoKitItem<>.name.getter();
      sub_1A4267BB4(v2, 1);
    }

    else
    {

      v1 = PhotoKitItem<>.title.getter();
      if (v3)
      {
        v4 = [objc_opt_self() defaultHelper];
        v5 = sub_1A524C634();

        v6 = [v4 displayableTextForTitle:v5 intent:1];

        v1 = sub_1A524C674();
      }

      sub_1A4267BB4(v2, 2);
    }
  }

  return v1;
}

uint64_t SearchResultItem.collectionKindName.getter()
{
  v1 = sub_1A5243994();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultItem.collectionItemType.getter(v4);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E69C2700])
  {
    result = *(v0 + 24);
    if (*(v0 + 24))
    {
      if (result == 1)
      {
        v7 = *(v0 + 16);
        v8 = v7[2];

        v9._countAndFlagsBits = 0xD000000000000023;
        v9._object = 0x80000001A53E4BF0;
        v13.value.rawValue = 0;
        v13.is_nil = 0;
        countAndFlagsBits = LemonadeLocalizedStringForPersonOrPet(person:key:visibility:)(v8, v9, v13)._countAndFlagsBits;
        sub_1A4267BB4(v7, 1);
        return countAndFlagsBits;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (v5 == *MEMORY[0x1E69C26F8])
    {
      v11 = 0xD000000000000029;
      return sub_1A3C38BD4(v11);
    }

    if (v5 == *MEMORY[0x1E69C26E8])
    {
LABEL_8:
      v11 = 0xD000000000000028;
      return sub_1A3C38BD4(v11);
    }

    if (v5 == *MEMORY[0x1E69C2710])
    {
      goto LABEL_11;
    }

    if (v5 == *MEMORY[0x1E69C26E0])
    {
      v11 = 0xD000000000000027;
      return sub_1A3C38BD4(v11);
    }

    if (v5 == *MEMORY[0x1E69C26F0])
    {
      goto LABEL_8;
    }

    if (v5 == *MEMORY[0x1E69C26D0])
    {
LABEL_11:
      v11 = 0xD00000000000002CLL;
      return sub_1A3C38BD4(v11);
    }

    if (v5 == *MEMORY[0x1E69C2708])
    {
      v11 = 0xD00000000000002FLL;
      return sub_1A3C38BD4(v11);
    }

    if (v5 == *MEMORY[0x1E69C26D8])
    {
      return 0;
    }

    else
    {
      result = sub_1A524E6E4();
      __break(1u);
    }
  }

  return result;
}

void SearchResultItem.collectionItemType.getter(uint64_t a1@<X8>)
{
  if (!*(v1 + 24))
  {
    v3 = MEMORY[0x1E69C26D8];
    goto LABEL_5;
  }

  if (*(v1 + 24) != 1)
  {
    v7 = *(v1 + 16);
    v8 = v7[2];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      sub_1A52445C4();
      v11 = sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
      v28 = v11;
      v27[0] = v10;
      v12 = v8;
      sub_1A46B1CB4(v7, 2);
      v13 = sub_1A5244E84();
      __swift_destroy_boxed_opaque_existential_0(v27);
      if (v13)
      {
        v14 = *MEMORY[0x1E69C26F0];
        v15 = sub_1A5243994();
        (*(*(v15 - 8) + 104))(a1, v14, v15);

        sub_1A4267BB4(v7, 2);
        return;
      }

      sub_1A52445A4();
      v28 = v11;
      v27[0] = v10;
      v23 = sub_1A5244E84();
      sub_1A4267BB4(v7, 2);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v20 = sub_1A5243994();
      v21 = *(*(v20 - 8) + 104);
      if ((v23 & 1) == 0)
      {
        v22 = MEMORY[0x1E69C26F8];
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
        v24 = [v8 transientIdentifier];
        if (v24)
        {
          v25 = v24;
          sub_1A524C674();

          sub_1A524C674();
          v26 = sub_1A524C894();

          sub_1A4267BB4(v7, 2);

          if (v26)
          {
            v3 = MEMORY[0x1E69C2710];
            goto LABEL_5;
          }
        }

        else
        {
          sub_1A4267BB4(v7, 2);
        }

        v3 = MEMORY[0x1E69C26E8];
        goto LABEL_5;
      }

      v17 = v16;
      sub_1A5244D04();
      v28 = sub_1A3C52C70(0, &qword_1EB126AA0, 0x1E69789F0);
      v27[0] = v17;
      v18 = v8;
      v19 = sub_1A5244E84();
      __swift_destroy_boxed_opaque_existential_0(v27);
      v20 = sub_1A5243994();
      v21 = *(*(v20 - 8) + 104);
      if ((v19 & 1) == 0)
      {
        v22 = MEMORY[0x1E69C26F0];
LABEL_17:
        v21(a1, *v22, v20);
        return;
      }
    }

    v22 = MEMORY[0x1E69C26E0];
    goto LABEL_17;
  }

  v3 = MEMORY[0x1E69C2700];
LABEL_5:
  v4 = *v3;
  v5 = sub_1A5243994();
  v6 = *(*(v5 - 8) + 104);

  v6(a1, v4, v5);
}

uint64_t SearchResultItem.collectionKindSymbol.getter()
{
  v1 = sub_1A5243994();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultItem.collectionItemType.getter(v4);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 != *MEMORY[0x1E69C2700])
  {
    if (v5 == *MEMORY[0x1E69C26F8])
    {
      return 0x736569726F6D656DLL;
    }

    if (v5 == *MEMORY[0x1E69C2710])
    {
      return 0x6569762E74786574;
    }

    if (v5 == *MEMORY[0x1E69C26E0])
    {
      return 0x6573616374697573;
    }

    if (v5 == *MEMORY[0x1E69C26D8])
    {
      return 0;
    }

    (*(v2 + 8))(v4, v1);
    return 0xD000000000000014;
  }

  if (*(v0 + 24) != 1)
  {
    return 0xD000000000000014;
  }

  v6 = *(v0 + 16);

  v7 = PhotoKitItem<>.isPet.getter();
  sub_1A4267BB4(v6, 1);
  if (v7)
  {
    return 0x746E697270776170;
  }

  else
  {
    return 0x662E6E6F73726570;
  }
}

id SearchResultItem.count.getter()
{
  if (*(v0 + 24) < 2u)
  {
    return 0;
  }

  v2 = *(v0 + 16);

  v3 = PhotoKitItem<>.count.getter();
  sub_1A4267BB4(v2, 2);
  return v3;
}

uint64_t sub_1A46B2A10@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24) && *(v2 + 24) != 1)
  {
    v11 = *(v2 + 16);
    v12 = v11[2];

    v13 = [v12 *a1];
    if (v13)
    {
      v14 = v13;
      sub_1A52410F4();

      sub_1A4267BB4(v11, 2);
      v15 = sub_1A5241144();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    }

    else
    {
      sub_1A4267BB4(v11, 2);
      v16 = sub_1A5241144();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_1A3E98DA0(v7, a2);
  }

  else
  {
    v8 = sub_1A5241144();
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

uint64_t SearchResultItem.keyAssets.getter()
{
  if (*(v0 + 24) < 2u)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0 + 16);

  v3 = PhotoKitItem<>.keyAssets.getter();
  sub_1A4267BB4(v2, 2);
  return v3;
}

uint64_t SearchResultItem.isFavorite.getter()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 24))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  if (v1 == 1)
  {
    v3 = &protocol witness table for PHPerson;
  }

  else
  {
    v3 = &protocol witness table for PHCollection;
  }

  v4 = PhotoKitItem<>.isFavorite.getter(v3);
  sub_1A4267BB4(v2, v1);
  return v4 & 1;
}

void sub_1A46B2C9C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 24);
  if (*(*a1 + 24))
  {
    v4 = *(*a1 + 16);
    if (v3 == 1)
    {
      v5 = &protocol witness table for PHPerson;
    }

    else
    {
      v5 = &protocol witness table for PHCollection;
    }

    v6 = PhotoKitItem<>.isFavorite.getter(v5);
    sub_1A4267BB4(v4, v3);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6 & 1;
}

void sub_1A46B2D1C(unsigned __int8 *a1, uint64_t a2)
{
  if (*(*a2 + 24) == 1)
  {
    v2 = *(*a2 + 16);
    v3 = *a1;

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(v3, 0, &protocol witness table for PHPerson);

    sub_1A4267BB4(v2, 1);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void SearchResultItem.isFavorite.setter(char a1)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *(v1 + 16);

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(a1 & 1, 0, &protocol witness table for PHPerson);

    sub_1A4267BB4(v3, 1);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void (*SearchResultItem.isFavorite.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  v4 = *(v1 + 24);
  *(a1 + 9) = v4;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = &protocol witness table for PHPerson;
    }

    else
    {
      v5 = &protocol witness table for PHCollection;
    }

    v6 = PhotoKitItem<>.isFavorite.getter(v5);
    sub_1A4267BB4(v3, v4);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6 & 1;
  return sub_1A46B2FCC;
}

void sub_1A46B2FCC(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    v1 = *a1;
    v2 = *(a1 + 8);

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(v2, 0, &protocol witness table for PHPerson);

    sub_1A4267BB4(v1, 1);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

uint64_t SearchResultItem.isPet.getter()
{
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 16);

  v2 = PhotoKitItem<>.isPet.getter();
  sub_1A4267BB4(v1, 1);
  return v2 & 1;
}

uint64_t SearchResultItem.description.getter()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53E4CA0);
  sub_1A524E624();
  return 0;
}

uint64_t SearchResultItem.diagnosticDescription.getter()
{
  MEMORY[0x1A5907B60](0x49676E696B636162, 0xED0000203A6D6574);
  sub_1A524E624();
  return 0;
}

uint64_t SearchResultItem.__deallocating_deinit()
{
  sub_1A4267BB4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1A46B32AC()
{
  v1 = *(*v0 + 24);
  if (*(*v0 + 24))
  {
    v2 = *(*v0 + 16);

    if (v1 == 1)
    {
      v3 = PhotoKitItem<>.name.getter();
    }

    else
    {
      v3 = PhotoKitItem<>.title.getter();
    }

    v4 = v3;
    sub_1A4267BB4(v2, v1);
    return v4;
  }

  return v1;
}

id sub_1A46B334C()
{
  if (*(*v0 + 24) < 2u)
  {
    return 0;
  }

  v2 = *(*v0 + 16);

  v3 = PhotoKitItem<>.count.getter();
  sub_1A4267BB4(v2, 2);
  return v3;
}

uint64_t sub_1A46B3400()
{
  if (*(*v0 + 24) < 2u)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(*v0 + 16);

  v3 = PhotoKitItem<>.keyAssets.getter();
  sub_1A4267BB4(v2, 2);
  return v3;
}

uint64_t sub_1A46B345C()
{
  if (*(*v0 + 24) != 1)
  {
    return 0;
  }

  v1 = *(*v0 + 16);

  v2 = PhotoKitItem<>.isPet.getter();
  sub_1A4267BB4(v1, 1);
  return v2 & 1;
}

id sub_1A46B3520@<X0>(void *a1@<X8>)
{
  if (*(*v1 + 24))
  {
    v3 = *(*(*v1 + 16) + 16);
    result = v3;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1A46B3588()
{
  result = *(*v0 + 24);
  if (*(*v0 + 24))
  {
    if (result == 1)
    {
      v2 = &qword_1EB125C30;
      v3 = &qword_1EB1265C0;
      v4 = 0x1E6978980;
      sub_1A3C379F4(0, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980);
      v5 = &qword_1EB1317E0;
    }

    else
    {
      v2 = &qword_1EB12A800;
      v3 = &qword_1EB126AC0;
      v4 = 0x1E6978650;
      sub_1A3C379F4(0, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
      v5 = &qword_1EB12A820;
    }

    sub_1A46B1E60(v5, v2, v3, v4);
    return sub_1A5242564();
  }

  return result;
}

uint64_t sub_1A46B3668()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53E4CA0);
  sub_1A524E624();
  return 0;
}

id *sub_1A46B3704@<X0>(id **a1@<X8>)
{
  result = SearchResultItem.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A46B3730()
{
  v1 = *(*v0 + 24);
  if (!*(*v0 + 24))
  {
    return 0;
  }

  v2 = *(*v0 + 16);
  if (v1 == 1)
  {
    v3 = &protocol witness table for PHPerson;
  }

  else
  {
    v3 = &protocol witness table for PHCollection;
  }

  v4 = PhotoKitItem<>.isFavorite.getter(v3);
  sub_1A4267BB4(v2, v1);
  return v4 & 1;
}

uint64_t sub_1A46B37A8()
{
  MEMORY[0x1A5907B60](0x49676E696B636162, 0xED0000203A6D6574);
  sub_1A524E624();
  return 0;
}

void sub_1A46B3838()
{
  sub_1A46B3AD4(&qword_1EB12A4C0, &protocol conformance descriptor for SearchResultItem);

    ;
  }
}

uint64_t sub_1A46B3A20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A46B3A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A46B3AD4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchResultItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46B4028()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A46B4060()
{
  sub_1A46B4028();

  return swift_deallocClassInstance();
}

uint64_t sub_1A46B4094(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PhotoStyleElement(0);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A46B4698(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A46B42AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A46B5674(0);
    v2 = sub_1A524E3C4();
    v15 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      type metadata accessor for PhotoStyleElement(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A46B447C(v9 + 1);
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

void sub_1A46B447C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A46B5674(0);
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

void sub_1A46B4698(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A46B447C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A46B47F8();
      goto LABEL_12;
    }

    sub_1A46B493C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PhotoStyleElement(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

void sub_1A46B47F8()
{
  v1 = v0;
  sub_1A46B5674(0);
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

void sub_1A46B493C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A46B5674(0);
  v4 = sub_1A524E3B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1A524DBE4();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

        v2 = v25;
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

void *sub_1A46B4B44(uint64_t a1, __n128 a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1A524E2B4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2)
    {
LABEL_3:
      sub_1A40C9D70(v2, 0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1A46B4BF4(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_1A46B4C14(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

void *sub_1A46B4C14(void *result, int64_t a2, char a3, void *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A46B5288(0, &qword_1EB1400E0, sub_1A421EB24, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A421EB24();
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1A46B4D60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1A524E274();
  type metadata accessor for PhotoStyleElement(0);
  sub_1A46B5500(&qword_1EB1400D0, MEMORY[0x1E69E81B8]);
  result = sub_1A524CF84();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
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

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1A524E304())
      {
        goto LABEL_30;
      }

      type metadata accessor for PhotoStyleElement(0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
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
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
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
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1A46B4F78(unint64_t a1, __n128 a2)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v5 = type metadata accessor for PhotoStyleElement(0);
    v6 = sub_1A46B5500(&qword_1EB1400D0, MEMORY[0x1E69E81B8]);
    result = MEMORY[0x1A59082D0](i, v5, v6);
    v13 = result;
    if (j)
    {
      break;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1A59097F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A46B4094(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v9 = result;
  v8 = sub_1A524E2B4();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1A46B50C4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for PhotoStyleElement(255);
  v7 = *(v5 + 80);
  swift_getTupleTypeMetadata2();
  v8 = sub_1A524CAB4();
  v9 = sub_1A46B5500(&qword_1EB1400D0, MEMORY[0x1E69E81B8]);
  v10 = sub_1A3C3DFB4(v8, v6, v7, v9);

  v11 = MEMORY[0x1E69E7CC0];
  v2[2] = v10;
  v2[3] = v11;
  v2[4] = a2;
  v2[5] = v11;
  swift_unknownObjectRetain();
  sub_1A46B3B84(a1);
}

uint64_t sub_1A46B51A8(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A46B5288(255, &qword_1EB1400D8, type metadata accessor for PhotoStyleElement, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A46B5288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46B52EC(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  swift_getObjectType();
  v6 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A40D2CE0();
    sub_1A40D743C();
    if (sub_1A524E114())
    {
      swift_beginAccess();
      sub_1A46B5500(&qword_1EB1400D0, MEMORY[0x1E69E81B8]);
      v7 = v5;
      sub_1A524C484();

      if (!v6)
      {
        swift_endAccess();
        sub_1A524E6E4();
        __break(1u);
        return;
      }

      swift_endAccess();
      (*(v4 + 16))(v7, v3, v4);
      swift_beginAccess();
      sub_1A524C454();
      v8 = v7;
      swift_unknownObjectRetain();
      sub_1A524C494();
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A46B5500(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotoStyleElement(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A46B5544@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  type metadata accessor for PhotoStyleElement(0);
  sub_1A46B5500(&qword_1EB1400D0, MEMORY[0x1E69E81B8]);
  v7 = v6;
  sub_1A524C484();

  v8 = v10;
  if (!v10)
  {
    (*(v5 + 24))(v4, v5);
    v8 = (*(v5 + 16))(v7, v4, v5);
    swift_unknownObjectRelease();
  }

  *a2 = v7;
  a2[1] = v8;
  return v7;
}

double sub_1A46B5654@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  swift_unknownObjectRetain();
  return result;
}

void sub_1A46B5674(uint64_t a1)
{
  if (!qword_1EB1400F0)
  {
    type metadata accessor for PhotoStyleElement(255);
    sub_1A46B5500(&qword_1EB1400D0, MEMORY[0x1E69E81B8]);
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1400F0);
    }
  }
}

Swift::String __swiftcall LemonadeLocalizedStringForPersonOrPet(person:key:visibility:)(PHPerson *person, Swift::String key, __C::PXPeoplePetsHomeVisibility_optional visibility)
{
  rawValue = visibility.value.rawValue;
  if (visibility.is_nil)
  {
    v5 = [(PHPerson *)person photoLibrary];
    if (!v5)
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v5;
    rawValue = [v5 px_peoplePetsHomeVisibility];
  }

  v8 = objc_opt_self();
  v9 = sub_1A524C634();
  v10 = [v8 locKeyForPersonOrPet:person withVisibility:rawValue key:v9];

  if (!v10)
  {
    sub_1A524C674();
    v10 = sub_1A524C634();
  }

  v11 = PXLemonadeLocalizedString(v10);

  v12 = sub_1A524C674();
  v14 = v13;

  v5 = v12;
  v6 = v14;
LABEL_8:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t LemonadeLocalizedStringForPeople(_:key:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  v5 = [v3 locKeyForPeople:a1 key:v4];

  if (!v5)
  {
    sub_1A524C674();
    v5 = sub_1A524C634();
  }

  v6 = PXLemonadeLocalizedString(v5);

  v7 = sub_1A524C674();
  return v7;
}

Swift::String __swiftcall LemonadeLocalizedPeopleAndPetsTitle(for:key:)(PHPhotoLibrary a1, Swift::String key)
{
  v2 = [(objc_class *)a1.super.isa px_peoplePetsHomeVisibility];
  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  v5 = [v3 locKeyForPersonOrPet:0 withVisibility:v2 key:v4];

  if (!v5)
  {
    sub_1A524C674();
    v5 = sub_1A524C634();
  }

  v6 = PXLemonadeLocalizedString(v5);

  v7 = sub_1A524C674();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t PHSocialGroup.px_title.getter()
{
  v1 = [v0 customTitle];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  v8 = [v0 px_defaultTitle];
  v9 = sub_1A524C674();

  return v9;
}

id sub_1A46B5A7C(void *a1, uint64_t a2)
{
  type metadata accessor for PeopleUtilities(0, a2);
  v3 = a1;
  v4 = sub_1A3C6E9EC();
  v5 = sub_1A3D782CC(v3, v4);
  v6 = [objc_opt_self() titleStringForPeople_];
  if (!v6)
  {
    sub_1A524C674();
    v6 = sub_1A524C634();
  }

  return v6;
}

uint64_t PHSocialGroup.px_defaultTitle.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PeopleUtilities(0, a2);
  v3 = sub_1A3C6E9EC();
  v4 = sub_1A3D782CC(v2, v3);
  v5 = [objc_opt_self() titleStringForPeople_];
  v6 = sub_1A524C674();

  return v6;
}

uint64_t PHSocialGroup.px_title(for:)(uint64_t a1)
{
  v3 = [v1 customTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  if (a1)
  {
    if ([swift_unknownObjectRetain() count] >= 1)
    {
      v10 = [objc_opt_self() titleStringForPeople_];
      v11 = sub_1A524C674();
      swift_unknownObjectRelease();

      return v11;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_1A46B5CB4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  PHSocialGroup.px_title(for:)(a3);
  swift_unknownObjectRelease();

  v6 = sub_1A524C634();

  return v6;
}

Swift::String __swiftcall PHSocialGroup.px_fetchEmptyContentString()()
{
  v2 = v1;
  type metadata accessor for PeopleUtilities(0, v0);
  v3 = sub_1A3D782CC(v1, 3);
  v4 = [v3 fetchedObjects];
  if (!v4)
  {
    goto LABEL_32;
  }

  v6 = v4;
  sub_1A3DEF040(0, v5);
  v7 = sub_1A524CA34();
  v8 = v7;
  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_23:

    goto LABEL_24;
  }

  v10 = sub_1A524E2B4();
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1A59097F0](0, v8);
    if (!__OFSUB__(v10, 1))
    {
      v14 = MEMORY[0x1A59097F0](v10 - 1, v8);
      goto LABEL_9;
    }

    goto LABEL_31;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    __break(1u);
    goto LABEL_29;
  }

  v12 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 >= v11)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1A524E404();

    v37 = [v2 localIdentifier];
    v38 = sub_1A524C674();
    v40 = v39;

    MEMORY[0x1A5907B60](v38, v40);

    v35 = sub_1A524E6E4();
    __break(1u);
    goto LABEL_33;
  }

  v13 = *(v8 + 32 + 8 * v12);
  v2 = *(v8 + 32);
  v14 = v13;
LABEL_9:
  v15 = v14;
  if (v9)
  {
    v16 = sub_1A524E2B4();
  }

  else
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 == 2)
  {
    v17 = [v2 px_localizedName];
    v18 = sub_1A524C674();
    v20 = v19;

    v21 = [v15 px_localizedName];
    v22 = sub_1A524C674();
    v24 = v23;

    v25 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v25 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      sub_1A3C38BD4(0xD00000000000002CLL);
      sub_1A3E072BC(0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1A52FC9F0;
      v28 = MEMORY[0x1E69E6158];
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v29 = sub_1A3D710E8();
      *(v27 + 32) = v18;
      *(v27 + 40) = v20;
      *(v27 + 96) = v28;
      *(v27 + 104) = v29;
      *(v27 + 64) = v29;
      *(v27 + 72) = v22;
      *(v27 + 80) = v24;
      v30 = sub_1A524C6C4();
      v32 = v31;
    }

    else
    {
LABEL_21:

      v30 = LemonadeLocalizedStringForPeople(_:key:)(v6, 0xD00000000000002ELL);
      v32 = v33;
    }

    goto LABEL_25;
  }

LABEL_24:
  v30 = LemonadeLocalizedStringForPeople(_:key:)(v6, 0xD00000000000002CLL);
  v32 = v34;
  v15 = v6;
  v2 = v3;
LABEL_25:

  v35 = v30;
  v36 = v32;
LABEL_33:
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

id sub_1A46B6118(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A524C634();

  return v5;
}

id sub_1A46B6240(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3C2E0D0;
    v7[3] = &block_descriptor_7_3;
    v3 = _Block_copy(v7);
  }

  return v3;
}

id sub_1A46B6308(char a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v16[OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_level] = a1 & 1;
  sub_1A3C341C8(a2, &v16[OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_item]);
  sub_1A3C341C8(a3, &v16[OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_displayItem]);
  v17 = &v16[OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_px_photosViewTouchableHitTestResultTouchAction];
  *v17 = a6;
  v17[1] = a7;
  v20.receiver = v16;
  v20.super_class = v8;

  v18 = objc_msgSendSuper2(&v20, sel_initWithSpriteReference_layout_identifier_userDataProvider_, a4, a5, 0, 0);

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

id sub_1A46B646C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsHitTestResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void presentPhototype(_:from:context:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 8);
    v7[0] = *a3;
    v8 = v4;
    v9 = *(a3 + 16);
    v5 = a2;
    v6 = sub_1A46B65A4(a1, v7);
    [v5 presentViewController:v6 animated:1 completion:0];
  }
}

id sub_1A46B65A4(uint64_t a1, char *a2)
{
  v3 = *a2;
  v19 = *(a2 + 8);
  v4 = *(a2 + 3);
  sub_1A46B67E0(0);
  sub_1A3C341C8(a1, v24);
  v5 = v25;
  v6 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v6 + 40))(v23, v5, v6);
  v7 = v23[0];
  v8 = v25;
  v9 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v20[0] = v3;
  v21 = v19;
  v22 = v4;
  (*(v9 + 32))(v23, v20, v8, v9);
  v10 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 16], v11);
  v14 = sub_1A524B8E4();
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  LOBYTE(v24[0]) = v7;
  v24[1] = v14;
  v15 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v24);
  result = [v15 view];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() systemBackgroundColor];
    [v17 setBackgroundColor_];

    [v15 setModalPresentationStyle_];
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A46B67E0(uint64_t a1)
{
  if (!qword_1EB140178)
  {
    sub_1A46B8E70(255, &qword_1EB140180, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhototypeRootContainer);
    v3 = v2;
    v4 = sub_1A46B6888();
    v6 = type metadata accessor for PXSwiftUIHostingViewController(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB140178);
    }
  }
}

unint64_t sub_1A46B6888()
{
  result = qword_1EB140188;
  if (!qword_1EB140188)
  {
    sub_1A46B8E70(255, &qword_1EB140180, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhototypeRootContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140188);
  }

  return result;
}

void presentPhototype(_:in:context:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v6[0] = *a3;
  v7 = v4;
  v8 = *(a3 + 16);
  v5 = sub_1A46B65A4(a1, v6);
  [a2 presentViewController:v5 animated:1 completionHandler:0];
}

uint64_t sub_1A46B6988@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 40))(v23, v9, v10);
  *a3 = v23[0];
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v19[0] = v5;
  v20 = v7;
  v21 = v6;
  v22 = v8;
  (*(v12 + 32))(v23, v19, v11, v12);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v13 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v14);
  *(a3 + 8) = sub_1A524B8E4();
  __swift_destroy_boxed_opaque_existential_0(v23);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A46B6B2C@<X0>(_BYTE *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  type metadata accessor for PhototypeRootContainer(0, a3, a4, a3);
  return a2();
}

uint64_t sub_1A46B6B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = *(a1 + 16);
  sub_1A46B7A58(255);
  v4 = sub_1A5248804();
  v127 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  WitnessTable = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v133 = &v122 - v7;
  sub_1A5248464();
  sub_1A46B7C40(255);
  v9 = v8;
  v131 = a1;
  v10 = *(a1 + 24);
  sub_1A46B7CF4(255);
  v12 = v11;
  v13 = sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4, MEMORY[0x1E697BEF0]);
  v181 = v12;
  v182 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v181 = v3;
  v182 = v9;
  v183 = v10;
  v184 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v181 = v3;
  v182 = v9;
  v183 = v10;
  v184 = OpaqueTypeConformance2;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = OpaqueTypeMetadata2;
  v16 = sub_1A5248834();
  v148 = v4;
  v17 = sub_1A5249754();
  v135 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v122 - v18;
  v146 = v16;
  v137 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v122 - v23;
  v147 = v10;
  v24 = sub_1A5248834();
  v136 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v128 = &v122 - v28;
  v29 = sub_1A5249754();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v122 - v31;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v122 - v37;
  v140 = v39;
  v144 = v17;
  v40 = v138;
  v41 = sub_1A5249754();
  v142 = *(v41 - 8);
  v143 = v41;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v141 = &v122 - v44;
  v45 = *v40;
  if (v45 > 1)
  {
    v136 = v19;
    v139 = v24;
    if (v45 == 2)
    {
      MEMORY[0x1EEE9AC00](v42);
      v59 = v147;
      *(&v122 - 4) = v3;
      *(&v122 - 3) = v59;
      *(&v122 - 2) = v40;
      v60 = v130;
      sub_1A5248824();
      v61 = v146;
      WitnessTable = swift_getWitnessTable();
      v62 = v137;
      v63 = *(v137 + 16);
      v64 = v129;
      v63(v129, v60, v61);
      v65 = *(v62 + 8);
      v137 = v62 + 8;
      v138 = v65;
      (v65)(v60, v61);
      v63(v60, v64, v61);
      v66 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58, MEMORY[0x1E697EC18]);
      v165 = v59;
      v166 = v66;
      v67 = v148;
      v68 = swift_getWitnessTable();
      v69 = v136;
      v70 = WitnessTable;
      sub_1A3DF4798(v60, v61, v67, WitnessTable, v68);
      v71 = swift_getWitnessTable();
      v163 = v59;
      v164 = v71;
      v72 = v140;
      v73 = swift_getWitnessTable();
      v161 = v70;
      v162 = v68;
      v74 = v144;
      v75 = swift_getWitnessTable();
      v57 = v141;
      sub_1A3DF4890(v69, v72, v74, v73, v75);
      (*(v135 + 8))(v69, v74);
      v76 = v138;
      (v138)(v130, v61);
      v76(v129, v61);
    }

    else
    {
      sub_1A524BC14();
      sub_1A46B7ABC(0);
      sub_1A46B7B68();
      v95 = WitnessTable;
      v59 = v147;
      sub_1A524B0A4();
      v96 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58, MEMORY[0x1E697EC18]);
      v179 = v59;
      v180 = v96;
      v97 = v148;
      v137 = swift_getWitnessTable();
      v98 = v127;
      v99 = *(v127 + 16);
      v100 = v133;
      v99(v133, v95, v97);
      v138 = *(v98 + 8);
      (v138)(v95, v97);
      v99(v95, v100, v97);
      v101 = v146;
      v102 = swift_getWitnessTable();
      v103 = v95;
      v104 = v137;
      sub_1A3DF4890(v103, v101, v97, v102, v137);
      v105 = swift_getWitnessTable();
      v177 = v59;
      v178 = v105;
      v106 = v140;
      v107 = swift_getWitnessTable();
      v175 = v102;
      v176 = v104;
      v108 = v144;
      v109 = swift_getWitnessTable();
      v110 = v136;
      v111 = v107;
      v57 = v141;
      sub_1A3DF4890(v136, v106, v108, v111, v109);
      (*(v135 + 8))(v110, v108);
      v112 = v138;
      (v138)(WitnessTable, v97);
      v112(v133, v97);
    }
  }

  else
  {
    v137 = v30;
    if (v45)
    {
      MEMORY[0x1EEE9AC00](v42);
      v77 = v24;
      v78 = v147;
      *(&v122 - 4) = v3;
      *(&v122 - 3) = v78;
      *(&v122 - 2) = v40;
      sub_1A5248824();
      v135 = MEMORY[0x1E697C1A8];
      v79 = swift_getWitnessTable();
      v80 = v26;
      v81 = v136;
      v82 = *(v136 + 2);
      v83 = v128;
      v139 = v77;
      v82(v128, v80, v77);
      v138 = *(v81 + 8);
      v136 = (v81 + 8);
      (v138)(v80, v77);
      v123 = v80;
      v82(v80, v83, v77);
      v84 = v132;
      sub_1A3DF4890(v80, v3, v77, v78, v79);
      v159 = v78;
      v160 = v79;
      v59 = v78;
      v85 = v140;
      v86 = swift_getWitnessTable();
      v87 = swift_getWitnessTable();
      v88 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58, MEMORY[0x1E697EC18]);
      v157 = v59;
      v158 = v88;
      v89 = swift_getWitnessTable();
      v155 = v87;
      v156 = v89;
      v90 = v85;
      v91 = v144;
      v92 = swift_getWitnessTable();
      v57 = v141;
      sub_1A3DF4798(v84, v90, v91, v86, v92);
      v93 = v139;
      (*(v137 + 8))(v84, v90);
      v94 = v138;
      (v138)(v123, v93);
      v94(v128, v93);
    }

    else
    {
      v46 = *(v131 + 36);
      v124 = v32;
      v47 = *(v32 + 16);
      v47(v38, &v40[v46], v3, v43);
      (v47)(v35, v38, v3);
      v48 = swift_getWitnessTable();
      v49 = v132;
      v50 = v147;
      sub_1A3DF4798(v35, v3, v24, v147, v48);
      v153 = v50;
      v154 = v48;
      v51 = v140;
      v138 = swift_getWitnessTable();
      v52 = swift_getWitnessTable();
      v53 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58, MEMORY[0x1E697EC18]);
      v151 = v50;
      v152 = v53;
      v54 = swift_getWitnessTable();
      v149 = v52;
      v150 = v54;
      v55 = v144;
      v56 = swift_getWitnessTable();
      v57 = v141;
      sub_1A3DF4798(v49, v51, v55, v138, v56);
      (*(v137 + 8))(v49, v51);
      v58 = *(v124 + 8);
      v58(v35, v3);
      v59 = v147;
      v58(v38, v3);
    }
  }

  v113 = swift_getWitnessTable();
  v173 = v59;
  v174 = v113;
  v114 = swift_getWitnessTable();
  v115 = swift_getWitnessTable();
  v116 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58, MEMORY[0x1E697EC18]);
  v171 = v59;
  v172 = v116;
  v117 = swift_getWitnessTable();
  v169 = v115;
  v170 = v117;
  v118 = swift_getWitnessTable();
  v167 = v114;
  v168 = v118;
  v119 = v143;
  swift_getWitnessTable();
  v120 = v142;
  (*(v142 + 16))(v145, v57, v119);
  return (*(v120 + 8))(v57, v119);
}

void sub_1A46B7A58(uint64_t a1)
{
  if (!qword_1EB140190)
  {
    sub_1A46B7ABC(255);
    sub_1A46B7B68();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140190);
    }
  }
}

void sub_1A46B7ABC(uint64_t a1)
{
  if (!qword_1EB140198)
  {
    type metadata accessor for DismissButton(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140198);
    }
  }
}

uint64_t type metadata accessor for DismissButton(uint64_t a1)
{
  result = qword_1EB1CDEB0;
  if (!qword_1EB1CDEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A46B7B68()
{
  result = qword_1EB1401A0;
  if (!qword_1EB1401A0)
  {
    sub_1A46B7ABC(255);
    sub_1A46B7BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1401A0);
  }

  return result;
}

unint64_t sub_1A46B7BE8()
{
  result = qword_1EB1CDDA0[0];
  if (!qword_1EB1CDDA0[0])
  {
    type metadata accessor for DismissButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CDDA0);
  }

  return result;
}

void sub_1A46B7C40(uint64_t a1)
{
  if (!qword_1EB1401A8)
  {
    sub_1A46B7CF4(255);
    sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1401A8);
    }
  }
}

void sub_1A46B7CF4(uint64_t a1)
{
  if (!qword_1EB1401B0)
  {
    type metadata accessor for DismissButton(255);
    sub_1A46B7BE8();
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1401B0);
    }
  }
}

uint64_t sub_1A46B7D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A46B7DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhototypeRootContainer(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 36), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1A46B7EB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v19 = a3;
  sub_1A46B7C40(255);
  v6 = v5;
  sub_1A46B7CF4(255);
  sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4, MEMORY[0x1E697BEF0]);
  v20 = a1;
  v21 = v6;
  v22 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  type metadata accessor for PhototypeRootContainer(0, a1, a2, v14);
  swift_checkMetadataState();
  sub_1A524B0E4();
  v15 = *(v8 + 16);
  v15(v13, v10, OpaqueTypeMetadata2);
  v16 = *(v8 + 8);
  v16(v10, OpaqueTypeMetadata2);
  v15(v19, v13, OpaqueTypeMetadata2);
  return (v16)(v13, OpaqueTypeMetadata2);
}

uint64_t sub_1A46B80F4()
{
  v0 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A46B7CF4(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249884();
  type metadata accessor for DismissButton(0);
  sub_1A46B7BE8();
  sub_1A5247F24();
  v6 = sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4, MEMORY[0x1E697BEF0]);
  MEMORY[0x1A5904CD0](v5, v2, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A46B8288@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A46B8F28(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

double sub_1A46B82F8@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A46B8F28(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v2 = sub_1A524A064();
  sub_1A46B7ABC(0);
  v4 = a1 + *(v3 + 36);
  *v4 = v2;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 1;
  return result;
}

uint64_t sub_1A46B83EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A46B846C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFC)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A46B85F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFC)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 3;
  }
}

void sub_1A46B885C(uint64_t a1)
{
  sub_1A46B8F28(319, &qword_1EB124730, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A46B8900(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46B8F28(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E87388(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A46B8B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = sub_1A5242424();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A46B8E70(0, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  sub_1A46B8EC4(v2, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1A46B8F88(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1A524B704();
  sub_1A5242414();
  sub_1A445E16C();
  sub_1A46B7D64(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
  sub_1A524A944();
  (*(v5 + 8))(v7, v4);
  return (*(v13 + 8))(v15, v12);
}

void sub_1A46B8E70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A46B8EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A46B8F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5248284();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A46B8F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46B8FEC()
{
  v1 = *(type metadata accessor for DismissButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A46B8900(v2);
}

void ParallaxOverlapViewConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ParallaxOverlapViewConfiguration.init(name:size:position:overlapTestAreas:minSegmentationScore:disableParallaxIfNotAcceptable:usesParallax:headroomFractionRange:isFallbackLayout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a8;
  *(a7 + 24) = a9;
  *(a7 + 32) = a10;
  *(a7 + 40) = a11;
  *(a7 + 48) = a3;
  *(a7 + 56) = a12;
  *(a7 + 64) = a4;
  *(a7 + 65) = a5;
  *(a7 + 72) = a13;
  *(a7 + 80) = a14;
  *(a7 + 88) = a6;
  return result;
}

uint64_t ParallaxOverlapViewConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  sub_1A524C794();
  type metadata accessor for CGPoint(0);
  sub_1A524C714();
  sub_1A524C794();

  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1A590A040](*&v8);
  sub_1A46BA9B0(a1, v4);
  sub_1A524ECB4();
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x1A590A040](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1A590A040](*&v10);
  return sub_1A524ECB4();
}

uint64_t sub_1A46B923C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 80);
  v4 = (result + 40);
  while (v2)
  {
    v6 = v4[4];
    v5 = v4[5];
    v7 = v4[3];
    v15 = *(v3 - 6);
    v8 = *(v3 - 2);
    v9 = *(v3 - 1);
    v10 = *v3;
    v3 += 7;
    v11 = v10;
    v12 = CGRectEqualToRect(*(v4 - 1), v15);
    v13 = v7 == v8 && v12;
    if (v6 != v9)
    {
      v13 = 0;
    }

    result = v5 == v11 && v13;
    v14 = result != 1 || v2-- == 1;
    v4 += 7;
    if (v14)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A46B9304(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x6E6F697469736F70;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 1702521203;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6172615073657375;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A46B942C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A46BAF04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A46B9454(uint64_t a1)
{
  v2 = sub_1A46BAC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A46B9490(uint64_t a1)
{
  v2 = sub_1A46BAC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParallaxOverlapViewConfiguration.encode(to:)(void *a1)
{
  sub_1A46BB2B0(0, &qword_1EB1401C8, sub_1A46BAC18, &type metadata for ParallaxOverlapViewConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v20 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  v19[4] = *(v1 + 65);
  v19[5] = v13;
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  v19[3] = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A46BAC18();
  sub_1A524ED34();
  LOBYTE(v23) = 0;
  v16 = v21;
  sub_1A524E994();
  if (!v16)
  {
    v17 = v20;
    v23 = v8;
    v24 = v9;
    v22 = 1;
    type metadata accessor for CGSize(0);
    sub_1A46BAC6C(&qword_1EB1387E0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1A524E9D4();
    v23 = v10;
    v24 = v11;
    v22 = 2;
    type metadata accessor for CGPoint(0);
    sub_1A46BAC6C(&qword_1EB12D140, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
    sub_1A524E9D4();
    v23 = v17;
    v22 = 3;
    sub_1A46BAEB4(0, &qword_1EB1401D0, &type metadata for ParallaxAssetOverlapTestArea, MEMORY[0x1E69E62F8]);
    sub_1A46BADD0(&qword_1EB1401D8, sub_1A46BACB4, MEMORY[0x1E69E6300]);
    sub_1A524E9D4();
    v23 = v12;
    v22 = 4;
    sub_1A3E57C60();
    sub_1A524E9D4();
    LOBYTE(v23) = 5;
    sub_1A524E9A4();
    LOBYTE(v23) = 6;
    sub_1A524E9A4();
    v23 = v14;
    v24 = v15;
    v22 = 7;
    sub_1A46BAD08(0);
    sub_1A46BAD64(&qword_1EB1401F0, sub_1A3E57C60, MEMORY[0x1E69E66B0]);
    sub_1A524E9D4();
    LOBYTE(v23) = 8;
    sub_1A524E9A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ParallaxOverlapViewConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  ParallaxOverlapViewConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

void ParallaxOverlapViewConfiguration.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  sub_1A46BB2B0(0, &qword_1EB1401F8, sub_1A46BAC18, &type metadata for ParallaxOverlapViewConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A46BAC18();
  v36 = v8;
  sub_1A524ED14();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v9 = v6;
    v10 = v35;
    LOBYTE(v42) = 0;
    v11 = v5;
    v12 = sub_1A524E8A4();
    v14 = v13;
    v34 = v12;
    type metadata accessor for CGSize(0);
    LOBYTE(v37) = 1;
    sub_1A46BAC6C(&qword_1EB138800, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1A524E8E4();
    v15 = v42;
    v16 = v43;
    type metadata accessor for CGPoint(0);
    LOBYTE(v37) = 2;
    sub_1A46BAC6C(&qword_1EB12D150, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
    sub_1A524E8E4();
    v17 = a1;
    v18 = v42;
    v19 = v43;
    sub_1A46BAEB4(0, &qword_1EB1401D0, &type metadata for ParallaxAssetOverlapTestArea, MEMORY[0x1E69E62F8]);
    LOBYTE(v37) = 3;
    sub_1A46BADD0(&qword_1EB140200, sub_1A46BAE60, MEMORY[0x1E69E6330]);
    sub_1A524E8E4();
    v20 = v42;
    LOBYTE(v37) = 4;
    sub_1A3E57CB4();
    sub_1A524E8E4();
    v21 = v42;
    LOBYTE(v42) = 5;
    v33 = sub_1A524E8B4();
    LOBYTE(v42) = 6;
    v32 = sub_1A524E8B4();
    sub_1A46BAD08(0);
    LOBYTE(v37) = 7;
    sub_1A46BAD64(&qword_1EB140210, sub_1A3E57CB4, MEMORY[0x1E69E66E0]);
    sub_1A524E8E4();
    v22 = v42;
    v23 = v43;
    v57 = 8;
    v24 = sub_1A524E8B4();
    v33 &= 1u;
    v25 = v32 & 1;
    (*(v9 + 8))(v36, v11);
    v24 &= 1u;
    v26 = v34;
    *&v37 = v34;
    *(&v37 + 1) = v14;
    *&v38 = v15;
    *(&v38 + 1) = v16;
    *&v39 = v18;
    *(&v39 + 1) = v19;
    *&v40 = v20;
    *(&v40 + 1) = v21;
    LOBYTE(v11) = v33;
    v41[0] = v33;
    v41[1] = v25;
    *&v41[2] = v58;
    *&v41[6] = v59;
    *&v41[8] = v22;
    *&v41[16] = v23;
    v41[24] = v24;
    v27 = v38;
    *v10 = v37;
    v10[1] = v27;
    v28 = v39;
    v29 = v40;
    v30 = *v41;
    *(v10 + 73) = *&v41[9];
    v10[3] = v29;
    v10[4] = v30;
    v10[2] = v28;
    sub_1A406BAA8(&v37, &v42);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v42 = v26;
    v43 = v14;
    v44 = v15;
    v45 = v16;
    v46 = v18;
    v47 = v19;
    v48 = v20;
    v49 = v21;
    v50 = v11;
    v51 = v25;
    v52 = v58;
    v53 = v59;
    v54 = v22;
    v55 = v23;
    v56 = v24;
    sub_1A406BB58(&v42);
  }
}

uint64_t sub_1A46BA038()
{
  sub_1A524EC94();
  ParallaxOverlapViewConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A46BA07C(uint64_t a1)
{
  sub_1A524EC94();
  ParallaxOverlapViewConfiguration.hash(into:)(v2);
  return sub_1A524ECE4();
}

void ParallaxAssetOverlapTestArea.init(normalizedRect:maximumOverlappingAreaFraction:minimumOverlappingAreaFraction:maxSkyOverlapAreaFraction:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
}

uint64_t ParallaxAssetOverlapTestArea.hash(into:)(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  type metadata accessor for CGRect(0);
  sub_1A524C714();
  sub_1A524C794();

  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1A590A040](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1A590A040](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1A590A040](*&v7);
}

unint64_t sub_1A46BA1D8()
{
  v1 = 0x7A696C616D726F6ELL;
  v2 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A46BA268@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A46BB5C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A46BA290(uint64_t a1)
{
  v2 = sub_1A46BB25C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A46BA2CC(uint64_t a1)
{
  v2 = sub_1A46BB25C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParallaxAssetOverlapTestArea.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A46BB2B0(0, &qword_1EB140218, sub_1A46BB25C, &type metadata for ParallaxAssetOverlapTestArea.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v11 = *(v3 + 4);
  v10 = *(v3 + 5);
  v12 = *(v3 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A46BB25C();
  sub_1A524ED34();
  v13 = v3[1];
  v17 = *v3;
  v18 = v13;
  v16 = 0;
  type metadata accessor for CGRect(0);
  sub_1A46BAC6C(&qword_1EB130D90, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1A524E9D4();
  if (!v2)
  {
    *&v17 = v11;
    v16 = 1;
    sub_1A3E57C60();
    sub_1A524E9D4();
    *&v17 = v10;
    v16 = 2;
    sub_1A524E9D4();
    *&v17 = v12;
    v16 = 3;
    sub_1A524E9D4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ParallaxAssetOverlapTestArea.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1A524EC94();
  ParallaxAssetOverlapTestArea.hash(into:)(v4);
  return sub_1A524ECE4();
}

uint64_t ParallaxAssetOverlapTestArea.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A46BB2B0(0, &qword_1EB140220, sub_1A46BB25C, &type metadata for ParallaxAssetOverlapTestArea.CodingKeys, MEMORY[0x1E69E6F48]);
  v18 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A46BB25C();
  sub_1A524ED14();
  if (!v2)
  {
    v9 = v6;
    type metadata accessor for CGRect(0);
    v21 = 0;
    sub_1A46BAC6C(&qword_1EB130DC8, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    v10 = v18;
    sub_1A524E8E4();
    v16 = v20;
    v17 = v19;
    v21 = 1;
    sub_1A3E57CB4();
    sub_1A524E8E4();
    v11 = v19;
    v21 = 2;
    sub_1A524E8E4();
    v12 = v19;
    v21 = 3;
    sub_1A524E8E4();
    (*(v9 + 8))(v8, v10);
    v14 = v19;
    v15 = v16;
    *a2 = v17;
    *(a2 + 16) = v15;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A46BA8C8()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1A524EC94();
  ParallaxAssetOverlapTestArea.hash(into:)(v4);
  return sub_1A524ECE4();
}

uint64_t sub_1A46BA928(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_1A524EC94();
  ParallaxAssetOverlapTestArea.hash(into:)(v5);
  return sub_1A524ECE4();
}

uint64_t sub_1A46BA9B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1A590A010](v3);
  if (v3)
  {
    type metadata accessor for CGRect(0);
    v5 = (a2 + 80);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      sub_1A524C714();
      sub_1A524C794();

      if (v6 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x1A590A040](*&v9);
      if (v7 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v7;
      }

      MEMORY[0x1A590A040](*&v10);
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v8;
      }

      result = MEMORY[0x1A590A040](*&v11);
      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s12PhotosUICore32ParallaxOverlapViewConfigurationV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(a1 + 6);
  v7 = a1[7];
  v8 = *(a1 + 64);
  v9 = *(a1 + 65);
  v11 = a1[9];
  v10 = a1[10];
  v12 = *(a1 + 88);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  v19 = *(a2 + 65);
  v20 = *(a2 + 88);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    result = 0;
    if (v3 != v14 || v2 != v13 || v5 != v16)
    {
      return result;
    }

    v28 = *(a2 + 56);
    v29 = v7;
    v26 = *(a2 + 72);
    v27 = v11;
    v24 = *(a2 + 80);
    v25 = v10;
  }

  else
  {
    v28 = *(a2 + 56);
    v29 = a1[7];
    v26 = *(a2 + 72);
    v27 = a1[9];
    v24 = *(a2 + 80);
    v25 = a1[10];
    v22 = sub_1A524EAB4();
    result = 0;
    if ((v22 & 1) == 0 || v3 != v14 || v2 != v13 || v5 != v16)
    {
      return result;
    }
  }

  if (v4 == v15)
  {
    v23 = sub_1A46B923C(v6, v17);
    result = 0;
    if ((v23 & 1) != 0 && v29 == v28 && v8 == v18 && v9 == v19 && v27 == v26 && v25 == v24)
    {
      return v12 ^ v20 ^ 1u;
    }
  }

  return result;
}

unint64_t sub_1A46BAC18()
{
  result = qword_1EB1CDF50;
  if (!qword_1EB1CDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CDF50);
  }

  return result;
}

uint64_t sub_1A46BAC6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A46BACB4()
{
  result = qword_1EB1401E0;
  if (!qword_1EB1401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1401E0);
  }

  return result;
}

void sub_1A46BAD08(uint64_t a1)
{
  if (!qword_1EB1401E8)
  {
    sub_1A3EF6938();
    v1 = sub_1A524D104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1401E8);
    }
  }
}

uint64_t sub_1A46BAD64(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A46BAD08(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46BADD0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A46BAEB4(255, &qword_1EB1401D0, &type metadata for ParallaxAssetOverlapTestArea, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A46BAE60()
{
  result = qword_1EB140208;
  if (!qword_1EB140208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140208);
  }

  return result;
}

void sub_1A46BAEB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A46BAF04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53B5290 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A53E5000 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A53E5020 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6172615073657375 && a2 == 0xEC00000078616C6CLL || (sub_1A524EAB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A53B52B0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53E5040 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

BOOL _s12PhotosUICore28ParallaxAssetOverlapTestAreaV2eeoiySbAC_ACtFZ_0(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  y = a1[1].origin.y;
  width = a1[1].size.width;
  v5 = a2[1].origin.x;
  v6 = a2[1].origin.y;
  v7 = a2[1].size.width;
  v8 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v8 && x == v5 && y == v6)
  {
    return width == v7;
  }

  return result;
}

unint64_t sub_1A46BB25C()
{
  result = qword_1EB1CDF58[0];
  if (!qword_1EB1CDF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CDF58);
  }

  return result;
}

void sub_1A46BB2B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A46BB320()
{
  result = qword_1EB140228;
  if (!qword_1EB140228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140228);
  }

  return result;
}

unint64_t sub_1A46BB3B8()
{
  result = qword_1EB1CE460[0];
  if (!qword_1EB1CE460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CE460);
  }

  return result;
}

unint64_t sub_1A46BB410()
{
  result = qword_1EB1CE670[0];
  if (!qword_1EB1CE670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CE670);
  }

  return result;
}

unint64_t sub_1A46BB468()
{
  result = qword_1EB1CE780;
  if (!qword_1EB1CE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CE780);
  }

  return result;
}

unint64_t sub_1A46BB4C0()
{
  result = qword_1EB1CE788[0];
  if (!qword_1EB1CE788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CE788);
  }

  return result;
}

unint64_t sub_1A46BB518()
{
  result = qword_1EB1CE810[0];
  if (!qword_1EB1CE810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CE810);
  }

  return result;
}

unint64_t sub_1A46BB570()
{
  result = qword_1EB162158[0];
  if (!qword_1EB162158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB162158);
  }

  return result;
}

uint64_t sub_1A46BB5C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEE00746365526465;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A53E5060 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A53E5080 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A53E50A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

char *sub_1A46BB73C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12PhotosUICore31MapOptionsBlurredBackgroundView_backdropView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DD838]) init];
  if ((MEMORY[0x1A590D320]() & 1) != 0 || (v3 = [objc_opt_self() effectWithStyle_]) == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_initWithEffect_, v4);

  v6 = v5;
  v7 = sub_1A524C634();
  [v6 _setGroupName_];

  v8 = *&v6[OBJC_IVAR____TtC12PhotosUICore31MapOptionsBlurredBackgroundView_backdropView];
  [v6 _setCaptureView_];

  return v6;
}

id sub_1A46BB990()
{
  v0 = objc_allocWithZone(type metadata accessor for MapOptionsBlurredBackgroundView());

  return [v0 init];
}

uint64_t sub_1A46BB9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46BBAC4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A46BBA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46BBAC4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A46BBA8C(uint64_t a1)
{
  sub_1A46BBAC4();
  sub_1A52496F4();
  __break(1u);
}

unint64_t sub_1A46BBAC4()
{
  result = qword_1EB140238;
  if (!qword_1EB140238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140238);
  }

  return result;
}

id sub_1A46BBB2C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  v4[OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_canPushViewController] = 0;
  v4[OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_canPresentPopovers] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_model + 8] = a2;
  swift_unknownObjectUnownedInit();
  v7.receiver = v4;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A46BBFC4(void *a1, uint64_t (*a2)(uint64_t), __n128 a3)
{
  v6 = v3 + OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_model;
  swift_unknownObjectUnownedLoadStrong();
  v7 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 8))(ObjectType, v7);
  swift_unknownObjectRelease();
  if (v9 && (sub_1A3D63AC0(0, v10), v11 = a1, v12 = sub_1A524DBF4(), v9, v11, (v12 & 1) != 0))
  {
    swift_unknownObjectUnownedLoadStrong();
    v13 = *(v6 + 8);
    v14 = swift_getObjectType();
    (*(v13 + 16))(0, v14, v13);
    result = swift_unknownObjectRelease();
    if (a2)
    {
      return a2(result);
    }
  }

  else
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000026, 0x80000001A53E52A0);
    v16 = [a1 description];
    v17 = sub_1A524C674();
    v19 = v18;

    MEMORY[0x1A5907B60](v17, v19);

    MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53E52D0);
    swift_unknownObjectUnownedLoadStrong();
    v20 = *(v6 + 8);
    v21 = swift_getObjectType();
    (*(v20 + 8))(v21, v20);
    swift_unknownObjectRelease();
    sub_1A421EA88(0);
    v22 = sub_1A524C714();
    MEMORY[0x1A5907B60](v22);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t LemonadeGenerativeMemoriesConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1A524DC04();
  v3 = *(v1 + 16);
  sub_1A524ECB4();
  if (v3)
  {
    v4 = v3;
    sub_1A524DC04();
  }

  sub_1A524ECB4();
  type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  sub_1A5244854();
  sub_1A46BC70C(&qword_1EB1402C0, MEMORY[0x1E69C1030], MEMORY[0x1E69C1038]);
  sub_1A524C4B4();
  result = *(v2 + 32);
  if (result)
  {
    return MEMORY[0x1A590A010]();
  }

  return result;
}

uint64_t LemonadeGenerativeMemoriesConfiguration.init(photoLibrary:memoryCreationAttributedText:startCreation:suggestionViewModel:transitionType:generationEntryPoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 8) = a5;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *a7 = a1;
  v9 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0) + 36);
  v10 = sub_1A5244854();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a6, v10);
}

uint64_t LemonadeGenerativeMemoriesConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  LemonadeGenerativeMemoriesConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A46BC3F0()
{
  sub_1A524EC94();
  LemonadeGenerativeMemoriesConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A46BC434(uint64_t a1)
{
  sub_1A524EC94();
  LemonadeGenerativeMemoriesConfiguration.hash(into:)(v2);
  return sub_1A524ECE4();
}

uint64_t _s12PhotosUICore39LemonadeGenerativeMemoriesConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if ((sub_1A524DBF4() & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
    v6 = v5;
    v7 = v4;
    v8 = sub_1A524DBF4();

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v5)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_9;
  }

  v11 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v15 = *(a1 + 32);
    if (!v11)
    {
      goto LABEL_9;
    }

    v13 = *(a2 + 32);
    type metadata accessor for GenerativeStorySuggestionViewModel(0);
    sub_1A46BC70C(&qword_1EB13CD18, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);

    v12 = sub_1A524C594();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    goto LABEL_9;
  }

  type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  sub_1A5244854();
  sub_1A46BC70C(&qword_1EB124C90, MEMORY[0x1E69C1030], MEMORY[0x1E69C1040]);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v15 == v13 && v16 == v14)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();
  }

  return v9 & 1;
}

uint64_t sub_1A46BC70C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A46BC754@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = a1;
  v76 = a2;
  v3 = sub_1A5242C14();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46BD1F4(0);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46BD178(0);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v59 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v59 - v12;
  v13 = sub_1A5249234();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v97 = v15;
  v16 = swift_retain_n();
  v17 = PhotosObservableTrip<>.title.getter(v16);
  v64 = v18;
  v65 = v17;
  sub_1A5242E54();
  v63 = v96;
  sub_1A40F3878(0);
  v20 = v19;
  v21 = sub_1A46BD130(&qword_1EB129290, sub_1A40F3878, MEMORY[0x1E69C22B8]);
  v22 = MEMORY[0x1E6981E70];
  v23 = MEMORY[0x1E6981E60];
  v24 = sub_1A41F7694();
  v25 = sub_1A3C5A374();
  v26 = sub_1A43C9BB4();
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  v30 = sub_1A43C9BD0();
  v58 = v22;
  v31 = v62;
  LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v97, 0, 0, v65, v64, v63, v25 & 1, sub_1A3F8B548, v98, v24, v29, v30, v58, v20, v23, v21);
  v93 = v98[4];
  v94 = v98[5];
  v95 = v99;
  v89 = v98[0];
  v90 = v98[1];
  v91 = v98[2];
  v92 = v98[3];
  if (shouldUseNewCollectionsLayout()() && (v31[1] & 1) == 0)
  {
    v103 = *(v31 + 56);
    v40 = v31[6];
    v102 = v40;
    if (v103 == 1)
    {
      v32 = 1.0;
      if ((v40 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {

      v55 = sub_1A524D254();
      v56 = sub_1A524A014();
      sub_1A5246DF4(v55, &dword_1A3C1C000, v56, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v57 = v59;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A46BE3DC(&v102, sub_1A46BE43C);
      (*(v60 + 8))(v57, v61);
      v32 = 1.0;
      if (LOBYTE(v79[0]) != 1)
      {
        goto LABEL_4;
      }
    }
  }

  v32 = 0.0;
LABEL_4:
  v86 = v93;
  v87 = v94;
  LOBYTE(v88) = v95;
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  *&v79[0] = v15;
  v33 = MEMORY[0x1E69C2168];
  v34 = *(v31 + 8);
  if (!*(v31 + 8))
  {
    v33 = MEMORY[0x1E69C2170];
  }

  v35 = (*(v66 + 104))(v68, *v33, v67);
  v36 = *(v31 + 2);
  v104 = *(v31 + 1);
  v105 = v36;
  v106 = 0;
  MEMORY[0x1EEE9AC00](v35);
  sub_1A46BD2E8(0);
  sub_1A46BD130(&unk_1EB129280, sub_1A40F3878, MEMORY[0x1E69C22D8]);
  sub_1A46BD42C();
  v37 = v71;
  sub_1A5243E84();
  if (!shouldUseNewCollectionsLayout()() || v34)
  {
    goto LABEL_15;
  }

  v101 = *(v31 + 56);
  v38 = v31[6];
  v100 = v38;
  if (v101 == 1)
  {
    v39 = 0.0;
    if ((v38 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v41 = sub_1A524D254();
  v42 = sub_1A524A014();
  sub_1A5246DF4(v41, &dword_1A3C1C000, v42, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  v43 = v59;
  sub_1A5249224();
  swift_getAtKeyPath();
  sub_1A46BE3DC(&v100, sub_1A46BE43C);
  (*(v60 + 8))(v43, v61);
  v39 = 0.0;
  if (LOBYTE(v79[0]) == 1)
  {
LABEL_15:
    v39 = 1.0;
  }

LABEL_16:
  v44 = v69;
  (*(v72 + 32))(v69, v37, v73);
  *(v44 + *(v70 + 36)) = v39;
  v45 = v74;
  sub_1A46BE378(v44, v74);
  v46 = v75;
  sub_1A46BE560(v45, v75, sub_1A46BD178);
  *&v78 = v88;
  v48 = v82;
  v47 = v83;
  v77[0] = v82;
  v77[1] = v83;
  v49 = v87;
  v77[4] = v86;
  v77[5] = v87;
  v50 = v84;
  v51 = v85;
  v77[2] = v84;
  v77[3] = v85;
  *(&v78 + 1) = v32;
  v52 = v76;
  v76[4] = v86;
  v52[5] = v49;
  v52[2] = v50;
  v52[3] = v51;
  *v52 = v48;
  v52[1] = v47;
  v52[6] = v78;
  sub_1A46BCFF0(0);
  sub_1A46BE560(v46, v52 + *(v53 + 48), sub_1A46BD178);
  sub_1A46BE560(v77, v79, sub_1A46BD060);
  sub_1A46BE3DC(v45, sub_1A46BD178);
  sub_1A46BE3DC(v46, sub_1A46BD178);
  v79[4] = v86;
  v79[5] = v87;
  v80 = v88;
  v79[0] = v82;
  v79[1] = v83;
  v79[2] = v84;
  v79[3] = v85;
  v81 = v32;
  return sub_1A46BE3DC(v79, sub_1A46BD060);
}

void sub_1A46BCF54(uint64_t a1)
{
  if (!qword_1EB1402D0)
  {
    sub_1A46BCFBC(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1402D0);
    }
  }
}

void sub_1A46BCFF0(uint64_t a1)
{
  if (!qword_1EB1402E0)
  {
    sub_1A46BD060(255);
    sub_1A46BD178(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1402E0);
    }
  }
}

void sub_1A46BD080(uint64_t a1)
{
  if (!qword_1EB125790)
  {
    sub_1A40F3878(255);
    v3 = v2;
    v4 = sub_1A46BD130(&qword_1EB129290, sub_1A40F3878, MEMORY[0x1E69C22B8]);
    v7[0] = MEMORY[0x1E6981E70];
    v7[1] = v3;
    v7[2] = MEMORY[0x1E6981E60];
    v7[3] = v4;
    v5 = type metadata accessor for LemonadeMaterialTitleCell(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125790);
    }
  }
}

uint64_t sub_1A46BD130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A46BD198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A46BD1F4(uint64_t a1)
{
  if (!qword_1EB128FE8)
  {
    sub_1A40F3878(255);
    sub_1A46BD2E8(255);
    sub_1A46BD130(&unk_1EB129280, sub_1A40F3878, MEMORY[0x1E69C22D8]);
    sub_1A46BD130(&qword_1EB129290, sub_1A40F3878, MEMORY[0x1E69C22B8]);
    sub_1A46BD42C();
    v1 = sub_1A5243E74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128FE8);
    }
  }
}

void sub_1A46BD2E8(uint64_t a1)
{
  if (!qword_1EB127528)
  {
    sub_1A46BE4F0(255, &qword_1EB127CD0, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127528);
    }
  }
}

void sub_1A46BD3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A46BD42C()
{
  result = qword_1EB127530;
  if (!qword_1EB127530)
  {
    sub_1A46BD2E8(255);
    sub_1A46BD4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127530);
  }

  return result;
}

unint64_t sub_1A46BD4A4()
{
  result = qword_1EB127CD8;
  if (!qword_1EB127CD8)
  {
    sub_1A46BE4F0(255, &qword_1EB127CD0, MEMORY[0x1E697F960]);
    sub_1A46BD540();
    sub_1A46BD5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127CD8);
  }

  return result;
}

unint64_t sub_1A46BD540()
{
  result = qword_1EB127DD0;
  if (!qword_1EB127DD0)
  {
    sub_1A46BD35C(255);
    sub_1A46BD130(&unk_1EB1298B0, sub_1A45A8A18, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127DD0);
  }

  return result;
}

unint64_t sub_1A46BD5E8()
{
  result = qword_1EB127EB0;
  if (!qword_1EB127EB0)
  {
    sub_1A46BD390(255);
    sub_1A46BD130(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127EB0);
  }

  return result;
}

uint64_t sub_1A46BD690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = MEMORY[0x1E697F948];
  sub_1A46BD3C4(0, &unk_1EB122D20, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v50 - v5;
  sub_1A46BD390(0);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A5243834();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46BE48C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_1A5243EC4();
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46BE4F0(0, &qword_1EB122B48, MEMORY[0x1E697F948]);
  v60 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v50 - v17;
  sub_1A46BD3C4(0, &qword_1EB122C70, sub_1A45A8A18, v3);
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  sub_1A46BD35C(0);
  v59 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A8A18(0);
  v53 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v50 - v27;
  v29 = *(a1 + 8);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v30 = [swift_getObjCClassFromMetadata() sharedInstance];
  v31 = v30;
  if (v29 == 1)
  {
    v32 = [v30 enableInlinePlaybackTrips];

    if (v32)
    {
      sub_1A5242E24();
      v78 = v79;
      sub_1A5242E54();
      v33 = v70;
      sub_1A5242E34();
      v34 = *(v77 + 16);

      v75 = v34;
      v76 = 0;
      v35 = MEMORY[0x1E69E5FE0];
      v36 = MEMORY[0x1E69E5FE8];
      j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ();
      v64 = v70;
      v65 = v71;
      v66 = *(&v71 + 1);
      v67 = v72;
      v68 = v73;
      v69 = v74;
      v37 = sub_1A3D41FBC();
      LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(&v78, v33, 0, 0, v35, v36, v28, v37);
      sub_1A46BE560(v28, v20, sub_1A45A8A18);
      swift_storeEnumTagMultiPayload();
      sub_1A46BD130(&unk_1EB1298B0, sub_1A45A8A18, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
      v38 = v58;
      sub_1A5249744();
      sub_1A46BE560(v38, v61, sub_1A46BD35C);
      swift_storeEnumTagMultiPayload();
      sub_1A46BD540();
      sub_1A46BD5E8();
      sub_1A5249744();
      sub_1A46BE3DC(v38, sub_1A46BD35C);
      return sub_1A46BE3DC(v28, sub_1A45A8A18);
    }
  }

  else
  {
    v40 = [v30 enableInlinePlaybackTripsShelf];

    if (v40)
    {
      sub_1A5242E24();
      v78 = v79;
      sub_1A5242E54();
      v41 = v70;
      sub_1A5242E34();
      v42 = *(v77 + 16);

      v75 = v42;
      v76 = 0;
      v43 = MEMORY[0x1E69E5FE0];
      v44 = MEMORY[0x1E69E5FE8];
      j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ();
      v64 = v70;
      v65 = v71;
      v66 = *(&v71 + 1);
      v67 = v72;
      v68 = v73;
      v69 = v74;
      v45 = sub_1A3D41FBC();
      LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(&v78, v41, 0, 0, v43, v44, v25, v45);
      sub_1A46BE560(v25, v20, sub_1A45A8A18);
      swift_storeEnumTagMultiPayload();
      sub_1A46BD130(&unk_1EB1298B0, sub_1A45A8A18, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
      v46 = v58;
      sub_1A5249744();
      sub_1A46BE560(v46, v61, sub_1A46BD35C);
      swift_storeEnumTagMultiPayload();
      sub_1A46BD540();
      sub_1A46BD5E8();
      sub_1A5249744();
      sub_1A46BE3DC(v46, sub_1A46BD35C);
      return sub_1A46BE3DC(v25, sub_1A45A8A18);
    }
  }

  sub_1A5242E54();
  v70 = 0u;
  v71 = 0u;
  v72 = 1;
  v47 = sub_1A52429A4();
  (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
  (*(v50 + 104))(v9, *MEMORY[0x1E69C2678], v51);
  sub_1A5243ED4();
  v48 = v54;
  (*(v54 + 16))(v56, v15, v13);
  swift_storeEnumTagMultiPayload();
  sub_1A46BD130(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  v49 = v57;
  sub_1A5249744();
  sub_1A46BE560(v49, v61, sub_1A46BD390);
  swift_storeEnumTagMultiPayload();
  sub_1A46BD540();
  sub_1A46BD5E8();
  sub_1A5249744();
  sub_1A46BE3DC(v49, sub_1A46BD390);
  return (*(v48 + 8))(v15, v13);
}

uint64_t sub_1A46BE164@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  result = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  return result;
}

unint64_t sub_1A46BE1EC()
{
  result = qword_1EB1402F8;
  if (!qword_1EB1402F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1402F8);
  }

  return result;
}

uint64_t sub_1A46BE25C@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9[0] = v2[2];
  *(v9 + 9) = *(v2 + 41);
  *a2 = sub_1A524BC74();
  a2[1] = v5;
  sub_1A46BCF54(0);
  return sub_1A46BC754(v8, (a2 + *(v6 + 44)));
}

void sub_1A46BE2DC(uint64_t a1)
{
  if (!qword_1EB140308)
  {
    sub_1A46BCFBC(255);
    sub_1A46BD130(&qword_1EB140310, sub_1A46BCFBC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140308);
    }
  }
}

uint64_t sub_1A46BE378(uint64_t a1, uint64_t a2)
{
  sub_1A46BD178(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46BE3DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A46BE43C()
{
  if (!qword_1EB1246E0)
  {
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1246E0);
    }
  }
}

void sub_1A46BE48C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46BE4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A46BD35C(255);
    v7 = v6;
    sub_1A46BD390(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A46BE560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46BE5C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B808(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for LemonadeSharedWithYouCell(0);
  sub_1A3F75EB4(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5244084();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for LemonadeSharedWithYouCell(uint64_t a1)
{
  result = qword_1EB1676D0;
  if (!qword_1EB1676D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46BE82C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1A5244084();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A5243834();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B808(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  sub_1A4178098(0);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F97D94(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  v22 = sub_1A52429A4();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2678], v36);
  swift_unknownObjectRetain();
  sub_1A5243ED4();
  v23 = &v13[*(v35 + 36)];
  *v23 = 0x3FF0000000000000;
  *(v23 + 4) = 256;
  v24 = v37;
  sub_1A46BE5C8(v37);
  sub_1A3F97E3C();
  sub_1A524A784();
  (*(v38 + 8))(v24, v39);
  sub_1A46BF2A0(v13);
  v25 = a1[1];
  if (v25)
  {
    v26 = v25;
    PXDisplayCollectionDetailedCountsMake();
    v28 = v27;
    v29 = v27;
  }

  else
  {
    v28 = 0;
  }

  v30 = *(v16 + 16);
  v30(v18, v21, v15);
  v31 = v40;
  v30(v40, v18, v15);
  sub_1A46BED14(0);
  *&v31[*(v32 + 48)] = v28;
  v33 = *(v16 + 8);
  v33(v21, v15);

  return (v33)(v18, v15);
}

void sub_1A46BEC7C(uint64_t a1)
{
  if (!qword_1EB140318)
  {
    sub_1A3C6B808(255, &qword_1EB140320, sub_1A46BED14, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140318);
    }
  }
}

void sub_1A46BED14(uint64_t a1)
{
  if (!qword_1EB140328)
  {
    sub_1A3F97D94(255);
    sub_1A46BED84();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140328);
    }
  }
}

void sub_1A46BED84()
{
  if (!qword_1EB140350)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140350);
    }
  }
}

uint64_t sub_1A46BEDD4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A3C6B808(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A46BEE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for LemonadeSharedWithYouCell(0) + 24);

  return sub_1A46BEEA4(a3, v5);
}

uint64_t sub_1A46BEEA4(uint64_t a1, uint64_t a2)
{
  sub_1A3C6B808(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46BEF54@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1A5249584();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  sub_1A46BEC7C(0);
  return sub_1A46BE82C(v2, (a2 + *(v4 + 44)));
}

void sub_1A46BEFC4(uint64_t a1)
{
  sub_1A3C6B808(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A3C6B808(319, &unk_1EB138740, sub_1A46BF0F0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A3C6B808(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A46BF0F0()
{
  result = qword_1EB126D00;
  if (!qword_1EB126D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126D00);
  }

  return result;
}

uint64_t sub_1A46BF13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A46BF184(uint64_t a1)
{
  if (!qword_1EB140360)
  {
    sub_1A3C6B808(255, &qword_1EB140320, sub_1A46BED14, MEMORY[0x1E6981F40]);
    sub_1A46BF218();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140360);
    }
  }
}

unint64_t sub_1A46BF218()
{
  result = qword_1EB140368;
  if (!qword_1EB140368)
  {
    sub_1A3C6B808(255, &qword_1EB140320, sub_1A46BED14, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140368);
  }

  return result;
}

uint64_t sub_1A46BF2A0(uint64_t a1)
{
  sub_1A4178098(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A46BF33C(uint64_t a1, uint64_t a2)
{
  result = PFOSVariantHasInternalUI();
  if (result)
  {
    v3 = sub_1A4467CD8();
    v4 = [v3 unlockDeviceStatus];

    if (v4 && (v5 = v4[2](v4), _Block_release(v4), !v5))
    {
      return 0;
    }

    else
    {
      return sub_1A446803C() != 5;
    }
  }

  return result;
}

void (*sub_1A46BF400(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F60710;
}

uint64_t sub_1A46BF4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

double sub_1A46BF518@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_1A46BF598(uint64_t *a1, void **a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A46BF618()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel____lazy_storage___videoFormatInfoProvider;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel____lazy_storage___videoFormatInfoProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel____lazy_storage___videoFormatInfoProvider);
  }

  else
  {
    v4 = v0;
    type metadata accessor for PXVideoFormatMetadataProvider();
    v5 = sub_1A4425B14();
    v6 = sub_1A4425B54(v5);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1A46BF68C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

char *sub_1A46BF7BC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v5 = sub_1A524D464();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A46C1C10(0, &qword_1EB128B38, MEMORY[0x1E695C070]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_assetDidChange) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isLoadingData) = 0;
  v14 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel__videoHDRBadgeTitle;
  sub_1A46C1C94(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v60 = 0;
  v61 = 0;
  sub_1A52479A4();
  (*(v11 + 32))(v4 + v14, v13, v10);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel____lazy_storage___videoFormatInfoProvider) = 0;
  v15 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_secondaryFormattedLensDescription);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_megaPixelsDescription);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_ax_megaPixelsDescription);
  v18 = sub_1A524C634();
  v19 = PXLocalizedString(v18);

  v20 = sub_1A524C674();
  v22 = v21;

  *v17 = v20;
  v17[1] = v22;
  v23 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_resolutionDescription);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_ax_resolutionDescription);
  v25 = sub_1A524C634();
  v26 = PXLocalizedString(v25);

  v27 = sub_1A524C674();
  v29 = v28;

  *v24 = v27;
  v24[1] = v29;
  v30 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_fileSizeDescription);
  v31 = sub_1A524C634();
  v32 = PXLocalizedString(v31);

  v33 = sub_1A524C674();
  v35 = v34;

  *v30 = v33;
  v30[1] = v35;
  v36 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedSemanticStyleDisplayString);
  *v37 = 0;
  v37[1] = 0;
  swift_beginAccess();
  v59 = 0;
  sub_1A52479A4();
  swift_endAccess();
  swift_beginAccess();
  v59 = 0;
  sub_1A52479A4();
  swift_endAccess();
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF24();
  sub_1A524D3F4();
  (*(v54 + 104))(v53, *MEMORY[0x1E69E8090], v55);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue) = sub_1A524D4B4();
  v38 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_makeAndModelDescription);
  *v38 = 0xD000000000000011;
  v38[1] = 0x80000001A53E53E0;
  v39 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_formattedLensDescription);
  *v39 = 0xD00000000000001BLL;
  v39[1] = 0x80000001A53E5400;
  v40 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_unformattedLensDescription);
  *v40 = 0xD00000000000001BLL;
  v40[1] = 0x80000001A53E5400;
  swift_beginAccess();
  *v16 = xmmword_1A5357900;

  swift_beginAccess();
  *v23 = xmmword_1A5357910;

  swift_beginAccess();
  *v30 = 0x424D20372E32;
  v30[1] = 0xE600000000000000;

  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_symbolNames) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_hasCameraSettings) = 0;
  sub_1A46C1C94(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1A531E190;
  sub_1A3C52C70(0, &unk_1EB1265F0, 0x1E696AEC0);
  v42 = sub_1A524DC24();
  v43 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v42 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 32) = v43;
  v44 = sub_1A524DC24();
  v45 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v44 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 40) = v45;
  v46 = sub_1A524DC24();
  v47 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v46 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 48) = v47;
  v48 = sub_1A524DC24();
  v49 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v48 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 56) = v49;
  v50 = sub_1A524DC24();
  v51 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v50 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 64) = v51;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_cameraSettings) = v41;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isVideo) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isVideoHDR) = 0;
  swift_beginAccess();
  *v37 = 0;
  v37[1] = 0;

  return sub_1A4467460(v56, v57, v58);
}

void sub_1A46BFFC0()
{
  v1 = v0;
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44681C8();
  v10 = sub_1A446720C();
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v11 = sub_1A524DC34();

  if (v11)
  {

    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v12 = sub_1A524D474();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    aBlock[4] = sub_1A46C1CE4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_253;
    v14 = _Block_copy(aBlock);
    v15 = v1;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

double sub_1A46C02F4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_assetDidChange;
  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_assetDidChange) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isLoadingData) & 1) == 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_1A52479E4(), , , (v10[0] & 1) == 0))
  {
    *(v0 + v1) = 0;
    *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isLoadingData) = 1;
    v2 = sub_1A446720C();
    v3 = objc_opt_self();
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v10[4] = sub_1A46C1D18;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3E01E70;
    v10[3] = &block_descriptor_21_9;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v3 requestExifMetadataProcessingIfNeededForItem:v8 onProcessingQueue:v4 withResultHandler:v7];
    _Block_release(v7);
  }

  return result;
}

double sub_1A46C0518(uint64_t a1, id a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_1A446720C();

    if (v14 == a2)
    {
      v19[1] = *&v13[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue];
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = v13;
      aBlock[4] = sub_1A46C1EDC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_28_3;
      v16 = _Block_copy(aBlock);
      v17 = v13;
      v18 = a2;
      sub_1A524BF14();
      v19[2] = MEMORY[0x1E69E7CC0];
      sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A3C38394(0);
      sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v10, v6, v16);
      _Block_release(v16);
      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
    }
  }

  return result;
}