void sub_1A3CAFF98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A3C6D46C(255, &qword_1EB126FE0, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, MEMORY[0x1E69E5FE0], v6, MEMORY[0x1E69E5FE8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 assetCollectionType] - 4;
  if (v2 < 0xA && ((0x215u >> v2) & 1) != 0)
  {
    ShouldShowUnsavedAssetsForAssetCollectionSubtype = 1;
  }

  else
  {
    ShouldShowUnsavedAssetsForAssetCollectionSubtype = _PXContentSyndicationShouldShowUnsavedAssetsForAssetCollectionSubtype([v1 assetCollectionSubtype]);
  }

  return ShouldShowUnsavedAssetsForAssetCollectionSubtype;
}

void sub_1A3CB0084(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v18 = a4;
  v19 = a3;
  v5 = *a5;
  v6 = sub_1A524BEE4();
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v15 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v14 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v12[6] = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BFC4();
  v12[5] = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v12[4] = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotoKitItemListManager(255, *(v5 + 80), v10, v11);
  sub_1A5245E14();
}

id sub_1A3CB0728(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C37A4C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v6 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  [v6 setIncludeScreenRecordingsSmartAlbum_];
  [v6 setIncludeProResSmartAlbum_];
  sub_1A3CA5F64(a2, v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v5;
    v8 = v5[1];
    v10 = objc_opt_self();
    sub_1A3C37060(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    v12 = sub_1A524CA14();

    v13 = [v10 fetchAssetCollectionsWithLocalIdentifiers:v12 options:v6];

LABEL_5:
    return v13;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v14 = objc_opt_self();
    PXDisplayCollectionDetailedCountsMake();
    v13 = [v14 fetchAssetCollectionsWithType:2 subtype:v15 options:v6];
    goto LABEL_5;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1A524E404();

  v18 = 0xD00000000000001BLL;
  v19 = 0x80000001A53B42A0;
  sub_1A41D2ED0(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C618);
  v17 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v17);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A3CB0A08(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A3CB0728(a1, v4);
}

uint64_t sub_1A3CB0A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3CB0AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3CB0C38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v2, 0);
    v25 = v26;
    v3 = a1 + 64;
    v4 = sub_1A524E234();
    v5 = 0;
    v6 = *(a1 + 36);
    v22 = v2;
    v23 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v24 = v5;
      v9 = *(*(a1 + 56) + 8 * v4);
      MEMORY[0x1A5907B60](40, 0xE100000000000000);
      sub_1A524E624();
      MEMORY[0x1A5907B60](8250, 0xE200000000000000);
      [v9 count];
      v10 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v10);

      MEMORY[0x1A5907B60](41, 0xE100000000000000);

      v11 = v25;
      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A3C57108((v12 > 1), v13 + 1, 1);
        v11 = v25;
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11 + 16 * v13;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0xE000000000000000;
      v7 = 1 << *(a1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v15 = *(a1 + 64 + 8 * v8);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v25 = v11;
      v6 = v23;
      if (v23 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = (a1 + 72 + 8 * v8);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1A3CAD6E8(v4, v23, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_1A3CAD6E8(v4, v23, 0);
      }

LABEL_4:
      v5 = v24 + 1;
      v4 = v7;
      if (v24 + 1 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1A3CB0F20()
{
  v0 = sub_1A3CAAD44();
  v1 = *(*v0 + *MEMORY[0x1E69E6B68] + 16);
  v2 = (*(*v0 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v2));
  sub_1A3CB0FE0((v0 + v1));
}

id PHObject.itemID.getter()
{
  v1 = [v0 px_opaqueIdentifier];

  return v1;
}

void sub_1A3CB1050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A43FC0E4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    v7 = sub_1A3CAB9BC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1A43FC22C();
        v11 = v14;
      }

      sub_1A3CB1208(v9, v11, v12);
      *v3 = v11;
    }
  }
}

void sub_1A3CB11F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A3CB1208(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1A524E244() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = sub_1A524EC84();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A3CB1378(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3CAB9BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3CAFD18(v14, a3 & 1);
      result = sub_1A3CAB9BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A3F91160();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1A3CB1988()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A3CB1A20(v4, v5, v6, v2, v3);
}

uint64_t sub_1A3CB1A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = sub_1A5243B64();
  v5[10] = swift_task_alloc();
  sub_1A524CC54();
  v5[11] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3CB1AF8, v7, v6);
}

uint64_t sub_1A3CB1AF8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[5] = Strong;
    v2 = v0[8];
    v3 = Strong;

    swift_getAtKeyPath();

    v4 = v0[6];
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    sub_1A52415B4();

    sub_1A5248604();
  }

  v7 = v0[1];

  return v7();
}

id sub_1A3CB1C50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3CB1C7C();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_117Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for LemonadeShelfContents.VisibilityTracker(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CB1E3C(uint64_t a1)
{
  if (*(v1 + 104))
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
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();
  }

  *(v1 + 104) = 0;

  if (*(v1 + 112))
  {

    sub_1A5245804();
  }

  __break(1u);
  return result;
}

void *sub_1A3CB2058()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

double sub_1A3CB237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A3CB23D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

uint64_t sub_1A3CB2430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v61 = a6;
  v68 = a3;
  v8 = sub_1A5246EA4();
  v71 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1A5246E54();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A524BEE4();
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v64 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1A524BF64();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v69 = v8;
    v70 = v9;
    *&aBlock = 0;
    sub_1A5245824();
  }

  v59[1] = Strong;
  v67 = a2;
  v60 = v10;
  isUniquelyReferenced_nonNull_native = PHPhotoLibrary.fetcher.getter(Strong, v14);
  v16 = sub_1A3CB2E20(MEMORY[0x1E69E7CC0]);
  v81 = v16;
  v69 = a5;
  if (a5 >> 62)
  {
LABEL_42:
    v17 = sub_1A524E2B4();
  }

  else
  {
    v17 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v68;
  v19 = v67;
  v70 = isUniquelyReferenced_nonNull_native;
  if (!v17)
  {
LABEL_35:
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v50 = sub_1A524D474();
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = v19;
    v52[4] = v18;
    v52[5] = v16;
    v52[6] = v61;
    v77 = sub_1A3FB88DC;
    v78 = v52;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v76 = sub_1A3C2E0D0;
    *(&v76 + 1) = &block_descriptor_125;
    v53 = _Block_copy(&aBlock);

    v54 = v62;
    sub_1A524BF14();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v55 = MEMORY[0x1E69E7F60];
    sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v55, MEMORY[0x1E69E6328]);
    v56 = v64;
    v57 = v60;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v54, v56, v53);

    _Block_release(v53);

    (*(v66 + 8))(v56, v57);
    return (*(v63 + 8))(v54, v65);
  }

  v16 = 0;
  v20 = v69;
  v21 = v69 & 0xC000000000000001;
  v22 = v69 & 0xFFFFFFFFFFFFFF8;
  v71 = v17;
  while (1)
  {
    if (v21)
    {
      v24 = MEMORY[0x1A59097F0](v16, v20);
      v25 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v16 >= *(v22 + 16))
      {
        goto LABEL_38;
      }

      v24 = *(v20 + 8 * v16 + 32);
      v25 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v79 = 4;
    v80 = 0;
    v26 = v24;
    v27 = sub_1A3C6E9EC();
    v28 = sub_1A3C6E9EC();
    PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v27, v28, 0, 1, 0, &aBlock);
    v72[0] = aBlock;
    v72[1] = v76;
    v73 = v77;
    v74 = v78;
    v29 = PhotoKitFetcher.fetch(_:for:options:)(&v79, v26, v72);
    v30 = v74;

    if (!v29)
    {
      goto LABEL_7;
    }

    v31 = [v29 firstObject];

    if (!v31)
    {
      goto LABEL_7;
    }

    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (!v32)
    {

      v17 = v71;
LABEL_7:
      v23 = sub_1A3CBBAF4(v26);

      goto LABEL_8;
    }

    v33 = v32;
    v34 = v81;
    if ((v81 & 0xC000000000000001) != 0)
    {
      if (v81 >= 0)
      {
        v34 = v81 & 0xFFFFFFFFFFFFFF8;
      }

      v35 = sub_1A524E2B4();
      if (__OFADD__(v35, 1))
      {
        goto LABEL_40;
      }

      v34 = sub_1A3FB6C28(v34, v35 + 1);
      v81 = v34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v34;
    v37 = sub_1A3CBBC40(v26);
    v38 = *(v34 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_39;
    }

    v41 = v36;
    if (*(v34 + 24) >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3FB74A8();
      }

      goto LABEL_26;
    }

    sub_1A3FB6E64(v40, isUniquelyReferenced_nonNull_native);
    v42 = sub_1A3CBBC40(v26);
    if ((v41 & 1) != (v43 & 1))
    {
      break;
    }

    v37 = v42;
LABEL_26:
    isUniquelyReferenced_nonNull_native = v70;
    v44 = aBlock;
    if (v41)
    {
      v45 = *(aBlock + 56);
      v46 = *(v45 + 8 * v37);
      *(v45 + 8 * v37) = v33;
    }

    else
    {
      *(aBlock + 8 * (v37 >> 6) + 64) |= 1 << v37;
      *(v44[6] + 8 * v37) = v26;
      *(v44[7] + 8 * v37) = v33;

      v47 = v44[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_41;
      }

      v44[2] = v49;
    }

    v81 = v44;
    v20 = v69;
    v17 = v71;
LABEL_8:
    ++v16;
    if (v25 == v17)
    {
      v16 = v81;
      v18 = v68;
      v19 = v67;
      goto LABEL_35;
    }
  }

  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

unint64_t sub_1A3CB2E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3FB8960(0);
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A3CBBC40(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

id sub_1A3CB2F0C(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = *(a3 + 32);
  v10 = a3[5];
  if (*(a1 + 8) != 1)
  {
    if (v4 >= 4)
    {
      if (v4 - 4 >= 2)
      {
        MEMORY[0x1A5907B60](0x7463657078656E55, 0xEB00000000206465);
        type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
        sub_1A524E624();
        result = sub_1A524E6E4();
        __break(1u);
        return result;
      }

      v12 = a2;
      if ([a2 isTransient])
      {
        v15 = v10;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
      [v13 setCurationKind_];
      [v13 setFetchLimit_];
      v16 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v8);
      [v13 setOptions_];
      if (v7)
      {
        sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
        v7 = sub_1A524CA14();
      }
    }

    else
    {
      v12 = a2;
      v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
      [v13 setCurationKind_];
      [v13 setFetchLimit_];
      v14 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v8);
      [v13 setOptions_];
      if (v7)
      {
        sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
        v7 = sub_1A524CA14();
      }
    }

    [v13 setReferencePersons_];

    [v13 setReverseSortOrder_];
    [v13 setLibraryFilter_];
    [v13 setFilterPredicate_];
    v17 = [*(v3 + 24) fetchAssetsInContainer:v12 configuration:v13];

    return v17;
  }

  if (v4 < 2)
  {
    return 0;
  }

  v20 = a3[5];
  v21 = 0;
  v22 = 0;
  v18[0] = v6;
  v18[1] = v5;
  v18[2] = v7;
  v18[3] = v8;
  v19 = v9;
  return sub_1A3CB2F0C(&v21, a2, v18);
}

void sub_1A3CB32F8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v10 = *(a3 + 16);
  if (!(*v4 >> 62))
  {
    v11 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v10);
    v13 = v11 + v10;
    if (!v12)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = sub_1A524E2B4();
  v12 = __OFADD__(v19, v10);
  v13 = v19 + v10;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1A3CB34F8(v13, 1);
  v5 = *v4;
  v6 = *v4 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v6 + 0x10);
  v15 = (*(v6 + 0x18) >> 1) - v14;
  v16 = sub_1A3CB35E8(&v33, v6 + 8 * v14 + 32, v15, a1, a2, a3);
  if (v16 < v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16 >= 1)
  {
    v17 = *(v6 + 16);
    v12 = __OFADD__(v17, v16);
    v18 = v17 + v16;
    if (v12)
    {
      __break(1u);
LABEL_26:
      *(v32 + 16) = v6;
      goto LABEL_8;
    }

    *(v6 + 16) = v18;
  }

  if (v16 != v15)
  {
LABEL_8:

    *v4 = v5;
    return;
  }

LABEL_13:
  v20 = v34;
  v21 = *(v34 + 16);
  if (v35 == v21)
  {
    goto LABEL_8;
  }

  if (v35 < v21)
  {
    v22 = *(v6 + 16);
    v23 = v34 + 32;
    v24 = v35 + 1;
    v25 = *(v34 + 32 + 8 * v35);

    while (1)
    {
LABEL_17:
      if (v22 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      v5 = *v4;
      v26 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v27 = v26 - v22;
      if (v26 > v22)
      {
        break;
      }

      *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v22;
    }

    v31 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    v32 = *v4 & 0xFFFFFFFFFFFFFF8;
    v28 = (v32 + 8 * v22 + 32);
    v6 = v22 + 1;
    while (1)
    {
      *v28 = v25;
      v29 = *(v20 + 16);
      if (v24 == v29)
      {
        goto LABEL_26;
      }

      if (v24 >= v29)
      {
        __break(1u);
        break;
      }

      v30 = v24 + 1;
      v25 = *(v23 + 8 * v24);

      ++v28;
      ++v6;
      ++v24;
      if (!--v27)
      {
        v22 = v31;
        v24 = v30;
        *(v32 + 16) = v31;
        goto LABEL_17;
      }
    }
  }

  __break(1u);
}

unint64_t sub_1A3CB34F8(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_1A524E2B4();
    }

    result = sub_1A524E494();
    *v2 = result;
  }

  return result;
}

void *sub_1A3CB35E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a6 + 16);
    if (v6)
    {
      v8 = a4;
      v9 = result;
      v10 = a5;
      v11 = 0;
      v12 = a6;
      v13 = a6 + 32;
      v14 = a3;
      v15 = a3 - 1;
      while (1)
      {
        *(a2 + 8 * v11) = *(v13 + 8 * v11);
        if (v15 == v11)
        {
          break;
        }

        if (v6 == ++v11)
        {
          a3 = v6;
          a6 = v12;
          a5 = v10;
          result = v9;
          a4 = v8;
          goto LABEL_12;
        }
      }

      a6 = v12;
      a5 = v10;
      result = v9;
      a4 = v8;
      a3 = v14;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3CB36CC(unint64_t a1, __n128 a2)
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
    result = v5 + v4;
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
  result = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3CB34F8(result, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A3CB3820(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
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
    return result;
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
  return result;
}

id sub_1A3CB37BC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = sub_1A524C634();

  return v6;
}

uint64_t sub_1A3CB3820(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
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
          sub_1A3FB8118(0, &qword_1EB126EF8, type metadata accessor for LemonadeSuggestedSearchCollection);
          sub_1A3C9AC88(&qword_1EB12F978, &qword_1EB126EF8, type metadata accessor for LemonadeSuggestedSearchCollection, MEMORY[0x1E69E6340]);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3E5C4E4(v14, i, a3);
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
        type metadata accessor for LemonadeSuggestedSearchCollection(0);
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

void sub_1A3CB39F8(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3, void *a4)
{
  v6 = a2(a1);
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3CB3A40(unint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1A524E2B4();
    if (v6 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v6)
  {
    return 1;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v42 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 < 0)
  {
    v8 = v4;
  }

  if (v5)
  {
    v9 = v8;
  }

  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v41 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v10 = a2;
  }

  if (a2 >> 62)
  {
    v11 = v10;
  }

  if (v9 == v11)
  {
    return 1;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v47 = a2 & 0xC000000000000001;
    v48 = v4 & 0xC000000000000001;
    v44 = v6;
    v12 = 4;
    v45 = v4;
    v46 = a2;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v6 = sub_1A524E2B4();
        goto LABEL_3;
      }

      if (v48)
      {
        v5 = MEMORY[0x1A59097F0](v12 - 4, v4, a3);
        if (v47)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v13 >= *(v42 + 16))
        {
          goto LABEL_42;
        }

        v5 = *(v4 + 8 * v12);

        if (v47)
        {
LABEL_22:
          v15 = MEMORY[0x1A59097F0](v12 - 4, a2);
          if (v5 == v15)
          {
            goto LABEL_17;
          }

          goto LABEL_28;
        }
      }

      if (v13 >= *(v41 + 16))
      {
        goto LABEL_43;
      }

      v15 = *(a2 + 8 * v12);

      if (v5 == v15)
      {
        goto LABEL_17;
      }

LABEL_28:
      v16 = *(v5 + 32);
      if (*(v5 + 56))
      {
        v17 = v16;
        strcpy(v49, "user-search-");
        BYTE5(v49[1]) = 0;
        HIWORD(v49[1]) = -5120;
        v18 = [v17 string];
        v19 = sub_1A524C674();
        v21 = v20;

        MEMORY[0x1A5907B60](v19, v21);
      }

      else
      {
        v23 = *(v5 + 40);
        v22 = *(v5 + 48);
        v24 = v16;
        sub_1A524E404();

        v49[0] = 0xD000000000000011;
        v49[1] = 0x80000001A53BFEA0;
        v25 = [v24 uuid];
        v26 = sub_1A524C674();
        v28 = v27;

        MEMORY[0x1A5907B60](v26, v28);

        sub_1A3FAE3DC(v16, v23, v22, 0);
      }

      v30 = v49[0];
      v29 = v49[1];
      v31 = *(v15 + 32);
      if (*(v15 + 56))
      {
        v5 = v31;
        strcpy(v49, "user-search-");
        BYTE5(v49[1]) = 0;
        HIWORD(v49[1]) = -5120;
        v32 = [v5 string];
        v33 = sub_1A524C674();
        v35 = v34;

        MEMORY[0x1A5907B60](v33, v35);
      }

      else
      {
        v36 = *(v15 + 40);
        v43 = *(v15 + 48);
        v37 = v31;
        sub_1A524E404();

        v49[0] = 0xD000000000000011;
        v49[1] = 0x80000001A53BFEA0;
        v5 = [v37 uuid];
        v38 = sub_1A524C674();
        v40 = v39;

        MEMORY[0x1A5907B60](v38, v40);

        sub_1A3FAE3DC(v31, v36, v43, 0);
      }

      v4 = v45;
      a2 = v46;
      v6 = v44;
      v14 = v12 - 3;
      if (v30 == v49[0] && v29 == v49[1])
      {

LABEL_17:

        goto LABEL_18;
      }

      v5 = sub_1A524EAB4();

      if ((v5 & 1) == 0)
      {
        return 0;
      }

LABEL_18:
      ++v12;
      if (v14 == v6)
      {
        return 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12PhotosUICore16PXGridTipsHelperC6setTip_13isPresentableySS_SbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1A3CB40B4();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_1A524EAB4() & 1) != 0)
  {

    return sub_1A3FD53B8(a3 & 1);
  }

  else
  {
    v9 = sub_1A3CB3EC8();
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1A524EAB4() & 1) != 0)
    {

      return sub_1A3CB40D8(a3 & 1);
    }

    else
    {
      v11 = sub_1A3C92168();
      if (*v11 == a1 && v11[1] == a2 || (sub_1A524EAB4() & 1) != 0)
      {

        return sub_1A3FD5B54(a3 & 1);
      }

      else
      {
        v12 = sub_1A3C92768();
        if (*v12 == a1 && v12[1] == a2 || (result = sub_1A524EAB4(), (result & 1) != 0))
        {

          return sub_1A3FD5D18(a3 & 1);
        }
      }
    }
  }

  return result;
}

void sub_1A3CB40FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xC8))();

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *((*v1 & *v3) + 0x90);
      v6 = sub_1A3CB44DC();
      v5(v6, &type metadata for SwitchLibraryTip, v6);
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    (*((*v1 & *v7) + 0xE0))();

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = *((*v1 & *v9) + 0x90);
      v12 = sub_1A3CB5C68();
      v11(v12, &type metadata for SyndicatedAssetsTip, v12);
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    (*((*v1 & *v13) + 0xF8))();

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = *((*v1 & *v15) + 0x90);
      v18 = sub_1A3CB5D80();
      v17(v18, &type metadata for FilterAllPhotosTip, v18);
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*((*v1 & *v19) + 0x110))();

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = *((*v1 & *v21) + 0x90);
      v24 = sub_1A3CB6438();
      v23(v24, &type metadata for FilterScreenshotsHiddenTip, v24);
    }
  }
}

uint64_t _PXContentSyndicationShouldShowUnsavedAssetsForAssetCollectionSubtype(uint64_t a1)
{
  v1 = 0;
  if (a1 > 1000000204)
  {
    if ((a1 - 1000000301) < 4)
    {
      v3 = +[PXContentSyndicationSettings sharedInstance];
      v1 = [v3 enableFilteringCuratedGridsForContentSyndication] ^ 1;

      return v1;
    }

    if (a1 == 1000000212 || a1 == 1000000205)
    {
      return 1;
    }
  }

  else if ((a1 - 201) <= 0x14 && ((1 << (a1 + 55)) & 0x177FC3) != 0)
  {
    return 1;
  }

  return v1;
}

unint64_t sub_1A3CB44DC()
{
  result = qword_1EB12A478;
  if (!qword_1EB12A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A478);
  }

  return result;
}

uint64_t sub_1A3CB4530(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_1A3CB4D08();
  __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  sub_1A52477A4();
  return swift_endAccess();
}

unint64_t sub_1A3CB45FC()
{
  result = qword_1EB12A470;
  if (!qword_1EB12A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A470);
  }

  return result;
}

uint64_t sub_1A3CB4650(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3CB4D08();
  v7 = v6;
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v7, a2);
  sub_1A3CB4D68(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3CB47B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A3C567C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  result = swift_beginAccess();
  if (byte_1EB1EB7E1 == 1)
  {
    v39 = v3;
    v40 = v7;
    swift_beginAccess();
    v13 = qword_1EB1EB798;
    if (qword_1EB1EB798)
    {
      v14 = sub_1A5247414();
      if (*(v13 + 16))
      {
        v38 = a3;
        v16 = sub_1A3C5DCA4(v14, v15);
        v18 = v17;

        if (v18)
        {
          sub_1A3C341C8(*(v13 + 56) + 40 * v16, &v42);
        }

        else
        {
          v44 = 0;
          v42 = 0u;
          v43 = 0u;
        }

        a3 = v38;
      }

      else
      {

        v44 = 0;
        v42 = 0u;
        v43 = 0u;
      }

      swift_endAccess();
      if (*(&v43 + 1))
      {
        return sub_1A3CB4E58(&v42, &qword_1EB128BC8, sub_1A3CB4F50);
      }
    }

    else
    {
      swift_endAccess();
      v42 = 0u;
      v43 = 0u;
      v44 = 0;
    }

    sub_1A3CB4E58(&v42, &qword_1EB128BC8, sub_1A3CB4F50);
    swift_beginAccess();
    if (qword_1EB1EB798)
    {
      v19 = sub_1A5247414();
      v20 = a3;
      v22 = v21;
      *(&v43 + 1) = a2;
      v44 = v20;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v40 + 16))(boxed_opaque_existential_1, a1, a2);
      v24 = v22;
      a3 = v20;
      sub_1A3CB4FB4(&v42, v19, v24);
    }

    swift_endAccess();
    swift_beginAccess();
    if (qword_1EB1EB7D8)
    {
      v25 = sub_1A5247414();
      v37 = v26;
      v38 = v25;
      v27 = sub_1A524CCB4();
      (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
      v28 = v40;
      (*(v40 + 16))(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
      sub_1A524CC54();
      v29 = v39;
      v30 = sub_1A524CC44();
      v31 = (*(v28 + 80) + 48) & ~*(v28 + 80);
      v32 = swift_allocObject();
      v33 = MEMORY[0x1E69E85E0];
      *(v32 + 2) = v30;
      *(v32 + 3) = v33;
      *(v32 + 4) = a2;
      *(v32 + 5) = a3;
      (*(v28 + 32))(&v32[v31], &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      *&v32[(v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8] = v29;
      v34 = sub_1A3D4D930(0, 0, v11, &unk_1A534DEE8, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = qword_1EB1EB7D8;
      qword_1EB1EB7D8 = 0x8000000000000000;
      sub_1A3CB5580(v34, v38, v37, isUniquelyReferenced_nonNull_native);

      qword_1EB1EB7D8 = v41;
    }

    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1A3CB4C38()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1A3CB4D08()
{
  if (!qword_1EB12B1E8)
  {
    v0 = sub_1A52477B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B1E8);
    }
  }
}

void sub_1A3CB4D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3CB4DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56408(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3CB4E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C567C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A3CB4F50()
{
  result = qword_1EB128BD0;
  if (!qword_1EB128BD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB128BD0);
  }

  return result;
}

uint64_t sub_1A3CB4FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A3C34460(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1A3CB509C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1A3CB4E58(a1, &qword_1EB128BC8, sub_1A3CB4F50);
    sub_1A45C2244(a2, a3, v9);

    return sub_1A3CB4E58(v9, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  return result;
}

void sub_1A3CB509C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 < v16 || (a4 & 1) != 0)
  {
    sub_1A3CB51F0(v16, a4 & 1);
    v11 = sub_1A3C5DCA4(a2, a3);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_16:
    sub_1A524EB84();
    __break(1u);
    return;
  }

  v19 = v11;
  sub_1A45C262C();
  v11 = v19;
LABEL_8:
  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    sub_1A3CB5510(v11, a2, a3, a1, v21);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v22 = (v21[7] + 40 * v11);
  __swift_destroy_boxed_opaque_existential_0(v22);

  sub_1A3C34460(a1, v22);
}

uint64_t sub_1A3CB51F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3C926A0(0, &qword_1EB126448, sub_1A3CB4F50);
  v33 = v4;
  result = sub_1A524E774();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if ((v33 & 1) == 0)
      {
        sub_1A3C341C8(v24, v34);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3C34460(v24, v34);
      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A3C34460(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3CB5510(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A3C34460(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1A3CB5580(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_1A3CB56FC(v16, a4 & 1);
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
      sub_1A45C24AC();
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

uint64_t sub_1A3CB56FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3C926A0(0, &qword_1EB12B128, sub_1A3CB59B4);
  v34 = v4;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1A3CB59B4()
{
  if (!qword_1EB12B1A8)
  {
    v0 = sub_1A524CDB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B1A8);
    }
  }
}

BOOL _s12PhotosUICore12PXTipsHelperC16isTipInvalidatedySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5247794();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (byte_1EB1EB7E1 == 1)
  {
    swift_beginAccess();
    v8 = qword_1EB1EB798;
    if (qword_1EB1EB798)
    {
      if (*(qword_1EB1EB798 + 16) && (v9 = sub_1A3C5DCA4(a1, a2), (v10 & 1) != 0))
      {
        sub_1A3C341C8(*(v8 + 56) + 40 * v9, &v14);
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }

      swift_endAccess();
      if (*(&v15 + 1))
      {
        sub_1A3C34460(&v14, v17);
        __swift_project_boxed_opaque_existential_1(v17, v17[3]);
        sub_1A5247474();
        v11 = (*(v5 + 88))(v7, v4) == *MEMORY[0x1E6982B68];
        (*(v5 + 8))(v7, v4);
        __swift_destroy_boxed_opaque_existential_0(v17);
        return v11;
      }
    }

    else
    {
      swift_endAccess();
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
    }

    sub_1A3CB4E58(&v14, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  return 0;
}

unint64_t sub_1A3CB5C68()
{
  result = qword_1EB12A3A8;
  if (!qword_1EB12A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3A8);
  }

  return result;
}

unint64_t sub_1A3CB5CC0()
{
  result = qword_1EB12A3A0;
  if (!qword_1EB12A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3A0);
  }

  return result;
}

unint64_t sub_1A3CB5D80()
{
  result = qword_1EB12ACF8;
  if (!qword_1EB12ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ACF8);
  }

  return result;
}

void PXAppIntentsSetViewAnnotationDelegate(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if (v8)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXAppIntentsSetViewAnnotationDelegate(UIView *__strong _Nonnull, __strong id<PXAppIntentsViewAnnotationDelegate> _Nonnull)"}];
    [v4 handleFailureInFunction:v5 file:@"PXAppIntentsUtilities.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXAppIntentsSetViewAnnotationDelegate(UIView *__strong _Nonnull, __strong id<PXAppIntentsViewAnnotationDelegate> _Nonnull)"}];
  [v6 handleFailureInFunction:v7 file:@"PXAppIntentsUtilities.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

LABEL_3:
  [_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge setViewAnnotationDelegate:v3 for:v8];
}

unint64_t sub_1A3CB5F20()
{
  result = qword_1EB12ACF0;
  if (!qword_1EB12ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ACF0);
  }

  return result;
}

uint64_t static PXAppIntentsViewAnnotations.setDelegate(_:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3CB648C();
  (*(v7 + 16))(v9, v10, v6);
  swift_unknownObjectRetain();
  v11 = a2;
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v13;
    v15 = v14;
    v24[1] = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v15 = 136446466;
    v16 = [a1 appIntentsDebugDescription];
    v27 = v6;
    v17 = v16;
    v18 = sub_1A524C674();
    v20 = v19;

    sub_1A3C2EF94(v18, v20, &v28);
  }

  (*(v7 + 8))(v9, v6);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v3;
  v22[4] = v3;

  sub_1A524DB14();
}

uint64_t sub_1A3CB633C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CB6374()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CB63AC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB194508);
  __swift_project_value_buffer(v0, qword_1EB194508);
  if (qword_1EB18D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB18D6F8;
  return sub_1A5246F34();
}

unint64_t sub_1A3CB6438()
{
  result = qword_1EB1256D0;
  if (!qword_1EB1256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1256D0);
  }

  return result;
}

uint64_t sub_1A3CB648C()
{
  if (qword_1EB194500 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB194508);
}

uint64_t sub_1A3CB64F8()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB18D6F8 = result;
  return result;
}

unint64_t sub_1A3CB656C()
{
  result = qword_1EB1256C8;
  if (!qword_1EB1256C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1256C8);
  }

  return result;
}

uint64_t sub_1A3CB65E4(uint64_t a1)
{
  sub_1A3CB67E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3CB666C(unint64_t a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v8 = (v3 + 8);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v7, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      ++v7;
      sub_1A5241494();
      v11 = sub_1A5241414();
      (*v8)(v5, v2);
      [v10 prefetchObjectsAtIndexes_];
    }

    while (v6 != v7);
  }
}

void sub_1A3CB67E8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6850(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB68B8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6920(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6988(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB69F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3CB6A4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3CB6AA8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6B10(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6B78(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1A3CB6C44(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [v3 setIncludeAssetSourceTypes_];
  [v3 setIncludeHiddenAssets_];
  [v3 setIncludeGuestAssets_];

  return v3;
}

uint64_t sub_1A3CB6CB4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A3CB6DC0(v6, v7, v8, v0 + v4, v5, v2, v3);
}

uint64_t sub_1A3CB6DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = MEMORY[0x1E6982B80];
  sub_1A3C567C0(0, &qword_1EB128B68, MEMORY[0x1E6982B80], MEMORY[0x1E69E6720]);
  v7[15] = swift_task_alloc();
  v9 = sub_1A5247794();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  sub_1A3C567C0(0, &qword_1EB126DA0, v8, MEMORY[0x1E69E8698]);
  v7[19] = v10;
  v7[20] = swift_task_alloc();
  sub_1A3C567C0(0, &qword_1EB126DA8, v8, MEMORY[0x1E69E8688]);
  v7[21] = v11;
  v7[22] = swift_task_alloc();
  sub_1A3CB70AC(0, &qword_1EB1264B8, MEMORY[0x1E69E8870]);
  v7[23] = v12;
  v7[24] = *(v12 - 8);
  v7[25] = swift_task_alloc();
  sub_1A3CB70AC(0, &unk_1EB1264C0, MEMORY[0x1E69E8860]);
  v7[26] = v13;
  v7[27] = *(v13 - 8);
  v7[28] = swift_task_alloc();
  v7[29] = sub_1A524CC54();
  v7[30] = sub_1A524CC44();
  v15 = sub_1A524CBC4();
  v7[31] = v15;
  v7[32] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1A3CB71F4, v15, v14);
}

void sub_1A3CB70AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E8698];
    sub_1A3C567C0(255, &qword_1EB126DA0, MEMORY[0x1E6982B80], MEMORY[0x1E69E8698]);
    v8 = v7;
    v9 = sub_1A3CB7198(&qword_1EB126D98, &qword_1EB126DA0, v6, MEMORY[0x1E69E86A0]);
    v10 = a3(a1, v8, MEMORY[0x1E69E6370], v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3CB7198(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C567C0(255, a2, MEMORY[0x1E6982B80], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB71F4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_1A5247434();
  MEMORY[0x1A59099A0](v3);
  sub_1A3CB7198(&qword_1EB126D98, &qword_1EB126DA0, MEMORY[0x1E69E8698], MEMORY[0x1E69E86A0]);
  sub_1A524CE24();
  sub_1A524E654();
  (*(v2 + 8))(v1, v3);
  sub_1A524E664();
  v4 = sub_1A524CC44();
  v0[33] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1A524CBC4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[34] = v5;
  v0[35] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A3CB849C, v5, v7);
}

uint64_t sub_1A3CB7380()
{
  v0 = MEMORY[0x1E6982A68];
  sub_1A3CB775C(0, &qword_1EB128B88, &qword_1EB128BA8, MEMORY[0x1E6982A68]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  sub_1A3CB767C(0, &qword_1EB128BA8, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0], v0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  sub_1A3CB4D68(0, &qword_1EB126220, MEMORY[0x1E6982AC8], MEMORY[0x1E69E6F90]);
  v11 = sub_1A52475E4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475D4();
  v12 = MEMORY[0x1E6982AC0];
  sub_1A5247534();

  v16 = v11;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A59028E0](v10, v7, OpaqueTypeConformance2);
  v16 = v7;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_1A5247554();
  (*(v3 + 8))(v5, v2);
  (*(v8 + 8))(v10, v7);
  return v14;
}

void sub_1A3CB767C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3CB775C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3CB767C(255, a3, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0], a4);
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3CB788C()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB18AA00[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_1EB1EB448);
  swift_beginAccess();
  (*(v2 + 16))(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  (*(v6 + 8))(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3CB7AE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3CB7B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3CB7B84@<X0>(uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1E69E6370];
  sub_1A3CB7AE0(0, &qword_1EB12B088, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1A3CB7AE0(0, &qword_1EB12B010, v3, MEMORY[0x1E6968D98]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  sub_1A3CB7DF4(&qword_1EB12B018, MEMORY[0x1E6968DA8]);
  sub_1A5240AB4();
  v16[15] = 1;
  sub_1A5240AA4();
  sub_1A3CB7F40(0);
  a2[3] = v14;
  a2[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1A3CB81F4(&qword_1EB12B090, &qword_1EB12B088, v3, MEMORY[0x1E6968D20]);
  sub_1A5240A44();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A3CB7DF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB7AE0(255, &qword_1EB12B010, MEMORY[0x1E69E6370], MEMORY[0x1E6968D98]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB7E5C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB7B30(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB7EA0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB806C(255, a2, MEMORY[0x1E69E6370], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB7EF0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4153160(255, a2, MEMORY[0x1E69E6370], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3CB7F40(uint64_t a1)
{
  if (!qword_1EB12B0A0)
  {
    v1 = MEMORY[0x1E69E6370];
    sub_1A3CB7AE0(255, &qword_1EB12B010, MEMORY[0x1E69E6370], MEMORY[0x1E6968D98]);
    sub_1A3CB7AE0(255, &qword_1EB12B088, v1, MEMORY[0x1E6968D10]);
    sub_1A3CB7DF4(&qword_1EB12B018, MEMORY[0x1E6968DA8]);
    sub_1A3CB81F4(&qword_1EB12B090, &qword_1EB12B088, v1, MEMORY[0x1E6968D20]);
    v2 = sub_1A5240A84();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB12B0A0);
    }
  }
}

void sub_1A3CB806C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A3CB80BC()
{
  result = qword_1EB12B0A8;
  if (!qword_1EB12B0A8)
  {
    sub_1A3CB7F40(255);
    sub_1A3CB7DF4(&qword_1EB12B020, MEMORY[0x1E6968DA0]);
    sub_1A3CB8158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B0A8);
  }

  return result;
}

unint64_t sub_1A3CB8158()
{
  result = qword_1EB12B098;
  if (!qword_1EB12B098)
  {
    sub_1A3CB7AE0(255, &qword_1EB12B088, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B098);
  }

  return result;
}

uint64_t sub_1A3CB81F4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB7AE0(255, a2, a3, MEMORY[0x1E6968D10]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3CB83A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1A3CB849C()
{
  v1 = v0[33];
  v0[36] = sub_1A524E644();
  sub_1A3CB7198(&qword_1EB126DB0, &qword_1EB126DA8, MEMORY[0x1E69E8688], MEMORY[0x1E69E8690]);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_1A45C1798;
  v3 = v0[15];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_1A3CB85AC()
{
  v0 = MEMORY[0x1E6982A70];
  sub_1A3CB775C(0, &qword_1EB128B80, &qword_1EB128B98, MEMORY[0x1E6982A70]);
  v20 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - v3;
  v5 = sub_1A52475E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E6982AC0];
  sub_1A3CB767C(0, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0], v0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v8, v5, v9);
  (*(v6 + 8))(v8, v5);
  v21 = v5;
  v22 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A59028E0](v14, v11, OpaqueTypeConformance2);
  v21 = v11;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = v20;
  v17 = sub_1A5247554();
  (*(v2 + 8))(v4, v16);
  (*(v12 + 8))(v14, v11);
  return v17;
}

void sub_1A3CB8878()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB8D98(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5247704();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB189740 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1EB1EB3D0);
  (*(v7 + 16))(v9, v14, v6);
  sub_1A5247524();
  v15 = MEMORY[0x1E6982A40];
  sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40], MEMORY[0x1E6982A50]);
  sub_1A3CB0A78(&qword_1EB128BC0, v15, MEMORY[0x1E6982A48]);
  sub_1A5247714();
  v20[1] = sub_1A52474F4();
  v16 = *(v11 + 8);
  v16(v13, v10);
  if (qword_1EB1896B0[0] != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_1EB1EB3B8);
  swift_beginAccess();
  v18 = *(v2 + 16);
  v18(v4, v17, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v16(v13, v10);
  if (qword_1EB16C058 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_1EB1EAF38);
  swift_beginAccess();
  v18(v4, v19, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v16(v13, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3CB8D34()
{
  if (qword_1EB15AEF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EAD58);
}

void sub_1A3CB8DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5247524();
    v7 = MEMORY[0x1E6982A40];
    v8 = sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40], MEMORY[0x1E6982A50]);
    v9 = sub_1A3CB0A78(&qword_1EB128BC0, v7, MEMORY[0x1E6982A48]);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3CB8E8C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EAD58);
  __swift_project_value_buffer(v0, qword_1EB1EAD58);
  sub_1A524C814();
  return sub_1A5246F14();
}

uint64_t sub_1A3CB8F04()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB3D0);
  __swift_project_value_buffer(v1, qword_1EB1EB3D0);
  return sub_1A5247734();
}

void sub_1A3CB8F68()
{
  if (!qword_1EB126180)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126180);
    }
  }
}

uint64_t MapItem.__allocating_init(id:assets:region:localizedTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  result = swift_allocObject();
  *(result + 56) = a1;
  *(result + 64) = a2;
  *(result + 16) = a3;
  *(result + 24) = a6;
  *(result + 32) = a7;
  *(result + 40) = a8;
  *(result + 48) = a9;
  *(result + 72) = a4;
  *(result + 80) = a5;
  return result;
}

void sub_1A3CB9044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3CB90DC(void *a1@<X8>)
{
  v2 = *(*v1 + 64);
  *a1 = *(*v1 + 56);
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3CB90EC(uint64_t a1)
{
  if (!qword_1EB12B058)
  {
    sub_1A3CB90A8(255);
    sub_1A3CB9044(255, &qword_1EB126ED8, sub_1A3CB9518, MEMORY[0x1E69E62F8]);
    sub_1A3CB0A78(&qword_1EB12B038, sub_1A3CB90A8, MEMORY[0x1E6968DA8]);
    v1 = sub_1A5240A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B058);
    }
  }
}

uint64_t sub_1A3CB91C8(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v16 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C29A58(0, v8);
  v9 = sub_1A524D474();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1A3CBA7F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_8_0;
  v12 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3CA4C68(&qword_1EB12B1E0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v13);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v4, v12);
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v15);
}

uint64_t sub_1A3CB94D8()
{

  return swift_deallocObject();
}

void sub_1A3CB95E4(uint64_t a1)
{
  if (!qword_1EB12B040)
  {
    sub_1A3CB90EC(255);
    sub_1A3CB0A78(&qword_1EB12B068, sub_1A3CB90EC, MEMORY[0x1E6968D58]);
    v1 = sub_1A5240A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B040);
    }
  }
}

void sub_1A3CB9680(uint64_t a1)
{
  if (!qword_1EB12B0B0)
  {
    sub_1A3CB95E4(255);
    v1 = MEMORY[0x1E69E6530];
    sub_1A3CB7AE0(255, &qword_1EB12B070, MEMORY[0x1E69E6530], MEMORY[0x1E6968D10]);
    sub_1A3CB0A78(&qword_1EB12B050, sub_1A3CB95E4, MEMORY[0x1E6968D58]);
    sub_1A3CB81F4(&qword_1EB12B078, &qword_1EB12B070, v1, MEMORY[0x1E6968D20]);
    v2 = sub_1A5240A34();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB12B0B0);
    }
  }
}

uint64_t sub_1A3CB97A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB806C(255, &qword_1EB12B070, MEMORY[0x1E69E6530], MEMORY[0x1E6968D10]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB9808(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A3CB9884()
{
  result = qword_1EB12B0B8;
  if (!qword_1EB12B0B8)
  {
    sub_1A3CB9680(255);
    sub_1A3CB9808(&qword_1EB12B048, sub_1A3CB95E4, sub_1A3CB99A4);
    sub_1A3CB81F4(&qword_1EB12B080, &qword_1EB12B070, MEMORY[0x1E69E6530], MEMORY[0x1E69829E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B0B8);
  }

  return result;
}

void sub_1A3CB99D8(uint64_t a1)
{
  if (!qword_1EB128B90)
  {
    sub_1A3CBA0BC(255);
    sub_1A3F46578(255, &qword_1EB128BA0, MEMORY[0x1E6982A98], MEMORY[0x1E6982A88]);
    sub_1A3F46578(255, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247584();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB128B90);
    }
  }
}

uint64_t sub_1A3CB9B48()
{
  sub_1A3CB99D8(0);
  v1 = *(v0 - 8);
  v42 = v0;
  v43 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v40 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E6982A70];
  sub_1A3CB775C(0, &qword_1EB128B80, &qword_1EB128B98, MEMORY[0x1E6982A70]);
  v39 = v4;
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - v5;
  v6 = sub_1A5247584();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB767C(0, &qword_1EB128BA0, MEMORY[0x1E6982A98], MEMORY[0x1E6982A88], v3);
  v36 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1A52475E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E6982AC0];
  sub_1A3CB767C(0, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0], v3);
  v18 = v17;
  v35 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v15, v12, v16);
  (*(v13 + 8))(v15, v12);
  sub_1A5247594();
  v21 = MEMORY[0x1E6982A88];
  MEMORY[0x1A59028B0](v8, v6, MEMORY[0x1E6982A88]);
  (*(v34 + 8))(v8, v6);
  v44 = v12;
  v45 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v37;
  MEMORY[0x1A59028E0](v20, v18, OpaqueTypeConformance2);
  v44 = v18;
  v45 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v44 = v6;
  v45 = v21;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v40;
  v27 = v23;
  v28 = v11;
  v29 = v39;
  v30 = v36;
  sub_1A5247564();
  v44 = v29;
  v45 = v30;
  v46 = v24;
  v47 = v25;
  swift_getOpaqueTypeConformance2();
  v31 = v42;
  v32 = sub_1A5247554();
  (*(v43 + 8))(v26, v31);
  (*(v41 + 8))(v27, v29);
  (*(v38 + 8))(v28, v30);
  (*(v35 + 8))(v20, v18);
  return v32;
}

void sub_1A3CBA0BC(uint64_t a1)
{
  if (!qword_1EB128B80)
  {
    sub_1A3F46578(255, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB128B80);
    }
  }
}

void sub_1A3CBA198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3CBA614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A3CBA7F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3CA4D98(0);
    sub_1A3CA4C68(&qword_1EB124B18, 255, sub_1A3CA4D98, off_1E7721078);

    sub_1A5245F44();
  }

  return result;
}

void sub_1A3CBA8F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong viewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
      v3 = [v2 px_barAppearance];
      aBlock[4] = sub_1A44047E8;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A421179C;
      aBlock[3] = &block_descriptor_46_6;
      v4 = _Block_copy(aBlock);
      [v3 performChangesWithAnimationOptions:0 changes:v4];
      _Block_release(v4);
    }
  }
}

void sub_1A3CBAA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelvesLoader.ShelfState(0, *(*v4 + 80), *(*v4 + 88), a4);

  swift_getWitnessTable();
  sub_1A5245F44();
}

id sub_1A3CBAAFC()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = *(v0 + 18);
  *(v0 + 18) = v1;
  if (v1 != v2)
  {
    return [*(v0 + 40) signalChange_];
  }

  return result;
}

uint64_t sub_1A3CBAEBC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1A524BFC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for PhotoKitItemListManager.MetadataFetchState(0, a2, v10, v11);
  v13 = *(State + 36);
  v14 = *&a1[v13];
  *&a1[v13] = MEMORY[0x1E69E7CC8];
  *a1 = 0;
  sub_1A524BFA4();
  result = (*(v7 + 40))(&a1[*(State + 28)], v9, v6);
  *a3 = v14;
  return result;
}

void PhotoKitItemListImplementation.merging(_:)(uint64_t a1, uint64_t a2)
{
  v5[11] = *v2;
  v3 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v3);
  v5[12] = v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5245EC4();
}

void sub_1A3CBB978(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A3CBB984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A524CA14();

  v7 = [swift_getObjCClassFromMetadata() changeDetailsFromFetchResult:a1 toFetchResult:a2 changedObjects:v6];

  return v7;
}

id sub_1A3CBBA08(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = [objc_opt_self() changeDetailsFromFetchResultChangeDetails_];

  return v3;
}

unint64_t sub_1A3CBBA80()
{
  result = qword_1EB120E30;
  if (!qword_1EB120E30)
  {
    sub_1A3CAFF98(255, &qword_1EB127000, MEMORY[0x1E69E5D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120E30);
  }

  return result;
}

uint64_t sub_1A3CBBAF4(void *a1)
{
  v2 = v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A524E6B4();

    if (v4)
    {
      swift_unknownObjectRelease();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return 0;
  }

  v5 = sub_1A3CBBC40(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  v13 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A3FB74A8();
    v9 = v13;
  }

  v10 = *(*(v9 + 56) + 8 * v7);
  sub_1A3FB731C(v7, v9, v11);
  *v2 = v9;
  return v10;
}

unint64_t sub_1A3CBBC40(uint64_t a1)
{
  v2 = sub_1A524DBE4();

  return sub_1A3CBBC84(a1, v2);
}

unint64_t sub_1A3CBBC84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A524DBF4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A3CBBD58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBBD90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBBDC8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBE00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBBE38()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBE78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBEB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBEF0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBF3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1A3D4344C(0, &qword_1EB124978, sub_1A3D42328, MEMORY[0x1E697DA80]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_1A3CBC028(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1A3D4344C(0, &qword_1EB124978, sub_1A3D42328, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CBC0FC(uint64_t *a1)
{
  sub_1A5249A34();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  sub_1A5249A34();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeInlineStoryPlayer(255);
  sub_1A3D41BF8();
  sub_1A3D422DC(&qword_1EB129DB8, type metadata accessor for LemonadeInlineStoryPlayer, &unk_1A53251A8);
  sub_1A3D41C4C();
  sub_1A52428F4();
  sub_1A5249A34();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5248AE4();
  sub_1A5248804();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3D41ECC();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CBC4A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A5243834();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CBC560(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1A5243834();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CBC604()
{
  v1 = (type metadata accessor for ColorGradedAssetView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  swift_unknownObjectRelease();
  v3 = v1[7];
  v4 = sub_1A5243834();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CBC6F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CBC794()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBC7EC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBC824()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CBC8F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBC930()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBC970()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBC9C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBC9FC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCA5C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCAB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCB14()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCB7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCBD4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCC0C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCC4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCC94()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCCCC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCD44()
{
  v1 = (type metadata accessor for LemonadeVisionPeopleShelfCell(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1A3D61C18(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBCE84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A3D61C18(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CBCF64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3D61C18(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CBD038()
{
  sub_1A3D6133C(255);
  sub_1A3D61B44(&qword_1EB12B688, sub_1A3D6133C, MEMORY[0x1E69C1E70]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CBD0F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v8[0] = type metadata accessor for LemonadeFeedSpec(255);
  v8[1] = v1;
  v8[2] = &protocol witness table for LemonadeFeedSpec;
  v8[3] = v2;
  type metadata accessor for LemonadeSpecsProviderView(255, v8);
  sub_1A3D639BC(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  sub_1A3D63B0C(255);
  v3 = sub_1A5248804();
  swift_getWitnessTable();
  v4 = MEMORY[0x1E6980A18];
  sub_1A3D63DAC(&qword_1EB127950, sub_1A3D639BC, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1A3D63DAC(&qword_1EB1278C0, sub_1A3D63A24, v4);
  swift_getWitnessTable();
  sub_1A3D63DAC(&qword_1EB127A20, sub_1A3D63B0C, v4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for LemonadeNavigationContainer(255, v3, WitnessTable, v6);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CBD2C8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3CBD34C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD4D4(uint64_t a1, uint64_t a2)
{
  sub_1A3D6D1A0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CBD538(uint64_t a1, uint64_t a2)
{
  sub_1A3D6DA14(0, &qword_1EB123950, sub_1A3D6D1A0, MEMORY[0x1E697EC00]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CBD5E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeAccessibilityViewModifier(255, a1[1], a1[3], a4);
  sub_1A5248804();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CBD678(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeAccessibilityViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249F54();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3D72360();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CBD790()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD7D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBD810()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD868()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD8A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD8E0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD920()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD968()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD9A8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDA08()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CBDA40()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDA88()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDAC0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDB10()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDB50()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDBB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDBEC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDC2C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBDC64()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDDF4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDE2C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBDE84()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDEC4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDF04()
{
  sub_1A3D933A0(255);
  sub_1A3D93850();
  sub_1A3D93A2C(255, &qword_1EB12BDA8, sub_1A3D92AE0, &type metadata for PeopleProcessingDebugInfo);
  sub_1A3D93A8C(&qword_1EB12BDB0, &qword_1EB12BDA8, sub_1A3D92AE0, &type metadata for PeopleProcessingDebugInfo);
  swift_getOpaqueTypeConformance2();
  sub_1A3D6E520();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CBE00C()
{
  sub_1A3D93954(255);
  sub_1A3D93850();
  sub_1A3D93A2C(255, &qword_1EB12BDC0, sub_1A3D92BA4, &type metadata for PeopleAddPeopleDebugInfo);
  sub_1A3D93A8C(&qword_1EB12BDC8, &qword_1EB12BDC0, sub_1A3D92BA4, &type metadata for PeopleAddPeopleDebugInfo);
  swift_getOpaqueTypeConformance2();
  sub_1A3D6E520();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CBE114()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE14C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE190()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE1C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE200()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CBE238()
{
  sub_1A3D97240(0, &qword_1EB12BE98, type metadata accessor for PXAppleMusicCapabilityStatus, MEMORY[0x1E69E8548]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE2FC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE334()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE36C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CBE3C4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(sub_1A524DF24() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v0 + v3, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBE538(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A3D9D3F0(0, &qword_1EB12BF20, type metadata accessor for LemonadeCollectionCustomizationView);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CBE604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3D9D3F0(0, &qword_1EB12BF20, type metadata accessor for LemonadeCollectionCustomizationView);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CBE710()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE758()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE790()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE7D0()
{

  v1 = *(v0 + 152);
  if (v1 > 1)
  {
    if (v1 == 2)
    {

      if (*(v0 + 136))
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 112));
      }
    }

    else if (v1 == 3)
    {
    }
  }

  else if (!*(v0 + 152) || v1 == 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBE89C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE8D8()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBE930()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE970()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE9B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE9F8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A3CBEA48()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CBEAB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEAF0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEB28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBEB60()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEBA0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CBEBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C41108(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1A3CBECAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3C41108(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }
}

uint64_t sub_1A3CBED68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBEDA0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEDD8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEE58()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEE98()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEED0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBEF08()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEF44()
{
  v1 = (type metadata accessor for GenerativeStoryVFXViewRepresentable(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v1[8];
  v7 = sub_1A5246E94();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1A3CBF07C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBF0B4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A3DC7DBC(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A3DC7DBC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[8]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1A5246F24();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

void sub_1A3CBF284(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A3DC7DBC(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1A3DC7DBC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v14 = sub_1A5246F24();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[12];

    v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1A3CBF454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1A5246E94();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A3CBF578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5246F24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1A5246E94();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A3CBF69C()
{
  sub_1A3DC85F0(255);
  sub_1A3DC86C4(255);
  sub_1A3DC9268(255);
  sub_1A3DC91B8(&qword_1EB12C5E8, sub_1A3DC86C4, MEMORY[0x1E697E378]);
  sub_1A3DC92EC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CBF77C()
{
  v1 = (type metadata accessor for GenerativeStoryVFXViewRepresentable(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = sub_1A5246F24();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = v1[8];
  v5 = sub_1A5246E94();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3CBF8A8()
{
  v1 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1A3C53AEC(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5249A94();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v7 = v1[6];
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  v9 = v1[12];
  v10 = sub_1A5246F24();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1A3CBFBA0()
{
  v1 = sub_1A52482C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v6 = *(*(v5 - 1) + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v6) & ~v6);
  sub_1A3C53AEC(*v7, *(v7 + 8));
  v8 = v5[5];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5249A94();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v5[6];
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v5[7]), *(v7 + v5[7] + 8));

  v13 = v5[12];
  v14 = sub_1A5246F24();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);

  return swift_deallocObject();
}

uint64_t sub_1A3CBFF04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBFF3C()
{
  v1 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  sub_1A3C53AEC(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5249A94();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v7 = v1[6];
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  v9 = v1[12];
  v10 = sub_1A5246F24();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1A3CC0224(uint64_t a1, uint64_t a2)
{
  sub_1A3DC9040(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC0288()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC03A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC03E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC0420()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0458()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC04D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0518()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0568()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC05B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC05F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0638()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0688()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC06D0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC074C()
{

  v1 = *(v0 + 40);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC07F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0868()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC08A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC08D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0924()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC095C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC0998()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC09E0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0A20()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC0A58()
{
  v1 = sub_1A5246F24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CC0B04()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0B3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A5248714();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CC0BE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5248714();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CC0C8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0CC4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC0D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BAE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_1A3E09AF8(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 48);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1A3CC0E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A524BAE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  else
  {
    sub_1A3E09AF8(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 48);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1A3CC0FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BAE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3CC109C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A524BAE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore49LemonadeSharedAlbumsActivityOneUpBrowsingDelegate_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A3CC1170(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1A524B9A4();
  v3 = MEMORY[0x1E697E5E0];
  v4 = MEMORY[0x1E697E830];
  sub_1A3E055C8(255, &qword_1EB12C988, sub_1A3DF11FC, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v6, v7);
  sub_1A5248804();
  type metadata accessor for SharedAlbumsAssetsCollageView(255, v1, v2, v8);
  sub_1A5249754();
  sub_1A524B514();
  sub_1A5248A14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3DF19A4(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  sub_1A5242C04();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A3DF19A4(&qword_1EB129158, MEMORY[0x1E69C2160], MEMORY[0x1E69C2158]);
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  sub_1A3E055C8(255, &qword_1EB12CA40, sub_1A3DF1B60, v3, v4);
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3DF1F90(255);
  sub_1A5248804();
  sub_1A3E09208(255, &unk_1EB12CAC8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3E09AF8(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3DF19A4(&qword_1EB12CAD8, sub_1A3DF1F90, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1A3DF2108();
  swift_getWitnessTable();
  sub_1A3DF2184();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC16A0(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v2, v3);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A524B784();
  sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5249754();
  sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getWitnessTable();
  sub_1A5248414();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A524B514();
  sub_1A3E0479C(255, &qword_1EB12CB28, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E6980460]);
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3E004D4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC1D40()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1D98()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC1DE8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1E28()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1E70()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1ED0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC1F08()
{
  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  sub_1A3E04274(*(v0 + 136), *(v0 + 144));
  v1 = *(v0 + 200);

  if (v1 == 1 && *(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1FB0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  }

  sub_1A3E04274(*(v0 + 144), *(v0 + 152));
  v1 = *(v0 + 208);

  if (v1 == 1 && *(v0 + 192))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC2058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SharedAlbumsAssetsCollageView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 48) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_1A524BAE4();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v4 + v6 + v5[12];
  LODWORD(v5) = *(v8 + 48);

  if (v5 == 1 && *(v8 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 8));
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC21E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SharedAlbumsAssetsCollageView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = sub_1A524BAE4();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v4 + v6 + v5[12];
  LODWORD(v5) = *(v8 + 48);

  if (v5 == 1 && *(v8 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 8));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC2310(uint64_t a1, uint64_t a2)
{
  sub_1A3E09AF8(0, &qword_1EB12CA88, sub_1A3DF1E58, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC23A4(uint64_t a1)
{
  sub_1A3E09AF8(0, &qword_1EB12CA88, sub_1A3DF1E58, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CC2430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 1) + 80) + 48) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);

  v8 = v4 + v6;
  v9 = sub_1A524BAE4();
  (*(*(v9 - 8) + 8))(v4 + v6, v9);

  v10 = (v4 + v6 + v5[10]);
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v11 = v8 + v5[11];

  if (*(v11 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((v11 + 8));
  }

  v12 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v8 + v5[12];
  v14 = MEMORY[0x1E69C24E0];
  sub_1A3E09AF8(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v15 - 8) + 8))(v13, v15);
  sub_1A3E09AF8(0, &qword_1EB127288, v14, MEMORY[0x1E6981E98]);

  sub_1A3D35BAC(*(v8 + v5[14]), *(v8 + v5[14] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CC263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 1) + 80) + 48) & ~*(*(v5 - 1) + 80);

  v7 = v4 + v6;
  v8 = sub_1A524BAE4();
  (*(*(v8 - 8) + 8))(v4 + v6, v8);

  v9 = (v4 + v6 + v5[10]);
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v10 = v7 + v5[11];

  if (*(v10 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((v10 + 8));
  }

  v11 = v7 + v5[12];
  v12 = MEMORY[0x1E69C24E0];
  sub_1A3E09AF8(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v13 - 8) + 8))(v11, v13);
  sub_1A3E09AF8(0, &qword_1EB127288, v12, MEMORY[0x1E6981E98]);

  sub_1A3D35BAC(*(v7 + v5[14]), *(v7 + v5[14] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CC2834(uint64_t a1, uint64_t a2)
{
  sub_1A3DF15C8(0, &qword_1EB12C9D8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC28B4(uint64_t a1)
{
  sub_1A3DF15C8(0, &qword_1EB12C9D8, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CC292C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));
  v7 = sub_1A524BAE4();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = (v6 + v5[10]);
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v9 = v6 + v5[11];

  if (*(v9 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((v9 + 8));
  }

  v10 = v6 + v5[12];
  v11 = MEMORY[0x1E69C24E0];
  sub_1A3E09AF8(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v12 - 8) + 8))(v10, v12);
  sub_1A3E09AF8(0, &qword_1EB127288, v11, MEMORY[0x1E6981E98]);

  sub_1A3D35BAC(*(v6 + v5[14]), *(v6 + v5[14] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CC2B48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC2B80()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2BC0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2C08()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2C40()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2C8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2CD4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2D1C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2DA0(uint64_t a1, uint64_t a2)
{
  sub_1A3E33AF4(0, &qword_1EB123A78, sub_1A3E330F0, sub_1A3E33BA0, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC2E4C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A3E31688(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A3E31688(0, &qword_1EB124708, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1A3CC2FB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A3E31688(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    sub_1A3E31688(0, &qword_1EB124708, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1A3CC3120()
{
  sub_1A3E36840(255);
  sub_1A3E424FC(255);
  sub_1A3E36818(255);
  sub_1A5249554();
  sub_1A3E35908(&qword_1EB123128, sub_1A3E36818, sub_1A3E42340);
  sub_1A3E33CB8(&qword_1EB127FE0, MEMORY[0x1E697F6A0], MEMORY[0x1E697F6B8]);
  swift_getOpaqueTypeConformance2();
  sub_1A3E426FC(255);
  sub_1A3E42A30(255);
  sub_1A3E42888(255);
  v0 = MEMORY[0x1E6981F48];
  sub_1A3E33CB8(&qword_1EB1270A8, sub_1A3E42888, MEMORY[0x1E6981F48]);
  swift_getOpaqueTypeConformance2();
  sub_1A3E33CB8(&qword_1EB127160, sub_1A3E42A30, v0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC33C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3414()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC344C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3484()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC34BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC34F4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3534()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC357C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC35B4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC35EC()
{

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC3654()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3694()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC36DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3724()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3768()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC37A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC37E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3820()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3870()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC38AC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC38F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3934()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3980(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1A3E739EC(255);
  type metadata accessor for LemonadeShelfHeaderHeightReporterModifier(255, v1, v2, v3);
  sub_1A5248804();
  sub_1A3E75CCC(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3E73A2C(255);
  sub_1A5248804();
  sub_1A3E73C5C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3E73DE0();
  swift_getWitnessTable();
  sub_1A3E76368(&qword_1EB128040, sub_1A3E73A2C, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249F54();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3E76368(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC3C08()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3C50(uint64_t a1, uint64_t a2)
{
  sub_1A3E75EBC(0, &qword_1EB12D230, sub_1A3E74254, sub_1A3E74608, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC3CF8(uint64_t a1, uint64_t a2)
{
  sub_1A3E72C00(0, &qword_1EB1212C8, &qword_1EB121EF0, sub_1A3E72C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC3D80(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A3E72DD0(0, &qword_1EB127DA0, MEMORY[0x1E697F960], a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CC3E00(uint64_t a1, uint64_t a2)
{
  sub_1A3E75980(0, &qword_1EB122880, sub_1A3E71CDC, &type metadata for LemonadeShelfVisionHeaderTitleView, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC3EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelfHeaderHeightReporterModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1A52499C4();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A3E754D0();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC3FC8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4000()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC4040()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4078()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CC40B0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC40F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CC414C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A3E7CD50(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CC42D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3E7CD50(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CC4468(uint64_t a1, uint64_t a2)
{
  sub_1A3E7D9A8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC44CC(uint64_t a1, uint64_t a2)
{
  sub_1A3E7DAC0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC456C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC45BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC45F4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC462C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC466C()
{
  v1 = (type metadata accessor for OneUpSharePlayNavigateMessagePayload(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v22 = *(*v1 + 64);
  v4 = sub_1A5241C04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();

  v7 = v0 + v3 + v1[8];

  v8 = v7 + *(type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0) + 24);
  v9 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  v11 = v22;
  if (!v10)
  {
    v19 = v6;
    v20 = (v2 + 56) & ~v2;
    v21 = v4;
    v12 = v8 + *(v9 + 24);
    v13 = sub_1A52414C4();
    v14 = *(v13 - 8);
    v15 = *(v14 + 8);
    v15(v12, v13);
    v16 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
    v15(v12 + v16[5], v13);
    v18 = v16[6];
    if (!(*(v14 + 48))(v12 + v18, 1, v13))
    {
      v15(v12 + v18, v13);
    }

    v15(v12 + v16[8], v13);

    v4 = v21;
    v3 = v20;
    v11 = v22;
    v6 = v19;
  }

  (*(v5 + 8))(v0 + ((v3 + v11 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4950()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4A54()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CC4A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4AD0()
{
  sub_1A3C41108(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 26) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1A5241534();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);

  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4C70()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4CA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC4CE8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4D4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4D84()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4E08()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4F78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4FFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC5038()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5164()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC519C()
{
  v1 = type metadata accessor for PhotosDetailsSearchView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  sub_1A3EBE3CC(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v7 = *(v6 + 32);
    v8 = sub_1A52489C4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0((v4 + v1[7]));
  if (*(v4 + v1[8]))
  {
  }

  if (*(v4 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC53AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC53E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5420()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CC5458()
{
  v1 = type metadata accessor for PhotosDetailsSearchView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  sub_1A3EBE3CC(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v7 = *(v6 + 32);
    v8 = sub_1A52489C4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0((v4 + v1[7]));
  if (*(v4 + v1[8]))
  {
  }

  if (*(v4 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A3EC2038(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CC5750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1A3EC2038(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CC5834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3EC6C44(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3CC5924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3EC6C44(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1A3CC5A5C()
{
  v1 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A52486A4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5B98()
{
  if (*(v0 + 24))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC5BE8()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5C38()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5C90()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5CD0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5D18()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC5D54()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5D8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5DE4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5E34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5E8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5EEC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5F34()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CC6010()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6050()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6098()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC60D0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6128()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3EE5414(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3CC6250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3EE5414(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1A3CC6340()
{
  v1 = type metadata accessor for PhotosDetailsShazamEventsWidgetView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5248334();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC6488()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC64D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3CC6594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5241144();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3CC66F8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC6740()
{
  v1 = *(type metadata accessor for LemonadeNavigationDestination(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 0x23u:

      break;
    case 2u:
    case 3u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:

      break;
    case 4u:
    case 5u:

      break;
    case 6u:

      if (*(v4 + 64) != 1)
      {
      }

      break;
    case 0xBu:

      if (*(v4 + 40) != 1)
      {
      }

      break;
    case 0xCu:

      if (*(v4 + 16))
      {
      }

      if (*(v4 + 56))
      {
        __swift_destroy_boxed_opaque_existential_0((v4 + 32));
      }

      break;
    case 0xDu:

      if (*(v4 + 56))
      {
      }

      type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
      sub_1A5245BA4();
    case 0xEu:

      if (*(v4 + 72))
      {
      }

      type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
      sub_1A5245BA4();
    case 0xFu:

      if (*(v4 + 72))
      {
      }

      type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
      goto LABEL_43;
    case 0x10u:

      if (*(v4 + 80))
      {
      }

      type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
      goto LABEL_43;
    case 0x11u:
    case 0x21u:
    case 0x24u:
    case 0x25u:

      break;
    case 0x12u:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0((v4 + 16));

      break;
    case 0x13u:
    case 0x14u:

      break;
    case 0x15u:

      if (*(v4 + 16) != 255)
      {
      }

      break;
    case 0x16u:
      v8 = sub_1A52411C4();
      (*(*(v8 - 8) + 8))(v4, v8);

      swift_unknownObjectRelease();
LABEL_43:
      sub_1A5245BA4();
    case 0x17u:
      v7 = *(v4 + 16);
      if (v7 != 255)
      {
        sub_1A3EECFA4(*v4, *(v4 + 8), v7);
      }

      break;
    case 0x18u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:

      break;
    case 0x19u:

      if (*(v4 + 32))
      {
        __swift_destroy_boxed_opaque_existential_0((v4 + 8));
      }

      break;
    case 0x1Au:

      v5 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0) + 36);
      v6 = sub_1A5244854();
      (*(*(v6 - 8) + 8))(v4 + v5, v6);
      break;
    case 0x1Cu:
    case 0x1Fu:
    case 0x22u:
      swift_unknownObjectRelease();
      break;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_0((v4 + 16));
      break;
    default:
      break;
  }

  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC6D50()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC6D88()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC6DC8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6E10()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6E70()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6EB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6EE8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6F20()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6F68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC6FA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimelineEngineCell(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CC704C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TimelineEngineCell(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1A3CC70FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CC712C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeCollectionCustomizationPhotosPickerModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC73E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) == a2)
  {
    v5 = *(v4 + 48);
LABEL_14:

    return v5(a1);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + *(a3 + 36));
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v8 = a1;
  v11 = type metadata accessor for LemonadeModelFactory(0, *(a3 + 16), *(*(a3 + 24) + 8), a4);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v12 = *(v11 - 8);
    v13 = *(a3 + 52);
LABEL_13:
    v5 = *(v12 + 48);
    a1 = v8 + v13;
    goto LABEL_14;
  }

  sub_1A3EFDB80(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v12 = *(v14 - 8);
    v13 = *(a3 + 56);
    goto LABEL_13;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v15 = sub_1A5247CB4();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v12 = *(v15 - 8);
    v13 = *(a3 + 60);
    goto LABEL_13;
  }

  sub_1A3EFC5C8(0);
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a2)
  {
    v5 = *(v17 + 48);
    a1 = v8 + *(a3 + 64);
    goto LABEL_14;
  }

  sub_1A3EFDB80(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = v8 + *(a3 + 68);

  return v20(v21, a2, v19);
}

uint64_t sub_1A3CC7770(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a2;
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84) == a3)
  {
    v6 = *(v5 + 56);
    v7 = a2;
    v8 = *(a4 + 16);
LABEL_14:

    return v6(result, a2, v7, v8);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 36)) = (a2 - 1);
    return result;
  }

  v10 = result;
  v12 = type metadata accessor for LemonadeModelFactory(0, *(a4 + 16), *(*(a4 + 24) + 8), a4);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v8 = v12;
    v13 = *(v12 - 8);
    v14 = *(a4 + 52);
LABEL_13:
    v6 = *(v13 + 56);
    result = v10 + v14;
    a2 = v4;
    v7 = v4;
    goto LABEL_14;
  }

  sub_1A3EFDB80(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v8 = v15;
    v13 = *(v15 - 8);
    v14 = *(a4 + 56);
    goto LABEL_13;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v16 = sub_1A5247CB4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v8 = v16;
    v13 = *(v16 - 8);
    v14 = *(a4 + 60);
    goto LABEL_13;
  }

  sub_1A3EFC5C8(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v8 = v17;
    v13 = *(v17 - 8);
    v14 = *(a4 + 64);
    goto LABEL_13;
  }

  sub_1A3EFDB80(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = v10 + *(a4 + 68);

  return v20(v21, v4, v4, v19);
}

uint64_t sub_1A3CC7AEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelfContents(255, *a1, a1[1], a4);
  v4 = MEMORY[0x1E6980B20];
  sub_1A3F1C93C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A3F17CC4(&qword_1EB127700, &qword_1EB1276F0, v4, MEMORY[0x1E6980B30]);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC7BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeShelfContents(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  v8 = (v7 + v6[13]);
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v9 = v6[16];
  v10 = sub_1A52434D4();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  if (*(v7 + v6[18] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v7 + v6[18]));
  }

  v11 = v6[19];
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v6[20]), *(v7 + v6[20] + 8));
  sub_1A3D35BAC(*(v7 + v6[21]), *(v7 + v6[21] + 8));
  sub_1A3C53AEC(*(v7 + v6[22]), *(v7 + v6[22] + 8));
  sub_1A3C53AEC(*(v7 + v6[23]), *(v7 + v6[23] + 8));
  v13 = v7 + v6[24];
  sub_1A3D35A84(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  v14 = v6[25];
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A52486A4();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
  }

  v16 = v6[26];
  sub_1A3EFDB80(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1A5248714();
    (*(*(v17 - 8) + 8))(v7 + v16, v17);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v6[27]), *(v7 + v6[27] + 8));
  v18 = v7 + v6[28];
  sub_1A3D35A84(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3CC7FBC()
{
  v1 = sub_1A5242334();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CC8044(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  type metadata accessor for LemonadeShelfHeader(255, *a1, v4, a4);
  sub_1A5248804();
  sub_1A3F17A98();
  sub_1A5249754();
  sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  sub_1A5249754();
  sub_1A5249754();
  type metadata accessor for LemonadeShelfBody(255, v5, v4, v6);
  sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C, MEMORY[0x1E697E048]);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
  swift_getWitnessTable();
  sub_1A3F17BF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A5243DD4();
  type metadata accessor for LemonadeShelfContents.bottomPadding(255, v5, v4, v7);
  sub_1A5248804();
  v8 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1C93C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v8);
  sub_1A5248804();
  v9 = MEMORY[0x1E69C24E0];
  sub_1A3EFDB80(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5242D14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v8, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1A3F1B380(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  swift_getWitnessTable();
  sub_1A3F1B31C(&qword_1EB1279F8, &qword_1EB1279F0, v9);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A3F17D14();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler(255, v5, v4, v10);
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeShelfContents.VisibilityTracker(255, v5, v4, v11);
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC86C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC87C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CC889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeShelfBody(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 64);
  v8 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v9 = v4 + v8;
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  v10 = (v4 + v8 + v6[14]);
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  sub_1A3F1B54C(*(v9 + v6[15]), *(v9 + v6[15] + 8));
  sub_1A3C53AEC(*(v9 + v6[16]), *(v9 + v6[16] + 8));
  sub_1A3C53AEC(*(v9 + v6[17]), *(v9 + v6[17] + 8));
  v11 = v9 + v6[18];
  sub_1A3EFDB80(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v13 = sub_1A5242D14();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v9 + v6[19]), *(v9 + v6[19] + 8));
  v14 = v9 + v6[20];
  sub_1A3D35A84(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));

  v15 = v6[23];
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A5242D14();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
  }

  else
  {
  }

  sub_1A3F1B4C4(*(v9 + v6[24]), *(v9 + v6[24] + 8), *(v9 + v6[24] + 9));
  v17 = v6[25];
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1A52486A4();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
  }

  else
  {
  }

  v19 = v6[26];
  sub_1A3EFDB80(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1A5249A94();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v9 + v19, 1, v20))
    {
      (*(v21 + 8))(v9 + v19, v20);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v9 + v6[28]), *(v9 + v6[28] + 8));
  sub_1A3C53AEC(*(v9 + v6[29]), *(v9 + v6[29] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CC8D6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelfContents.bottomPadding(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1A52499C4();
  sub_1A5248804();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC8E30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC8ED4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelfContents.VisibilityTracker(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC8FE4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v59 = v1;
  sub_1A3F1AFEC();
  v3 = *(v1 + 8);
  swift_getAssociatedTypeWitness();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = sub_1A3F1B0E0();
  v4 = v84;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v5 = sub_1A524B784();
  v6 = sub_1A5248804();
  v57 = v5;
  WitnessTable = swift_getWitnessTable();
  v82 = v84;
  v56 = WitnessTable;
  v58 = v6;
  v55 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedTypeWitness();
  v60 = sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  v62 = v2;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v79 = swift_getOpaqueTypeConformance2();
  v80 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v66 = v2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = v3;
  v69 = swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v66);
  v8 = sub_1A5249754();
  v9 = swift_getWitnessTable();
  v10 = sub_1A3F18B84();
  v77 = v9;
  v78 = v10;
  v11 = swift_getWitnessTable();
  v66 = v8;
  OpaqueTypeMetadata2 = v11;
  v49 = v8;
  v50 = v11;
  v12 = v11;
  v13 = swift_getOpaqueTypeMetadata2();
  v14 = sub_1A5248804();
  v66 = v8;
  OpaqueTypeMetadata2 = v12;
  v15 = swift_getOpaqueTypeConformance2();
  v75 = v15;
  v76 = v4;
  v16 = swift_getWitnessTable();
  v66 = v13;
  OpaqueTypeMetadata2 = v14;
  v68 = v15;
  v69 = v16;
  swift_getOpaqueTypeMetadata2();
  v17 = MEMORY[0x1E6980A08];
  v53 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v46 = sub_1A5248804();
  v48 = swift_getWitnessTable();
  v47 = swift_getAssociatedConformanceWitness();
  v66 = v13;
  OpaqueTypeMetadata2 = v14;
  v68 = v15;
  v69 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v54 = MEMORY[0x1E6980A18];
  v19 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v17, MEMORY[0x1E6980A18]);
  v73 = v18;
  v74 = v19;
  v20 = swift_getWitnessTable();
  v66 = v60;
  OpaqueTypeMetadata2 = v51;
  v68 = v51;
  v69 = v46;
  v70 = v48;
  v71 = v47;
  v72 = v20;
  sub_1A5243E24();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v66 = v21;
  OpaqueTypeMetadata2 = AssociatedTypeWitness;
  v68 = v22;
  v69 = v52;
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier(255, &v66);
  v23 = sub_1A5248804();
  v24 = sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v66 = v23;
  OpaqueTypeMetadata2 = v24;
  v68 = v65;
  v69 = v25;
  swift_getOpaqueTypeMetadata2();
  v66 = v60;
  OpaqueTypeMetadata2 = v51;
  v68 = v51;
  v69 = v49;
  v70 = v48;
  v71 = v47;
  v72 = v50;
  v26 = sub_1A52420C4();
  v27 = sub_1A5248804();
  v64 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v66 = v26;
  OpaqueTypeMetadata2 = v27;
  v68 = v64;
  v69 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v66 = v23;
  OpaqueTypeMetadata2 = v24;
  v68 = v65;
  v69 = v25;
  swift_getOpaqueTypeConformance2();
  v66 = v26;
  OpaqueTypeMetadata2 = v27;
  v68 = v64;
  v69 = v28;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  v29 = sub_1A5248804();
  swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v66 = v29;
  OpaqueTypeMetadata2 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, MEMORY[0x1E69E6720]);
  v33 = v32;
  v66 = v29;
  OpaqueTypeMetadata2 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_1A3F1B1BC();
  v66 = v31;
  OpaqueTypeMetadata2 = v33;
  v68 = v34;
  v69 = v35;
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v66 = v57;
  OpaqueTypeMetadata2 = v58;
  v68 = v56;
  v69 = v55;
  swift_getOpaqueTypeConformance2();
  v66 = v31;
  OpaqueTypeMetadata2 = v33;
  v68 = v34;
  v69 = v35;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B8B4();
  type metadata accessor for LemonadeShelfBody.ContentBackground(255, v62, v59, v36);
  v37 = sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v66 = v37;
  OpaqueTypeMetadata2 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v66 = v37;
  OpaqueTypeMetadata2 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v66 = v39;
  OpaqueTypeMetadata2 = v40;
  swift_getOpaqueTypeMetadata2();
  v41 = MEMORY[0x1E69C2948];
  sub_1A3EFDB80(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC(255);
  sub_1A5248804();
  sub_1A3F1C93C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v53);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5248804();
  v42 = sub_1A5248804();
  sub_1A5249A34();
  v63 = sub_1A5248804();
  v66 = v39;
  OpaqueTypeMetadata2 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1A3F1B31C(&qword_1EB1279C8, &qword_1EB1279C0, v41);
  swift_getWitnessTable();
  sub_1A3F1D360(&qword_1EB1279E8, sub_1A3F1B2AC, v54);
  swift_getWitnessTable();
  sub_1A3F1B380(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v66 = v42;
  OpaqueTypeMetadata2 = v63;
  v68 = v43;
  v69 = v44;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC9E00(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier(255, v5);
  swift_getWitnessTable();
  v2 = sub_1A52499C4();
  WitnessTable = swift_getWitnessTable();
  *&v5[0] = v2;
  *(&v5[0] + 1) = WitnessTable;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC9EAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelfBody.ContentBackground(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1A52499C4();
  sub_1A5248804();
  sub_1A3F1D1FC(255, &qword_1EB12E7C0, sub_1A3F1D27C, sub_1A3F1D32C, MEMORY[0x1E697F930]);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F1D3A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CCA094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A3F25650(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CCA174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A3F25650(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CCA248()
{
  sub_1A3F1ECE8(255);
  sub_1A3F1D5F0(255);
  sub_1A5249C44();
  sub_1A3F256B4(&qword_1EB12E950, sub_1A3F1D5F0, MEMORY[0x1E697C0C0]);
  sub_1A3F256B4(&qword_1EB13A710, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCA364()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCA3AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCA3E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCA41C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCA70C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCA744()
{
  sub_1A3F2D9A8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1A3CCA790()
{
  v1 = sub_1A5243934();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  sub_1A3D35BAC(*(v0 + 16), *(v0 + 24));
  j__swift_release(*(v0 + 32));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CCA8B8()
{
  sub_1A3F2F228(255);
  sub_1A3F2E88C(255);
  sub_1A3F2ED3C(&qword_1EB12EAB8, sub_1A3F2E88C, MEMORY[0x1E69C1FF8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCA978(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_1A3F3732C(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1A3F3732C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1A3F3732C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_1A3CCAB74(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A3F3732C(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1A3F3732C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1A3F3732C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[8]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3CCADBC()
{
  v1 = type metadata accessor for LemonadeReorderView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(*(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8) + 80);
  v5 = v3 + v4;
  v6 = v0 + v2;

  v7 = v1[5];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A52486A4();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v2 + v5;
  sub_1A3C53AEC(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  v10 = v1[7];
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5247E04();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  v12 = v9 & ~v4;
  v13 = v1[8];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A5242D14();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
  }

  v15 = v0 + v12;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      sub_1A3C53AEC(*(v15 + 56), *(v15 + 64));
      sub_1A3C53AEC(*(v15 + 72), *(v15 + 80));
      break;
    case 1u:

      break;
    case 2u:
    case 4u:
    case 6u:
    case 0xEu:
    case 0x12u:
    case 0x13u:
    case 0x14u:

      break;
    case 3u:

      sub_1A3C4AFFC(0);
      v15 += *(v19 + 40);

      v17 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider(0) + 28);
      goto LABEL_33;
    case 5u:

      break;
    case 7u:

      swift_unknownObjectRelease();
      break;
    case 8u:

      v15 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
      v18 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
      goto LABEL_32;
    case 9u:

      v83 = type metadata accessor for LemonadeICloudLinksFeature(0);
      v34 = (v15 + *(v83 + 20));

      v35 = type metadata accessor for LemonadeICloudLinksShelfProvider(0);
      v36 = *(v35 + 24);
      v37 = sub_1A5243334();
      (*(*(v37 - 8) + 8))(v34 + v36, v37);
      v81 = v35;
      v38 = v34 + *(v35 + 28);
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v38, *(v38 + 1), v38[16]);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A3C4208C(*(v38 + 3), *(v38 + 4), v38[40]);
        sub_1A3C47A98(0);
        v41 = *(v40 + 64);
        v42 = sub_1A5242C84();
        (*(*(v42 - 8) + 8))(&v38[v41], v42);
      }

      else
      {
        if (*(v38 + 5) >= 3uLL)
        {
        }

        if (*(v38 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v38 + 9), *(v38 + 10), v38[88]);
      }

      v68 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v69 = sub_1A5241F84();
      v70 = *(v69 - 8);
      if (!(*(v70 + 48))(&v38[v68], 1, v69))
      {
        (*(v70 + 8))(&v38[v68], v69);
      }

      v71 = *(v81 + 32);
      v72 = sub_1A5244094();
      (*(*(v72 - 8) + 8))(v34 + v71, v72);
      v67 = *(v15 + *(v83 + 28));
      goto LABEL_75;
    case 0xAu:

      break;
    case 0xBu:

      v20 = (v15 + *(type metadata accessor for LemonadeSharedWithYouFeature(0) + 20));

      v21 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider(0);
      v22 = *(v21 + 24);
      v23 = sub_1A5243334();
      (*(*(v23 - 8) + 8))(v20 + v22, v23);
      v24 = v20 + *(v21 + 28);
      goto LABEL_34;
    case 0xCu:

      v16 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
      v17 = v16 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
      goto LABEL_33;
    case 0xDu:

      v82 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature(0);
      v25 = (v15 + *(v82 + 20));

      v26 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
      v27 = *(v26 + 24);
      v28 = sub_1A5243334();
      (*(*(v28 - 8) + 8))(v25 + v27, v28);
      v80 = v26;
      v29 = v25 + *(v26 + 28);
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v30 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v29, *(v29 + 1), v29[16]);
      if (v30 == 1)
      {
        sub_1A3C4208C(*(v29 + 3), *(v29 + 4), v29[40]);
        sub_1A3C47A98(0);
        v32 = *(v31 + 64);
        v33 = sub_1A5242C84();
        (*(*(v33 - 8) + 8))(&v29[v32], v33);
      }

      else
      {
        if (*(v29 + 5) >= 3uLL)
        {
        }

        if (*(v29 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v29 + 9), *(v29 + 10), v29[88]);
      }

      v62 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v63 = sub_1A5241F84();
      v64 = *(v63 - 8);
      if (!(*(v64 + 48))(&v29[v62], 1, v63))
      {
        (*(v64 + 8))(&v29[v62], v63);
      }

      v65 = *(v80 + 32);
      v66 = sub_1A5244094();
      (*(*(v66 - 8) + 8))(v25 + v65, v66);

      v67 = *(v15 + *(v82 + 24));
      goto LABEL_75;
    case 0xFu:

      v43 = (v15 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

      v44 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
      v45 = v43 + v44[7];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v46 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v45, *(v45 + 1), v45[16]);
      if (v46 == 1)
      {
        sub_1A3C4208C(*(v45 + 3), *(v45 + 4), v45[40]);
        sub_1A3C47A98(0);
        v48 = *(v47 + 64);
        v49 = sub_1A5242C84();
        (*(*(v49 - 8) + 8))(&v45[v48], v49);
      }

      else
      {
        if (*(v45 + 5) >= 3uLL)
        {
        }

        if (*(v45 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v45 + 9), *(v45 + 10), v45[88]);
      }

      v73 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v74 = sub_1A5241F84();
      v75 = *(v74 - 8);
      if (!(*(v75 + 48))(&v45[v73], 1, v74))
      {
        (*(v75 + 8))(&v45[v73], v74);
      }

      goto LABEL_74;
    case 0x10u:

      v15 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
      v18 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
      goto LABEL_32;
    case 0x11u:

      v15 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

      v18 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
      goto LABEL_32;
    case 0x15u:

      v15 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
      v18 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_32:
      v17 = *(v18 + 24);
LABEL_33:
      v24 = (v15 + v17);
LABEL_34:
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v55 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v24, *(v24 + 1), v24[16]);
      if (v55 == 1)
      {
        sub_1A3C4208C(*(v24 + 3), *(v24 + 4), v24[40]);
        sub_1A3C47A98(0);
        v57 = *(v56 + 64);
        v58 = sub_1A5242C84();
        (*(*(v58 - 8) + 8))(&v24[v57], v58);
      }

      else
      {
        if (*(v24 + 5) >= 3uLL)
        {
        }

        if (*(v24 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v24 + 9), *(v24 + 10), v24[88]);
      }

      v59 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v60 = sub_1A5241F84();
      v61 = *(v60 - 8);
      if (!(*(v61 + 48))(&v24[v59], 1, v60))
      {
        (*(v61 + 8))(&v24[v59], v60);
      }

      break;
    case 0x16u:

      v43 = (v15 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20));
      v44 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
      v50 = v43 + v44[5];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v51 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v50, *(v50 + 1), v50[16]);
      if (v51 == 1)
      {
        sub_1A3C4208C(*(v50 + 3), *(v50 + 4), v50[40]);
        sub_1A3C47A98(0);
        v53 = *(v52 + 64);
        v54 = sub_1A5242C84();
        (*(*(v54 - 8) + 8))(&v50[v53], v54);
      }

      else
      {
        if (*(v50 + 5) >= 3uLL)
        {
        }

        if (*(v50 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v50 + 9), *(v50 + 10), v50[88]);
      }

      v76 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v77 = sub_1A5241F84();
      v78 = *(v77 - 8);
      if (!(*(v78 + 48))(&v50[v76], 1, v77))
      {
        (*(v78 + 8))(&v50[v76], v77);
      }

LABEL_74:
      v67 = *(v43 + v44[8]);
LABEL_75:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CCBB98()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CCBBD0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCBC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CCBCBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCBD60()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CCBD98()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCBDD8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCBE20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCBE78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A5241144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CCBF24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5241144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCBFC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimelineEngineFrame(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TimelineEngineCell(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1A3CCC0EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TimelineEngineFrame(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TimelineEngineCell(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3CCC210()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CCC248()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC288()
{
  v1 = sub_1A52450C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CCC34C()
{
  v1 = sub_1A5245104();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CCC424()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC464()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC49C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC4E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC53C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC584()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC5DC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC61C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC698()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC6E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC718()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC758()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC7A8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC7F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC828()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3CCC940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5240E64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3CCC9FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCCA3C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCCA74()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCABC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCAFC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCB3C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCB80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for InvitationsItem.InvitationType(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CCCC38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for InvitationsItem.InvitationType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCCCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A5241144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CCCD88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5241144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCCE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A5241144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CCCED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5241144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCCF80()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCFC8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CCD004()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1A3F6D768();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80) + 8) & ~*(v7 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1A3CCD198()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CCD1D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCD208()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCD248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3F742D0(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3CCD338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3F742D0(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1A3CCD428()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCD460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C6B4E8(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3CCD54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3C6B4E8(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1A3CCD634()
{
  sub_1A3F7565C(255);
  sub_1A3F7558C(255);
  type metadata accessor for GenerativeStoryEntryCardCommonView(255);
  sub_1A3C6B8D0(&qword_1EB125350, type metadata accessor for GenerativeStoryEntryCardCommonView, &unk_1A533FCE8);
  sub_1A3D6F4A4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCD738()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3CCD7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v13 = a3;
    type metadata accessor for LemonadeSectionedFeedViewModel(255, v6, *(a3 + 24), a4);
    v14 = sub_1A5247CB4();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(v13 + 48);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1A3CCD8E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a3)
  {
    v8 = *(v7 + 56);

    return v8(result, a2, a2);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 44)) = (a2 - 1);
  }

  else
  {
    v9 = result;
    v10 = a4;
    type metadata accessor for LemonadeSectionedFeedViewModel(255, v6, *(a4 + 24), v6);
    v11 = sub_1A5247CB4();
    v12 = *(*(v11 - 8) + 56);
    v13 = v9 + *(v10 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A3CCDA10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  type metadata accessor for LemonadeSectionedStackedFeed(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeSectionedTabbedFeed(255, v1, v2, v3);
  sub_1A5249754();
  sub_1A524B514();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5242CE4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeConformance2();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCE038(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A3F8C454(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A3F8C454(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CCE1BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3F8C454(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A3F8C454(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 60);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CCE340(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A3F8C454(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CCE420(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3F8C454(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 52);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CCE4F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCE540()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCE580(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  sub_1A3F88488(255, a2);
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView(255, v2, v3, v4);
  sub_1A5249F54();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1A524B9D4();
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CCE900(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v7 = a1[2];
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v3);
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A3F88B18(255, v4);
  type metadata accessor for LemonadeSectionedFeedTabBar(255, v2, v1, v7);
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3F88C24(v5);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCEDB8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v2);
  v3 = (sub_1A5248804() - 8);
  v4 = v0 + ((*(*v3 + 80) + 40) & ~*(*v3 + 80));
  (*(*(AssociatedTypeWitness - 8) + 8))(v4, AssociatedTypeWitness);

  v5 = v4 + v3[11];

  if (*(v5 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + 8));
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CCEF5C()
{
  v1 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, v0[2], v0[3], v0[4]);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  v7 = swift_getAssociatedTypeWitness();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  v8 = v0 + v2 + v1[13];
  sub_1A3D35A84(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3), v8[32]);
  sub_1A3DD15BC(*&v6[v1[14]], v6[v1[14] + 8]);
  v9 = v1[15];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A52440D4();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v12 + v5) & ~v5), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CCF268()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCF2A0()
{
  v1 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, v0[2], v0[3], v0[4]);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v2, AssociatedTypeWitness);

  v4 = &v2[v1[13]];
  sub_1A3D35A84(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
  sub_1A3DD15BC(*&v2[v1[14]], v2[v1[14] + 8]);
  v5 = v1[15];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52440D4();
    (*(*(v6 - 8) + 8))(&v2[v5], v6);
  }

  else
  {
  }

  return swift_deallocObject();
}