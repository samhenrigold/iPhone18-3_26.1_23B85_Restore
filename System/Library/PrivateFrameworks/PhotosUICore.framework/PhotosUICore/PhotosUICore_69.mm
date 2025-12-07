unint64_t sub_1A44DA894()
{
  result = qword_1EB13C820;
  if (!qword_1EB13C820)
  {
    sub_1A44DA2BC(255);
    sub_1A44DA944();
    sub_1A44D6AF8(&qword_1EB122198, sub_1A44DA2F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C820);
  }

  return result;
}

unint64_t sub_1A44DA944()
{
  result = qword_1EB13C828;
  if (!qword_1EB13C828)
  {
    sub_1A44DA288(255);
    sub_1A44DA9F4();
    sub_1A44D6AF8(&qword_1EB127A20, sub_1A3D63B0C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C828);
  }

  return result;
}

unint64_t sub_1A44DA9F4()
{
  result = qword_1EB13C830;
  if (!qword_1EB13C830)
  {
    sub_1A44DA254(255);
    sub_1A44DAAA4();
    sub_1A44D6AF8(&qword_1EB127780, sub_1A3E7D334, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C830);
  }

  return result;
}

unint64_t sub_1A44DAAA4()
{
  result = qword_1EB13C838;
  if (!qword_1EB13C838)
  {
    sub_1A44DA184(255);
    sub_1A44DAB54();
    sub_1A44D6AF8(&unk_1EB127760, sub_1A44DA1B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C838);
  }

  return result;
}

unint64_t sub_1A44DAB54()
{
  result = qword_1EB13C840;
  if (!qword_1EB13C840)
  {
    sub_1A44DA0DC(255);
    sub_1A44DAC04();
    sub_1A44D6AF8(&qword_1EB127950, sub_1A3D639BC, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C840);
  }

  return result;
}

unint64_t sub_1A44DAC04()
{
  result = qword_1EB13C848;
  if (!qword_1EB13C848)
  {
    sub_1A44DA0A8(255);
    sub_1A44D9F38(255);
    sub_1A44D6AF8(&qword_1EB13C6C8, sub_1A44D9F38, &protocol conformance descriptor for LemonadeSpecsProviderView<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_1A44D6AF8(&qword_1EB1278C0, sub_1A3D63A24, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C848);
  }

  return result;
}

uint64_t sub_1A44DAD14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A44D7FDC(v2, v3, v5, v4);
}

void sub_1A44DADDC(uint64_t a1)
{
  if (!qword_1EB13C858)
  {
    type metadata accessor for PXActionParameterKey();
    sub_1A44D6AF8(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey, &unk_1A5377DC0);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C858);
    }
  }
}

uint64_t sub_1A44DAFA0(uint64_t result)
{
  v2 = *v1 + 1;
  v3 = __OFSUB__(result, v2);
  v4 = result - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = __OFADD__(v4, 3);
  v5 = v4 + 3;
  if (v3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v5 <= 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

PhotosUICore::LemonadeFeedZoomLevel_optional __swiftcall LemonadeFeedZoomLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

PXSidebarDataManagerFactory __swiftcall PXSidebarDataManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1A44DB454(char a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  swift_getWitnessTable();
  v7 = PhotosModel.photokitObject.getter(v6);
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      if (a3)
      {
        a3 = sub_1A524C634();
      }

      v16 = [objc_allocWithZone(PXNavigationListAssetCollectionItem) initWithAssetCollection:v10 accessoryTitle:0 reorderable:a1 & 1 topLevelIdentifier:a3];

      [v16 setLockState_];
LABEL_13:

      return v16;
    }
  }

  v12 = PhotosModel.photokitObject.getter(v6);
  if (v12)
  {
    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      if (a3)
      {
        v8 = sub_1A524C634();
      }

      else
      {
        v8 = 0;
      }

      v16 = [objc_allocWithZone(PXNavigationListCollectionListItem) initWithCollectionList:v15 accessoryTitle:0 reorderable:a1 & 1 topLevelIdentifier:v8];

      goto LABEL_13;
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A44DB6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x78));
  *v7 = 0;
  v7[1] = 0;
  v8 = *((*v6 & *v3) + 0x88);
  *(v4 + v8) = sub_1A44DDCB8(MEMORY[0x1E69E7CC0]);
  *(v4 + *((*v6 & *v4) + 0x68)) = a1;
  type metadata accessor for LemonadeMediaTypesItemListManager(0);
  sub_1A44DE7F4(&qword_1EB13C890, type metadata accessor for LemonadeMediaTypesItemListManager, &protocol conformance descriptor for PhotoKitItemListManager<A>);

  sub_1A5245904();
}

void sub_1A44DB9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x78));
  *v7 = 0;
  v7[1] = 0;
  v8 = *((*v6 & *v3) + 0x88);
  *(v4 + v8) = sub_1A44DDCB8(MEMORY[0x1E69E7CC0]);
  *(v4 + *((*v6 & *v4) + 0x68)) = a1;
  sub_1A3CA2420(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  sub_1A44DE614(&qword_1EB129FE0, &qword_1EB129FD8, type metadata accessor for PhotoKitItemListManager, &protocol conformance descriptor for PhotoKitItemListManager<A>);

  sub_1A5245904();
}

void sub_1A44DC324()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A5245904();
}

void sub_1A44DC7CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v10[4] = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *((v3 & v2) + 0x58);
  v5 = *((v3 & v2) + 0x50);
  swift_getAssociatedTypeWitness();
  v10[3] = v4;
  v10[2] = v5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10[12] = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = *((v3 & v2) + 0x88);
  swift_beginAccess();
  v10[11] = *(v1 + v9);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A44DD118(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  v3 = *((*v2 & *a1) + 0x70);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v3], AssociatedTypeWitness);
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_1A44DD384(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16 - v11;
  MEMORY[0x1A59016D0](a1, v7, v6, v10);
  v13 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x78));
  v14 = (*(*((v5 & v4) + 0x60) + 8))(*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70)), *v13, v13[1], AssociatedTypeWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v14;
}

id sub_1A44DD550(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_1A44DD384(a3);

  return v5;
}

id sub_1A44DD5CC(uint64_t (*a1)(void, void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1A44DD658(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);

  return result;
}

void sub_1A44DD710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A44DE540(0);
  v34 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1A44DD9BC()
{
  v1 = v0;
  sub_1A44DE540(0);
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
        v20 = *(*(v2 + 56) + v16);
        v21 = (*(v4 + 48) + v16);
        *v21 = v19;
        v21[1] = v18;
        *(*(v4 + 56) + v16) = v20;
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

void sub_1A44DDB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
      sub_1A44DD710(v18, a5 & 1);
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
      sub_1A44DD9BC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v25 = (v23[6] + 16 * v13);
    *v25 = a3;
    v25[1] = a4;
    v26 = (v23[7] + 16 * v13);
    *v26 = a1;
    v26[1] = a2;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v24 = (v23[7] + 16 * v13);
  *v24 = a1;
  v24[1] = a2;

  swift_unknownObjectRelease();
}

unint64_t sub_1A44DDCB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A44DE540(0);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1A44DDDC8(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(a1, 0, 0);
  sub_1A4A49A88();
  v16 = v9;
  v10 = MEMORY[0x1E69E7D40];
  if (a4)
  {
    type metadata accessor for PickerConfiguration(0, v8);
    v11 = PickerConfiguration.__allocating_init()();
    if (v11)
    {
      v12 = *((*v10 & *v11) + 0x3E0);
      v13 = v11;
      v12(1);
      v14 = sub_1A4A4A0D4();
      sub_1A3D6B090(v14);
      if (a5)
      {
        sub_1A3D6BDD4(&v17, 2);
      }
    }
  }

  type metadata accessor for UtilityAlbumItemListManager(0);

  sub_1A4426BEC(v15, 0, v16);
}

void sub_1A44DE1D8(uint64_t a1)
{
  if (!qword_1EB13C898)
  {
    sub_1A3CA2420(255, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
    v3 = v2;
    v4 = sub_1A44DE614(&qword_1EB129FE0, &qword_1EB129FD8, type metadata accessor for PhotoKitItemListManager, &protocol conformance descriptor for PhotoKitItemListManager<A>);
    v5 = type metadata accessor for ItemListManagerDataSectionManager(a1, v3, v4, &off_1F1712C68);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13C898);
    }
  }
}

uint64_t sub_1A44DE2B8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A44DE380(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A44DE4A0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 3) != 0)
    {
      v5 = [objc_opt_self() changeDetailsWithNoIncrementalChanges];
      [v4 updateDataSectionWithChangeDetails_];
    }
  }
}

void sub_1A44DE540(uint64_t a1)
{
  if (!qword_1EB120440)
  {
    sub_1A3C652C8(255, &qword_1EB124A70, off_1E7721248, 0);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120440);
    }
  }
}

void sub_1A44DE5BC()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A44DBFB0();
  }
}

uint64_t sub_1A44DE614(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CA2420(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A44DE6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = sub_1A44DE7F4(a4, a5, &protocol conformance descriptor for PhotoKitItemListManager<A>);
    v11 = type metadata accessor for ItemListManagerDataSectionManager(a1, v9, v10, &off_1F1712C68);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A44DE770(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A44DBCA0(a1, a2, a3, a4);
  }
}

uint64_t sub_1A44DE7F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PhotosDetailsVisualLookupWidgetView(uint64_t a1)
{
  result = qword_1EB18F1D0;
  if (!qword_1EB18F1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A44DE888@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v3 = (a2 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView(0) + 20));
  type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel(0);
  sub_1A44E6248(&unk_1EB12A990, type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t *sub_1A44DE954()
{
  if (qword_1EB18F260 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB5D0;
}

uint64_t *sub_1A44DE9B8()
{
  if (qword_1EB18F268 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB5D8;
}

uint64_t sub_1A44DEA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  sub_1A44E0578(0, &qword_1EB122AD8, sub_1A44E02E8, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v144 - v5;
  sub_1A3EE1618(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v164 = (v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3EE15DC(0);
  v163 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v166 = (v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3EE1534(0);
  v185 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v165 = v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v168 = (v144 - v14);
  v15 = MEMORY[0x1E697F948];
  sub_1A44E5774(0, &qword_1EB122B28, sub_1A44E0330, sub_1A3EE1534, MEMORY[0x1E697F948]);
  v183 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v184 = v144 - v17;
  v157 = sub_1A52489A4();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v152 = v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PhotosDetailsVisualLookupWidgetView(0);
  v20 = v19 - 8;
  v148 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v170 = v22;
  v171 = v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0E4C(0, v21);
  v151 = v23;
  v150 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v149 = v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0CCC(0, v24);
  v153 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v154 = v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1E697CBE8];
  v29 = MEMORY[0x1E697E830];
  sub_1A44E5774(0, &qword_1EB1237F8, sub_1A44E0CCC, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v155 = v144 - v32;
  sub_1A44E0CA4(0, v31);
  v177 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v158 = v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0BC4(0, &qword_1EB121EB0, sub_1A44E0CA4, sub_1A44E1288);
  v179 = v35;
  v160 = *(v35 - 8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v159 = v144 - v37;
  sub_1A44E0A88(0, v36);
  v180 = v38;
  v162 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v161 = v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E5774(0, &qword_1EB122BF0, sub_1A44E0378, sub_1A44E0A88, v15);
  v174 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v178 = v144 - v41;
  v175 = sub_1A5249764();
  v169 = *(v175 - 8);
  v42 = MEMORY[0x1EEE9AC00](v175);
  v167 = v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0460(0, v42);
  v45 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v47 = (v144 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44E5774(0, &qword_1EB1234F0, sub_1A44E0460, v28, v29);
  v49 = MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = v144 - v50;
  sub_1A44E03AC(0, v49);
  v172 = v52;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = v144 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0378(0, v53);
  v173 = v56;
  v147 = *(v56 - 8);
  v57 = MEMORY[0x1EEE9AC00](v56);
  v146 = v144 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0330(0, v57);
  v181 = v59;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v176 = v144 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E02E8(0, v60);
  v63 = v62;
  MEMORY[0x1EEE9AC00](v62);
  v182 = v144 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v66 = *(a1 + *(v20 + 28) + 8);
  if (sub_1A4184E34())
  {
    v144[1] = v63;
    v144[2] = v4;
    v145 = v6;
    if ((*((*MEMORY[0x1E69E7D40] & *v66) + 0x140))() != 5)
    {
      v102 = sub_1A5249584();
      v103 = v164;
      *v164 = v102;
      v103[1] = 0x4028000000000000;
      *(v103 + 16) = 0;
      sub_1A44E60B8(0, &qword_1EB1244B0, sub_1A3EE16AC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
      sub_1A44E3414(v65, v103 + *(v104 + 44));
    }

    if (sub_1A4184D8C(v67))
    {
      *v47 = sub_1A524BC74();
      v47[1] = v68;
      sub_1A44E60B8(0, &qword_1EB13C8C8, sub_1A44E053C, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
      sub_1A44E1830(v65, v47 + *(v69 + 44));
      v70 = v47 + *(v45 + 36);
      v71 = *(sub_1A5248A14() + 20);
      v72 = *MEMORY[0x1E697F468];
      v73 = sub_1A52494A4();
      (*(*(v73 - 8) + 104))(&v70[v71], v72, v73);
      __asm { FMOV            V0.2D, #16.0 }

      *v70 = _Q0;
      sub_1A3EC447C(0);
      v70[*(v79 + 36)] = 0;
      v80 = sub_1A4184BE4();
      if (v81)
      {
        v83 = v80;
      }

      else
      {
        v83 = 0;
      }

      if (v81)
      {
        v84 = v81;
      }

      else
      {
        v84 = 0xE000000000000000;
      }

      *&v191 = v83;
      *(&v191 + 1) = v84;
      sub_1A44E09A8(v82);
      sub_1A3D5F9DC();
      sub_1A524AC14();

      sub_1A44E61E8(v47, sub_1A44E0460);
      sub_1A44E1EA8();
      sub_1A44E1EA8();
      sub_1A524BC74();
      sub_1A52481F4();
      sub_1A44E5AB0(v51, v55, &qword_1EB1234F0, sub_1A44E0460);
      v85 = v172;
      v86 = &v55[*(v172 + 36)];
      v87 = v192;
      *v86 = v191;
      *(v86 + 1) = v87;
      *(v86 + 2) = v193;
      v88 = v167;
      sub_1A5248B84();
      v90 = sub_1A44E08F0(v89);
      v91 = sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
      v92 = v146;
      v93 = v175;
      sub_1A524A974();
      (*(v169 + 8))(v88, v93);
      sub_1A44E61E8(v55, sub_1A44E03AC);
      v94 = v147;
      v95 = v173;
      (*(v147 + 16))(v178, v92, v173);
      swift_storeEnumTagMultiPayload();
      v187 = v85;
      v188 = v93;
      v189 = v90;
      v190 = v91;
      swift_getOpaqueTypeConformance2();
      v97 = sub_1A44E1288(v96);
      v187 = v177;
      v188 = v93;
      v189 = v97;
      v190 = v91;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v187 = v179;
      v188 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v99 = v176;
      sub_1A5249744();
      (*(v94 + 8))(v92, v95);
    }

    else
    {
      v168 = type metadata accessor for PhotosDetailsVisualLookupWidgetView;
      v105 = v171;
      sub_1A44E570C(v65, v171, type metadata accessor for PhotosDetailsVisualLookupWidgetView);
      v106 = (*(v148 + 80) + 16) & ~*(v148 + 80);
      v107 = swift_allocObject();
      v166 = type metadata accessor for PhotosDetailsVisualLookupWidgetView;
      v108 = sub_1A44E58C8(v105, v107 + v106, type metadata accessor for PhotosDetailsVisualLookupWidgetView);
      MEMORY[0x1EEE9AC00](v108);
      v144[-2] = v65;
      sub_1A44E0EE8(0);
      sub_1A44E1678(&qword_1EB1235F0, sub_1A44E0EE8, sub_1A44E11D8);
      v109 = v149;
      sub_1A524B704();
      v110 = v152;
      sub_1A5248994();
      sub_1A44E6248(&qword_1EB121B08, sub_1A44E0E4C, MEMORY[0x1E697D680]);
      sub_1A44E6248(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
      v111 = v154;
      v112 = v151;
      v113 = v157;
      sub_1A524A934();
      (*(v156 + 8))(v110, v113);
      (*(v150 + 8))(v109, v112);
      v114 = (v111 + *(v153 + 36));
      sub_1A3E744F4(0);
      sub_1A5248AF4();
      *v114 = swift_getKeyPath();
      v115 = sub_1A4184BE4();
      if (v116)
      {
        v118 = v115;
      }

      else
      {
        v118 = 0;
      }

      if (v116)
      {
        v119 = v116;
      }

      else
      {
        v119 = 0xE000000000000000;
      }

      *&v191 = v118;
      *(&v191 + 1) = v119;
      sub_1A44E1418(v117);
      sub_1A3D5F9DC();
      v120 = v155;
      sub_1A524AC14();

      sub_1A44E61E8(v111, sub_1A44E0CCC);
      sub_1A44E1EA8();
      sub_1A44E1EA8();
      sub_1A524BC74();
      sub_1A52481F4();
      v121 = v158;
      sub_1A44E5AB0(v120, v158, &qword_1EB1237F8, sub_1A44E0CCC);
      v122 = v177;
      v123 = (v121 + *(v177 + 36));
      v124 = v192;
      *v123 = v191;
      v123[1] = v124;
      v123[2] = v193;
      v125 = v167;
      sub_1A5248B84();
      v127 = sub_1A44E1288(v126);
      v128 = sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
      v129 = v159;
      v130 = v175;
      sub_1A524A974();
      (*(v169 + 8))(v125, v130);
      sub_1A44E61E8(v121, sub_1A44E0CA4);
      v131 = v65;
      v132 = v171;
      sub_1A44E570C(v131, v171, v168);
      v133 = swift_allocObject();
      sub_1A44E58C8(v132, v133 + v106, v166);
      v187 = v122;
      v188 = v130;
      v189 = v127;
      v190 = v128;
      v134 = swift_getOpaqueTypeConformance2();
      v135 = v161;
      v136 = v179;
      sub_1A524AA84();

      (*(v160 + 8))(v129, v136);
      v137 = v162;
      v138 = v180;
      (*(v162 + 16))(v178, v135, v180);
      swift_storeEnumTagMultiPayload();
      v140 = sub_1A44E08F0(v139);
      v187 = v172;
      v188 = v130;
      v189 = v140;
      v190 = v128;
      swift_getOpaqueTypeConformance2();
      v187 = v136;
      v188 = v134;
      swift_getOpaqueTypeConformance2();
      v99 = v176;
      sub_1A5249744();
      (*(v137 + 8))(v135, v138);
    }

    sub_1A44E5860(v99, v184, sub_1A44E0330);
    swift_storeEnumTagMultiPayload();
    sub_1A44E5570(v141);
    sub_1A44E1678(&qword_1EB123550, sub_1A3EE1534, sub_1A3EE4B64);
    v142 = v182;
    sub_1A5249744();
    sub_1A44E61E8(v99, sub_1A44E0330);
    sub_1A44E5860(v142, v145, sub_1A44E02E8);
    swift_storeEnumTagMultiPayload();
    sub_1A44E54B8(v143);
    sub_1A5249744();
    return sub_1A44E61E8(v142, sub_1A44E02E8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A44E54B8(v100);
    return sub_1A5249744();
  }
}

void sub_1A44E0258(uint64_t a1)
{
  if (!qword_1EB121CE0)
  {
    sub_1A44E0578(255, &qword_1EB122398, sub_1A44E02E8, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121CE0);
    }
  }
}

void sub_1A44E03D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  if (!*a2)
  {
    sub_1A44E5774(255, a3, a4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A44E04A8(uint64_t a1)
{
  if (!qword_1EB121588)
  {
    sub_1A44E053C(255);
    sub_1A44E6248(&qword_1EB121278, sub_1A44E053C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121588);
    }
  }
}

void sub_1A44E0578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A44E05E4(uint64_t a1)
{
  if (!qword_1EB123F70)
  {
    sub_1A44E0D50(255, &qword_1EB121F48, sub_1A44E067C, &qword_1EB121A70, sub_1A44E067C);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123F70);
    }
  }
}

void sub_1A44E067C(uint64_t a1)
{
  if (!qword_1EB121A68)
  {
    sub_1A44E0710(255);
    sub_1A44E6248(&qword_1EB121700, sub_1A44E0710, MEMORY[0x1E6981870]);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121A68);
    }
  }
}

void sub_1A44E0710(uint64_t a1)
{
  if (!qword_1EB1216F8)
  {
    sub_1A44E07A4(255);
    sub_1A44E6248(&qword_1EB1210F0, sub_1A44E07A4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1216F8);
    }
  }
}

void sub_1A44E07E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A44E085C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A44E6068(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A44E08F0(double a1)
{
  result = qword_1EB123260;
  if (!qword_1EB123260)
  {
    sub_1A44E03AC(255, a1);
    sub_1A44E1340(&qword_1EB1234F8, &qword_1EB1234F0, sub_1A44E0460, sub_1A44E09A8, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123260);
  }

  return result;
}

unint64_t sub_1A44E09A8(double a1)
{
  result = qword_1EB1239E8;
  if (!qword_1EB1239E8)
  {
    sub_1A44E0460(255, a1);
    sub_1A44E6248(&qword_1EB121590, sub_1A44E04A8, MEMORY[0x1E6981880]);
    sub_1A44E6248(&qword_1EB122308, sub_1A3EC447C, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1239E8);
  }

  return result;
}

void sub_1A44E0A88(uint64_t a1, double a2)
{
  if (!qword_1EB121E70)
  {
    sub_1A44E0BC4(255, &qword_1EB121EB0, sub_1A44E0CA4, sub_1A44E1288);
    sub_1A44E0CA4(255, v2);
    sub_1A5249764();
    sub_1A44E1288(v3);
    sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E70);
    }
  }
}

void sub_1A44E0BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5249764();
    a4();
    sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A44E0D50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A52489A4();
    sub_1A44E6248(a4, a5, MEMORY[0x1E697D680]);
    sub_1A44E6248(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A44E0E4C(uint64_t a1, double a2)
{
  if (!qword_1EB121B00)
  {
    sub_1A44E0EE8(255);
    sub_1A44E1678(&qword_1EB1235F0, sub_1A44E0EE8, sub_1A44E11D8);
    v2 = sub_1A524B764();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB121B00);
    }
  }
}

void sub_1A44E0F60(uint64_t a1)
{
  if (!qword_1EB121918)
  {
    sub_1A44E0FF4(255);
    sub_1A44E6248(&qword_1EB121120, sub_1A44E0FF4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121918);
    }
  }
}

void sub_1A44E1028(uint64_t a1, double a2)
{
  if (!qword_1EB123300)
  {
    sub_1A44E10A0(255, a2);
    sub_1A44E10C8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB123300);
    }
  }
}

void sub_1A44E10C8(uint64_t a1)
{
  if (!qword_1EB121990)
  {
    sub_1A44E115C(255);
    sub_1A44E6248(&unk_1EB121240, sub_1A44E115C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121990);
    }
  }
}

void sub_1A44E115C(uint64_t a1)
{
  if (!qword_1EB121238)
  {
    sub_1A44E5EA0(255, &qword_1EB124018, sub_1A3DF14C0, MEMORY[0x1E6981748]);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121238);
    }
  }
}

unint64_t sub_1A44E11D8()
{
  result = qword_1EB123BA0;
  if (!qword_1EB123BA0)
  {
    sub_1A44E0F24(255);
    sub_1A44E6248(&qword_1EB121920, sub_1A44E0F60, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123BA0);
  }

  return result;
}

unint64_t sub_1A44E1288(double a1)
{
  result = qword_1EB1233E8;
  if (!qword_1EB1233E8)
  {
    sub_1A44E0CA4(255, a1);
    sub_1A44E1340(&qword_1EB123800, &qword_1EB1237F8, sub_1A44E0CCC, sub_1A44E1418, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1233E8);
  }

  return result;
}

uint64_t sub_1A44E1340(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void), double a5)
{
  result = *a1;
  if (!result)
  {
    sub_1A44E5774(255, a2, a3, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    a4();
    sub_1A44E6248(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A44E1418(double a1)
{
  result = qword_1EB123F68;
  if (!qword_1EB123F68)
  {
    sub_1A44E0CCC(255, a1);
    sub_1A44E0E4C(255, v2);
    sub_1A52489A4();
    sub_1A44E6248(&qword_1EB121B08, sub_1A44E0E4C, MEMORY[0x1E697D680]);
    sub_1A44E6248(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1A44E6248(&qword_1EB1220F0, sub_1A3E744F4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F68);
  }

  return result;
}

void sub_1A44E1578(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A44E07E0(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A44E15D4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A44E16F8(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A44E1678(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A44E16F8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A44E085C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A44E1748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A44E085C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A44E17CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1A44E1830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v53 = sub_1A52489A4();
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosDetailsVisualLookupWidgetView(0);
  v5 = v4 - 8;
  v47 = *(v4 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A44E067C(0);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E05E4(0);
  v52 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  sub_1A3EC3E2C(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v22 = *(a1 + *(v5 + 28) + 8);
  sub_1A4110614(v22);
  sub_1A44E1EA8();
  sub_1A44E1EA8();
  sub_1A524BC74();
  sub_1A52481F4();
  v23 = &v21[*(v17 + 44)];
  v24 = v59;
  *v23 = v58;
  *(v23 + 1) = v24;
  *(v23 + 2) = v60;
  sub_1A44E570C(a1, &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsVisualLookupWidgetView);
  v25 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v26 = swift_allocObject();
  sub_1A44E58C8(&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PhotosDetailsVisualLookupWidgetView);
  v57 = a1;
  sub_1A44E0710(0);
  sub_1A44E6248(&qword_1EB121700, sub_1A44E0710, MEMORY[0x1E6981870]);
  sub_1A524B704();
  v27 = v48;
  sub_1A5248994();
  sub_1A44E6248(&qword_1EB121A70, sub_1A44E067C, MEMORY[0x1E697D680]);
  sub_1A44E6248(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v28 = v49;
  v29 = v53;
  sub_1A524A934();
  (*(v55 + 8))(v27, v29);
  v30 = (*(v50 + 8))(v10, v28);
  v31 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0xC0))(v30);
  [v31 contentGuideInsets];

  EdgeInsets.init(_:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = sub_1A524A064();
  v41 = v51;
  v42 = &v15[*(v52 + 44)];
  *v42 = v40;
  *(v42 + 1) = v33;
  *(v42 + 2) = v35;
  *(v42 + 3) = v37;
  *(v42 + 4) = v39;
  v42[40] = 0;
  sub_1A44E5860(v21, v41, sub_1A3EC3E2C);
  v43 = v54;
  sub_1A44E5860(v15, v54, sub_1A44E05E4);
  v44 = v56;
  sub_1A44E5860(v41, v56, sub_1A3EC3E2C);
  sub_1A44E07E0(0, &qword_1EB124288, sub_1A3EC3E2C, sub_1A44E05E4);
  sub_1A44E5860(v43, v44 + *(v45 + 48), sub_1A44E05E4);
  sub_1A44E61E8(v15, sub_1A44E05E4);
  sub_1A44E61E8(v21, sub_1A3EC3E2C);
  sub_1A44E61E8(v43, sub_1A44E05E4);
  return sub_1A44E61E8(v41, sub_1A3EC3E2C);
}

uint64_t sub_1A44E1EA8()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4248EC0(v4);
  v5 = *MEMORY[0x1E69E7D40] & **(v0 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView(0) + 20) + 8);
  v6 = (*(v5 + 320))();
  v8 = sub_1A4184D8C(v7);
  if (v6 != 5)
  {
    return (*(v2 + 8))(v4, v1);
  }

  if (v8)
  {
    sub_1A4110B60();
  }

  else
  {
    sub_1A4110B54();
  }

  v10 = objc_opt_self();
  [v10 dynamicTextScaleFactorForCategory_];
  return (*(v2 + 8))(v4, v1);
}

void sub_1A44E205C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56[4] = a2;
  sub_1A44E08C8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56[5] = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56[3] = v56 - v6;
  v7 = sub_1A524B554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33DEC(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56[2] = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - v14;
  v16 = *(a1 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView(0) + 20) + 8);
  sub_1A4184B18();
  sub_1A524B574();
  (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
  v17 = sub_1A524B5C4();

  v18.n128_f64[0] = (*(v8 + 8))(v10, v7);
  if ((sub_1A4184D8C(v18) & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x140))();
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v64 = 1;
  *&v63[6] = v65;
  *&v63[22] = v66;
  *&v63[38] = v67;
  v19 = sub_1A524B484();
  KeyPath = swift_getKeyPath();
  v60 = v17;
  LOWORD(v61[0]) = 1;
  *(v61 + 2) = *v63;
  *(&v61[1] + 2) = *&v63[16];
  *(&v61[2] + 2) = *&v63[32];
  *&v61[3] = *&v63[46];
  *(&v61[3] + 1) = KeyPath;
  *&v62 = v19;
  sub_1A3E33E34(0);
  sub_1A44E15D4(&qword_1EB1281E0, sub_1A3E33E34, sub_1A3E44BC8);
  sub_1A524AAE4();
  v58[2] = v61[1];
  v58[3] = v61[2];
  v58[4] = v61[3];
  v59 = v62;
  v58[0] = v60;
  v58[1] = v61[0];
  sub_1A44E6188(v58, sub_1A3E33E34);
  sub_1A4184B0C();
  v56[0] = v21;
  v23 = v22;
  sub_1A4184A2C();
  v25 = v24;
  v27 = v26;
  v28 = *MEMORY[0x1E69DB970];
  v29 = sub_1A44E42F4(*MEMORY[0x1E69DB970]);
  v56[1] = v15;
  v30 = v29;
  v31 = *MEMORY[0x1E69DB980];
  v32 = sub_1A44E42F4(*MEMORY[0x1E69DB980]);
  v33 = objc_opt_self();
  v34 = [v33 secondaryLabelColor];
  v35 = [v33 labelColor];
  sub_1A44132D0(v56[0], v23, v25, v27, v30, v32, v34, v35, v68);
  v36 = sub_1A44E1EA8();
  v38 = v37;
  v39 = *((*MEMORY[0x1E69E7D40] & *v16) + 0xC0);
  v40 = (v39)(v36);
  [v40 contentGuideInsets];
  v42 = v41;

  v43 = v39();
  [v43 contentGuideInsets];

  v44 = sub_1A441277C();
  v45 = sub_1A441282C();
  sub_1A441286C(v68, 2, COERCE__INT64(v38 - (v42 + 8.0)), 0, v44, v45, &v57);
  sub_1A4184B0C();
  v47 = v46;
  v49 = v48;
  sub_1A4184A2C();
  v51 = v50;
  v53 = v52;
  v54 = sub_1A44E42F4(v28);
  v55 = sub_1A44E42F4(v31);
  sub_1A44132D0(v47, v49, v51, v53, v54, v55, [v33 secondaryLabelColor], objc_msgSend(v33, sel_labelColor), &v69);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44E27DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1A44E5774(0, &unk_1EB1282D0, sub_1A429B9D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  sub_1A44E10A0(0, v5);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v26 = &v23 - v14;
  v15 = *(type metadata accessor for PhotosDetailsVisualLookupWidgetView(0) + 20);
  v25 = a1;
  v16 = *(a1 + v15 + 8);
  sub_1A4184B18();
  v17 = sub_1A524B574();
  v18 = sub_1A524B484();
  KeyPath = swift_getKeyPath();
  v29 = v17;
  v30 = KeyPath;
  *v31 = v18;
  sub_1A429B9D8(0);
  sub_1A3E7440C();
  sub_1A524AAE4();

  if ((sub_1A4184D8C(v20) & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x140))();
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A44E5FC0(v7, v12);
  v21 = &v12[*(v24 + 36)];
  v22 = v32[1];
  *v21 = v32[0];
  *(v21 + 1) = v22;
  *(v21 + 2) = v32[2];
  sub_1A44E58C8(v12, v26, sub_1A44E10A0);
  sub_1A5249314();
  LOBYTE(v29) = 0;
  sub_1A44E2C18();
}

void sub_1A44E2C18()
{
  v1 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A44E2D54(&v3[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)]);
}

void sub_1A44E2D54(uint64_t a1@<X8>)
{
  v28 = a1;
  sub_1A44E4F68(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A44E4F9C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A44E4FD0(0);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52408C4();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v21 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v1 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView(0) + 20) + 8);
  sub_1A4184A2C();
  v23 = v11;
  v24 = v12;
  sub_1A4184B0C();
  sub_1A52408B4();
  v20 = objc_opt_self();
  v13 = [v20 secondaryLabelColor];
  v29 = sub_1A524B284();
  v19 = sub_1A3EE4384();
  v14 = sub_1A52408D4();
  v15 = *MEMORY[0x1E69E7D40] & *v10;
  v17 = *(v15 + 0x140);
  v18 = v15 + 320;
  if (v17(v14) == 5)
  {
    PXCappedFontWithTextStyleAndWeight();
  }

  PXCappedFontWithTextStyle();
}

void sub_1A44E3414(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[4] = a2;
  sub_1A3EE179C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3EE1760(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3EE1724(0);
  v15[1] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v15[3] = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v15[2] = v15 - v9;
  sub_1A3EE16E8(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v15 - v13;
  sub_1A524B994();
  *&v14[*(v11 + 44)] = 0;
  v15[0] = a1;
  sub_1A44E396C(a1);
}

void sub_1A44E396C(uint64_t a1)
{
  sub_1A3EE16E8(0);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3EE18A8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  *v8 = sub_1A5249314();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_1A44E60B8(0, &qword_1EB124550, sub_1A3EE193C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A44E3BE4(a1, &v8[*(v9 + 44)]);
}

void sub_1A44E3BE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[7] = a2;
  sub_1A44E1748(0, &qword_1EB1282C0, sub_1A3EE213C);
  v23[3] = v3;
  v23[5] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23[1] = v23 - v4;
  sub_1A3EE2044(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23[6] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v23[2] = v23 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1A44E6124(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  sub_1A44E6124(0, &qword_1EB121598, sub_1A3EE1A7C, v9);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v23 - v15);
  sub_1A3EE19E8(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v23[4] = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  *v16 = sub_1A524BC74();
  v16[1] = v20;
  sub_1A44E60B8(0, &qword_1EB124438, sub_1A3EE1B10, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A44E45A8(a1, v16 + *(v21 + 44));
  sub_1A3EE1A7C(0);
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  sub_1A44E2D54(v13);
}

double sub_1A44E4270(uint64_t a1, char a2, char a3)
{
  result = 0.0;
  if (a2)
  {
    if (a3)
    {
      v5 = sub_1A4110B60();
    }

    else
    {
      v5 = sub_1A4110B54();
    }

    v6 = *v5;
    v7 = objc_opt_self();
    [v7 dynamicTextScaleFactorForCategory_];
    return v6 * v8;
  }

  return result;
}

id sub_1A44E42F4(double a1)
{
  type metadata accessor for PhotosDetailsVisualLookupWidgetView(0);
  v3 = sub_1A4184D8C(v2);
  v4 = MEMORY[0x1E69DDD00];
  if ((v3 & 1) == 0)
  {
    v4 = MEMORY[0x1E69DDCF8];
  }

  v5 = *v4;
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle_];

  v8 = [v7 fontDescriptor];
  sub_1A44E5E20(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v10 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  sub_1A44E6124(0, &qword_1EB12F998, sub_1A3FBDDDC, MEMORY[0x1E69E6F90]);
  v11 = swift_initStackObject();
  v12 = MEMORY[0x1E69DB990];
  *(v11 + 16) = xmmword_1A52F8E10;
  v13 = *v12;
  *(v11 + 32) = *v12;
  *(v11 + 40) = a1;
  v14 = v10;
  v15 = v13;
  v16 = sub_1A3FBDE9C(v11);
  swift_setDeallocating();
  sub_1A44E6188(v11 + 32, sub_1A3FBDDDC);
  sub_1A44E5F0C(0, &qword_1EB12F9A8, MEMORY[0x1E69E5E28]);
  *(inited + 64) = v17;
  *(inited + 40) = v16;
  sub_1A3FE1D98(inited);
  swift_setDeallocating();
  sub_1A3FBDFF8(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_1A44E6248(&qword_1EB1267F8, type metadata accessor for AttributeName, &unk_1A530E840);
  v18 = sub_1A524C3D4();

  v19 = [v8 fontDescriptorByAddingAttributes_];

  v20 = [v6 fontWithDescriptor:v19 size:0.0];
  return v20;
}

uint64_t sub_1A44E45A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v75 = a2;
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE1D04(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE1BA8(0);
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v70[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v70[-v12];
  v13 = *(a1 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView(0) + 20) + 8);
  sub_1A4184B18();
  v14 = sub_1A524B574();
  v15 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  v18 = sub_1A4184D8C(v17);
  v20 = MEMORY[0x1E69E7D40];
  if (v18)
  {
    if (sub_1A4184D8C(v19))
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  (*((*MEMORY[0x1E69E7D40] & *v13) + 0x140))();
  if ((sub_1A4184D8C(v21) & 1) == 0)
  {
LABEL_3:
    (*((*v20 & *v13) + 0x140))();
  }

LABEL_5:
  sub_1A524BC74();
  sub_1A52481F4();
  if (qword_1EB18F268 != -1)
  {
    swift_once();
  }

  v22 = qword_1EB1EB5D8;
  v23 = swift_getKeyPath();
  *&v88 = v14;
  *(&v88 + 1) = KeyPath;
  *(v89 + 8) = v100;
  *(&v89[1] + 8) = v101;
  *(&v89[2] + 8) = v102;
  *&v89[0] = v15;
  *(&v89[3] + 1) = v23;
  v90 = v22;
  v24 = *MEMORY[0x1E697E6E8];
  v25 = sub_1A52486A4();
  (*(*(v25 - 8) + 104))(v8, v24, v25);
  sub_1A44E6248(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);

  if (sub_1A524C594())
  {
    sub_1A4070578(0);
    sub_1A44E15D4(&qword_1EB1281D0, sub_1A4070578, sub_1A40707FC);
    sub_1A44E6248(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    sub_1A524AB84();
    sub_1A44E6188(v8, sub_1A3EE1D04);
    v103[2] = v89[1];
    v103[3] = v89[2];
    v103[4] = v89[3];
    v104 = v90;
    v103[0] = v88;
    v103[1] = v89[0];
    sub_1A44E6188(v103, sub_1A4070578);
    v26 = *sub_1A4758698();
    sub_1A524B5D4();
    v27 = *MEMORY[0x1E6981698];
    v28 = sub_1A524B594();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v5, v27, v28);
    (*(v29 + 56))(v5, 0, 1, v28);
    v74 = sub_1A524B564();

    sub_1A44E6188(v5, sub_1A3EE4C14);
    if (qword_1EB18F260 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_9:
  v30 = qword_1EB1EB5D0;
  v72 = swift_getKeyPath();
  v73 = v30;

  v31 = sub_1A524A094();
  v32 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v31)
  {
    v32 = sub_1A524A0A4();
  }

  v71 = v32;
  sub_1A5247BC4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v95 = 0;
  v41 = sub_1A524A074();
  v42 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v41)
  {
    v42 = sub_1A524A0A4();
  }

  sub_1A5247BC4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v97 = 0;
  v51 = v76;
  v52 = v77;
  v53 = *(v76 + 16);
  v54 = v78;
  v53(v78, v79, v77);
  v55 = v75;
  v53(v75, v54, v52);
  sub_1A44E07E0(0, &qword_1EB1275B8, sub_1A3EE1BA8, sub_1A3EE1F24);
  v57 = &v55[*(v56 + 48)];
  v59 = v73;
  v58 = v74;
  v60 = v72;
  *&v80 = v74;
  *(&v80 + 1) = v72;
  *&v81 = v73;
  v61 = v71;
  BYTE8(v81) = v71;
  *(&v81 + 9) = *v96;
  HIDWORD(v81) = *&v96[3];
  *&v82 = v34;
  *(&v82 + 1) = v36;
  *&v83 = v38;
  *(&v83 + 1) = v40;
  LOBYTE(v84) = 0;
  *(&v84 + 1) = *v99;
  DWORD1(v84) = *&v99[3];
  BYTE8(v84) = v42;
  HIDWORD(v84) = *&v98[3];
  *(&v84 + 9) = *v98;
  *&v85 = v44;
  *(&v85 + 1) = v46;
  *&v86 = v48;
  *(&v86 + 1) = v50;
  v87 = 0;
  v62 = v84;
  v63 = v85;
  v64 = v86;
  v57[112] = 0;
  *(v57 + 5) = v63;
  *(v57 + 6) = v64;
  v65 = v80;
  v66 = v81;
  v67 = v82;
  *(v57 + 3) = v83;
  *(v57 + 4) = v62;
  *(v57 + 1) = v66;
  *(v57 + 2) = v67;
  *v57 = v65;
  sub_1A44E570C(&v80, &v88, sub_1A3EE1F24);
  v68 = *(v51 + 8);
  v68(v79, v52);
  *&v88 = v58;
  *(&v88 + 1) = v60;
  *&v89[0] = v59;
  BYTE8(v89[0]) = v61;
  *(v89 + 9) = *v96;
  HIDWORD(v89[0]) = *&v96[3];
  *&v89[1] = v34;
  *(&v89[1] + 1) = v36;
  *&v89[2] = v38;
  *(&v89[2] + 1) = v40;
  LOBYTE(v89[3]) = 0;
  *(&v89[3] + 1) = *v99;
  DWORD1(v89[3]) = *&v99[3];
  BYTE8(v89[3]) = v42;
  HIDWORD(v89[3]) = *&v98[3];
  *(&v89[3] + 9) = *v98;
  v90 = v44;
  v91 = v46;
  v92 = v48;
  v93 = v50;
  v94 = 0;
  sub_1A44E6188(&v88, sub_1A3EE1F24);
  return (v68)(v78, v52);
}

uint64_t sub_1A44E4E0C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a3 + *(a2 + 20));
  type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel(0);
  sub_1A44E6248(&unk_1EB12A990, type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v5 = result;
  v5[1] = v7;
  return result;
}

void sub_1A44E4EC0(uint64_t a1@<X8>)
{
  sub_1A44DEA08(v1, a1);
  v3 = sub_1A524BD54();
  v4 = sub_1A4184860();
  sub_1A44E5774(0, &qword_1EB123D10, sub_1A44E0258, sub_1A412D698, MEMORY[0x1E697E830]);
  v6 = (a1 + *(v5 + 36));
  *v6 = v3;
  v6[1] = v4;
}

void sub_1A44E4FD0(uint64_t a1)
{
  if (!qword_1EB120B18)
  {
    sub_1A52407C4();
    sub_1A44E6248(&qword_1EB126060, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v1 = sub_1A524D104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120B18);
    }
  }
}

uint64_t sub_1A44E5064(uint64_t a1)
{
  result = sub_1A44E6248(&qword_1EB12A9F8, type metadata accessor for PhotosDetailsVisualLookupWidgetView, &unk_1A53437FC);
  *(a1 + 8) = result;
  return result;
}

void sub_1A44E5100(uint64_t a1)
{
  sub_1A44E6124(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A44E51B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A44E51B4(uint64_t a1)
{
  if (!qword_1EB1243A8)
  {
    type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel(255);
    sub_1A44E6248(&unk_1EB12A990, type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1243A8);
    }
  }
}

unint64_t sub_1A44E5258(double a1)
{
  result = qword_1EB123D18;
  if (!qword_1EB123D18)
  {
    sub_1A44E5774(255, &qword_1EB123D10, sub_1A44E0258, sub_1A412D698, MEMORY[0x1E697E830]);
    sub_1A44E5390(&qword_1EB121CE8, sub_1A44E0258, sub_1A44E5400, MEMORY[0x1E6981600]);
    sub_1A44E6248(&qword_1EB128010, sub_1A412D698, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D18);
  }

  return result;
}

uint64_t sub_1A44E5390(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A44E5400()
{
  result = qword_1EB1223A0;
  if (!qword_1EB1223A0)
  {
    sub_1A44E0578(255, &qword_1EB122398, sub_1A44E02E8, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A44E54B8(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1223A0);
  }

  return result;
}

unint64_t sub_1A44E54B8(double a1)
{
  result = qword_1EB122450;
  if (!qword_1EB122450)
  {
    sub_1A44E02E8(255, a1);
    sub_1A44E5570(v2);
    sub_1A44E1678(&qword_1EB123550, sub_1A3EE1534, sub_1A3EE4B64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122450);
  }

  return result;
}

unint64_t sub_1A44E5570(double a1)
{
  result = qword_1EB1226B0;
  if (!qword_1EB1226B0)
  {
    sub_1A44E0330(255, a1);
    sub_1A44E03AC(255, v2);
    sub_1A5249764();
    sub_1A44E08F0(v3);
    sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1A44E0BC4(255, &qword_1EB121EB0, sub_1A44E0CA4, sub_1A44E1288);
    sub_1A44E0CA4(255, v4);
    sub_1A44E1288(v5);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1226B0);
  }

  return result;
}

uint64_t sub_1A44E570C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A44E5774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A44E57F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44E5860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44E58C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A44E5930(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A44E60B8(0, &qword_1EB13C8D8, sub_1A44E0FF4, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A44E27DC(v4, a2 + *(v5 + 44));
}

uint64_t sub_1A44E5AB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A44E5774(0, a3, a4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm_56()
{
  v1 = type metadata accessor for PhotosDetailsVisualLookupWidgetView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
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

double sub_1A44E5C64()
{
  v1 = type metadata accessor for PhotosDetailsVisualLookupWidgetView(0);
  v2 = *(*(v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 8) + OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsVisualLookupWidgetViewModel_onTappedAction);

  v2(v3);

  return result;
}

void sub_1A44E5D00(uint64_t a1@<X8>)
{
  v4 = *(v2 + 16);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  sub_1A44E60B8(0, &qword_1EB13C8D0, sub_1A44E07A4, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A44E205C(v4, a1 + *(v5 + 44));
}

void sub_1A44E5E20(uint64_t a1)
{
  if (!qword_1EB1261B0)
  {
    sub_1A44E5EA0(255, &qword_1EB1267F0, type metadata accessor for AttributeName, MEMORY[0x1E69E7CA0] + 8);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1261B0);
    }
  }
}

void sub_1A44E5EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A44E5F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TraitKey(255);
    v7 = v6;
    type metadata accessor for Weight(255);
    v9 = v8;
    v10 = sub_1A44E6248(&qword_1EB126878, type metadata accessor for TraitKey, &unk_1A5310730);
    v11 = a3(a1, v7, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A44E5FC0(uint64_t a1, uint64_t a2)
{
  sub_1A44E5774(0, &unk_1EB1282D0, sub_1A429B9D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44E6068(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A44E60B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

void sub_1A44E6124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A44E6188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44E61E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44E6248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v9 = *(*(a1 + 16) + 16);
  v5 = type metadata accessor for SendableTransfer(0, v9, a3, a4);
  return sub_1A3C7BE04(sub_1A44E64B0, &v8, MEMORY[0x1E69E73E0], v5, v6, a2);
}

uint64_t sub_1A44E63D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_1A44E64F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A44E6564()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v3 = 1;
  type metadata accessor for LemonadeAlbumsViewOptionsModel(0);
  v1 = swift_allocObject();
  result = sub_1A44E7310(v0, &v3);
  qword_1EB163C88 = v1;
  return result;
}

uint64_t sub_1A44E65E0(void *a1, char *a2)
{
  v4 = swift_allocObject();
  sub_1A44E7310(a1, a2);
  return v4;
}

uint64_t *sub_1A44E6630()
{
  if (qword_1EB163C80 != -1)
  {
    swift_once();
  }

  return &qword_1EB163C88;
}

double static LemonadeAlbumsViewOptionsModel.shared.getter()
{
  if (qword_1EB163C80 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1A44E66DC(char *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 160);
  v3((&v7 + 3));
  BYTE2(v7) = BYTE3(v7);
  BYTE1(v7) = v2;
  sub_1A44E7418();
  if ((sub_1A524C594() & 1) == 0)
  {
    v4 = v1[4];
    if (v4)
    {
      v3(&v7);
      v5 = LemonadeAlbumCellStyle.rawValue.getter();
      v6 = sub_1A524C634();
      [v4 setInteger:v5 forKey:v6];
    }
  }
}

uint64_t (*sub_1A44E67C8(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_1A44E67F4;
}

void sub_1A44E67F4(_BYTE *a1, char a2)
{
  v2 = *(*a1 + 16);
  *(*a1 + 16) = a1[8];
  if (a2)
  {
    v4 = v2;
    v3 = &v4;
  }

  else
  {
    v5 = v2;
    v3 = &v5;
  }

  sub_1A44E66DC(v3);
}

void *sub_1A44E6844@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A44E68A0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 168))(&v4);
}

void sub_1A44E68F8(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 304))();

  *a1 = v1[16];
}

double sub_1A44E696C(char *a1)
{
  v2 = *a1;
  v9 = v1[16];
  v8 = v2;
  sub_1A44E7418();
  if (sub_1A524C594())
  {
    v3 = v1[16];
    v1[16] = v2;
    v7[0] = v3;
    sub_1A44E66DC(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 312))(v6);
  }

  return result;
}

uint64_t (*sub_1A44E6A9C(uint64_t *a1))()
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
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A44E74B8();
  sub_1A52415F4();

  v4[7] = sub_1A44E67C8(v4);
  return sub_1A44E6BBC;
}

uint64_t sub_1A44E6C30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A44E6CC8()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  swift_beginAccess();
  return v0[18];
}

void sub_1A44E6D48(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[18] == v2)
  {
    v1[18] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 312))(v4);
  }
}

uint64_t (*sub_1A44E6E44(uint64_t *a1))()
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
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A44E74B8();
  sub_1A52415F4();

  v4[7] = sub_1A44E6BE0(v4);
  return sub_1A44E6F64;
}

void *sub_1A44E6F7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 264))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A44E6FE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 272))(&v4);
}

void sub_1A44E7040(void *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 304))();

  swift_beginAccess();
  *a1 = v1[3];
}

double sub_1A44E70D0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v1[3] != v2)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 312))(v5);
  }

  return result;
}

uint64_t (*sub_1A44E71C0(uint64_t *a1))()
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
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A44E74B8();
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A44E72E0;
}

uint64_t sub_1A44E7310(void *a1, char *a2)
{
  v4 = *a2;
  *(v2 + 18) = 0;
  *(v2 + 24) = 3;
  *(v2 + 40) = 0xD000000000000028;
  *(v2 + 48) = 0x80000001A53DA380;
  sub_1A5241604();
  *(v2 + 32) = a1;
  if (a1)
  {
    v5 = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  LemonadeAlbumCellStyle.init(rawValue:)(0);

  v6 = v8;
  if (v8 == 2)
  {
    v6 = v4;
  }

  *(v2 + 16) = v6 & 1;
  *(v2 + 17) = v4;
  return v2;
}

unint64_t sub_1A44E7418()
{
  result = qword_1EB13C8E0;
  if (!qword_1EB13C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C8E0);
  }

  return result;
}

void sub_1A44E746C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
  v3 = v2;
  sub_1A44E66DC(&v3);
}

unint64_t sub_1A44E74B8()
{
  result = qword_1EB1254D0;
  if (!qword_1EB1254D0)
  {
    type metadata accessor for LemonadeAlbumsViewOptionsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1254D0);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeAlbumsViewOptionsModel(uint64_t a1)
{
  result = qword_1EB163C70;
  if (!qword_1EB163C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LemonadeAlbumsViewOptionsModel.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeAlbumsViewOptionsModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL LemonadeAlbumsContentFilter.isFilterApplied.getter()
{
  if (*v0)
  {
    v1 = *v0 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

double sub_1A44E77A0@<D0>(void *a1@<X8>)
{
  if (qword_1EB163C80 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB163C88;

  return result;
}

uint64_t sub_1A44E7810()
{
  sub_1A44E784C();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A44E784C()
{
  result = qword_1EB15A830[0];
  if (!qword_1EB15A830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A830);
  }

  return result;
}

unint64_t sub_1A44E78E0()
{
  result = qword_1EB13C8E8;
  if (!qword_1EB13C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C8E8);
  }

  return result;
}

unint64_t sub_1A44E7940()
{
  result = qword_1EB125638;
  if (!qword_1EB125638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125638);
  }

  return result;
}

uint64_t sub_1A44E799C(uint64_t a1)
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

id PXSwiftUIHostingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1A44E7DCC(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = objc_allocWithZone(v2);
  v7 = sub_1A44E7FB4(a1);
  (*(*(*(v4 + *a2) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_1A44E7E6C(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = a2();
  (*(*(*(v6 + *a3) - 8) + 8))(a1);
  return v7;
}

id sub_1A44E7F34(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = a2(0, *((*MEMORY[0x1E69E7D40] & *v2) + *a1), *((*MEMORY[0x1E69E7D40] & *v2) + *a1 + 8));
  v5.receiver = v2;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_1A44E7FB4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v8 - v2, v1);
  v4 = sub_1A5249624();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44E88E4(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A44E9688(0, &qword_1EB120E88, off_1E7721298);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A44E8964(uint64_t a1)
{
  if (!qword_1EB125A60)
  {
    sub_1A5246754();
  }
}

unint64_t sub_1A44E89DC()
{
  result = qword_1EB16C9F0[0];
  if (!qword_1EB16C9F0[0])
  {
    sub_1A44E8964(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16C9F0);
  }

  return result;
}

uint64_t sub_1A44E8A34(uint64_t a1, double a2)
{
  sub_1A44E9688(0, &qword_1EB120E88, off_1E7721298);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44E8AAC(uint64_t a1, uint64_t a2)
{
  sub_1A44E8964(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A44E8B10(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A44E9688(0, &qword_1EB120E88, off_1E7721298);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A44E8B90(uint64_t a1)
{
  if (*(v1 + *(a1 + 44)))
  {
    sub_1A524C104();
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1A5245D84();
}

void sub_1A44E8BF8(uint64_t a1)
{
  if (*(v1 + *(a1 + 44)))
  {
    sub_1A524C104();
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1A5245D54();
}

uint64_t sub_1A44E8C60(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  if (*(v1 + *(a1 + 44)))
  {
    sub_1A524C104();
  }

  (*(v5 + 16))(v8, v1 + *(a1 + 36), v4, v6);
  if ((*(*(v3 - 8) + 48))(v8, 1, v3) != 1)
  {
    sub_1A5245F34();
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

void sub_1A44E8DFC(uint64_t a1)
{
  sub_1A44E9688(0, &qword_1EB120E88, off_1E7721298);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  if (*(v3 + *(a1 + 44)))
  {
    sub_1A524C104();
  }

  sub_1A44E88E4(v3 + *(a1 + 40), &v8 - v6, v7);
  sub_1A524C074();
}

id sub_1A44E8F6C()
{
  v0 = [objc_allocWithZone(PXPhotosAppGridConfiguration) init];

  return v0;
}

id sub_1A44E8FA8(void *a1)
{
  v1 = a1;
  result = [v1 appSpecificConfiguration];
  if (result)
  {

    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A44E9024(uint64_t a1)
{
  sub_1A3C34400(319, &qword_1EB128D20, off_1E7721088);
  if (v1 <= 0x3F)
  {
    sub_1A524DF24();
    if (v2 <= 0x3F)
    {
      sub_1A44E9688(319, &qword_1EB120E88, off_1E7721298);
      if (v3 <= 0x3F)
      {
        sub_1A44E9688(319, &qword_1EB120E78, off_1E77212B0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A44E9688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A44E96DC()
{
  result = qword_1EB120E90;
  if (!qword_1EB120E90)
  {
    sub_1A524C074();
  }

  return result;
}

uint64_t sub_1A44E9734(uint64_t a1, uint64_t a2)
{
  sub_1A3E792C4(0, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A44E97B0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C27C(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
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
    *v7 = sub_1A44E99AC;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 3;
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

uint64_t sub_1A44E99AC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 3;
}

uint64_t sub_1A44E9AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4C27C(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242D14();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x1E69C2210], v10, v12);
  sub_1A3C759B4(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v15 = sub_1A524C594();
  v16 = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    return sub_1A44E97B0(a2);
  }

  MEMORY[0x1EEE9AC00](v16);
  *(&v25 - 2) = a1;
  v17 = type metadata accessor for LemonadeShelfStyleOptions(0);
  if ((sub_1A41875F0(sub_1A44E9DB4, (&v25 - 4), a1, a1 + *(v17 + 28)) & 1) == 0)
  {
    return sub_1A44E97B0(a2);
  }

  v18 = sub_1A43A1D68();
  v20 = v19;
  v22 = v21;
  sub_1A43A1D88(v18, v19, v21, v9);
  sub_1A3C4208C(v18, v20, v22);
  sub_1A5241F74();
  v23 = sub_1A5241F84();
  (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  return sub_1A3C52D78(v9, 7, v6, a2);
}

uint64_t sub_1A44E9DB4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for LemonadeShelfStyleOptions(0);
  *a1 = *(v3 + *(result + 20));
  return result;
}

uint64_t sub_1A44E9DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = type metadata accessor for LemonadeNavigationDestination(0);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v35 - v11);
  v13 = sub_1A524C634();
  v14 = PXLemonadeLocalizedString(v13);

  v15 = sub_1A524C674();
  v39 = v16;
  v40 = v15;

  v17 = sub_1A524C634();
  v18 = PXLemonadeLocalizedString(v17);

  v19 = sub_1A524C674();
  v36 = v20;
  v37 = v19;

  v21 = sub_1A524C634();
  v22 = PXLemonadeLocalizedString(v21);

  v35 = sub_1A524C674();
  v24 = v23;

  v25 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v43 = a2;
  v44 = a3;
  v26 = sub_1A3C57168();
  sub_1A3C66934(&v43, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v26);
  sub_1A40EE918(0, v27);
  swift_allocObject();
  *v12 = sub_1A5243184();
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v42);
  v28 = sub_1A4656D64(v12, &v42);
  v29 = *(v25 + 16);
  sub_1A44F27E0(v12, v9, type metadata accessor for LemonadeNavigationDestination);
  v30 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = v28;
  sub_1A3CA26F8(v9, v31 + v30, type metadata accessor for LemonadeNavigationDestination);
  v32 = v29;

  LOBYTE(a1) = sub_1A3C5A374();
  LOBYTE(v30) = sub_1A3C5A374();
  LOBYTE(v9) = sub_1A3C5A374();
  LOBYTE(v8) = sub_1A3C5A374();
  v33 = sub_1A3C5A374();
  sub_1A425463C(v32, a1 & 1, v30 & 1, v9 & 1, v8 & 1, v33 & 1, 7235952, 0xE300000000000000, v41, v40, v39, v37, v36, 0, 0, 0, 0, 0, 0, v35, v24, sub_1A44EF71C, v31, 0, 0);

  return sub_1A44F292C(v12, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A44EA188(uint64_t a1)
{
  sub_1A3C4C27C(0, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14 - v4);
  sub_1A44EF754(0, &unk_1EB122CA0, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v14 - v7);
  if (shouldUseNewCollectionsLayout()())
  {
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    sub_1A44F01F4();
    sub_1A44F0248();

    return sub_1A5249744();
  }

  else
  {
    v10 = v3[7];
    *(v5 + v10) = swift_getKeyPath();
    v11 = MEMORY[0x1E697DCB8];
    sub_1A3C4C27C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v12 = v5 + v3[8];
    *v12 = swift_getKeyPath();
    v12[8] = 0;
    v13 = v3[9];
    *(v5 + v13) = swift_getKeyPath();
    sub_1A3C4C27C(0, &qword_1EB128A50, MEMORY[0x1E697E730], v11);
    swift_storeEnumTagMultiPayload();
    *v5 = a1;
    sub_1A44F2128(v5, v8, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView, sub_1A3C4C27C);
    swift_storeEnumTagMultiPayload();
    sub_1A44F01F4();
    sub_1A44F0248();

    sub_1A5249744();
    return sub_1A44F2098(v5, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView);
  }
}

uint64_t sub_1A44EA488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C2218];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A3C4C27C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1A44F2128(v2 + *(a1 + 28), &v17 - v11, &qword_1EB128AA0, v8, v9, sub_1A3C4C27C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5242D14();
    return (*(*(v13 - 8) + 32))(v18, v12, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A44EA6D0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 32);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A44EA82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = type metadata accessor for LemonadeCollectionBookmarkCell(0);
  MEMORY[0x1EEE9AC00](v4);
  v94 = *(a1 + 16);
  v95 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmarkListCell(0, v94, v6, v7);
  v88 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v87 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = v79 - v11;
  v12 = sub_1A52486A4();
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v91 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5242D14();
  v105 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v98 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v79 - v17;
  v102 = v4;
  v103 = v8;
  v19 = sub_1A5249754();
  v100 = *(v19 - 8);
  v101 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v99 = v79 - v20;
  v21 = sub_1A5246E54();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v97 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v96 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v79 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v79 - v31;
  sub_1A3C4C27C(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = v79 - v34;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1);
  v36 = sub_1A5246E94();
  v89 = *(v36 - 8);
  v37 = *(v89 + 48);
  v90 = v36;
  if (v37(v35, 1) == 1)
  {
    sub_1A44F2098(v35, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
    v38 = v99;
    v39 = v2;
  }

  else
  {
    v82 = v22;
    v83 = v21;
    v40 = *(v24 + 16);
    v40(v32, v2, a1);
    v40(v29, v2, a1);
    v84 = v2;
    v40(v96, v2, a1);
    sub_1A5246E44();
    v41 = sub_1A5246E84();
    v42 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v43 = swift_slowAlloc();
      v80 = v42;
      v44 = v43;
      v81 = swift_slowAlloc();
      v107[0] = v81;
      *v44 = 136446722;
      (*(**v32 + 184))(v106);
      v79[1] = v41;
      v45 = v106[0];
      v46 = v106[1];
      v79[0] = v29;
      (*(v24 + 8))(v32, a1);
      sub_1A3C2EF94(v45, v46, v107);
    }

    (*(v82 + 8))(v97, v83);
    v47 = *(v24 + 8);
    v47(v96, a1);
    v47(v29, a1);
    v47(v32, a1);
    (*(v89 + 8))(v35, v90);
    v38 = v99;
    v39 = v84;
  }

  v48 = v105;
  sub_1A44EA488(a1, v18);
  v49 = v98;
  (*(v48 + 104))(v98, *MEMORY[0x1E69C2210], v14);
  sub_1A3C759B4(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v50 = sub_1A524C594();
  v53 = *(v48 + 8);
  v52 = v48 + 8;
  v51 = v53;
  v53(v49, v14);
  v54 = (v53)(v18, v14);
  v55 = v103;
  if ((v50 & 1) != 0 || (v105 = v52, v99 = v79, MEMORY[0x1EEE9AC00](v54), v79[-2] = v94, v79[-1] = v39, sub_1A44EA488(a1, v18), v56 = v14, v57 = v38, v58 = v91, sub_1A44F02DC(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v91), v59 = sub_1A41875F0(sub_1A44F20F4, &v79[-4], v18, v58), v60 = v58, v38 = v57, v14 = v56, (*(v92 + 8))(v60, v93), v51(v18, v56), (v59 & 1) == 0))
  {
    sub_1A44EA488(a1, v18);
    sub_1A44EA6D0(a1, v106);
    v71 = v95;
    sub_1A44EB534(v18, v106, v95);
    v51(v18, v14);
    v72 = swift_getWitnessTable();
    v73 = sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell, &unk_1A5346678);
    sub_1A3DF4890(v71, v55, v102, v72, v73);
    sub_1A44F292C(v71, type metadata accessor for LemonadeCollectionBookmarkCell);
  }

  else
  {

    v62 = v87;
    sub_1A3F9387C(v61, v94, v87, v63, v64);
    v65 = swift_getWitnessTable();
    v66 = v88;
    v67 = *(v88 + 16);
    v68 = v86;
    v67(v86, v62, v55);
    v69 = *(v66 + 8);
    v69(v62, v55);
    v67(v62, v68, v55);
    v70 = sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell, &unk_1A5346678);
    sub_1A3DF4798(v62, v55, v102, v65, v70);
    v69(v62, v55);
    v69(v68, v55);
  }

  v74 = swift_getWitnessTable();
  v75 = sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell, &unk_1A5346678);
  v107[1] = v74;
  v107[2] = v75;
  v76 = v101;
  swift_getWitnessTable();
  v77 = v100;
  (*(v100 + 16))(v104, v38, v76);
  return (*(v77 + 8))(v38, v76);
}

uint64_t sub_1A44EB534@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A52486A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a2) = *a2;
  sub_1A44F02DC(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v10);
  v13[16] = a2;
  LOBYTE(a2) = sub_1A41875F0(sub_1A44F3244, v13, a1, v10);
  v11 = (*(v8 + 8))(v10, v7);
  (*(**v3 + 160))(v15, v11);
  sub_1A3C34460(v15, v14);
  return sub_1A453A314(v14, (a2 & 1) == 0, a3);
}

uint64_t sub_1A44EB6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  v13 = *(a1 + *(v12 + 24));
  v19[16] = *(a1 + *(v12 + 20));

  sub_1A3F2A5C4(v11);
  LOBYTE(a1) = sub_1A41875F0(sub_1A44F3244, v19, a1, v11);
  (*(v9 + 8))(v11, v8);
  if (a1)
  {
    v20 = a2;
    v21 = a3;
    v14 = sub_1A3C57168();
    sub_1A3C66934(&v20, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v14);
    sub_1A40EE918(0, v15);
    swift_allocObject();
    v16 = sub_1A5243184();

    *a4 = v16;
  }

  else
  {
    *a4 = v13;
    a4[1] = 0;
    a4[2] = 0xE000000000000000;
  }

  v17 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
}

uint64_t sub_1A44EB8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v50 = a3;
  v48 = a2;
  v55 = a5;
  v54 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v46[-v8];
  v51 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = a1;
  sub_1A3C341C8(a1, v61);
  v12 = v62;
  v11 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v13 = *(v11 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A524DF24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v46[-v18];
  v13(v12, v11, v17);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) != 1)
  {
    *(&v57 + 1) = AssociatedTypeWitness;
    *&v58 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v56);
    (*(v20 + 32))();
    v21 = PhotosModel.photokitObject.getter(AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0(&v56);
    if (!v21)
    {
      goto LABEL_5;
    }

    v22 = v62;
    v23 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v23 + 48))(v22, v23);
    v24 = v52;
    sub_1A44F27E0(&v10[*(v51 + 24)], v52, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    sub_1A44F292C(v10, type metadata accessor for LemonadeBookmark);
    v25 = v53;
    swift_storeEnumTagMultiPayload();
    sub_1A3C759B4(&qword_1EB12A590, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5B0);
    LOBYTE(v22) = sub_1A524C594();
    sub_1A44F292C(v25, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    sub_1A44F292C(v24, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if (v22)
    {
      goto LABEL_5;
    }

    v29 = v62;
    v30 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v31 = *(v30 + 96);
    v32 = swift_getAssociatedTypeWitness();
    v33 = sub_1A524DF24();
    v34 = *(v33 - 8);
    v35 = MEMORY[0x1EEE9AC00](v33);
    v37 = &v46[-v36];
    v31(v29, v30, v35);
    v38 = *(v32 - 8);
    if ((*(v38 + 48))(v37, 1, v32) == 1)
    {
      (*(v34 + 8))(v37, v33);
    }

    else
    {
      *(&v57 + 1) = v32;
      *&v58 = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
      (*(v38 + 32))(boxed_opaque_existential_1, v37, v32);
      sub_1A3C34400(0, &qword_1EB128C70, off_1E77211E8);
      sub_1A3CA2A44(0);
      if (swift_dynamicCast())
      {
        v40 = sub_1A52426F4();
        v41 = v50;
        if (v40)
        {
          v42 = v62;
          v43 = v63;
          __swift_project_boxed_opaque_existential_1(v61, v62);
          (*(v43 + 112))(v42, v43);

          return __swift_destroy_boxed_opaque_existential_0(v61);
        }

LABEL_13:
        v60 = MEMORY[0x1E69E7CC0];
        *&v56 = v41;
        BYTE8(v56) = v47;
        v44 = sub_1A3C57168();
        v45 = sub_1A3C66934(&v56, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v44);
        (*(*v45 + 168))(v45);

        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        sub_1A5245874();
      }
    }

    v41 = v50;
    goto LABEL_13;
  }

  (*(v16 + 8))(v19, v15);
LABEL_5:
  v26 = v62;
  v27 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  (*(v27 + 112))(v26, v27);
  return __swift_destroy_boxed_opaque_existential_0(v61);
}

void sub_1A44EC180(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v12 = a4;
  v13 = a3;
  v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = *a1;
  v11 = a1[1];
  v14 = a2;
  v17 = MEMORY[0x1E69E6158];
  v15 = v10;
  v16 = v11;
  sub_1A44F166C(0);
  sub_1A3C759B4(&qword_1EB128ED8, sub_1A44F166C, off_1E7720FA8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44EC878(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A44EC90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_1A5243834();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4C27C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_1A5243EC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F0788(0, &qword_1EB13C950, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  sub_1A44F0788(0, &qword_1EB13D0B0, MEMORY[0x1E697F960]);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  (*(*a1 + 160))(v35, v16);
  sub_1A3C34460(v35, v37);
  v20 = v38;
  v19 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  if (sub_1A4838C84(v20, v19))
  {
    sub_1A3C341C8(v37, v34);
    sub_1A4541AD0(v34, v35);
    sub_1A44F08C4(v35, v14);
    swift_storeEnumTagMultiPayload();
    sub_1A44F07F0();
    sub_1A3C759B4(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    sub_1A44F0920(v35);
  }

  else
  {
    v30 = v8;
    v21 = a2;
    v22 = v38;
    v23 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v24 = *(v23 + 72);
    v25 = v23;
    a2 = v21;
    v24(v22, v25);
    memset(v35, 0, sizeof(v35));
    v36 = 1;
    v26 = sub_1A52429A4();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    (*(v31 + 104))(v33, *MEMORY[0x1E69C2678], v32);
    sub_1A5243ED4();
    v27 = v30;
    (*(v9 + 16))(v14, v11, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A44F07F0();
    sub_1A3C759B4(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    (*(v9 + 8))(v11, v27);
  }

  sub_1A44F0844(v18, a2);
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_1A44ECE40()
{
  if (shouldUseNewCollectionsLayout()())
  {
    v0 = 0xD000000000000028;
  }

  else
  {
    v0 = 0xD000000000000023;
  }

  v1 = sub_1A3C38BD4(v0);

  return v1;
}

uint64_t sub_1A44ECF00@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  type metadata accessor for LemonadeShelfDisclosureOptions(0);
  v11 = v5;
  v12 = v6;
  v7 = sub_1A3C57168();
  sub_1A3C66934(&v11, a1, v7);
  sub_1A40EE918(0, v8);
  swift_allocObject();
  *a2 = sub_1A5243184();
  v9 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

double sub_1A44ED000@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(a2, 0, 1, v3);

  return result;
}

unint64_t sub_1A44ED0F0(uint64_t a1)
{
  v2 = sub_1A3C43144();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A44ED12C(uint64_t a1)
{
  v1 = [*(a1 + 16) px_virtualCollections];
  v2 = [v1 bookmarksCollectionList];

  return v2;
}

uint64_t sub_1A44ED184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  *a2 = v7;
  v24 = *(type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider(0) + 20);
  v8 = v7;
  v9 = sub_1A3C47918();
  v11 = v10;
  v12 = sub_1A3C47918();
  v14 = v13;
  v15 = sub_1A3C52D68();
  v17 = v16;
  v19 = v18;
  v20 = sub_1A3C4ED50(v15);
  v25 = 1;
  *v6 = sub_1A44ED4DC;
  *(v6 + 1) = 0;
  v6[16] = 2;
  *(v6 + 3) = 4;
  v6[32] = 1;
  *(v6 + 5) = v9;
  *(v6 + 6) = v11;
  *(v6 + 7) = v12;
  *(v6 + 8) = v14;
  *(v6 + 9) = v15;
  *(v6 + 10) = v17;
  v6[88] = v19;
  v6[89] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v6, 0, v21, v22 & 1, a2 + v24);
}

uint64_t sub_1A44ED2D8()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v0);
  sub_1A3C759B4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A44ED388(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A3C759B4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A44ED430(uint64_t a1)
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v1);
  sub_1A3C759B4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A44ED4DC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = shouldUseNewCollectionsLayout()();
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69C21F0])
  {
    if (v6)
    {
      return 40;
    }

    else
    {
      return 14;
    }
  }

  else
  {
    if (v6)
    {
      v7 = 40;
    }

    else
    {
      v7 = 20;
    }

    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

uint64_t sub_1A44ED624(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeCollectionBookmarkCell(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F2250(0, &qword_1EB13C960, sub_1A44F0994, type metadata accessor for LemonadeCollectionBookmarkCell, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v10 - v6;
  if (shouldUseNewCollectionsLayout()())
  {
    KeyPath = swift_getKeyPath();

    *v7 = a1;
    *(v7 + 1) = KeyPath;
    v7[16] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1A44F0994(0);
    sub_1A44F0A18();
    sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell, &unk_1A5346678);
    return sub_1A5249744();
  }

  else
  {
    (*(*a1 + 160))(v11);
    sub_1A3C34460(v11, v10);
    sub_1A453A314(v10, 1, v4);
    sub_1A44F27E0(v4, v7, type metadata accessor for LemonadeCollectionBookmarkCell);
    swift_storeEnumTagMultiPayload();
    sub_1A44F0994(0);
    sub_1A44F0A18();
    sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell, &unk_1A5346678);
    sub_1A5249744();
    return sub_1A44F292C(v4, type metadata accessor for LemonadeCollectionBookmarkCell);
  }
}

uint64_t sub_1A44ED8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v50 = a2;
  sub_1A424ADF0(0, a3);
  v49 = v4;
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AE74(0);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F0B14(0);
  v48 = v10;
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44F2250(0, &qword_1EB13C980, sub_1A44F0B14, sub_1A424ADF0, MEMORY[0x1E697F960]);
  v46 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  if (sub_1A4654080())
  {
    sub_1A44F24A0(0, &qword_1EB128070, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697C280]);
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    v23 = sub_1A424AEF8();
    v24 = v47;
    MEMORY[0x1A5904CD0](v9, v47, v23);
    v25 = sub_1A44F0BB8();
    v51 = v13;
    v52 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v51 = v24;
    v52 = v23;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = v49;
    MEMORY[0x1A5904CF0](v6, v48, v49, OpaqueTypeConformance2, v27);
    (*(v44 + 8))(v6, v28);
    v29 = sub_1A424AE74;
    v30 = v9;
  }

  else
  {
    v31 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider(0);
    v32 = sub_1A3C759B4(&qword_1EB13C988, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider, &unk_1A5344038);
    sub_1A3C66934(v43, v31, v32);
    sub_1A40EE918(0, v33);
    swift_allocObject();
    *v18 = sub_1A5243184();
    swift_storeEnumTagMultiPayload();
    sub_1A44F27E0(v18, v15 + *(v13 + 20), type metadata accessor for LemonadeNavigationDestination);
    *v15 = swift_getKeyPath();
    sub_1A3C4C27C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *(v15 + *(v13 + 24)) = a1;
    v34 = sub_1A44F0BB8();

    MEMORY[0x1A5904CD0](v15, v13, v34);
    v51 = v13;
    v52 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = sub_1A424AEF8();
    v51 = v47;
    v52 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v48;
    MEMORY[0x1A5904CE0](v12, v48, v49, v35, v37);
    (*(v45 + 8))(v12, v38);
    sub_1A44F292C(v15, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent);
    v29 = type metadata accessor for LemonadeNavigationDestination;
    v30 = v18;
  }

  sub_1A44F292C(v30, v29);
  v39 = sub_1A44F0C10();
  v40 = v50;
  MEMORY[0x1A5904CD0](v21, v46, v39);
  sub_1A3D04A44(v21);
  sub_1A44F0D30(0);
  return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
}

uint64_t sub_1A44EDF10@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69C2218];
  sub_1A3C4C27C(0, &qword_1EB13CA20, MEMORY[0x1E69C2218], MEMORY[0x1E69E6F90]);
  v7 = *(v2 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52FC9F0;
  v10 = v9 + v8;
  v11 = *(v3 + 104);
  v11(v10, *MEMORY[0x1E69C21F8], v1);
  v11(v10 + v7, *MEMORY[0x1E69C2210], v1);
  sub_1A44F02DC(&qword_1EB128AA0, v6, MEMORY[0x1E69C2218], v5);
  v12 = sub_1A44EE7D4(v5, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v3 + 8))(v5, v1);
  if (v12)
  {
    return sub_1A5249834();
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  v14 = [v13 defaultPhoneFeedNavigationType];

  if (v14)
  {
    return sub_1A5249834();
  }

  else
  {
    return sub_1A5249824();
  }
}

uint64_t sub_1A44EE180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v3 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A44F2414(0);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44F22D4(0, v8);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F27E0(a1, v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1A3CA26F8(v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent);
  sub_1A44F24A0(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  v19 = v18;
  v20 = sub_1A424D1BC();

  sub_1A472916C(v21, sub_1A44EE568, 0, 0, sub_1A44F2848, v17, v19, v10, v20);
  sub_1A44F24F4(0);
  v23 = v22;
  v24 = sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414, &unk_1A535BA5C);
  v25 = sub_1A5243474();
  v26 = sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  v30 = v7;
  v31 = v25;
  v32 = v24;
  v33 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  sub_1A44F292C(v10, sub_1A44F2414);
  v30 = v7;
  v31 = v23;
  v32 = v24;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A524AA94();
  return (*(v13 + 8))(v15, v12);
}

double sub_1A44EE568@<D0>(uint64_t a1@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    *&v5 = sub_1A3C38BD4(0xD000000000000022);
    *(&v5 + 1) = v2;
    sub_1A3D5F9DC();
    sub_1A524A464();
  }

  else
  {
    *&v5 = sub_1A3C38BD4(0xD000000000000024);
    *(&v5 + 1) = v3;
    sub_1A3D5F9DC();
    sub_1A524A464();
  }

  sub_1A5249744();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1A44EE668()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A44F2414(0);
  sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414, &unk_1A535BA5C);
  sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

BOOL sub_1A44EE7D4(uint64_t a1, uint64_t a2)
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

    sub_1A5242D14();
    ++v2;
    sub_1A3C759B4(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  }

  while ((sub_1A524C594() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1A44EE8E0()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A44F219C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A44EDF10(v3);
  v12 = v0;
  sub_1A44F2250(0, &qword_1EB13C9E8, sub_1A44F22D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  sub_1A44F25F8();
  sub_1A5247F24();
  v9 = sub_1A3C759B4(&qword_1EB13CA18, sub_1A44F219C, MEMORY[0x1E697BEF0]);
  MEMORY[0x1A5904CD0](v8, v5, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A44EEAE0@<X0>(uint64_t a1@<X8>)
{
  sub_1A5243CD4();
  v2 = sub_1A5243CC4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1A44EEB80(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 120))(v1, v2) & 1;
}

uint64_t sub_1A44EEBD4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 144))(1, v1, v2);
}

uint64_t sub_1A44EEC28()
{
  sub_1A3C759B4(&qword_1EB13C9B8, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider, &unk_1A534401C);

  return sub_1A3C47918();
}

uint64_t sub_1A44EEC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v36 - v7);
  v9 = sub_1A524C634();
  v10 = PXLemonadeLocalizedString(v9);

  v11 = sub_1A524C674();
  v40 = v12;
  v41 = v11;

  v13 = sub_1A524C634();
  v14 = PXLemonadeLocalizedString(v13);

  v15 = sub_1A524C674();
  v37 = v16;
  v38 = v15;

  v17 = 0;
  v18 = 0;
  if (!sub_1A4654080())
  {
    v19 = sub_1A524C634();
    v20 = PXLemonadeLocalizedString(v19);

    v17 = sub_1A524C674();
    v18 = v21;
  }

  v22 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v23 = type metadata accessor for LemonadeBookmarksFeature.MacFeedProvider(0);
  v24 = sub_1A3C759B4(&qword_1EB13C9A0, type metadata accessor for LemonadeBookmarksFeature.MacFeedProvider, &unk_1A5344070);
  sub_1A3C66934(v36, v23, v24);
  sub_1A40EE918(0, v25);
  swift_allocObject();
  *v8 = sub_1A5243184();
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v43);
  v26 = sub_1A4656D64(v8, &v43);
  v27 = *(v22 + 16);
  sub_1A44F27E0(v8, v5, type metadata accessor for LemonadeNavigationDestination);
  v28 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = v26;
  sub_1A3CA26F8(v5, v29 + v28, type metadata accessor for LemonadeNavigationDestination);
  v30 = v27;

  v31 = sub_1A3C5A374();
  LOBYTE(v28) = sub_1A3C5A374();
  v32 = sub_1A3C5A374();
  v33 = sub_1A3C5A374();
  v34 = sub_1A3C5A374();
  sub_1A425463C(v30, v31 & 1, v28 & 1, v32 & 1, v33 & 1, v34 & 1, 7235952, 0xE300000000000000, v42, v41, v40, v38, v37, 0, 0, 0, 0, 0, 0, v17, v18, sub_1A44F1388, v29, 0, 0);

  return sub_1A44F292C(v8, type metadata accessor for LemonadeNavigationDestination);
}

double sub_1A44EF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LemonadeNavigationDestination(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A44F27E0(a3, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeNavigationDestination);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  sub_1A3CA26F8(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LemonadeNavigationDestination);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_1A4138EC8(0);
  v15 = v14;
  v16 = sub_1A3C759B4(&qword_1EB129B28, sub_1A4138EC8, &protocol conformance descriptor for LemonadeNavigationContainer<A>);

  v17 = sub_1A3C5A374();
  sub_1A46562D0(v17 & 1, a5, v13, v15, v16);

  return result;
}

uint64_t sub_1A44EF220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F27E0(a1, v8, type metadata accessor for LemonadeNavigationDestination);

  return sub_1A487864C(v8, a2, 0, a3);
}

uint64_t sub_1A44EF2D4()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

double sub_1A44EF380@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

uint64_t sub_1A44EF38C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 112))(v1, v2);
}

uint64_t sub_1A44EF468(uint64_t a1)
{
  v3 = 0x6B72616D6B6F6F62;
  v4 = 0xEA00000000002D73;
  (*(*a1 + 184))(v2);
  MEMORY[0x1A5907B60](v2[0], v2[1]);

  return v3;
}

uint64_t sub_1A44EF4F0(uint64_t a1)
{
  (*(*a1 + 160))(v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = (*(v2 + 56))(v1, v2);
  if (!v4)
  {
    v3 = sub_1A3C38BD4(0xD00000000000001ELL);
  }

  v5 = v3;
  sub_1A3F9670C(v7);
  return v5;
}

uint64_t sub_1A44EF5B0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 136))(v1, v2);
}

uint64_t sub_1A44EF604(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 128))(v1, v2);
}

id sub_1A44EF654()
{
  v1 = [*v0 px_virtualCollections];
  v2 = [v1 bookmarksCollectionList];

  return v2;
}

uint64_t sub_1A44EF6B0()
{
  sub_1A3C759B4(&qword_1EB13C9C8, type metadata accessor for LemonadeBookmarksFeature.MacFeedProvider, &unk_1A5344054);

  return sub_1A3C47918();
}

void sub_1A44EF754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1A3C4C27C(255, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView);
    v7 = a3(a1, &type metadata for LemonadeBookmarksFeature.BookmarkMaterialCell, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_OWORD *sub_1A44EF7EC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A3C2F0BC(a1, &v6);
  v4 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    sub_1A44EF8C8(&v9);
    sub_1A3F9670C(v7);
    if (*(&v10 + 1))
    {
      return sub_1A3C57128(&v9, a2);
    }
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1A3C2C988(v7, &qword_1EB12A340, &type metadata for LemonadeBookmarkItem);
    v9 = 0u;
    v10 = 0u;
  }

  sub_1A3C2C988(&v9, &qword_1EB126130, v4 + 8);
  return sub_1A3C2F0BC(a1, a2);
}

uint64_t sub_1A44EF8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v5(v3, v4, v9);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v19 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v12 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
    sub_1A3C34460(&v18, v21);
    v15 = v22;
    v16 = __swift_project_boxed_opaque_existential_1(v21, v22);
    *(a1 + 24) = v15;
    v17 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  return result;
}

uint64_t sub_1A44EFB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - v6;
  v8 = sub_1A5243B94();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (sub_1A483FB28())
  {
    v49 = a1;
    (*(*a1 + 160))(v45);
    v42 = v4;
    v13 = v46;
    v12 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v43 = (*(v12 + 56))(v13, v12);
    v15 = v14;
    sub_1A4244368(0);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    v18 = v17 + v16;
    (*(v9 + 104))(v11, *MEMORY[0x1E69C2800], v8);
    v19 = *(v9 + 32);
    v19(v7, v11, v8);
    v19(v18, v7, v8);
    v20 = (v18 + *(v42 + 48));
    *v20 = sub_1A44F00CC;
    v20[1] = 0;

    v21 = sub_1A42762E8(v17);
    swift_setDeallocating();
    sub_1A44F2020(v18);
    swift_deallocClassInstance();
    sub_1A40EEA04(0);
    v23 = v22;
    v24 = sub_1A3F9515C();
    v25 = sub_1A3C759B4(&qword_1EB1256B0, sub_1A40EEA04, &unk_1A5368DF0);
    v26 = sub_1A41F7694();
    v27 = sub_1A3C5A374();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v49, 0, 0, v43, v15, 0, v27 & 1, sub_1A44F324C, v50, v26, a1, v21, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, v23, v24, v25);
    sub_1A3F9670C(v45);
    sub_1A44F27E0(v50, v45, sub_1A44F1F00);
    v48 = 0;
  }

  else
  {
    v49 = a1;
    (*(*a1 + 160))(v45);
    v28 = v46;
    v29 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v30 = (*(v29 + 56))(v28, v29);
    v32 = v31;
    sub_1A40EEA04(0);
    v34 = v33;
    v35 = sub_1A3F9515C();
    v36 = sub_1A3C759B4(&qword_1EB1256B0, sub_1A40EEA04, &unk_1A5368DF0);

    v37 = sub_1A41F7694();
    v38 = sub_1A3C5A374();
    v39 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v49, 0, 0, v30, v32, 0, v38 & 1, sub_1A44F1EFC, v50, v37, a1, v39, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, v34, v35, v36);
    sub_1A3F9670C(v45);
    sub_1A44F27E0(v50, v45, sub_1A44F1F00);
    v48 = 1;
  }

  sub_1A44F1F00(0);
  sub_1A3C759B4(&qword_1EB125730, sub_1A44F1F00, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
  sub_1A5249744();
  return sub_1A44F292C(v50, sub_1A44F1F00);
}

uint64_t sub_1A44F00CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LemonadeImmutableFavoritedBadgeView(0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A43CFD18((&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)));
  sub_1A3C759B4(&qword_1EB125270, type metadata accessor for LemonadeImmutableFavoritedBadgeView, &protocol conformance descriptor for LemonadeImmutableFavoritedBadgeView);
  result = sub_1A524B8E4();
  *a1 = result;
  return result;
}

id sub_1A44F019C()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 bookmarksCollection];

  return v2;
}

unint64_t sub_1A44F01F4()
{
  result = qword_1EB168D78[0];
  if (!qword_1EB168D78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB168D78);
  }

  return result;
}

unint64_t sub_1A44F0248()
{
  result = qword_1EB184D10[0];
  if (!qword_1EB184D10[0])
  {
    sub_1A3C4C27C(255, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB184D10);
  }

  return result;
}

uint64_t sub_1A44F02DC@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v22 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A3C4C27C(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A44F2128(v8, &v21 - v15, a1, a2, v13, sub_1A3C4C27C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v22, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

char *sub_1A44F0514(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A44F2A14(0, &qword_1EB1203B0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1A44F0654(uint64_t a1)
{
  if (*(*(a1 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 24)) + 40))
  {
    return 0x1FFFFFFFELL;
  }

  if (!shouldUseNewCollectionsLayout()())
  {
    v4 = 0xD000000000000024;
    goto LABEL_7;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 enableHeaderTitleChevron];

  if (v3)
  {
    v4 = 0xD000000000000022;
LABEL_7:
    sub_1A3C38BD4(v4);
    return 1;
  }

  return 0x4000000000000001;
}

void sub_1A44F0788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243EC4();
    v7 = a3(a1, &type metadata for LemonadeCollectionBookmarkPrivacySensitiveView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A44F07F0()
{
  result = qword_1EB13C958;
  if (!qword_1EB13C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C958);
  }

  return result;
}

uint64_t sub_1A44F0844(uint64_t a1, uint64_t a2)
{
  sub_1A44F0788(0, &qword_1EB13D0B0, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44F0994(uint64_t a1)
{
  if (!qword_1EB13C968)
  {
    sub_1A44F2A14(255, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C968);
    }
  }
}

unint64_t sub_1A44F0A18()
{
  result = qword_1EB13C970;
  if (!qword_1EB13C970)
  {
    sub_1A44F0994(255);
    sub_1A44F01F4();
    sub_1A44F0A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C970);
  }

  return result;
}

unint64_t sub_1A44F0A98()
{
  result = qword_1EB122140;
  if (!qword_1EB122140)
  {
    sub_1A44F2A14(255, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122140);
  }

  return result;
}

void sub_1A44F0B14(uint64_t a1)
{
  if (!qword_1EB13C978)
  {
    type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(255);
    sub_1A44F0BB8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C978);
    }
  }
}

unint64_t sub_1A44F0BB8()
{
  result = qword_1EB1C4FF0[0];
  if (!qword_1EB1C4FF0[0])
  {
    type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C4FF0);
  }

  return result;
}

unint64_t sub_1A44F0C10()
{
  result = qword_1EB13C990;
  if (!qword_1EB13C990)
  {
    sub_1A44F2250(255, &qword_1EB13C980, sub_1A44F0B14, sub_1A424ADF0, MEMORY[0x1E697F960]);
    type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(255);
    sub_1A44F0BB8();
    swift_getOpaqueTypeConformance2();
    sub_1A424AE74(255);
    sub_1A424AEF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C990);
  }

  return result;
}

void sub_1A44F0D30(uint64_t a1)
{
  if (!qword_1EB13C998)
  {
    sub_1A44F2250(255, &qword_1EB13C980, sub_1A44F0B14, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A44F0C10();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C998);
    }
  }
}

uint64_t objectdestroyTm_57()
{
  v1 = *(type metadata accessor for LemonadeNavigationDestination(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
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

      if (*(v3 + 64) != 1)
      {
      }

      break;
    case 0xBu:

      if (*(v3 + 40) != 1)
      {
      }

      break;
    case 0xCu:

      if (*(v3 + 16))
      {
      }

      if (*(v3 + 56))
      {
        __swift_destroy_boxed_opaque_existential_0((v3 + 32));
      }

      break;
    case 0xDu:

      if (*(v3 + 56))
      {
      }

      type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
      sub_1A5245BA4();
    case 0xEu:

      if (*(v3 + 72))
      {
      }

      type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
      sub_1A5245BA4();
    case 0xFu:

      if (*(v3 + 72))
      {
      }

      type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
      goto LABEL_43;
    case 0x10u:

      if (*(v3 + 80))
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
      __swift_destroy_boxed_opaque_existential_0((v3 + 16));

      break;
    case 0x13u:
    case 0x14u:

      break;
    case 0x15u:

      if (*(v3 + 16) != 255)
      {
      }

      break;
    case 0x16u:
      v7 = sub_1A52411C4();
      (*(*(v7 - 8) + 8))(v0 + v2, v7);

      swift_unknownObjectRelease();
LABEL_43:
      sub_1A5245BA4();
    case 0x17u:
      v6 = *(v3 + 16);
      if (v6 != 255)
      {
        sub_1A3EECFA4(*v3, *(v3 + 8), v6);
      }

      break;
    case 0x18u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:

      break;
    case 0x19u:

      if (*(v3 + 32))
      {
        __swift_destroy_boxed_opaque_existential_0((v3 + 8));
      }

      break;
    case 0x1Au:

      v4 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0) + 36);
      v5 = sub_1A5244854();
      (*(*(v5 - 8) + 8))(v3 + v4, v5);
      break;
    case 0x1Cu:
    case 0x1Fu:
    case 0x22u:
      swift_unknownObjectRelease();
      break;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_0((v3 + 16));
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

unint64_t sub_1A44F1514()
{
  result = qword_1EB13C9A8;
  if (!qword_1EB13C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C9A8);
  }

  return result;
}

unint64_t sub_1A44F156C()
{
  result = qword_1EB13C9B0;
  if (!qword_1EB13C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C9B0);
  }

  return result;
}

void sub_1A44F166C(uint64_t a1)
{
  if (!qword_1EB128ED0)
  {
    sub_1A3C76188();
    sub_1A52458C4();
  }
}

uint64_t sub_1A44F16C8(uint64_t a1)
{
  result = sub_1A3C759B4(&qword_1EB13C988, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider, &unk_1A5344038);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A44F18AC(uint64_t a1)
{
  result = sub_1A3C759B4(&qword_1EB13C9A0, type metadata accessor for LemonadeBookmarksFeature.MacFeedProvider, &unk_1A5344070);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A44F19BC()
{
  result = qword_1EB122938;
  if (!qword_1EB122938)
  {
    sub_1A44EF754(255, &qword_1EB122930, MEMORY[0x1E697F960]);
    sub_1A44F01F4();
    sub_1A44F0248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122938);
  }

  return result;
}

unint64_t sub_1A44F1A58()
{
  result = qword_1EB13D0C0;
  if (!qword_1EB13D0C0)
  {
    sub_1A44F0788(255, &qword_1EB13D0B0, MEMORY[0x1E697F960]);
    sub_1A44F07F0();
    sub_1A3C759B4(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D0C0);
  }

  return result;
}

unint64_t sub_1A44F1B24()
{
  result = qword_1EB13C9D0;
  if (!qword_1EB13C9D0)
  {
    sub_1A44F2250(255, &qword_1EB13C9D8, sub_1A44F0994, type metadata accessor for LemonadeCollectionBookmarkCell, MEMORY[0x1E697F960]);
    sub_1A44F0A18();
    sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell, &unk_1A5346678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C9D0);
  }

  return result;
}

void sub_1A44F1C40(uint64_t a1)
{
  sub_1A3C4C27C(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationDestination(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A44F1D1C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A3C4C27C(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A44F2A14(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3C4C27C(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A44F1F00(uint64_t a1)
{
  if (!qword_1EB125728)
  {
    sub_1A40EEA04(255);
    v5[0] = &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView;
    v5[1] = v2;
    v5[2] = sub_1A3F9515C();
    v5[3] = sub_1A3C759B4(&qword_1EB1256B0, sub_1A40EEA04, &unk_1A5368DF0);
    v3 = type metadata accessor for LemonadeMaterialTitleCell(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EB125728);
    }
  }
}

uint64_t sub_1A44F1FB8@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 160))(v5);
  sub_1A3C34460(v5, v4);
  return sub_1A3CA2CF0(v4, a1);
}

uint64_t sub_1A44F2020(uint64_t a1)
{
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A44F2098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3C4C27C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A44F2128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A44F219C(uint64_t a1)
{
  if (!qword_1EB13C9E0)
  {
    sub_1A44F2250(255, &qword_1EB13C9E8, sub_1A44F22D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A44F25F8();
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C9E0);
    }
  }
}

void sub_1A44F2250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A44F22D4(uint64_t a1, double a2)
{
  if (!qword_1EB13C9F0)
  {
    sub_1A44F2414(255);
    sub_1A44F24F4(255);
    sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414, &unk_1A535BA5C);
    sub_1A5243474();
    sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C9F0);
    }
  }
}

void sub_1A44F2414(uint64_t a1)
{
  if (!qword_1EB13C9F8)
  {
    sub_1A44F24A0(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    v3 = v2;
    v4 = sub_1A424D1BC();
    v6 = type metadata accessor for LemonadeDetailsNavigationButton(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB13C9F8);
    }
  }
}

void sub_1A44F24A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A44F24F4(uint64_t a1)
{
  if (!qword_1EB13CA00)
  {
    sub_1A44F2414(255);
    sub_1A5243474();
    sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414, &unk_1A535BA5C);
    sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA00);
    }
  }
}

unint64_t sub_1A44F25F8()
{
  result = qword_1EB13CA10;
  if (!qword_1EB13CA10)
  {
    sub_1A44F2250(255, &qword_1EB13C9E8, sub_1A44F22D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A44F2414(255);
    sub_1A44F24F4(255);
    sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414, &unk_1A535BA5C);
    sub_1A5243474();
    sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C759B4(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CA10);
  }

  return result;
}

uint64_t sub_1A44F27E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44F2848@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(0);
  sub_1A44F27E0(v1 + *(v3 + 20) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), a1, type metadata accessor for LemonadeNavigationDestination);
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_1A44F292C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44F298C(uint64_t a1, uint64_t a2)
{
  sub_1A44F2A14(0, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A44F2A14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_92Tm_0()
{
  v1 = *(type metadata accessor for LemonadeNavigationDestination(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
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

      if (*(v3 + 64) != 1)
      {
      }

      break;
    case 0xBu:

      if (*(v3 + 40) != 1)
      {
      }

      break;
    case 0xCu:

      if (*(v3 + 16))
      {
      }

      if (*(v3 + 56))
      {
        __swift_destroy_boxed_opaque_existential_0((v3 + 32));
      }

      break;
    case 0xDu:

      if (*(v3 + 56))
      {
      }

      type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
      sub_1A5245BA4();
    case 0xEu:

      if (*(v3 + 72))
      {
      }

      type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
      sub_1A5245BA4();
    case 0xFu:

      if (*(v3 + 72))
      {
      }

      type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
      goto LABEL_43;
    case 0x10u:

      if (*(v3 + 80))
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
      __swift_destroy_boxed_opaque_existential_0((v3 + 16));

      break;
    case 0x13u:
    case 0x14u:

      break;
    case 0x15u:

      if (*(v3 + 16) != 255)
      {
      }

      break;
    case 0x16u:
      v7 = sub_1A52411C4();
      (*(*(v7 - 8) + 8))(v0 + v2, v7);

      swift_unknownObjectRelease();
LABEL_43:
      sub_1A5245BA4();
    case 0x17u:
      v6 = *(v3 + 16);
      if (v6 != 255)
      {
        sub_1A3EECFA4(*v3, *(v3 + 8), v6);
      }

      break;
    case 0x18u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:

      break;
    case 0x19u:

      if (*(v3 + 32))
      {
        __swift_destroy_boxed_opaque_existential_0((v3 + 8));
      }

      break;
    case 0x1Au:

      v4 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0) + 36);
      v5 = sub_1A5244854();
      (*(*(v5 - 8) + 8))(v3 + v4, v5);
      break;
    case 0x1Cu:
    case 0x1Fu:
    case 0x22u:
      swift_unknownObjectRelease();
      break;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_0((v3 + 16));
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

double sub_1A44F2FF8@<D0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeNavigationDestination(0);
  v4 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v5 = sub_1A3C759B4(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

  return LemonadeNavigationContainer.init(navigationContext:content:)(v6, a1, v4, v5, a2);
}

unint64_t sub_1A44F3124()
{
  result = qword_1EB1228E8;
  if (!qword_1EB1228E8)
  {
    sub_1A44F31CC(255);
    sub_1A3C759B4(&qword_1EB125730, sub_1A44F1F00, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228E8);
  }

  return result;
}

void sub_1A44F31CC(uint64_t a1)
{
  if (!qword_1EB1228E0)
  {
    sub_1A44F1F00(255);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1228E0);
    }
  }
}

uint64_t sub_1A44F32CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A44F3380()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A44F33E0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  v6 = *((*v3 & *v1) + 0x68);
  swift_beginAccess();
  if (*(v1 + v6) != v5)
  {
    sub_1A44F3920();
  }
}

void (*sub_1A44F3498(uint64_t *a1))(uint64_t a1)
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
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A44F3548;
}

void sub_1A44F3548(uint64_t a1)
{
  v1 = *a1;
  sub_1A44F33E0(*(*a1 + 24));

  free(v1);
}

void sub_1A44F3584(uint64_t a1)
{
  *&v2 = a1;
  (*((**(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x78)) & *MEMORY[0x1E69E7D40]) + 0xD8))(a1);
  sub_1A43F1AD4(v2, 0);
  sub_1A43F1AD4(0, 1);
}

uint64_t sub_1A44F3644@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result & 1;
  return result;
}

id sub_1A44F36FC()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2))
  {
    v3 = 1.0;
  }

  return [v1 setAlpha_];
}

uint64_t sub_1A44F379C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A44F37FC(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1A44F36FC();
}

id (*sub_1A44F386C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A44F38EC;
}

id sub_1A44F38EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A44F36FC();
  }

  return result;
}

uint64_t sub_1A44F3920()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v3 = v2();
  sub_1A43F1854(v3);
  v4 = *(v0 + *((*v1 & *v0) + 0x78));
  v5 = v2();
  return (*((*v1 & *v4) + 0x120))(v5);
}

uint64_t CarouselLayout.__allocating_init(viewModel:contentLayout:initialPageIndex:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  sub_1A44F4328(a1, a2, a3);
  v10 = v9;

  (*(*(*(v4 + 10) - 8) + 8))(a1);
  return v10;
}

uint64_t CarouselLayout.init(viewModel:contentLayout:initialPageIndex:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  sub_1A44F4328(a1, a2, a3);
  v9 = v8;

  (*(*(*((v7 & v6) + 0x50) - 8) + 8))(a1);
  return v9;
}

id sub_1A44F3B94()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98));
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

id sub_1A44F3BD8()
{
  [v0 referenceSize];
  v2 = v1;
  v4 = v3;
  result = [v0 setContentSize_];
  v6 = MEMORY[0x1E69E7D40];
  v7 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  if (v7[8])
  {
    __break(1u);
    goto LABEL_11;
  }

  [v0 setZPosition:*v7 forSublayoutAtIndex:-0.1];
  result = [v0 referenceDepth];
  v9 = v0 + *((*v6 & *v0) + 0x88);
  if (v9[8])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [v0 setReferenceDepth:*v9 forSublayoutAtIndex:v8 * 0.5];
  v10 = v0 + *((*v6 & *v0) + 0x88);
  if (v10[8])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v0 setFrame:*v10 forSublayoutAtIndex:{0.0, 0.0, v2, v4}];
  result = [v0 referenceDepth];
  v12 = v0 + *((*v6 & *v0) + 0x90);
  if (v12[8])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v0 setZPosition:*v12 forSublayoutAtIndex:v11 * -0.2];
  result = [v0 referenceDepth];
  v14 = v0 + *((*v6 & *v0) + 0x90);
  if (v14[8])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [v0 setReferenceDepth:*v14 forSublayoutAtIndex:v13 * 0.5];
  v15 = v0 + *((*v6 & *v0) + 0x90);
  if (v15[8])
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v16 = *v15;

  return [v0 setFrame:v16 forSublayoutAtIndex:{0.0, 0.0, v2, v4}];
}

void sub_1A44F3E28(void *a1)
{
  v1 = a1;
  sub_1A44F3BD8();
}

id sub_1A44F3E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CarouselLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, sel_referenceSizeDidChange);
  return sub_1A44F3B94();
}

void sub_1A44F3EE4(void *a1)
{
  v4 = a1;
  sub_1A44F3E70(v4, v1, v2, v3);
}

id sub_1A44F3F2C()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  result = *(v0 + v1[19]);
  if (result)
  {
    [result updateIfNeeded];
    v4 = type metadata accessor for CarouselLayout(0, v1[10], v1[11], v3);
    v5.receiver = v0;
    v5.super_class = v4;
    return objc_msgSendSuper2(&v5, sel_update);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A44F3FD4(void *a1)
{
  v1 = a1;
  sub_1A44F3F2C();
}

id CarouselLayout.__allocating_init(composition:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithComposition_];

  return v3;
}

void sub_1A44F409C(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A44F4840();
}

id CarouselLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarouselLayout.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CarouselLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1A44F422C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  v3 = *&a1[*((*v2 & *a1) + 0x98)];
}

void sub_1A44F4328(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v11 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *(v4 + *((v9 & v8) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70)) = 1;
  v14 = v4 + *((*v7 & *v4) + 0x88);
  *v14 = 0;
  v14[8] = 1;
  v15 = v4 + *((*v7 & *v4) + 0x90);
  *v15 = 0;
  v15[8] = 1;
  *(v4 + *((*v7 & *v4) + 0x98)) = 0;
  (*(*(v11 - 8) + 16))(v4 + *((*v7 & *v4) + 0x60), a1, v11, v13);
  *(v4 + *((*v7 & *v4) + 0x78)) = a2;
  type metadata accessor for ValueDrivingScrollLayout();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v29 = a2;
  *(v4 + *((*v7 & *v4) + 0x80)) = sub_1A43F16C8(sub_1A44F4B94, v16);
  v31.receiver = v4;
  v31.super_class = type metadata accessor for CarouselLayout(0, v11, v10, v17);
  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = *((*v7 & *v18) + 0xB8);
  v20 = v18;
  v19(a3);
  v21 = [objc_allocWithZone(off_1E7721940) initWithTarget:sub_1A524EA94() needsUpdateSelector:sel_setNeedsUpdate];

  swift_unknownObjectRelease();
  v22 = *((*v7 & *v20) + 0x98);
  v23 = *(v20 + v22);
  *(v20 + v22) = v21;
  v24 = v21;

  if (v24)
  {
    [v24 addUpdateSelector_];

    v25 = [v20 addSublayout_];
    v26 = v20 + *((*v7 & *v20) + 0x90);
    *v26 = v25;
    v26[8] = 0;
    v27 = [v20 addSublayout_];
    v28 = v20 + *((*v7 & *v20) + 0x88);
    *v28 = v27;
    v28[8] = 0;
    sub_1A44F3B94();
    sub_1A524C354();
  }

  __break(1u);
}

uint64_t sub_1A44F48A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1A44F4BE8()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
  }

  else
  {

    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1A44F4D38@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.collectionList.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A44F4D64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return EnvironmentValues.collectionList.setter(v1);
}

unint64_t sub_1A44F4DB4()
{
  result = qword_1EB13CA28;
  if (!qword_1EB13CA28)
  {
    sub_1A44F6720(255, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CA28);
  }

  return result;
}

uint64_t sub_1A44F4E38@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  v5 = type metadata accessor for LemonadePickerRootView(0);
  v6 = v5[8];
  *(a3 + v6) = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v7 = v5[9];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  sub_1A44F6720(0, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
  swift_allocObject();
  sub_1A5242844();
  sub_1A44F4DB4();
  sub_1A524BAC4();
  *(a3 + v5[10]) = a2;
  type metadata accessor for LemonadeNavigationContext(0);
  sub_1A3C7A2E0(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  return sub_1A524BAC4();
}

void sub_1A44F4FF8(uint64_t a1)
{
  if (!qword_1EB13CA30)
  {
    v2 = type metadata accessor for LemonadePickerRootViewModel(255);
    sub_1A44F9BC0(255, &qword_1EB13CA38, sub_1A44F50B0, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = &off_1F1731E50;
    v6[3] = sub_1A44F68D4();
    v4 = type metadata accessor for LemonadeSpecsProviderView(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB13CA30);
    }
  }
}

void sub_1A44F50B0(uint64_t a1)
{
  if (!qword_1EB13CA40)
  {
    sub_1A44F5164();
    sub_1A3C7A2E0(&qword_1EB13CB10, sub_1A44F5164, MEMORY[0x1E697C1A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA40);
    }
  }
}

void sub_1A44F5164()
{
  if (!qword_1EB13CA48)
  {
    sub_1A44F54B0(255);
    sub_1A44F54E4();
    sub_1A44F5808(255);
    type metadata accessor for LemonadeNavigationDestination(255);
    sub_1A44F9BC0(255, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    sub_1A44F5A64(255);
    sub_1A44F65D0(255);
    sub_1A44F5C10(255);
    sub_1A44F5D8C(255);
    sub_1A44F5ED0(255);
    sub_1A44F5FE4(255);
    sub_1A44F60AC(255);
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A44F6684(255);
    sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C7A2E0(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination, &unk_1A53211C0);
    sub_1A44F6774();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CA48);
    }
  }
}

void sub_1A44F54E4()
{
  if (!qword_1EB13CA50)
  {
    sub_1A44F5808(255);
    type metadata accessor for LemonadeNavigationDestination(255);
    sub_1A44F9BC0(255, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    sub_1A44F5A64(255);
    sub_1A44F65D0(255);
    sub_1A44F5C10(255);
    sub_1A44F5D8C(255);
    sub_1A44F5ED0(255);
    sub_1A44F5FE4(255);
    sub_1A44F60AC(255);
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A44F6684(255);
    sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C7A2E0(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination, &unk_1A53211C0);
    sub_1A44F6774();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA50);
    }
  }
}

void sub_1A44F5808(uint64_t a1)
{
  if (!qword_1EB13CA58)
  {
    sub_1A44F5A64(255);
    sub_1A44F65D0(255);
    sub_1A44F5C10(255);
    sub_1A44F5D8C(255);
    sub_1A44F5ED0(255);
    sub_1A44F5FE4(255);
    sub_1A44F60AC(255);
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A44F6684(255);
    sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA58);
    }
  }
}

void sub_1A44F5A64(uint64_t a1)
{
  if (!qword_1EB13CA60)
  {
    sub_1A44F5C10(255);
    sub_1A44F5D8C(255);
    sub_1A44F5ED0(255);
    sub_1A44F5FE4(255);
    sub_1A44F60AC(255);
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA60);
    }
  }
}

void sub_1A44F5C10(uint64_t a1)
{
  if (!qword_1EB13CA68)
  {
    sub_1A44F5D8C(255);
    sub_1A44F5ED0(255);
    sub_1A44F5FE4(255);
    sub_1A44F60AC(255);
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA68);
    }
  }
}

void sub_1A44F5D8C(uint64_t a1)
{
  if (!qword_1EB13CA70)
  {
    sub_1A44F5ED0(255);
    sub_1A44F5FE4(255);
    sub_1A44F60AC(255);
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA70);
    }
  }
}

void sub_1A44F5ED0(uint64_t a1)
{
  if (!qword_1EB13CA78)
  {
    sub_1A44F5FE4(255);
    sub_1A44F60AC(255);
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA78);
    }
  }
}

void sub_1A44F5FE4(uint64_t a1)
{
  if (!qword_1EB13CA80)
  {
    sub_1A44F60AC(255);
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA80);
    }
  }
}

void sub_1A44F60AC(uint64_t a1)
{
  if (!qword_1EB13CA88)
  {
    sub_1A44F6140(255);
    sub_1A3C7A2E0(&qword_1EB13CAD8, sub_1A44F6140, MEMORY[0x1E69C21D8]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CA88);
    }
  }
}

void sub_1A44F6140(uint64_t a1)
{
  if (!qword_1EB13CA90)
  {
    sub_1A44F61D4(255);
    sub_1A3C7A2E0(&qword_1EB13CAD0, sub_1A44F61D4, MEMORY[0x1E6981870]);
    v1 = sub_1A5242CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CA90);
    }
  }
}

void sub_1A44F61D4(uint64_t a1)
{
  if (!qword_1EB13CA98)
  {
    sub_1A44FDCE0(255, &qword_1EB13CAA0, MEMORY[0x1E697F960]);
    sub_1A44F6324();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CA98);
    }
  }
}

void sub_1A44F6254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CollectionsView(255);
    v7 = type metadata accessor for AlbumsFeedView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A44F6324()
{
  result = qword_1EB13CAB8;
  if (!qword_1EB13CAB8)
  {
    sub_1A44FDCE0(255, &qword_1EB13CAA0, MEMORY[0x1E697F960]);
    sub_1A44F63C0();
    sub_1A44F6504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CAB8);
  }

  return result;
}

unint64_t sub_1A44F63C0()
{
  result = qword_1EB13CAC0;
  if (!qword_1EB13CAC0)
  {
    sub_1A44F6254(255, &qword_1EB13CAA8, MEMORY[0x1E697F960]);
    sub_1A44F64BC(&qword_1EB1C55E0, type metadata accessor for CollectionsView, &unk_1A5344688);
    sub_1A44F64BC(&qword_1EB1C55E8, type metadata accessor for AlbumsFeedView, &unk_1A5344638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CAC0);
  }

  return result;
}

uint64_t sub_1A44F64BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A44F6504()
{
  result = qword_1EB13CAC8;
  if (!qword_1EB13CAC8)
  {
    sub_1A44FDC78(255, &qword_1EB13CAB0, MEMORY[0x1E697F960]);
    sub_1A44F64BC(qword_1EB1C55F0, type metadata accessor for PeopleFeedView, &unk_1A53445E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CAC8);
  }

  return result;
}

void sub_1A44F65D0(uint64_t a1)
{
  if (!qword_1EB13CAE8)
  {
    sub_1A44F6684(255);
    sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CAE8);
    }
  }
}

void sub_1A44F6684(uint64_t a1)
{
  if (!qword_1EB13CAF0)
  {
    sub_1A44F6720(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1A425618C();
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CAF0);
    }
  }
}

void sub_1A44F6720(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A44F6774()
{
  result = qword_1EB13CB08;
  if (!qword_1EB13CB08)
  {
    sub_1A44F9BC0(255, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    sub_1A3C7A2E0(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);
    sub_1A44F6870(&qword_1EB127928, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CB08);
  }

  return result;
}

uint64_t sub_1A44F6870(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A44FA330(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A44F68D4()
{
  result = qword_1EB13CB18;
  if (!qword_1EB13CB18)
  {
    v1 = MEMORY[0x1E697DA60];
    sub_1A44F9BC0(255, &qword_1EB13CA38, sub_1A44F50B0, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
    sub_1A44F5164();
    sub_1A3C7A2E0(&qword_1EB13CB10, sub_1A44F5164, MEMORY[0x1E697C1A8]);
    swift_getOpaqueTypeConformance2();
    sub_1A44F6870(&qword_1EB1278A8, &qword_1EB1278A0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CB18);
  }

  return result;
}

void sub_1A44F6A00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v85 = sub_1A5242D14();
  v3 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v63 - v6;
  v82 = sub_1A52425F4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - v11;
  sub_1A44F5164();
  v76 = v13;
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F50B0(0);
  v80 = v16;
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for LemonadePickerRootView(0);
  v73 = *(v75 + 44);
  v72 = a1;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  (*(v10 + 8))(v12, v9);
  v94 = v96;
  v95 = v97;
  v87 = a1;
  sub_1A44F54B0(0);
  v71 = v18;
  sub_1A44F54E4();
  v70 = v19;
  v69 = sub_1A3C7A2E0(&qword_1EB126F10, sub_1A44F54B0, MEMORY[0x1E69E6318]);
  v68 = sub_1A3C7A2E0(&qword_1EB126F08, sub_1A44F54B0, MEMORY[0x1E69E6338]);
  v67 = sub_1A3C7A2E0(&qword_1EB126F00, sub_1A44F54B0, MEMORY[0x1E69E6348]);
  sub_1A44F5808(255);
  v66 = v20;
  v65 = type metadata accessor for LemonadeNavigationDestination(255);
  sub_1A44F9BC0(255, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  v64 = v21;
  sub_1A44F5A64(255);
  v23 = v22;
  sub_1A44F65D0(255);
  v25 = v24;
  sub_1A44F5C10(255);
  v27 = v26;
  sub_1A44F5D8C(255);
  v29 = v28;
  sub_1A44F5ED0(255);
  v31 = v30;
  sub_1A44F5FE4(255);
  v33 = v32;
  sub_1A44F60AC(255);
  v35 = v34;
  v36 = sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
  v88 = v35;
  v89 = MEMORY[0x1E69E5FE0];
  v90 = v36;
  v91 = MEMORY[0x1E69E5FE8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1A3D5F9DC();
  v88 = v33;
  v89 = MEMORY[0x1E69E6158];
  v90 = OpaqueTypeConformance2;
  v91 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v88 = v31;
  v89 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v88 = v29;
  v89 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v88 = v27;
  v89 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  sub_1A44F6684(255);
  v44 = v43;
  v45 = sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684, MEMORY[0x1E697BEF0]);
  v88 = v44;
  v89 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v88 = v23;
  v89 = v25;
  v90 = v42;
  v91 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1A3C7A2E0(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination, &unk_1A53211C0);
  v49 = sub_1A44F6774();
  v88 = v66;
  v89 = v65;
  v90 = v64;
  v91 = v47;
  v92 = v48;
  v93 = v49;
  swift_getOpaqueTypeConformance2();
  sub_1A5248814();
  sub_1A524BAA4();
  v50 = v78;
  sub_1A46593C4(v78);

  v51 = sub_1A3C7A2E0(&qword_1EB13CB10, sub_1A44F5164, MEMORY[0x1E697C1A8]);
  v52 = v74;
  v53 = v76;
  View.lemonadeInlinePlaybackEnvironment(allowedPlayState:)(v50, v76, v51);
  (*(v81 + 8))(v50, v82);
  (*(v77 + 8))(v15, v53);
  KeyPath = swift_getKeyPath();
  v55 = v83;
  sub_1A3D61808(v83);
  v57 = v84;
  v56 = v85;
  (*(v3 + 104))(v84, *MEMORY[0x1E69C2210], v85);
  LOBYTE(v48) = sub_1A5242D04();
  v58 = *(v3 + 8);
  v58(v57, v56);
  v58(v55, v56);
  if (v48)
  {
    v59 = 22.0;
  }

  else
  {
    v59 = 16.0;
  }

  v60 = v86;
  (*(v79 + 32))(v86, v52, v80);
  sub_1A44F9BC0(0, &qword_1EB13CA38, sub_1A44F50B0, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
  v62 = v60 + *(v61 + 36);
  *v62 = KeyPath;
  *(v62 + 8) = 0x4030000000000000;
  *(v62 + 16) = v59;
  *(v62 + 24) = 0;
  *(v62 + 32) = v59;
}

uint64_t sub_1A44F73F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v93 = sub_1A5249284();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249234();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadePickerRootView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A44F60AC(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44F5FE4(0);
  v87 = v15;
  v85 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5ED0(0);
  v89 = v18;
  v86 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5D8C(0);
  v95 = v20;
  v90 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5C10(0);
  v101 = v22;
  v96 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5A64(0);
  v103 = *(v24 - 1);
  v104 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5808(0);
  v106 = *(v26 - 8);
  v107 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = sub_1A524BC04();
  v14[1] = v28;
  sub_1A44FD6E8(0, &qword_1EB13CC00, sub_1A44F6140, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A44FDD88(a1, &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePickerRootView);
  v29 = *(v9 + 80);
  v30 = (v29 + 16) & ~v29;
  v108 = v10;
  v99 = v29;
  v31 = swift_allocObject();
  v100 = v30;
  v109 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD754(v109, v31 + v30, type metadata accessor for LemonadePickerRootView);
  sub_1A524A044();
  sub_1A44F61D4(0);
  sub_1A3C7A2E0(&qword_1EB13CAD0, sub_1A44F61D4, MEMORY[0x1E6981870]);
  sub_1A5242CF4();
  sub_1A44F9F70(0);
  sub_1A524BAA4();
  v32 = sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC, MEMORY[0x1E6981880]);
  sub_1A524A664();

  sub_1A44FDEC0(v14, sub_1A44F60AC);
  v33 = *(a1 + 16);
  v110 = a1;
  v83 = *(a1 + 24);
  v82 = v7;
  if (v83 == 1)
  {
    v36 = v33;
    v37 = v33;
  }

  else
  {

    v34 = sub_1A524D254();
    v35 = sub_1A524A014();
    sub_1A5246DF4(v34, &dword_1A3C1C000, v35, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v33, 0);
    v36 = (*(v97 + 8))(v7, v98);
    v37 = v112;
  }

  if (!v37 || (v38 = (*((*MEMORY[0x1E69E7D40] & *v37) + 0x3A8))(v36), v40 = v39, v37, !v40))
  {

    v38 = 0;
    v40 = 0xE000000000000000;
  }

  v116 = v38;
  v117 = v40;
  v112 = v12;
  v113 = MEMORY[0x1E69E5FE0];
  v114 = v32;
  v115 = MEMORY[0x1E69E5FE8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_1A3D5F9DC();
  v43 = MEMORY[0x1E69E6158];
  v44 = v84;
  v45 = v87;
  sub_1A524ABB4();

  (*(v85 + 8))(v17, v45);
  v112 = v45;
  v113 = v43;
  v114 = OpaqueTypeConformance2;
  v115 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v88;
  v48 = v89;
  sub_1A425D400(0, v89, v46);
  (*(v86 + 8))(v44, v48);
  v49 = v92;
  v50 = v91;
  v51 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x1E697C438], v93);
  v112 = v48;
  v113 = v46;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v94;
  v54 = v95;
  sub_1A524AF34();
  (*(v49 + 8))(v50, v51);
  (*(v90 + 8))(v47, v54);
  if (v83)
  {
    v55 = v33;
  }

  else
  {

    v56 = sub_1A524D254();
    v57 = sub_1A524A014();
    sub_1A5246DF4(v56, &dword_1A3C1C000, v57, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v58 = v82;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v33, 0);
    v55 = (*(v97 + 8))(v58, v98);
    v33 = v112;
  }

  if (v33 && (v59 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x3C0))(v55), v33, (v59 & 1) != 0))
  {
    v60 = 0;
  }

  else
  {
    v60 = 2;
  }

  sub_1A44FD844(0, &qword_1EB126218, MEMORY[0x1E697C290], MEMORY[0x1E69E6F90]);
  sub_1A5248AB4();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1A52F8E10;
  sub_1A5248A94();
  v112 = v54;
  v113 = v52;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v101;
  v64 = v102;
  MEMORY[0x1A5906470](v60, v61, v101, v62);

  v65 = (*(v96 + 8))(v53, v63);
  MEMORY[0x1EEE9AC00](v65);
  v66 = v110;
  sub_1A44F65D0(0);
  v68 = v67;
  v112 = v63;
  v113 = v62;
  v69 = swift_getOpaqueTypeConformance2();
  sub_1A44F6684(255);
  v71 = v70;
  v72 = sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684, MEMORY[0x1E697BEF0]);
  v112 = v71;
  v113 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v75 = v104;
  v74 = v105;
  sub_1A524B0E4();
  (*(v103 + 8))(v64, v75);
  type metadata accessor for LemonadeNavigationDestination(0);
  v76 = v109;
  sub_1A44FDD88(v66, v109, type metadata accessor for LemonadePickerRootView);
  v77 = v100;
  v78 = swift_allocObject();
  sub_1A44FD754(v76, v78 + v77, type metadata accessor for LemonadePickerRootView);
  sub_1A44F9BC0(0, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  v112 = v75;
  v113 = v68;
  v114 = v69;
  v115 = v73;
  swift_getOpaqueTypeConformance2();
  sub_1A3C7A2E0(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination, &unk_1A53211C0);
  sub_1A44F6774();
  v79 = v107;
  sub_1A524AE04();

  return (*(v106 + 8))(v74, v79);
}

uint64_t sub_1A44F8280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = MEMORY[0x1E697F948];
  sub_1A44FDC78(0, &qword_1EB13CC10, MEMORY[0x1E697F948]);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v73 - v5;
  sub_1A44FDC78(0, &qword_1EB13CAB0, MEMORY[0x1E697F960]);
  v97 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v73 - v7;
  sub_1A44FA394(0);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v73 - v11;
  v84 = type metadata accessor for PeopleFeedView(0);
  MEMORY[0x1EEE9AC00](v84);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F9F70(0);
  v78 = v14;
  v77 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v93 = v16;
  v75 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v73 - v17;
  v91 = type metadata accessor for AlbumsFeedView(0);
  MEMORY[0x1EEE9AC00](v91);
  v80 = (&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v73 - v20;
  sub_1A44FDCE0(0, &qword_1EB13CC18, v3);
  v94 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v73 - v22;
  sub_1A44F6254(0, &qword_1EB13CC20, MEMORY[0x1E697F948]);
  v88 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v73 - v24;
  sub_1A44F6254(0, &qword_1EB13CAA8, MEMORY[0x1E697F960]);
  v95 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v92 = &v73 - v26;
  v89 = type metadata accessor for CollectionsView(0);
  MEMORY[0x1EEE9AC00](v89);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A5249234();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + 16);
  v34 = *(a1 + 24);
  if (v34 == 1)
  {
    v35 = v33;
    v36 = v33;
    if (!v33)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v37 = sub_1A524D254();
    v38 = sub_1A524A014();
    sub_1A5246DF4(v37, &dword_1A3C1C000, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v33, 0);
    v35 = (*(v30 + 8))(v32, v29);
    v36 = v99;
    if (!v99)
    {
      goto LABEL_8;
    }
  }

  v39 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x1C8))(v35);

  if (v39 > 6)
  {
    swift_storeEnumTagMultiPayload();
    sub_1A44F64BC(qword_1EB1C55F0, type metadata accessor for PeopleFeedView, &unk_1A53445E8);
    v52 = v87;
    sub_1A5249744();
    v53 = MEMORY[0x1E697F960];
    sub_1A44FDDF0(v52, v96, &qword_1EB13CAB0, MEMORY[0x1E697F960], sub_1A44FDC78);
    swift_storeEnumTagMultiPayload();
    sub_1A44F63C0();
    sub_1A44F6504();
    sub_1A5249744();
    return sub_1A44FDE60(v52, &qword_1EB13CAB0, v53, sub_1A44FDC78);
  }

  if (((1 << v39) & 0x1A) != 0)
  {
    type metadata accessor for LemonadePickerRootView(0);
    sub_1A524BAA4();
    *v13 = v99;
    *(v13 + 1) = swift_getKeyPath();
    v13[16] = 0;
    *(v13 + 3) = swift_getKeyPath();
    v13[32] = 0;
    v46 = type metadata accessor for LemonadePeopleSectionProvider(0);
    v47 = v82;
    (*(*(v46 - 8) + 56))(v82, 1, 1, v46);
    sub_1A44FDD88(v47, v81, sub_1A44FA394);
    sub_1A524B694();
    sub_1A44FDEC0(v47, sub_1A44FA394);
    sub_1A44FDD88(v13, v86, type metadata accessor for PeopleFeedView);
    swift_storeEnumTagMultiPayload();
    sub_1A44F64BC(qword_1EB1C55F0, type metadata accessor for PeopleFeedView, &unk_1A53445E8);
    v48 = v87;
    sub_1A5249744();
    v49 = MEMORY[0x1E697F960];
    sub_1A44FDDF0(v48, v96, &qword_1EB13CAB0, MEMORY[0x1E697F960], sub_1A44FDC78);
    swift_storeEnumTagMultiPayload();
    sub_1A44F63C0();
    sub_1A44F6504();
    sub_1A5249744();
    sub_1A44FDE60(v48, &qword_1EB13CAB0, v49, sub_1A44FDC78);
    v44 = type metadata accessor for PeopleFeedView;
    v45 = v13;
    return sub_1A44FDEC0(v45, v44);
  }

  if (((1 << v39) & 0x21) == 0)
  {
    v50 = sub_1A44F4BE8();
    if (v34)
    {
      v51 = v33;
    }

    else
    {

      v55 = sub_1A524D254();
      v56 = sub_1A524A014();
      sub_1A5246DF4(v55, &dword_1A3C1C000, v56, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v33, 0);
      (*(v30 + 8))(v32, v29);
      v33 = v99;
    }

    v57 = *(a1 + *(type metadata accessor for LemonadePickerRootView(0) + 40));

    v58 = v74;
    v59 = v93;
    sub_1A524BAB4();
    v60 = v76;
    v61 = v78;
    sub_1A524BAB4();
    KeyPath = swift_getKeyPath();
    v63 = v80;
    *v80 = KeyPath;
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    v64 = v91;
    *(v63 + *(v91 + 24)) = v50;
    *(v63 + v64[7]) = v33;
    *(v63 + v64[5]) = v57;
    if (v33 && v50)
    {
      v65 = *((*MEMORY[0x1E69E7D40] & *v33) + 0x360);
      v66 = v33;
      v67 = v50;
      v68 = v65();
      if (v68)
      {
        if (*(v68 + 16))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v69 = [v67 px:0 fetchObjectWithLocalIdentifier:?];
      }

      else
      {

        v69 = 0;
      }

      v63 = v80;
    }

    else
    {
      v69 = 0;
    }

    *(v63 + v64[8]) = v69;
    (*(v75 + 32))(v63 + v64[9], v58, v59);
    (*(v77 + 32))(v63 + v64[10], v60, v61);
    v70 = v79;
    sub_1A44FD754(v63, v79, type metadata accessor for AlbumsFeedView);
    sub_1A44FDD88(v70, v90, type metadata accessor for AlbumsFeedView);
    swift_storeEnumTagMultiPayload();
    sub_1A44F64BC(&qword_1EB1C55E0, type metadata accessor for CollectionsView, &unk_1A5344688);
    sub_1A44F64BC(&qword_1EB1C55E8, type metadata accessor for AlbumsFeedView, &unk_1A5344638);
    v71 = v92;
    sub_1A5249744();
    v72 = MEMORY[0x1E697F960];
    sub_1A44FDDF0(v71, v96, &qword_1EB13CAA8, MEMORY[0x1E697F960], sub_1A44F6254);
    swift_storeEnumTagMultiPayload();
    sub_1A44F63C0();
    sub_1A44F6504();
    sub_1A5249744();
    sub_1A44FDE60(v71, &qword_1EB13CAA8, v72, sub_1A44F6254);
    v44 = type metadata accessor for AlbumsFeedView;
    v45 = v70;
    return sub_1A44FDEC0(v45, v44);
  }

LABEL_8:
  v40 = *(a1 + *(type metadata accessor for LemonadePickerRootView(0) + 40));

  sub_1A524BAB4();
  v41 = v90;
  *&v28[*(v89 + 20)] = v40;
  sub_1A44FDD88(v28, v41, type metadata accessor for CollectionsView);
  swift_storeEnumTagMultiPayload();
  sub_1A44F64BC(&qword_1EB1C55E0, type metadata accessor for CollectionsView, &unk_1A5344688);
  sub_1A44F64BC(&qword_1EB1C55E8, type metadata accessor for AlbumsFeedView, &unk_1A5344638);
  v42 = v92;
  sub_1A5249744();
  v43 = MEMORY[0x1E697F960];
  sub_1A44FDDF0(v42, v96, &qword_1EB13CAA8, MEMORY[0x1E697F960], sub_1A44F6254);
  swift_storeEnumTagMultiPayload();
  sub_1A44F63C0();
  sub_1A44F6504();
  sub_1A5249744();
  sub_1A44FDE60(v42, &qword_1EB13CAA8, v43, sub_1A44F6254);
  v44 = type metadata accessor for CollectionsView;
  v45 = v28;
  return sub_1A44FDEC0(v45, v44);
}

uint64_t sub_1A44F91F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  v10 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1A44F6684(0);
  v21[0] = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadePickerRootView(0);
  v15 = a1;
  sub_1A3D61808(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E69C2210], v3);
  LOBYTE(a1) = sub_1A5242D04();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  if (a1)
  {
    v17 = sub_1A5249824();
  }

  else
  {
    v17 = sub_1A5249814();
  }

  MEMORY[0x1EEE9AC00](v17);
  v21[-2] = v15;
  sub_1A44F6720(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  sub_1A425618C();
  sub_1A5247F24();
  v18 = sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684, MEMORY[0x1E697BEF0]);
  v19 = v21[0];
  MEMORY[0x1A5904CD0](v14, v21[0], v18);
  return (*(v12 + 8))(v14, v19);
}

uint64_t sub_1A44F9520(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePickerRootView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A44FDD88(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePickerRootView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1A44FD754(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for LemonadePickerRootView);
  return sub_1A524B704();
}

uint64_t sub_1A44F9674(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadePickerRootView(0);
  sub_1A44FDD88(a1 + *(v13 + 32), v8, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

void sub_1A44F98F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FDD88(a1, v6, type metadata accessor for LemonadeNavigationDestination);
  type metadata accessor for LemonadePickerRootView(0);
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  sub_1A487864C(v6, v14, 0, a2);
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for LemonadePickerRootViewModel(0);
  v9 = sub_1A3C7A2E0(&qword_1EB1403D0, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0A0);
  LemonadeMutableContainerSizeSpecsProviderModel.containerSize.getter(v8, v9);
  sub_1A4187540(&v13 + 7, v10);
  LOBYTE(a1) = HIBYTE(v13);
  sub_1A44F9BC0(0, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  v12 = a2 + *(v11 + 36);
  *v12 = KeyPath;
  v12[8] = a1;
}

void sub_1A44F9AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = *(**(*(a2 + *(type metadata accessor for LemonadePickerRootView(0) + 40)) + 32) + 736);

  v7(&v11, v8);

  LOBYTE(a2) = v11;
  sub_1A3D06804(a1, a3);
  sub_1A44F9BC0(0, &qword_1EB13CB20, sub_1A44F4FF8, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
  v10 = a3 + *(v9 + 36);
  *v10 = KeyPath;
  *(v10 + 8) = a2;
}

void sub_1A44F9BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A44FA330(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A44F9C58()
{
  result = qword_1EB13CB30;
  if (!qword_1EB13CB30)
  {
    sub_1A44F9BC0(255, &qword_1EB13CB20, sub_1A44F4FF8, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
    sub_1A3C7A2E0(&qword_1EB13CB28, sub_1A44F4FF8, &protocol conformance descriptor for LemonadeSpecsProviderView<A, B>);
    sub_1A44F6870(&qword_1EB122140, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CB30);
  }

  return result;
}

uint64_t sub_1A44F9D70(uint64_t a1)
{
  sub_1A44F4FF8(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v1 + *(a1 + 40));
  v14 = 3;
  v13 = v1;
  v6 = type metadata accessor for LemonadePickerRootViewModel(0);
  sub_1A44F9BC0(0, &qword_1EB13CA38, sub_1A44F50B0, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
  v8 = v7;
  v9 = sub_1A44F68D4();

  LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v15, &v14, sub_1A44FE050, v6, v8, &off_1F1731E50, v9, v5);
  v12 = v1;
  sub_1A44F9BC0(0, &qword_1EB13CB20, sub_1A44F4FF8, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
  sub_1A3C7A2E0(&qword_1EB13CB28, sub_1A44F4FF8, &protocol conformance descriptor for LemonadeSpecsProviderView<A, B>);
  sub_1A44F9C58();
  sub_1A524A4B4();
  return sub_1A3D05B0C(v5);
}

void sub_1A44F9F70(uint64_t a1)
{
  if (!qword_1EB13CB38)
  {
    sub_1A44F6720(255, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
    v1 = sub_1A524BAE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CB38);
    }
  }
}

void sub_1A44FA008(uint64_t a1)
{
  sub_1A44FA258(319, &qword_1EB1246A0, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A44FD844(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A44FA258(319, &qword_1EB13CB40, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760);
      if (v3 <= 0x3F)
      {
        sub_1A44FA330(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A44FD844(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A44FD844(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for LemonadePickerRootViewModel(319);
              if (v7 <= 0x3F)
              {
                sub_1A44FD844(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
                if (v8 <= 0x3F)
                {
                  sub_1A44F9F70(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A44FA258(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1A44FA2C8(255, a3, a4, a5, MEMORY[0x1E69E6720]);
    v6 = sub_1A5247E54();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A44FA2C8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A44FA330(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A44FA3DC(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v1 <= 0x3F)
  {
    sub_1A44FA258(319, &qword_1EB1246A0, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8);
    if (v2 <= 0x3F)
    {
      sub_1A44FD844(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A44FD844(319, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A44FA538(uint64_t a1)
{
  sub_1A44FD844(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadePickerRootViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1A44FA2C8(319, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A3F17950(319);
        if (v4 <= 0x3F)
        {
          sub_1A44FA2C8(319, &qword_1EB137A48, &qword_1EB1265D0, 0x1E6978958, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1A44FD844(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
            if (v6 <= 0x3F)
            {
              sub_1A44F9F70(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A44FA714(uint64_t a1)
{
  sub_1A44FD844(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadePickerRootViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A44FA7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for PeopleFeedView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = v5;
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FCFF8(0);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD19C(0);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_1A5249314();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1A44FD6E8(0, &qword_1EB13CBF8, sub_1A44FD0A0, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A44FAE20(v2, &v13[*(v16 + 44)]);
  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  v37 = v8;
  v38 = v7;
  if (v18 == 1)
  {
    v19 = v17;
  }

  else
  {

    v20 = sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v17, 0);
    (*(v8 + 8))(v10, v7);
    v19 = v46;
    v17 = v46;
  }

  v46 = v17;
  sub_1A44FDD88(v2, v6, type metadata accessor for PeopleFeedView);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  v39 = v6;
  sub_1A44FD754(v6, v23 + v22, type metadata accessor for PeopleFeedView);
  sub_1A44FA2C8(0, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
  v25 = v24;
  v26 = sub_1A3C7A2E0(&qword_1EB13CBF0, sub_1A44FCFF8, MEMORY[0x1E69817F8]);
  v27 = sub_1A44FD29C();
  sub_1A524B154();

  sub_1A44FDEC0(v13, sub_1A44FCFF8);
  v28 = *(v2 + 24);
  if (*(v2 + 32) == 1)
  {
    v29 = v28;
  }

  else
  {

    v30 = sub_1A524D254();
    v31 = sub_1A524A014();
    sub_1A5246DF4(v30, &dword_1A3C1C000, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v28, 0);
    (*(v37 + 8))(v10, v38);
    v29 = v46;
    v28 = v46;
  }

  v50 = v28;
  v32 = v39;
  sub_1A44FDD88(v2, v39, type metadata accessor for PeopleFeedView);
  v33 = swift_allocObject();
  sub_1A44FD754(v32, v33 + v22, type metadata accessor for PeopleFeedView);
  sub_1A3F17950(0);
  v46 = v43;
  v47 = v25;
  v48 = v26;
  v49 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1A44FD63C(&qword_1EB125A10, sub_1A3F17950, sub_1A44FD6AC, MEMORY[0x1E69E7C80]);
  v34 = v41;
  v35 = v45;
  sub_1A524B154();

  return (*(v40 + 8))(v35, v34);
}

uint64_t sub_1A44FAE20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1A44FD844(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  sub_1A44FD0D4(0);
  v29 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FA394(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadePeopleSectionProvider(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  type metadata accessor for PeopleFeedView(0);
  sub_1A44FD844(0, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A44FDEC0(v12, sub_1A44FA394);
    v20 = 1;
    v21 = v30;
  }

  else
  {
    sub_1A44FD754(v12, v19, type metadata accessor for LemonadePeopleSectionProvider);
    sub_1A44FDD88(v19, v16, type metadata accessor for LemonadePeopleSectionProvider);
    v22 = *a1;
    v23 = sub_1A52442E4();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v24 = sub_1A3C7A2E0(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider, &unk_1A53285E8);

    v25 = sub_1A3C30368();
    v26 = sub_1A3C5A374();
    sub_1A437CBD4(v16, v22, v5, 0, v25 & 1, v31, 0, 0, v9, v26 & 1, v13, v24);
    sub_1A44FDEC0(v19, type metadata accessor for LemonadePeopleSectionProvider);
    v27 = v30;
    sub_1A44FD754(v9, v30, sub_1A44FD0D4);
    v20 = 0;
    v21 = v27;
  }

  return (*(v7 + 56))(v21, v20, 1, v29);
}

uint64_t sub_1A44FB254()
{
  v1 = v0;
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FA394(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v13 = v12;
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v12, 0);
    (*(v3 + 8))(v5, v2);
    v12 = v26;
    if (!v26)
    {
LABEL_13:
      v20 = 1;
      goto LABEL_14;
    }
  }

  v16 = *(v1 + 24);
  if (*(v1 + 32) != 1)
  {

    v21 = sub_1A524D254();
    v22 = sub_1A524A014();
    sub_1A5246DF4(v21, &dword_1A3C1C000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v16, 0);
    v17 = (*(v3 + 8))(v5, v2);
    v16 = v26;
    if (v26)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v17 = v16;
  if (!v16)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_7:
  v18 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x390))(v17);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1A4251F54(v12, 1, 0, 0, 1, v19, v16, v11);
  v20 = 0;
LABEL_14:
  v23 = type metadata accessor for LemonadePeopleSectionProvider(0);
  (*(*(v23 - 8) + 56))(v11, v20, 1, v23);
  type metadata accessor for PeopleFeedView(0);
  sub_1A44FDD88(v11, v8, sub_1A44FA394);
  sub_1A44FD844(0, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  return sub_1A44FDEC0(v11, sub_1A44FA394);
}

uint64_t sub_1A44FB638@<X0>(uint64_t a1@<X8>)
{
  sub_1A44FCAE4(0);
  v4 = v3;
  v117 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v105 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v110 = (&v97 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v97 - v10;
  sub_1A44FCAB0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v116 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v97 - v14;
  v15 = type metadata accessor for AlbumsFeedView(0);
  v107 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v108 = v16;
  v109 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD844(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v112 = &v97 - v18;
  sub_1A44FCA1C(0);
  v114 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FCB9C(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v106 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - v29;
  sub_1A44FC9E8(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v115 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v33);
  v119 = v1;
  v120 = &v97 - v35;
  v36 = *(v1 + v15[7]);
  if (!v36)
  {
    goto LABEL_10;
  }

  v37 = *(v119 + v15[6]);
  if (!v37)
  {
    goto LABEL_10;
  }

  v99 = v30;
  v100 = v15;
  v113 = v4;
  v101 = a1;
  v38 = *((*MEMORY[0x1E69E7D40] & *v36) + 0x1C8);
  v39 = v36;
  v40 = v37;
  v98 = v38;
  if (v38() != 2)
  {

    a1 = v101;
    v4 = v113;
    v15 = v100;
LABEL_10:
    (*(v26 + 56))(v24, 1, 1, v25, v34);
    sub_1A44FDEC0(v24, sub_1A44FCB9C);
    goto LABEL_11;
  }

  v41 = v40;
  v42 = MEMORY[0x1E69E7D40];
  v43 = (*((*MEMORY[0x1E69E7D40] & *v39) + 0x5E8))();
  v44 = (*((*v42 & *v39) + 0x640))(1, v43);
  v45 = *v42 & *v39;
  if (v44)
  {
    (*((*v42 & *v39) + 0x5F0))(1);
    v45 = *v42 & *v39;
  }

  v46 = (*(v45 + 1368))();
  sub_1A45F1810(v41, v46, v36, v24);
  (*(v26 + 56))(v24, 0, 1, v25);
  v47 = v24;
  v48 = v99;
  v49 = sub_1A44FD754(v47, v99, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
  v50 = (v98)(v49);
  v15 = v100;
  if (v50 == 2)
  {
    sub_1A44FDD88(v48, v106, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
    v51 = v119;
    sub_1A524BAA4();
    v98 = v121;
    v52 = sub_1A52442E4();
    v53 = 1;
    (*(*(v52 - 8) + 56))(v112, 1, 1, v52);
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v54 = *(v51 + v15[8]);
    v55 = v109;
    sub_1A44FDD88(v51, v109, type metadata accessor for AlbumsFeedView);
    v56 = (*(v107 + 80) + 24) & ~*(v107 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v54;
    sub_1A44FD754(v55, v57 + v56, type metadata accessor for AlbumsFeedView);
    v58 = sub_1A3C7A2E0(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider, &unk_1A534FD40);
    v59 = v54;
    LOBYTE(v54) = sub_1A3C30368();
    v60 = sub_1A3C5A374();
    v95 = v58;
    v61 = v102;
    sub_1A437CBD4(v106, v98, v112, 0, v54 & 1, &v121, sub_1A44FCDE4, v57, v102, v60 & 1, v25, v95);
    sub_1A44FDEC0(v99, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v62 = v61;
    v63 = v120;
    sub_1A44FD754(v62, v120, sub_1A44FCA1C);
    (*(v20 + 56))(v63, 0, 1, v114);
    v64 = *(v119 + v15[6]);
    if (!v64)
    {
      a1 = v101;
      goto LABEL_20;
    }

    a1 = v101;
LABEL_14:
    v65 = MEMORY[0x1E69E7D40];
    v66 = *((*MEMORY[0x1E69E7D40] & *v39) + 0x1C8);
    v67 = v64;
    if (v66() == 6)
    {
      v68 = v39;
      v69 = v110;
      sub_1A4244F30(v67, v36, v110);
      v70 = v69;
      v71 = v111;
      v72 = sub_1A44FD754(v70, v111, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
      if ((*((*v65 & *v68) + 0x1C8))(v72) == 6)
      {
        v73 = v104;
        sub_1A44FDD88(v71, v104, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
        sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
        v74 = v119;
        sub_1A524BAA4();
        v75 = v121;
        v76 = sub_1A52442E4();
        v77 = v112;
        (*(*(v76 - 8) + 56))(v112, 1, 1, v76);
        v123 = 0;
        v121 = 0u;
        v122 = 0u;
        v78 = *(v74 + v15[8]);
        v79 = v74;
        v80 = v109;
        sub_1A44FDD88(v79, v109, type metadata accessor for AlbumsFeedView);
        v81 = (*(v107 + 80) + 24) & ~*(v107 + 80);
        v82 = swift_allocObject();
        *(v82 + 16) = v78;
        sub_1A44FD754(v80, v82 + v81, type metadata accessor for AlbumsFeedView);
        v83 = sub_1A3C7A2E0(&qword_1EB136130, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider, &unk_1A53280D0);
        v84 = v78;
        v85 = v103;
        LOBYTE(v78) = sub_1A3C30368();
        v86 = sub_1A3C5A374();
        v96 = v83;
        v87 = v105;
        sub_1A437CBD4(v73, v75, v77, 0, v78 & 1, &v121, sub_1A44FCBD0, v82, v105, v86 & 1, v85, v96);
        sub_1A44FDEC0(v71, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
        sub_1A44FD754(v87, v118, sub_1A44FCAE4);
        v53 = 0;
LABEL_20:
        v4 = v113;
        goto LABEL_21;
      }

      sub_1A44FDEC0(v71, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
    }

    else
    {
    }

    v53 = 1;
    goto LABEL_20;
  }

  sub_1A44FDEC0(v48, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
  a1 = v101;
  v4 = v113;
LABEL_11:
  v53 = 1;
  (*(v20 + 56))(v120, 1, 1, v114);
  if (v36)
  {
    v64 = *(v119 + v15[6]);
    if (v64)
    {
      v113 = v4;
      v39 = v36;
      goto LABEL_14;
    }
  }

LABEL_21:
  v88 = v118;
  (*(v117 + 56))(v118, v53, 1, v4);
  v89 = v120;
  v90 = v115;
  sub_1A44FDD88(v120, v115, sub_1A44FC9E8);
  v91 = v116;
  sub_1A44FDD88(v88, v116, sub_1A44FCAB0);
  sub_1A44FDD88(v90, a1, sub_1A44FC9E8);
  sub_1A44FC978(0, v92);
  sub_1A44FDD88(v91, a1 + *(v93 + 48), sub_1A44FCAB0);
  sub_1A44FDEC0(v88, sub_1A44FCAB0);
  sub_1A44FDEC0(v89, sub_1A44FC9E8);
  sub_1A44FDEC0(v91, sub_1A44FCAB0);
  return sub_1A44FDEC0(v90, sub_1A44FC9E8);
}

uint64_t sub_1A44FC478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A44FD6E8(0, &qword_1EB13CB70, sub_1A44FC888, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  v7 = *(v6 + 44);
  v14 = *(v3 + *(a1 + 20));
  v13 = 3;
  v8 = type metadata accessor for LemonadePickerRootViewModel(0);
  sub_1A44FC944(0);
  v10 = v9;
  v11 = sub_1A3C7A2E0(&qword_1EB13CBB0, sub_1A44FC944, MEMORY[0x1E6981F48]);

  return LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v14, &v13, sub_1A44FCB78, v8, v10, &off_1F1731E50, v11, (a2 + v7));
}

uint64_t sub_1A44FC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A44FD6E8(0, &qword_1EB13CB58, sub_1A44FC6BC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  v7 = *(v6 + 44);
  v12 = *(v3 + *(a1 + 20));
  v11 = 3;
  v8 = type metadata accessor for LemonadePickerRootViewModel(0);
  v9 = sub_1A44FC73C();

  return LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v12, &v11, sub_1A44FC790, v8, &type metadata for LemonadePickerShelvesStack, &off_1F1731E50, v9, (a2 + v7));
}

void sub_1A44FC6BC(uint64_t a1)
{
  if (!qword_1EB13CB60)
  {
    v4[0] = type metadata accessor for LemonadePickerRootViewModel(255);
    v4[1] = &type metadata for LemonadePickerShelvesStack;
    v4[2] = &off_1F1731E50;
    v4[3] = sub_1A44FC73C();
    v2 = type metadata accessor for LemonadeSpecsProviderView(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13CB60);
    }
  }
}

unint64_t sub_1A44FC73C()
{
  result = qword_1EB13CB68;
  if (!qword_1EB13CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CB68);
  }

  return result;
}

double sub_1A44FC790@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*(v3 + *(type metadata accessor for CollectionsView(0) + 20)) + 32);
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);

  sub_1A524BAA4();
  v5 = sub_1A40FA400();
  sub_1A40F9E0C(v4, *&v12[0], v5, v6 & 1, v12);
  v7 = v12[7];
  *(a1 + 96) = v12[6];
  *(a1 + 112) = v7;
  *(a1 + 128) = v12[8];
  *(a1 + 144) = v13;
  v8 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v8;
  v9 = v12[5];
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v9;
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v11;
  return result;
}

void sub_1A44FC888(uint64_t a1)
{
  if (!qword_1EB13CB78)
  {
    v2 = type metadata accessor for LemonadePickerRootViewModel(255);
    sub_1A44FC944(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = &off_1F1731E50;
    v6[3] = sub_1A3C7A2E0(&qword_1EB13CBB0, sub_1A44FC944, MEMORY[0x1E6981F48]);
    v4 = type metadata accessor for LemonadeSpecsProviderView(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB13CB78);
    }
  }
}

void sub_1A44FC978(uint64_t a1, double a2)
{
  if (!qword_1EB13CB88)
  {
    sub_1A44FC9E8(255);
    sub_1A44FCAB0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CB88);
    }
  }
}

void sub_1A44FCA1C(uint64_t a1)
{
  if (!qword_1EB13CB98)
  {
    v2 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(255);
    v3 = sub_1A3C7A2E0(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider, &unk_1A534FD40);
    v5 = type metadata accessor for LemonadeFeedContents(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13CB98);
    }
  }
}

void sub_1A44FCAE4(uint64_t a1)
{
  if (!qword_1EB13CBA8)
  {
    v2 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(255);
    v3 = sub_1A3C7A2E0(&qword_1EB136130, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider, &unk_1A53280D0);
    v5 = type metadata accessor for LemonadeFeedContents(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13CBA8);
    }
  }
}

uint64_t objectdestroyTm_58()
{
  v1 = type metadata accessor for AlbumsFeedView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[10];
  sub_1A44F9F70(0);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1A44FCE08(void *a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  type metadata accessor for AlbumsFeedView(0);
  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = v10;
    PHObject.itemID.getter();
    sub_1A44FA2C8(0, a2, a3, a4, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A44FCF94(a5, a2, a3, a4);
    sub_1A5246424();
  }

  return 0;
}

uint64_t sub_1A44FCF94(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A44FA2C8(255, a2, a3, a4, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A44FCFF8(uint64_t a1)
{
  if (!qword_1EB13CBC0)
  {
    sub_1A44FD0A0(255);
    sub_1A44FD63C(&qword_1EB13CBD8, sub_1A44FD0A0, sub_1A44FD168, MEMORY[0x1E6982090]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CBC0);
    }
  }
}

void sub_1A44FD0D4(uint64_t a1)
{
  if (!qword_1EB13CBD0)
  {
    v2 = type metadata accessor for LemonadePeopleSectionProvider(255);
    v3 = sub_1A3C7A2E0(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider, &unk_1A53285E8);
    v5 = type metadata accessor for LemonadeFeedContents(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13CBD0);
    }
  }
}

void sub_1A44FD19C(uint64_t a1)
{
  if (!qword_1EB13CBE8)
  {
    sub_1A44FCFF8(255);
    sub_1A44FA2C8(255, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
    sub_1A3C7A2E0(&qword_1EB13CBF0, sub_1A44FCFF8, MEMORY[0x1E69817F8]);
    sub_1A44FD29C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CBE8);
    }
  }
}

unint64_t sub_1A44FD29C()
{
  result = qword_1EB126BD8;
  if (!qword_1EB126BD8)
  {
    sub_1A44FA2C8(255, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
    sub_1A44FD340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126BD8);
  }

  return result;
}

unint64_t sub_1A44FD340()
{
  result = qword_1EB126BC8;
  if (!qword_1EB126BC8)
  {
    sub_1A3C52C70(255, &qword_1EB126BF0, 0x1E69789A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126BC8);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  v1 = (type metadata accessor for PeopleFeedView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1A3D35BAC(*(v2 + 8), *(v2 + 16));
  sub_1A3D35BAC(*(v2 + 24), *(v2 + 32));
  v3 = (v2 + v1[9]);
  v4 = type metadata accessor for LemonadePeopleSectionProvider(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = v3 + *(v4 + 40);
    type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1A3D6D890(*v5, *(v5 + 1), v5[16]);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1A3C4208C(*(v5 + 3), *(v5 + 4), v5[40]);
      sub_1A3C47A98(0);
      v8 = *(v7 + 64);
      v9 = sub_1A5242C84();
      (*(*(v9 - 8) + 8))(&v5[v8], v9);
    }

    else
    {
      if (*(v5 + 5) >= 3uLL)
      {
      }

      if (*(v5 + 7) >= 3uLL)
      {
      }

      sub_1A3C4208C(*(v5 + 9), *(v5 + 10), v5[88]);
    }
  }

  sub_1A44FD844(0, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);

  return swift_deallocObject();
}

uint64_t sub_1A44FD63C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

void sub_1A44FD6E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

uint64_t sub_1A44FD754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44FD7BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePickerRootView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A44FDBF4(0);
  return sub_1A44F8280(v1 + v4, a1 + *(v5 + 44));
}

void sub_1A44FD844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A44FD8B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadePickerRootView(0);

  sub_1A44F98F4(a1, a2);
}

uint64_t objectdestroy_69Tm()
{
  v1 = type metadata accessor for LemonadePickerRootView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A3D35BAC(*v2, *(v2 + 8));
  sub_1A3D35BAC(*(v2 + 16), *(v2 + 24));
  sub_1A3D35BAC(*(v2 + 32), *(v2 + 40));
  sub_1A3DD15BC(*(v2 + 48), *(v2 + 56));
  v3 = v1[8];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[11];
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  v9 = v1[12];
  sub_1A44F9F70(0);
  (*(*(v10 - 8) + 8))(v2 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1A44FDB94()
{
  v1 = *(type metadata accessor for LemonadePickerRootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A44F9674(v2);
}

void sub_1A44FDBF4(uint64_t a1)
{
  if (!qword_1EB13CC08)
  {
    sub_1A44FDCE0(255, &qword_1EB13CAA0, MEMORY[0x1E697F960]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CC08);
    }
  }
}

void sub_1A44FDC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PeopleFeedView(255);
    v7 = a3(a1, v6, MEMORY[0x1E6981E70]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A44FDCE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A44F6254(255, &qword_1EB13CAA8, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A44FDC78(255, &qword_1EB13CAB0, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A44FDD88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44FDDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A44FDE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A44FDEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44FDF20(uint64_t a1)
{
  if (!qword_1EB13CC30)
  {
    sub_1A44FC6BC(255);
    sub_1A3C7A2E0(&qword_1EB13CC38, sub_1A44FC6BC, &protocol conformance descriptor for LemonadeSpecsProviderView<A, B>);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CC30);
    }
  }
}

void sub_1A44FDFB4(uint64_t a1)
{
  if (!qword_1EB13CC48)
  {
    sub_1A44FC888(255);
    sub_1A3C7A2E0(&qword_1EB13CC50, sub_1A44FC888, &protocol conformance descriptor for LemonadeSpecsProviderView<A, B>);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CC48);
    }
  }
}

void PXStoryTimeline.enumerateClips(in:rect:using:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v34 = 0;
  if (a1[6])
  {
    [v5 timeRange];
    v14 = aBlock;
    LODWORD(v13) = v29;
    v15 = v30;
    v16 = v31;
    LODWORD(v18) = v32;
    LODWORD(v25) = HIDWORD(v32);
    LODWORD(v26) = HIDWORD(v29);
    v17 = v33;
  }

  else
  {
    v25 = HIDWORD(v18);
    v26 = HIDWORD(v13);
  }

  v27 = v17;
  if (*(a2 + 32))
  {
    [v5 size];
    v11 = v19;
    v12 = v20;
    v9 = 0.0;
    v10 = 0.0;
  }

  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = &v34;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1A44FE290;
  *(v22 + 24) = v21;
  v32 = sub_1A44FE38C;
  v33 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1A44FE3B4;
  v31 = &block_descriptor_206;
  v23 = _Block_copy(&aBlock);

  aBlock = v14;
  v29 = __PAIR64__(v26, v13);
  v30 = v15;
  v31 = v16;
  v32 = __PAIR64__(v25, v18);
  v33 = v27;
  [v5 enumerateClipsInTimeRange:&aBlock rect:v23 usingBlock:{v9, v10, v11, v12}];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1A44FE290(uint64_t result, _OWORD *a2, uint64_t a3, char *__src, _BYTE *a5)
{
  if (result < 0)
  {
LABEL_9:
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = 0;
    v11 = *(v5 + 16);
    v12 = (a3 + 16);
    v13 = *(v5 + 32);
    while (v9 != v10)
    {
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_9;
      }

      v14 = a2[1];
      v19[0] = *a2;
      v19[1] = v14;
      v19[2] = a2[2];
      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      v18 = v12[1];
      v12 += 4;
      memcpy(__dst, __src, sizeof(__dst));
      result = v11(v19, __dst, v13, v15, v16, v17, v18);
      __src += 768;
      a2 += 3;
      ++v10;
      if (*v13 == 1)
      {
        *a5 = 1;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1A44FE3F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 768))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE418(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 760) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 768) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A44FE570(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE590(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 120) = v3;
  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1A44FE630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 216))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 216) = v3;
  return result;
}

uint64_t sub_1A44FE6D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE6F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 112) = v3;
  return result;
}

uint64_t sub_1A44FE7F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE814(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_1A44FE9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A524C594() & 1;
}

uint64_t sub_1A44FEA48(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A524C4B4();
  if (*(v2 + *(a2 + 44)))
  {
    MEMORY[0x1A590A010]();
  }

  result = *(v2 + *(a2 + 48));
  if (result)
  {
    return MEMORY[0x1A590A010]();
  }

  return result;
}

uint64_t sub_1A44FEB14(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A44FEA48(v3, a1);
  return sub_1A524ECE4();
}

int *sub_1A44FEB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  result = type metadata accessor for LemonadeConcatenatedUIFeedSectionProvider.AdapterListManagerOptions(0, a6, a7, a8);
  *(a9 + result[11]) = a2;
  *(a9 + result[12]) = a3;
  v20 = (a9 + result[13]);
  *v20 = a4;
  v20[1] = a5;
  return result;
}

uint64_t sub_1A44FEC4C(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A44FEA48(v4, a2);
  return sub_1A524ECE4();
}

double sub_1A44FEE6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(*(v5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = &v18 - v10;
  (*(v7 + 88))(v6, v7, v9);
  v12 = *(v2 + *(a1 + 44));
  v13 = *(v2 + *(a1 + 48));
  v14 = (v2 + *(a1 + 52));
  v15 = *v14;
  v16 = v14[1];
  sub_1A44FEB5C(v11, v12, v13, *v14, v16, v6, v5, *(a1 + 32), a2);

  return sub_1A3C66EE8(v15, v16);
}

void sub_1A44FEF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + *(type metadata accessor for LemonadeConcatenatedUIFeedSectionProvider.AdapterListManagerOptions(0, a3, a4, a5) + 52));
  if (*v9)
  {
    (*v9)(a1, a2);
  }

  (*(*(*(a4 + 8) + 8) + 96))(a1, a2, a3, *(*(a4 + 8) + 8));
  swift_getAssociatedTypeWitness();
  sub_1A3C413B4(255);
  swift_getAssociatedConformanceWitness();
  sub_1A3C50E18(&qword_1EB128D30, sub_1A3C413B4, off_1E7721080);
  sub_1A5246004();
}

uint64_t sub_1A44FF258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(*(*(a2 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v6 + 224))(a1, v5, v6, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_1A44FF3E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v4 = *a1;
  sub_1A44FFE88();
  v6 = v5;
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(a2 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = v6;
  v10 = sub_1A5249754();
  v78 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v67 - v11;
  v69 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v67 - v16;
  v17 = *(v4 + *MEMORY[0x1E69C2290]);
  v74 = *(v17 + 16);
  v18 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v67 - v23;
  v24 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67 - v26;
  v73 = v28;
  v80 = sub_1A5249754();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v67 - v29;
  sub_1A5242E04();
  v30 = (*(v24 + 88))(v27, v17);
  if (v30 == *off_1E7720FE8)
  {
    (*(v24 + 96))(v27, v17);
    v31 = v72;
    v32 = v27;
    v33 = v74;
    (*(v18 + 32))(v72, v32, v74);
    swift_getAssociatedTypeWitness();
    (*(v18 + 16))(v21, v31, v33);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    (*(v8 + 104))();
    swift_unknownObjectRelease();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = v69;
    v36 = *(v69 + 16);
    v37 = v68;
    v36(v68, v14, AssociatedTypeWitness);
    v38 = *(v35 + 8);
    v38(v14, AssociatedTypeWitness);
    v36(v14, v37, AssociatedTypeWitness);
    v91 = MEMORY[0x1E6981910];
    v92 = MEMORY[0x1E6981900];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v75;
    sub_1A3DF4798(v14, AssociatedTypeWitness, v76, AssociatedConformanceWitness, OpaqueTypeConformance2);
    v82 = AssociatedConformanceWitness;
    v83 = OpaqueTypeConformance2;
    v41 = v73;
    WitnessTable = swift_getWitnessTable();
    v43 = v77;
    sub_1A3DF4798(v40, v41, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E6982070]);
    (*(v78 + 8))(v40, v41);
    v38(v14, AssociatedTypeWitness);
    v38(v37, AssociatedTypeWitness);
    (*(v18 + 8))(v72, v74);
    v44 = MEMORY[0x1E6981910];
    v45 = MEMORY[0x1E6981900];
  }

  else
  {
    v74 = AssociatedTypeWitness;
    v45 = MEMORY[0x1E6981900];
    v46 = v73;
    if (v30 != *off_1E7720FF8 && v30 != *off_1E7720FF0)
    {
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    (*(v24 + 96))(v27, v17);
    v48 = *v27;
    v49 = *(*v27 + 64);
    sub_1A5242DF4();
    v49(&v91, v90[0]);
    v50 = __swift_project_boxed_opaque_existential_1(&v91, v93);
    v51 = MEMORY[0x1EEE9AC00](v50);
    (*(v53 + 16))(&v67 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
    v90[5] = sub_1A524B8E4();
    v90[3] = type metadata accessor for PlaceholderUIItem(0, v54);
    v90[4] = sub_1A3C50E18(&qword_1EB125A78, type metadata accessor for PlaceholderUIItem, &unk_1A53686AC);
    v90[0] = v48;
    v55 = v70;
    v44 = MEMORY[0x1E6981910];
    sub_1A524A554();

    __swift_destroy_boxed_opaque_existential_0(v90);
    __swift_destroy_boxed_opaque_existential_0(&v91);
    v56 = v74;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v91 = v44;
    v92 = v45;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = v75;
    v59 = v56;
    v60 = v76;
    sub_1A3DF4890(v55, v59, v76, AssociatedConformanceWitness, v57);
    v88 = AssociatedConformanceWitness;
    v89 = v57;
    v61 = swift_getWitnessTable();
    v43 = v77;
    sub_1A3DF4798(v58, v46, MEMORY[0x1E69E73E0], v61, MEMORY[0x1E6982070]);
    (*(v78 + 8))(v58, v46);
    (*(v71 + 8))(v55, v60);
  }

  v62 = MEMORY[0x1E6982070];
  v91 = v44;
  v92 = v45;
  v63 = swift_getOpaqueTypeConformance2();
  v86 = AssociatedConformanceWitness;
  v87 = v63;
  v84 = swift_getWitnessTable();
  v85 = v62;
  v64 = v80;
  swift_getWitnessTable();
  v65 = v79;
  (*(v79 + 16))(v81, v43, v64);
  return (*(v65 + 8))(v43, v64);
}

void sub_1A44FFE88()
{
  if (!qword_1EB122000)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122000);
    }
  }
}

void sub_1A44FFF08(uint64_t a1, void *a2)
{
  v11[7] = a1;
  v11[4] = *(*(*a2 + *off_1E77210A0) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11[2] = v11 - v2;
  v4 = *(v3 + 16);
  v5 = *(*(*(v3 + 24) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v11[0] = v5;
  v11[1] = v4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PlaceholderUIItem(255, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  v11[13] = AssociatedTypeWitness;
  v11[14] = v8;
  v11[15] = v8;
  v11[16] = AssociatedConformanceWitness;
  v11[17] = v10;
  v11[18] = v10;
  sub_1A5245A24();
}

uint64_t sub_1A45004D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v8 = *(a4 + 16);
  v9 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v10 = sub_1A524DF24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  (*(v9 + 136))(a1, a2, a3, v8, v9, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  (*(v11 + 16))(v17, v13, v10);
  v19 = *(v11 + 8);
  v19(v13, v10);
  v20 = v24;
  MEMORY[0x1A5904CD0](v17, v10, WitnessTable);
  v19(v17, v10);
  v25 = v10;
  v26 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  return (*(*(OpaqueTypeMetadata2 - 8) + 56))(v20, 0, 1, OpaqueTypeMetadata2);
}

uint64_t sub_1A4500728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v6 + 152))(a1, v5, v6, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_1A45008E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v6 + 168))(a1, v5, v6, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

void sub_1A4500AA4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = AssociatedTypeWitness;
  v5 = type metadata accessor for PlaceholderUIItem(255, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A4500DA4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = AssociatedTypeWitness;
  v5 = type metadata accessor for PlaceholderUIItem(255, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A45010A4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = AssociatedTypeWitness;
  v5 = type metadata accessor for PlaceholderUIItem(255, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A45013A4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = AssociatedTypeWitness;
  v5 = type metadata accessor for PlaceholderUIItem(255, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A45016A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[7] = a2;
  v3 = *(a3 + 16);
  v4 = *(*(*(a3 + 24) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v12[4] = v4;
  v12[5] = v3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[10] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v6);
  v12[9] = v12 - v7;
  v9 = type metadata accessor for PlaceholderUIItem(255, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  v12[11] = AssociatedTypeWitness;
  v12[12] = AssociatedTypeWitness;
  v12[13] = v9;
  v12[14] = v9;
  v12[15] = AssociatedConformanceWitness;
  v12[16] = v11;
  v12[17] = v11;
  sub_1A5245A24();
}

void sub_1A4501AC0(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = AssociatedTypeWitness;
  v5 = type metadata accessor for PlaceholderUIItem(255, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A4501DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = AssociatedTypeWitness;
  v7 = type metadata accessor for PlaceholderUIItem(255, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A45020C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v10[4] = a2;
  v10[2] = a1;
  v10[3] = a4;
  v10[0] = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v10[0]);
  v10[1] = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = type metadata accessor for PlaceholderUIItem(255, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  v10[6] = AssociatedTypeWitness;
  v10[7] = v7;
  v10[8] = v7;
  v10[9] = AssociatedConformanceWitness;
  v10[10] = v9;
  v10[11] = v9;
  sub_1A5245A24();
}

void sub_1A4502554(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a3;
  v6 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = AssociatedTypeWitness;
  v9 = type metadata accessor for PlaceholderUIItem(255, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

uint64_t sub_1A45028C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + *MEMORY[0x1E69C2290]);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1A5242E04();
  v16 = (*(v12 + 88))(v15, v4);
  if (v16 == *off_1E7720FE8)
  {
    (*(v12 + 96))(v15, v4);
    (*(v6 + 32))(v11, v15, v5);
    v17 = *(*(a3 + 8) + 8);
    swift_getAssociatedTypeWitness();
    (*(v6 + 16))(v8, v11, v5);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    v18 = (*(v17 + 168))();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  if (v16 == *off_1E7720FF8)
  {
    (*(v12 + 96))(v15, v4);
    if (!*(*v15 + 48))
    {

      return 0x646E6570657270;
    }

LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v16 == *off_1E7720FF0)
  {
    (*(v12 + 96))(v15, v4);
    if (!*(*v15 + 48))
    {

      return 0x646E65707061;
    }

    goto LABEL_8;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}