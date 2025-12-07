id static PXSharedCollectionsUtilities.fetchParticipants(in:)(void *a1)
{
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    result = [v4 photoLibrary];
    if (result)
    {
      v6 = result;
      v7 = [result px_standardLibrarySpecificFetchOptions];

      v8 = [objc_opt_self() fetchParticipantsInShare:v3 options:v7];
LABEL_6:

      return v8;
    }

    __break(1u);
  }

  else
  {
    result = [a1 photoLibrary];
    if (result)
    {
      v7 = result;
      v8 = [objc_opt_self() emptyFetchResultWithPhotoLibrary:result fetchType:*MEMORY[0x1E6978DD0]];
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id SharedCollectionsFetchParticipants(in:)(void *a1)
{
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    result = [v4 photoLibrary];
    if (result)
    {
      v6 = result;
      v7 = [result px_standardLibrarySpecificFetchOptions];

      v8 = [objc_opt_self() fetchParticipantsInShare:v3 options:v7];
LABEL_6:

      return v8;
    }

    __break(1u);
  }

  else
  {
    result = [a1 photoLibrary];
    if (result)
    {
      v7 = result;
      v8 = [objc_opt_self() emptyFetchResultWithPhotoLibrary:result fetchType:*MEMORY[0x1E6978DD0]];
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A4976C7C(unint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6978690]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E6978678]) init];
  [v2 setAdjustmentBakeInOptions_];

  v4 = [objc_allocWithZone(MEMORY[0x1E6978688]) init];
  v36 = v2;
  [v2 setMetadataCopyOptions_];

  if (a1 >> 62)
  {
LABEL_28:
    v5 = sub_1A524E2B4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_29:
    v7 = MEMORY[0x1E69E7CC8];
LABEL_30:

    return v7;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_3:
  v6 = 0;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC8];
  v33 = a1;
  while (1)
  {
    if (v35)
    {
      v10 = MEMORY[0x1A59097F0](v6, a1);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v6 >= *(v34 + 16))
      {
        goto LABEL_25;
      }

      v10 = *(a1 + 8 * v6 + 32);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v37 = v11;
    v12 = v5;
    v13 = v10;
    v14 = [v10 uuid];
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v16 = sub_1A524C674();
    v18 = v17;

    [v36 copy];
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C52C70(0, &qword_1EB12B618, 0x1E6978690);
    swift_dynamicCast();
    a1 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1A3C5DCA4(v16, v18);
    v22 = v7[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_26;
    }

    v25 = v20;
    if (v7[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1A4980660();
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1A49803C8(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1A3C5DCA4(v16, v18);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_32;
      }

      v21 = v26;
      if (v25)
      {
LABEL_4:

        v8 = v7[7];
        v9 = *(v8 + 8 * v21);
        *(v8 + 8 * v21) = v38;

        goto LABEL_5;
      }
    }

    v7[(v21 >> 6) + 8] |= 1 << v21;
    v28 = (v7[6] + 16 * v21);
    *v28 = v16;
    v28[1] = v18;
    *(v7[7] + 8 * v21) = v38;

    v29 = v7[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_27;
    }

    v7[2] = v31;
LABEL_5:
    ++v6;
    v5 = v12;
    a1 = v33;
    if (v37 == v12)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void SharedCollectionsCreateAlbum(albumName:assets:photoLibrary:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a4;
  v11[6] = a3;
  v14 = sub_1A5246E54();
  v12 = *(v14 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v11[2] = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v11 - v8;
  v9 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v9);
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void SharedCollectionsDeleteAlbums(sharedAlbums:completionHandler:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v26 = v9;
    v28 = v5;
    v29 = isUniquelyReferenced_nonNull_native;
    v30 = a1;
    if (!v10)
    {
LABEL_16:
      v22 = sub_1A3C56D80();
      (*(v28 + 16))(v26, v22, v29);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v12)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1A59097F0](v11, a1, v7);
      }

      else
      {
        if (v11 >= *(v5 + 16))
        {
          goto LABEL_18;
        }

        isUniquelyReferenced_nonNull_native = *(a1 + 8 * v11 + 32);
      }

      v9 = isUniquelyReferenced_nonNull_native;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [isUniquelyReferenced_nonNull_native uuid];
      v16 = sub_1A524C674();
      v18 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1A3D3D914(0, *(v13 + 16) + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      v9 = (v20 + 1);
      if (v20 >= v19 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1A3D3D914((v19 > 1), v20 + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      *(v13 + 16) = v9;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      ++v11;
      a1 = v30;
      if (v14 == v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = isUniquelyReferenced_nonNull_native;
    v10 = sub_1A524E2B4();
    isUniquelyReferenced_nonNull_native = v23;
  }
}

void static PXSharedCollectionsUtilities.addAssets(to:assets:comment:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, id), uint64_t a6)
{
  if ([a1 px_isCloudKitSharedAlbum])
  {

    SharedCollectionsAddAssetsToSharedCollection(sharedCollection:assets:completionHandler:)(a1, a2, a5, a6);
  }

  v10 = MEMORY[0x1E69E7CA0];
  sub_1A3C712BC(0, &qword_1EB1261F0, &qword_1EB126F70, MEMORY[0x1E69E7CA0] + 8, sub_1A4980D64);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v12;
  *(inited + 48) = 0xD00000000000002CLL;
  *(inited + 56) = 0x80000001A53F46C0;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A498087C(inited + 32, &qword_1EB126F70, v10 + 8);
  v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v14 = sub_1A524C634();
  v15 = sub_1A524C3D4();

  v16 = [v13 initWithDomain:v14 code:0 userInfo:v15];

  v17 = v16;
  a5(0, v16);
}

void SharedCollectionsAddAssetsToSharedCollection(sharedCollection:assets:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1A5246E54();
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5246F24();
  v8 = [a1 uuid];
  sub_1A524C674();

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t SharedCollectionsCKShare(from:error:)(void *a1, void *a2)
{
  v4 = sub_1A5241C44();
  v27 = v4;
  v28 = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
  v5 = __swift_allocate_boxed_opaque_existential_1(&v25);
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69BDD20], v4);
  LOBYTE(v4) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if ((v4 & 1) != 0 && [a1 px_isCloudKitSharedAlbum])
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = a1;
      v9 = [v7 ckShareData];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1A5240EA4();
        v13 = v12;

        sub_1A3C52C70(0, &qword_1EB139B30, 0x1E696ACD0);
        sub_1A3C52C70(0, &qword_1EB146138, 0x1E695BAC8);
        v23 = sub_1A524D3B4();
        sub_1A3C59280(v11, v13);

        return v23;
      }
    }

    if (a2)
    {
      v14 = MEMORY[0x1E69E6158];
      sub_1A3C712BC(0, &qword_1EB120280, &qword_1EB120D48, MEMORY[0x1E69E6158], sub_1A4980D64);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = sub_1A524C674();
      *(inited + 40) = v16;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0x4465726168534B43, 0xEF20666F20617461);
      v17 = [a1 description];
      v18 = sub_1A524C674();
      v20 = v19;

      MEMORY[0x1A5907B60](v18, v20);

      MEMORY[0x1A5907B60](0xD000000000000038, 0x80000001A53F4730);
      v21 = v26;
      *(inited + 48) = v25;
      *(inited + 56) = v21;
      v22 = sub_1A3DAF1D4(inited);
      swift_setDeallocating();
      sub_1A498087C(inited + 32, &qword_1EB120D48, v14);
      sub_1A497FB20(v22);
    }
  }

  return 0;
}

id static PXSharedCollectionsUtilities.allowedSharingOptionsForSharing()()
{
  v0 = [objc_opt_self() standardOptions];
  [v0 setSupportAllowingAddedParticipantsToInviteOthers_];
  [v0 setSupportAllowingAccessRequests_];
  return v0;
}

CKAllowedSharingOptions __swiftcall SharedCollectionsAllowedSharingOptionsForSharing()()
{
  v0 = [objc_opt_self() standardOptions];
  [v0 setSupportAllowingAddedParticipantsToInviteOthers_];
  [v0 setSupportAllowingAccessRequests_];
  return v0;
}

id static PXSharedCollectionsUtilities.makeItemProvider(from:)(uint64_t a1)
{
  v1 = sub_1A5241C44();
  v11[3] = v1;
  v11[4] = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v1);
  LOBYTE(v1) = sub_1A5241704();
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  if (v1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v5 = objc_allocWithZone(MEMORY[0x1E695B8A0]);
    v6 = sub_1A524C634();
    v7 = [v5 initWithContainerIdentifier:v6 environment:1];

    v8 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
    [v8 setUseZoneWidePCS_];
    [v8 setMmcsEncryptionSupport_];
    v9 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v7 options:v8];

    v10 = [objc_opt_self() standardOptions];
    [v10 setSupportAllowingAddedParticipantsToInviteOthers_];
    [v10 setSupportAllowingAccessRequests_];
    sub_1A524D294();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSItemProvider_optional __swiftcall SharedCollectionsMakeItemProvider(from:)(CKShare from)
{
  v1 = sub_1A5241C44();
  v13[3] = v1;
  v13[4] = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v1);
  v3 = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v13);
  v5 = 0;
  if (v3)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v6 = objc_allocWithZone(MEMORY[0x1E695B8A0]);
    v7 = sub_1A524C634();
    v8 = [v6 initWithContainerIdentifier:v7 environment:1];

    v9 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
    [v9 setUseZoneWidePCS_];
    [v9 setMmcsEncryptionSupport_];
    v10 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v8 options:v9];

    v11 = [objc_opt_self() standardOptions];
    [v11 setSupportAllowingAddedParticipantsToInviteOthers_];
    [v11 setSupportAllowingAccessRequests_];
    sub_1A524D294();
  }

  v12 = v5;
  result.value.super.isa = v12;
  result.is_nil = v4;
  return result;
}

double static PXSharedCollectionsUtilities.fetchSharedCollection(withShareURL:inPhotoLibrary:acceptIfPending:completionHandler:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v22 = a3;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A3C7D2BC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21[-v12];
  sub_1A524CC74();
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v9 + 16))(&v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v9 + 32))(v16 + v15, &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v17 = v16 + ((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = a2;
  *(v17 + 8) = v22;
  v18 = (v16 + ((v15 + v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v23;
  v18[1] = a5;
  v19 = a2;

  sub_1A3D4D930(0, 0, v13, &unk_1A5377950, v16);

  return result;
}

uint64_t sub_1A4979470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a6;
  v8[16] = a7;
  v8[17] = a8;
  v12 = sub_1A524BEE4();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();
  v13 = sub_1A524BF64();
  v8[21] = v13;
  v8[22] = *(v13 - 8);
  v8[23] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[24] = v14;
  *v14 = v8;
  v14[1] = sub_1A49795D8;

  return SharedCollectionsFetchSharedCollection(withShareURL:inPhotoLibrary:acceptIfPending:)(a4, a5, v9);
}

uint64_t sub_1A49795D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_1A4979968;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_1A4979700;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4979700()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v13 = sub_1A524D474();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v1;
  v0[12] = sub_1A49813B4;
  v0[13] = v8;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1A3C2E0D0;
  v0[11] = &block_descriptor_58_4;
  v9 = _Block_copy(v0 + 8);
  v10 = v1;

  sub_1A524BF14();
  v0[15] = MEMORY[0x1E69E7CC0];
  sub_1A4981CAC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C7D2BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v2, v3, v9);
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A4979968()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v13 = sub_1A524D474();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v1;
  v0[6] = sub_1A4981380;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_51_3;
  v9 = _Block_copy(v0 + 2);

  v10 = v1;
  sub_1A524BF14();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1A4981CAC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C7D2BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v2, v3, v9);
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t SharedCollectionsFetchSharedCollection(withShareURL:inPhotoLibrary:acceptIfPending:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 619) = a3;
  *(v3 + 320) = a1;
  *(v3 + 328) = a2;
  v4 = sub_1A5240E64();
  *(v3 + 336) = v4;
  *(v3 + 344) = *(v4 - 8);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  v5 = sub_1A5246F24();
  *(v3 + 376) = v5;
  *(v3 + 384) = *(v5 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  v6 = sub_1A5241144();
  *(v3 + 448) = v6;
  *(v3 + 456) = *(v6 - 8);
  *(v3 + 464) = swift_task_alloc();
  v7 = sub_1A5246E54();
  *(v3 + 472) = v7;
  *(v3 + 480) = *(v7 - 8);
  *(v3 + 488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4979E0C, 0, 0);
}

uint64_t sub_1A4979E0C()
{
  v1 = sub_1A5241C44();
  v0[37] = v1;
  v0[38] = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 34);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v1);
  LOBYTE(v1) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  v3 = 0;
  if (v1)
  {
    if (SharedCollectionsIsSharedCollectionURL(_:)())
    {
      if (qword_1EB1E32A0 != -1)
      {
        swift_once();
      }

      v4 = v0[41];
      v5 = qword_1EB16B728;
      v0[62] = qword_1EB16B728;
      v6 = v5;
      sub_1A5246E24();
      sub_1A524D654();
      sub_1A5246E04();
      sub_1A5241104();
      v7 = objc_opt_self();
      v8 = sub_1A5240D44();
      v0[63] = v8;
      v0[2] = v0;
      v0[7] = v0 + 39;
      v0[3] = sub_1A497A188;
      v9 = swift_continuation_init();
      sub_1A4981078(0);
      v0[25] = v10;
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_1A49802EC;
      v0[21] = &block_descriptor_311;
      v0[22] = v9;
      [v7 fetchCollectionShareFromShareURL:v8 ignoreExistingShare:0 photoLibrary:v4 completionHandler:v0 + 18];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v3 = 2;
  }

  sub_1A43BDEA0();
  swift_allocError();
  *v11 = v3;
  *(v11 + 8) = 1;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A497A188()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = sub_1A497AF98;
  }

  else
  {
    v2 = sub_1A497A298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A497A298()
{
  v60 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 440);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  *(v0 + 520) = v7;
  v9 = v7;

  v10 = sub_1A3C56D80();
  v11 = *(v3 + 16);
  *(v0 + 528) = v10;
  *(v0 + 536) = v11;
  *(v0 + 544) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56 = v11;
  v57 = v10;
  (v11)(v2);
  v12 = *(v6 + 16);
  *(v0 + 552) = v12;
  *(v0 + 560) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13 = v4;
  v14 = v9;
  v12(v13, v8, v5);
  v15 = sub_1A5246F04();
  LOBYTE(v2) = sub_1A524D264();

  v16 = os_log_type_enabled(v15, v2);
  v17 = *(v0 + 384);
  v54 = *(v0 + 376);
  v55 = *(v0 + 440);
  v18 = *(v0 + 368);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  if (v16)
  {
    v21 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = [v14 uuid];
    v23 = sub_1A524C674();
    v25 = v24;

    sub_1A3C2EF94(v23, v25, &v59);
  }

  v26 = *(v20 + 8);
  v26(v18, v19);
  v27 = v14;
  v28 = *(v17 + 8);
  v28(v55, v54);
  *(v0 + 576) = v28;
  *(v0 + 568) = v26;
  v56(*(v0 + 432), v57, *(v0 + 376));
  v29 = v27;
  v30 = sub_1A5246F04();
  v31 = sub_1A524D264();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 432);
  v34 = *(v0 + 376);
  if (v32)
  {
    v35 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v35 = 136446466;
    v36 = [v29 uuid];
    v37 = sub_1A524C674();
    v39 = v38;

    sub_1A3C2EF94(v37, v39, &v59);
  }

  v28(v33, v34);
  v40 = *(v0 + 619);
  v41 = [v29 status];

  if (v41 == 2 && v40)
  {
    v42 = [v29 uuid];
    if (!v42)
    {
      sub_1A524C674();
      v42 = sub_1A524C634();
    }

    *(v0 + 584) = v42;
    v43 = *(v0 + 424);
    v44 = *(v0 + 376);
    *(v0 + 592) = sub_1A524C674();
    *(v0 + 600) = v45;
    v56(v43, v57, v44);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v58 = *(v0 + 520);
  v46 = *(v0 + 480);
  v47 = *(v0 + 488);
  v49 = *(v0 + 464);
  v48 = *(v0 + 472);
  v51 = *(v0 + 448);
  v50 = *(v0 + 456);
  sub_1A497FD88(v47, v49, *(v0 + 320));
  (*(v50 + 8))(v49, v51);
  (*(v46 + 8))(v47, v48);

  v52 = *(v0 + 8);

  return v52(v58);
}

uint64_t sub_1A497AAFC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 608) = v1;
  if (v1)
  {
    v2 = sub_1A497B358;
  }

  else
  {
    v2 = sub_1A497AC0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A497AC0C()
{
  v1 = *(v0 + 618);

  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 376);
  if (v1 == 1)
  {
    v2(*(v0 + 416), v3, v4);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2(*(v0 + 408), v3, v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A497AF98(uint64_t a1)
{
  v37 = v1;
  v3 = v1[63];
  v2 = v1[64];
  v4 = v1[50];
  v5 = v1[47];
  v6 = v1[48];
  v35 = v1[45];
  v8 = v1[42];
  v7 = v1[43];
  v9 = v1[40];
  swift_willThrow();

  v10 = sub_1A3C56D80();
  (*(v6 + 16))(v4, v10, v5);
  (*(v7 + 16))(v35, v9, v8);
  v11 = v2;
  v12 = sub_1A5246F04();
  LOBYTE(v7) = sub_1A524D264();

  if (os_log_type_enabled(v12, v7))
  {
    v13 = v1[45];
    v14 = v1[42];
    v15 = v1[43];
    v16 = swift_slowAlloc();
    swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v16 = 136315394;
    sub_1A4981CAC(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v17 = sub_1A524EA44();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    sub_1A3C2EF94(v17, v19, &v36);
  }

  v20 = v1[50];
  v21 = v1[47];
  v22 = v1[48];
  v23 = v1[45];
  v24 = v1[42];
  v25 = v1[43];

  (*(v25 + 8))(v23, v24);
  (*(v22 + 8))(v20, v21);
  v27 = v1[60];
  v26 = v1[61];
  v29 = v1[58];
  v28 = v1[59];
  v30 = v1[56];
  v31 = v1[57];
  v32 = v1[40];
  swift_willThrow();
  sub_1A497FD88(v26, v29, v32);
  (*(v31 + 8))(v29, v30);
  (*(v27 + 8))(v26, v28);

  v33 = v1[1];

  return v33();
}

void sub_1A497B358(uint64_t a1)
{
  v2 = v1[73];
  v10 = v1[69];
  v3 = v1[67];
  v4 = v1[66];
  v5 = v1[49];
  v6 = v1[47];
  v7 = v1[44];
  v8 = v1[42];
  v9 = v1[40];
  swift_willThrow();

  v3(v5, v4, v6);
  v10(v7, v9, v8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

PXSharedCollectionsUtilities __swiftcall PXSharedCollectionsUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A497BAD8()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  result = sub_1A524DEE4();
  qword_1EB1EC158 = result;
  return result;
}

uint64_t *sub_1A497BB3C()
{
  if (qword_1EB16E410 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EC158;
}

void sub_1A497BB8C(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, void *), uint64_t a10)
{
  v24[8] = a7;
  v24[9] = a8;
  v24[14] = a9;
  v24[15] = a10;
  v14 = sub_1A5246E54();
  v24[10] = *(v14 - 8);
  v24[11] = v14;
  MEMORY[0x1EEE9AC00](v14);
  v24[12] = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A5246F24();
  v24[13] = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  if (a1)
  {
    v24[6] = a5;
    v24[5] = a3;
    v20 = [a3 librarySpecificFetchOptions];
    objc_opt_self();
    sub_1A4981860(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A52F8E10;
    swift_beginAccess();
    v22 = *(a4 + 24);
    *(v21 + 32) = *(a4 + 16);
    *(v21 + 40) = v22;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v23 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497C6F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, id), uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  v34 = a8;
  v35 = a7;
  v36 = a5;
  v37 = a3;
  v41 = a9;
  v33 = sub_1A524BEE4();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A524BF64();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A524BEF4();
  v26[1] = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  *&v39 = sub_1A5246F24();
  v45 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v17);
  v26[0] = v26 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v44 = sub_1A5246E54();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v38 = a12;
  v40 = a10;
  v22 = qword_1EB16B728;
  sub_1A5246E24();
  sub_1A524D644();
  v42 = v21;
  sub_1A5246E04();
  v23 = sub_1A5240E64();
  v24 = (*(*(v23 - 8) + 48))(a1, 1, v23);
  v25 = v22;
  if (v24 == 1)
  {
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497D59C(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, void *), uint64_t a7)
{
  v9 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  if (a1)
  {
    v12 = [a3 uuid];
    sub_1A524C674();

    if (qword_1EB1E32A0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EB16B728;
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497D9EC(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void), uint64_t a8, uint64_t a9)
{
  v10 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  if (a1)
  {
    if (qword_1EB1E32A0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EB16B728;
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497DDC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v30 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v10 = sub_1A524E2B4();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1A59097F0](0, a1, v8);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v13 = [v11 photoLibrary];

  if (v13)
  {
    v28 = v6;
    v31 = v10;
    v27[2] = v13;
    v27[3] = a2;
    if (a1 >> 62)
    {
      v14 = sub_1A524E2B4();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27[4] = a3;
    v29 = v7;
    if (!v14)
    {
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    aBlock = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v14 & ~(v14 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v16 = aBlock;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1A59097F0](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 uuid];
        v20 = sub_1A524C674();
        v22 = v21;

        aBlock = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1A3C57108((v23 > 1), v24 + 1, 1);
          v16 = aBlock;
        }

        ++v15;
        *(v16 + 16) = v24 + 1;
        v25 = v16 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
      }

      while (v14 != v15);
      v7 = v29;
LABEL_21:
      aBlock = v16;
      sub_1A4981860(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1A3CAD85C();
      sub_1A524C514();

      v26 = sub_1A3C56D80();
      (*(v7 + 16))(v30, v26, v28);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_27;
  }
}

uint64_t sub_1A497E4A8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A524BEE4();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D644();
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  sub_1A5246E04();
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v15 = sub_1A524D474();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = sub_1A4981C04;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_145;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  v19 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4981CAC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C7D2BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v14, v11, v17);
  _Block_release(v17);

  (*(v22 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v21);
}

void sub_1A497E820(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void), uint64_t a8)
{
  v19[4] = a3;
  v19[5] = a5;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v19 - v15;
  v17 = sub_1A3C56D80();
  v18 = *(v11 + 16);
  if (a1)
  {
    v19[2] = a2;
    v18(v16, v17, v10);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v20 = a1;
  v18(v13, v17, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497EC68(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v26 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v26);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A524BF64();
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - v16;
  v18 = sub_1A3C56D80();
  v20[3] = v12;
  v19 = *(v12 + 16);
  v21 = a1;
  if (a1)
  {
    v20[2] = a4;
    v20[0] = a2;
    v19(v17, v18, v11);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v20[0] = v9;
  v19(v14, v18, v11);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497F354(char a1, void *a2, void *a3, uint64_t (*a4)(void, void *), uint64_t a5)
{
  v7 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v7);
  v9 = [a3 uuid];
  sub_1A524C674();

  if (a1)
  {
    if (qword_1EB1E32A0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB16B728;
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A497F7A4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D644();
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  sub_1A5246E04();
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v15 = sub_1A524D474();
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  *(v16 + 24) = a5;
  *(v16 + 32) = a1 & 1;
  *(v16 + 40) = a2;
  aBlock[4] = sub_1A4981520;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_76_3;
  v17 = _Block_copy(aBlock);

  v18 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4981CAC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C7D2BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v14, v11, v17);
  _Block_release(v17);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v21);
}

void sub_1A497FB20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3D75C90(0, &qword_1EB126420, MEMORY[0x1E69E7CA0] + 8);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A497FD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v36 = sub_1A5240E64();
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  v13 = sub_1A5246F24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D644();
  if (qword_1EB1E32A0 != -1)
  {
    v33 = v13;
    swift_once();
    v13 = v33;
  }

  sub_1A5246E04();
  v17 = sub_1A3C56D80();
  (*(v14 + 16))(v16, v17, v13);
  (*(v7 + 16))(v12, a2, v6);
  (*(v4 + 16))(v35, v34, v36);
  v18 = sub_1A5246F04();
  LODWORD(v34) = sub_1A524D264();
  v19 = v14;
  if (os_log_type_enabled(v18, v34))
  {
    v20 = swift_slowAlloc();
    v33 = v13;
    v21 = v20;
    v32 = swift_slowAlloc();
    v37 = v32;
    *v21 = 136315394;
    sub_1A3C712BC(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], sub_1A3C34400);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A52F8E10;
    sub_1A5241104();
    v31[0] = v18;
    sub_1A5241054();
    v24 = v23;
    v31[1] = v19;
    v25 = *(v7 + 8);
    v25(v9, v6);
    v26 = MEMORY[0x1E69E6438];
    *(v22 + 56) = MEMORY[0x1E69E63B0];
    *(v22 + 64) = v26;
    *(v22 + 32) = v24;
    v27 = sub_1A524C6C4();
    v29 = v28;
    v25(v12, v6);
    sub_1A3C2EF94(v27, v29, &v37);
  }

  (*(v4 + 8))(v35, v36);
  (*(v7 + 8))(v12, v6);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A49802EC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1A49803C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4981C34(0);
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

void sub_1A4980660()
{
  v1 = v0;
  sub_1A4981C34(0);
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

uint64_t sub_1A49807C0(void *a1, void *a2)
{
  v5 = *(sub_1A5246E54() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A497E4A8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1A498087C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A4980D64(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_87()
{
  v1 = sub_1A5246E54();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A4980978(char a1, void *a2)
{
  v5 = *(sub_1A5246E54() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A497F7A4(a1, a2, v2 + v6, v8, v9);
}

void sub_1A4980A28(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if ([a1 px_isCloudKitSharedAlbum])
  {
    SharedCollectionsAddAssetsToSharedCollection(sharedCollection:assets:completionHandler:)(a1, a2, sub_1A3D7A9AC, v6);
  }

  v7 = MEMORY[0x1E69E7CA0];
  sub_1A3C712BC(0, &qword_1EB1261F0, &qword_1EB126F70, MEMORY[0x1E69E7CA0] + 8, sub_1A4980D64);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v9;
  *(inited + 48) = 0xD00000000000002CLL;
  *(inited + 56) = 0x80000001A53F46C0;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A498087C(inited + 32, &qword_1EB126F70, v7 + 8);
  v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v11 = sub_1A524C634();
  v12 = sub_1A524C3D4();

  v13 = [v10 initWithDomain:v11 code:0 userInfo:v12];

  v14 = v13;
  v15 = sub_1A5240B74();
  (a3)[2](a3, 0, v15);
}

id _s12PhotosUICore38SharedCollectionsCKContainerForSharingSo0E0CyF_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695B8A0]);
  v1 = sub_1A524C634();
  v2 = [v0 initWithContainerIdentifier:v1 environment:1];

  v3 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
  [v3 setUseZoneWidePCS_];
  [v3 setMmcsEncryptionSupport_];
  v4 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v2 options:v3];

  return v4;
}

void sub_1A4980D64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t _s12PhotosUICore019SharedCollectionsIsC13CollectionURLySb10Foundation0G0VF_0()
{
  v0 = sub_1A5241C44();
  v4[3] = v0;
  v4[4] = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v0);
  LOBYTE(v0) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v0)
  {
    if (*(sub_1A5240CE4() + 16) > 1uLL)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v2 = sub_1A524EAB4();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A4980F4C()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3CA8098;

  return sub_1A4979470(v11, v12, v13, v0 + v3, v6, v7, v9, v10);
}

void sub_1A4981078(uint64_t a1)
{
  if (!qword_1EB146140)
  {
    sub_1A3C52C70(255, &unk_1EB120A20, 0x1E6978770);
    sub_1A3C34400(255, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146140);
    }
  }
}

uint64_t objectdestroy_10Tm_2()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A4981238()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3D60150;

  return sub_1A4979470(v11, v12, v13, v0 + v3, v6, v7, v9, v10);
}

void sub_1A49813E8()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v2)
  {
    v6 = v2;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v3 = sub_1A524CA14();
    sub_1A4976C7C(v1);
    sub_1A3C52C70(0, &qword_1EB12B618, 0x1E6978690);
    v4 = v3;
    v5 = sub_1A524C3D4();

    [v6 addAssetsToCollectionShareByCopyingSourceAssets:v4 creationOptionsMappedToSourceAssets:v5 withBatchCommentText:0];
  }
}

void sub_1A4981554()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  sub_1A3C52C70(0, &unk_1EB120A20, 0x1E6978770);
  v3 = sub_1A524CA14();
  v4 = &selRef_expungeCollectionShares_;
  if (!v1)
  {
    v4 = &selRef_trashCollectionShares_;
  }

  [v2 *v4];

  v5 = objc_opt_self();
  v6 = sub_1A524CA14();
  [v5 unsubscribeCollectionShares_];
}

uint64_t objectdestroy_72Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_47Tm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

double sub_1A49816E4()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  v3 = sub_1A524C634();
  v4 = [v2 creationRequestForOwnedCollectionShareWithTitle:v3 subtype:103];

  v5 = [v4 placeholderForCreatedCollectionShare];
  v6 = [v5 localIdentifier];

  v7 = sub_1A524C674();
  v9 = v8;

  swift_beginAccess();
  *(v1 + 16) = v7;
  *(v1 + 24) = v9;

  return result;
}

double block_copy_helper_104_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1A4981860(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A49818E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1A4981AA0;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_133_1;
  _Block_copy(aBlock);
  v4 = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4981AA0()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v3)
  {
    v7 = v3;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v4 = sub_1A524CA14();
    sub_1A4976C7C(v1);
    sub_1A3C52C70(0, &qword_1EB12B618, 0x1E6978690);
    v5 = v4;
    v6 = sub_1A524C3D4();

    [v7 addAssetsToCollectionShareByCopyingSourceAssets:v5 creationOptionsMappedToSourceAssets:v6 withBatchCommentText:0];
  }
}

void sub_1A4981C34(uint64_t a1)
{
  if (!qword_1EB146158)
  {
    sub_1A3C52C70(255, &qword_1EB12B618, 0x1E6978690);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146158);
    }
  }
}

uint64_t sub_1A4981CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A4981D68(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___PXPeoplePromoteAsMagicInternalAction_localIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithPhotoLibrary_, a3);

  return v9;
}

uint64_t sub_1A4981E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1A524CC54();
  v8[8] = sub_1A524CC44();
  v10 = sub_1A524CBC4();
  v8[9] = v10;
  v8[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A4981EF4, v10, v9);
}

uint64_t sub_1A4981F9C(char a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = sub_1A4982230;
  }

  else
  {

    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = sub_1A49820BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A49820BC()
{
  v12 = v0;
  v1 = *(v0 + 112);

  if (v1 == 1)
  {
    v2 = sub_1A524D264();
  }

  else
  {
    v2 = sub_1A524D244();
  }

  v3 = v2;
  v4 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v4, v3))
  {
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = v4;
    v8 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v8 = 136315394;
    sub_1A3C2EF94(v6, v5, &v11);
  }

  (*(v0 + 48))(*(v0 + 112), 0);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A4982230()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4982374(char *a1, void (**a2)(void, void, void, __n128))
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A52453E4();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  *(swift_allocObject() + 16) = a2;
  _Block_copy(a2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t objectdestroyTm_88(double a1)
{
  v2 = sub_1A52453E4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A4982A8C(double a1)
{
  v3 = *(sub_1A52453E4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A3D60150;

  return sub_1A4981E4C(v11, v12, v13, v1 + v4, v7, v8, v9, v10);
}

id sub_1A4982BD0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void (*sub_1A4982C2C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if ((sub_1A3C7A634() & 1) != 0 && MEMORY[0x1A590D320]())
  {
    sub_1A3C52C70(0, &unk_1EB120978, off_1E771FA50);
    v3 = [swift_getObjCClassFromMetadata() sharedInstance];
    v4 = [v3 pinCollectionsTabTitle];
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4;
  return sub_1A4982CDC;
}

void sub_1A4982D04()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v2 = *sub_1A48763F4();
  sub_1A52442F4();
  v3 = sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata sharedInstance];
  sub_1A498712C(&qword_1EB126A18, &protocol conformance descriptor for PXLemonadeSettings);
  sub_1A52443C4();
  v6 = [ObjCClassFromMetadata sharedInstance];
  v12 = v3;
  v13 = sub_1A498712C(&qword_1EB1209A0, &protocol conformance descriptor for PXLemonadeSettings);
  sub_1A5244284();
  v7 = [v1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    sub_1A4655D24(1);
  }

  if (MEMORY[0x1A590D320]())
  {
    [v1 px_enableBarAppearance];
    v9 = [v1 px_barAppearance];
    v13 = sub_1A4982F30;
    v14 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A421179C;
    v12 = &block_descriptor_60_6;
    v10 = _Block_copy(v11);
    [v9 performChangesWithAnimationOptions:0 changes:v10];
    _Block_release(v10);
  }
}

id sub_1A4982F30(void *a1)
{
  [a1 setPrefersNavigationBarVisible_];
  [a1 setPrefersToolbarVisible_];

  return [a1 setPrefersTabBarVisible_];
}

void sub_1A4982F94(void *a1)
{
  v1 = a1;
  sub_1A4982D04();
}

void sub_1A4982FDC(char a1)
{
  ObjectType = swift_getObjectType();
  if (MEMORY[0x1A590D320]())
  {
    v4 = objc_opt_self();
    v5 = *MEMORY[0x1E6991CD0];
    sub_1A3C47744(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v7;
    sub_1A3C52C70(0, &unk_1EB1265F0, 0x1E696AEC0);
    v8 = v5;
    *(inited + 48) = sub_1A524DC24();
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3C7A418(inited + 32, sub_1A3F24E98);
    sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
    v9 = sub_1A524C3D4();

    [v4 sendEvent:v8 withPayload:v9];
  }

  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_viewIsAppearing_, a1 & 1);
  v10 = [v1 px_splitViewController];
  if (v10)
  {
    v11 = v10;
    v12 = *&v1[qword_1EB129BB8];
    v13 = [v10 isSidebarVisible];
    if ([v11 isCollapsed])
    {
      v14 = 0;
    }

    else
    {
      v14 = ([v11 splitBehavior] == 2) | v13 ^ 1;
    }

    (*(*v12 + 360))(v14 & 1);
  }
}

void sub_1A498324C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A4982FDC(a3);
}

id sub_1A49832A0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A524BF64();
  v9 = *(v28 - 8);
  v10 = MEMORY[0x1EEE9AC00](v28);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v2;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_viewDidAppear_, a1 & 1, v10);
  v13 = [v2 viewIfLoaded];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 window];

    if (v15)
    {
      v16 = [v15 windowScene];

      if (v16)
      {
        v17 = [v16 screenshotService];
        if (v17)
        {
          v19 = v17;
          type metadata accessor for FullPageScreenshotter(0, v18);
          v20 = v2;
          v21 = sub_1A42B3838(v20);
          v22 = v21;
          v27 = v6;
          v23 = v22;
          [v19 setDelegate_];

          v6 = v27;
          v16 = *&v20[qword_1EB129BF8];
          *&v20[qword_1EB129BF8] = v21;
        }
      }
    }
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v24 = sub_1A524D474();
  aBlock[4] = sub_1A4983688;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_42_5;
  v25 = _Block_copy(aBlock);
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C3834C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C3834C(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v12, v8, v25);
  _Block_release(v25);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v12, v28);
  return [*&v2[qword_1EB129C50] setIsActive_];
}

double sub_1A4983688()
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1A524CC54();
  v4 = sub_1A524CC44();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_1A3D4D930(0, 0, v2, &unk_1A5377C80, v5);

  return result;
}

uint64_t sub_1A498378C()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A498387C, v3, v2);
}

uint64_t sub_1A498387C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3D7F3F4();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A8838;

  return MEMORY[0x1EEDE6BA0]();
}

void sub_1A4983940(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A49832A0(a3);
}

void sub_1A4983994(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a3);
  [*&v4[qword_1EB129C50] setIsActive_];
}

void sub_1A4983A10(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewWillLayoutSubviews);
  sub_1A5247F84();
  sub_1A5248914();

  v1[qword_1EB1256A8] = 1;
}

void sub_1A4983AC8(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = [v3 viewIfLoaded];
  if (v7)
  {
    v8 = v7;
    if ([a1 isAnimated])
    {
      [v8 bounds];
      v9 = [v8 traitCollection];
      v10 = [v9 userInterfaceIdiom];

      if (v10 == 1)
      {
        sub_1A524DA74();
      }
    }
  }
}

void sub_1A4983D88(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1A4983AC8(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1A4983E20(void *a1, uint64_t a2, SEL *a3)
{
  if (*(a1 + qword_1EB1256A8) == 1)
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = a1;
    v8.super_class = swift_getObjectType();
    v6 = objc_msgSendSuper2(&v8, *a3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1A4983EA0(void *a1)
{
  v1 = a1;
  v2 = sub_1A4653D84(v5);
  ++*v3;
  (v2)(v5, 0);

  return 1;
}

uint64_t sub_1A4983F18(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(**&a1[qword_1EB129BB8] + 528);
  v5 = a1;
  v4(a3);

  return 1;
}

uint64_t sub_1A4983F94(void *a1)
{
  v2 = PXLemonadeReroutedProgrammaticDestination(a1);
  v3 = [v1 navigationController];
  if (v3)
  {

    v4 = *(*&v1[qword_1EB129BB8] + 96);
    v10 = 0;

    sub_1A465C514(v2, v4, &v10);
    v6 = v5;

    LODWORD(v4) = *(v6 + 16) != 0;

    v7 = 2 * v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1A465A2B8(v2);

  return v7 | v8 & 1;
}

uint64_t sub_1A4984080(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1A4983F94(v4);

  return v6;
}

uint64_t sub_1A49840D0(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1A524CC54();
  v3[22] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A498416C, v5, v4);
}

uint64_t sub_1A498416C()
{
  v1 = PXLemonadeReroutedProgrammaticDestination(*(v0 + 152));
  *(v0 + 200) = v1;
  if (sub_1A48D52B0(v1))
  {

    v2 = *(v0 + 8);

    return v2(6);
  }

  else
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    sub_1A48D530C(v1);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1A49842F8;
    v6 = swift_continuation_init();
    sub_1A43A6C50(0);
    *(v0 + 136) = v7;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A43A6168;
    *(v0 + 104) = &block_descriptor_312;
    *(v0 + 112) = v6;
    [v4 px:v5 dismissPresentedViewControllerWithOptions:v0 + 80 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A49842F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A46C4D84;
  }

  else
  {
    v5 = sub_1A4984428;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4984428()
{
  v1 = v0[18];
  if (v1 == 1)
  {
    v0[27] = *(v0[21] + qword_1EB129C20);
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_1A4984534;
    v3 = v0[25];
    v4 = v0[20];

    return sub_1A465A32C(v3, v4);
  }

  else
  {
    v6 = v0[25];

    sub_1A48D5578(v6);

    v7 = v0[1];

    return v7(v1);
  }
}

uint64_t sub_1A4984534(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v5 = *(v3 + 192);
  v6 = *(v3 + 184);
  if (v1)
  {
    v7 = sub_1A4984914;
  }

  else
  {
    v7 = sub_1A4984678;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A4984678()
{
  if (v0[29] == 1)
  {
    v1 = swift_task_alloc();
    v0[31] = v1;
    *v1 = v0;
    v1[1] = sub_1A4984774;
    v2 = v0[25];
    v3 = v0[20];

    return sub_1A465A8EC(v2, v3);
  }

  else
  {
    v5 = v0[25];

    sub_1A48D5578(v5);

    v6 = v0[29];
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_1A4984774(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A4984988;
  }

  else
  {
    v4[33] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A498489C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A498489C()
{
  v1 = v0[25];

  sub_1A48D5578(v1);

  v2 = v0[33];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A4984914()
{

  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4984988()
{

  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1A49849FC(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A5377C40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A5377C50;
  v16[5] = v15;
  v17 = a3;
  v18 = a1;
  sub_1A403AC74(0, 0, v11, &unk_1A5377C60, v16);

  return result;
}

uint64_t sub_1A4984B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4984C1C, v6, v5);
}

uint64_t sub_1A4984C1C()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1A44D8140;
  v8 = v0[2];
  v7 = v0[3];

  return sub_1A49840D0(v8, v7);
}

void sub_1A4984CE4(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v8 = a3;
  v9 = a1;
  sub_1A4986720(v8, v9, v7);
  _Block_release(v7);
  _Block_release(v7);
}

void sub_1A4984D84(char *a1, uint64_t a2, void *a3, char a4)
{
  v6 = *&a1[qword_1EB129BB8];
  v9 = a3;
  v7 = a1;
  if ([v9 isCollapsed])
  {
    v8 = 0;
  }

  else
  {
    v8 = ([v9 splitBehavior] == 2) | a4 ^ 1;
  }

  (*(*v6 + 360))(v8 & 1);
}

void sub_1A4984E58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  sub_1A4655DC0(a4);
}

uint64_t sub_1A4984EB0()
{
  v1 = qword_1EB129BC0;
  if (*(v0 + qword_1EB129BC0))
  {
    v2 = *(v0 + qword_1EB129BC0);
  }

  else
  {
    v3 = *(*(v0 + qword_1EB129BB8) + 16);

    sub_1A3DBEE48(v3, 1, &v9);
    v12 = v10;
    v4 = v9;
    v7[0] = v9;
    v7[1] = v10;
    v8 = v11;
    v5 = sub_1A3C3F140();
    v2 = sub_1A3C66934(v7, &type metadata for LemonadeNotificationsFeature.ShelfProvider, v5);

    sub_1A3C651B8(&v12);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1A4984FA0()
{
  v1 = qword_1EB129BD8;
  v2 = *(v0 + qword_1EB129BD8);
  if (v2)
  {
    v3 = *(v0 + qword_1EB129BD8);
  }

  else
  {
    v4 = [objc_allocWithZone(PXCPLUIStatusProvider) initWithPhotoLibrary_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1A4985028()
{
  if (!*(v0 + qword_1EB129BD0))
  {
    type metadata accessor for LemonadeProfileBadgeProvider(0);
    v2 = *(*(v0 + qword_1EB129BB8) + 16);
    v3 = sub_1A4984FA0();
    v4 = sub_1A4984EB0();
    sub_1A3D35FFC(v2, v3, v4);
  }

  v1 = *(v0 + qword_1EB129BD0);

  return v1;
}

uint64_t sub_1A49850D4()
{
  if (!*(v0 + qword_1EB129C58))
  {
    type metadata accessor for LemonadeStatusViewVisibility(0);
    sub_1A3D38898([*(v0 + qword_1EB129C50) footerViewModel]);
  }

  v1 = *(v0 + qword_1EB129C58);

  return v1;
}

double sub_1A49851C8()
{
  sub_1A44DAF9C(v0 + qword_1EB129BE8);

  return result;
}

double sub_1A49852C8(uint64_t a1)
{
  sub_1A44DAF9C(a1 + qword_1EB129BE8);

  return result;
}

double sub_1A49853DC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1A44D9D88(MEMORY[0x1E69E7CC0]);
    type metadata accessor for PXActionParameterKey();
    sub_1A3C3834C(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey, &unk_1A5377DC0);
    v7 = sub_1A524C3D4();

    [v6 performActionWithType:a1 objects:a2 parameters:v7];

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1A49854FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for LemonadeDnDUtilities();
  Strong = swift_unknownObjectWeakLoadStrong();
  static LemonadeDnDUtilities.performActionForDragging(containerObject:sourceObjects:targetObject:actionProviderDelegate:merging:)(a1, a2, a3, Strong, a6);

  swift_unknownObjectRelease();
  return result;
}

double sub_1A4985590@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5246E54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A4986D98();
  MEMORY[0x1A5905890](&type metadata for LemonadeRootViewControllerView, v10);
  v11 = sub_1A5246E94();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1A3C7A418(v9, sub_1A3E73E5C);
  }

  else
  {
    v26 = v4;
    sub_1A4986E24(v1, v28);
    sub_1A5246E44();
    v13 = sub_1A5246E84();
    v25 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v14 = swift_slowAlloc();
      v24[1] = a1;
      v15 = v14;
      v16 = swift_slowAlloc();
      v24[0] = v3;
      v27 = v16;
      *v15 = 136446210;
      v17 = sub_1A524A694();
      v19 = v18;
      sub_1A4986E5C(v28);
      sub_1A3C2EF94(v17, v19, &v27);
    }

    (*(v26 + 8))(v6, v3);
    sub_1A4986E5C(v28);
    (*(v12 + 8))(v9, v11);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_unknownObjectWeakInit();
    v32 = [objc_allocWithZone(sub_1A5243314()) init];
    swift_unknownObjectWeakAssign();
    v29 = *&v21[qword_1EB129C18];

    v30 = sub_1A49850D4();
    v22 = sub_1A4985028();

    v31 = v22;
    sub_1A4986DEC(v28, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

char *sub_1A498593C(double d0_0)
{
  v3 = v2;
  sub_1A49872EC(0, d0_0);
  v5 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A498727C();
  MEMORY[0x1A5905890](&type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter, v14);
  v15 = sub_1A5246E94();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1A3C7A418(v13, sub_1A3E73E5C);
  }

  else
  {
    v29 = v5;
    sub_1A49877DC(v2, &v34);
    sub_1A5246E44();
    v17 = sub_1A5246E84();
    v28 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v18 = swift_slowAlloc();
      v26[1] = v18;
      v27 = swift_slowAlloc();
      v33 = v27;
      *v18 = 136446210;
      v19 = sub_1A524A694();
      v21 = v20;
      sub_1A4987814(&v34);
      sub_1A3C2EF94(v19, v21, &v33);
    }

    (*(v30 + 8))(v10, v31);
    sub_1A4987814(&v34);
    (*(v16 + 8))(v13, v15);
    v5 = v29;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v24 = *&result[qword_1EB129C20];
    v34 = *&result[qword_1EB129BB8];
    v35 = v24;
    v25 = sub_1A498736C();

    sub_1A49E2648(v23, &type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter.RootViewWrapper, v25);

    v31 = *(v3 + 32);
    sub_1A5243304();
    v34 = &type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter.RootViewWrapper;
    v35 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1A524A574();

    (*(v32 + 8))(v7, v5);
    swift_getKeyPath();
    sub_1A49873C0(0);
    sub_1A3D63A24(0);
    sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
    sub_1A5245CA4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4985FDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248EB4();
  *a1 = result;
  return result;
}

uint64_t sub_1A4986034@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5246E54();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = a1;
  v28[2] = a2;
  v12 = sub_1A498736C();
  MEMORY[0x1A5905890](&type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter.RootViewWrapper, v12);
  v13 = sub_1A5246E94();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    v15 = sub_1A3C7A418(v11, sub_1A3E73E5C);
  }

  else
  {
    v24 = a3;

    sub_1A5246E44();
    v16 = sub_1A5246E84();
    v23 = sub_1A524D664();

    if (sub_1A524DEC4())
    {
      v17 = swift_slowAlloc();
      v22[1] = v6;
      v18 = v17;
      v22[0] = swift_slowAlloc();
      v27 = a2;
      v28[0] = v22[0];
      *v18 = 136446210;
      v26 = a1;
      v19 = sub_1A524A694();
      sub_1A3C2EF94(v19, v20, v28);
    }

    (*(v25 + 8))(v8, v6);
    v15 = (*(v14 + 8))(v11, v13);
  }

  MEMORY[0x1EEE9AC00](v15);
  v22[-2] = a1;
  v22[-1] = a2;
  type metadata accessor for LemonadeRootView(0);
  sub_1A3C3834C(&qword_1EB12A4E8, type metadata accessor for LemonadeRootView, &protocol conformance descriptor for LemonadeRootView);
  return sub_1A5242284();
}

void sub_1A49863F0()
{
  sub_1A4987E90();

  JUMPOUT(0x1A58FF620);
}

void sub_1A498643C()
{
  sub_1A4987E90();

  JUMPOUT(0x1A58FF630);
}

uint64_t sub_1A4986490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4987DC8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A49864F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4987DC8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A4986558(uint64_t a1)
{
  sub_1A4987DC8();
  sub_1A52496F4();
  __break(1u);
}

void sub_1A4986608()
{
  swift_unknownObjectWeakInit();
  v1 = qword_1EB129C18;
  sub_1A52422E4();
  swift_allocObject();
  *(v0 + v1) = sub_1A52422D4();
  *(v0 + qword_1EB129BF8) = 0;
  *(v0 + qword_1EB1256A0) = 0;
  *(v0 + qword_1EB129C08) = 0;
  *(v0 + qword_1EB129C30) = 0;
  *(v0 + qword_1EB1256A8) = 0;
  *(v0 + qword_1EB129BC0) = 0;
  *(v0 + qword_1EB129BD8) = 0;
  *(v0 + qword_1EB129BD0) = 0;
  *(v0 + qword_1EB129C58) = 0;
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A4986720(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeNavigationDestination(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A498722C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F9790;
  *(v10 + 32) = a2;
  v30 = v10;
  v11 = *(*&a2[qword_1EB129BB8] + 96);
  v29 = 0;
  v27 = a2;

  sub_1A465C514(a1, v11, &v29);
  v13 = v12;

  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v25[1] = v14;
    v26 = a3;
    v16 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    do
    {
      sub_1A3C798A0(v16, v9, type metadata accessor for LemonadeNavigationDestination);
      _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v28);
      v18 = sub_1A4656D64(v9, &v28);
      Strong = swift_unknownObjectWeakLoadStrong();
      v20 = sub_1A3EEB3C0(v18, Strong);
      swift_unknownObjectRelease();
      sub_1A3C7A418(v9, type metadata accessor for LemonadeNavigationDestination);
      if (v20)
      {
        v21 = v20;
        MEMORY[0x1A5907D70]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        v10 = v30;
      }

      else
      {
      }

      v16 += v17;
      --v15;
    }

    while (v15);

    a3 = v26;
    if (!(v10 >> 62))
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!(v10 >> 62))
    {
LABEL_10:
      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  v22 = sub_1A524E2B4();
LABEL_11:
  if (v22 >= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
  v24 = sub_1A524CA14();
  (*(a3 + 16))(a3, v24, v23, 0);
}

uint64_t sub_1A4986A4C(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = Strong;
  v5 = sub_1A524CA14();
  if (a2)
  {
    a2 = sub_1A524CF34();
  }

  v6 = [v4 actionMenuElementsForObjects:v5 allowedActionTypes:a2];

  swift_unknownObjectRelease();
  sub_1A4986D34();
  v7 = sub_1A524CA34();

  return v7;
}

double sub_1A4986B28(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *off_1E77219D8;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = sub_1A524EA94();
    v8 = [objc_opt_self() arrayWithObject_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1A3C47744(0, &unk_1EB146250, sub_1A44D9E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    v10 = *off_1E77219C0;
    *(inited + 32) = *off_1E77219C0;
    *(inited + 64) = swift_getObjectType();
    *(inited + 40) = a1;
    v11 = v10;
    swift_unknownObjectRetain();
    sub_1A44D9D88(inited);
    swift_setDeallocating();
    sub_1A3C7A418(inited + 32, sub_1A44D9E98);
    type metadata accessor for PXActionParameterKey();
    sub_1A3C3834C(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey, &unk_1A5377DC0);
    v12 = sub_1A524C3D4();

    [v5 performActionWithType:v6 objects:v8 parameters:v12];

    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1A4986D34()
{
  result = qword_1EB120AE0;
  if (!qword_1EB120AE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120AE0);
  }

  return result;
}

unint64_t sub_1A4986D98()
{
  result = qword_1EB1937D0[0];
  if (!qword_1EB1937D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1937D0);
  }

  return result;
}

uint64_t sub_1A4986E8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4984B80(v2, v3, v5, v4);
}

double block_copy_helper_31_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1A4986F64()
{
  v1 = *(v0 + 16);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;

    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 safeAreaInsets];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      type metadata accessor for LemonadeRootViewModel(0);
      sub_1A3C3834C(&qword_1EB125900, type metadata accessor for LemonadeRootViewModel, &unk_1A5353C40);
      v18.top = v11;
      v18.left = v13;
      v18.bottom = v15;
      v18.right = v17;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v7, v5), v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A49870A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A498378C();
}

uint64_t sub_1A498712C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C52C70(255, &qword_1EB126A10, off_1E771E328);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4987190(double a1)
{
  result = qword_1EB146260;
  if (!qword_1EB146260)
  {
    sub_1A498722C(255, &qword_1EB146268, &type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter, MEMORY[0x1E69E6720]);
    sub_1A498727C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146260);
  }

  return result;
}

void sub_1A498722C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A498727C()
{
  result = qword_1EB193860[0];
  if (!qword_1EB193860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB193860);
  }

  return result;
}

void sub_1A49872EC(uint64_t a1, double a2)
{
  if (!qword_1EB127640)
  {
    sub_1A498736C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127640);
    }
  }
}

unint64_t sub_1A498736C()
{
  result = qword_1EB1938F0[0];
  if (!qword_1EB1938F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1938F0);
  }

  return result;
}

void sub_1A49873F4(uint64_t a1, double a2)
{
  if (!qword_1EB127670)
  {
    sub_1A49872EC(255, a2);
    sub_1A498736C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127670);
    }
  }
}

void sub_1A49874D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong px_splitViewController];
    [v2 toggleSidebarVisibilityAnimated];
  }
}

void sub_1A49876B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A498772C(uint64_t a1)
{
  if (!qword_1EB122D90)
  {
    sub_1A4987788();
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122D90);
    }
  }
}

unint64_t sub_1A4987788()
{
  result = qword_1EB174648;
  if (!qword_1EB174648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB174648);
  }

  return result;
}

unint64_t sub_1A4987864()
{
  result = qword_1EB122FD8;
  if (!qword_1EB122FD8)
  {
    sub_1A49876B8(255, &unk_1EB122FC8, sub_1A4987650, sub_1A498772C);
    sub_1A4987944();
    sub_1A3C3834C(&unk_1EB122DA0, sub_1A498772C, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122FD8);
  }

  return result;
}

unint64_t sub_1A4987944()
{
  result = qword_1EB1280C0;
  if (!qword_1EB1280C0)
  {
    sub_1A4987650(255);
    sub_1A49879F4();
    sub_1A3C3834C(&unk_1EB1278F8, sub_1A4987684, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1280C0);
  }

  return result;
}

unint64_t sub_1A49879F4()
{
  result = qword_1EB1280D8;
  if (!qword_1EB1280D8)
  {
    sub_1A49875E8(255);
    sub_1A4987AA4();
    sub_1A3C3834C(&qword_1EB1278E0, sub_1A498761C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1280D8);
  }

  return result;
}

unint64_t sub_1A4987AA4()
{
  result = qword_1EB128140;
  if (!qword_1EB128140)
  {
    sub_1A4987580(255);
    sub_1A4987B54();
    sub_1A3C3834C(&qword_1EB1279D8, sub_1A49875B4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128140);
  }

  return result;
}

unint64_t sub_1A4987B54()
{
  result = qword_1EB128208;
  if (!qword_1EB128208)
  {
    sub_1A498754C(255);
    sub_1A4987C04();
    sub_1A3C3834C(&qword_1EB127720, sub_1A429D6BC, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128208);
  }

  return result;
}

unint64_t sub_1A4987C04()
{
  result = qword_1EB128380;
  if (!qword_1EB128380)
  {
    sub_1A49874A4(255);
    sub_1A4987CB4();
    sub_1A3C3834C(&qword_1EB127A20, sub_1A3D63B0C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128380);
  }

  return result;
}

unint64_t sub_1A4987CB4()
{
  result = qword_1EB1286A8;
  if (!qword_1EB1286A8)
  {
    sub_1A49873C0(255);
    sub_1A49872EC(255, v1);
    sub_1A498736C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C3834C(&qword_1EB1278C0, sub_1A3D63A24, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1286A8);
  }

  return result;
}

unint64_t sub_1A4987DC8()
{
  result = qword_1EB174630[0];
  if (!qword_1EB174630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB174630);
  }

  return result;
}

uint64_t sub_1A4987E38@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  return sub_1A4470B1C(v4, v3, a1);
}

unint64_t sub_1A4987E90()
{
  result = qword_1EB174650[0];
  if (!qword_1EB174650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB174650);
  }

  return result;
}

void sub_1A4987EE4(uint64_t a1)
{
  if (!qword_1EB124F68)
  {
    type metadata accessor for LemonadeRootView(255);
    sub_1A3C3834C(&qword_1EB12A4E8, type metadata accessor for LemonadeRootView, &protocol conformance descriptor for LemonadeRootView);
    v1 = sub_1A5242294();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124F68);
    }
  }
}

id sub_1A4987F98()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_viewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A4987FEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_viewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id StoryAssetPicker.__allocating_init(withViewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper] = 0;
  v4 = &v3[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_viewModel] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id StoryAssetPicker.init(withViewModel:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper] = 0;
  v2 = &v1[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_viewModel] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for StoryAssetPicker();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1A4988198(void (*a1)(id), uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v16 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))();
  v6 = [v16 mainAssetCollection];
  if (v6)
  {
    v7 = v6;
    v8 = [v16 presentingViewController];
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v16;
      v11 = swift_allocObject();
      v11[2] = v9;
      v11[3] = a1;
      v11[4] = a2;
      v11[5] = v7;
      v11[6] = v2;
      v11[7] = v8;
      v11[8] = v16;
      v15 = *((*v5 & *v2) + 0xC0);
      swift_retain_n();
      v12 = v16;
      sub_1A3D607F0(a1, a2);
      swift_unknownObjectRetain();
      v13 = v2;
      v14 = v8;
      v15(sub_1A49883FC, v10, v14, sub_1A49884C8, v11);

      swift_unknownObjectRelease();

      return;
    }

    v6 = swift_unknownObjectRelease();
  }

  if (a1)
  {
    a1(v6);
  }
}

BOOL sub_1A49883FC()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) mainModel];
  v3 = [v2 recipeManager];

  v4 = [v3 recipe];
  v5 = [v4 curatedAssets];

  swift_beginAccess();
  *(v1 + 16) = v5;
  swift_unknownObjectRelease();
  return v5 != 0;
}

void sub_1A49884C8(char a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if ((a1 & 1) != 0 && (v5 = v2[2], v7 = v2[5], v6 = v2[6], v9 = v2[7], v8 = v2[8], swift_beginAccess(), (v10 = *(v5 + 16)) != 0) && [v10 count] >= 1)
  {
    swift_beginAccess();
    v11 = [objc_allocWithZone(PXStoryAssetPickerHelper) initWithContainerAssetCollection:v7 preselectedAssets:*(v5 + 16)];
    [v11 setDelegate_];
    v12 = [v11 pickerViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 presentationController];
      if (v14)
      {
        v15 = v14;
        [v14 setDelegate_];
      }

      [v9 px:v13 presentOverTopmostPresentedViewController:1 animated:0 completion:?];
      v16 = [v8 mainModel];
      v22[4] = sub_1A4988708;
      v22[5] = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1A3D59380;
      v22[3] = &block_descriptor_54_3;
      v17 = _Block_copy(v22);
      [v16 performChanges_];

      _Block_release(v17);
      v18 = *(v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper);
      *(v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper) = v11;

      v19 = (v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion);
      v20 = *(v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion);
      v21 = v19[1];
      *v19 = v3;
      v19[1] = v4;
      sub_1A3D607F0(v3, v4);
      sub_1A3C784D4(v20, v21);
    }

    else
    {
      if (v3)
      {
        v3();
      }
    }
  }

  else if (v3)
  {
    v3();
  }
}

void sub_1A4988718(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (a1())
  {
    a4(1);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1A49889C0;
    *(v11 + 24) = v9;
    v23 = sub_1A3D78DD0;
    v24 = v11;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1A3D35A90;
    v22 = &block_descriptor_313;
    v12 = _Block_copy(&v19);

    v13 = [v10 show_];
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      v15[2] = v9;
      v15[3] = a4;
      v15[4] = a5;
      v15[5] = a1;
      v15[6] = a2;
      v15[7] = v13;
      v23 = sub_1A4988B64;
      v24 = v15;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1A3D7692C;
      v22 = &block_descriptor_18_6;
      v16 = _Block_copy(&v19);

      v17 = v13;

      v18 = [v14 scheduledTimerWithTimeInterval:1 repeats:v16 block:1.0];
      _Block_release(v16);
    }
  }
}

void sub_1A49889C0(void *a1)
{
  [a1 setStyle_];
  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  [a1 setTitle_];

  v5 = sub_1A524C634();
  v6 = PXLocalizedString(v5);

  if (!v6)
  {
    sub_1A524C674();
    v6 = sub_1A524C634();
  }

  v8[4] = sub_1A48FC52C;
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3C2E0D0;
  v8[3] = &block_descriptor_51_4;
  v7 = _Block_copy(v8);

  [a1 addActionWithTitle:v6 style:1 action:v7];
  _Block_release(v7);
}

void sub_1A4988B64(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[7];
  v8 = swift_beginAccess();
  if (*(v4 + 16) == 1)
  {
    [a1 invalidate];
    v3(0);
  }

  else if (v6(v8))
  {
    [a1 invalidate];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v5;
    aBlock[4] = sub_1A4989700;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_48_4;
    v10 = _Block_copy(aBlock);

    [v7 dismissWithCompletionHandler_];
    _Block_release(v10);
  }
}

void sub_1A4988CC4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper) = 0;

  v10 = MEMORY[0x1E69E7D40];
  if ((!a3 || [a3 count] <= 0) && (!a4 || objc_msgSend(a4, sel_count) < 1))
  {
    goto LABEL_32;
  }

  v46 = a2;
  v11 = [objc_msgSend(a1 containerCollection)];
  swift_unknownObjectRelease();
  v12 = sub_1A524C674();
  v14 = v13;

  v15 = *((*v10 & *v4) + 0x68);
  v16 = v15();
  v17 = [v16 mainAssetCollection];

  if (v17)
  {
    v18 = [v17 uuid];
    swift_unknownObjectRelease();
    v19 = sub_1A524C674();
    v21 = v20;

    if (v12 == v19 && v14 == v21)
    {

LABEL_16:
      v28 = (v15)(v24);
      v29 = [v28 mainModel];

      v30 = [v29 recipeManager];
      if (!a3)
      {
        v36 = 0;
LABEL_30:
        v38 = swift_allocObject();
        *(v38 + 16) = v36;
        *(v38 + 24) = v46;
        v51 = sub_1A498925C;
        v52 = v38;
        aBlock = MEMORY[0x1E69E9820];
        v48 = 1107296256;
        v49 = sub_1A421179C;
        v50 = &block_descriptor_30_6;
        v39 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        [v30 performChanges_];

        _Block_release(v39);
        goto LABEL_31;
      }

      swift_unknownObjectRetain();
      v31 = [v30 recipe];
      v32 = [v31 allAssets];

      if (!v32)
      {
        v36 = 0;
LABEL_29:
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      v45 = v30;
      if ([a3 count] < 1)
      {
        v36 = 0;
LABEL_28:
        swift_unknownObjectRelease();
        v30 = v45;
        goto LABEL_29;
      }

      v33 = [a3 count];
      if ((v33 & 0x8000000000000000) == 0)
      {
        v34 = v33;
        v35 = 0;
        while (1)
        {
          v36 = v34 != v35;
          if (v34 == v35)
          {
            goto LABEL_28;
          }

          if (__OFADD__(v35, 1))
          {
            __break(1u);
            break;
          }

          v37 = [v32 containsObject_];
          swift_unknownObjectRelease();
          ++v35;
          if ((v37 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v23 = sub_1A524EAB4();

    if (v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v25 = sub_1A524D244();
  v26 = PLStoryGetLog();
  if (!v26)
  {
    goto LABEL_38;
  }

  v27 = v26;
  sub_1A5246DF4(v25, &dword_1A3C1C000, v26, "asset collection unexpectedly changed while picking assets", 58, 2, MEMORY[0x1E69E7CC0]);

LABEL_31:
  v10 = MEMORY[0x1E69E7D40];
LABEL_32:
  v40 = [a1 pickerViewController];
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    *(v42 + 16) = v4;
    v51 = sub_1A4989208;
    v52 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1A3C2E0D0;
    v50 = &block_descriptor_24_6;
    v43 = _Block_copy(&aBlock);
    v44 = v4;

    [v41 dismissViewControllerAnimated:1 completion:v43];
    _Block_release(v43);
  }

  else
  {
    (*((*v10 & *v4) + 0xD0))();
  }
}

id sub_1A498925C(void *a1)
{
  if (*(v1 + 16))
  {
    v2 = &selRef_applyCustomUserAssets_;
  }

  else
  {
    v2 = &selRef_applyManuallyCuratedAssets_;
  }

  return [a1 *v2];
}

void sub_1A498933C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  v2 = [v1 mainModel];

  v7[4] = sub_1A4989474;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3D59380;
  v7[3] = &block_descriptor_33_7;
  v3 = _Block_copy(v7);
  [v2 performChanges_];
  _Block_release(v3);

  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion + 8);

    v4(v6);
    sub_1A3C784D4(v4, v5);
  }
}

id StoryAssetPicker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryAssetPicker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StoryAssetPicker.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  v2 = v1;
  v8 = [(objc_class *)a1.super.isa presentedViewController];
  v3 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper) pickerViewController];
  if (v3)
  {
    v5 = v3;
    sub_1A3D63AC0(0, v4);
    v6 = v8;
    v7 = sub_1A524DBF4();

    if (v7)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))();
    }
  }
}

id sub_1A4989758(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel(0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v9 = v8();
  v10 = sub_1A440737C(v9);

  result = 0;
  if (v10)
  {
    v12 = *((*v7 & *v2) + 0x108);
    v13 = a1;
    v14 = v12();
    v15 = v8();
    v16 = sub_1A4406828(v13, v14, v15);
    v17 = sub_1A49899B0();
    (*((*v7 & *v16) + 0x110))(v17 & 1);
    v18 = sub_1A4989B00();
    (*((*v7 & *v16) + 0x128))(v18 & 1);
    (*((*v7 & *v2) + 0xE0))(v16);
    sub_1A4989BEC(0);
    v19 = v16;
    sub_1A3FA5410(v6);
    v20 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

    return v20;
  }

  return result;
}

uint64_t sub_1A49899B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetAbove;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetAbove);
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))())
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5 = type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
      v6 = *((*v4 & *v1) + 0xA8);
      v7 = v6();
      v8 = (*(v5 + 440))();

      if (v8)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        v9 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel(0);
        v10 = v6();
        LOBYTE(v3) = (*(v9 + 376))();
      }
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

uint64_t sub_1A4989B00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetBelow;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetBelow);
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))())
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      type metadata accessor for PhotosDetailsAssetProvenanceViewModel(0);
      v5 = (*((*v4 & *v1) + 0xA8))();
      LOBYTE(v3) = sub_1A3FBD1E0(v5);
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

void sub_1A4989BEC(uint64_t a1)
{
  if (!qword_1EB1462E8)
  {
    v2 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(255);
    v3 = sub_1A4989C50();
    v5 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB1462E8);
    }
  }
}

unint64_t sub_1A4989C50()
{
  result = qword_1EB12F8D8;
  if (!qword_1EB12F8D8)
  {
    type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F8D8);
  }

  return result;
}

uint64_t sub_1A4989D94()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))())
  {
    return 2;
  }

  if (sub_1A49899B0())
  {
    return 2;
  }

  return 0;
}

double sub_1A4989E04()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6D7980);
  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1A498A160()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsSavedFromAppsWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A498A19C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a7@<X8>)
{
  v11 = sub_1A52411C4();
  (*(*(v11 - 8) + 16))(a7, a1, v11);
  v12 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  *(a7 + *(v12 + 20)) = a2;
  *(a7 + *(v12 + 24)) = a3;
  sub_1A5245BA4();
}

uint64_t LemonadeMemoryPlayerConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A498A3E8()
{
  sub_1A524EC94();
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A498A470(uint64_t a1)
{
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1A524C4B4();
}

uint64_t LemonadeMemoryPlayerConfiguration.hash(into:)(uint64_t a1)
{
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1A524C4B4();
}

uint64_t sub_1A498A578(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A498A85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A498A8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A498A974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A498AA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A498A974(&qword_1EB146308, type metadata accessor for LemonadeMemoryPlayerView, &unk_1A53781C8);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A498AAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A498A974(&qword_1EB146308, type metadata accessor for LemonadeMemoryPlayerView, &unk_1A53781C8);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A498AB54(uint64_t a1)
{
  sub_1A498A974(&qword_1EB146308, type metadata accessor for LemonadeMemoryPlayerView, &unk_1A53781C8);
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A498ABFC(uint64_t a1)
{
  result = type metadata accessor for LemonadeMemoryPlayerConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A498AC68()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B4F8);
  __swift_project_value_buffer(v0, qword_1EB15B4F8);
  return sub_1A5246F14();
}

unint64_t sub_1A498AD08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A4992494(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A498AF64()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_userEncodingPolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A498AFFC(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_userEncodingPolicy;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A498B04C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A498B1A8()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_clientEncodingPolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A498B240(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_clientEncodingPolicy;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A498B290@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A498B3EC()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A498B484(char a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeLocation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A498B4D4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A498B63C()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeCaption;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A498B6D4(char a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeCaption;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A498B724@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

void *sub_1A498B898()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_downscalingTargetDimension;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A498B944(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_downscalingTargetDimension;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A498B99C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_1A498BA00(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1A498BB18()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isLiveWallpaperSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A498BBB0(char a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isLiveWallpaperSelection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A498BC00@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A498BD70()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isSpatialWallpaperSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A498BE08(char a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isSpatialWallpaperSelection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A498BE58@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result & 1;
  return result;
}

id PhotosFileProviderRegister.Configuration.init(usage:)(uint64_t a1)
{
  v2 = v1;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  *&v1[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_userEncodingPolicy] = 0;
  *&v1[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_clientEncodingPolicy] = 0;
  *&v1[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_downscalingTargetDimension] = 0;
  v9 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_livePhotoContentType;
  v10 = sub_1A5246D14();
  v11 = *(*(v10 - 8) + 56);
  v11(&v1[v9], 1, 1, v10);
  v12 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_autoLoopAsGIFContentType;
  v11(&v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_autoLoopAsGIFContentType], 1, 1, v10);
  *&v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage] = a1;
  sub_1A5246D24();
  swift_beginAccess();
  sub_1A49924A4(v8, &v2[v12]);
  swift_endAccess();
  v13 = PLIsLockdownMode() ^ 1;
  if ((v13 & 1) == 0)
  {
    v27 = v9;
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v14 = sub_1A5246F24();
    __swift_project_value_buffer(v14, qword_1EB15B4F8);
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "Lockdown mode is enabled, excluding location and caption metadata by default.", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    v9 = v27;
  }

  v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeLocation] = v13;
  v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeCaption] = v13;
  v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isLiveWallpaperSelection] = 0;
  v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isSpatialWallpaperSelection] = 0;
  if (a1 > 1)
  {
    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_15:
      sub_1A5246D24();
      swift_beginAccess();
      v22 = &v2[v9];
      v23 = v8;
      goto LABEL_18;
    }

    while (1)
    {
      v30 = a1;
      sub_1A524EB44();
      __break(1u);
LABEL_11:
      if (a1 == 2)
      {
        break;
      }

      if (a1 == 3)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = PFCurrentPlatformLivePhotoBundleType();
  if (v18)
  {
    v19 = v28;
    v20 = v18;
    sub_1A5246C44();

    v21 = 0;
  }

  else
  {
    v21 = 1;
    v19 = v28;
  }

  v11(v19, v21, 1, v10);
  swift_beginAccess();
  v22 = &v2[v9];
  v23 = v19;
LABEL_18:
  sub_1A49924A4(v23, v22);
  swift_endAccess();
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_liveWallpaperContentType], sub_1A435B518);
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_spatialWallpaperContentType], sub_1A435B518);
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType], sub_1A435B518);
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType], sub_1A435B518);
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_mailMovieExportContentType], sub_1A435B518);
  v24 = type metadata accessor for PhotosFileProviderRegister.Configuration(0);
  v29.receiver = v2;
  v29.super_class = v24;
  return objc_msgSendSuper2(&v29, sel_init);
}

id sub_1A498C684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = (a3)(0, a2);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = (*(v9 + 16))(&v16 - v11, a1 + *a4, v8, v10);
  v14 = a5(v13);
  (*(v9 + 8))(v12, v8);

  return v14;
}

uint64_t sub_1A498C7B8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id PhotosFileProviderRegister.FileRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A498C9B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id PhotosFileProviderRegister.__allocating_init(configuration:fileProviderManager:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PXPhotosFileProviderRegister_configuration] = a1;
  *&v7[OBJC_IVAR___PXPhotosFileProviderRegister_fileProviderManager] = a2;
  *&v7[OBJC_IVAR___PXPhotosFileProviderRegister_domain] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id PhotosFileProviderRegister.init(configuration:fileProviderManager:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___PXPhotosFileProviderRegister_configuration] = a1;
  *&v3[OBJC_IVAR___PXPhotosFileProviderRegister_fileProviderManager] = a2;
  *&v3[OBJC_IVAR___PXPhotosFileProviderRegister_domain] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PhotosFileProviderRegister();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1A498CE30(void *a1, void *a2)
{
  v130 = a1;
  v3 = sub_1A5246D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499256C(0);
  v129 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100 - v9;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v100 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v100 - v20;
  v121 = sub_1A5240E64();
  v107 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v112 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v100 - v25;
  v27 = [a2 originalFilename];
  v100 = a2;
  if (v27)
  {
    v28 = v27;
    v29 = [v27 stringByDeletingPathExtension];

    if (!v29)
    {
      sub_1A524C674();
      v29 = sub_1A524C634();
    }

    [v130 setSuggestedName_];

    a2 = v100;
  }

  v30 = (*((*MEMORY[0x1E69E7D40] & *v101) + 0x88))(a2);
  v32 = v30;
  if (v30 >> 62)
  {
    v33 = sub_1A524E2B4();
  }

  else
  {
    v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v33)
  {

    v123 = MEMORY[0x1E69E7CC0];
LABEL_43:
    if (v123[2])
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v120 = v33;
  if (v33 >= 1)
  {
    v122 = v21;
    v113 = v16;
    v103 = v13;
    v117 = v10;
    v34 = 0;
    v35 = *(v101 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration);
    v126 = v32 & 0xC000000000000001;
    v131 = (v4 + 16);
    v125 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage;
    v127 = (v4 + 48);
    v128 = (v4 + 56);
    v115 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType;
    v106 = (v4 + 32);
    v118 = (v4 + 8);
    v108 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType;
    v105 = (v107 + 16);
    v114 = (v107 + 8);
    v104 = v107 + 32;
    v123 = MEMORY[0x1E69E7CC0];
    *&v31 = 136315138;
    v102 = v31;
    v132 = v35;
    v133 = v3;
    v119 = v32;
    v36 = v120;
    v116 = v26;
    while (1)
    {
      if (v126)
      {
        v37 = MEMORY[0x1A59097F0](v34, v32);
      }

      else
      {
        v37 = *(v32 + 8 * v34 + 32);
      }

      v38 = v37;
      v39 = [v130 registerFileRepresentation:v37 usage:{*(v35 + v125), v100}];
      if (!v39)
      {
        if (qword_1EB15B4F0 != -1)
        {
          swift_once();
        }

        v50 = sub_1A5246F24();
        __swift_project_value_buffer(v50, qword_1EB15B4F8);
        v51 = v38;
        v52 = sub_1A5246F04();
        v53 = sub_1A524D244();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          *v54 = v102;
          v55 = v110;
          (*v131)(v110, &v51[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType], v133);
          sub_1A49925D0(&qword_1EB1390F8, MEMORY[0x1E69E8480]);
          v56 = sub_1A524EA44();
          v58 = v57;
          (*v118)(v55, v133);
          sub_1A3C2EF94(v56, v58, &v135);
        }

        goto LABEL_11;
      }

      v40 = v39;
      sub_1A5240DE4();

      v41 = OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType;
      v42 = *v131;
      v134 = v38;
      v43 = v122;
      v124 = v42;
      v42(v122, &v38[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType], v3);
      v44 = *v128;
      (*v128)(v43, 0, 1, v3);
      v45 = *(v129 + 48);
      v46 = v117;
      sub_1A499267C(v43, v117, sub_1A435B518);
      sub_1A499267C(v35 + v115, v46 + v45, sub_1A435B518);
      v47 = *v127;
      if ((*v127)(v46, 1, v3) == 1)
      {
        break;
      }

      v59 = v111;
      sub_1A499267C(v46, v111, sub_1A435B518);
      if (v47(v46 + v45, 1, v3) == 1)
      {
        sub_1A4996FE0(v122, sub_1A435B518);
        (*v118)(v59, v3);
LABEL_25:
        sub_1A4996FE0(v46, sub_1A499256C);
        v48 = v116;
        v49 = v134;
        goto LABEL_26;
      }

      v71 = v46 + v45;
      v72 = v110;
      (*v106)(v110, v71, v3);
      sub_1A49925D0(&qword_1EB124A40, MEMORY[0x1E69E8468]);
      v73 = sub_1A524C594();
      v74 = *v118;
      (*v118)(v72, v3);
      sub_1A4996FE0(v122, sub_1A435B518);
      v74(v111, v3);
      sub_1A4996FE0(v46, sub_1A435B518);
      v48 = v116;
      v49 = v134;
      if (v73)
      {
        goto LABEL_38;
      }

LABEL_26:
      v60 = v113;
      v3 = v133;
      v124(v113, &v49[v41], v133);
      v44(v60, 0, 1, v3);
      v61 = *(v129 + 48);
      v62 = v109;
      sub_1A499267C(v60, v109, sub_1A435B518);
      sub_1A499267C(v132 + v108, v62 + v61, sub_1A435B518);
      if (v47(v62, 1, v3) == 1)
      {
        sub_1A4996FE0(v60, sub_1A435B518);
        v63 = v47(v62 + v61, 1, v3);
        v32 = v119;
        v35 = v132;
        if (v63 != 1)
        {
          goto LABEL_31;
        }

        sub_1A4996FE0(v62, sub_1A435B518);
        v36 = v120;
        v64 = v134;
      }

      else
      {
        v65 = v103;
        sub_1A499267C(v62, v103, sub_1A435B518);
        if (v47(v62 + v61, 1, v3) == 1)
        {
          sub_1A4996FE0(v113, sub_1A435B518);
          (*v118)(v65, v3);
          v32 = v119;
LABEL_31:
          sub_1A4996FE0(v62, sub_1A499256C);
          v36 = v120;
          v64 = v134;
LABEL_32:
          (*v105)(v112, v48, v121);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1A49922A0(0, v123[2] + 1, 1, v123, &qword_1EB1203C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
          }

          v67 = v123[2];
          v66 = v123[3];
          if (v67 >= v66 >> 1)
          {
            v123 = sub_1A49922A0((v66 > 1), v67 + 1, 1, v123, &qword_1EB1203C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
          }

          v68 = v107;
          v69 = v121;
          (*(v107 + 8))(v48, v121);
          v70 = v123;
          v123[2] = v67 + 1;
          (*(v68 + 32))(v70 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v67, v112, v69);
          v35 = v132;
          goto LABEL_11;
        }

        v75 = v62 + v61;
        v76 = v110;
        (*v106)(v110, v75, v3);
        sub_1A49925D0(&qword_1EB124A40, MEMORY[0x1E69E8468]);
        v77 = sub_1A524C594();
        v78 = *v118;
        (*v118)(v76, v3);
        sub_1A4996FE0(v113, sub_1A435B518);
        v78(v65, v3);
        sub_1A4996FE0(v62, sub_1A435B518);
        v32 = v119;
        v36 = v120;
        v35 = v132;
        v64 = v134;
        if ((v77 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      (*v114)(v48, v121);

LABEL_11:
      if (v36 == ++v34)
      {

        goto LABEL_43;
      }
    }

    sub_1A4996FE0(v43, sub_1A435B518);
    if (v47(v46 + v45, 1, v3) == 1)
    {
      sub_1A4996FE0(v46, sub_1A435B518);
      v48 = v116;
      v49 = v134;
LABEL_38:
      (*v114)(v48, v121);

      v35 = v132;
      v3 = v133;
      v32 = v119;
      v36 = v120;
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  __break(1u);
  swift_once();
  v79 = sub_1A5246F24();
  __swift_project_value_buffer(v79, qword_1EB15B4F8);
  v80 = a2;
  v81 = sub_1A5246F04();
  v82 = sub_1A524D244();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v83 = 136446210;
    v84 = [v80 uuid];

    if (v84)
    {
      v85 = sub_1A524C674();
      v87 = v86;

      sub_1A3C2EF94(v85, v87, &v135);
    }
  }

  else
  {

    v88 = v100;
    if (*(*(v101 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration) + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage) == 1)
    {
      v89 = [objc_opt_self() referenceForAsset_];
      [v130 registerObject:v89 visibility:3];
    }

    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v90 = sub_1A5246F24();
    __swift_project_value_buffer(v90, qword_1EB15B4F8);
    v91 = v88;
    v92 = v130;
    v93 = sub_1A5246F04();
    v94 = sub_1A524D264();
    if (!os_log_type_enabled(v93, v94))
    {

      return;
    }

    v95 = swift_slowAlloc();
    swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v95 = 136446466;
    v96 = [v91 uuid];

    if (v96)
    {
      v97 = sub_1A524C674();
      v99 = v98;

      sub_1A3C2EF94(v97, v99, &v135);
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1A498E054(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1A5246D14();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = [a2 px_exportFolderName];
  [a1 setSuggestedName_];

  v17 = sub_1A5240E64();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v59 = a3;
  v19(a3, 1, 1, v17);
  v20 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x80);
  v60 = a2;
  v21 = a2;
  v22 = v4;
  v23 = v20(v21);
  if (v23)
  {
    v24 = v23;
    v25 = *(*(v4 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration) + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage);
    v57 = a1;
    v26 = [a1 registerFileRepresentation:v23 usage:v25];
    if (v26)
    {
      v27 = v26;
      sub_1A5240DE4();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v59;
    sub_1A4996FE0(v59, sub_1A3EE53E0);
    v19(v15, v28, 1, v17);
    sub_1A4992614(v15, v29, sub_1A3EE53E0);
    v30 = v58;
    sub_1A499267C(v29, v58, sub_1A3EE53E0);
    if ((*(v18 + 48))(v30, 1, v17) == 1)
    {
      sub_1A4996FE0(v30, sub_1A3EE53E0);
      if (qword_1EB15B4F0 != -1)
      {
        swift_once();
      }

      v31 = sub_1A5246F24();
      __swift_project_value_buffer(v31, qword_1EB15B4F8);
      v32 = v24;
      v33 = sub_1A5246F04();
      v34 = sub_1A524D244();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v61 = v59;
        *v35 = 136315138;
        v36 = v54;
        v37 = v55;
        v38 = v56;
        (*(v55 + 16))(v54, v32 + OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType, v56);
        sub_1A49925D0(&qword_1EB1390F8, MEMORY[0x1E69E8480]);
        v39 = sub_1A524EA44();
        v41 = v40;
        (*(v37 + 8))(v36, v38);
        sub_1A3C2EF94(v39, v41, &v61);
      }

      a1 = v57;
    }

    else
    {

      sub_1A4996FE0(v30, sub_1A3EE53E0);
      a1 = v57;
    }
  }

  v42 = v60;
  if (*(*(v22 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration) + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage) == 1)
  {
    v43 = [objc_opt_self() referenceForObject_];
    [a1 registerObject:v43 visibility:3];
  }

  if (qword_1EB15B4F0 != -1)
  {
    swift_once();
  }

  v44 = sub_1A5246F24();
  __swift_project_value_buffer(v44, qword_1EB15B4F8);
  v45 = v42;
  v46 = a1;
  v47 = sub_1A5246F04();
  v48 = sub_1A524D264();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v49 = 136446466;
    v50 = [v45 uuid];

    if (v50)
    {
      v51 = sub_1A524C674();
      v53 = v52;

      sub_1A3C2EF94(v51, v53, &v61);
    }

    __break(1u);
  }

  else
  {
  }
}

id sub_1A498E8BC(void *a1)
{
  v2 = sub_1A5246D14();
  result = [a1 uuid];
  if (result)
  {
    v4 = result;
    sub_1A524C674();

    v5 = [a1 localIdentifier];
    sub_1A524C674();

    sub_1A3D5F9DC();
    v6 = sub_1A524DF84();

    if (*(v6 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return 0;
  }

  return result;
}

id sub_1A498EB88(void *a1)
{
  v2 = v1;
  sub_1A4996354(0);
  v5 = *(v4 - 1);
  v36 = v4;
  v37 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 uuid];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = result;
  v35 = sub_1A524C674();
  v40 = v11;

  v12 = [a1 localIdentifier];
  v13 = sub_1A524C674();
  v15 = v14;

  v43 = v13;
  v44 = v15;
  v41 = 47;
  v42 = 0xE100000000000000;
  sub_1A3D5F9DC();
  v16 = sub_1A524DF84();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 16 + 16 * v17);
    v19 = v18[1];
    v34 = *v18;
    v39 = v19;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v39 = 0xE300000000000000;
  v34 = 3223600;

  v20 = [a1 photoLibrary];
  if (v20)
  {
    v21 = v20;
    if ([a1 px_isMomentSharedAsset])
    {

      v38 = 0xE300000000000000;
      v33 = 7171427;
    }

    else
    {
      if ([v21 isSystemPhotoLibrary])
      {
        v43 = 1;
      }

      else
      {
        v43 = [v21 wellKnownPhotoLibraryIdentifier];
      }

      v33 = sub_1A524EA44();
      v38 = v23;
    }
  }

  else
  {
    v43 = 0;
    v33 = sub_1A524EA44();
    v38 = v22;
  }

  sub_1A499436C(a1, *(v2 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration));
  v25 = v24;
  v26 = *(v24 + 16);
  if (v26)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1A524E554();
    v27 = 0;
    v32 = v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x90);
    while (v27 < *(v25 + 16))
    {
      v29 = v27 + 1;
      sub_1A499267C(v32 + *(v37 + 72) * v27, v8, sub_1A4996354);
      LOBYTE(v30) = v8[v36[20]];
      v28(v8, v35, v40, v34, v39, v33, v38, *&v8[v36[12]], *&v8[v36[16]], v30);
      sub_1A4996FE0(v8, sub_1A4996354);
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      result = sub_1A524E524();
      v27 = v29;
      if (v26 == v29)
      {

        return v43;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t PHAssetExportRequestVariant.description.getter(uint64_t a1, __n128 a2)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x74616E7265746C61;
      }

      goto LABEL_8;
    }

    return 0x62697461706D6F63;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x746E6572727563;
      }

LABEL_8:
      v3 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v3);

      return 0x206E776F6E6B6E75;
    }

    return 0x6669636570736E75;
  }
}

void sub_1A498F250(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t), void (*a6)(_BYTE *, uint64_t, uint64_t), uint64_t (*a7)(_BYTE *, uint64_t, __n128), _BYTE *a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v112 = a8;
  v113 = a4;
  v110 = a7;
  v108 = a6;
  v114 = a5;
  v115 = a2;
  v116 = a3;
  v13 = a9;
  v14 = sub_1A5246D14();
  v118 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A499256C(0);
  v109 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v89[-v19];
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v91 = &v89[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v89[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v89[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v107 = &v89[-v28];
  v29 = sub_1A5240E64();
  v111 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v119 = &v89[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v89[-v35];
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v89[-v38];
  v104 = sub_1A52405C4();
  v102 = *(v104 - 8);
  v40 = MEMORY[0x1EEE9AC00](v104);
  v42 = &v89[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a9)
  {
    v13 = (*((*MEMORY[0x1E69E7D40] & **(v11 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration)) + 0xE0))(v40);
  }

  v96 = v20;
  sub_1A52405B4();
  v117 = a1;
  sub_1A498FE80(v115, v116, v113, v114, v108, v110, v112, v13, v11, a1);
  sub_1A5240594();
  v43 = [*(v11 + OBJC_IVAR___PXPhotosFileProviderRegister_fileProviderManager) documentStorageURL];
  sub_1A5240DE4();

  v97 = v11;
  v44 = [*(v11 + OBJC_IVAR___PXPhotosFileProviderRegister_domain) pathRelativeToDocumentStorage];
  sub_1A524C674();

  v112 = v39;
  sub_1A5240D84();

  v45 = v111 + 8;
  v110 = *(v111 + 8);
  v46 = (v110)(v36, v29);
  v101 = v42;
  MEMORY[0x1A58FB910](v46);
  v103 = v36;
  if (!v47)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v48 = v109;
  v99 = a10;
  sub_1A5240D84();

  v49 = v117;
  sub_1A5240D64();
  v105 = v29;
  v100 = v45;
  (v110)(v31, v29);
  v50 = v118;
  v51 = v118 + 16;
  v52 = v107;
  v108 = *(v118 + 16);
  v108(v107, v49, v14);
  v92 = *(v50 + 56);
  v92(v52, 0, 1, v14);
  v53 = *(v97 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration);
  v54 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType;
  v55 = *(v48 + 48);
  v56 = v96;
  sub_1A499267C(v52, v96, sub_1A435B518);
  v97 = v53;
  sub_1A499267C(v53 + v54, v56 + v55, sub_1A435B518);
  v57 = *(v50 + 48);
  v58 = v57(v56, 1, v14);
  v98 = v51;
  if (v58 == 1)
  {
    sub_1A4996FE0(v52, sub_1A435B518);
    if (v57(v56 + v55, 1, v14) == 1)
    {
      v59 = v14;
      v60 = v56;
LABEL_15:
      sub_1A4996FE0(v60, sub_1A435B518);
      LODWORD(v109) = 1;
LABEL_22:
      v62 = v117;
LABEL_23:
      v78 = *(v111 + 16);
      v79 = v103;
      v80 = v105;
      v78(v103, v119, v105);
      v81 = v106;
      v82 = v108;
      v108(v106, v62, v59);
      v83 = type metadata accessor for PhotosFileProviderRegister.FileRepresentation(0);
      v84 = objc_allocWithZone(v83);
      v78(&v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_fileProviderURL], v79, v80);
      v82(&v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType], v81, v59);
      v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_hasLimitedVisibility] = v99 & 1;
      v85 = &v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_uuid];
      v86 = v116;
      *v85 = v115;
      v85[1] = v86;
      v87 = &v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_identifierCode];
      v88 = v114;
      *v87 = v113;
      v87[1] = v88;
      v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_isThumbnail] = v109 & 1;
      v120.receiver = v84;
      v120.super_class = v83;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v61 = v95;
    sub_1A499267C(v56, v95, sub_1A435B518);
    if (v57(v56 + v55, 1, v14) != 1)
    {
      v70 = v118;
      v71 = v56 + v55;
      v72 = v106;
      (*(v118 + 32))(v106, v71, v14);
      sub_1A49925D0(&qword_1EB124A40, MEMORY[0x1E69E8468]);
      v90 = sub_1A524C594();
      v73 = *(v70 + 8);
      v73(v72, v14);
      sub_1A4996FE0(v107, sub_1A435B518);
      v73(v95, v14);
      v63 = v109;
      sub_1A4996FE0(v56, sub_1A435B518);
      v62 = v117;
      if (v90)
      {
        v59 = v14;
        LODWORD(v109) = 1;
        goto LABEL_23;
      }

LABEL_12:
      v64 = v93;
      v108(v93, v62, v14);
      v92(v64, 0, 1, v14);
      v65 = v64;
      v66 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType;
      v67 = *(v63 + 48);
      v68 = v94;
      sub_1A499267C(v64, v94, sub_1A435B518);
      sub_1A499267C(v97 + v66, &v68[v67], sub_1A435B518);
      if (v57(v68, 1, v14) == 1)
      {
        sub_1A4996FE0(v64, sub_1A435B518);
        if (v57(&v68[v67], 1, v14) == 1)
        {
          v59 = v14;
          v60 = v68;
          goto LABEL_15;
        }
      }

      else
      {
        v69 = v91;
        sub_1A499267C(v68, v91, sub_1A435B518);
        if (v57(&v68[v67], 1, v14) != 1)
        {
          v74 = v118;
          v75 = v14;
          v76 = v106;
          (*(v118 + 32))(v106, &v68[v67], v75);
          sub_1A49925D0(&qword_1EB124A40, MEMORY[0x1E69E8468]);
          LODWORD(v109) = sub_1A524C594();
          v77 = *(v74 + 8);
          v77(v76, v75);
          sub_1A4996FE0(v65, sub_1A435B518);
          v59 = v75;
          v77(v69, v75);
          sub_1A4996FE0(v68, sub_1A435B518);
          goto LABEL_22;
        }

        sub_1A4996FE0(v64, sub_1A435B518);
        (*(v118 + 8))(v69, v14);
      }

      v59 = v14;
      sub_1A4996FE0(v68, sub_1A499256C);
      LODWORD(v109) = 0;
      goto LABEL_22;
    }

    sub_1A4996FE0(v107, sub_1A435B518);
    (*(v118 + 8))(v61, v14);
  }

  sub_1A4996FE0(v56, sub_1A499256C);
  v62 = v117;
  v63 = v109;
  goto LABEL_12;
}

char *sub_1A498FE80(uint64_t a1, uint64_t a2, void (*a3)(char *, void, uint64_t, uint64_t), void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v164 = a7;
  v165 = a8;
  v155 = a6;
  v154 = a5;
  v153 = a4;
  v152 = a3;
  v10 = sub_1A5240584();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v173 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5246D14();
  v14 = *(v13 - 8);
  v162 = v13;
  v163 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499256C(0);
  v161 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v150 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v145 - v19;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v146 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v151 = &v145 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v145 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v160 = &v145 - v27;
  sub_1A4996EC8(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v172 = &v145 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v145 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v158 = &v145 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v149 = &v145 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v156 = (&v145 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v170 = &v145 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v166 = &v145 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v145 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v145 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v145 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v145 - v56;
  sub_1A5240574();
  v171 = v11;
  v58 = *(v11 + 56);
  v167 = v11 + 56;
  v168 = v58;
  v58(v57, 0, 1, v10);
  v59 = sub_1A49922A0(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  v61 = v59[2];
  v60 = v59[3];
  v62 = v59;
  if (v61 >= v60 >> 1)
  {
    v62 = sub_1A49922A0((v60 > 1), v61 + 1, 1, v59, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v62[2] = v61 + 1;
  v169 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v63 = *(v29 + 72);
  v64 = v62;
  sub_1A4992614(v57, v62 + v169 + v63 * v61, sub_1A4996EC8);
  sub_1A5240574();
  v168(v54, 0, 1, v10);
  v66 = v64[2];
  v65 = v64[3];
  if (v66 >= v65 >> 1)
  {
    v64 = sub_1A49922A0((v65 > 1), v66 + 1, 1, v64, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v64[2] = v66 + 1;
  sub_1A4992614(v54, v64 + v169 + v66 * v63, sub_1A4996EC8);
  sub_1A5240574();
  v168(v51, 0, 1, v10);
  v68 = v64[2];
  v67 = v64[3];
  if (v68 >= v67 >> 1)
  {
    v64 = sub_1A49922A0((v67 > 1), v68 + 1, 1, v64, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v64[2] = v68 + 1;
  sub_1A4992614(v51, v64 + v169 + v68 * v63, sub_1A4996EC8);
  v176 = v164;
  sub_1A524EA44();
  sub_1A5240574();

  v168(v48, 0, 1, v10);
  v70 = v64[2];
  v69 = v64[3];
  if (v70 >= v69 >> 1)
  {
    v64 = sub_1A49922A0((v69 > 1), v70 + 1, 1, v64, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v64[2] = v70 + 1;
  sub_1A4992614(v48, v64 + v169 + v70 * v63, sub_1A4996EC8);
  v176 = v165;
  sub_1A524EA44();
  v71 = v166;
  sub_1A5240574();

  v168(v71, 0, 1, v10);
  v73 = v64[2];
  v72 = v64[3];
  v74 = v64;
  if (v73 >= v72 >> 1)
  {
    v74 = sub_1A49922A0((v72 > 1), v73 + 1, 1, v64, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v165 = a10;
  v75 = v74;
  v74[2] = v73 + 1;
  v76 = sub_1A4992614(v166, v74 + v169 + v73 * v63, sub_1A4996EC8);
  v77 = *((*MEMORY[0x1E69E7D40] & **(a9 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration)) + 0xF8);
  v166 = *(a9 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration);
  v77(v76);
  v78 = v75;
  v79 = v170;
  sub_1A5240574();

  v168(v79, 0, 1, v10);
  v81 = v75[2];
  v80 = v75[3];
  if (v81 >= v80 >> 1)
  {
    v78 = sub_1A49922A0((v80 > 1), v81 + 1, 1, v75, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v78[2] = v81 + 1;
  v82 = sub_1A4992614(v170, v78 + v169 + v81 * v63, sub_1A4996EC8);
  (*((*MEMORY[0x1E69E7D40] & *v166) + 0x110))(v82);
  v83 = v156;
  sub_1A5240574();

  v168(v83, 0, 1, v10);
  v85 = v78[2];
  v84 = v78[3];
  if (v85 >= v84 >> 1)
  {
    v78 = sub_1A49922A0((v84 > 1), v85 + 1, 1, v78, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v86 = v160;
  v78[2] = v85 + 1;
  v164 = v78;
  sub_1A4992614(v83, v78 + v169 + v85 * v63, sub_1A4996EC8);
  v87 = v162;
  v88 = v163;
  v89 = *(v163 + 16);
  v155 = v163 + 16;
  v153 = v89;
  v89(v86, v165, v162);
  v90 = *(v88 + 56);
  v154 = v88 + 56;
  v152 = v90;
  v90(v86, 0, 1, v87);
  v91 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType;
  v92 = *(v161 + 48);
  v93 = v86;
  v94 = v86;
  v95 = v157;
  sub_1A499267C(v93, v157, sub_1A435B518);
  sub_1A499267C(&v166[v91], v95 + v92, sub_1A435B518);
  v96 = *(v88 + 48);
  v97 = v96(v95, 1, v87);
  v170 = v63;
  v156 = v96;
  if (v97 == 1)
  {
    sub_1A4996FE0(v94, sub_1A435B518);
    v98 = v96(v95 + v92, 1, v87);
    v99 = v159;
    v100 = v164;
    if (v98 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v101 = v148;
  sub_1A499267C(v95, v148, sub_1A435B518);
  if (v96(v95 + v92, 1, v87) == 1)
  {
    sub_1A4996FE0(v160, sub_1A435B518);
    (*(v163 + 8))(v101, v87);
LABEL_20:
    sub_1A4996FE0(v95, sub_1A499256C);
    goto LABEL_21;
  }

  v108 = v163;
  v109 = v95 + v92;
  v110 = v147;
  (*(v163 + 32))(v147, v109, v87);
  sub_1A49925D0(&qword_1EB124A40, MEMORY[0x1E69E8468]);
  v111 = sub_1A524C594();
  v112 = *(v108 + 8);
  v112(v110, v87);
  sub_1A4996FE0(v160, sub_1A435B518);
  v112(v101, v87);
  v63 = v170;
  sub_1A4996FE0(v95, sub_1A435B518);
  v99 = v159;
  v100 = v164;
  if (v111)
  {
    goto LABEL_31;
  }

LABEL_21:
  v102 = v151;
  v103 = v162;
  v153(v151, v165, v162);
  v152(v102, 0, 1, v103);
  v104 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType;
  v105 = *(v161 + 48);
  v95 = v150;
  sub_1A499267C(v102, v150, sub_1A435B518);
  sub_1A499267C(&v166[v104], v95 + v105, sub_1A435B518);
  v106 = v156;
  if (v156(v95, 1, v103) != 1)
  {
    v107 = v146;
    sub_1A499267C(v95, v146, sub_1A435B518);
    if (v106(v95 + v105, 1, v103) != 1)
    {
      v113 = v163;
      v114 = v95 + v105;
      v115 = v147;
      (*(v163 + 32))(v147, v114, v103);
      sub_1A49925D0(&qword_1EB124A40, MEMORY[0x1E69E8468]);
      v116 = sub_1A524C594();
      v117 = *(v113 + 8);
      v117(v115, v103);
      sub_1A4996FE0(v151, sub_1A435B518);
      v117(v107, v103);
      sub_1A4996FE0(v95, sub_1A435B518);
      v100 = v164;
      v99 = v159;
      if ((v116 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    sub_1A4996FE0(v151, sub_1A435B518);
    (*(v163 + 8))(v107, v103);
LABEL_27:
    sub_1A4996FE0(v95, sub_1A499256C);
    v100 = v164;
    v99 = v159;
    goto LABEL_36;
  }

  sub_1A4996FE0(v102, sub_1A435B518);
  if (v106(v95 + v105, 1, v103) != 1)
  {
    goto LABEL_27;
  }

  v100 = v164;
  v99 = v159;
LABEL_24:
  sub_1A4996FE0(v95, sub_1A435B518);
LABEL_31:
  v176 = sub_1A5246BF4();
  v177 = v118;
  v174 = 0xD000000000000012;
  v175 = 0x80000001A53F5830;
  sub_1A3D5F9DC();
  v119 = sub_1A524E044();

  v120 = 1;
  if (v119)
  {
    v120 = 2;
  }

  v176 = v120;
  sub_1A524EA44();
  v121 = v149;
  sub_1A5240574();

  v168(v121, 0, 1, v10);
  v123 = v100[2];
  v122 = v100[3];
  if (v123 >= v122 >> 1)
  {
    v100 = sub_1A49922A0((v122 > 1), v123 + 1, 1, v100, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v100[2] = v123 + 1;
  sub_1A4992614(v121, v100 + v169 + v123 * v63, sub_1A4996EC8);
LABEL_36:
  v176 = sub_1A5246BF4();
  v177 = v124;
  v174 = 0xD000000000000011;
  v175 = 0x80000001A53F5810;
  sub_1A3D5F9DC();
  v125 = sub_1A524E044();

  if (v125)
  {
    v176 = 1;
    sub_1A524EA44();
    v127 = v158;
    sub_1A5240574();

    v168(v127, 0, 1, v10);
    v129 = v100[2];
    v128 = v100[3];
    if (v129 >= v128 >> 1)
    {
      v100 = sub_1A49922A0((v128 > 1), v129 + 1, 1, v100, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
    }

    v100[2] = v129 + 1;
    v126 = sub_1A4992614(v158, v100 + v169 + v129 * v63, sub_1A4996EC8);
  }

  v130 = (*((*MEMORY[0x1E69E7D40] & *v166) + 0x128))(v126);
  if (v130)
  {
    v131 = v130;
    v132 = [v130 stringValue];
    sub_1A524C674();

    sub_1A5240574();

    v168(v99, 0, 1, v10);
    v134 = v100[2];
    v133 = v100[3];
    if (v134 >= v133 >> 1)
    {
      v100 = sub_1A49922A0((v133 > 1), v134 + 1, 1, v100, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
    }

    v100[2] = v134 + 1;
    sub_1A4992614(v99, v100 + v169 + v134 * v63, sub_1A4996EC8);
  }

  v135 = v100[2];
  if (v135)
  {
    v164 = v100;
    v136 = v100 + v169;
    v137 = (v171 + 48);
    v138 = (v171 + 32);
    v139 = MEMORY[0x1E69E7CC0];
    do
    {
      v140 = v172;
      sub_1A499267C(v136, v172, sub_1A4996EC8);
      sub_1A4992614(v140, v31, sub_1A4996EC8);
      if ((*v137)(v31, 1, v10) == 1)
      {
        sub_1A4996FE0(v31, sub_1A4996EC8);
      }

      else
      {
        v141 = *v138;
        (*v138)(v173, v31, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1A49922A0(0, *(v139 + 2) + 1, 1, v139, &unk_1EB1203D0, MEMORY[0x1E6968178], MEMORY[0x1E6968178]);
        }

        v143 = *(v139 + 2);
        v142 = *(v139 + 3);
        if (v143 >= v142 >> 1)
        {
          v139 = sub_1A49922A0((v142 > 1), v143 + 1, 1, v139, &unk_1EB1203D0, MEMORY[0x1E6968178], MEMORY[0x1E6968178]);
        }

        *(v139 + 2) = v143 + 1;
        v141(&v139[((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v143], v173, v10);
        v63 = v170;
      }

      v136 += v63;
      --v135;
    }

    while (v135);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v139;
}

uint64_t sub_1A4991874@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A5246D14();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 registeredContentTypes];
  v12 = sub_1A524CA34();

  v13 = OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType;
  LOBYTE(v11) = sub_1A4991CF0(&a1[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType], v12);

  if (v11)
  {
    v14 = sub_1A5240E64();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }

  else
  {
    v39 = v7;
    v17 = [v3 userInfo];
    v40 = a2;
    if (v17)
    {
      v18 = v17;
      v19 = sub_1A524C3E4();
    }

    else
    {
      v19 = sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
    }

    *&v43 = sub_1A5246BF4();
    *(&v43 + 1) = v20;
    v21 = MEMORY[0x1E69E6158];
    sub_1A524E384();
    v22 = OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_fileProviderURL;
    v23 = sub_1A5240E14();
    v44 = v21;
    *&v43 = v23;
    *(&v43 + 1) = v24;
    sub_1A3C57128(&v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v19;
    sub_1A44A1BB0(v42, v45, isUniquelyReferenced_nonNull_native);
    sub_1A3D5FAFC(v45);
    v26 = sub_1A524C3D4();

    [v3 setUserInfo_];

    v27 = objc_opt_self();
    v28 = [v27 defaultManager];
    sub_1A5240E14();
    v29 = sub_1A524C634();

    v30 = [v28 fileExistsAtPath_];

    if ((v30 & 1) == 0)
    {
      v31 = [v27 defaultManager];
      sub_1A5240E14();
      v32 = sub_1A524C634();

      [v31 createFileAtPath:v32 contents:0 attributes:0];
    }

    v33 = v39;
    (*(v39 + 16))(v10, &a1[v13], v6);
    *(swift_allocObject() + 16) = a1;
    v34 = a1;
    sub_1A524D284();

    (*(v33 + 8))(v10, v6);
    v35 = sub_1A5240E64();
    v36 = *(v35 - 8);
    v37 = &a1[v22];
    v38 = v40;
    (*(v36 + 16))(v40, v37, v35);
    return (*(v36 + 56))(v38, 0, 1, v35);
  }
}

BOOL sub_1A4991CF0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1A5246D14();
    ++v2;
    sub_1A49925D0(&qword_1EB124A40, MEMORY[0x1E69E8468]);
  }

  while ((sub_1A524C594() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1A4991DE8(void (*a1)(char *, uint64_t, void), uint64_t a2, uint64_t a3)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_fileProviderURL;
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a3 + v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  a1(v7, 1, 0);
  return sub_1A4996FE0(v7, sub_1A3EE53E0);
}

id sub_1A4991F1C(void *a1, uint64_t a2, void *a3)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  v9 = a1;
  sub_1A4991874(v8, v7);

  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1A5240D44();
    (*(v11 + 8))(v7, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t PXPhotosFileProviderEncodingPolicy.description.getter(uint64_t a1, __n128 a2)
{
  switch(a1)
  {
    case 0:
      return 0x6974616D6F747561;
    case 1:
      return 0x746E6572727563;
    case 2:
      return 0x62697461706D6F63;
  }

  v3 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v3);

  return 0x206E776F6E6B6E75;
}

void *sub_1A4992140(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A49970BC(0, &unk_1EB120290, sub_1A4996EFC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A4996EFC(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A49922A0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1A49970BC(0, a5, a6, MEMORY[0x1E69E6F90]);
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

unint64_t sub_1A4992494(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A49924A4(uint64_t a1, uint64_t a2)
{
  sub_1A435B518(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A499256C(uint64_t a1)
{
  if (!qword_1EB124A38)
  {
    sub_1A435B518(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124A38);
    }
  }
}

uint64_t sub_1A49925D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A5246D14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4992614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A499267C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A49926E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4997040(0);
    sub_1A524E794();

    v2 = *(a1 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

id sub_1A49927D8(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() exportRequestForAsset:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1A5240B84();

    swift_willThrow();
  }

  return v1;
}

void sub_1A499289C(void *a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A5246D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A49926E4(MEMORY[0x1E69E7CC0]);
  sub_1A3C52C70(0, &qword_1EB120928, 0x1E69786A8);
  v10 = a1;
  v22 = sub_1A49927D8(v10);
  v60 = v8;
  v61 = v6;
  v67 = v5;
  v64 = v10;

  v23 = v22;
  v24 = [v23 variants];
  v25 = sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v59[0] = sub_1A3D92850();
  v26 = sub_1A524C3E4();

  v63 = v25;
  v27 = sub_1A524DBD4();
  v28 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
  v29 = [v28 setVariant_];
  v30 = MEMORY[0x1E69E7D40];
  v31 = [v28 setShouldStripLocation_];
  v32 = *((*v30 & *a2) + 0x110);
  v62 = a2;
  [v28 setShouldStripCaption_];
  v68[0] = 0;
  v59[3] = v28;
  [v23 preflightExportWithOptions:v28 assetAvailability:0 isProcessingRequired:v68 fileURLs:0 info:0];
  v59[4] = v23;

  if ((v68[0] & 1) != 0 && *(v26 + 16))
  {
    v34 = v27;
    v33 = sub_1A3DAC918(v27);
    if (v35)
    {
      v66 = v26;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v34 = v27;
  }

  v36 = v62;
  v37 = MEMORY[0x1E69E7D40];
  v38 = (*((*MEMORY[0x1E69E7D40] & *v62) + 0xC8))(v33);
  v39 = (*((*v37 & *v36) + 0xE0))();
  v59[2] = v38;
  v59[1] = v39;
  v40 = PXPhotosFileProviderVariantsSortedByEncodingPolicy(v38, v39, v64);
  v41 = sub_1A524CA34();

  v60 = (v41 >> 62);
  if (v41 >> 62)
  {
    v42 = sub_1A524E2B4();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v34;
  v66 = v26;
  v43 = MEMORY[0x1E69E7CC0];
  v67 = v41;
  if (!v42)
  {
LABEL_36:
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v57 = sub_1A5246F24();
    __swift_project_value_buffer(v57, qword_1EB15B4F8);
    v58 = v64;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v44 = 0;
  v45 = v41 & 0xC000000000000001;
  v46 = v41 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v45)
    {
      v47 = MEMORY[0x1A59097F0](v44, v41);
    }

    else
    {
      if (v44 >= *(v46 + 16))
      {
        goto LABEL_40;
      }

      v47 = *(v41 + 8 * v44 + 32);
    }

    v48 = v47;
    v49 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    v50 = [v47 integerValue];
    if (v50 > 1)
    {
      if (v50 == 2)
      {

        v52 = 0x62697461706D6F63;
        v51 = 0xEA0000000000656CLL;
        goto LABEL_29;
      }

      if (v50 != 3)
      {
        goto LABEL_26;
      }

      v51 = 0xE900000000000065;
      v52 = 0x74616E7265746C61;
    }

    else
    {
      if (!v50)
      {

        v52 = 0x6669636570736E75;
        v51 = 0xEB00000000646569;
        goto LABEL_29;
      }

      if (v50 != 1)
      {
LABEL_26:
        v69 = v50;
        v70 = 0x206E776F6E6B6E75;
        v71 = 0xE900000000000028;
        v53 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v53);

        v52 = v70;
        v51 = v71;
        goto LABEL_29;
      }

      v51 = 0xE700000000000000;
      v52 = 0x746E6572727563;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1A3D3D914(0, *(v43 + 2) + 1, 1, v43);
    }

    v55 = *(v43 + 2);
    v54 = *(v43 + 3);
    if (v55 >= v54 >> 1)
    {
      v43 = sub_1A3D3D914((v54 > 1), v55 + 1, 1, v43);
    }

    *(v43 + 2) = v55 + 1;
    v56 = &v43[16 * v55];
    *(v56 + 4) = v52;
    *(v56 + 5) = v51;
    ++v44;
    v41 = v67;
    if (v49 == v42)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  __break(1u);
  __break(1u);
  swift_once();
  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB15B4F8);
  v12 = v43;
  v13 = v41;
  v14 = sub_1A5246F04();
  v15 = sub_1A524D244();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v16 = 136446466;
    v17 = [v12 uuid];
    if (v17)
    {
      v18 = v17;

      v19 = sub_1A524C674();
      v21 = v20;

      sub_1A3C2EF94(v19, v21, &v70);
    }

    __break(1u);

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {
  }
}

void sub_1A499436C(id a1, void *a2)
{
  sub_1A4996354(0);
  v5 = *(v4 - 1);
  v226 = v4;
  v227 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v216 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v214 = &v204 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v212 = &v204 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v230 = &v204 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v223 = (&v204 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v208 = &v204 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v221 = (&v204 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v204 - v20;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v215 = &v204 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v217 = &v204 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v204 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v224 = &v204 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v229 = &v204 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v206 = &v204 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v204 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v204 - v39;
  v41 = sub_1A5246D14();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v210 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v213 = &v204 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v211 = &v204 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v231 = &v204 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v222 = &v204 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v207 = &v204 - v53;
  MEMORY[0x1EEE9AC00](v54);
  *&v220 = &v204 - v55;
  v57.n128_f64[0] = MEMORY[0x1EEE9AC00](v56);
  v59 = &v204 - v58;
  v60 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x158))(v57);
  v228 = v41;
  v225 = a1;
  v219 = a2;
  v218 = v28;
  if (v60)
  {
    sub_1A499267C(a2 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_spatialWallpaperContentType, v40, sub_1A435B518);
    if ((*(v42 + 48))(v40, 1, v41) == 1)
    {
      sub_1A4996FE0(v40, sub_1A435B518);
      if (qword_1EB15B4F0 != -1)
      {
        swift_once();
      }

      v61 = sub_1A5246F24();
      __swift_project_value_buffer(v61, qword_1EB15B4F8);
      v62 = sub_1A5246F04();
      v63 = sub_1A524D264();
      v64 = v42;
      if (os_log_type_enabled(v62, v63))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1A3C1C000, v62, v63, "Didn't register Spatial Wallpaper variant because content type is nil.", v65, 2u);
        MEMORY[0x1A590EEC0](v65, -1, -1);
      }

      v66 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      (*(v42 + 32))(v59, v40, v41);
      v67 = v226[12];
      v68 = v226[16];
      v69 = v226[20];
      (*(v42 + 16))(v21, v59, v41);
      *&v21[v67] = 1;
      *&v21[v68] = 0;
      v21[v69] = 1;
      v70 = sub_1A49922A0(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      v72 = v70[2];
      v71 = v70[3];
      v73 = v70;
      v64 = v42;
      if (v72 >= v71 >> 1)
      {
        v73 = sub_1A49922A0((v71 > 1), v72 + 1, 1, v70, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      a1 = v225;
      (*(v42 + 8))(v59, v228);
      v66 = v73;
      v73[2] = v72 + 1;
      sub_1A4992614(v21, v73 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v72, sub_1A4996354);
      a2 = v219;
      v28 = v218;
    }
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
    v64 = v42;
  }

  if ([a1 playbackStyle] == 3)
  {
    v74 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_livePhotoContentType;
    swift_beginAccess();
    sub_1A499267C(a2 + v74, v37, sub_1A435B518);
    v75 = *(v64 + 48);
    v76 = v228;
    if (v75(v37, 1, v228) == 1)
    {
      sub_1A4996FE0(v37, sub_1A435B518);
      if (qword_1EB15B4F0 != -1)
      {
        swift_once();
      }

      v77 = sub_1A5246F24();
      __swift_project_value_buffer(v77, qword_1EB15B4F8);
      v78 = sub_1A5246F04();
      v79 = sub_1A524D264();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = v66;
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_1A3C1C000, v78, v79, "Didn't register Live Photo variant because content type is nil.", v81, 2u);
        v82 = v81;
        v66 = v80;
        MEMORY[0x1A590EEC0](v82, -1, -1);
      }

      v84 = MEMORY[0x1E69E7D40];
    }

    else
    {
      v205 = v75;
      v86 = v220;
      (*(v64 + 32))(v220, v37, v76);
      v87 = v226[12];
      v88 = v66;
      v89 = v226[16];
      v90 = v226[20];
      v209 = v64;
      v91 = *(v64 + 16);
      v92 = v221;
      v91(v221, v86, v76);
      *(v92 + v87) = 2;
      *(v92 + v89) = 0;
      v66 = v88;
      *(v92 + v90) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1A49922A0(0, v88[2] + 1, 1, v88, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      v94 = v66[2];
      v93 = v66[3];
      a1 = v225;
      v28 = v218;
      v75 = v205;
      if (v94 >= v93 >> 1)
      {
        v66 = sub_1A49922A0((v93 > 1), v94 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      v64 = v209;
      v84 = MEMORY[0x1E69E7D40];
      (*(v209 + 8))(v220, v228);
      v66[2] = v94 + 1;
      v83 = sub_1A4992614(v221, v66 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v94, sub_1A4996354);
    }

    v95 = v219;
    if ((*((*v84 & *v219) + 0x140))(v83))
    {
      v96 = v95 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_liveWallpaperContentType;
      v97 = v206;
      sub_1A499267C(v96, v206, sub_1A435B518);
      v98 = v228;
      if (v75(v97, 1, v228) == 1)
      {
        sub_1A4996FE0(v97, sub_1A435B518);
        if (qword_1EB15B4F0 != -1)
        {
          swift_once();
        }

        v99 = sub_1A5246F24();
        __swift_project_value_buffer(v99, qword_1EB15B4F8);
        v100 = sub_1A5246F04();
        v101 = sub_1A524D264();
        v102 = os_log_type_enabled(v100, v101);
        v85 = v228;
        a2 = v219;
        if (v102)
        {
          v103 = v66;
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&dword_1A3C1C000, v100, v101, "Didn't register Live Wallpaper variant because content type is nil.", v104, 2u);
          v105 = v104;
          v66 = v103;
          MEMORY[0x1A590EEC0](v105, -1, -1);
        }
      }

      else
      {
        v106 = v207;
        (*(v64 + 32))(v207, v97, v98);
        v107 = v226[12];
        v108 = v66;
        v109 = v226[16];
        v110 = v226[20];
        v111 = v208;
        (*(v64 + 16))(v208, v106, v98);
        *(v111 + v107) = 2;
        *(v111 + v109) = 0;
        v66 = v108;
        *(v111 + v110) = 1;
        v85 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1A49922A0(0, v108[2] + 1, 1, v108, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
        }

        a2 = v219;
        v113 = v66[2];
        v112 = v66[3];
        if (v113 >= v112 >> 1)
        {
          v66 = sub_1A49922A0((v112 > 1), v113 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
        }

        (*(v64 + 8))(v207, v98);
        v66[2] = v113 + 1;
        sub_1A4992614(v208, v66 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v113, sub_1A4996354);
      }
    }

    else
    {
      v85 = v228;
      a2 = v95;
    }
  }

  else
  {
    v85 = v228;
  }

  v114 = v229;
  if ([a1 playbackStyle] == 5)
  {
    v115 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_autoLoopAsGIFContentType;
    swift_beginAccess();
    sub_1A499267C(a2 + v115, v114, sub_1A435B518);
    if ((*(v64 + 48))(v114, 1, v85) == 1)
    {
      sub_1A4996FE0(v114, sub_1A435B518);
      if (qword_1EB15B4F0 != -1)
      {
        swift_once();
      }

      v116 = sub_1A5246F24();
      __swift_project_value_buffer(v116, qword_1EB15B4F8);
      v117 = sub_1A5246F04();
      v118 = sub_1A524D264();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = v66;
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_1A3C1C000, v117, v118, "Didn't register auto loop GIF variant because content type is nil.", v120, 2u);
        v121 = v120;
        v66 = v119;
        MEMORY[0x1A590EEC0](v121, -1, -1);
      }
    }

    else
    {
      v122 = a2;
      v123 = v222;
      (*(v64 + 32))(v222, v114, v85);
      v124 = v226[12];
      v125 = v66;
      v126 = v226[16];
      v127 = v226[20];
      v128 = v223;
      (*(v64 + 16))(v223, v123, v85);
      *(v128 + v124) = 1;
      *(v128 + v126) = 0;
      v66 = v125;
      *(v128 + v127) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1A49922A0(0, v125[2] + 1, 1, v125, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      v130 = v66[2];
      v129 = v66[3];
      a2 = v122;
      v28 = v218;
      if (v130 >= v129 >> 1)
      {
        v66 = sub_1A49922A0((v129 > 1), v130 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      a1 = v225;
      (*(v64 + 8))(v222, v85);
      v66[2] = v130 + 1;
      sub_1A4992614(v223, v66 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v130, sub_1A4996354);
    }
  }

  if ([a1 playbackStyle])
  {
    sub_1A499289C(a1, a2);
    v133 = *(v131 + 16);
    if (v133)
    {
      v229 = v66;
      v134 = (v64 + 48);
      v222 = (v64 + 16);
      v223 = (v64 + 32);
      v209 = v64;
      v221 = (v64 + 8);
      v208 = v131;
      v135 = (v131 + 48);
      *&v132 = 136446210;
      v220 = v132;
      v136 = v224;
      do
      {
        v137 = *v135;
        swift_bridgeObjectRetain_n();
        sub_1A5246D24();
        if ((*v134)(v136, 1, v85) == 1)
        {
          sub_1A4996FE0(v136, sub_1A435B518);
          if (qword_1EB15B4F0 != -1)
          {
            swift_once();
          }

          v138 = sub_1A5246F24();
          __swift_project_value_buffer(v138, qword_1EB15B4F8);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        (*v223)(v231, v136, v85);
        v139 = [v225 playbackStyle];

        if (v139 > 5)
        {
          v140 = 0;
        }

        else
        {
          v140 = qword_1A5378580[v139];
        }

        v141 = v226[12];
        v142 = v226[16];
        v143 = v226[20];
        v144 = v230;
        (*v222)(v230, v231, v85);
        *(v144 + v141) = v140;
        *(v144 + v142) = v137;
        *(v144 + v143) = 0;
        v145 = v229;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_1A49922A0(0, *(v145 + 2) + 1, 1, v145, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
        }

        v147 = *(v145 + 2);
        v146 = *(v145 + 3);
        v136 = v224;
        if (v147 >= v146 >> 1)
        {
          v145 = sub_1A49922A0((v146 > 1), v147 + 1, 1, v145, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
        }

        (*v221)(v231, v85);
        *(v145 + 2) = v147 + 1;
        v148 = (*(v227 + 80) + 32) & ~*(v227 + 80);
        v229 = v145;
        sub_1A4992614(v230, &v145[v148 + *(v227 + 72) * v147], sub_1A4996354);
        v135 += 3;
        --v133;
      }

      while (v133);

      a1 = v225;
      a2 = v219;
      v64 = v209;
      v66 = v229;
    }

    else
    {

      a2 = v219;
    }

    v28 = v218;
  }

  else
  {
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v149 = sub_1A5246F24();
    __swift_project_value_buffer(v149, qword_1EB15B4F8);
    v150 = a1;
    v151 = sub_1A5246F04();
    v152 = sub_1A524D244();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      *v153 = 136446210;
      v154 = [v150 uuid];

      if (v154)
      {
        v155 = sub_1A524C674();
        v157 = v156;

        sub_1A3C2EF94(v155, v157, &v232);
      }

      __break(1u);
      __break(1u);
      return;
    }

    v85 = v228;
  }

  if (![a1 isVideo])
  {
    goto LABEL_78;
  }

  sub_1A499267C(a2 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_mailMovieExportContentType, v28, sub_1A435B518);
  if ((*(v64 + 48))(v28, 1, v85) == 1)
  {
    sub_1A4996FE0(v28, sub_1A435B518);
LABEL_78:
    v158 = v217;
    goto LABEL_84;
  }

  v159 = a2;
  v160 = v211;
  (*(v64 + 32))(v211, v28, v85);
  v161 = v226[12];
  v162 = v66;
  v163 = v226[16];
  v164 = v226[20];
  v165 = v212;
  (*(v64 + 16))(v212, v160, v85);
  *(v165 + v161) = 3;
  *(v165 + v163) = 2;
  v66 = v162;
  *(v165 + v164) = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v66 = sub_1A49922A0(0, v162[2] + 1, 1, v162, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
  }

  v158 = v217;
  v167 = v66[2];
  v166 = v66[3];
  a2 = v159;
  if (v167 >= v166 >> 1)
  {
    v66 = sub_1A49922A0((v166 > 1), v167 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
  }

  (*(v64 + 8))(v211, v85);
  v66[2] = v167 + 1;
  sub_1A4992614(v212, v66 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v167, sub_1A4996354);
LABEL_84:
  sub_1A499267C(a2 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType, v158, sub_1A435B518);
  v168 = *(v64 + 48);
  if ((v168)(v158, 1, v85) == 1)
  {
    sub_1A4996FE0(v158, sub_1A435B518);
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v169 = sub_1A5246F24();
    __swift_project_value_buffer(v169, qword_1EB15B4F8);
    v170 = sub_1A5246F04();
    v171 = sub_1A524D264();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = v168;
      v173 = v66;
      v174 = swift_slowAlloc();
      *v174 = 0;
      _os_log_impl(&dword_1A3C1C000, v170, v171, "Didn't register Large Thumbnail variant because content type is nil.", v174, 2u);
      v175 = v174;
      v66 = v173;
      v168 = v172;
      MEMORY[0x1A590EEC0](v175, -1, -1);
    }
  }

  else
  {
    v231 = v168;
    v176 = v158;
    v177 = v213;
    (*(v64 + 32))(v213, v176, v85);
    v178 = v226[12];
    v179 = v66;
    v180 = v226[16];
    v181 = v85;
    v182 = v226[20];
    v183 = v64;
    v184 = *(v64 + 16);
    v185 = v214;
    v184(v214, v177, v181);
    *(v185 + v178) = 1;
    *(v185 + v180) = 1;
    v66 = v179;
    *(v185 + v182) = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1A49922A0(0, v179[2] + 1, 1, v179, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
    }

    v187 = v66[2];
    v186 = v66[3];
    v85 = v228;
    v64 = v183;
    if (v187 >= v186 >> 1)
    {
      v66 = sub_1A49922A0((v186 > 1), v187 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
    }

    a2 = v219;
    v168 = v231;
    (*(v64 + 8))(v213, v85);
    v66[2] = v187 + 1;
    sub_1A4992614(v214, v66 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v187, sub_1A4996354);
  }

  v188 = v215;
  sub_1A499267C(a2 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType, v215, sub_1A435B518);
  if ((v168)(v188, 1, v85) == 1)
  {
    sub_1A4996FE0(v188, sub_1A435B518);
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v189 = sub_1A5246F24();
    __swift_project_value_buffer(v189, qword_1EB15B4F8);
    v190 = sub_1A5246F04();
    v191 = sub_1A524D264();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = v66;
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&dword_1A3C1C000, v190, v191, "Didn't register Small Thumbnail variant because content type is nil.", v193, 2u);
      v194 = v193;
      v66 = v192;
      MEMORY[0x1A590EEC0](v194, -1, -1);
    }

    if (!v66[2])
    {
      goto LABEL_107;
    }
  }

  else
  {
    v195 = v210;
    (*(v64 + 32))(v210, v188, v85);
    v196 = v226[12];
    v197 = v66;
    v198 = v226[16];
    v199 = v226[20];
    v200 = v216;
    (*(v64 + 16))(v216, v195, v85);
    *(v200 + v196) = 1;
    *(v200 + v198) = 1;
    v201 = v197;
    *(v200 + v199) = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v201 = sub_1A49922A0(0, v197[2] + 1, 1, v197, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
    }

    v203 = v201[2];
    v202 = v201[3];
    if (v203 >= v202 >> 1)
    {
      v201 = sub_1A49922A0((v202 > 1), v203 + 1, 1, v201, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
    }

    (*(v64 + 8))(v195, v85);
    v201[2] = v203 + 1;
    sub_1A4992614(v216, v201 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v203, sub_1A4996354);
    if (!v201[2])
    {
LABEL_107:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

void sub_1A4996354(uint64_t a1)
{
  if (!qword_1EB124A48)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A5246D14();
    type metadata accessor for PXPhotosFileProviderItemType(255);
    type metadata accessor for PXPhotosFileProviderEncodingPolicy(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB124A48);
    }
  }
}

void _s12PhotosUICore0A20FileProviderRegisterC03caneC15Representations3for11contentType13configurationSbSo7PHAssetC_07UniformJ11Identifiers6UTTypeVAC13ConfigurationCtFZ_0(void *a1, uint64_t a2, void *a3)
{
  sub_1A4996354(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499436C(a1, a3);
  v10 = v9;
  v11 = 0;
  v12 = *(v9 + 16);
  while (1)
  {
    if (v12 == v11)
    {
LABEL_5:

      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    sub_1A499267C(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11++, v8, sub_1A4996354);
    v13 = sub_1A5246CF4();
    sub_1A4996FE0(v8, sub_1A4996354);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

unint64_t sub_1A499664C()
{
  result = qword_1EB146368;
  if (!qword_1EB146368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146368);
  }

  return result;
}

void sub_1A49967E8(uint64_t a1)
{
  sub_1A435B518(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A4996DA4(uint64_t a1)
{
  result = sub_1A5240E64();
  if (v2 <= 0x3F)
  {
    result = sub_1A5246D14();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A4996EFC(uint64_t a1)
{
  if (!qword_1EB120D68)
  {
    type metadata accessor for PXPhotosFileProviderEncodingPolicy(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120D68);
    }
  }
}

void sub_1A4996F68(uint64_t a1)
{
  if (!qword_1EB146380)
  {
    sub_1A3C52C70(255, &qword_1EB126610, 0x1E696AD98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146380);
    }
  }
}

uint64_t sub_1A4996FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4997040(uint64_t a1)
{
  if (!qword_1EB146388)
  {
    sub_1A3C52C70(255, &qword_1EB126610, 0x1E696AD98);
    sub_1A3D92850();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146388);
    }
  }
}

void sub_1A49970BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4997120(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A49973F8()
{
  result = qword_1EB1463A0;
  if (!qword_1EB1463A0)
  {
    sub_1A3C69D9C(255, &qword_1EB146390, MEMORY[0x1E69E6158], off_1E7721230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1463A0);
  }

  return result;
}

void sub_1A4997474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A3C69D9C(255, &qword_1EB146390, MEMORY[0x1E69E6158], off_1E7721230);
    v7 = v6;
    v8 = sub_1A49973F8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4997860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 96))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A49978E4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    sub_1A3C69D9C(0, &qword_1EB146390, MEMORY[0x1E69E6158], off_1E7721230);
    v4 = sub_1A524CAC4();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

unint64_t sub_1A49979AC()
{
  result = qword_1EB1463B0;
  if (!qword_1EB1463B0)
  {
    sub_1A4997474(255, &qword_1EB1463A8, off_1E7721068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1463B0);
  }

  return result;
}

void sub_1A4997A44(uint64_t a1, void x1_0, void x2_0, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  sub_1A44FE8B8(v10, 0, 0, 0, 0, a2, a3, a4);
}

uint64_t sub_1A4997B4C()
{
  result = sub_1A524C634();
  qword_1EB1EB6F0 = result;
  return result;
}

uint64_t *sub_1A4997B84()
{
  if (qword_1EB192810 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB6F0;
}

void sub_1A4997F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A41B7CE0();
    v7 = a3(a1, &type metadata for LemonadePhotosChallengeItem, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_1A49983A8(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if ((sub_1A3C611C0() & 1) == 0)
  {
    return 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38LemonadePhotosChallengeItemListManager_gadgetProvider);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38LemonadePhotosChallengeItemListManager_horizontalGadgetProvider);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = [v4 gadgets];
  sub_1A41B7928();
  v7 = sub_1A524CA34();

  if (v7 >> 62)
  {
    v8 = sub_1A524E2B4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    [v4 generateGadgets];
  }

  v9 = v5;
  v10 = [v9 gadgets];
  v11 = sub_1A524CA34();

  if (v11 >> 62)
  {
    v12 = sub_1A524E2B4();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    [v9 generateGadgets];
  }

  v13 = [v9 gadgets];

  v14 = sub_1A524CA34();
  if (v14 >> 62)
  {
    v15 = sub_1A524E2B4();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v15 > 0;
}

void sub_1A49986AC(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38LemonadePhotosChallengeItemListManager_horizontalGadgetProvider);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = [v3 gadgets];
  sub_1A41B7928();
  v5 = sub_1A524CA34();
  v6 = v5;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_9;
  }

LABEL_4:

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_10:
    MEMORY[0x1A59097F0](0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_7:

    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() *a1];
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1A4998964(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4997F8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4998A8C(uint64_t a1, uint64_t a2)
{
  sub_1A4997F8C(0, &qword_1EB128D40, off_1E7721068);
  sub_1A4998964(&unk_1EB128D58, &qword_1EB128D40, off_1E7721068, off_1E7721070);

  sub_1A5245C54();
}

char *sub_1A4998B70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4998B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4998B90(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A4998C90();
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1A4998C90()
{
  if (!qword_1EB1262B0)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1262B0);
    }
  }
}

uint64_t sub_1A4998D68(void *a1)
{
  v1 = a1;
  v2 = sub_1A4998D9C();

  return v2 & 1;
}

id sub_1A4998D9C()
{
  result = *(v0 + qword_1EB12AB78);
  if (result)
  {
    return [result canBecomeFirstResponder];
  }

  __break(1u);
  return result;
}

void sub_1A4998DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosPagingViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v29.receiver = v4;
  v29.super_class = v5;
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v6 = [v4 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  if (!*(v4 + qword_1EB12AB78))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v4 addChildViewController_];
  v9 = *(v4 + qword_1EB12AB78);
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = [v9 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v10 setPreservesSuperviewLayoutMargins_];
  v12 = [v4 view];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame_];
  v22 = [v4 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  [v22 addSubview_];

  v24 = *(v4 + qword_1EB12AB78);
  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if ((MEMORY[0x1A590D320]([v24 didMoveToParentViewController_]) & 1) == 0)
  {
    v25 = *MEMORY[0x1E69DDF10];
    v26 = objc_opt_self();
    v27 = [v26 keyCommandWithInput:v25 modifierFlags:0x100000 action:sel_goToPreviousPage_];
    [v4 addKeyCommand_];

    v28 = [v26 keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0x100000 action:sel_goToNextPage_];
    [v4 addKeyCommand_];
  }

  sub_1A499A5D8();
}

void sub_1A4999094(void *a1)
{
  v4 = a1;
  sub_1A4998DD0(v4, v1, v2, v3);
}

void sub_1A49990DC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_1A4999154(v3, &selRef_viewWillAppear_, &unk_1F1730E28, sub_1A499B378);
}

void sub_1A4999154(char a1, SEL *a2, uint64_t a3, uint64_t a4)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PhotosPagingViewController(0, v7, v8, a4);
  objc_msgSendSuper2(&v13, *a2, a1 & 1);
  v9 = *(v4 + qword_1EB12AB70);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    type metadata accessor for PhotosPagingViewModel(0, v7, v8, v11);
    v12 = v9;
    swift_getWitnessTable();
    sub_1A5245F44();
  }

  __break(1u);
}

void sub_1A4999288(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A4999154(a3, &selRef_viewDidAppear_, &unk_1F1730E50, sub_1A499B380);
}

id sub_1A4999300(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PhotosPagingViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
}

void sub_1A4999380(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_1A4999300(a3, v6, v4, v5);
}

id sub_1A49993D4(void *a1)
{
  v1 = a1;
  v2 = sub_1A4999418();

  return v2;
}

id sub_1A4999418()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if (MEMORY[0x1A590D320]())
  {
    v3 = type metadata accessor for PhotosPagingViewController(0, *(v1 + 80), *(v1 + 88), v2);
    v6.receiver = v0;
    v6.super_class = v3;
    v4 = objc_msgSendSuper2(&v6, sel_navigationItem);
  }

  else
  {
    result = *(v0 + qword_1EB12AB78);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = [result navigationItem];
  }

  return v4;
}

void sub_1A49994D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for PhotosPagingViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_viewWillLayoutSubviews);
  v7 = sub_1A499A498();
  if (v7)
  {
    v8 = v7;
    (*((*v5 & *v7) + 0x100))();
  }
}

void sub_1A4999594(void *a1)
{
  v4 = a1;
  sub_1A49994D8(v4, v1, v2, v3);
}

void sub_1A49995DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for PhotosPagingViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_px_containedViewControllerModalStateChanged);
  v7 = sub_1A499A498();
  if (v7)
  {
    v8 = v7;
    (*((*v5 & *v7) + 0x108))();
  }
}

void sub_1A4999698(void *a1)
{
  v4 = a1;
  sub_1A49995DC(v4, v1, v2, v3);
}

id sub_1A49996E0()
{
  v0 = sub_1A3D2E23C();

  return v0;
}

void sub_1A499975C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1A499B3DC(a4);
  swift_unknownObjectRelease();
}

uint64_t sub_1A49997CC(uint64_t result)
{
  v2 = *(v1 + qword_1EB12AB78);
  if (v2)
  {
    v3 = result;
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x480);
    v5 = v2;
    v6 = v4(v3);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A499985C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v5 = sub_1A49997CC(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);

  return v5;
}

void sub_1A49998D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + qword_1EB12AB78);
  if (v4)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x488);
    v9 = v4;
    v8(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4999998(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = a3;
    swift_unknownObjectRetain();
    v9 = a1;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v10 = a3;
    swift_unknownObjectRetain();
    v11 = a1;
  }

  sub_1A49998D8(a3, a4, v13);

  swift_unknownObjectRelease();
  return sub_1A3C2CD6C(v13, sub_1A3C35B84);
}

void sub_1A4999A58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + qword_1EB12AB78);
  if (v4)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x490);
    v9 = v4;
    v8(a1, a2, a3 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4999B18(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1A4999A58(v8, a4, a5);

  swift_unknownObjectRelease();
}

void sub_1A4999BBC(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = *(v1 + qword_1EB12AB70);
  if (v9)
  {
    v10 = *((*v9 & v3) + 0xF0);
    v11 = v9;
    v10();

    v12 = *(AssociatedTypeWitness - 8);
    if ((*(v12 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v6 + 8))(v8, v5);
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      *(a1 + 24) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(v12 + 32))(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1A4999E0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4(v15);
  swift_unknownObjectRelease();

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1A524EA94();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1A4999F68()
{
  sub_1A499B4A0();
  v0 = swift_unknownObjectRetain();

  return v0;
}

double sub_1A4999FA0()
{
  sub_1A499B4A0();

  swift_unknownObjectRetain();
  return result;
}

void sub_1A4999FC8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1A499A028(a3);
}

double sub_1A499A028(uint64_t a1)
{
  v3 = qword_1EB125F40;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1A499A080@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A499A0DC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1A499A1A0(void *a1)
{
  v1 = a1;
  sub_1A499A1D4();
  v3 = v2;

  return v3;
}

void sub_1A499A1D4()
{
  v1 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = *(v0 + qword_1EB12AB70);
  if (v3)
  {
    v4 = *((*v3 & v1) + 0xD8);
    v5 = v3;
    v4();

    swift_getAssociatedConformanceWitness();
    sub_1A5246344();
  }

  __break(1u);
}

id sub_1A499A36C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A499B4E4();
  v7 = v6;
  swift_unknownObjectRetain();

  return v7;
}

id sub_1A499A3CC(void *a1)
{
  v1 = a1;
  sub_1A499A410();
  v3 = v2;

  return v3;
}

void sub_1A499A410()
{
  v1 = *(v0 + qword_1EB12AB78);
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8);
    v3 = v1;
    v2();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1A499A498()
{
  v1 = qword_1EB12AB80;
  v2 = *&v0[qword_1EB12AB80];
  v3 = v2;
  if (v2 == 1)
  {
    if ([v0 shouldUseSystemSwipeToDismiss])
    {
      v3 = 0;
    }

    else
    {
      type metadata accessor for ViewControllerDismissalInteractionController(0);
      v4 = v0;
      v3 = sub_1A482ACE4(v0);
      sub_1A3C52C70(0, &qword_1EB126740, off_1E771F048);
      v5 = [swift_getObjCClassFromMetadata() sharedInstance];
      v6 = [v5 allowScreenEdgeSwipeToDismiss];

      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x148))(v6);
      v0 = v4;
    }

    v7 = *&v0[v1];
    *&v0[v1] = v3;
    v8 = v3;
    sub_1A3C327F4(v7);
  }

  sub_1A3C327E4(v2);
  return v3;
}

void sub_1A499A5D8()
{
  v1 = sub_1A499A498();
  if (v1)
  {
    v2 = MEMORY[0x1E69E7D40];
    v8 = v1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(0);
    v3 = *(v0 + qword_1EB12AB78);
    if (v3)
    {
      v4 = *((*v2 & *v3) + 0x1E8);
      v5 = v3;
      v6 = v4();

      if (v6)
      {
        v7 = &off_1F1728F50;
      }

      else
      {
        v7 = 0;
      }

      (*((*v2 & *v8) + 0x178))(v6, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A499A73C(void *a1, char a2)
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v5 = [a1 toolbarItems];
    [v2 setToolbarItems:v5 animated:a2 & 1];
  }
}

double sub_1A499A7D4()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  if (v1)
  {
    [v1 pagingViewControllerDidUpdateItemList_];

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A499A85C()
{
  v1 = v0;
  v2 = [v0 splitViewController];
  if (!v2)
  {
    return v1;
  }

  v3 = [v0 parentViewController];
  v4 = [v0 navigationController];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
      v6 = sub_1A524DBF4();

      if ((v6 & 1) == 0)
      {
        return [v1 parentViewController];
      }

      return v1;
    }

    v5 = v3;
  }

  else if (!v4)
  {
    return v1;
  }

  return [v1 parentViewController];
}

uint64_t sub_1A499A950@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_1A499A9B4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x160);
  v4 = *a1;
  return v3(v2);
}

void sub_1A499AA24()
{
  v1 = *(v0 + qword_1EB12AB78);
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x528);
    v3 = v1;
    v2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1A499AAAC(uint64_t a1)
{
  v2 = *(v1 + qword_1EB12AB78);
  if (v2)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x530);
    v5 = v2;
    v4(a1);
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1A499AB54(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_1A499AA24();
  *a1 = v3;
  return sub_1A499AB9C;
}

void sub_1A499AB9C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A499AAAC(v2);
  }

  else
  {
    sub_1A499AAAC(*a1);
  }
}

id PhotosPagingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1A499ACB8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1A499B5B8();
}

id PhotosPagingViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosPagingViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1A499AD98(uint64_t a1)
{
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_1EB12AB80);

  sub_1A3C327F4(v2);
}

void (*sub_1A499AF6C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))();
  return sub_1A3D3D728;
}

void sub_1A499B014(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v2 + qword_1EB125F40) = 0;
  *(v2 + qword_1EB12AB70) = 0;
  *(v2 + qword_1EB12AB78) = 0;
  *(v2 + qword_1EB12AB80) = 1;
  v7 = *((v5 & v4) + 0x50);
  v8 = *((v5 & v4) + 0x58);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for PhotosPagingViewController(0, v7, v8, v9);
  v10 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  [v10 px_enableExtendedTraitCollection];
  type metadata accessor for PhotosPagingLayoutSpecManager();
  v11 = [v10 px_extendedTraitCollection];
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithExtendedTraitCollection_];

  type metadata accessor for PhotosPagingViewModel(0, v7, v8, v13);

  sub_1A48C1164(a1, v12);
}

void sub_1A499B2D0()
{
  *(v0 + qword_1EB125F40) = 0;
  *(v0 + qword_1EB12AB70) = 0;
  *(v0 + qword_1EB12AB78) = 0;
  *(v0 + qword_1EB12AB80) = 1;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A499B388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 56))(a2, ObjectType, v3);
}

void sub_1A499B3DC(uint64_t a1)
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v3 = *(v1 + qword_1EB12AB70);
    if (v3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x180);
      v5 = v3;
      v4(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A499B4A0()
{
  v1 = qword_1EB125F40;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A499B4E4()
{
  if (*(v0 + qword_1EB12AB70))
  {
    swift_unknownObjectRetain();
    sub_1A5245914();
  }

  __break(1u);
}

uint64_t type metadata accessor for PhotosDetailsFilenameWidgetView(uint64_t a1)
{
  result = qword_1EB1E3880;
  if (!qword_1EB1E3880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A499BA20(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x403C000000000000;
  v4 = type metadata accessor for PhotosDetailsFilenameWidgetView(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1A499C5F8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = (a2 + *(v4 + 24));
  type metadata accessor for PhotosDetailsFilenameWidgetViewModel(0);
  sub_1A499EFB8(&qword_1EB146568, type metadata accessor for PhotosDetailsFilenameWidgetViewModel, &unk_1A533DFE8);
  v8 = a1;
  *v6 = sub_1A5248494();
  v6[1] = v7;
  PXDisplayCollectionDetailedCountsMake();
}

void sub_1A499BB40(uint64_t a1@<X8>)
{
  v3 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v3);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A499EE04(0, &qword_1EB146570, sub_1A499C5C4);
  sub_1A499BEA4(v1, a1 + *(v4 + 44));
}

void sub_1A499BEA4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23[6] = a2;
  sub_1A3EE1D04(0);
  v23[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23[12] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB1286B0, MEMORY[0x1E6981148]);
  v23[9] = v5;
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v23[11] = v23 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v23[10] = v23 - v9;
  sub_1A4647D18(0);
  v23[1] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v23[5] = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v23[4] = v23 - v13;
  sub_1A499C6D4(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v23[3] = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  *v18 = sub_1A52492F4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_1A499EE04(0, &qword_1EB146648, sub_1A499C738);
  v20 = *(v19 + 44);
  v23[2] = v18;
  sub_1A499CE5C(a1, &v18[v20]);
  v21 = (*(a1 + *(type metadata accessor for PhotosDetailsFilenameWidgetView(0) + 24) + 8) + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_fileName);
  v22 = v21[1];
  v23[17] = *v21;
  v23[18] = v22;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A499C5F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A499C65C(uint64_t a1, double a2)
{
  if (!qword_1EB146580)
  {
    sub_1A499C6D4(255);
    sub_1A4647D18(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB146580);
    }
  }
}

void sub_1A499C6D4(uint64_t a1)
{
  if (!qword_1EB146588)
  {
    sub_1A499C738(255);
    sub_1A499C920();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146588);
    }
  }
}

void sub_1A499C738(uint64_t a1)
{
  if (!qword_1EB146590)
  {
    sub_1A499EECC(255, &qword_1EB146598, sub_1A44E10A0, sub_1A499C7D4, MEMORY[0x1E697F960]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146590);
    }
  }
}

void sub_1A499C878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A499C920()
{
  result = qword_1EB1465C0;
  if (!qword_1EB1465C0)
  {
    sub_1A499C738(255);
    sub_1A499C998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465C0);
  }

  return result;
}

unint64_t sub_1A499C998()
{
  result = qword_1EB1465C8;
  if (!qword_1EB1465C8)
  {
    sub_1A499EECC(255, &qword_1EB146598, sub_1A44E10A0, sub_1A499C7D4, MEMORY[0x1E697F960]);
    sub_1A499CBB4(&qword_1EB1465D0, sub_1A44E10A0, sub_1A4650ED0);
    sub_1A499CA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465C8);
  }

  return result;
}

unint64_t sub_1A499CA8C()
{
  result = qword_1EB1465D8;
  if (!qword_1EB1465D8)
  {
    sub_1A499C7D4(255);
    sub_1A499CB0C();
    sub_1A499CCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465D8);
  }

  return result;
}

unint64_t sub_1A499CB0C()
{
  result = qword_1EB1465E0;
  if (!qword_1EB1465E0)
  {
    sub_1A499C81C(255);
    sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465E0);
  }

  return result;
}

uint64_t sub_1A499CBB4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A499CC38(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A4647C7C(255, a2, a3);
    sub_1A499EFB8(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A499CCDC()
{
  result = qword_1EB1465F0;
  if (!qword_1EB1465F0)
  {
    sub_1A499C8E4(255);
    sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465F0);
  }

  return result;
}

void sub_1A499CDC8(uint64_t a1)
{
  if (!qword_1EB146600)
  {
    sub_1A499C5C4(255);
    sub_1A499EFB8(&qword_1EB146608, sub_1A499C5C4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146600);
    }
  }
}

uint64_t sub_1A499CE5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v201 = a2;
  sub_1A499C878(0, &qword_1EB146650, sub_1A499C83C, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v181 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v182 = v178 - v4;
  sub_1A499C8E4(0);
  v199 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v183 = v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697F948];
  sub_1A499EECC(0, &qword_1EB146658, sub_1A499C81C, sub_1A499C8E4, MEMORY[0x1E697F948]);
  v195 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v198 = v178 - v9;
  sub_1A499EE68(0, &qword_1EB146660, MEMORY[0x1E697F948]);
  v184 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v185 = v178 - v11;
  sub_1A499C81C(0);
  v196 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v186 = v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1A5249524();
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v15 = v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB128528, MEMORY[0x1E6981748]);
  v192 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v178 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v189 = v178 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v190 = v178 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v191 = v178 - v27;
  sub_1A499C83C(0);
  v194 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v193 = v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499C7D4(0);
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v197 = v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499EECC(0, &qword_1EB146668, sub_1A44E10A0, sub_1A499C7D4, v7);
  v34 = v33;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = v178 - v36;
  sub_1A44E10A0(0, v35);
  v39 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v41 = v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + *(type metadata accessor for PhotosDetailsFilenameWidgetView(0) + 24) + 8);
  if (*(v42 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_isSyndicatedGuestAsset) == 1)
  {
    v200 = a1;
    v43 = sub_1A524B544();
    v44 = sub_1A4448728(v43);
    KeyPath = swift_getKeyPath();
    *&v203 = v43;
    *(&v203 + 1) = KeyPath;
    *&v204 = v44;
    sub_1A429B9D8(0);
    sub_1A3E7440C();
    sub_1A524AAE4();

    sub_1A524BC74();
    sub_1A52481F4();
    v46 = &v41[*(v39 + 36)];
    v47 = v204;
    *v46 = v203;
    *(v46 + 1) = v47;
    *(v46 + 2) = v205;
    sub_1A499EF50(v41, v37, sub_1A44E10A0);
    swift_storeEnumTagMultiPayload();
    sub_1A499CBB4(&qword_1EB1465D0, sub_1A44E10A0, sub_1A4650ED0);
    sub_1A499CA8C();
    v48 = v201;
    sub_1A5249744();
    v49 = sub_1A44E10A0;
    v50 = v41;
LABEL_16:
    sub_1A499F000(v50, v49);
    sub_1A499EECC(0, &qword_1EB146598, sub_1A44E10A0, sub_1A499C7D4, MEMORY[0x1E697F960]);
    return (*(*(v177 - 8) + 56))(v48, 0, 1, v177);
  }

  v178[0] = v34;
  v178[1] = v39;
  v179 = v37;
  v180 = v31;
  if (*(v42 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_isiCloudEnabled) == 1)
  {
    v200 = a1;
    v51 = sub_1A4728304();
    if (v51 < 2)
    {
      *&v203 = sub_1A524B544();
      sub_1A499C5F8(0, &qword_1EB146670, MEMORY[0x1E697F5E0], MEMORY[0x1E69E6F90]);
      v105 = v187;
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1A52FC9F0;
      sub_1A52494F4();
      sub_1A52494E4();
      v202 = v106;
      sub_1A499EFB8(&qword_1EB12EC88, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
      sub_1A3F37230(0);
      sub_1A499EFB8(&qword_1EB12EC98, sub_1A3F37230, MEMORY[0x1E69E6328]);
      v107 = v188;
      sub_1A524E224();
      v108 = v189;
      sub_1A524AAA4();
      (*(v105 + 8))(v15, v107);

      v109 = sub_1A524C634();
      v110 = PXLocalizedString(v109);

      v111 = sub_1A524C674();
      v113 = v112;

      *&v203 = v111;
      *(&v203 + 1) = v113;
      sub_1A3D5F9DC();
      v114 = sub_1A524A464();
      v116 = v115;
      v118 = v117;
      v119 = v190;
      sub_1A5248764();
      sub_1A3E04DF4(v114, v116, v118 & 1);

      v120 = MEMORY[0x1E6981748];
      sub_1A465075C(v108, &qword_1EB128528, MEMORY[0x1E6981748]);
      v121 = sub_1A524C634();
      v122 = PXLocalizedString(v121);

      v123 = sub_1A524C674();
      v125 = v124;

      *&v203 = v123;
      *(&v203 + 1) = v125;
      v126 = sub_1A524A464();
      v128 = v127;
      LOBYTE(v125) = v129;
      v130 = v191;
      sub_1A5248774();
      sub_1A3E04DF4(v126, v128, v125 & 1);

      sub_1A465075C(v119, &qword_1EB128528, v120);
      v131 = v193;
      sub_1A5248744();
      v132 = sub_1A465075C(v130, &qword_1EB128528, v120);
      v133 = sub_1A4448728(v132);
      v134 = swift_getKeyPath();
      sub_1A4647BEC(0);
      v136 = (v131 + *(v135 + 36));
      *v136 = v134;
      v136[1] = v133;
      sub_1A524BC74();
      sub_1A52481F4();
      v137 = (v131 + *(v194 + 36));
      v138 = v204;
      *v137 = v203;
      v137[1] = v138;
      v137[2] = v205;
      sub_1A499EF50(v131, v182, sub_1A499C83C);
      swift_storeEnumTagMultiPayload();
      sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
      v139 = v183;
      sub_1A5249744();
      sub_1A499EF50(v139, v198, sub_1A499C8E4);
      swift_storeEnumTagMultiPayload();
      sub_1A499CB0C();
      sub_1A499CCDC();
      v98 = v197;
      sub_1A5249744();
      sub_1A499F000(v139, sub_1A499C8E4);
      v140 = sub_1A499C83C;
      v141 = v131;
    }

    else
    {
      if (v51 - 3 < 2)
      {
        *&v203 = sub_1A524B544();
        sub_1A499C5F8(0, &qword_1EB146670, MEMORY[0x1E697F5E0], MEMORY[0x1E69E6F90]);
        v52 = v187;
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1A52FC9F0;
        sub_1A52494F4();
        sub_1A52494E4();
        v202 = v53;
        sub_1A499EFB8(&qword_1EB12EC88, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
        sub_1A3F37230(0);
        sub_1A499EFB8(&qword_1EB12EC98, sub_1A3F37230, MEMORY[0x1E69E6328]);
        v54 = v188;
        sub_1A524E224();
        v55 = MEMORY[0x1E6981748];
        sub_1A524AAA4();
        v56 = *(v52 + 8);
        v56(v15, v54);

        sub_1A5249504();
        sub_1A5248784();
        v56(v15, v54);
        sub_1A465075C(v18, &qword_1EB128528, v55);
        v57 = sub_1A524C634();
        v58 = PXLocalizedString(v57);

        v59 = sub_1A524C674();
        v61 = v60;

        *&v203 = v59;
        *(&v203 + 1) = v61;
        sub_1A3D5F9DC();
        v62 = sub_1A524A464();
        v64 = v63;
        LOBYTE(v55) = v65;
        v66 = v189;
        sub_1A5248764();
        sub_1A3E04DF4(v62, v64, v55 & 1);

        v67 = MEMORY[0x1E6981748];
        sub_1A465075C(v21, &qword_1EB128528, MEMORY[0x1E6981748]);
        v68 = sub_1A524C634();
        v69 = PXLocalizedString(v68);

        v70 = sub_1A524C674();
        v72 = v71;

        *&v203 = v70;
        *(&v203 + 1) = v72;
        v73 = sub_1A524A464();
        v75 = v74;
        LOBYTE(v56) = v76;
        v77 = v190;
        sub_1A5248754();
        sub_1A3E04DF4(v73, v75, v56 & 1);

        sub_1A465075C(v66, &qword_1EB128528, v67);
        v78 = sub_1A524C634();
        v79 = PXLocalizedString(v78);

        v80 = sub_1A524C674();
        v82 = v81;

        *&v203 = v80;
        *(&v203 + 1) = v82;
        v83 = sub_1A524A464();
        v85 = v84;
        LOBYTE(v82) = v86;
        v87 = v191;
        sub_1A5248774();
        sub_1A3E04DF4(v83, v85, v82 & 1);

        v88 = MEMORY[0x1E6981748];
        sub_1A465075C(v77, &qword_1EB128528, MEMORY[0x1E6981748]);
        v89 = v193;
        sub_1A5248744();
        sub_1A465075C(v87, &qword_1EB128528, v88);
        v91 = sub_1A444872C(v90);
        v92 = swift_getKeyPath();
        sub_1A4647BEC(0);
        v94 = (v89 + *(v93 + 36));
        *v94 = v92;
        v94[1] = v91;
        sub_1A524BC74();
        sub_1A52481F4();
        v95 = (v89 + *(v194 + 36));
        v96 = v204;
        *v95 = v203;
        v95[1] = v96;
        v95[2] = v205;
        sub_1A499EF50(v89, v185, sub_1A499C83C);
        swift_storeEnumTagMultiPayload();
        sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
        v97 = v186;
        sub_1A5249744();
        sub_1A499EF50(v97, v198, sub_1A499C81C);
        swift_storeEnumTagMultiPayload();
        sub_1A499CB0C();
        sub_1A499CCDC();
        v98 = v197;
        sub_1A5249744();
        sub_1A499F000(v97, sub_1A499C81C);
        v99 = sub_1A499C83C;
LABEL_14:
        v140 = v99;
        v141 = v89;
        goto LABEL_15;
      }

      if (v51 != 2)
      {
        swift_storeEnumTagMultiPayload();
        sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
        v89 = v183;
        sub_1A5249744();
        sub_1A499EF50(v89, v198, sub_1A499C8E4);
        swift_storeEnumTagMultiPayload();
        sub_1A499CB0C();
        sub_1A499CCDC();
        v98 = v197;
        sub_1A5249744();
        v99 = sub_1A499C8E4;
        goto LABEL_14;
      }

      *&v203 = sub_1A524B544();
      sub_1A499C5F8(0, &qword_1EB146670, MEMORY[0x1E697F5E0], MEMORY[0x1E69E6F90]);
      v142 = v187;
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_1A52FC9F0;
      sub_1A52494F4();
      sub_1A52494E4();
      v202 = v143;
      sub_1A499EFB8(&qword_1EB12EC88, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
      sub_1A3F37230(0);
      sub_1A499EFB8(&qword_1EB12EC98, sub_1A3F37230, MEMORY[0x1E69E6328]);
      v144 = v188;
      sub_1A524E224();
      v145 = v189;
      sub_1A524AAA4();
      (*(v142 + 8))(v15, v144);

      v146 = sub_1A524C634();
      v147 = PXLocalizedString(v146);

      v148 = sub_1A524C674();
      v150 = v149;

      *&v203 = v148;
      *(&v203 + 1) = v150;
      sub_1A3D5F9DC();
      v151 = sub_1A524A464();
      v153 = v152;
      v155 = v154;
      v156 = v190;
      sub_1A5248764();
      sub_1A3E04DF4(v151, v153, v155 & 1);

      v157 = MEMORY[0x1E6981748];
      sub_1A465075C(v145, &qword_1EB128528, MEMORY[0x1E6981748]);
      v158 = sub_1A524C634();
      v159 = PXLocalizedString(v158);

      v160 = sub_1A524C674();
      v162 = v161;

      *&v203 = v160;
      *(&v203 + 1) = v162;
      v163 = sub_1A524A464();
      v165 = v164;
      LOBYTE(v159) = v166;
      v167 = v191;
      sub_1A5248774();
      sub_1A3E04DF4(v163, v165, v159 & 1);

      sub_1A465075C(v156, &qword_1EB128528, v157);
      v168 = v193;
      sub_1A5248744();
      v169 = sub_1A465075C(v167, &qword_1EB128528, v157);
      v170 = sub_1A4448728(v169);
      v171 = swift_getKeyPath();
      sub_1A4647BEC(0);
      v173 = (v168 + *(v172 + 36));
      *v173 = v171;
      v173[1] = v170;
      sub_1A524BC74();
      sub_1A52481F4();
      v174 = (v168 + *(v194 + 36));
      v175 = v204;
      *v174 = v203;
      v174[1] = v175;
      v174[2] = v205;
      sub_1A499EF50(v168, v185, sub_1A499C83C);
      swift_storeEnumTagMultiPayload();
      sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
      v176 = v186;
      sub_1A5249744();
      sub_1A499EF50(v176, v198, sub_1A499C81C);
      swift_storeEnumTagMultiPayload();
      sub_1A499CB0C();
      sub_1A499CCDC();
      v98 = v197;
      sub_1A5249744();
      sub_1A499F000(v176, sub_1A499C81C);
      v140 = sub_1A499C83C;
      v141 = v168;
    }

LABEL_15:
    sub_1A499F000(v141, v140);
    v48 = v201;
    sub_1A499EF50(v98, v179, sub_1A499C7D4);
    swift_storeEnumTagMultiPayload();
    sub_1A499CBB4(&qword_1EB1465D0, sub_1A44E10A0, sub_1A4650ED0);
    sub_1A499CA8C();
    sub_1A5249744();
    v49 = sub_1A499C7D4;
    v50 = v98;
    goto LABEL_16;
  }

  sub_1A499EECC(0, &qword_1EB146598, sub_1A44E10A0, sub_1A499C7D4, MEMORY[0x1E697F960]);
  v101 = *(*(v100 - 8) + 56);
  v102 = v100;
  v103 = v201;

  return v101(v103, 1, 1, v102);
}