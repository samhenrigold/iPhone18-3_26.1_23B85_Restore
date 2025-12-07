uint64_t sub_5F0C7C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_5F0EA4;
  }

  else
  {
    v5 = sub_5F0DB8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5F0DB8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_5F0EA4()
{
  v20 = v0;

  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "updateShareOption failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = v0[20];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  sub_5F46BC();
  swift_allocError();
  *v16 = v9;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  swift_willThrow();
  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v10, v11);

  v17 = v0[1];

  return v17();
}

uint64_t Collaboration.Manager.handleError(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, static Logger.collaboration);
  swift_errorRetain();
  v5 = sub_AB4BA0();
  v6 = sub_AB9F50();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "Calling coordinator to handle error=%{public}@", v7, 0xCu);
    sub_12E1C(v8, &qword_E0F560, &qword_B19F80);
  }

  swift_beginAccess();
  sub_E8BA0(v2 + 16, v13);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 8))(a1, v10, v11);
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

id Collaboration.Manager.activityViewController(for:url:)()
{
  v0 = objc_allocWithZone(NSItemProvider);
  sub_AB30F0(v1);
  v3 = v2;
  v4 = [v0 initWithContentsOfURL:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(LPLinkMetadata) init];
    sub_AB30F0(v6);
    v8 = v7;
    [v5 setURL:v7];

    v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
    sub_AB8D30();
    v10 = sub_AB9260();

    [v9 setName:v10];

    sub_AB8CF0();
    if (v11)
    {
      v12 = sub_AB9260();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCurator:v12];

    sub_AB8CE0();
    if (v13)
    {
      v14 = sub_AB9260();
    }

    else
    {
      v14 = 0;
    }

    [v9 setStoreIdentifier:v14];

    sub_5F1620();
    v16 = v15;
    [v9 setArtwork:v15];

    [v5 setSpecialization:v9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_AF82B0;
    *(v17 + 32) = v4;
    v18 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_13C80(0, &qword_E10AA8, NSItemProvider_ptr);
    v19 = v4;
    isa = sub_AB9740().super.isa;

    v21 = [v18 initWithItemProviders:isa];

    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    aBlock[4] = sub_5F4748;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_5F1A50;
    aBlock[3] = &block_descriptor_182;
    v23 = _Block_copy(aBlock);
    v24 = v5;

    [v21 setPerItemMetadataProvider:v23];
    _Block_release(v23);
    v25 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v21];
    [v25 setAllowsProminentActivity:0];

    return v25;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_5F1620()
{
  v0 = sub_AB8E20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v3 = sub_AB4A70();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSItemProvider) init];
  sub_AB4A50();
  sub_AB4A40();
  (*(v4 + 8))(v6, v3);
  v8 = sub_AB9260();

  (*(v1 + 16))(v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15[1], v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  aBlock[4] = sub_5F4D44;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_5F4054;
  aBlock[3] = &block_descriptor_89_0;
  v11 = _Block_copy(aBlock);

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  v12 = sub_AB9260();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_allocWithZone(LPImage) initWithPlatformImage:v13];

    [objc_allocWithZone(LPImage) initWithItemProvider:v7 properties:0 placeholderImage:v14];
  }

  else
  {
    __break(1u);
  }
}

void sub_5F1958(void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_AB92A0();
  v6 = v5;
  if (v4 == sub_AB92A0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }
  }

  *(a3 + 24) = sub_13C80(0, &qword_E10D08, LPLinkMetadata_ptr);
  *a3 = a2;

  v10 = a2;
}

id sub_5F1A50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v14, a2, v6);

  v7 = v15;
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v7 - 8);
    v9 = __chkstk_darwin();
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_ABB3A0();
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t Collaboration.Manager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_5F1C30()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.collaboration);
  __swift_project_value_buffer(v0, static Logger.collaboration);
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  sub_ABA9A0();
  return sub_AB4BD0();
}

uint64_t static Logger.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.collaboration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaboration.isOpenInvitation.getter()
{
  v0 = sub_AB8B90();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AB0, &qword_B1CCA0) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AB8, &qword_B1CCA8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  sub_AB8BA0();
  (*(v1 + 104))(v9, enum case for Playlist.Collaboration.InvitationMode.open(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  sub_15F84(v11, v5, &qword_E10AB8, &qword_B1CCA8);
  sub_15F84(v9, &v5[v12], &qword_E10AB8, &qword_B1CCA8);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    sub_15F84(v5, v7, &qword_E10AB8, &qword_B1CCA8);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      sub_5F5020(&qword_E10AC0, &type metadata accessor for Playlist.Collaboration.InvitationMode, &protocol conformance descriptor for Playlist.Collaboration.InvitationMode);
      v14 = sub_AB91C0();
      v17 = *(v1 + 8);
      v17(v16, v0);
      sub_12E1C(v9, &qword_E10AB8, &qword_B1CCA8);
      sub_12E1C(v11, &qword_E10AB8, &qword_B1CCA8);
      v17(v7, v0);
      sub_12E1C(v5, &qword_E10AB8, &qword_B1CCA8);
      return v14 & 1;
    }

    sub_12E1C(v9, &qword_E10AB8, &qword_B1CCA8);
    sub_12E1C(v11, &qword_E10AB8, &qword_B1CCA8);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  sub_12E1C(v9, &qword_E10AB8, &qword_B1CCA8);
  sub_12E1C(v11, &qword_E10AB8, &qword_B1CCA8);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    sub_12E1C(v5, &qword_E10AB0, &qword_B1CCA0);
    v14 = 0;
    return v14 & 1;
  }

  sub_12E1C(v5, &qword_E10AB8, &qword_B1CCA8);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.Collaborator.isHost.getter()
{
  v0 = sub_AB8B00();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AC8, &qword_B1CCB0) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AD0, &qword_B1CCB8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  sub_AB8B20();
  (*(v1 + 104))(v9, enum case for Playlist.Collaborator.Role.host(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  sub_15F84(v11, v5, &qword_E10AD0, &qword_B1CCB8);
  sub_15F84(v9, &v5[v12], &qword_E10AD0, &qword_B1CCB8);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    sub_15F84(v5, v7, &qword_E10AD0, &qword_B1CCB8);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      sub_5F5020(&qword_E10AD8, &type metadata accessor for Playlist.Collaborator.Role, &protocol conformance descriptor for Playlist.Collaborator.Role);
      v14 = sub_AB91C0();
      v17 = *(v1 + 8);
      v17(v16, v0);
      sub_12E1C(v9, &qword_E10AD0, &qword_B1CCB8);
      sub_12E1C(v11, &qword_E10AD0, &qword_B1CCB8);
      v17(v7, v0);
      sub_12E1C(v5, &qword_E10AD0, &qword_B1CCB8);
      return v14 & 1;
    }

    sub_12E1C(v9, &qword_E10AD0, &qword_B1CCB8);
    sub_12E1C(v11, &qword_E10AD0, &qword_B1CCB8);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  sub_12E1C(v9, &qword_E10AD0, &qword_B1CCB8);
  sub_12E1C(v11, &qword_E10AD0, &qword_B1CCB8);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    sub_12E1C(v5, &qword_E10AC8, &qword_B1CCB0);
    v14 = 0;
    return v14 & 1;
  }

  sub_12E1C(v5, &qword_E10AD0, &qword_B1CCB8);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.hasJoinedCollaboration.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A40, &qword_B1CBE0);
  __chkstk_darwin();
  v1 = &v15 - v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A48, &qword_B1CBE8);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  sub_AB8BF0();
  v6 = sub_AB8BE0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    sub_12E1C(v1, &qword_E10A40, &qword_B1CBE0);
    v8 = sub_AB8B30();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  sub_AB8BB0();
  (*(v7 + 8))(v1, v6);
  v9 = sub_AB8B30();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_10;
  }

  sub_15F84(v5, v3, &qword_E10A48, &qword_B1CBE8);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_10;
  }

  v13 = 1;
LABEL_11:
  sub_12E1C(v5, &qword_E10A48, &qword_B1CBE8);
  return v13;
}

uint64_t Playlist.hasUnsupportedContent.getter()
{
  v1[7] = v0;
  v2 = sub_AB8DE0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10AE0, &qword_B1CCC8);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECC8, &unk_B1CCD0);
  v1[14] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF0, &qword_B1F180);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF8, &unk_B1CCE0);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00, &qword_B1A0A0);
  v1[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B08, &qword_B1CCF0);
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_5F2BC4, 0, 0);
}

uint64_t sub_5F2BC4()
{
  v1 = v0[22];
  v2 = v0[7];
  sub_AB7E60();
  swift_getKeyPath();
  v3 = sub_AB8E20();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_5F5020(&qword_E10B10, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  sub_AB7E20();

  sub_12E1C(v1, &qword_E10B00, &qword_B1A0A0);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_5F2D8C;
  v6 = v0[23];
  v7 = v0[21];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_5F2D8C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_5F32D8;
  }

  else
  {
    v2 = sub_5F2EA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5F2EA0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  sub_AB7EB0();
  (*(v2 + 16))(v3, v1, v4);
  sub_36A00(&qword_E10B18, &qword_E10AF0, &qword_B1F180, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_AB95A0();
  v7 = *(v5 + 36);
  sub_36A00(&qword_E10B20, &qword_E10AF0, &qword_B1F180, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_AB9CA0();
  v47 = v0;
  if (*(v6 + v7) == v0[6])
  {
LABEL_5:
    v19 = v47[24];
    v18 = v47[25];
    v20 = v47[23];
    v22 = v47[20];
    v21 = v47[21];
    v24 = v47[18];
    v23 = v47[19];
    v25 = v47[15];
    v26 = v47[16];
    sub_12E1C(v47[13], &unk_E10AE0, &qword_B1CCC8);
    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v8 = v0[9];
    v43 = (v8 + 16);
    v46 = (v8 + 32);
    v41 = (v8 + 8);
    while (1)
    {
      v9 = v47[10];
      v10 = v47[11];
      v11 = v47[8];
      v12 = v7;
      v13 = sub_AB9D80();
      (*v43)(v10);
      v13(v47 + 2, 0);
      v7 = v12;
      sub_AB9CB0();
      v14 = *v46;
      (*v46)(v9, v10, v11);
      sub_AB8D80();
      if (!v15)
      {
        break;
      }

      v16 = v47[10];
      v17 = v47[8];

      (*v41)(v16, v17);
      sub_AB9CA0();
      if (*(v6 + v12) == v47[6])
      {
        goto LABEL_5;
      }
    }

    v29 = v47[24];
    v30 = v47[25];
    v32 = v47[20];
    v31 = v47[21];
    v34 = v47[18];
    v33 = v47[19];
    v36 = v47[15];
    v35 = v47[16];
    v44 = v47[14];
    v45 = v47[23];
    v37 = v47[10];
    v42 = v47[8];
    sub_12E1C(v47[13], &unk_E10AE0, &qword_B1CCC8);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v45);
    v14(v44, v37, v42);
    v28 = 0;
    v27 = 1;
  }

  v38 = v47[14];
  (*(v47[9] + 56))(v38, v28, 1, v47[8]);
  sub_12E1C(v38, &qword_E0ECC8, &unk_B1CCD0);

  v39 = v47[1];

  return v39(v27);
}

uint64_t sub_5F32D8()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1(0);
}

uint64_t Playlist.duplicate()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F600, &qword_B1A0E8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B30, &unk_B1A100);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_5F34FC, 0, 0);
}

uint64_t sub_5F34FC()
{
  sub_AB4310();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_5F35A4;
  v2 = *(v0 + 40);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_5F35A4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_5F3758;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_5F36D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_5F36D0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5F3758()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

double sub_5F37E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_AB8E20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  *&result = __chkstk_darwin().n128_u64[0];
  v13 = &v18 - v12;
  if (a1)
  {
    v14 = sub_AB9990();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    (*(v9 + 32))(v16 + v15, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v17 = (v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a1;
    v17[1] = a2;

    sub_5E89D8(0, 0, v13, &unk_B1D030, v16);
  }

  return result;
}

uint64_t sub_5F39E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10D70, &qword_B1D038);
  v6[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10D78, &qword_B1D040);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D80, &unk_B1D048);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_5F3AF0, 0, 0);
}

uint64_t sub_5F3AF0()
{
  v1 = *(v0 + 56);
  sub_AB8E00();
  v2 = sub_AB8A60();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  *(v0 + 72) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(*(v0 + 56), &unk_E10D80, &unk_B1D048);
    (*(v0 + 24))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = sub_AB89C0();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = sub_AB8920();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_5F3D10;
    v11 = *(v0 + 48);
    v12 = *(v0 + 40);
    v13.n128_u64[0] = 0x4072C00000000000;
    v14.n128_u64[0] = 1.0;
    v15.n128_u64[0] = 0x4072C00000000000;

    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v11, v12, 0, 0, v13, v15, v14);
  }
}

uint64_t sub_5F3D10(uint64_t a1)
{
  v3 = *v2;
  (*v2)[11] = a1;

  if (v1)
  {
    v6 = v3 + 5;
    v4 = v3[5];
    v5 = v6[1];

    sub_12E1C(v4, &qword_E10D70, &qword_B1D038);
    sub_12E1C(v5, &qword_E10D78, &qword_B1D040);
    v7 = sub_5F3FB4;
  }

  else
  {
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[6];
    v10 = v3[7];
    sub_12E1C(v3[5], &qword_E10D70, &qword_B1D038);
    sub_12E1C(v11, &qword_E10D78, &qword_B1D040);
    (*(v9 + 8))(v10, v8);
    v7 = sub_5F3EC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_5F3EC0()
{
  v1 = UIImagePNGRepresentation(*(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB3260();
    v5 = v4;

    v6.super.isa = sub_AB3250().super.isa;
    sub_466B8(v3, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v0 + 88);
  (*(v0 + 24))(v6.super.isa, 0);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_5F3FB4()
{
  (*(*(v0 + 72) + 8))(*(v0 + 56), *(v0 + 64));
  (*(v0 + 24))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

double sub_5F4054(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_AACD4;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_AB8FF0();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_17654(v7, v8);

  return result;
}

uint64_t _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0(char a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_AB91E0();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v7 = qword_E71B20;
  sub_AB3550();
  v8 = sub_AB9320();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_5F4388()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5F43E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_5EB324(a1, v4, v5, v1 + 32);
}

uint64_t sub_5F4490()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v6);

  v10 = v6[4];
  *v11 = v6[5];
  v12 = v6[6];
  v13 = v6[7];
  v7[0] = v6[0];
  v7[1] = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    if (BYTE1(v7[0]) != 1)
    {
      sub_5F46BC();
      swift_allocError();
      v4 = xmmword_AF8620;
      goto LABEL_13;
    }

    if ((sub_5EB6E4() & 1) == 0)
    {
      sub_5F46BC();
      swift_allocError();
      v4 = xmmword_AF8610;
LABEL_13:
      *v3 = v4;
      v2 = v3 + 1;
      goto LABEL_14;
    }
  }

  if ((sub_472A84(3, v8) & 1) == 0)
  {
    sub_5F46BC();
    swift_allocError();
    v4 = xmmword_B13C50;
    goto LABEL_13;
  }

  if (v11[1] && ([v11[1] isMinorAccountHolder] & 1) == 0)
  {
    if (BYTE8(v7[0]))
    {
      return sub_70C54(v7);
    }

    sub_5F46BC();
    swift_allocError();
    v4 = xmmword_B13C40;
    goto LABEL_13;
  }

  sub_5F46BC();
  swift_allocError();
  v1 = v0;
  v2 = (v0 + 16);
  *v1 = 0;
  v1[1] = 0;
LABEL_14:
  *v2 = 3;
  swift_willThrow();
  return sub_70C54(v7);
}

unint64_t sub_5F46BC()
{
  result = qword_E10A70;
  if (!qword_E10A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10A70);
  }

  return result;
}

uint64_t sub_5F4710()
{

  return swift_deallocObject();
}

double block_copy_helper_182(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_5F47B8()
{
  result = qword_E10B38;
  if (!qword_E10B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10B38);
  }

  return result;
}

unint64_t sub_5F4810()
{
  result = qword_E10B40;
  if (!qword_E10B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10B40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore13CollaborationO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_5F48A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_5F48E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_5F492C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_5F49BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_5F4A74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_5F4B2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E065C(a1, v4);
}

uint64_t sub_5F4BE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t objectdestroyTm_16(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

double sub_5F4D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_AB8E20() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_5F37E0(a1, a2, a3, a4, v10);
}

uint64_t sub_5F4DDC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_5F4E14()
{
  v1 = sub_AB8E20();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_5F4EF0(uint64_t a1)
{
  v4 = *(sub_AB8E20() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_17BD0;

  return sub_5F39E0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_5F5020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5F5068()
{

  return swift_deallocObject();
}

__n128 static Alert.explicitRestrictedAlert(traitCollection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_5FEC68(a1, v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

__n128 static Alert.confirmDelete(for:library:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  sub_5F7C10(v7, a2, v5, v6, v10);
  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v11;
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.cellularDataDisallowedAlert(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_5FFF74(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.dolbyAtmosDownloadsAlert(message:completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_5FFA40(a1, a2, a3, a4, v9);
  v7 = v9[3];
  *(a5 + 32) = v9[2];
  *(a5 + 48) = v7;
  *(a5 + 64) = v10;
  result = v9[1];
  *a5 = v9[0];
  *(a5 + 16) = result;
  return result;
}

double static Alert.Action.cancel.getter@<D0>(uint64_t a1@<X8>)
{
  sub_5FF7A8(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

__n128 static Alert.enableCloudLibraryAlert(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6004AC(a1, v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

void static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v13 = sub_AB3470();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin();
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB31C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v40 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v40 - v23;
  if (qword_E0D528 != -1)
  {
    swift_once();
  }

  v25 = 0uLL;
  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_62DE74(a1, a2, v44, v45, v46, v47, v48, v49, v24, a10 & 1);
    sub_5B513C(v24, v22);
    if ((*(v16 + 48))(v22, 1, v15) == 1)
    {
      sub_4FE5BC(v24);
      v26 = v22;
LABEL_10:
      sub_4FE5BC(v26);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v25 = 0uLL;
      goto LABEL_11;
    }

    v48 = *(v16 + 32);
    v49 = v16 + 32;
    v48(v20, v22, v15);
    v32 = [objc_opt_self() sharedApplication];
    sub_AB30F0(v33);
    v35 = v34;
    v36 = [v32 canOpenURL:v34];

    if (!v36)
    {
      (*(v16 + 8))(v20, v15);
      v26 = v24;
      goto LABEL_10;
    }

    (*(v16 + 16))(v18, v20, v15);
    v37 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v31 = swift_allocObject();
    v48((v31 + v37), v18, v15);
    v38 = v41;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v27 = sub_AB3440();
    v28 = v39;
    (*(v42 + 8))(v38, v43);
    (*(v16 + 8))(v20, v15);
    sub_4FE5BC(v24);
    v25 = xmmword_B13C60;
    v30 = &unk_B1F200;
    v29 = 2;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

LABEL_11:
  *a9 = v27;
  *(a9 + 8) = v28;
  *(a9 + 16) = v25;
  *(a9 + 32) = v29;
  *(a9 + 40) = v30;
  *(a9 + 48) = v31;
}

__n128 static Alert.cellularRestrictedAlert(model:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_600760(a2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

id sub_5F5778()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setVideoCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_5F582C()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setMusicCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 static Alert.networkUnavailableAlert(model:traitCollection:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  sub_601620(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

char *static Alert.accountRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = sub_AB3470();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  sub_AB91E0();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v12 = qword_E71B20;
  v13 = qword_E71B20;
  sub_AB3550();
  v56 = v13;
  v14 = sub_AB9320();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  sub_AB91E0();
  v11(v8, v10, v5);
  sub_AB3550();
  v17 = sub_AB9320();
  v52 = v18;
  v53 = v17;
  v16(v10, v5);
  v51 = v16;
  if (v50 && [v50 userInterfaceIdiom] == &dword_0 + 3)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_AB91E0();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    sub_AB3550();
    v49 = v12;
    v21 = sub_AB9320();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v24 = sub_AB3440();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = sub_506A20(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_506A20((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v28 = &v19[56 * v27];
    v29 = v45;
    *(v28 + 4) = v46;
    *(v28 + 5) = v29;
    v30 = v47;
    *(v28 + 6) = v48;
    *(v28 + 7) = v30;
    v28[64] = 2;
    *(v28 + 9) = &unk_B1D078;
    *(v28 + 10) = 0;
    v11 = v50;
  }

  sub_AB91E0();
  v11(v8, v10, v5);
  v31 = v56;
  sub_AB3550();
  v32 = sub_AB9320();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v36 = sub_AB3440();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_506A20(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_506A20((v40 > 1), v41 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v41 + 1;
  v42 = &v19[56 * v41];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  *(v42 + 6) = v32;
  *(v42 + 7) = v34;
  v42[64] = 2;
  *(v42 + 9) = 0;
  *(v42 + 10) = 0;
  v43 = v54;
  *a2 = v55;
  *(a2 + 8) = v43;
  v44 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v60;
  *(a2 + 52) = *&v60[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id sub_5F5F10()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    LSApplicationWorkspace.openSettings()();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *static Alert.subscriptionRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = sub_AB3470();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  sub_AB91E0();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v12 = qword_E71B20;
  v13 = qword_E71B20;
  sub_AB3550();
  v56 = v13;
  v14 = sub_AB9320();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  sub_AB91E0();
  v11(v8, v10, v5);
  sub_AB3550();
  v17 = sub_AB9320();
  v52 = v18;
  v53 = v17;
  v16(v10, v5);
  v51 = v16;
  if (v50 && [v50 userInterfaceIdiom] == &dword_0 + 3)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_AB91E0();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    sub_AB3550();
    v49 = v12;
    v21 = sub_AB9320();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v24 = sub_AB3440();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = sub_506A20(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_506A20((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v28 = &v19[56 * v27];
    v29 = v45;
    *(v28 + 4) = v46;
    *(v28 + 5) = v29;
    v30 = v47;
    *(v28 + 6) = v48;
    *(v28 + 7) = v30;
    v28[64] = 2;
    *(v28 + 9) = &unk_B1D080;
    *(v28 + 10) = 0;
    v11 = v50;
  }

  sub_AB91E0();
  v11(v8, v10, v5);
  v31 = v56;
  sub_AB3550();
  v32 = sub_AB9320();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v36 = sub_AB3440();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_506A20(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_506A20((v40 > 1), v41 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v41 + 1;
  v42 = &v19[56 * v41];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  *(v42 + 6) = v32;
  *(v42 + 7) = v34;
  v42[64] = 2;
  *(v42 + 9) = 0;
  *(v42 + 10) = 0;
  v43 = v54;
  *a2 = v55;
  *(a2 + 8) = v43;
  v44 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v60;
  *(a2 + 52) = *&v60[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id sub_5F6578()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 144));

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_70C54(v0 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    sub_AB92A0();
    v7 = sub_AB9260();

    [v6 setBoolValue:1 forSetting:v7];

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5F670C()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openRestrictions()();
  }

  v3 = *(v0 + 8);

  return v3();
}

double static Alert.contentUnavailableAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_AB3470();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin();
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  sub_AB91E0();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v11 = qword_E71B20;
  sub_AB3550();
  v12 = v11;
  v13 = sub_AB9320();
  v26 = v14;
  v27 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_AB91E0();
  v10(v7, v9, v4);
  sub_AB3550();
  v16 = sub_AB9320();
  v18 = v17;
  v15(v9, v4);
  v19 = v28;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v20 = sub_AB3440();
  v22 = v21;
  (*(v29 + 8))(v19, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v23 = swift_allocObject();
  *&result = 1;
  *(v23 + 16) = xmmword_AF4EC0;
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;
  *(v23 + 48) = v16;
  *(v23 + 56) = v18;
  *(v23 + 64) = 2;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v25 = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v32;
  *(a1 + 36) = *&v32[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v31;
  *(a1 + 52) = *&v31[3];
  *(a1 + 56) = v23;
  *(a1 + 64) = 0;
  return result;
}

double static Alert.userUploadRequiredAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_AB3470();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin();
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  sub_AB91E0();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v11 = qword_E71B20;
  sub_AB3550();
  v12 = v11;
  v13 = sub_AB9320();
  v31 = v14;
  v32 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_AB91E0();
  v10(v7, v9, v4);
  sub_AB3550();
  v16 = sub_AB9320();
  v29 = v17;
  v30 = v16;
  v15(v9, v4);
  sub_AB91E0();
  v10(v7, v9, v4);
  sub_AB3550();
  v18 = sub_AB9320();
  v20 = v19;
  v15(v9, v4);
  v21 = v33;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v22 = sub_AB3440();
  v24 = v23;
  (*(v34 + 8))(v21, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_AF4EC0;
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  *(v25 + 48) = v18;
  *(v25 + 56) = v20;
  *(v25 + 64) = 2;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  v27 = v31;
  *a1 = v32;
  *(a1 + 8) = v27;
  v28 = v29;
  *(a1 + 16) = v30;
  *(a1 + 24) = v28;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v37;
  *(a1 + 36) = *&v37[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v36;
  *(a1 + 52) = *&v36[3];
  *(a1 + 56) = v25;
  *(a1 + 64) = 0;
  return result;
}

__n128 static Alert.ageVerificationFallbackAlert()@<Q0>(uint64_t a1@<X8>)
{
  sub_601D74(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_5F6F94()
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5F7034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F7054, 0, 0);
}

uint64_t sub_5F7054()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_5F70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F70E4, 0, 0);
}

id sub_5F70E4()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result setMusicCellularDownloadingAllowed:1];

    if (v3)
    {
      (*(v0 + 16))(1);
    }

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5F7194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_5F71B4, 0, 0);
}

uint64_t sub_5F71B4()
{
  v1 = *(v0 + 24);
  v3 = v1[3];
  v2 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_5F7270;

  return MusicLibrary.remove<A>(_:)(v4, v3, v2);
}

uint64_t sub_5F7270()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_5F73A4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_5F73A4()
{
  v14 = v0;
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v8 = sub_AB9350();
    v10 = sub_500C84(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Failed to delete item=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_5F7574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F7594, 0, 0);
}

uint64_t sub_5F7594()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 setPrefersSpatialDownloads:1];

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_5F76C0;

  return v5(1);
}

uint64_t sub_5F76C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5F77B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_17BD0;

  return v6(0);
}

__n128 static Alert.downloadPinsAlert(completion:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_602078(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_5F78F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F7910, 0, 0);
}

uint64_t sub_5F7910()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5F7978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F7998, 0, 0);
}

id sub_5F7998()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result enableAutomaticDownloadsForPinnedLibraryEntities];

    v3(1);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5F7A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  sub_AB9940();
  *(v3 + 24) = sub_AB9930();
  v5 = sub_AB98B0();

  return _swift_task_switch(sub_5F7ADC, v5, v4);
}

uint64_t sub_5F7ADC()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_AB30F0(v2);
  v4 = v3;
  sub_52A314(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_602BD4(&qword_E0DE20, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_B160E4);
  isa = sub_AB8FD0().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_5F7C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v9 = sub_AB3470();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v12 = sub_AB9250();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v32 - v16;
  v37[3] = a3;
  v37[4] = a4;
  v36 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_AB91E0();
  (*(v13 + 16))(v15, v17, v12);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v19 = qword_E71B20;
  sub_AB3550();
  v32 = sub_AB9320();
  v21 = v20;
  (*(v13 + 8))(v17, v12);
  sub_E8BA0(v37, v38);
  v22 = swift_allocObject();
  sub_70DF8(v38, v22 + 16);
  *(v22 + 56) = v33;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v23 = sub_AB3440();
  v25 = v24;
  (*(v34 + 8))(v11, v35);
  v26 = sub_5FD6F8(boxed_opaque_existential_0, a3, v36);
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_AF85F0;
  *(v29 + 32) = v23;
  *(v29 + 40) = v25;
  *(v29 + 48) = v32;
  *(v29 + 56) = v21;
  *(v29 + 64) = 1;
  *(v29 + 72) = &unk_B1D118;
  *(v29 + 80) = v22;

  sub_5FF7A8(v38);
  v30 = v38[1];
  *(v29 + 88) = v38[0];
  *(v29 + 104) = v30;
  *(v29 + 120) = v38[2];
  *(v29 + 136) = v39;

  result = __swift_destroy_boxed_opaque_existential_0(v37);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = v26;
  *(a5 + 24) = v28;
  *(a5 + 32) = 1;
  *(a5 + 33) = v38[0];
  *(a5 + 36) = *(v38 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = v37[0];
  *(a5 + 52) = *(v37 + 3);
  *(a5 + 56) = v29;
  *(a5 + 64) = 0;
  return result;
}

uint64_t sub_5F8038(uint64_t a1)
{
  v115 = a1;
  v94 = sub_AB8860();
  v88 = *(v94 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v82 - v2;
  __chkstk_darwin();
  v89 = &v82 - v3;
  v91 = sub_AB8D50();
  v90 = *(v91 - 8);
  __chkstk_darwin();
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_AB8DE0();
  v95 = *(v98 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v82 - v6;
  v100 = sub_AB4770();
  v97 = *(v100 - 8);
  __chkstk_darwin();
  v82 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v82 - v8;
  v102 = sub_AB4710();
  v99 = *(v102 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_AB44B0();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v82 - v11;
  v12 = sub_AB86C0();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v82 - v15;
  v111 = sub_AB8E20();
  v108 = *(v111 - 8);
  __chkstk_darwin();
  v110 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB8030();
  v112 = *(v17 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v82 - v19;
  sub_AB35C0();
  __chkstk_darwin();
  v114 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_AB9250();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v82 - v26;
  v28 = sub_AB8770();
  v113 = *(v28 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v12;
  v117[4] = &protocol witness table for Song;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v117);
  v105 = v13;
  v32 = *(v13 + 16);
  v33 = v115;
  v115 = v12;
  v32(boxed_opaque_existential_0, v33, v12);
  sub_E8BA0(v117, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08, &qword_B1D120);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v34 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v23 + 8))(v27, v22);
    v36 = *(v113 + 8);
    v37 = v30;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v39 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v23 + 8))(v27, v22);
    (*(v112 + 8))(v20, v17);
    goto LABEL_15;
  }

  v41 = v110;
  v40 = v111;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v42 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v23 + 8))(v27, v22);
    v36 = *(v108 + 8);
    v37 = v41;
    v38 = v40;
    goto LABEL_14;
  }

  v28 = v115;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v44 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v23 + 8))(v27, v22);
    v36 = *(v105 + 8);
    v37 = v109;
    goto LABEL_5;
  }

  v28 = v106;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v45 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v23 + 8))(v27, v22);
    v36 = *(v103 + 8);
    v37 = v107;
    goto LABEL_5;
  }

  v28 = v102;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v46 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v23 + 8))(v27, v22);
    v36 = *(v99 + 8);
    v47 = &v119;
LABEL_33:
    v37 = *(v47 - 32);
LABEL_5:
    v38 = v28;
LABEL_14:
    v36(v37, v38);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(&v116);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v117);
    return v35;
  }

  v28 = v100;
  v48 = v23;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v49 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v23 + 8))(v27, v22);
    v36 = *(v97 + 8);
    v47 = &v118;
    goto LABEL_33;
  }

  v50 = v96;
  v51 = v98;
  if (!swift_dynamicCast())
  {
    v63 = v89;
    v64 = v94;
    v65 = swift_dynamicCast();
    v66 = v25;
    v67 = v115;
    if (v65)
    {
      v68 = v88;
      v69 = v87;
      (*(v88 + 32))(v87, v63, v64);
      v70 = v86;
      (*(v68 + 16))(v86, v69, v64);
      v71 = (*(v68 + 88))(v70, v64);
      if (v71 == enum case for Track.song(_:))
      {
        (*(v68 + 96))(v70, v64);
        v72 = v105;
        v73 = v84;
        (*(v105 + 32))(v84, v70, v67);
        v74 = sub_5F8038(v73);
        v75 = v67;
        v35 = v74;
        (*(v72 + 8))(v73, v75);
LABEL_46:
        (*(v68 + 8))(v69, v64);
        goto LABEL_15;
      }

      if (v71 == enum case for Track.musicVideo(_:))
      {
        (*(v68 + 96))(v70, v64);
        v78 = v112;
        v79 = v83;
        (*(v112 + 32))(v83, v70, v17);
        v35 = sub_5F9580(v79);
        (*(v78 + 8))(v79, v17);
        goto LABEL_46;
      }

      v80 = *(v68 + 8);
      v80(v69, v64);
      v80(v70, v64);
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_0(&v116);
    sub_AB91E0();
    (*(v48 + 16))(v66, v27, v22);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v81 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v48 + 8))(v27, v22);
    goto LABEL_16;
  }

  v52 = v95;
  v53 = v93;
  (*(v95 + 32))(v93, v50, v51);
  v54 = v92;
  sub_AB8D60();
  v55 = v90;
  v56 = v91;
  v57 = (*(v90 + 88))(v54, v91);
  if (v57 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v103;
    v59 = v85;
    v60 = v106;
    (*(v103 + 32))(v85, v54, v106);
    v61 = sub_5FAB4C(v59);
LABEL_37:
    v62 = v60;
    v35 = v61;
    (*(v58 + 8))(v59, v62);
LABEL_43:
    (*(v52 + 8))(v53, v98);
    goto LABEL_15;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v55 + 96))(v54, v56);
    v76 = v112;
    v77 = v83;
    (*(v112 + 32))(v83, v54, v17);
    v35 = sub_5F9580(v77);
    (*(v76 + 8))(v77, v17);
    goto LABEL_43;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v105;
    v59 = v84;
    v60 = v115;
    (*(v105 + 32))(v84, v54, v115);
    v61 = sub_5F8038(v59);
    goto LABEL_37;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v97;
    v59 = v82;
    v60 = v100;
    (*(v97 + 32))(v82, v54, v100);
    v61 = sub_5FC104(v59);
    goto LABEL_37;
  }

  if (v57 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v57 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v52 + 8))(v53, v98);
    (*(v55 + 8))(v54, v56);
    v66 = v25;
    goto LABEL_55;
  }

  (*(v55 + 8))(v54, v56);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5F9580(uint64_t a1)
{
  v120 = a1;
  v97 = sub_AB8860();
  v93 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v87 - v2;
  __chkstk_darwin();
  v94 = &v87 - v3;
  v95 = sub_AB8D50();
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v96 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_AB8DE0();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v100 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v87 - v6;
  v106 = sub_AB4770();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v87 - v8;
  v107 = sub_AB4710();
  v104 = *(v107 - 8);
  __chkstk_darwin();
  v109 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_AB44B0();
  v108 = *(v112 - 8);
  __chkstk_darwin();
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v87 - v11;
  v115 = sub_AB86C0();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v87 - v13;
  v118 = sub_AB8E20();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB8030();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v87 - v18;
  sub_AB35C0();
  __chkstk_darwin();
  v119 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB9250();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v87 - v25;
  v27 = sub_AB8770();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122[3] = v15;
  v122[4] = &protocol witness table for MusicVideo;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v122);
  v116 = v16;
  (*(v16 + 16))(boxed_opaque_existential_0, v120, v15);
  sub_E8BA0(v122, &v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08, &qword_B1D120);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v32 = qword_E71B20;
    sub_AB3550();
    v33 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v34 = qword_E71B20;
    sub_AB3550();
    v33 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v116 + 8))(v19, v15);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v35 = qword_E71B20;
    sub_AB3550();
    v33 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v113 + 8))(v117, v118);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v36 = qword_E71B20;
    sub_AB3550();
    v33 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v110 + 8))(v114, v115);
    goto LABEL_29;
  }

  v37 = v26;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v38 = qword_E71B20;
    sub_AB3550();
    v33 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v108 + 8))(v111, v112);
    goto LABEL_29;
  }

  v39 = v107;
  v40 = v21;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v37, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v41 = qword_E71B20;
    sub_AB3550();
    v33 = sub_AB9320();
    (*(v22 + 8))(v37, v21);
    (*(v104 + 8))(v109, v39);
    goto LABEL_29;
  }

  v42 = v105;
  v43 = v106;
  v44 = v22;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v37, v40);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v45 = qword_E71B20;
    sub_AB3550();
    v33 = sub_AB9320();
    (*(v22 + 8))(v37, v40);
    (*(v102 + 8))(v42, v43);
    goto LABEL_29;
  }

  v47 = v101;
  v48 = v103;
  if (!swift_dynamicCast())
  {
    v60 = v94;
    v61 = v97;
    v62 = v24;
    if (swift_dynamicCast())
    {
      v63 = v60;
      v64 = v93;
      v65 = v92;
      (*(v93 + 32))(v92, v63, v61);
      v66 = v91;
      (*(v64 + 16))(v91, v65, v61);
      v67 = (*(v64 + 88))(v66, v61);
      if (v67 == enum case for Track.song(_:))
      {
        (*(v64 + 96))(v66, v61);
        v68 = v110;
        v69 = v89;
        v70 = v115;
        (*(v110 + 32))(v89, v66, v115);
        v71 = sub_5F8038(v69);
        v72 = v70;
        v33 = v71;
        (*(v68 + 8))(v69, v72);
LABEL_42:
        (*(v64 + 8))(v65, v61);
        goto LABEL_29;
      }

      if (v67 == enum case for Track.musicVideo(_:))
      {
        (*(v64 + 96))(v66, v61);
        v76 = v116;
        v77 = v88;
        (*(v116 + 32))(v88, v66, v15);
        v78 = sub_5F9580(v77);
        (*(v76 + 8))(v77, v15);
        v33 = v78;
        goto LABEL_42;
      }

      v84 = *(v64 + 8);
      v84(v65, v61);
      v84(v66, v61);
    }

LABEL_52:
    __swift_destroy_boxed_opaque_existential_0(&v121);
    sub_AB91E0();
    (*(v44 + 16))(v62, v37, v40);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v86 = qword_E71B20;
    sub_AB3550();
    v33 = sub_AB9320();
    (*(v44 + 8))(v37, v40);
    goto LABEL_30;
  }

  v49 = v98;
  v50 = v100;
  (*(v98 + 32))(v100, v47, v48);
  v51 = v96;
  sub_AB8D60();
  v52 = v99;
  v53 = v95;
  v54 = (*(v99 + 88))(v51, v95);
  if (v54 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v52 + 96))(v51, v53);
    v55 = v108;
    v56 = v90;
    v57 = v112;
    (*(v108 + 32))(v90, v51, v112);
    v58 = sub_5FAB4C(v56);
LABEL_34:
    v59 = v57;
    v33 = v58;
    (*(v55 + 8))(v56, v59);
    (*(v49 + 8))(v50, v103);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_0(&v121);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_0(v122);
    return v33;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v99 + 96))(v51, v53);
    v73 = v116;
    v74 = v88;
    (*(v116 + 32))(v88, v51, v15);
    v75 = sub_5F9580(v74);
    (*(v73 + 8))(v74, v15);
    v33 = v75;
LABEL_45:
    (*(v49 + 8))(v100, v103);
    goto LABEL_29;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v99 + 96))(v51, v53);
    v79 = v110;
    v80 = v89;
    v81 = v115;
    (*(v110 + 32))(v89, v51, v115);
    v82 = sub_5F8038(v80);
    v83 = v81;
    v33 = v82;
    (*(v79 + 8))(v80, v83);
    goto LABEL_45;
  }

  v85 = v99;
  v50 = v100;
  if (v54 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v99 + 96))(v51, v53);
    v55 = v102;
    v56 = v87;
    v57 = v106;
    (*(v102 + 32))(v87, v51, v106);
    v58 = sub_5FC104(v56);
    goto LABEL_34;
  }

  if (v54 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v54 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v49 + 8))(v100, v103);
    (*(v85 + 8))(v51, v53);
    v62 = v24;
    goto LABEL_52;
  }

  (*(v99 + 8))(v51, v53);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5FAB4C(uint64_t a1)
{
  v114 = a1;
  v94 = sub_AB8860();
  v89 = *(v94 - 8);
  __chkstk_darwin();
  v87 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v82 - v2;
  __chkstk_darwin();
  v90 = &v82 - v3;
  v92 = sub_AB8D50();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_AB8DE0();
  v95 = *(v99 - 8);
  __chkstk_darwin();
  v96 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v82 - v6;
  v101 = sub_AB4770();
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v82 - v8;
  v103 = sub_AB4710();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB44B0();
  v115 = *(v10 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v82 - v12;
  v109 = sub_AB86C0();
  v105 = *(v109 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v82 - v14;
  v110 = sub_AB8E20();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v112 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB8030();
  v111 = *(v16 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v82 - v18;
  sub_AB35C0();
  __chkstk_darwin();
  v113 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB9250();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v82 - v25;
  v27 = sub_AB8770();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v10;
  v117[4] = sub_602BD4(&qword_E10E10, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v117);
  v32 = v114;
  v33 = *(v115 + 16);
  v114 = v10;
  v33(boxed_opaque_existential_0, v32, v10);
  sub_E8BA0(v117, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08, &qword_B1D120);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v34 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_16;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v37 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v111 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_15:
    v38(v39, v40);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(&v116);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(v117);
    return v35;
  }

  v41 = v110;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v42 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v107 + 8);
    v39 = v112;
    goto LABEL_14;
  }

  v44 = v36;
  v45 = v108;
  v36 = v109;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v46 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v105 + 8);
    v39 = v45;
    goto LABEL_9;
  }

  v41 = v114;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v47 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v115 + 8);
    v39 = v106;
    goto LABEL_14;
  }

  v41 = v103;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v48 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v100 + 8);
    v49 = &v119;
LABEL_34:
    v39 = *(v49 - 32);
LABEL_14:
    v40 = v41;
    goto LABEL_15;
  }

  v41 = v101;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v50 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v98 + 8);
    v49 = &v118;
    goto LABEL_34;
  }

  v51 = v97;
  v52 = v99;
  if (!swift_dynamicCast())
  {
    v63 = v94;
    v64 = v26;
    if (swift_dynamicCast())
    {
      v115 = v21;
      v65 = v89;
      v66 = v88;
      (*(v89 + 32))();
      v67 = v87;
      (*(v65 + 16))(v87, v66, v63);
      v68 = (*(v65 + 88))(v67, v63);
      if (v68 == enum case for Track.song(_:))
      {
        (*(v65 + 96))(v67, v63);
        v69 = v105;
        v70 = v85;
        (*(v105 + 32))(v85, v67, v36);
        v35 = sub_5F8038(v70);
        (*(v69 + 8))(v70, v36);
        (*(v65 + 8))(v66, v63);
        goto LABEL_16;
      }

      if (v68 == enum case for Track.musicVideo(_:))
      {
        (*(v65 + 96))(v67, v63);
        v73 = v111;
        v74 = v66;
        v75 = v84;
        (*(v111 + 32))(v84, v67, v44);
        v35 = sub_5F9580(v75);
        (*(v73 + 8))(v75, v44);
        (*(v65 + 8))(v74, v63);
        goto LABEL_16;
      }

      v80 = *(v65 + 8);
      v80(v66, v63);
      v80(v67, v63);
      v21 = v115;
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_0(&v116);
    sub_AB91E0();
    (*(v22 + 16))(v24, v64, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v81 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v64, v21);
    goto LABEL_17;
  }

  v53 = v52;
  v54 = v95;
  v55 = v96;
  (*(v95 + 32))(v96, v51, v53);
  v56 = v93;
  sub_AB8D60();
  v57 = v91;
  v58 = v92;
  v59 = (*(v91 + 88))(v56, v92);
  if (v59 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v114;
    v61 = v115;
    v62 = v86;
    (*(v115 + 32))(v86, v56, v114);
    v35 = sub_5FAB4C(v62);
    (*(v61 + 8))(v62, v60);
    (*(v54 + 8))(v55, v99);
    goto LABEL_16;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v57 + 96))(v56, v58);
    v71 = v111;
    v72 = v84;
    (*(v111 + 32))(v84, v56, v44);
    v35 = sub_5F9580(v72);
    (*(v71 + 8))(v72, v44);
LABEL_51:
    (*(v54 + 8))(v96, v99);
    goto LABEL_16;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v76 = v105;
    v77 = v85;
    v78 = v109;
    (*(v105 + 32))(v85, v56, v109);
    v79 = sub_5F8038(v77);
LABEL_50:
    v35 = v79;
    (*(v76 + 8))(v77, v78);
    goto LABEL_51;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v76 = v98;
    v77 = v83;
    v78 = v101;
    (*(v98 + 32))(v83, v56, v101);
    v79 = sub_5FC104(v77);
    goto LABEL_50;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v96, v99);
    (*(v57 + 8))(v56, v58);
    v64 = v26;
    goto LABEL_55;
  }

  (*(v57 + 8))(v56, v58);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5FC104(uint64_t a1)
{
  v125 = a1;
  v105 = sub_AB8860();
  v100 = *(v105 - 8);
  __chkstk_darwin();
  v98 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v93 - v2;
  __chkstk_darwin();
  v101 = &v93 - v3;
  v103 = sub_AB8D50();
  v102 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_AB8DE0();
  v106 = *(v109 - 8);
  __chkstk_darwin();
  v107 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v7 = sub_AB4770();
  v126 = *(v7 - 8);
  __chkstk_darwin();
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v93 - v9;
  v114 = sub_AB4710();
  v110 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_AB44B0();
  v112 = *(v117 - 8);
  __chkstk_darwin();
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v93 - v12;
  v119 = sub_AB86C0();
  v115 = *(v119 - 8);
  __chkstk_darwin();
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v93 - v14;
  v122 = sub_AB8E20();
  v118 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB8030();
  v123 = *(v16 - 8);
  __chkstk_darwin();
  v95 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v93 - v18;
  sub_AB35C0();
  __chkstk_darwin();
  v124 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB9250();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v93 - v25;
  v27 = sub_AB8770();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128[3] = v7;
  v128[4] = sub_602BD4(&qword_E10E18, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v128);
  v32 = v125;
  v33 = *(v126 + 16);
  v125 = v7;
  v33(boxed_opaque_existential_0, v32, v7);
  sub_E8BA0(v128, &v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08, &qword_B1D120);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v34 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_27;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v37 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v123 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_26:
    v38(v39, v40);
LABEL_27:
    __swift_destroy_boxed_opaque_existential_0(&v127);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_0(v128);
    return v35;
  }

  v42 = v121;
  v41 = v122;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v43 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v118 + 8))(v42, v41);
    goto LABEL_27;
  }

  v44 = v119;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v45 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v115 + 8))(v120, v44);
    goto LABEL_27;
  }

  v46 = v24;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v47 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    (*(v112 + 8))(v116, v117);
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v48 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v110 + 8);
    v39 = v113;
    v40 = v114;
    goto LABEL_26;
  }

  v122 = v36;
  v36 = v125;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v50 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v26, v21);
    v38 = *(v126 + 8);
    v39 = v111;
    goto LABEL_9;
  }

  v51 = v108;
  v52 = v109;
  if (!swift_dynamicCast())
  {
    v65 = v101;
    v66 = v105;
    v67 = v21;
    v68 = v26;
    if (swift_dynamicCast())
    {
      v69 = v100;
      v70 = v99;
      (*(v100 + 32))(v99, v65, v66);
      v71 = v98;
      (*(v69 + 16))(v98, v70, v66);
      v72 = (*(v69 + 88))(v71, v66);
      if (v72 == enum case for Track.song(_:))
      {
        (*(v69 + 96))(v71, v66);
        v73 = v115;
        v74 = v96;
        (*(v115 + 32))(v96, v71, v44);
        v75 = sub_5F8038(v74);
        (*(v73 + 8))(v74, v44);
        v35 = v75;
LABEL_43:
        (*(v69 + 8))(v70, v66);
        goto LABEL_27;
      }

      if (v72 == enum case for Track.musicVideo(_:))
      {
        (*(v69 + 96))(v71, v66);
        v81 = v122;
        v82 = v123;
        v83 = v95;
        (*(v123 + 32))(v95, v71, v122);
        v84 = sub_5F9580(v83);
        v85 = v81;
        v35 = v84;
        (*(v82 + 8))(v83, v85);
        goto LABEL_43;
      }

      v90 = *(v69 + 8);
      v90(v70, v66);
      v90(v71, v66);
    }

LABEL_54:
    __swift_destroy_boxed_opaque_existential_0(&v127);
    sub_AB91E0();
    (*(v22 + 16))(v46, v68, v67);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v92 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v22 + 8))(v68, v67);
    goto LABEL_28;
  }

  v53 = v106;
  v54 = v107;
  (*(v106 + 32))(v107, v51, v52);
  v55 = v104;
  sub_AB8D60();
  v56 = v102;
  v57 = v103;
  v58 = (*(v102 + 88))(v55, v103);
  if (v58 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v56 + 96))(v55, v57);
    v59 = v112;
    v60 = v97;
    v61 = v117;
    (*(v112 + 32))(v97, v55, v117);
    v62 = sub_5FAB4C(v60);
    (*(v59 + 8))(v60, v61);
    v63 = *(v53 + 8);
    v64 = v54;
LABEL_50:
    v91 = v52;
    v35 = v62;
    v63(v64, v91);
    goto LABEL_27;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v56 + 96))(v55, v57);
    v76 = v122;
    v77 = v123;
    v78 = v95;
    (*(v123 + 32))(v95, v55, v122);
    v79 = sub_5F9580(v78);
    (*(v77 + 8))(v78, v76);
    v80 = v52;
    v35 = v79;
    (*(v53 + 8))(v107, v80);
    goto LABEL_27;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v56 + 96))(v55, v57);
    v86 = v115;
    v87 = v96;
    v88 = v119;
    (*(v115 + 32))(v96, v55, v119);
    v89 = sub_5F8038(v87);
LABEL_49:
    v62 = v89;
    (*(v86 + 8))(v87, v88);
    v63 = *(v53 + 8);
    v64 = v107;
    goto LABEL_50;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v56 + 96))(v55, v57);
    v88 = v125;
    v86 = v126;
    v87 = v94;
    (*(v126 + 32))(v94, v55, v125);
    v89 = sub_5FC104(v87);
    goto LABEL_49;
  }

  if (v58 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v53 + 8))(v107, v52);
    (*(v56 + 8))(v55, v57);
    v67 = v21;
    v68 = v26;
    goto LABEL_54;
  }

  (*(v56 + 8))(v55, v57);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5FD6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v112 = a1;
  v90 = sub_AB8860();
  v84 = *(v90 - 8);
  __chkstk_darwin();
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v77 - v5;
  __chkstk_darwin();
  v85 = &v77 - v6;
  v87 = sub_AB8D50();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_AB8DE0();
  v91 = *(v93 - 8);
  __chkstk_darwin();
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v77 - v9;
  v96 = sub_AB4770();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v77 - v11;
  v100 = sub_AB4710();
  v95 = *(v100 - 8);
  __chkstk_darwin();
  v99 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_AB44B0();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v77 - v14;
  v105 = sub_AB86C0();
  v101 = *(v105 - 8);
  __chkstk_darwin();
  v80 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v77 - v16;
  v108 = sub_AB8E20();
  v104 = *(v108 - 8);
  __chkstk_darwin();
  v107 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB8030();
  v109 = *(v18 - 8);
  __chkstk_darwin();
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v77 - v20;
  sub_AB35C0();
  __chkstk_darwin();
  v110 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB9250();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v77 - v27;
  v29 = sub_AB8770();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[3] = a2;
  v114[4] = v111;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v114);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v112, a2);
  sub_E8BA0(v114, &v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08, &qword_B1D120);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v34 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v24 + 8))(v28, v23);
    (*(v30 + 8))(v32, v29);
    goto LABEL_29;
  }

  v36 = v18;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v37 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v24 + 8))(v28, v23);
    (*(v109 + 8))(v21, v18);
    goto LABEL_29;
  }

  v39 = v107;
  v38 = v108;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v40 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v24 + 8))(v28, v23);
    (*(v104 + 8))(v39, v38);
    goto LABEL_29;
  }

  v41 = v105;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v42 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v24 + 8))(v28, v23);
    (*(v101 + 8))(v106, v41);
    goto LABEL_29;
  }

  v43 = v28;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v44 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v24 + 8))(v28, v23);
    (*(v98 + 8))(v102, v103);
    goto LABEL_29;
  }

  v45 = v23;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v46 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v24 + 8))(v28, v23);
    (*(v95 + 8))(v99, v100);
    goto LABEL_29;
  }

  v47 = v96;
  v48 = v24;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v24 + 16))(v26, v28, v45);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v49 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v24 + 8))(v28, v45);
    (*(v94 + 8))(v97, v47);
    goto LABEL_29;
  }

  v51 = v92;
  v52 = v93;
  if (!swift_dynamicCast())
  {
    v64 = v85;
    v65 = v90;
    if (swift_dynamicCast())
    {
      v112 = v36;
      v66 = v84;
      v67 = v83;
      (*(v84 + 32))(v83, v64, v65);
      v68 = v82;
      (*(v66 + 16))(v82, v67, v65);
      v69 = (*(v66 + 88))(v68, v65);
      if (v69 == enum case for Track.song(_:))
      {
        (*(v66 + 96))(v68, v65);
        v70 = v101;
        v71 = v80;
        (*(v101 + 32))(v80, v68, v41);
        v35 = sub_5F8038(v71);
        (*(v70 + 8))(v71, v41);
LABEL_41:
        (*(v66 + 8))(v67, v65);
LABEL_29:
        __swift_destroy_boxed_opaque_existential_0(&v113);
LABEL_30:
        __swift_destroy_boxed_opaque_existential_0(v114);
        return v35;
      }

      if (v69 == enum case for Track.musicVideo(_:))
      {
        (*(v66 + 96))(v68, v65);
        v72 = v109;
        v73 = v79;
        v74 = v112;
        (*(v109 + 32))(v79, v68, v112);
        v35 = sub_5F9580(v73);
        (*(v72 + 8))(v73, v74);
        goto LABEL_41;
      }

      v75 = *(v66 + 8);
      v75(v67, v65);
      v75(v68, v65);
    }

LABEL_51:
    __swift_destroy_boxed_opaque_existential_0(&v113);
    sub_AB91E0();
    (*(v48 + 16))(v26, v43, v45);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v76 = qword_E71B20;
    sub_AB3550();
    v35 = sub_AB9320();
    (*(v48 + 8))(v43, v45);
    goto LABEL_30;
  }

  v112 = v36;
  v53 = v51;
  v54 = v91;
  v55 = v89;
  (*(v91 + 32))(v89, v53, v52);
  v56 = v88;
  sub_AB8D60();
  v57 = v86;
  v58 = v87;
  v59 = (*(v86 + 88))(v56, v87);
  if (v59 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v98;
    v61 = v81;
    v62 = v103;
    (*(v98 + 32))(v81, v56, v103);
    v63 = sub_5FAB4C(v61);
LABEL_47:
    v35 = v63;
    (*(v60 + 8))(v61, v62);
    (*(v54 + 8))(v55, v52);
    goto LABEL_29;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v109;
    v61 = v79;
    v62 = v112;
    (*(v109 + 32))(v79, v56, v112);
    v63 = sub_5F9580(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v101;
    v61 = v80;
    v62 = v105;
    (*(v101 + 32))(v80, v56, v105);
    v63 = sub_5F8038(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v94;
    v61 = v78;
    v62 = v96;
    (*(v94 + 32))(v78, v56, v96);
    v63 = sub_5FC104(v61);
    goto LABEL_47;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v55, v52);
    (*(v57 + 8))(v56, v58);
    goto LABEL_51;
  }

  (*(v57 + 8))(v56, v58);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5FEC68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = sub_AB3470();
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v98 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3FC0();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin();
  v89 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_AB9250();
  v9 = *(v102 - 8);
  __chkstk_darwin();
  v103 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v87 - v11;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v106);

  v113[4] = v109;
  v113[5] = v110;
  v113[6] = v111;
  v113[7] = v112;
  v113[0] = v106[0];
  v113[1] = v106[1];
  v113[2] = v107;
  v113[3] = v108;
  v13 = *(&v107 + 1);

  sub_70C54(v113);
  LODWORD(v94) = sub_472A84(7, v13);

  v14 = [objc_opt_self() allowAccountModifications];
  v100 = v8;
  if (v14)
  {
    if (a1)
    {
      v15 = [a1 userInterfaceIdiom] != &dword_0 + 3;
    }

    else
    {
      v15 = 1;
    }

    LODWORD(v95) = v15;
  }

  else
  {
    LODWORD(v95) = 0;
  }

  v16 = v102;
  v17 = v103;
  sub_AB91E0();
  v104 = *(v9 + 16);
  v105 = v9 + 16;
  v104(v17, v12, v16);
  v18 = v12;
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v19 = qword_E71B20;
  v20 = qword_E71B20;
  sub_AB3550();
  v21 = sub_AB9320();
  v96 = v22;
  v97 = v21;
  v23 = v9 + 8;
  v24 = *(v9 + 8);
  v24(v18, v16);
  if (v95)
  {
    v25 = v20;
    v92 = v23;
    v93 = v24;
    v87[1] = v19;
    v88 = a2;
    if ((v94 & 1) != 0 || (v26 = v89, sub_AB3FB0(), v27 = sub_AB3FA0(), (*(v90 + 8))(v26, v91), (v27 & 1) == 0))
    {
      v64 = v18;
      sub_AB91E0();
      v66 = v102;
      v65 = v103;
      v104(v103, v64, v102);
      v67 = v25;
      sub_AB3550();
      v68 = v67;
      v94 = sub_AB9320();
      v95 = v69;
      v70 = v93;
      v93(v64, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_AF85F0;
      sub_AB91E0();
      v104(v65, v64, v66);
      sub_AB3550();
      v71 = sub_AB9320();
      v90 = v72;
      v91 = v71;
      v70(v64, v66);
      v73 = v98;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v74 = sub_AB3440();
      v76 = v75;
      v99 = *(v99 + 8);
      (v99)(v73, v101);
      *(v36 + 32) = v74;
      *(v36 + 40) = v76;
      v77 = v90;
      *(v36 + 48) = v91;
      *(v36 + 56) = v77;
      *(v36 + 64) = 2;
      *(v36 + 72) = &unk_B1D170;
      *(v36 + 80) = 0;
      sub_AB91E0();
      v78 = v66;
      v104(v65, v64, v66);
      sub_AB3550();
      v79 = sub_AB9320();
      v81 = v80;
      v93(v64, v78);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v82 = sub_AB3440();
      v84 = v83;
      result = (v99)(v73, v101);
      *(v36 + 88) = v82;
      *(v36 + 96) = v84;
      *(v36 + 104) = v79;
      *(v36 + 112) = v81;
      v51 = (v36 + 128);
      *(v36 + 120) = 2;
      v32 = v94;
    }

    else
    {
      sub_AB91E0();
      v28 = v103;
      v29 = v102;
      (v104)(v103, v18);
      v30 = v25;
      sub_AB3550();
      v31 = v30;
      v32 = sub_AB9320();
      v95 = v33;
      v34 = v29;
      v35 = v93;
      v93(v18, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_AF85F0;
      sub_AB91E0();
      v104(v28, v18, v34);
      sub_AB3550();
      v94 = sub_AB9320();
      v91 = v37;
      v35(v18, v34);
      v38 = v98;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v39 = sub_AB3440();
      v41 = v40;
      v99 = *(v99 + 8);
      (v99)(v38, v101);
      *(v36 + 32) = v39;
      *(v36 + 40) = v41;
      v42 = v91;
      *(v36 + 48) = v94;
      *(v36 + 56) = v42;
      *(v36 + 64) = 2;
      *(v36 + 72) = &unk_B1D178;
      *(v36 + 80) = 0;
      sub_AB91E0();
      v43 = v102;
      v104(v28, v18, v102);
      sub_AB3550();
      v44 = sub_AB9320();
      v46 = v45;
      v93(v18, v43);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v47 = sub_AB3440();
      v49 = v48;
      result = (v99)(v38, v101);
      *(v36 + 88) = v47;
      *(v36 + 96) = v49;
      *(v36 + 104) = v44;
      *(v36 + 112) = v46;
      v51 = (v36 + 128);
      *(v36 + 120) = 2;
    }

    a2 = v88;
  }

  else
  {
    sub_AB91E0();
    v104(v17, v18, v16);
    v52 = v20;
    sub_AB3550();
    v53 = v52;
    v54 = v103;
    v94 = sub_AB9320();
    v95 = v55;
    v56 = v16;
    v24(v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_AF4EC0;
    sub_AB91E0();
    v104(v54, v18, v56);
    sub_AB3550();
    v32 = v94;
    v57 = sub_AB9320();
    v59 = v58;
    v24(v18, v56);
    v60 = v98;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v61 = sub_AB3440();
    v63 = v62;
    result = (*(v99 + 8))(v60, v101);
    *(v36 + 32) = v61;
    *(v36 + 40) = v63;
    *(v36 + 48) = v57;
    *(v36 + 56) = v59;
    v51 = (v36 + 72);
    *(v36 + 64) = 2;
  }

  *v51 = 0;
  v51[1] = 0;
  v85 = v96;
  *a2 = v97;
  *(a2 + 8) = v85;
  v86 = v95;
  *(a2 + 16) = v32;
  *(a2 + 24) = v86;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v36;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_5FF7A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB3470();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_AB35C0();
  __chkstk_darwin();
  v6 = sub_AB9250();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v20[-v10];
  sub_AB91E0();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v12 = qword_E71B20;
  sub_AB3550();
  v13 = sub_AB9320();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v16 = sub_AB3440();
  v18 = v17;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

void sub_5FFA40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v60 = a1;
  v61 = a2;
  v66 = sub_AB3470();
  v59 = *(v66 - 8);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v9 = sub_AB9250();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v47 - v13;
  sub_AB91E0();
  v15 = v10;
  v16 = *(v10 + 16);
  v65 = v10 + 16;
  v58 = v16;
  v16(v12, v14, v9);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v17 = qword_E71B20;
  v18 = qword_E71B20;
  v64 = v17;
  v19 = v18;
  sub_AB3550();
  v51 = v19;
  v20 = sub_AB9320();
  v56 = v21;
  v57 = v20;
  v22 = *(v15 + 8);
  v62 = v15 + 8;
  v63 = v22;
  v22(v14, v9);
  v23 = swift_allocObject();
  v54 = v23;
  v24 = v55;
  *(v23 + 16) = v55;
  *(v23 + 24) = a4;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v25 = v12;
  v26 = v8;
  v27 = sub_AB3440();
  v52 = v28;
  v53 = v27;
  v29 = v24;
  v48 = *(v59 + 8);
  v48(v26, v66);
  sub_AB91E0();
  v30 = v58;
  v58(v25, v14, v9);
  sub_AB3550();
  v31 = v51;
  v59 = sub_AB9320();
  v51 = v32;
  v63(v14, v9);
  v33 = swift_allocObject();
  v50 = v33;
  *(v33 + 16) = v29;
  *(v33 + 24) = a4;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v55 = sub_AB3440();
  v49 = v34;
  v48(v26, v66);
  sub_AB91E0();
  v30(v25, v14, v9);
  sub_AB3550();
  v35 = sub_AB9320();
  v37 = v36;
  v63(v14, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_AF85F0;
  v39 = v52;
  *(v38 + 32) = v53;
  *(v38 + 40) = v39;
  v40 = v56;
  *(v38 + 48) = v57;
  *(v38 + 56) = v40;
  *(v38 + 64) = 2;
  v41 = v54;
  v42 = v55;
  *(v38 + 72) = &unk_B1D0D8;
  *(v38 + 80) = v41;
  v43 = v49;
  *(v38 + 88) = v42;
  *(v38 + 96) = v43;
  v44 = v50;
  v45 = v51;
  *(v38 + 104) = v59;
  *(v38 + 112) = v45;
  *(v38 + 120) = 0;
  *(v38 + 128) = &unk_B1D0E8;
  *(v38 + 136) = v44;

  *a5 = v35;
  *(a5 + 8) = v37;
  *(a5 + 16) = v60;
  *(a5 + 24) = v46;
  *(a5 + 32) = 0;
  *(a5 + 33) = v68[0];
  *(a5 + 36) = *(v68 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = *v67;
  *(a5 + 52) = *&v67[3];
  *(a5 + 56) = v38;
  *(a5 + 64) = 0;
}

id sub_5FFF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v45 = a1;
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v40 - v8;
  sub_AB91E0();
  v10 = v5;
  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v11 = v13;
  v13(v7, v9, v4);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v51 = v11;
  v14 = qword_E71B20;
  v49 = qword_E71B20;
  sub_AB3550();
  v50 = v14;
  v15 = sub_AB9320();
  v46 = v16;
  v47 = v15;
  v44 = *(v10 + 8);
  v17 = v10 + 8;
  v44(v9, v4);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v19 = result;
    MobileGestalt_get_wapiCapability();

    v41 = a3;
    sub_AB91E0();
    v20 = v51;
    v51(v7, v9, v4);
    v21 = v49;
    sub_AB3550();
    v40[1] = v12;
    v22 = sub_AB9320();
    v42 = v23;
    v43 = v22;
    v24 = v44;
    v40[2] = v17;
    v44(v9, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_AF85F0;
    sub_AB91E0();
    v20(v7, v9, v4);
    sub_AB3550();
    v26 = v49;
    v27 = sub_AB9320();
    v29 = v28;
    v24(v9, v4);
    v30 = swift_allocObject();
    v31 = v45;
    v32 = v48;
    *(v30 + 16) = v45;
    *(v30 + 24) = v32;
    *(v25 + 32) = 0x6C65636E6163;
    *(v25 + 40) = 0xE600000000000000;
    *(v25 + 48) = v27;
    *(v25 + 56) = v29;
    *(v25 + 64) = 0;
    *(v25 + 72) = &unk_B1D0F8;
    *(v25 + 80) = v30;
    sub_307CC(v31, v32);
    sub_AB91E0();
    v51(v7, v9, v4);
    sub_AB3550();
    v33 = sub_AB9320();
    v35 = v34;
    v24(v9, v4);
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v32;
    *(v25 + 88) = 0x6E4F6E727574;
    *(v25 + 96) = 0xE600000000000000;
    *(v25 + 104) = v33;
    *(v25 + 112) = v35;
    *(v25 + 120) = 2;
    *(v25 + 128) = &unk_B1D108;
    *(v25 + 136) = v36;
    result = sub_307CC(v31, v32);
    v37 = v46;
    v38 = v41;
    *v41 = v47;
    v38[1] = v37;
    v39 = v42;
    v38[2] = v43;
    v38[3] = v39;
    *(v38 + 32) = 0;
    *(v38 + 33) = v53[0];
    *(v38 + 9) = *(v53 + 3);
    v38[5] = 0;
    *(v38 + 48) = 1;
    *(v38 + 49) = *v52;
    *(v38 + 13) = *&v52[3];
    v38[7] = v25;
    v38[8] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_6004AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CDF8 != -1)
  {
    swift_once();
  }

  v8 = static CloudLibrary.EnablementContext.action;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v9 = sub_AB3440();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = CloudLibrary.EnablementContext.title.getter(v2);
  v14 = v13;
  v15 = CloudLibrary.EnablementContext.message.getter(v2);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF85F0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v11;
  *(v18 + 48) = v8;
  *(v18 + 64) = 2;
  *(v18 + 72) = &unk_B1D0C8;
  *(v18 + 80) = 0;

  sub_5FF7A8(v21);
  v19 = v21[1];
  *(v18 + 88) = v21[0];
  *(v18 + 104) = v19;
  *(v18 + 120) = v21[2];
  *(v18 + 136) = v22;

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 33) = v21[0];
  *(a2 + 36) = *(v21 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v23;
  *(a2 + 52) = *&v23[3];
  *(a2 + 56) = v18;
  *(a2 + 64) = 0;
}

uint64_t sub_6006D8()
{
  v1 = sub_AB31C0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_600760@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_AB9250();
  v95 = *(v93 - 8);
  __chkstk_darwin();
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v81 - v11;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v89 = v7;
  v90 = v5;
  v91 = v4;
  v92 = a2;
  if (!a1)
  {
    goto LABEL_38;
  }

  objc_opt_self();
  v16 = v10;
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (wapiCapability)
    {
      sub_AB91E0();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v93;
      v18(v10, v12, v93);
      v20 = v10;
      if (qword_E0CB80 == -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_AB91E0();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v93;
      v18(v10, v12, v93);
      v20 = v10;
      if (qword_E0CB80 == -1)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v21 = v93;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_13:
    sub_AB91E0();
    v22 = v95;
    v23 = *(v95 + 16);
    v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v16, v12, v21);
    v24 = v16;
    if (qword_E0CB80 == -1)
    {
      goto LABEL_34;
    }

LABEL_53:
    swift_once();
    goto LABEL_34;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
LABEL_38:
    v19 = v93;
    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v26 = v25;
  v27 = MPModelRelationshipMediaClipStaticAssets;
  v28 = a1;
  if (![v26 hasLoadedValueForKey:v27])
  {

    goto LABEL_38;
  }

  v29 = [v26 staticAssets];
  v19 = v93;
  if (!v29)
  {

    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
LABEL_42:
      sub_AB91E0();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v18(v16, v12, v19);
      v20 = v16;
      if (qword_E0CB80 == -1)
      {
LABEL_43:
        v55 = qword_E71B20;
        sub_AB3550();
        v56 = v55;
        v57 = sub_AB9320();
        v87 = v58;
        v88 = v57;
        v59 = *(v17 + 8);
        v59(v12, v19);
        sub_AB91E0();
        v18(v20, v12, v19);
        sub_AB3550();
        v60 = sub_AB9320();
        v85 = v61;
        v86 = v60;
        v59(v12, v19);
        v46 = v59;
        sub_AB91E0();
        v49 = v12;
        v62 = v12;
        v51 = v19;
        v18(v20, v62, v19);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v52 = v18;
        v82 = v56;
        sub_AB3550();
        v63 = sub_AB9320();
        v93 = v64;
        v83 = v63;
        v84 = &unk_B1D0B8;
        v48 = v20;
        goto LABEL_46;
      }

LABEL_51:
      swift_once();
      goto LABEL_43;
    }

LABEL_39:
    sub_AB91E0();
    v17 = v95;
    v18 = *(v95 + 16);
    v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v16, v12, v19);
    v20 = v16;
    if (qword_E0CB80 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v30 = v29;
  v87 = v28;
  sub_60279C();
  v31 = sub_AB9760();

  if (v31 >> 62)
  {
LABEL_56:
    v32 = sub_ABB060();
  }

  else
  {
    v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  }

  v33 = v31;
  v16 = v10;
  if (!v32)
  {
LABEL_41:

    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v34 = 0;
  v94 = MPModelPropertyStaticAssetMediaType;
  v88 = v31 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v35 = sub_ABAE20();
    }

    else
    {
      if (v34 >= *(v88 + 16))
      {
        goto LABEL_55;
      }

      v35 = *(v33 + 8 * v34 + 32);
    }

    v19 = v35;
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v35 hasLoadedValueForKey:v94])
    {
      break;
    }

LABEL_23:
    ++v34;
    v19 = v93;
    v33 = v31;
    if (v36 == v32)
    {
      goto LABEL_41;
    }
  }

  v37 = [v19 mediaType];

  v38 = v37 == &dword_0 + 2;
  v16 = v10;
  if (!v38)
  {
    goto LABEL_23;
  }

  v21 = v93;
  if (wapiCapability)
  {
    goto LABEL_13;
  }

LABEL_33:
  sub_AB91E0();
  v22 = v95;
  v23 = *(v95 + 16);
  v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v16, v12, v21);
  v24 = v16;
  if (qword_E0CB80 != -1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v39 = qword_E71B20;
  sub_AB3550();
  v40 = v39;
  v41 = sub_AB9320();
  v87 = v42;
  v88 = v41;
  v43 = *(v22 + 8);
  v43(v12, v21);
  sub_AB91E0();
  v23(v24, v12, v21);
  sub_AB3550();
  v44 = sub_AB9320();
  v85 = v45;
  v86 = v44;
  v43(v12, v21);
  v46 = v43;
  v47 = v21;
  v48 = v24;
  sub_AB91E0();
  v49 = v12;
  v50 = v12;
  v51 = v47;
  v23(v24, v50, v47);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v52 = v23;
  v82 = v40;
  sub_AB3550();
  v53 = sub_AB9320();
  v93 = v54;
  v83 = v53;
  v84 = &unk_B1D0C0;
LABEL_46:
  v81 = v46;
  v46(v49, v51);
  v65 = v89;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v95 = sub_AB3440();
  v67 = v66;
  v68 = v91;
  v69 = *(v90 + 8);
  v69(v65, v91);

  sub_AB91E0();
  v52(v48, v49, v51);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  sub_AB3550();
  v70 = sub_AB9320();
  v96 = v71;
  v81(v49, v51);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v72 = sub_AB3440();
  v74 = v73;
  v69(v65, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_AF85F0;
  *(v75 + 32) = v95;
  *(v75 + 40) = v67;
  v76 = v84;
  *(v75 + 48) = v83;
  *(v75 + 56) = v93;
  *(v75 + 64) = 2;
  *(v75 + 72) = v76;
  *(v75 + 80) = 0;
  *(v75 + 88) = v72;
  *(v75 + 96) = v74;
  v77 = v96;
  *(v75 + 104) = v70;
  *(v75 + 112) = v77;
  *(v75 + 120) = 0;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;

  result = sub_17654(v76, 0);
  v78 = v92;
  v79 = v87;
  *v92 = v88;
  v78[1] = v79;
  v80 = v85;
  v78[2] = v86;
  v78[3] = v80;
  *(v78 + 32) = 0;
  *(v78 + 33) = v98[0];
  *(v78 + 9) = *(v98 + 3);
  v78[5] = 0;
  *(v78 + 48) = 1;
  *(v78 + 49) = *v97;
  *(v78 + 13) = *&v97[3];
  v78[7] = v75;
  v78[8] = 0;
  return result;
}

void sub_601620(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB3470();
  v63 = *(v6 - 8);
  __chkstk_darwin();
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_AB9250();
  v60 = *(v64 - 8);
  __chkstk_darwin();
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v51 - v11;
  v13 = MobileGestalt_get_current_device();
  if (v13)
  {
    v14 = v13;
    MobileGestalt_get_wapiCapability();

    v15 = MobileGestalt_get_current_device();
    if (v15)
    {
      v16 = v15;
      MobileGestalt_get_cellularDataCapability();

      v59 = v9;
      if (a1)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
        v17 = v64;
        v18 = v61;
        v19 = v60;
      }

      else
      {
        v17 = v64;
        v19 = v60;
        v18 = v61;
      }

      sub_AB91E0();
      v58 = *(v19 + 16);
      v58(v18, v12, v17);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v57 = qword_E71B20;
      sub_AB3550();
      v20 = sub_AB9320();
      v53 = v21;
      v54 = v20;
      v22 = *(v19 + 8);
      v22(v12, v17);
      v55 = v6;
      v56 = a2;
      if (a2 && [a2 userInterfaceIdiom] == &dword_0 + 3)
      {
        v23 = _swiftEmptyArrayStorage;
      }

      else
      {
        v52 = a3;
        sub_AB91E0();
        v58(v18, v12, v17);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v24 = v57;
        sub_AB3550();
        v25 = sub_AB9320();
        v27 = v26;
        v22(v12, v17);
        v28 = v62;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v29 = sub_AB3440();
        v31 = v30;
        (*(v63 + 8))(v28, v6);
        v23 = sub_506A20(0, 1, 1, _swiftEmptyArrayStorage);
        v33 = *(v23 + 2);
        v32 = *(v23 + 3);
        if (v33 >= v32 >> 1)
        {
          v23 = sub_506A20((v32 > 1), v33 + 1, 1, v23);
        }

        *(v23 + 2) = v33 + 1;
        v34 = &v23[56 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        *(v34 + 6) = v25;
        *(v34 + 7) = v27;
        v34[64] = 2;
        *(v34 + 9) = &unk_B1D0B0;
        *(v34 + 10) = 0;
        a3 = v52;
        v17 = v64;
        v18 = v61;
      }

      sub_AB91E0();
      v58(v18, v12, v17);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v35 = v57;
      sub_AB3550();
      v36 = sub_AB9320();
      v38 = v37;
      v22(v12, v17);
      v39 = v62;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v40 = sub_AB3440();
      v42 = v41;
      (*(v63 + 8))(v39, v55);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_506A20(0, *(v23 + 2) + 1, 1, v23);
      }

      v44 = v53;
      v43 = v54;
      v46 = *(v23 + 2);
      v45 = *(v23 + 3);
      if (v46 >= v45 >> 1)
      {
        v23 = sub_506A20((v45 > 1), v46 + 1, 1, v23);
      }

      *(v23 + 2) = v46 + 1;
      v47 = &v23[56 * v46];
      *(v47 + 4) = v40;
      *(v47 + 5) = v42;
      *(v47 + 6) = v36;
      *(v47 + 7) = v38;
      v47[64] = 2;
      *(v47 + 9) = 0;
      *(v47 + 10) = 0;
      if (v56)
      {
        v48 = [v56 userInterfaceIdiom];

        if (v48 == &dword_0 + 3)
        {
          v49 = 0;
          v50 = v44;
          v44 = 0;
LABEL_27:
          v65 = 1;
          *a3 = v49;
          *(a3 + 8) = v44;
          *(a3 + 16) = v43;
          *(a3 + 24) = v50;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 56) = v23;
          *(a3 + 64) = 0;
          return;
        }
      }

      else
      {
      }

      v50 = 0;
      v49 = v43;
      v43 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_601D74@<D0>(uint64_t a1@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v22 - v6;
  sub_AB91E0();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v9 = qword_E71B20;
  sub_AB3550();
  v10 = v9;
  v11 = sub_AB9320();
  v23 = v12;
  v24 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_AB91E0();
  v8(v5, v7, v2);
  sub_AB3550();
  v14 = sub_AB9320();
  v16 = v15;
  v13(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF4EC0;
  sub_5FF7A8(v25);
  result = *v25;
  v19 = v25[1];
  v20 = v25[2];
  *(v17 + 32) = v25[0];
  *(v17 + 48) = v19;
  *(v17 + 64) = v20;
  *(v17 + 80) = v26;
  v21 = v23;
  *a1 = v24;
  *(a1 + 8) = v21;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 33) = v25[0];
  *(a1 + 36) = *(v25 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v27;
  *(a1 + 52) = *&v27[3];
  *(a1 + 56) = v17;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_602078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v56 = a1;
  v53 = a3;
  v57 = sub_AB3470();
  v54 = *(v57 - 8);
  __chkstk_darwin();
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v40 - v8;
  sub_AB91E0();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v11 = qword_E71B20;
  v12 = qword_E71B20;
  sub_AB3550();
  v13 = v12;
  v14 = sub_AB9320();
  v51 = v15;
  v52 = v14;
  v16 = *(v5 + 8);
  v43 = v5 + 8;
  v16(v9, v4);
  sub_AB91E0();
  v10(v7, v9, v4);
  v45 = v10;
  v47 = v5 + 16;
  sub_AB3550();
  v44 = v11;
  v17 = sub_AB9320();
  v49 = v18;
  v50 = v17;
  v19 = v16;
  v46 = v16;
  v16(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF85F0;
  sub_AB91E0();
  v10(v7, v9, v4);
  sub_AB3550();
  v21 = sub_AB9320();
  v41 = v22;
  v42 = v21;
  v19(v9, v4);
  v23 = swift_allocObject();
  *(v23 + 16) = v56;
  *(v23 + 24) = v55;

  v24 = v48;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v25 = sub_AB3440();
  v27 = v26;
  v54 = *(v54 + 8);
  (v54)(v24, v57);
  *(v20 + 32) = v25;
  *(v20 + 40) = v27;
  v28 = v41;
  *(v20 + 48) = v42;
  *(v20 + 56) = v28;
  *(v20 + 64) = 2;
  *(v20 + 72) = &unk_B1D098;
  *(v20 + 80) = v23;
  sub_AB91E0();
  v45(v7, v9, v4);
  sub_AB3550();
  v29 = sub_AB9320();
  v31 = v30;
  v46(v9, v4);
  v32 = swift_allocObject();
  *(v32 + 16) = v56;
  *(v32 + 24) = v55;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v33 = sub_AB3440();
  v35 = v34;
  result = (v54)(v24, v57);
  *(v20 + 88) = v33;
  *(v20 + 96) = v35;
  *(v20 + 104) = v29;
  *(v20 + 112) = v31;
  *(v20 + 120) = 2;
  *(v20 + 128) = &unk_B1D0A8;
  *(v20 + 136) = v32;
  v37 = v53;
  v38 = v50;
  v39 = v51;
  *v53 = v52;
  v37[1] = v39;
  v37[2] = v38;
  v37[3] = v49;
  *(v37 + 32) = 0;
  *(v37 + 33) = v59[0];
  *(v37 + 9) = *(v59 + 3);
  v37[5] = 1;
  *(v37 + 48) = 0;
  *(v37 + 49) = *v58;
  *(v37 + 13) = *&v58[3];
  v37[7] = v20;
  v37[8] = 0;
  return result;
}

uint64_t sub_60263C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5F78F0(a1, a2, v7, v6);
}

uint64_t sub_6026EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17BD0;

  return sub_5F7978(a1, a2, v7, v6);
}

unint64_t sub_60279C()
{
  result = qword_E10E00;
  if (!qword_E10E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E10E00);
  }

  return result;
}

uint64_t sub_6027E8()
{

  return swift_deallocObject();
}

uint64_t sub_602820(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5F7574(a1, a2, v7, v6);
}

uint64_t sub_6028D0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_5F77B4(a1, a2, v6);
}

uint64_t sub_602984(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5F7034(a1, a2, v7, v6);
}

uint64_t sub_602A34(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5F70C4(a1, a2, v7, v6);
}

uint64_t sub_602AE4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_602B24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_5F7194(a1, a2, v2 + 16, v6);
}

uint64_t sub_602BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UInt32.formatName.getter(int a1)
{
  v10 = 0;
  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = a1;
  if (a1 == 1634492771)
  {
    return 1128352833;
  }

  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (Property == sub_AB53E0() || !outPropertyData)
  {
    if (qword_E0CD78 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, static Logger.audioFormat);
    v5 = sub_AB4BA0();
    v6 = sub_AB9F30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = Property;
      _os_log_impl(&dword_0, v5, v6, "AudioFormatGetProperty kAudioFormatProperty_FormatName error: %d", v7, 8u);
    }

    return 0;
  }

  else
  {
    v3 = sub_AB9330(outPropertyData);

    return v3;
  }
}

char *sub_602DF4()
{
  result = sub_602E14();
  static Datavault.music = result;
  return result;
}

char *sub_602E14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E38, &qword_B1D188);
  __chkstk_darwin();
  v1 = &v20 - v0;
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_AB9260();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier:v11];

  if (!v12)
  {
    return 0;
  }

  sub_AB3150();

  sub_AB3110();
  type metadata accessor for Datavault(0);
  (*(v3 + 16))(v5, v7, v2);
  v14 = Datavault.__allocating_init(url:storageClass:)(v5, 0x707041636973754DLL, 0xE800000000000000);
  if (qword_E0CD50 != -1)
  {
    swift_once();
  }

  v15 = sub_AB4BC0();
  v16 = __swift_project_value_buffer(v15, qword_E10E20);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v1, v16, v15);
  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v9, v2);
  (*(v17 + 56))(v1, 0, 1, v15);
  v19 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_60375C(v1, &v14[v19]);
  swift_endAccess();
  return v14;
}

uint64_t *Datavault.music.unsafeMutableAddressor()
{
  if (qword_E0CD48 != -1)
  {
    swift_once();
  }

  return &static Datavault.music;
}

double static Datavault.music.getter()
{
  if (qword_E0CD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Datavault.music.setter(uint64_t a1)
{
  if (qword_E0CD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Datavault.music = a1;

  return result;
}

uint64_t (*static Datavault.music.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_E0CD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_603678()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E10E20);
  __swift_project_value_buffer(v0, qword_E10E20);
  return sub_AB4BB0();
}

uint64_t sub_6036F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F560, &qword_B19F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_60375C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E38, &qword_B1D188);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NSDateComponents.lastUpdatedDateString.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v1 = &v16 - v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_AB2DC0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2D70();
  sub_AB3400();
  sub_AB2D90();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v11, v8);
    sub_603C7C(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    Date.lastUpdatedDateString(relativeTo:)();
    v14 = v13;
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v7, v2);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

uint64_t DateComponents.lastUpdatedDateString(relativeTo:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2D90();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_603C7C(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    Date.lastUpdatedDateString(relativeTo:)();
    v9 = v8;
    (*(v4 + 8))(v6, v3);
    return v9;
  }
}

uint64_t sub_603C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateComponents.lastUpdatedDateString.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v1 = &v12 - v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  sub_AB3400();
  sub_AB2D90();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    sub_603C7C(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    Date.lastUpdatedDateString(relativeTo:)();
    v10 = v9;
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v7, v2);
    return v10;
  }
}

void Date.lastUpdatedDateString(relativeTo:)()
{
  sub_AB9230();
  __chkstk_darwin();
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  sub_AB3340();
  if (v6 <= 0.0)
  {
    return;
  }

  if (v6 < 3600.0)
  {
    v7 = v6 / 60.0;
    if (*&v7 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        v8 = v7;
        if (!v7)
        {
          sub_AB91E0();
          goto LABEL_21;
        }

        sub_AB9220();
        v20._countAndFlagsBits = 0x2064657461647055;
        v20._object = 0xE800000000000000;
        sub_AB9210(v20);
        v19 = v8;
        sub_AB91F0();
        v9 = 9;
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v6 >= 86400.0)
  {
    if (v6 >= 604800.0)
    {
      if (v6 >= 2592000.0)
      {
        return;
      }

      v16 = v6 / 604800.0;
      if (*&v16 >> 52 <= 0x7FEuLL)
      {
        if (v16 > -9.22337204e18)
        {
          if (v16 < 9.22337204e18)
          {
            v17 = v16;
            sub_AB9220();
            v23._countAndFlagsBits = 0x2064657461647055;
            v23._object = 0xE800000000000000;
            sub_AB9210(v23);
            v19 = v17;
            sub_AB91F0();
            v9 = 19;
LABEL_8:
            v10._countAndFlagsBits = v9 | 0x6F67612064;
LABEL_19:
            v10._object = 0xE500000000000000;
            goto LABEL_20;
          }

LABEL_42:
          __break(1u);
          return;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = v6 / 86400.0;
    if (*&v13 >> 52 <= 0x7FEuLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          v14 = v13;
          sub_AB9220();
          v22._countAndFlagsBits = 0x2064657461647055;
          v22._object = 0xE800000000000000;
          sub_AB9210(v22);
          v19 = v14;
          sub_AB91F0();
          v10._countAndFlagsBits = 0x6F67612064;
          goto LABEL_19;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v11 = v6 / 3600.0;
  if (*&v11 >> 52 > 0x7FEuLL)
  {
    goto LABEL_34;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = v11;
  sub_AB9220();
  v21._countAndFlagsBits = 0x2064657461647055;
  v21._object = 0xE800000000000000;
  sub_AB9210(v21);
  v19 = v12;
  sub_AB91F0();
  v10._countAndFlagsBits = 0x6F6761207268;
  v10._object = 0xE600000000000000;
LABEL_20:
  sub_AB9210(v10);
  sub_AB9240();
LABEL_21:
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v15 = qword_E71B20;
  sub_AB3550();
  sub_AB9320();
  (*(v1 + 8))(v5, v0);
}

uint64_t Date.lastUpdatedDateString.getter()
{
  v0 = sub_AB3430();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3400();
  Date.lastUpdatedDateString(relativeTo:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t static String.stringForTrackCountAndDuration(trackCount:duration:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v63 = a2;
  v62 = a1;
  sub_AB35C0();
  __chkstk_darwin();
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB9250();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v54 - v11;
  sub_AB9230();
  __chkstk_darwin();
  v12 = sub_AB3690();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB36A0();
  __chkstk_darwin();
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v10;
  if ((a4 & 1) != 0 || (v20 = *&a3, *&a3 <= 0.0))
  {
    v36 = 0;
    v38 = 0;
    if ((v63 & 1) == 0)
    {
LABEL_13:
      if (v38)
      {
        sub_AB9220();
        v70._countAndFlagsBits = 0;
        v70._object = 0xE000000000000000;
        sub_AB9210(v70);
        v68 = v62;
        sub_AB91F0();
        v71._countAndFlagsBits = 0x297328676E6F7320;
        v71._object = 0xEA0000000000202CLL;
        sub_AB9210(v71);
        v72._countAndFlagsBits = v36;
        v72._object = v38;
        sub_AB9200(v72);

        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
LABEL_17:
        sub_AB9210(v39);
        v41 = v60;
        sub_AB9240();
        (*(v8 + 16))(v59, v41, v7);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v42 = qword_E71B20;
        sub_AB3550();
        v36 = sub_AB9320();
        (*(v8 + 8))(v41, v7);
        return v36;
      }

      v40 = v62;
      if (v62 >= 1)
      {
        sub_AB9220();
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        sub_AB9210(v73);
        v68 = v40;
        sub_AB91F0();
        v39._countAndFlagsBits = 0x297328676E6F7320;
        v39._object = 0xE800000000000000;
        goto LABEL_17;
      }

      return 0;
    }

LABEL_9:
    if (v38)
    {
      return v36;
    }

    return 0;
  }

  v55 = v17;
  v56 = v7;
  v57 = v16;
  v58 = v8;
  sub_AB3660();
  v21 = *(v13 + 104);
  v21(v15, enum case for Calendar.Component.second(_:), v12);
  sub_AB3600();
  v54 = v22;
  v24 = v23;
  v25 = *(v13 + 8);
  v25(v15, v12);
  if (v24 & 1) != 0 || (v21(v15, enum case for Calendar.Component.minute(_:), v12), sub_AB3600(), v27 = v26, v29 = v28, result = (v25)(v15, v12), (v29))
  {
    v8 = v58;
    goto LABEL_6;
  }

  v43 = v54 * v27;
  v8 = v58;
  if ((v54 * v27) >> 64 != (v54 * v27) >> 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((~a3 & 0x7FF0000000000000) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (*&a3 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*&a3 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v43)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v44 = *&a3;
  if (*&a3 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_53;
  }

  v45 = v44 / v43 * v43;
  if ((v44 / v43 * v43) >> 64 != v45 >> 63)
  {
    goto LABEL_47;
  }

  v46 = v44 % v43;
  if (__OFSUB__(v44, v45))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v54)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v46 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_54;
  }

  v48 = v46 / v54;
  v49 = v46 / v54 * v54;
  if ((v48 * v54) >> 64 != v49 >> 63)
  {
    goto LABEL_50;
  }

  v50 = __OFADD__(v45, v49);
  v51 = v45 + v49;
  if (v50)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v50 = __OFSUB__(v44, v51);
  v52 = v44 - v51;
  if (v50)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v52 < v54 / 2)
  {
    goto LABEL_6;
  }

  v50 = __OFSUB__(v54, v52);
  v53 = v54 - v52;
  if (!v50)
  {
    v20 = *&a3 + v53;
LABEL_6:
    v31 = [*NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor() stringFromTimeInterval:v20];
    if (v31)
    {
      v32 = v31;
      v33 = sub_AB92A0();
      v35 = v34;

      v68 = v33;
      v69 = v35;
      v66 = 44;
      v67 = 0xE100000000000000;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_4FD6CC();
      v36 = sub_ABAAB0();
      v38 = v37;

      (*(v55 + 8))(v19, v57);
    }

    else
    {
      (*(v55 + 8))(v19, v57);
      v36 = 0;
      v38 = 0;
    }

    v7 = v56;
    if ((v63 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_55:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LSApplicationWorkspace.openSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_AB30F0(v8);
    v10 = v9;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openRestrictions()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_AB30F0(v8);
    v10 = v9;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAudioQuality()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_AB30F0(v8);
    v10 = v9;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAtmos()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_AB30F0(v8);
    v10 = v9;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_AB30F0(v8);
    v10 = v9;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAccountSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_AB30F0(v8);
    v10 = v9;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Bool __swiftcall LSApplicationWorkspace.openNotificationSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_AB30F0(v9);
    v11 = v10;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    v13 = [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicHapticsSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_AB30F0(v8);
    v10 = v9;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB2CE0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v44 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v45 = v37 - v7;
  v46 = sub_AB31C0();
  v8 = *(v46 - 8);
  __chkstk_darwin();
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78, &qword_B1CC58);
  __chkstk_darwin();
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v37 - v15;
  v17 = *(v5 + 56);
  v17(v37 - v15, 1, 1, v4, v14);
  if (a1)
  {
    v18 = [a1 universalStore];
    if (v18)
    {
      v41 = a2;
      v40 = [v18 adamID];
      swift_unknownObjectRelease();
      if (qword_E0CD28 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
      UnfairLock.locked<A>(_:)(sub_4FD6B0);
      v19 = v48;
      a2 = v41;
      if (v48)
      {
        v39 = v5;
        v20 = sub_AB9260();
        v21 = v19;
        v22 = [v19 urlForBagKey:v20];

        if (v22)
        {
          v38 = v21;
          sub_AB3150();

          (*(v8 + 32))(v43, v10, v46);
          sub_AB2C40();
          sub_606EF8(v13, v16);
          v5 = v39;
          v23 = *(v39 + 48);
          v37[1] = v39 + 48;
          if (v23(v16, 1, v4) || (v24 = sub_AB2C20()) == 0)
          {

            v24 = _swiftEmptyArrayStorage;
          }

          v48 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E178, &qword_B28100);
          sub_AB2C10();
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_AF85F0;
          v47 = v40;
          sub_ABB330();
          sub_AB2BE0();

          sub_AB2BE0();
          sub_5111A0(v36);
          if (v23(v16, 1, v4))
          {
          }

          else
          {
            sub_AB2C30();
          }

          a2 = v41;
          v27 = v45;
          v26 = v46;
          (*(v8 + 8))(v43, v46);
          goto LABEL_15;
        }

        a2 = v41;
        v5 = v39;
      }
    }
  }

  sub_AB2CD0();
  (v17)(v13, 0, 1, v4);
  sub_606EF8(v13, v16);
  v23 = *(v5 + 48);
  if (!v23(v16, 1, v4))
  {
    sub_AB2CB0();
  }

  v25 = v23(v16, 1, v4);
  v26 = v46;
  if (!v25)
  {
    sub_AB2C70();
  }

  v27 = v45;
LABEL_15:
  if (v23(v16, 1, v4))
  {
    (*(v8 + 56))(v27, 1, 1, v26);
  }

  else
  {
    v28 = v44;
    (*(v5 + 16))(v44, v16, v4);
    sub_AB2C50();
    (*(v5 + 8))(v28, v4);
    if ((*(v8 + 48))(v27, 1, v26) != 1)
    {
      (*(v8 + 32))(a2, v27, v26);
      sub_AB30F0(v31);
      v33 = v32;
      sub_52995C(_swiftEmptyArrayStorage);
      v34 = a2;
      isa = sub_AB8FD0().super.isa;

      [v42 openSensitiveURL:v33 withOptions:isa];

      a2 = v34;
      v29 = 0;
      goto LABEL_19;
    }
  }

  sub_12E1C(v27, &qword_E0DC30, &unk_B15160);
  v29 = 1;
LABEL_19:
  (*(v8 + 56))(a2, v29, 1, v26);
  return sub_12E1C(v16, &qword_E10A78, &qword_B1CC58);
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB2CE0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v42 = v37 - v5;
  v6 = sub_AB31C0();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin();
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v37 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78, &qword_B1CC58);
  __chkstk_darwin();
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = v37 - v13;
  v15 = *(v3 + 56);
  v15(v37 - v13, 1, 1, v2, v12);
  v16 = sub_AB8710();
  v41 = v3;
  if (v17)
  {
    v37[1] = v16;
    v38 = a1;
    if (qword_E0CD28 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
    UnfairLock.locked<A>(_:)(sub_5DEA18);
    v18 = v45;
    if (v45)
    {
      v19 = sub_AB9260();
      v20 = [v18 urlForBagKey:v19];

      if (v20)
      {
        sub_AB3150();

        (*(v43 + 32))(v40, v8, v44);
        sub_AB2C40();
        sub_606EF8(v11, v14);
        v21 = *(v41 + 48);
        if (v21(v14, 1, v2) || (v22 = sub_AB2C20()) == 0)
        {

          v22 = _swiftEmptyArrayStorage;
        }

        v45 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E178, &qword_B28100);
        sub_AB2C10();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_AF85F0;
        sub_AB2BE0();

        sub_AB2BE0();
        sub_5111A0(v27);
        if (v21(v14, 1, v2))
        {
        }

        else
        {
          sub_AB2C30();
        }

        v25 = v43;
        v24 = v44;
        v26 = v42;
        (*(v43 + 8))(v40, v44);
        a1 = v38;
        goto LABEL_20;
      }

      v3 = v41;
    }

    a1 = v38;
  }

  sub_AB2CD0();
  (v15)(v11, 0, 1, v2);
  sub_606EF8(v11, v14);
  v21 = *(v3 + 48);
  if (!v21(v14, 1, v2))
  {
    sub_AB2CB0();
  }

  v23 = v21(v14, 1, v2);
  v25 = v43;
  v24 = v44;
  if (!v23)
  {
    sub_AB2C70();
  }

  v26 = v42;
LABEL_20:
  if (v21(v14, 1, v2))
  {
    (*(v25 + 56))(v26, 1, 1, v24);
  }

  else
  {
    v28 = v41;
    v29 = v39;
    (*(v41 + 16))(v39, v14, v2);
    sub_AB2C50();
    (*(v28 + 8))(v29, v2);
    if ((*(v25 + 48))(v26, 1, v24) != 1)
    {
      (*(v25 + 32))(a1, v26, v24);
      sub_AB30F0(v32);
      v34 = v33;
      sub_52995C(_swiftEmptyArrayStorage);
      v35 = a1;
      isa = sub_AB8FD0().super.isa;

      [v37[2] openSensitiveURL:v34 withOptions:isa];

      a1 = v35;
      v30 = 0;
      goto LABEL_24;
    }
  }

  sub_12E1C(v26, &qword_E0DC30, &unk_B15160);
  v30 = 1;
LABEL_24:
  (*(v25 + 56))(a1, v30, 1, v24);
  return sub_12E1C(v14, &qword_E10A78, &qword_B1CC58);
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusic(tabIdentifier:)(MusicCore::TabIdentifier_optional tabIdentifier)
{
  v2 = v1;
  value = tabIdentifier.value;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0x2F2F3A636973756DLL;
  v25 = 0xE800000000000000;
  if (value != 7)
  {
    v10 = 0x7972617262696CLL;
    v23._countAndFlagsBits = 0x6261743F2F626174;
    v23._object = 0xE90000000000003DLL;
    v11 = 0xE600000000000000;
    v12 = 0x736F65646976;
    if (value != 5)
    {
      v12 = 0x7473696C79616C70;
      v11 = 0xE900000000000073;
    }

    v13 = 0xE500000000000000;
    v14 = 0x6F69646172;
    if (value != 3)
    {
      v14 = 0x686372616573;
      v13 = 0xE600000000000000;
    }

    if (value <= 4)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xE900000000000077;
    v16 = 0x6F4E6E657473696CLL;
    if (value != 1)
    {
      v16 = 0x6573776F7262;
      v15 = 0xE600000000000000;
    }

    if (value)
    {
      v10 = v16;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    if (value <= 2)
    {
      v17._countAndFlagsBits = v10;
    }

    else
    {
      v17._countAndFlagsBits = v12;
    }

    if (value <= 2)
    {
      v18 = v15;
    }

    else
    {
      v18 = v11;
    }

    v17._object = v18;
    sub_AB94A0(v17);

    sub_AB9470(v23);
  }

  sub_AB3180();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_12E1C(v5, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_AB30F0(v19);
    v21 = v20;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v2 openSensitiveURL:v21 withOptions:isa];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_606EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78, &qword_B1CC58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MPModelPlaylist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
  v2 = [v0 kindWithPlaylistEntryKind:v1 options:0];

  return v2;
}

id sub_606FE4(void *a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  strcpy(v5, "showAllTVShows");
  v5[15] = -18;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v6);
  if (!v7)
  {
    sub_607768(&v6);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v5[0])
  {
    v2 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v2 = 2;
LABEL_8:
  v3 = [objc_opt_self() kindWithVariants:v2];

  return v3;
}

id static MPModelArtist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [objc_opt_self() kindWithVariants:3];
  v3 = [v1 kindWithSongKind:v2];

  v4 = [v0 kindWithAlbumKind:v3];
  return v4;
}

id static MPModelAlbum.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = [objc_opt_self() kindWithVariants:3];
  v2 = [v0 kindWithSongKind:v1];

  return v2;
}

id static MPModelTVShow.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v8, "showAllTVShows");
  v8[15] = -18;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v9);
  if (!v10)
  {
    sub_607768(&v9);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v8[0] & 1) == 0)
  {
LABEL_7:
    v1 = 2;
    goto LABEL_8;
  }

  v1 = 3;
LABEL_8:
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() kindWithVariants:v1];
  v5 = [v3 kindWithEpisodeKind:v4];

  v6 = [v2 kindWithSeasonKind:v5];
  return v6;
}

id static MPModelTVSeason.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v6, "showAllTVShows");
  v6[15] = -18;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v7);
  if (!v8)
  {
    sub_607768(&v7);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v6[0] & 1) == 0)
  {
LABEL_7:
    v1 = 2;
    goto LABEL_8;
  }

  v1 = 3;
LABEL_8:
  v2 = objc_opt_self();
  v3 = [objc_opt_self() kindWithVariants:v1];
  v4 = [v2 kindWithEpisodeKind:v3];

  return v4;
}

id _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF82E0;
  *(v0 + 32) = [objc_opt_self() kindWithVariants:7];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v11);
  if (!v12)
  {
    sub_607768(v11);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v10[0])
  {
    v3 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v3 = 2;
LABEL_8:
  *(v0 + 40) = [objc_opt_self() kindWithVariants:v3];
  v4 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  NSUserDefaults.subscript.getter(v11);
  if (!v12)
  {
    sub_607768(v11);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  if ((v10[0] & 1) == 0)
  {
LABEL_14:
    v5 = 2;
    goto LABEL_15;
  }

  v5 = 3;
LABEL_15:
  v6 = objc_opt_self();
  *(v0 + 48) = [objc_opt_self() kindWithVariants:v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10E40, &qword_B1D1A8);
  isa = sub_AB9740().super.isa;

  v8 = [v6 kindWithKinds:isa];

  return v8;
}

uint64_t sub_607768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F60, &unk_B1BC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MPModelPlaylistEntry.innermostModelObject.getter()
{
  v1 = [v0 type];
  if (v1 == &dword_0 + 3)
  {
    v3 = [v5 movie];
LABEL_7:
    result = v3;
    v2 = v5;
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v1 == &dword_0 + 2)
  {
    v3 = [v5 tvEpisode];
    goto LABEL_7;
  }

  v2 = v5;
  if (v1 == &dword_0 + 1)
  {
    v3 = [v5 song];
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

id MPModelGenericObject.innermostModelObject.getter()
{
  switch([v0 type])
  {
    case 1uLL:
      result = [v5 song];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 2uLL:
      result = [v5 album];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 3uLL:
      result = [v5 artist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 4uLL:
      result = [v5 playlist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 5uLL:
      v2 = [v5 playlistEntry];
      if (!v2)
      {
        goto LABEL_37;
      }

      v3 = v2;
      v4 = [v2 innermostModelObject];

      result = v4;
      break;
    case 6uLL:
      result = [v5 tvEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 7uLL:
      result = [v5 season];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 8uLL:
      result = [v5 show];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 9uLL:
      result = [v5 movie];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xAuLL:
      result = [v5 mediaClip];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xBuLL:
      result = [v5 podcast];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xCuLL:
      result = [v5 podcastEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xDuLL:
      result = [v5 radioStation];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xFuLL:
      result = [v5 genre];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x10uLL:
      result = [v5 curator];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x11uLL:
      result = [v5 socialPerson];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x13uLL:
      result = [v5 recordLabel];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x14uLL:
      result = [v5 creditsArtist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    default:
LABEL_37:

      result = v5;
      break;
  }

  return result;
}

id MPModelStoreBrowseContentItem.innermostModelObject.getter()
{
  v1 = [v0 innerObject];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 innermostModelObject];

    return v3;
  }

  else
  {

    return v5;
  }
}

uint64_t sub_607D60(uint64_t a1, unint64_t a2, int a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  v6 = sub_AB9250();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v15 - v10;
  sub_AB9230();
  __chkstk_darwin();
  result = 0;
  if ((a2 & 0x8000000000000000) == 0 && a1 >= 1)
  {
    sub_AB9220();
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_AB9210(v17);
    v16 = *&a1;
    sub_AB91F0();
    v18._countAndFlagsBits = 0x2F7469622DLL;
    v18._object = 0xE500000000000000;
    sub_AB9210(v18);
    v16 = a2 / 1000.0;
    sub_AB91F0();
    v19._countAndFlagsBits = 0x207A486B20;
    v19._object = 0xE500000000000000;
    sub_AB9210(v19);
    v20._countAndFlagsBits = UInt32.formatName.getter(a3);
    sub_AB9200(v20);

    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_AB9210(v21);
    sub_AB9240();
    (*(v7 + 16))(v9, v11, v6);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v13 = qword_E71B20;
    sub_AB3550();
    v14 = sub_AB9320();
    (*(v7 + 8))(v11, v6);
    return v14;
  }

  return result;
}

uint64_t _sSo20MPCPlayerAudioFormatC9MusicCoreE12inputDetailsSSSgvg_0()
{
  v1 = [v0 bitDepth];
  v2 = [v0 sampleRate];
  v3 = [v0 codec];

  return sub_607D60(v1, v2, v3);
}

id MPModelObject.bestIdentifier(for:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8 || (v7 = [v8 innerObject]) == 0)
  {
LABEL_6:
    v7 = v3;
  }

LABEL_7:
  v9 = v7;
  if (a2 == 1)
  {
    v10 = [v7 identifiers];
    if (a1 == 2)
    {
      ObjectType = swift_getObjectType();
      v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, v10);
    }

    else if (a1 == 1 || (v11 = swift_getObjectType(), v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v11, 2, 1u, v10), !v13))
    {
      sub_609D50(v9);
    }

    v16 = v12;
  }

  else
  {
    v14 = swift_getObjectType();
    v15 = [v9 identifiers];
    v16 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v14, a1, a2, v15);
  }

  return v16;
}

uint64_t sub_6082AC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_6083C8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E50, &qword_B1D1E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_608560;
  v0[13] = &block_descriptor_183;
  v0[14] = v2;
  [v1 requestImageWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6083C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_6084F4;
  }

  else
  {
    v2 = sub_6084D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6084F4(__n128 a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t *sub_608560(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MPArtworkCatalog.requestImage(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_60A1E8;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_151E0;
  v7[3] = &block_descriptor_4_0;
  v6 = _Block_copy(v7);

  [v2 requestImageWithCompletion:v6];
  _Block_release(v6);
}

void sub_608718(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
  }

  else
  {
    sub_60F3F0();
    v6 = swift_allocError();
    *v7 = a2;
    swift_errorRetain();
    a3(v6, 1);
  }
}

void *MPArtworkCatalog.image(from:size:)(void *a1, double a2, double a3)
{
  v6 = sub_AB7C80();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  [a1 setDestinationScale:0.0];
  [a1 setFittingSize:{a2, a3}];
  v11 = dispatch_semaphore_create(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_60A268;
  *(v13 + 24) = v12;
  aBlock[4] = sub_60F4D0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_17_2;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  [a1 requestImageWithCompletion:v14];
  _Block_release(v14);

  sub_AB7C60();
  sub_ABA2F0();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v16 = *(v10 + 16);
  v17 = v16;

  return v16;
}

Swift::Int sub_608A58(void *a1, char a2, uint64_t a3)
{
  v4 = a1;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v5 = a1;
  }

  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = v4;

  return sub_ABA300();
}

double MPArtworkCatalog.setDestination<A>(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_ABB3A0();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v14[4] = sub_60A2AC;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_608D00;
  v14[3] = &block_descriptor_23_3;
  v12 = _Block_copy(v14);

  [v5 setDestination:v10 forRepresentationKinds:a2 configurationBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_608C00(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin();
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_808B0(v11, v13);
  swift_dynamicCast();
  a3(v10, a2);
  return (*(v8 + 8))(v10, a5);
}

uint64_t sub_608D00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t MPArtworkCatalog.originalSize.getter()
{
  v1 = [v0 token];
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_13C80(0, &qword_E10E58, MPStoreArtworkRequestToken_ptr);
  if (swift_dynamicCast())
  {
    v2 = [v7 imageArtworkInfo];
    if (v2)
    {
      v3 = v2;
      [v2 originalSize];
      v5 = v4;

      return v5;
    }
  }

  return 0;
}

uint64_t MPArtworkCatalog.expectedRatio.getter()
{
  v0 = COERCE_DOUBLE(MPArtworkCatalog.originalSize.getter());
  if ((v2 & 1) != 0 || v1 <= 0.0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v0 / v1;
  }

  return result;
}

id static MPArtworkCatalog.monogram(for:layoutDirection:)(uint64_t a1, uint64_t a2, id a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10E60, &qword_B1D1E8);
  if (a4)
  {
    v8 = [objc_opt_self() currentTraitCollection];
    a3 = [v8 layoutDirection];
  }

  else if (a3 >= 2)
  {
    result = sub_ABB3B0();
    __break(1u);
    return result;
  }

  return _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(a1, a2, a3);
}

id static MPMediaLibrary.device.getter()
{
  result = [swift_getObjCClassFromMetadata() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void MPMediaPickerConfiguration.musicTypeIdentifiers.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = NSBundle.exportedTypeDeclarations.getter();

  if (!v3)
  {
    return;
  }

  v4 = [v1 typeIdentifiers];
  v5 = sub_AB9760();

  v6 = *(v5 + 16);

  if (!v6)
  {

    if ([v1 mediaTypes])
    {
      v41 = [v1 mediaTypes];

      sub_6094A8(v41);
    }

    return;
  }

  v7 = [v1 typeIdentifiers];
  v8 = sub_AB9760();

  v43 = *(v8 + 16);
  if (!v43)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_49:

    sub_60E670(v11);

    return;
  }

  v9 = 0;
  v10 = v3 + 32;
  v11 = _swiftEmptyArrayStorage;
  v44 = v3 + 32;
  v45 = v3;
  v42 = v8;
  while (2)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_52;
    }

    v46 = v11;
    v47 = v9;
    v12 = *(v3 + 16);

    if (!v12)
    {
      v14 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v16 = *(v10 + 8 * v15);
        if (*(v16 + 16))
        {
          break;
        }

LABEL_10:
        if (v12 == ++v15)
        {
          goto LABEL_23;
        }
      }

      v17 = sub_52215C(0xD000000000000010, 0x8000000000B6E460);
      if ((v18 & 1) == 0)
      {

        goto LABEL_10;
      }

      sub_808B0(*(v16 + 56) + 32 * v17, v49);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v19 = v50;
      if (!v50)
      {
        goto LABEL_10;
      }

      v20 = v49[4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_506314((v21 > 1), v22 + 1, 1, v14);
      }

      v13 = v15 + 1;
      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v10 = v44;
      v3 = v45;
    }

    while (v12 - 1 != v15);
LABEL_23:
    v24 = *(v14 + 2);
    if (!v24)
    {
      v48 = _swiftEmptyArrayStorage;
LABEL_37:

      v11 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_5060D8(0, v46[2] + 1, 1, v46);
      }

      v10 = v44;
      v3 = v45;
      v40 = v11[2];
      v39 = v11[3];
      if (v40 >= v39 >> 1)
      {
        v11 = sub_5060D8((v39 > 1), v40 + 1, 1, v11);
      }

      v9 = v47 + 1;
      v11[2] = v40 + 1;
      v11[v40 + 4] = v48;
      v8 = v42;
      if (v47 + 1 == v43)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v25 = 0;
  v26 = v14 + 40;
  v48 = _swiftEmptyArrayStorage;
LABEL_25:
  v27 = &v26[16 * v25];
  v28 = v25;
  while (v28 < *(v14 + 2))
  {
    v30 = *(v27 - 1);
    v29 = *v27;
    v25 = v28 + 1;

    v31 = sub_AB9260();
    v32 = sub_AB9260();
    v33 = UTTypeConformsTo(v31, v32);

    if (v33)
    {
      v34 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_503918(0, v48[2] + 1, 1);
        v34 = v49[0];
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        sub_503918((v36 > 1), v37 + 1, 1);
        v34 = v49[0];
      }

      v34[2] = v37 + 1;
      v48 = v34;
      v38 = &v34[2 * v37];
      v38[4] = v30;
      v38[5] = v29;
      v26 = v14 + 40;
      if (v24 - 1 != v28)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

    v27 += 16;
    ++v28;
    if (v24 == v25)
    {
      goto LABEL_37;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

char *sub_6094A8(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    result = _swiftEmptyArrayStorage;
    if ((a1 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_506314(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v4 >= v3 >> 1)
  {
    result = sub_506314((v3 > 1), v4 + 1, 1, result);
  }

  *(result + 2) = v4 + 1;
  v5 = &result[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x8000000000B4ED60;
  if ((a1 & 0x800) != 0)
  {
LABEL_7:
    v6 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v6;
    }

    else
    {
      result = sub_506314(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(result + 2);
    v7 = *(result + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_506314((v7 > 1), v8 + 1, 1, result);
    }

    *(result + 2) = v8 + 1;
    v9 = &result[16 * v8];
    *(v9 + 4) = 0xD00000000000001BLL;
    *(v9 + 5) = 0x8000000000B6E6D0;
  }

  return result;
}

id MPMediaPickerConfiguration.supportsCatalogContent.getter()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v2);

  v3[4] = v2[4];
  v3[5] = v2[5];
  v3[6] = v2[6];
  v3[7] = v2[7];
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  sub_70C54(v3);
  if (BYTE8(v3[0]))
  {
    return [v0 showsCatalogContent];
  }

  else
  {
    return 0;
  }
}

id MPMediaPickerConfiguration.supportsCloudLibrary.getter()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v2);

  v3[4] = v2[4];
  v3[5] = v2[5];
  v3[6] = v2[6];
  v3[7] = v2[7];
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  sub_70C54(v3);
  if (BYTE9(v3[0]))
  {
    return [v0 showsCloudItems];
  }

  else
  {
    return 0;
  }
}

unint64_t MPIdentifierSet.publicLoggingDescription.getter()
{
  v1._countAndFlagsBits = MPIdentifierSet.bestLibraryIdentifier.getter();
  if (v1._object)
  {
    sub_AB94A0(v1);

    v22._countAndFlagsBits = 59;
    v22._object = 0xE100000000000000;
    sub_AB94A0(v22);
    v2 = sub_506314(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_506314((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x507972617262696CLL;
    *(v5 + 5) = 0xEB000000003D4449;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v6 = [v0 universalStore];
  if (v6)
  {
    v7 = [v6 globalPlaylistID];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_AB92A0();
      v10 = v9;

      sub_ABAD90(20);

      v23._countAndFlagsBits = v8;
      v23._object = v10;
      sub_AB94A0(v23);

      v24._countAndFlagsBits = 59;
      v24._object = 0xE100000000000000;
      sub_AB94A0(v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_506314(0, *(v2 + 2) + 1, 1, v2);
      }

      v12 = *(v2 + 2);
      v11 = *(v2 + 3);
      if (v12 >= v11 >> 1)
      {
        v2 = sub_506314((v11 > 1), v12 + 1, 1, v2);
      }

      *(v2 + 2) = v12 + 1;
      v13 = &v2[16 * v12];
      *(v13 + 4) = 0xD000000000000011;
      *(v13 + 5) = 0x8000000000B6E4A0;
    }
  }

  v14._countAndFlagsBits = MPIdentifierSet.bestStoreIdentifier.getter();
  if (v14._object)
  {
    sub_AB94A0(v14);

    v25._countAndFlagsBits = 59;
    v25._object = 0xE100000000000000;
    sub_AB94A0(v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_506314(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_506314((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x3D65726F7473;
    *(v17 + 5) = 0xE600000000000000;
  }

  sub_ABAD90(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
  sub_51EB04();
  v18 = sub_AB9140();
  v20 = v19;

  v26._countAndFlagsBits = v18;
  v26._object = v20;
  sub_AB94A0(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  sub_AB94A0(v27);
  return 0xD000000000000010;
}

id MPIdentifierSet.bestLibraryIdentifier.getter()
{
  result = [v0 library];
  if (result)
  {
    v2 = result;
    if ([result persistentID] && (objc_msgSend(v2, "persistentID"), isa = sub_ABB580().super.super.isa, v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v4))
    {
      v5 = sub_AB92A0();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id MPIdentifierSet.bestStoreIdentifier.getter()
{
  result = [v0 universalStore];
  if (result)
  {
    v2 = result;
    v3 = [result subscriptionAdamID];
    v4 = [v2 purchasedAdamID];
    v5 = [v2 adamID];
    if ((v3 || v4 || v5) && (isa = sub_ABB580().super.super.isa, v7 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v7))
    {
      v8 = sub_AB92A0();

      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 == 2)
  {
    sub_60A144(a1, a3);
  }

  else
  {
    if (a2 != 1)
    {
      v6 = a1;
      sub_60A144(a1, a3);
      if (v7)
      {
        return;
      }

      a1 = v6;
    }

    sub_609F04(a1, a3, a4);
  }
}

void sub_609D50(void *a1)
{
  v8 = 2;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_60F47C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_710F8;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_143;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (v8 == 2 || (v8 & 1) == 0)
  {
  }

  else
  {
    MPIdentifierSet.bestLibraryIdentifier.getter();
  }
}

void sub_609F04(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 2;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = &v11;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_60F3E4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_710F8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_133;
  v8 = _Block_copy(aBlock);
  v9 = a1;

  [v5 performWithoutEnforcement:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v11 == 2 || (v11 & 1) == 0)
  {
  }

  else
  {
    MPIdentifierSet.bestLibraryIdentifier.getter();
  }
}

uint64_t sub_60A0C0(char *a1, uint64_t a2)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  v5 = 2;
  if (result && a2)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    result = (*(v6 + 8))(ObjectType, v6);
    v5 = result & 1;
  }

  *a1 = v5;
  return result;
}

id sub_60A144(uint64_t a1, void *a2)
{
  sub_13C80(0, &unk_E110D0, MPIdentifierSet_ptr);
  ObjectType = swift_getObjectType();
  return static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, a2);
}

uint64_t sub_60A1B0()
{

  return swift_deallocObject();
}

uint64_t sub_60A1F0()
{

  return swift_deallocObject();
}

uint64_t sub_60A228()
{

  return swift_deallocObject();
}

uint64_t sub_60A274()
{

  return swift_deallocObject();
}

void MPIdentifierSet.init(kind:deviceLibraryPID:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_60E980;
  *(v6 + 24) = v5;
  v8[4] = sub_3F328C;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_41A314;
  v8[3] = &block_descriptor_34_3;
  v7 = _Block_copy(v8);

  [v4 initWithModelKind:a1 block:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_60A42C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() deviceMediaLibrary];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 uniqueIdentifier];

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_60F374;
    *(v8 + 24) = v7;
    v11[4] = sub_445458;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_444B84;
    v11[3] = &block_descriptor_123_1;
    v9 = _Block_copy(v11);

    [a1 setLibraryIdentifiersWithDatabaseID:v6 block:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_6:
      __break(1u);
    }
  }
}

id LibraryAddable.hasLoadedLibraryAddedProperty.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded))
  {
    return &dword_0 + 1;
  }

  else
  {
    return [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  }
}

BOOL LibraryAddable.isUserLibraryAddable.getter()
{
  v1 = [objc_allocWithZone(MPLibraryAddStatusObserver) init];
  [v1 configureWithModelObject:v0];
  v2 = [v1 currentStatus];

  return (v2 - 1) < 3;
}

BOOL PlaylistAddable.isPlaylistAddEligible.getter(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return (!v4 || ([v4 isArtistUploadedContent] & 1) == 0) && ((*(*(a2 + 8) + 16))(a1) & 1) != 0;
}

Swift::String_optional __swiftcall MPModelObject.genericModelRelationshipKey()()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v0 = sub_AB92A0();
  }

  else
  {
    v1 = 0;
  }

  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t MPModelObject.MediaKitPlayableKind.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x6F6D2D636973756DLL;
    v5 = 0x7473696C79616C70;
    if (a1 != 8)
    {
      v5 = 0x736D75626C61;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x736E6F6974617473;
    if (a1 != 5)
    {
      v6 = 0x69762D636973756DLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73676E6F73;
    v2 = 0x73776F68732D7674;
    if (a1 != 2)
    {
      v2 = 0x646564616F6C7075;
    }

    if (a1)
    {
      v1 = 0x6F736970652D7674;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_60AB48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MPModelObject.MediaKitPlayableKind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MPModelObject.MediaKitPlayableKind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_60ABD0()
{
  v1 = *v0;
  sub_ABB5C0();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_60AC34(uint64_t a1)
{
  MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  sub_AB93F0();

  return result;
}

Swift::Int sub_60AC88(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v2);
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_60ACE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_60AD18@<X0>(uint64_t *a1@<X8>)
{
  result = MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MPModelObject.mediaKitPlayableKind.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isArtistUploadedContent];
    v3 = [v1 hasVideo];
    if (v2)
    {
      if (v3)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if (v3)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 2;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return 5;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return 7;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              return 8;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                return 9;
              }

              else
              {
                return 10;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t MPModelObject.FavoriteStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657469726F766166;
  v2 = 0x64656B696C736964;
  if (a1 != 2)
  {
    v2 = 0x726F707075736E75;
  }

  if (a1)
  {
    v1 = 0x6C61727475656ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_60AF30()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_60B000(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_60B0BC(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_60B188@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_60B1B8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = 0xE800000000000000;
  v5 = 0x64656B696C736964;
  if (*v1 != 2)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MPModelObject.favoriteStatus.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0 || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v1 = v0;
    v2 = [v0 isFavorite];
LABEL_5:
    v3 = v2;
    v4 = [v1 isDisliked];
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      result = sub_ABAFD0();
      __break(1u);
      return result;
    }

    v6 = v4 == 0;
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v1 = v7;
    if (qword_E0CC60 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v15);

    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    sub_70C54(&v23);
    if (BYTE8(v23))
    {
      v2 = [v1 isFavorite];
      goto LABEL_5;
    }

    return 3;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 3;
  }

  v9 = v8;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v15);

  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  sub_70C54(&v23);
  if ((BYTE8(v23) & 1) == 0)
  {
    return 3;
  }

  v10 = [v9 artist];
  if (!v10)
  {
    return 3;
  }

  v11 = v10;
  v12 = [v10 isFavorite];
  v13 = [v11 isDisliked];
  v14 = v13;
  if (v12)
  {
    if ((v13 & 1) == 0)
    {

      return 0;
    }

    goto LABEL_27;
  }

  v6 = v14 == 0;
LABEL_9:
  if (v6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id MPModelAlbum.orphanMusicVideo.getter()
{
  v1 = _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0();
  v2 = [v0 hasLoadedValuesForPropertySet:v1];

  if (!v2 || [v0 trackCount] > 1)
  {
    return 0;
  }

  result = [v0 representativeSong];
  if (result)
  {
    v4 = result;
    v5 = [result hasVideo];
    result = v4;
    if ((v5 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

uint64_t MPModelAlbum.representativeTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;

  v5 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  if (isa && [v0 trackCount] <= 1)
  {
    v6 = [v0 title];
    if (!v6)
    {
      v10 = [v0 representativeSong];
      if (!v10)
      {
        return 0;
      }

      v11 = v10;
      v12 = [v10 title];

      if (!v12)
      {
        return 0;
      }

      v6 = v12;
    }

LABEL_6:
    v8 = v6;
    v7 = sub_AB92A0();

    return v7;
  }

  v6 = [v0 title];
  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

id static MPModelAlbum.representativeTitlePropertySet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;

  v4 = [objc_opt_self() propertySetWithProperties:isa];

  return v4;
}

uint64_t Array<A>.union()(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() emptyPropertySet];
  sub_AB9870();
  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  swift_getWitnessTable();
  sub_AB9640();

  return v4;
}

id sub_60BB58(uint64_t a1, SEL *a2, SEL *a3)
{
  v6 = v3;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v6, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10F00, &unk_B1D250) + 48));
    (*(v9 + 32))(v11, v14, v8);
    isa = sub_AB3770().super.isa;
    v18 = [v16 *a3];

    (*(v9 + 8))(v11, v8);
    return v18;
  }

  else
  {
    v20 = v14[1];
    v21 = [v20 *a2];

    return v21;
  }
}

id SnapshotIdentifier.identifiers.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for SnapshotIdentifier.Lazy(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = __chkstk_darwin();
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v5, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    v16 = [*v13 identifiers];

    return v16;
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v18 = SnapshotIdentifier.Lazy.identifiers.getter(v7);
    (*(v8 + 8))(v10, v7);
    return v18;
  }
}

id SnapshotIdentifier.object.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for SnapshotIdentifier.Lazy(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v13;
  }

  (*(v8 + 32))(v10, v13, v7);
  v16 = SnapshotIdentifier.Lazy.object.getter(v7);
  (*(v8 + 8))(v10, v7);
  return v16;
}

unint64_t SnapshotIdentifier.debugDescription.getter(uint64_t a1)
{
  v7 = SnapshotIdentifier.description.getter(a1);
  v8._countAndFlagsBits = 0x7463656A626F202CLL;
  v8._object = 0xEA0000000000203ALL;
  sub_AB94A0(v8);
  v6 = SnapshotIdentifier.object.getter(a1, v2, v3, v4);
  swift_getWitnessTable();
  sub_ABB370();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_AB94A0(v9);

  return v7;
}

unint64_t SnapshotIdentifier.description.getter(uint64_t a1)
{
  v11._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 2112062;
  v12._object = 0xE300000000000000;
  sub_AB94A0(v12);
  v13._countAndFlagsBits = 60;
  v13._object = 0xE100000000000000;
  sub_AB94A0(v13);

  v5 = SnapshotIdentifier.identifiers.getter(a1, v2, v3, v4);
  v6 = [v5 description];
  v7 = sub_AB92A0();
  v9 = v8;

  v14._countAndFlagsBits = v7;
  v14._object = v9;
  sub_AB94A0(v14);

  v15._countAndFlagsBits = 0x696669746E656469;
  v15._object = 0xEB000000003D7265;
  sub_AB94A0(v15);

  return 0xD000000000000012;
}

void SnapshotIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = SnapshotIdentifier.identifiers.getter(a2, a2, a3, a4);
  sub_ABA7A0();
}

uint64_t static SnapshotIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_E112E0, NSObject_ptr);
  v6 = type metadata accessor for SnapshotIdentifier(0, a3, v4, v5);
  v10 = SnapshotIdentifier.identifiers.getter(v6, v7, v8, v9);
  v14 = SnapshotIdentifier.identifiers.getter(v6, v11, v12, v13);
  v15 = sub_ABA790();

  return v15 & 1;
}

Swift::Int SnapshotIdentifier.hashValue.getter(uint64_t a1)
{
  sub_ABB5C0();
  v5 = SnapshotIdentifier.identifiers.getter(a1, v2, v3, v4);
  sub_ABA7A0();

  return sub_ABB610();
}

Swift::Int sub_60C410(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  SnapshotIdentifier.hash(into:)(v6, a2, v3, v4);
  return sub_ABB610();
}

void static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v17;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_60ECC0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_4974E4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_60C784;
  aBlock[3] = &block_descriptor_43_9;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateItemIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }
}

uint64_t sub_60C5EC(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, char *, _BYTE *), uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v24 = a3;
  v13 = type metadata accessor for SnapshotIdentifier(0, a9, a3, a4);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v23 - v15;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10F00, &unk_B1D250) + 48);
  v18 = sub_AB3820();
  (*(*(v18 - 8) + 16))(v16, a1, v18);
  *&v16[v17] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a9, v19, v20);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v21 = a4;
  a5(a1, v16, a7);
  *v24 = *a7;
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_60C784(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_AB3790();
  v12 = a3;
  v11(v10, v12, a4);

  return (*(v8 + 8))(v10, v7);
}

void static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = 0;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a1;
  v14[7] = a3;
  v14[8] = a4;
  v14[9] = &v19;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_60ED2C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_60ED64;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_60CB94;
  aBlock[3] = &block_descriptor_52_1;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  [v17 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v16];
  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

uint64_t sub_60CA24(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, char *, _BYTE *), uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10)
{
  v23 = a7;
  v24 = a3;
  v14 = type metadata accessor for SnapshotIdentifier(0, a10, a3, a4);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v23 - v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10F00, &unk_B1D250) + 48);
  sub_AB37C0();
  *&v17[v18] = a5;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a10, v19, v20);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v21 = a5;
  a6(a1, v17, a8);
  *v24 = *a8;
  return (*(v15 + 8))(v17, v14);
}

void sub_60CB94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnapshotIdentifier(0, a4, a3, a4);
  v12 = sub_AB97C0();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = &v12;
  static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(a1, a2, sub_60ED8C, v11, a3, a4, a5);
  return v12;
}

uint64_t sub_60CCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for SnapshotIdentifier(0, a6, a3, a4);
  v8 = __chkstk_darwin();
  (*(v10 + 16))(&v12 - v9, a2, v7, v8);
  sub_AB9870();
  return sub_AB9820();
}

void static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v17;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_60ED98;
  *(v13 + 24) = v12;
  aBlock[4] = sub_60F548;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_60CB94;
  aBlock[3] = &block_descriptor_62_0;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateSectionIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }
}

uint64_t sub_60CF04(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, void *, _BYTE *), uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v14 = type metadata accessor for SnapshotIdentifier(0, a8, a3, a4);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v22 - v16);
  *v17 = a1;
  v17[1] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a8, v18, v19);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v20 = a4;
  a5(a1, v17, a7);
  *a3 = *a7;
  return (*(v15 + 8))(v17, v14);
}

void static NSDiffableDataSourceSnapshot<>.snapshot(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SnapshotIdentifier(0, a3, a3, a4);
  swift_getWitnessTable();
  sub_AB5110();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = sub_60EE04;
  v12[6] = v11;
  v15[4] = sub_60EE24;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_60D374;
  v15[3] = &block_descriptor_71_1;
  v13 = _Block_copy(v15);
  v14 = a1;

  [v14 enumerateSectionsUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }
}

double sub_60D22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_6717B0(a6, a6);
  swift_allocObject();
  v14 = sub_AB9780();
  *v15 = a1;
  v16 = sub_23BCD8(v14, a6);
  type metadata accessor for SnapshotIdentifier(255, a7, v17, v18);
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  sub_AB5120();
  v19._rawValue = v16;
  sub_AB50D0(v19);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, a6, a7, a8);
  swift_unknownObjectRetain();
  sub_AB5090();
  swift_unknownObjectRelease();

  return result;
}

double sub_60D374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_13C80(0, &qword_E10390, MPModelObject_ptr);
  v7 = *(a1 + 32);
  v8 = swift_unknownObjectRetain();
  v7(v8, a3, a4);

  swift_unknownObjectRelease();
  return result;
}

void static NSDiffableDataSourceSnapshot<>.snapshot(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for SnapshotIdentifier(0, a2, a4, a5);
  swift_getWitnessTable();
  sub_AB5110();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_60EE4C;
  *(v10 + 24) = v9;
  v13[4] = sub_1D3664;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_60D714;
  v13[3] = &block_descriptor_80_2;
  v11 = _Block_copy(v13);
  v12 = a1;

  [v12 enumerateSectionsUsingBlock:v11];
  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

double sub_60D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  type metadata accessor for SnapshotIdentifier(255, a6, v11, v12);
  swift_getWitnessTable();
  sub_AB5120();
  v13._rawValue = v9;
  sub_AB50D0(v13);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, &type metadata for String, a6, &protocol witness table for String);
  sub_AB92A0();
  sub_AB5090();

  return result;
}

void sub_60D714(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void static NSDiffableDataSourceSnapshot<>.snapshot(from:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for SnapshotIdentifier(0, a2, a3, x3_0);
  type metadata accessor for SnapshotIdentifier(0, a3, v8, v9);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB5110();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  objc_opt_self();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = swift_dynamicCastObjCClassUnconditional();
  WitnessTable = swift_getWitnessTable();
  static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(v10, sub_60EE58, v12, a2, a3, WitnessTable);
}

uint64_t sub_60D8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v28 = a2;
  v29 = a6;
  v30 = a1;
  v31 = a5;
  v9 = type metadata accessor for SnapshotIdentifier(255, a6, a3, a4);
  v10 = sub_ABA9C0();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin();
  v12 = &v26 - v11;
  sub_ABB340();
  v13 = *(v9 - 8);
  swift_allocObject();
  v14 = sub_AB9780();
  v27 = *(v13 + 16);
  v27(v15, a2, v9);
  v16 = sub_23BCD8(v14, v9);
  v19 = type metadata accessor for SnapshotIdentifier(255, a7, v17, v18);
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v34 = v9;
  v35 = v19;
  v36 = WitnessTable;
  v37 = v21;
  sub_AB5120();
  v22._rawValue = v16;
  sub_AB50D0(v22);

  v23 = v29;
  v24 = swift_getWitnessTable();
  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(v31, v30, v23, a7, v24);
  v27(v12, v28, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  sub_AB5090();

  return (*(v32 + 8))(v12, v33);
}

uint64_t MPModelPlaylist.supportsSing.getter()
{
  if (([v0 traits] & 0x100) != 0)
  {
    return MSVDeviceSupportsVocalAttenuation();
  }

  else
  {
    return 0;
  }
}

id MPModelPlaylist.coverArtworkCatalog.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_AB92A0();
  *(v1 + 72) = v4;
  isa = sub_AB9740().super.isa;

  v6 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v6];
  if (!isa)
  {
    return 0;
  }

  result = [v0 name];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_AB92A0();
  v11 = v10;

  if (([v0 userEditableComponents] & 2) == 0)
  {

    return 0;
  }

  v12 = [v0 coverArtworkRecipe];
  v13 = sub_AB92A0();
  v15 = v14;

  result = _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(v13, v15, v9, v11);
  if (result)
  {
    v16 = result;
    v17 = [v0 artworkCatalog];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      if (qword_E0CF00 != -1)
      {
        swift_once();
      }

      v19 = sub_AB4BC0();
      __swift_project_value_buffer(v19, static Logger.playlistCovers);
      v20 = v0;
      v21 = sub_AB4BA0();
      v22 = sub_AB9F50();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136446210;
        v25 = [v20 coverArtworkRecipe];
        v26 = sub_AB92A0();
        v28 = v27;

        v29 = sub_500C84(v26, v28, &v31);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_0, v21, v22, "No server artwork catalog available for playlist with coverArtworkRecipe=%{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      v30 = qword_E0CEE0;
      v16 = v16;
      if (v30 != -1)
      {
        swift_once();
      }

      v18 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v16 dataSource:static PlaylistCovers.ArtworkDataSource.shared];
    }

    return v18;
  }

  return result;
}

unint64_t MPNowPlayingAudioFormatBadging.debugDescription.getter(uint64_t a1, __n128 a2)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v2._countAndFlagsBits = 0x7373656C73736F6CLL;
        v2._object = 0xE800000000000000;
        goto LABEL_16;
      case 4:
        v2._object = 0x8000000000B6E5B0;
        v2._countAndFlagsBits = 0xD000000000000016;
        goto LABEL_16;
      case 5:
        v2._countAndFlagsBits = 0x416C616974617073;
        v2._object = 0xEC0000006F696475;
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v2._countAndFlagsBits = 0x6574537973736F6CLL;
        v2._object = 0xEB000000006F6572;
        goto LABEL_16;
      case 1:
        v2._countAndFlagsBits = 0x6D744179626C6F64;
        v2._object = 0xEA0000000000736FLL;
        goto LABEL_16;
      case 2:
        v2._countAndFlagsBits = 0x64754179626C6F64;
        v2._object = 0xEA00000000006F69;
LABEL_16:
        sub_AB94A0(v2);
        goto LABEL_17;
    }
  }

  v4._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  sub_AB94A0(v5);
  v6._countAndFlagsBits = 0x3C6E776F6E6B6E75;
  v6._object = 0xE800000000000000;
  sub_AB94A0(v6);

LABEL_17:
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_AB94A0(v7);
  return 0xD00000000000001FLL;
}