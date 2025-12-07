unint64_t sub_1A44B6660()
{
  result = qword_1EB125340;
  if (!qword_1EB125340)
  {
    sub_1A44B69C0(255, &qword_1EB125338, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for GenerativeStoryMovieBackgroundView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125340);
  }

  return result;
}

unint64_t sub_1A44B66E4()
{
  result = qword_1EB122838;
  if (!qword_1EB122838)
  {
    sub_1A44B544C(255);
    sub_1A44B68C4(&qword_1EB1250B0, type metadata accessor for GenerativeStoryIntelligenceBackgroundView, &unk_1A532A9A0);
    sub_1A44B6348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122838);
  }

  return result;
}

void sub_1A44B6794(uint64_t a1)
{
  if (!qword_1EB13C1F8)
  {
    sub_1A44B5294(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C1F8);
    }
  }
}

uint64_t sub_1A44B67FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44B6864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44B68C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A44B690C(uint64_t a1)
{
  if (!qword_1EB13C208)
  {
    sub_1A44B69C0(255, &qword_1EB13C210, MEMORY[0x1E697E790], MEMORY[0x1E697E788], MEMORY[0x1E69809C0]);
    sub_1A3D6F4A4();
    sub_1A44B6A14();
    v1 = sub_1A5247D54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C208);
    }
  }
}

void sub_1A44B69C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A44B6A14()
{
  result = qword_1EB13C218;
  if (!qword_1EB13C218)
  {
    sub_1A44B69C0(255, &qword_1EB13C210, MEMORY[0x1E697E790], MEMORY[0x1E697E788], MEMORY[0x1E69809C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C218);
  }

  return result;
}

uint64_t sub_1A44B6AA8(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A44B6AEC(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1 | 0x8000000000000000;
  *(result + 24) = a2;
  return result;
}

uint64_t PeopleUnifiedItem.selectionIdentifier.getter()
{
  v1 = *((*(v0 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = [v1 localIdentifier];

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A44B6BAC(void *a1, char a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    return sub_1A44B793C(v5, a2 & 1);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v8 = result;
      v9 = a1;
      return sub_1A44B77D4(v8, a2 & 1);
    }
  }

  return result;
}

uint64_t sub_1A44B6C3C(uint64_t a1, char a2)
{
  sub_1A3C341C8(a1, v7);
  sub_1A3E4C7D0();
  sub_1A3C379F4(0, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8);
  if (swift_dynamicCast())
  {
    v3 = swift_allocObject();
    v4 = v3;
    *(v3 + 16) = v6 | 0x8000000000000000;
  }

  else
  {
    sub_1A3C379F4(0, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980);
    if (!swift_dynamicCast())
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = swift_allocObject();
    v4 = v3;
    *(v3 + 16) = v6;
  }

  *(v3 + 24) = a2 & 1;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

id PeopleUnifiedItem.id.getter()
{
  v1 = *((*(v0 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = PHObject.itemID.getter();

  return v2;
}

uint64_t PeopleUnifiedItem.name.getter()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    v3 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 48);

    if ((sub_1A3D61684(3, v4) & 1) == 0)
    {
      v7 = [*(v3 + 16) px_title];
      v5 = sub_1A524C674();

      return v5;
    }

    v2 = PhotoKitItem<>.title.getter();
  }

  else
  {

    v2 = PhotoKitItem<>.name.getter();
  }

  v5 = v2;

  return v5;
}

uint64_t PeopleUnifiedItem.collectionSymbolName.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0x322E6E6F73726570;
  }

  v1 = PhotoKitItem<>.isPet.getter();

  if (v1)
  {
    return 0x746E697270776170;
  }

  else
  {
    return 0x662E6E6F73726570;
  }
}

uint64_t PeopleUnifiedItem.description.getter()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53D9B10);
  sub_1A524E624();
  return 0;
}

uint64_t PeopleUnifiedItem.diagnosticDescription.getter()
{
  MEMORY[0x1A5907B60](0x49676E696B636162, 0xED0000203A6D6574);
  sub_1A524E624();
  return 0;
}

uint64_t PeopleUnifiedItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1A44B7084@<X0>(void *a1@<X8>)
{
  result = *((*(*v1 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  *a1 = result;
  return result;
}

uint64_t sub_1A44B70BC()
{
  v1 = *((*(*v0 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = [v1 localIdentifier];

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A44B7134()
{
  if ((*(*v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0x322E6E6F73726570;
  }

  v1 = PhotoKitItem<>.isPet.getter();

  if (v1)
  {
    return 0x746E697270776170;
  }

  else
  {
    return 0x662E6E6F73726570;
  }
}

uint64_t sub_1A44B71DC()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53D9B10);
  sub_1A524E624();
  return 0;
}

uint64_t sub_1A44B7270()
{
  MEMORY[0x1A5907B60](0x49676E696B636162, 0xED0000203A6D6574);
  sub_1A524E624();
  return 0;
}

void sub_1A44B72F8()
{
  sub_1A44B7C90(&qword_1EB12A450, &protocol conformance descriptor for PeopleUnifiedItem);

    ;
  }
}

void sub_1A44B7354(void *a1@<X8>)
{
  v3 = *((*(*v1 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v4 = PHObject.itemID.getter();

  *a1 = v4;
}

uint64_t PeopleUnifiedItem.isFavorite.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = PhotoKitItem<>.isFavorite.getter(&protocol witness table for PHPerson);

  return v1 & 1;
}

Swift::Void __swiftcall PeopleUnifiedItem.setIsFavorite(_:undoManager:)(Swift::Bool _, NSUndoManager_optional undoManager)
{
  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    isa = undoManager.value.super.isa;

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(_, isa, &protocol witness table for PHPerson);
  }
}

uint64_t PeopleUnifiedItem.isPet.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = PhotoKitItem<>.isPet.getter();

  return v1 & 1;
}

uint64_t sub_1A44B753C()
{
  if ((*(*v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = PhotoKitItem<>.isPet.getter();

  return v1 & 1;
}

uint64_t sub_1A44B7588()
{
  if ((*(*v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = PhotoKitItem<>.isFavorite.getter(&protocol witness table for PHPerson);

  return v1 & 1;
}

void sub_1A44B75DC(char a1, uint64_t a2)
{
  if ((*(*v2 + 16) & 0x8000000000000000) != 0)
  {
    sub_1A524E6E4();
    __break(1u);
  }

  else
  {

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(a1 & 1, a2, &protocol witness table for PHPerson);
  }
}

id PXPeopleUnifiedItemFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXPeopleUnifiedItemFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPeopleUnifiedItemFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PXPeopleUnifiedItemFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXPeopleUnifiedItemFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A44B77D4(uint64_t a1, char a2)
{
  sub_1A3C379F4(0, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980);
  v25[0] = 2;
  sub_1A3C6C180(&v23);
  v21 = v23;
  v22 = v24;
  v4 = sub_1A42011B0();
  sub_1A3C6C18C(&v19);
  v17 = v19;
  v18 = v20;
  v5 = sub_1A3C5A374();
  v6 = sub_1A3C30368();
  v7 = sub_1A3C5A374();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v21, 0, v4, 0, 1, &v17, v5 & 1, v25, v16, v6, v7 & 1, v8 & 1, v9 & 1, 0);
  v10 = sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  v12 = sub_1A3F6298C(v10, v11);
  PhotoKitItem.__allocating_init(value:options:metadata:)(a1, v16, v12);
  v14 = v13;
  type metadata accessor for PeopleUnifiedItem();
  result = swift_allocObject();
  *(result + 16) = v14;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A44B793C(uint64_t a1, char a2)
{
  sub_1A3C379F4(0, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8);
  v25[0] = 2;
  sub_1A3C6C180(&v23);
  v21 = v23;
  v22 = v24;
  v4 = sub_1A42011B0();
  sub_1A3C6C18C(&v19);
  v17 = v19;
  v18 = v20;
  v5 = sub_1A3C5A374();
  v6 = sub_1A3C30368();
  v7 = sub_1A3C5A374();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v21, 0, v4, 0, 1, &v17, v5 & 1, v25, v16, v6, v7 & 1, v8 & 1, v9 & 1, 0);
  v10 = sub_1A3C52C70(0, &qword_1EB126C28, 0x1E6978AD8);
  v12 = sub_1A3F6298C(v10, v11);
  PhotoKitItem.__allocating_init(value:options:metadata:)(a1, v16, v12);
  v14 = v13;
  type metadata accessor for PeopleUnifiedItem();
  result = swift_allocObject();
  *(result + 16) = v14 | 0x8000000000000000;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A44B7C90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PeopleUnifiedItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PXMusicCurator.audioAssetFetchResultForExport(forAdamID:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A44B7D0C, 0, 0);
}

uint64_t sub_1A44B7D0C()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  sub_1A44B807C(0);
  *v4 = v0;
  v4[1] = sub_1A3D93F08;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000037, 0x80000001A53D9C30, sub_1A44B8070, v2, v5);
}

void sub_1A44B7E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A44B8138(0);
  MEMORY[0x1EEE9AC00](v6);
  [objc_msgSend(objc_allocWithZone(PXMusicCuratorAudioAssetRequestOptions) init)];
  objc_opt_self();
  sub_1A3D9E6B8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44B807C(uint64_t a1)
{
  if (!qword_1EB13C220)
  {
    sub_1A44B80D4();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C220);
    }
  }
}

unint64_t sub_1A44B80D4()
{
  result = qword_1EB13C228;
  if (!qword_1EB13C228)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13C228);
  }

  return result;
}

void sub_1A44B8138(uint64_t a1)
{
  if (!qword_1EB13C230)
  {
    sub_1A44B807C(255);
    sub_1A3DBD9A0();
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C230);
    }
  }
}

uint64_t sub_1A44B81A8(void *a1, void *a2)
{
  sub_1A44B8138(0);
  if (a2)
  {
    v3 = a2;
    return sub_1A524CBD4();
  }

  else
  {
    swift_unknownObjectRetain();
    return sub_1A524CBE4();
  }
}

id sub_1A44B8288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_1A4126630(a1, a5);
  v8 = type metadata accessor for SharedAlbumAddToView(0);
  v9 = (a5 + v8[5]);
  *v9 = a2;
  v9[1] = a3;
  v10 = (a5 + v8[6]);
  type metadata accessor for SharedAlbumActionViewModel(0);
  sub_1A524B694();
  *v10 = v13;
  v10[1] = v14;
  v11 = v8[7];
  result = [objc_allocWithZone(MEMORY[0x1E697B678]) init];
  *(a5 + v11) = result;
  return result;
}

id sub_1A44B8590(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXSharedAlbumAddToViewFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A44B85C4(char *a2@<X8>)
{
  v3 = sub_1A524E824();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1A44B8624(uint64_t *a2@<X8>)
{
  v20 = a2;
  v2 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A44C2B68(0, &qword_1EB132C88, sub_1A4126ED4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - v5;
  sub_1A4126DE0(0);
  v15[2] = v7;
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  sub_1A4126DAC(0, v8);
  v15[1] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v19 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v18 = sub_1A524B3D4();
  v17 = sub_1A5248874();
  v16 = sub_1A524A064();
  *v6 = sub_1A5249574();
  *(v6 + 1) = 0x4034000000000000;
  v6[16] = 0;
  sub_1A4129BE8(0);
  sub_1A44B8AE8(&v6[*(v13 + 44)], v14);
}

void sub_1A44B8AE8(uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_1A4127004(0, a3);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34[-v8];
  type metadata accessor for SharedAlbumActionProgressView(0);
  v10 = sub_1A524C634();
  v11 = PXLocalizedSharedAlbumsString(v10);

  v12 = sub_1A524C674();
  v14 = v13;

  v37 = v12;
  v38 = v14;
  sub_1A3D5F9DC();
  v15 = sub_1A524A464();
  v17 = v16;
  v19 = v18;
  sub_1A524A184();
  v20 = sub_1A524A344();
  v22 = v21;
  v35 = v23;
  v25 = v24;
  sub_1A3E04DF4(v15, v17, v19 & 1);

  sub_1A5248074();
  v26 = &v9[*(v5 + 44)];
  sub_1A3E74608(0);
  v28 = *(v27 + 28);
  v29 = *MEMORY[0x1E697DC10];
  v30 = sub_1A5247E14();
  (*(*(v30 - 8) + 104))(v26 + v28, v29, v30);
  *v26 = swift_getKeyPath();
  v31 = v36;
  sub_1A44C800C(v9, v36, sub_1A4127004);
  *a2 = v20;
  *(a2 + 8) = v22;
  LOBYTE(v26) = v35 & 1;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v25;
  sub_1A4126F9C(0, v32);
  sub_1A44C800C(v31, a2 + *(v33 + 48), sub_1A4127004);
  sub_1A3E75E68(v20, v22, v26);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44B8DAC@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A44C24C0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SharedAlbumActionProgressView(0);
  *(a2 + *(result + 20)) = a1 & 1;
  return result;
}

uint64_t sub_1A44B8F40@<X0>(unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_1A44C24C0(0, a2, a3, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A44B8FBC()
{
  type metadata accessor for HostingViewControllerProvider(0);
  sub_1A44C2BD4(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider, &protocol conformance descriptor for HostingViewControllerProvider);

  return sub_1A5248BB4();
}

uint64_t SharedAlbumAddToView.viewModel.getter()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

void *sub_1A44B90B4@<X0>(void *a2@<X8>)
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a2 = v4;
  return result;
}

uint64_t sub_1A44B914C(void **a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v3 = v2;
  return sub_1A524B6B4();
}

uint64_t SharedAlbumAddToView.viewModel.setter(uint64_t a1)
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void (*SharedAlbumAddToView.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = v1 + *(type metadata accessor for SharedAlbumAddToView(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v8;
  v9 = v7;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedAlbumAddToView.$viewModel.getter()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

void SharedAlbumAddToView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for SharedAlbumAddToView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A44C2C1C(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44C3490(0);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C3578(0);
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_1A524BC74();
  v9[1] = v16;
  sub_1A44C3814(0);
  sub_1A44B9938(v2, (v9 + *(v17 + 44)), v18);
  v47 = type metadata accessor for SharedAlbumAddToView;
  sub_1A44C800C(v2, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumAddToView);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v46 = type metadata accessor for SharedAlbumAddToView;
  sub_1A44C7FA4(&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SharedAlbumAddToView);
  sub_1A44C2BD4(&qword_1EB13C2D8, sub_1A44C2C1C, MEMORY[0x1E6981880]);
  sub_1A524AA84();

  sub_1A44C3CF4(v9, sub_1A44C2C1C);
  v21 = sub_1A524BC74();
  v23 = v22;
  v24 = &v12[v52[9]];
  sub_1A44BB014(v2, v24);
  sub_1A3D9D48C(0);
  v26 = (v24 + *(v25 + 36));
  *v26 = v21;
  v26[1] = v23;
  v27 = (v2 + *(v4 + 32));
  v29 = *v27;
  v28 = v27[1];
  v53 = v29;
  v54 = v28;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v30 = sub_1A524B6A4();
  v31 = v57;
  v32 = (*((*MEMORY[0x1E69E7D40] & *v57) + 0x550))(v30);

  v53 = v32;
  sub_1A44C800C(v2, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
  v33 = swift_allocObject();
  sub_1A44C7FA4(&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v19, v46);
  sub_1A4034670(0);
  v35 = v34;
  v36 = sub_1A44C3660();
  v37 = sub_1A44C3770(&qword_1EB13C2F0, sub_1A4034670, sub_1A44C37E0, MEMORY[0x1E69E7C80]);
  v38 = v48;
  v39 = v52;
  sub_1A524B154();

  sub_1A44C3CF4(v12, sub_1A44C3490);
  v53 = v39;
  v54 = v35;
  v55 = v36;
  v56 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v51;
  v41 = v49;
  sub_1A524AEF4();
  v42 = (*(v50 + 8))(v38, v41);
  v43 = sub_1A478C2E4(v42);
  LOBYTE(v31) = sub_1A524A064();
  sub_1A44C3D54(0);
  v45 = v40 + *(v44 + 36);
  *v45 = v43;
  *(v45 + 8) = v31;
}

double sub_1A44B9938@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v93 = a2;
  sub_1A41278A0(0, a3);
  v92 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharedAlbumAddToView(0);
  v84 = *(v6 - 8);
  v95 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v94 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58(0);
  v89 = v10;
  v91 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5249284();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C3104(0);
  v17 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C3064(0, v18);
  v79 = v21;
  v80 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v71 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C2F2C(0, v22);
  v83 = v24;
  v85 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C2D80(0);
  v87 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26 - 8);
  v88 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v70 - v29;
  v86 = sub_1A524B354();
  v82 = sub_1A5248874();
  v81 = sub_1A524A064();
  v96 = a1;
  sub_1A524A044();
  sub_1A44C31D4(0);
  sub_1A44C2BD4(&qword_1EB13C2A8, sub_1A44C31D4, MEMORY[0x1E6981F48]);
  sub_1A5247D14();
  v30 = sub_1A524A054();
  sub_1A5247BC4();
  v31 = &v20[*(v17 + 36)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v97 = sub_1A3C38BD4(0xD000000000000029);
  v98 = v36;
  (*(v13 + 104))(v15, *MEMORY[0x1E697C438], v12);
  v37 = sub_1A44C33E0();
  v38 = sub_1A3D5F9DC();
  sub_1A524ACF4();
  (*(v13 + 8))(v15, v12);

  sub_1A44C5414(v20, sub_1A44C3104);
  v39 = v77;
  sub_1A5247B34();
  v74 = type metadata accessor for SharedAlbumAddToView;
  v70 = a1;
  v40 = v94;
  sub_1A44C800C(a1, v94, type metadata accessor for SharedAlbumAddToView);
  v84 = *(v84 + 80);
  v41 = (v84 + 16) & ~v84;
  v72 = v41;
  v42 = swift_allocObject();
  v73 = type metadata accessor for SharedAlbumAddToView;
  sub_1A44C7FA4(v40, v42 + v41, type metadata accessor for SharedAlbumAddToView);
  v43 = v78;
  MEMORY[0x1A5906A80](v39, sub_1A44C5E70, v42);
  v44 = v90;
  sub_1A44BA7D8(v90);
  v97 = v17;
  v98 = MEMORY[0x1E69E6158];
  v99 = v37;
  v100 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_1A44C2BD4(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
  v48 = sub_1A4127958(v47);
  v49 = v75;
  v50 = v43;
  v51 = v44;
  v52 = v79;
  v53 = v89;
  v54 = v92;
  v55 = v71;
  sub_1A524ACC4();
  sub_1A44C5414(v51, sub_1A41278A0);
  (*(v91 + 8))(v50, v53);
  (*(v80 + 8))(v55, v52);
  v97 = v52;
  v98 = v53;
  v99 = v54;
  v100 = OpaqueTypeConformance2;
  v101 = v46;
  v102 = v48;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v76;
  v58 = v83;
  sub_1A425D400(0, v83, v56);
  (*(v85 + 8))(v49, v58);
  v59 = v94;
  sub_1A44C800C(v70, v94, v74);
  v60 = v72;
  v61 = swift_allocObject();
  sub_1A44C7FA4(v59, v61 + v60, v73);
  v62 = v88;
  v63 = (v57 + *(v87 + 44));
  *v63 = sub_1A44C5F7C;
  v63[1] = v61;
  v63[2] = 0;
  v63[3] = 0;
  sub_1A3D02B00(v57, v62);
  v64 = v93;
  v65 = v82;
  *v93 = v86;
  v64[1] = v65;
  *(v64 + 16) = v81;
  v66 = v64;
  sub_1A44C2CE4(0, v67);
  sub_1A3D02B00(v62, v66 + *(v68 + 48));

  sub_1A44C3CF4(v57, sub_1A44C2D80);
  sub_1A44C3CF4(v62, sub_1A44C2D80);

  return result;
}

uint64_t sub_1A44BA250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  sub_1A44C3380(0);
  v66 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v60 - v6;
  sub_1A44C3298(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v60 - v11);
  v13 = type metadata accessor for SharedAlbumPreviewsSection(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v60 - v16);
  v69 = &v60 - v16;
  v18 = (a1 + *(type metadata accessor for SharedAlbumAddToView(0) + 24));
  v20 = v18[1];
  v71 = *v18;
  v19 = v71;
  v72 = v20;
  v62 = v20;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A45AB24C(v70, v17);
  v71 = v19;
  v72 = v20;
  sub_1A524B6A4();
  v21 = v70;
  *v12 = swift_getKeyPath();
  sub_1A44C24C0(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v22 = _s12PhotosUICore14CommentSectionVMa_0(0);
  v23 = (v12 + v22[5]);
  v70 = v21;
  type metadata accessor for SharedAlbumActionViewModel(0);
  sub_1A524B694();
  v24 = v72;
  *v23 = v71;
  v23[1] = v24;
  v25 = v12 + v22[6];
  *v25 = sub_1A5247C34() & 1;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  v28 = v22[7];
  *(v12 + v28) = [objc_opt_self() maxCharactersPerComment];
  v29 = sub_1A524B2E4();
  LOBYTE(v23) = sub_1A524A064();
  sub_1A44C32CC(0);
  v31 = *(v30 + 36);
  v61 = v12;
  v32 = v12 + v31;
  *v32 = v29;
  v32[8] = v23;
  v33 = v12 + *(v8 + 44);
  v34 = sub_1A5248A14();
  v35 = *(v34 + 20);
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_1A52494A4();
  v38 = *(*(v37 - 8) + 104);
  v38(&v33[v35], v36, v37);
  __asm { FMOV            V0.2D, #10.0 }

  v60 = _Q0;
  *v33 = _Q0;
  sub_1A3E42C88(0);
  v45 = v44;
  *&v33[*(v44 + 36)] = 256;
  v71 = v19;
  v72 = v62;
  sub_1A524B6A4();
  sub_1A524B694();
  v46 = v71;
  v47 = v72;
  v48 = v63;
  v49 = &v63[*(v66 + 44)];
  v38(&v49[*(v34 + 20)], v36, v37);
  *v49 = v60;
  *&v49[*(v45 + 36)] = 256;
  *v48 = v46;
  v48[1] = v47;
  v50 = v64;
  sub_1A44C800C(v69, v64, type metadata accessor for SharedAlbumPreviewsSection);
  v51 = v61;
  v52 = v65;
  sub_1A44C800C(v61, v65, sub_1A44C3298);
  v53 = v67;
  sub_1A44C800C(v48, v67, sub_1A44C3380);
  v54 = v68;
  sub_1A44C800C(v50, v68, type metadata accessor for SharedAlbumPreviewsSection);
  sub_1A44C3208(0);
  v56 = v55;
  v57 = v54 + *(v55 + 48);
  *v57 = 0x4034000000000000;
  *(v57 + 8) = 0;
  sub_1A44C800C(v52, v54 + *(v55 + 64), sub_1A44C3298);
  v58 = v54 + *(v56 + 80);
  *v58 = 0x4034000000000000;
  *(v58 + 8) = 0;
  sub_1A44C800C(v53, v54 + *(v56 + 96), sub_1A44C3380);
  sub_1A44C5414(v48, sub_1A44C3380);
  sub_1A44C5414(v51, sub_1A44C3298);
  sub_1A44C5414(v69, type metadata accessor for SharedAlbumPreviewsSection);
  sub_1A44C5414(v53, sub_1A44C3380);
  sub_1A44C5414(v52, sub_1A44C3298);
  return sub_1A44C5414(v50, type metadata accessor for SharedAlbumPreviewsSection);
}

void sub_1A44BA7D8(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for SharedAlbumAddToView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A44C5480(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v37 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  sub_1A44C800C(v1, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumAddToView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A44C7FA4(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SharedAlbumAddToView);
  sub_1A524B704();
  v12 = (v1 + *(v3 + 24));
  v14 = *v12;
  v13 = v12[1];
  v41 = *v12;
  v42 = v13;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v15 = sub_1A524B6A4();
  v16 = v40;
  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & *v40) + 0x648))(v15);

  if (v18 < 1 || (v41 = v14, v42 = v13, v19 = sub_1A524B6A4(), v20 = v40, v21 = (*((*v17 & *v40) + 0x4C0))(v19), v20, (v21 & 1) != 0))
  {
    v22 = 1;
  }

  else
  {
    v23 = (v2 + *(v3 + 24));
    v24 = *v23;
    v25 = v23[1];
    v41 = *v23;
    v42 = v25;
    v26 = sub_1A524B6A4();
    v27 = v40;
    v28 = (*((*v17 & *v40) + 0x580))(v26);

    if ((v28 & 1) != 0 || [*(v2 + *(v3 + 28)) analysisPolicy] != 2)
    {
      v22 = 0;
    }

    else
    {
      v41 = v24;
      v42 = v25;
      v29 = sub_1A524B6A4();
      v30 = v40;
      (*((*v17 & *v40) + 0x4F0))(&v41, v29);

      LOBYTE(v40) = v41;
      v39 = 1;
      sub_1A3D5E3A8();
      v22 = sub_1A524C594() ^ 1;
    }
  }

  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v22 & 1;
  v33 = v38;
  v34 = (*(v7 + 32))(v38, v9, v37);
  sub_1A41278A0(0, v34);
  v36 = (v33 + *(v35 + 36));
  *v36 = KeyPath;
  v36[1] = sub_1A4312ED8;
  v36[2] = v32;
}

void sub_1A44BACA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharedAlbumAddToView(0);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v1 + *(v6 + 32));
  v8 = *v7;
  v9 = v7[1];
  aBlock = *v7;
  v22 = v9;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v10 = sub_1A524B6A4();
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x520))(v10);

  if ((v12 & 1) == 0)
  {
    aBlock = v8;
    v22 = v9;
    v13 = sub_1A524B6A4();
    v14 = (*((*v11 & *v27) + 0x580))(v13);

    if ((v14 & 1) == 0)
    {
      aBlock = v8;
      v22 = v9;
      sub_1A524B6A4();
      (*((*v11 & *v27) + 0x528))(1);

      v15 = sub_1A44BB224();
      if (v15)
      {
        v16 = [v15 presentingViewController];
        swift_unknownObjectRelease();
        if (v16)
        {
          if ([a1 canPresentIntervention])
          {
            sub_1A44C800C(v2, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumAddToView);
            v17 = (*(v20 + 80) + 16) & ~*(v20 + 80);
            v18 = swift_allocObject();
            sub_1A44C7FA4(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SharedAlbumAddToView);
            v25 = sub_1A44C5CB0;
            v26 = v18;
            aBlock = MEMORY[0x1E69E9820];
            v22 = 1107296256;
            v23 = sub_1A3E01E70;
            v24 = &block_descriptor_91_3;
            v19 = _Block_copy(&aBlock);

            [a1 presentFromViewController:v16 completionHandler:v19];
            _Block_release(v19);
          }
        }
      }
    }
  }
}

uint64_t sub_1A44BB014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedAlbumActionProgressView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (a1 + *(type metadata accessor for SharedAlbumAddToView(0) + 24));
  v10 = *v8;
  v9 = v8[1];
  v18 = v10;
  v19 = v9;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v11 = sub_1A524B6A4();
  v12 = v17;
  v13 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x490))(v11);

  if (v13)
  {
    *v7 = swift_getKeyPath();
    sub_1A44C24C0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v4 + 20)) = 0;
    sub_1A44C7FA4(v7, a2, type metadata accessor for SharedAlbumActionProgressView);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t sub_1A44BB224()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44BB714(&qword_1EB128A80, sub_1A3D63A58, sub_1A3D63A58, v3);
  sub_1A44C2458(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  v5 = v4;
  v6 = *(*(v4 - 8) + 48);
  if (v6(v3, 1, v4) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A44C5414(v3, sub_1A3D63A58);
  v7 = *(v0 + *(type metadata accessor for SharedAlbumAddToView(0) + 20));
  if (v7)
  {
    v8 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
    swift_beginAccess();
    if (v6((v7 + v8), 1, v5))
    {
      swift_endAccess();
      PXPresentationEnvironmentForSender();
    }

    sub_1A5245C94();
  }

  type metadata accessor for HostingViewControllerProvider(0);
  sub_1A44C2BD4(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider, &protocol conformance descriptor for HostingViewControllerProvider);
  result = sub_1A5248BA4();
  __break(1u);
  return result;
}

void *sub_1A44BB510(uint64_t a1)
{
  v2 = type metadata accessor for SharedAlbumAddToView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1A44BB224();
  v7 = (a1 + *(v3 + 32));
  v9 = *v7;
  v8 = v7[1];
  v16[2] = v9;
  v16[3] = v8;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v6)
  {
    v11 = v16[1];
    sub_1A44C800C(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumAddToView);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_1A44C7FA4(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SharedAlbumAddToView);
    v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x660);
    v15 = swift_unknownObjectRetain();
    v14(v15, sub_1A44C6168, v13);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44BB714@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C24C0(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A44C7A08(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A44C7FA4(v16, a4, a3);
  }

  v18 = sub_1A524D254();
  v19 = sub_1A524A014();
  sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A44BB900@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = sub_1A5249A94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DD0DCC(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68[-v9];
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v77 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v68[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v68[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v68[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68[-v23];
  v79 = v1;
  sub_1A44BB714(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, &v68[-v23]);
  v25 = v3[13];
  v74 = *MEMORY[0x1E697FF38];
  v73 = v25;
  v25(v21);
  v72 = v3[7];
  v72(v21, 0, 1, v2);
  v75 = v6;
  v26 = *(v6 + 48);
  sub_1A3F188F8(v24, v10);
  sub_1A3F188F8(v21, &v10[v26]);
  v83 = v3;
  v27 = v3[6];
  if (v27(v10, 1, v2) == 1)
  {
    sub_1A44C5414(v21, sub_1A3DC7D88);
    sub_1A44C5414(v24, sub_1A3DC7D88);
    if (v27(&v10[v26], 1, v2) == 1)
    {
      sub_1A44C5414(v10, sub_1A3DC7D88);
      v28 = 2;
LABEL_7:
      v81 = v28;
      v29 = v79;
      v30 = v82;
      goto LABEL_11;
    }

LABEL_6:
    sub_1A44C5414(v10, sub_1A3DD0DCC);
    v28 = 5;
    goto LABEL_7;
  }

  sub_1A3F188F8(v10, v81);
  v70 = v27;
  if (v27(&v10[v26], 1, v2) == 1)
  {
    sub_1A44C5414(v21, sub_1A3DC7D88);
    sub_1A44C5414(v24, sub_1A3DC7D88);
    (v83[1])(v81, v2);
    v27 = v70;
    goto LABEL_6;
  }

  v31 = v71;
  (v83[4])(v71, &v10[v26], v2);
  sub_1A44C2BD4(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v69 = sub_1A524C594();
  v32 = v83[1];
  v32(v31, v2);
  sub_1A44C5414(v21, sub_1A3DC7D88);
  sub_1A44C5414(v24, sub_1A3DC7D88);
  v32(v81, v2);
  sub_1A44C5414(v10, sub_1A3DC7D88);
  v33 = 5;
  if (v69)
  {
    v33 = 2;
  }

  v81 = v33;
  v29 = v79;
  v30 = v82;
  v27 = v70;
LABEL_11:
  sub_1A44BB714(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v30);
  v34 = v76;
  v73(v76, v74, v2);
  v72(v34, 0, 1, v2);
  v35 = *(v75 + 48);
  v36 = v78;
  sub_1A3F188F8(v30, v78);
  sub_1A3F188F8(v34, &v36[v35]);
  if (v27(v36, 1, v2) != 1)
  {
    sub_1A3F188F8(v36, v77);
    if (v27(&v36[v35], 1, v2) != 1)
    {
      v38 = v77;
      v39 = v83;
      v40 = v71;
      (v83[4])(v71, &v36[v35], v2);
      sub_1A44C2BD4(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      sub_1A524C594();
      v41 = v39[1];
      v41(v40, v2);
      sub_1A44C5414(v34, sub_1A3DC7D88);
      sub_1A44C5414(v82, sub_1A3DC7D88);
      v41(v38, v2);
      v37 = sub_1A44C5414(v36, sub_1A3DC7D88);
      goto LABEL_18;
    }

    sub_1A44C5414(v34, sub_1A3DC7D88);
    sub_1A44C5414(v30, sub_1A3DC7D88);
    (v83[1])(v77, v2);
    goto LABEL_16;
  }

  sub_1A44C5414(v34, sub_1A3DC7D88);
  sub_1A44C5414(v30, sub_1A3DC7D88);
  if (v27(&v36[v35], 1, v2) != 1)
  {
LABEL_16:
    v37 = sub_1A44C5414(v36, sub_1A3DD0DCC);
    goto LABEL_18;
  }

  v37 = sub_1A44C5414(v36, sub_1A3DC7D88);
LABEL_18:
  v42 = MEMORY[0x1EEE9AC00](v37);
  v43 = v81;
  *&v68[-32] = v29;
  *&v68[-24] = v43;
  *&v68[-16] = v44;
  sub_1A4128724(0, v42);
  sub_1A4128898(255, v45);
  v47 = v46;
  sub_1A41289E4(255, v48);
  v50 = v49;
  sub_1A4128AE4(255, v51);
  v53 = v52;
  sub_1A4128BB4(255, v54);
  v56 = v55;
  sub_1A4128C38(255, v57);
  v59 = v58;
  v60 = sub_1A44C54D4(&qword_1EB132E00, sub_1A4128C38, sub_1A437B870);
  v84 = v59;
  v85 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v56;
  v85 = MEMORY[0x1E69E6158];
  v86 = OpaqueTypeConformance2;
  v87 = MEMORY[0x1E69E6180];
  v62 = swift_getOpaqueTypeConformance2();
  v84 = v53;
  v85 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = MEMORY[0x1E69E6370];
  v84 = v50;
  v85 = MEMORY[0x1E69E6370];
  v65 = MEMORY[0x1E69E6388];
  v86 = v63;
  v87 = MEMORY[0x1E69E6388];
  v66 = swift_getOpaqueTypeConformance2();
  v84 = v47;
  v85 = v64;
  v86 = v66;
  v87 = v65;
  swift_getOpaqueTypeConformance2();
  return sub_1A524BA54();
}

uint64_t sub_1A44BC290@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a2;
  v88 = a3;
  v85 = a4;
  v5 = _s12PhotosUICore14CommentSectionVMa_0(0);
  v86 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v93 = v7;
  v91 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128C38(0, v6);
  v9 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128BB4(0, v10);
  v75 = v13;
  v73 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v72 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128AE4(0, v14);
  v79 = v16;
  v77 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v74 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41289E4(0, v17);
  v81 = v19;
  v80 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v78 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128898(0, v20);
  v83 = *(v22 - 8);
  v84 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v82 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1A3C38BD4(0xD00000000000002ALL);
  v102 = v24;
  v76 = v5;
  v25 = *(v5 + 20);
  v92 = a1;
  v26 = (a1 + v25);
  v28 = *v26;
  v27 = v26[1];
  v89 = v28;
  v90 = v27;
  v98 = v28;
  v99 = v27;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v30 = v29;
  sub_1A524B6C4();
  v31 = v94;
  v32 = v95;
  v33 = v96;
  swift_getKeyPath();
  v98 = v31;
  v99 = v32;
  v100 = v33;
  sub_1A44C24C0(0, &qword_1EB13E370, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  sub_1A3D5F9DC();
  v34 = v87;
  sub_1A524BE04();
  result = sub_1A524A064();
  v36 = &v12[*(v9 + 36)];
  *v36 = result;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  if (v88 < v34)
  {
    __break(1u);
  }

  else
  {
    v37 = sub_1A44C54D4(&qword_1EB132E00, sub_1A4128C38, sub_1A437B870);
    v38 = v72;
    sub_1A524B1D4();
    sub_1A44C5414(v12, sub_1A4128C38);
    v94 = v89;
    v95 = v90;
    v71[1] = v30;
    v39 = sub_1A524B6A4();
    v40 = v98;
    v41 = (*((*MEMORY[0x1E69E7D40] & *v98) + 0x310))(v39);
    v43 = v42;

    v94 = v41;
    v95 = v43;
    v71[0] = _s12PhotosUICore14CommentSectionVMa_0;
    v44 = v91;
    v45 = v92;
    sub_1A44C800C(v92, v91, _s12PhotosUICore14CommentSectionVMa_0);
    v88 = *(v86 + 80);
    v46 = (v88 + 16) & ~v88;
    v86 = v46;
    v47 = swift_allocObject();
    v87 = _s12PhotosUICore14CommentSectionVMa_0;
    sub_1A44C7FA4(v44, v47 + v46, _s12PhotosUICore14CommentSectionVMa_0);
    v98 = v9;
    v99 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v74;
    v50 = v75;
    sub_1A524B144();

    (*(v73 + 8))(v38, v50);
    v51 = (v45 + *(v76 + 24));
    LODWORD(v76) = *v51;
    v52 = *(v51 + 1);
    LOBYTE(v37) = v51[16];
    LOBYTE(v94) = v76;
    v95 = v52;
    LOBYTE(v96) = v37;
    sub_1A44C5480(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
    sub_1A5247C24();
    v94 = v50;
    v95 = MEMORY[0x1E69E6158];
    v96 = OpaqueTypeConformance2;
    v97 = MEMORY[0x1E69E6180];
    v53 = swift_getOpaqueTypeConformance2();
    v54 = v78;
    v55 = v79;
    sub_1A524B074();

    (*(v77 + 8))(v49, v55);
    LOBYTE(v94) = v76;
    v95 = v52;
    LOBYTE(v96) = v37;
    sub_1A5247C04();
    v56 = v91;
    v57 = v71[0];
    sub_1A44C800C(v92, v91, v71[0]);
    v58 = v86;
    v59 = swift_allocObject();
    sub_1A44C7FA4(v56, v59 + v58, v87);
    v94 = v55;
    v95 = v53;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = MEMORY[0x1E69E6388];
    v62 = v82;
    v63 = v81;
    v64 = MEMORY[0x1E69E6370];
    sub_1A524B154();

    (*(v80 + 8))(v54, v63);
    v94 = v89;
    v95 = v90;
    v65 = sub_1A524B6A4();
    v66 = v98;
    v67 = (*((*MEMORY[0x1E69E7D40] & *v98) + 0x340))(v65);

    LOBYTE(v98) = v67 & 1;
    sub_1A44C800C(v92, v56, v57);
    v68 = v86;
    v69 = swift_allocObject();
    sub_1A44C7FA4(v56, v69 + v68, v87);
    v94 = v63;
    v95 = v64;
    v96 = v60;
    v97 = v61;
    swift_getOpaqueTypeConformance2();
    v70 = v84;
    sub_1A524B154();

    return (*(v83 + 8))(v62, v70);
  }

  return result;
}

uint64_t sub_1A44BCCDC(void *a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s12PhotosUICore14CommentSectionVMa_0(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  result = sub_1A524C7A4();
  if (*(a2 + *(v10 + 36)) < result)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v14 = sub_1A524D474();
    sub_1A44C800C(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s12PhotosUICore14CommentSectionVMa_0);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_1A44C7FA4(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s12PhotosUICore14CommentSectionVMa_0);
    aBlock[4] = sub_1A44C5A78;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_201;
    v17 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A44C2BD4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A44C2BD4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v5, v17);
    _Block_release(v17);

    (*(v19 + 8))(v5, v3);
    return (*(v6 + 8))(v8, v18);
  }

  return result;
}

uint64_t sub_1A44BD0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  sub_1A44C518C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  SharedAlbumCell = type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell(0);
  MEMORY[0x1EEE9AC00](SharedAlbumCell - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v29 = 0x4040000000000000;
  sub_1A3F185D4();
  sub_1A52480C4();
  v29 = a1;
  v30 = a2;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v19 = sub_1A524B6A4();
  v20 = v28;
  v21 = (*((*MEMORY[0x1E69E7D40] & *v28) + 0x1D8))(v19);

  v29 = v21;
  swift_getKeyPath();
  sub_1A44C2458(0, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
  type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  sub_1A44C5270();
  sub_1A44C53CC(qword_1EB1C4420, type metadata accessor for SharedAlbumsSection.SharedAlbumCell, &unk_1A53422B8);
  sub_1A524B9B4();
  sub_1A44C800C(v18, v15, type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell);
  v22 = *(v7 + 16);
  v22(v9, v12, v6);
  v23 = v27;
  sub_1A44C800C(v15, v27, type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell);
  sub_1A44C5138(0);
  v22((v23 + *(v24 + 48)), v9, v6);
  v25 = *(v7 + 8);
  v25(v12, v6);
  sub_1A44C5414(v18, type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell);
  v25(v9, v6);
  return sub_1A44C5414(v15, type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell);
}

void sub_1A44BD458(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A44BD4B0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = *a1;
  sub_1A44C2458(0, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  v4 = v3;
  sub_1A524B694();
  *(a2 + 8) = v6;
  type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  sub_1A3F185D4();
  return sub_1A52480C4();
}

uint64_t sub_1A44BD570()
{
  sub_1A3C38BD4(0xD000000000000023);
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

double sub_1A44BD5C8(void *a1, uint64_t a2)
{
  v2 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v3 = sub_1A524B6A4();
  v4 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x370))(v3);
  v6 = v5;

  if (v4 == 0xD00000000000001FLL && 0x80000001A53D9CA0 == v6)
  {
  }

  else
  {
    v8 = sub_1A524EAB4();

    if ((v8 & 1) == 0)
    {
      v10 = [objc_opt_self() standardUserDefaults];
      v11 = sub_1A524B6A4();
      (*((*MEMORY[0x1E69E7D40] & *v12) + 0x370))(v11);

      sub_1A524C634();

      sub_1A3D444C4();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

uint64_t sub_1A44BDA0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v40 = *(a1 + 32);
  v41 = v3;
  v6 = v4;
  v53 = v5;
  v54 = v40;
  v7 = v5;
  v38 = v5;
  sub_1A524B824();
  sub_1A5249274();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E697C418];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = WitnessTable;
  v52 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = swift_getOpaqueTypeMetadata2();
  v49 = OpaqueTypeMetadata2;
  v50 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = *(v7 + 8);
  v36 = v6;
  swift_getOpaqueTypeMetadata2();
  v49 = v12;
  v50 = v6;
  v51 = v13;
  v52 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_1A524A2A4();
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v35 = swift_getWitnessTable();
  v49 = v15;
  v50 = v35;
  v37 = swift_getOpaqueTypeMetadata2();
  v18 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v24 = v42;
  v44 = v41;
  v45 = v36;
  v46 = v40;
  v47 = v38;
  v48 = v42;
  v25 = sub_1A524A294();
  v26 = (*(v24 + *(a1 + 60)))(v25);
  v28 = v27;
  LOBYTE(v9) = v29;
  sub_1A524ABA4();
  sub_1A3E04DF4(v26, v28, v9 & 1);

  (*(v39 + 8))(v17, v15);
  v30 = *(v18 + 16);
  v31 = v37;
  v30(v23, v20, v37);
  v32 = *(v18 + 8);
  v32(v20, v31);
  v30(v43, v23, v31);
  return (v32)(v23, v31);
}

uint64_t sub_1A44BDE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v77 = a1;
  v90 = a6;
  v93 = a2;
  v94 = a3;
  v80 = a2;
  v95 = a4;
  v96 = a5;
  v91 = a4;
  v10 = type metadata accessor for SharedAlbumsSection.PickerView(0, &v93);
  v87 = *(v10 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v62 - v11;
  v89 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5249274();
  v84 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524B974();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v62 - v17;
  v93 = MEMORY[0x1E6981148];
  v94 = a3;
  v95 = a2;
  v96 = MEMORY[0x1E6981138];
  v97 = a5;
  v98 = a4;
  v19 = a5;
  v20 = sub_1A524B824();
  v83 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v62 - v21;
  WitnessTable = swift_getWitnessTable();
  v93 = v20;
  v94 = v14;
  v23 = MEMORY[0x1E697C418];
  v95 = WitnessTable;
  v96 = MEMORY[0x1E697C418];
  v24 = WitnessTable;
  v70 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v69 = &v62 - v26;
  v93 = v20;
  v94 = v14;
  v95 = v24;
  v96 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeMetadata2;
  v94 = OpaqueTypeConformance2;
  v28 = OpaqueTypeConformance2;
  v66 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  v72 = v29;
  v82 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v67 = &v62 - v30;
  v93 = OpaqueTypeMetadata2;
  v94 = v28;
  v74 = swift_getOpaqueTypeConformance2();
  v73 = *(v19 + 8);
  v64 = v19;
  v93 = v29;
  v94 = a3;
  v63 = a3;
  v95 = v74;
  v96 = v73;
  v78 = swift_getOpaqueTypeMetadata2();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v68 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v71 = &v62 - v33;
  v34 = v10;
  v35 = sub_1A524B974();
  v36 = v77;
  sub_1A524B924();
  v37 = (v36 + *(v34 + 56));
  v38 = *v37;
  v39 = v37[1];
  v92 = *(v36 + *(v34 + 60));
  v61 = v19;
  v40 = v76;
  v41 = v80;
  sub_1A44BE6DC(v18, v38, v39, sub_1A44C7958, v80, v76, MEMORY[0x1E6981138], v61, v91);
  v42 = v81;
  sub_1A5249264();
  v43 = v69;
  sub_1A524A9A4();
  (*(v84 + 8))(v42, v14);
  (*(v83 + 8))(v40, v20);
  v44 = v67;
  v45 = v65;
  sub_1A524AA74();
  (*(v79 + 8))(v43, v45);
  v46 = v85;
  MEMORY[0x1A5906C60](v35);
  v48 = v86;
  v47 = v87;
  (*(v87 + 16))(v86, v36, v34);
  v49 = (*(v47 + 80) + 48) & ~*(v47 + 80);
  v50 = swift_allocObject();
  v51 = v63;
  *(v50 + 2) = v41;
  *(v50 + 3) = v51;
  v52 = v64;
  *(v50 + 4) = v91;
  *(v50 + 5) = v52;
  (*(v47 + 32))(&v50[v49], v48, v34);
  v53 = v68;
  v54 = v72;
  sub_1A524B154();

  (*(v89 + 8))(v46, v51);
  (*(v82 + 8))(v44, v54);
  v55 = v75;
  v56 = *(v75 + 16);
  v57 = v71;
  v58 = v78;
  v56(v71, v53, v78);
  v59 = *(v55 + 8);
  v59(v53, v58);
  v56(v90, v57, v58);
  return (v59)(v57, v58);
}

uint64_t sub_1A44BE6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[4] = a3;
  v18[5] = a7;
  v18[0] = a4;
  v18[1] = a8;
  v18[2] = a2;
  v18[3] = a9;
  MEMORY[0x1EEE9AC00](a1);
  v12 = sub_1A524B974();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (*(v13 + 16))(v18 - v15, a1, v12, v14);
  (v18[0])(v16);
  sub_1A524B7F4();
  return (*(v13 + 8))(a1, v12);
}

uint64_t sub_1A44BE86C(uint64_t a1)
{
  v17 = sub_1A5249234();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697BF90];
  sub_1A44C24C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C7A08(a1, v8, &unk_1EB128A60, v5);
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

    (*(v2 + 8))(v4, v17);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

void sub_1A44BEB10(uint64_t a2@<X8>)
{
  sub_1A44C7A88(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_1A5249314();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_1A44C7EA8(0);
  sub_1A44BEC84(&v6[*(v7 + 44)]);
  v8 = sub_1A524A064();
  v9 = &v6[*(v4 + 44)];
  *v9 = v8;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  v10 = sub_1A5249BE4();
  v11 = objc_opt_self();
  v12 = &selRef_quaternaryLabelColor;
  if ((v10 & 1) == 0)
  {
    v12 = &selRef_systemBackgroundColor;
  }

  v13 = [v11 *v12];
  v14 = sub_1A524B284();
  v15 = sub_1A524BC74();
  v17 = v16;
  sub_1A3D0335C(v6, a2);
  sub_1A44C2AF4(0, &qword_1EB13C518, sub_1A44C7A88, sub_1A44C7F10);
  v19 = a2 + *(v18 + 36);
  *v19 = v14;
  *(v19 + 8) = 256;
  *(v19 + 16) = v15;
  *(v19 + 24) = v17;
}

uint64_t sub_1A44BEC84@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  sub_1A3EE1D04(0);
  v61 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v68 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5242234();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1A5242264();
  v6 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44C7D4C(0);
  v64 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C7C78(0, v10);
  v60 = v12;
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v56 - v15;
  v16 = sub_1A5249BC4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C7C3C(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - v27;
  sub_1A5249BD4();
  sub_1A524BC74();
  sub_1A5248AD4();
  (*(v17 + 32))(v25, v19, v16);
  v29 = *(v21 + 44);
  v31 = v63;
  v30 = v64;
  v32 = &v25[v29];
  v33 = v74;
  *(v32 + 4) = v73;
  *(v32 + 5) = v33;
  *(v32 + 6) = v75;
  v34 = v70;
  *v32 = v69;
  *(v32 + 1) = v34;
  v35 = v72;
  *(v32 + 2) = v71;
  *(v32 + 3) = v35;
  v36 = v25;
  v37 = v28;
  sub_1A44C7FA4(v36, v28, sub_1A44C7C3C);
  *v8 = 0x2E6E6F7276656863;
  v8[1] = 0xEF64726177726F66;
  v38 = v65;
  (*(v6 + 104))(v8, *MEMORY[0x1E69C1D38], v65);
  sub_1A5242174();
  sub_1A5242B84();
  (*(v66 + 8))(v5, v67);
  (*(v6 + 8))(v8, v38);
  v39 = v68;
  v40 = sub_1A524B4A4();
  KeyPath = swift_getKeyPath();
  v42 = (v31 + *(v30 + 36));
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = *MEMORY[0x1E697E6E8];
  v44 = sub_1A52486A4();
  (*(*(v44 - 8) + 104))(v39, v43, v44);
  sub_1A44C2BD4(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1A524C594();
  if (result)
  {
    sub_1A44C7DE0();
    sub_1A44C2BD4(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    v46 = v57;
    sub_1A524AB84();
    sub_1A44C5414(v39, sub_1A3EE1D04);
    sub_1A44C3CF4(v31, sub_1A44C7D4C);
    v47 = v28;
    v48 = v56;
    sub_1A44C800C(v47, v56, sub_1A44C7C3C);
    v49 = v59;
    v50 = *(v59 + 16);
    v51 = v58;
    v52 = v60;
    v50(v58, v46, v60);
    v53 = v62;
    sub_1A44C800C(v48, v62, sub_1A44C7C3C);
    sub_1A44C7B8C(0);
    v50((v53 + *(v54 + 48)), v51, v52);
    v55 = *(v49 + 8);
    v55(v46, v52);
    sub_1A44C5414(v37, sub_1A44C7C3C);
    v55(v51, v52);
    return sub_1A44C5414(v48, sub_1A44C7C3C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44BF3D8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  sub_1A44C2B68(255, &qword_1EB13C428, sub_1A44C6BC0, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
  v4 = v3;
  v29 = v3;
  v5 = a1[2];
  v25 = a1[3];
  v6 = a1[5];
  v24 = a1[4];
  v44 = v5;
  v45 = v25;
  v46 = v24;
  v47 = v6;
  v28 = type metadata accessor for SharedAlbumsSection.PickerView(255, &v44);
  v27 = sub_1A44C6DB0();
  WitnessTable = swift_getWitnessTable();
  v44 = v4;
  v45 = v28;
  v46 = v27;
  v47 = WitnessTable;
  v7 = sub_1A5248454();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  v11 = swift_getWitnessTable();
  v23[1] = v11;
  v12 = sub_1A44C6EA0();
  v44 = v7;
  v45 = &type metadata for SharedAlbumsSection.NavigationLinkButtonStyle;
  v46 = v11;
  v47 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v23 - v18;
  v39 = v5;
  v40 = v25;
  v41 = v24;
  v42 = v6;
  v43 = v30;
  v33 = v5;
  v34 = v25;
  v35 = v24;
  v36 = v6;
  v37 = v30;
  sub_1A44C0170(sub_1A44C6EF4, v38, sub_1A44C6F0C, v32, v29, v28, v27, WitnessTable);
  sub_1A524A944();
  (*(v8 + 8))(v10, v7);
  v20 = *(v14 + 16);
  v20(v19, v16, OpaqueTypeMetadata2);
  v21 = *(v14 + 8);
  v21(v16, OpaqueTypeMetadata2);
  v20(v31, v19, OpaqueTypeMetadata2);
  return (v21)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1A44BF774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v42 = a6;
  v11 = sub_1A524B974();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v14 = a5;
  v39 = a5;
  v15 = type metadata accessor for SharedAlbumsSection.PickerView(0, &v43);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = v14;
  v22 = type metadata accessor for SharedAlbumsSection.NavigationButton(0, &v43);
  sub_1A524B974();
  sub_1A524B924();
  v23 = *(v22 + 60);
  v24 = (a1 + *(v22 + 56));
  v25 = *v24;
  v26 = v24[1];
  v27 = a1 + v23;
  v28 = *(a1 + v23);
  v29 = *(v27 + 8);
  v37 = v25;
  v38 = v28;
  *v18 = swift_getKeyPath();
  sub_1A44C24C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = v39;
  v30 = type metadata accessor for SharedAlbumsSection.PickerView(0, &v43);
  (*(v40 + 32))(v18 + v30[13], v13, v41);
  v31 = (v18 + v30[14]);
  v32 = v38;
  *v31 = v37;
  v31[1] = v26;
  v33 = (v18 + v30[15]);
  *v33 = v32;
  v33[1] = v29;
  swift_getWitnessTable();
  v34 = *(v16 + 16);
  v34(v21, v18, v15);
  v35 = *(v16 + 8);

  v35(v18, v15);
  v34(v42, v21, v15);
  return (v35)(v21, v15);
}

void sub_1A44BFA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A44C6BC0(0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A44C2B68(0, &qword_1EB13C470, sub_1A44C6BC0, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v11);
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  type metadata accessor for SharedAlbumsSection.NavigationButton(0, v12);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44BFDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = [*v11 uuid];
  v13 = sub_1A524C674();
  v15 = v14;

  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  type metadata accessor for SharedAlbumsSection.NavigationButton(0, &v20);
  v16 = sub_1A524B974();
  MEMORY[0x1A5906C60](v16);
  if (swift_dynamicCast())
  {
    if (v13 == v20 && v15 == v21)
    {

      v18 = 1;
    }

    else
    {
      v18 = sub_1A524EAB4();
    }
  }

  else
  {

    v18 = 0;
  }

  return v18 & 1;
}

void sub_1A44BFF38(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - v18;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  v31 = a5;
  v32 = a6;
  v20 = type metadata accessor for SharedAlbumsSection.NavigationButton(0, &v30);
  v21 = (*(a1 + *(v20 + 60)))();
  v23 = v22;
  LOBYTE(a3) = v24;
  v26 = v25;
  *v19 = a2;
  v29[1] = 0;
  sub_1A44C2458(0, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  v27 = a2;
  sub_1A524B694();
  *(v19 + 8) = v30;
  *&v30 = 0x4040000000000000;
  sub_1A3F185D4();
  sub_1A52480C4();
  sub_1A44C800C(v19, v16, type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  *a7 = v21;
  *(a7 + 8) = v23;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = v26;
  *(a7 + 32) = 0;
  *(a7 + 40) = 1;
  sub_1A44C6D28(0);
  sub_1A44C800C(v16, a7 + *(v28 + 64), type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  sub_1A3E75E68(v21, v23, a3 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44C0170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_1A5248444();
}

void sub_1A44C0244()
{
  sub_1A5249314();
  v2[408] = 1;
  sub_1A44C0478(v2);
}

void sub_1A44C0478(uint64_t a1@<X8>)
{
  v37 = sub_1A524B554();
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5242264();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  sub_1A52480D4();
  sub_1A52480D4();
  sub_1A524BC74();
  sub_1A52481F4();
  v46 = v61;
  v9 = v62;
  v39 = v63;
  v10 = v64;
  v43 = v62;
  v44 = v64;
  v41 = v66;
  v42 = v65;
  v40 = sub_1A524B414();
  KeyPath = swift_getKeyPath();
  v60 = v9;
  v58 = v10;
  v38 = sub_1A524BC74();
  v12 = v11;
  *v8 = 1937075312;
  v8[1] = 0xE400000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x1E69C1D38], v5);
  sub_1A5242B94();
  (*(v6 + 8))(v8, v5);
  v13 = v37;
  (*(v2 + 104))(v4, *MEMORY[0x1E6981630], v37);
  v14 = sub_1A524B5C4();

  (*(v2 + 8))(v4, v13);
  v15 = sub_1A524B3C4();
  v16 = swift_getKeyPath();
  LOBYTE(v8) = sub_1A524A064();
  sub_1A5247BC4();
  *(&v68 + 2) = v55;
  WORD3(v68) = v56;
  HIDWORD(v69) = *&v54[3];
  *(&v69 + 9) = *v54;
  DWORD1(v72) = *(&v90 + 3);
  *(&v72 + 1) = v90;
  *&v67 = v14;
  *(&v67 + 1) = 0x3FF0000000000000;
  LOWORD(v68) = 0;
  *(&v68 + 1) = v16;
  *&v69 = v15;
  BYTE8(v69) = v8;
  *&v70 = v17;
  *(&v70 + 1) = v18;
  *&v71 = v19;
  *(&v71 + 1) = v20;
  LOBYTE(v72) = 0;
  *(&v72 + 1) = v38;
  v73 = v12;
  v51 = v71;
  v52 = v72;
  v53 = v12;
  v49 = v69;
  v50 = v70;
  v47 = v67;
  v48 = v68;
  v74[0] = v14;
  v74[1] = 0x3FF0000000000000;
  v75 = 0;
  v77 = v56;
  v76 = v55;
  v78 = v16;
  v79 = v15;
  v80 = v8;
  *&v81[3] = *&v54[3];
  *v81 = *v54;
  v82 = v17;
  v83 = v18;
  v84 = v19;
  v85 = v20;
  v86 = 0;
  *&v87[3] = *(&v90 + 3);
  *v87 = v90;
  v88 = v38;
  v89 = v12;
  sub_1A44C800C(&v67, v101, sub_1A44C41A0);
  sub_1A44C5414(v74, sub_1A44C41A0);
  v101[0] = sub_1A3C38BD4(0xD000000000000022);
  v101[1] = v21;
  sub_1A3D5F9DC();
  v22 = sub_1A524A464();
  v24 = v23;
  *&v90 = v46;
  BYTE8(v90) = v43;
  *(&v90 + 9) = *v59;
  HIDWORD(v90) = *&v59[3];
  *&v91 = v39;
  BYTE8(v91) = v44;
  *(&v91 + 9) = *v57;
  HIDWORD(v91) = *&v57[3];
  *&v92 = v42;
  *(&v92 + 1) = v41;
  *&v93 = KeyPath;
  *(&v93 + 1) = v40;
  v94 = v47;
  v95 = v48;
  v100 = v53;
  v98 = v51;
  v99 = v52;
  v96 = v49;
  v97 = v50;
  v26 = v25 & 1;
  v60 = v25 & 1;
  v27 = v91;
  *a1 = v90;
  *(a1 + 16) = v27;
  v28 = v92;
  v29 = v93;
  v30 = v95;
  *(a1 + 64) = v94;
  *(a1 + 80) = v30;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  v31 = v96;
  v32 = v97;
  v33 = v99;
  v34 = v100;
  *(a1 + 128) = v98;
  *(a1 + 144) = v33;
  *(a1 + 96) = v31;
  *(a1 + 112) = v32;
  *(a1 + 160) = v34;
  *(a1 + 168) = v22;
  *(a1 + 176) = v23;
  *(a1 + 184) = v25 & 1;
  *(a1 + 192) = v35;
  sub_1A44C800C(&v90, v101, sub_1A44C4090);
  sub_1A3E75E68(v22, v24, v26);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44C0A88@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A44C42B4(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_1A5249314();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A44C6FC4(0);
  sub_1A44C0CE8(v1, &v9[*(v10 + 44)]);
  v9[*(v7 + 44)] = 0;
  v11 = [*v1 uuid];
  v12 = sub_1A524C674();
  v14 = v13;

  sub_1A44C7FA4(v9, a1, sub_1A44C42B4);
  sub_1A44C44A0(0);
  v16 = a1 + *(v15 + 36);
  *v16 = v12;
  *(v16 + 8) = v14;
  *(v16 + 16) = 1;
  sub_1A44C800C(v1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1A44C7FA4(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  sub_1A44C2AF4(0, &qword_1EB13C488, sub_1A44C70F8, MEMORY[0x1E697C028]);
  v20 = (a1 + *(v19 + 36));
  sub_1A5248394();
  result = sub_1A524CC74();
  *v20 = &unk_1A5342390;
  v20[1] = v18;
  return result;
}

id sub_1A44C0CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v67 = a2;
  v73 = sub_1A5243834();
  v3 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C24C0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - v6;
  v71 = sub_1A5243EC4();
  v8 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4178098(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4178070(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4177FC8(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v66 - v24;
  v77 = *(a1 + 8);
  sub_1A44C64E4(0);
  sub_1A524B6A4();
  v80 = 0u;
  v81 = 0u;
  v82 = 1;
  v25 = sub_1A52429A4();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  (*(v3 + 104))(v69, *MEMORY[0x1E69C2678], v73);
  sub_1A5243ED4();
  (*(v8 + 32))(v14, v10, v71);
  v26 = &v14[*(v12 + 44)];
  *v26 = 0x3FF0000000000000;
  *(v26 + 4) = 256;
  type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  v27 = v68;
  sub_1A52480D4();
  v28 = v27;
  sub_1A52480D4();
  sub_1A524BC74();
  sub_1A52481F4();
  v29 = v74;
  sub_1A44C7FA4(v14, v74, sub_1A4178098);
  v30 = (v29 + *(v16 + 44));
  v31 = v78;
  *v30 = v77;
  v30[1] = v31;
  v30[2] = v79;
  v32 = *(v19 + 44);
  v33 = v70;
  v34 = v72;
  v35 = &v72[v32];
  v36 = *(sub_1A5248A14() + 20);
  v37 = *MEMORY[0x1E697F468];
  v38 = sub_1A52494A4();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #10.0 }

  *v35 = _Q0;
  sub_1A3E42C88(0);
  *&v35[*(v44 + 36)] = 256;
  sub_1A44C7FA4(v29, v34, sub_1A4178070);
  sub_1A44C7FA4(v34, v33, sub_1A4177FC8);
  result = [*v28 localizedTitle];
  if (result)
  {
    v46 = result;
    v47 = sub_1A524C674();
    v49 = v48;

    v75 = v47;
    v76 = v49;
    sub_1A3D5F9DC();
    v50 = sub_1A524A464();
    v52 = v51;
    v54 = v53;
    sub_1A524B484();
    v55 = sub_1A524A364();
    v57 = v56;
    v59 = v58;
    v61 = v60;

    sub_1A3E04DF4(v50, v52, v54 & 1);

    v62 = v66;
    sub_1A44C800C(v33, v66, sub_1A4177FC8);
    v63 = v67;
    sub_1A44C800C(v62, v67, sub_1A4177FC8);
    sub_1A44C441C(0);
    v65 = v63 + *(v64 + 48);
    *v65 = v55;
    *(v65 + 8) = v57;
    *(v65 + 16) = v59 & 1;
    *(v65 + 24) = v61;
    sub_1A3E75E68(v55, v57, v59 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A44C13DC(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1A524CC54();
  v1[7] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A44C1478, v3, v2);
}

uint64_t sub_1A44C1478(uint64_t a1)
{
  if (sub_1A524CDC4())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = **(v1 + 40);
    v5 = swift_task_alloc();
    *(v1 + 80) = v5;
    *v5 = v1;
    v5[1] = sub_1A44C1550;

    return sub_1A44C17E4(v4);
  }
}

uint64_t sub_1A44C1550(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A44C1650, 0, 0);
}

uint64_t sub_1A44C1650(__n128 a1)
{
  *(v1 + 96) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44C16DC, v3, v2);
}

uint64_t sub_1A44C16DC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 8);
  *(v0 + 32) = v1;
  sub_1A44C64E4(0);
  v3 = v1;
  sub_1A524B6B4();
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1A44C177C, v4, v5);
}

uint64_t sub_1A44C177C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1A44C1804()
{
  v16 = v0;
  result = [*(v0 + 16) photoLibrary];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = *(v0 + 16);
  PHPhotoLibrary.fetcher.getter(result, v2);

  v5 = sub_1A3C6E9EC();
  PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(1, v5, 0, 0, 0, &v14);
  v6 = v15;
  v12 = 4;
  v13 = 0;
  v7 = PhotoKitFetcher.fetch(_:for:options:)(&v12, v4, &v14);
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 firstObject];

  if (!v9)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

    goto LABEL_7;
  }

LABEL_8:
  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1A44C1980()
{
  sub_1A44C4F30(0);
  sub_1A44C4FC8(255);
  sub_1A44C530C();
  swift_getOpaqueTypeConformance2();
  return sub_1A524BA54();
}

void sub_1A44C1A34()
{
  sub_1A44C24C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
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

uint64_t sub_1A44C1E60(uint64_t a1)
{
  v2 = sub_1A44C5C5C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A44C1EAC(uint64_t a1)
{
  v2 = sub_1A44C5C5C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A44C1EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v30 = type metadata accessor for SharedAlbumAddToView(0);
  MEMORY[0x1EEE9AC00](v30);
  sub_1A44C24C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v16 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v17 = sub_1A5240D44();
  v18 = [v16 initWithPhotoLibraryURL_];

  (*(v12 + 8))(v14, v11);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  type metadata accessor for LemonadePhotoLibraryContext(0, v20);
  v26 = v18;
  v21 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v26, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v31);
  sub_1A3C799F0(v10, 0, 0, 0, v7, &v31, v21, 2);
  type metadata accessor for SharedAlbumActionViewModel(0);
  sub_1A44C6320(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52F9790;
  v23 = v27;
  *(v22 + 32) = v27;

  v24 = v23;
  sub_1A3D607F0(v28, a4);
  sub_1A3C30368();
  v25 = v24;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44C2458(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A44C24C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A44C2544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v28 = a5;
  v25 = a1;
  v26 = a3;
  v29 = type metadata accessor for SharedAlbumAddToView(0);
  MEMORY[0x1EEE9AC00](v29);
  sub_1A44C24C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v16 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v17 = sub_1A5240D44();
  v18 = [v16 initWithPhotoLibraryURL_];

  (*(v12 + 8))(v14, v11);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  type metadata accessor for LemonadePhotoLibraryContext(0, v20);
  v24 = v18;
  v21 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v24, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v30);
  sub_1A3C799F0(v10, 0, 0, 0, v7, &v30, v21, 2);
  v23 = type metadata accessor for SharedAlbumActionViewModel(0);
  sub_1A44C6320(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52F9790;
  *(v22 + 32) = v25;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44C2AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A44C2B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A44C2BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A44C2C1C(uint64_t a1)
{
  if (!qword_1EB13C238)
  {
    sub_1A44C2CB0(255);
    sub_1A44C2BD4(&qword_1EB13C2C0, sub_1A44C2CB0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C238);
    }
  }
}

void sub_1A44C2CE4(uint64_t a1, double a2)
{
  if (!qword_1EB13C248)
  {
    sub_1A44C5480(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A44C2D80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13C248);
    }
  }
}

void sub_1A44C2DBC(uint64_t a1, double a2)
{
  if (!qword_1EB13C258)
  {
    sub_1A44C2F2C(255, a2);
    sub_1A44C3064(255, v2);
    sub_1A3D6DF58(255);
    sub_1A41278A0(255, v3);
    sub_1A44C3104(255);
    sub_1A44C33E0();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A4127958(v4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C258);
    }
  }
}

void sub_1A44C2F2C(uint64_t a1, double a2)
{
  if (!qword_1EB13C260)
  {
    sub_1A44C3064(255, a2);
    sub_1A3D6DF58(255);
    sub_1A41278A0(255, v2);
    sub_1A44C3104(255);
    sub_1A44C33E0();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A4127958(v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C260);
    }
  }
}

void sub_1A44C3064(uint64_t a1, double a2)
{
  if (!qword_1EB13C268)
  {
    sub_1A44C3104(255);
    sub_1A44C33E0();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C268);
    }
  }
}

void sub_1A44C3140(uint64_t a1)
{
  if (!qword_1EB13C278)
  {
    sub_1A44C31D4(255);
    sub_1A44C2BD4(&qword_1EB13C2A8, sub_1A44C31D4, MEMORY[0x1E6981F48]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C278);
    }
  }
}

void sub_1A44C3208(uint64_t a1)
{
  if (!qword_1EB13C288)
  {
    type metadata accessor for SharedAlbumPreviewsSection(255);
    sub_1A44C3298(255);
    sub_1A44C3380(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13C288);
    }
  }
}

void sub_1A44C32CC(uint64_t a1)
{
  if (!qword_1EB13C298)
  {
    _s12PhotosUICore14CommentSectionVMa_0(255);
    sub_1A44C5480(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C298);
    }
  }
}

void sub_1A44C3380(uint64_t a1)
{
  if (!qword_1EB13C2A0)
  {
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C2A0);
    }
  }
}

unint64_t sub_1A44C33E0()
{
  result = qword_1EB13C2B0;
  if (!qword_1EB13C2B0)
  {
    sub_1A44C3104(255);
    sub_1A44C2BD4(&qword_1EB13C2B8, sub_1A44C3140, MEMORY[0x1E697BE60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C2B0);
  }

  return result;
}

void sub_1A44C34C4(uint64_t a1)
{
  if (!qword_1EB13C2D0)
  {
    sub_1A44C2C1C(255);
    sub_1A44C2BD4(&qword_1EB13C2D8, sub_1A44C2C1C, MEMORY[0x1E6981880]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C2D0);
    }
  }
}

void sub_1A44C3578(uint64_t a1)
{
  if (!qword_1EB13C2E0)
  {
    sub_1A44C3490(255);
    sub_1A4034670(255);
    sub_1A44C3660();
    sub_1A44C3770(&qword_1EB13C2F0, sub_1A4034670, sub_1A44C37E0, MEMORY[0x1E69E7C80]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C2E0);
    }
  }
}

unint64_t sub_1A44C3660()
{
  result = qword_1EB13C2E8;
  if (!qword_1EB13C2E8)
  {
    sub_1A44C3490(255);
    sub_1A44C2C1C(255);
    sub_1A44C2BD4(&qword_1EB13C2D8, sub_1A44C2C1C, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB12BF60, sub_1A3D9D48C, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C2E8);
  }

  return result;
}

uint64_t sub_1A44C3770(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

void sub_1A44C3814(uint64_t a1)
{
  if (!qword_1EB13C300)
  {
    sub_1A44C2CB0(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C300);
    }
  }
}

void sub_1A44C387C()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x340))(v0);

  if (v2)
  {
    sub_1A524B6A4();
    (*((*v1 & *v3) + 0x348))(0);
  }
}

uint64_t objectdestroyTm_55()
{
  v1 = type metadata accessor for SharedAlbumAddToView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1A44C24C0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A44C2458(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v4))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A44C3BD0()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x550))(v0);

  if (v1)
  {
    sub_1A44BACA4(v1);
  }
}

uint64_t sub_1A44C3CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44C3D54(uint64_t a1)
{
  if (!qword_1EB13C308)
  {
    sub_1A44C3DE8(255);
    sub_1A44C5480(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C308);
    }
  }
}

void sub_1A44C3DE8(uint64_t a1)
{
  if (!qword_1EB13C310)
  {
    sub_1A44C3578(255);
    sub_1A44C3490(255);
    sub_1A4034670(255);
    sub_1A44C3660();
    sub_1A44C3770(&qword_1EB13C2F0, sub_1A4034670, sub_1A44C37E0, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C310);
    }
  }
}

void sub_1A44C3F08(uint64_t a1)
{
  if (!qword_1EB13C318)
  {
    sub_1A44C3FA8(255);
    sub_1A44C6384(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C318);
    }
  }
}

void sub_1A44C3FA8(uint64_t a1)
{
  if (!qword_1EB13C320)
  {
    sub_1A44C403C(255);
    sub_1A44C2BD4(&qword_1EB13C368, sub_1A44C403C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C320);
    }
  }
}

void sub_1A44C4090(uint64_t a1, double a2)
{
  if (!qword_1EB13C338)
  {
    sub_1A44C4118(255, &qword_1EB13C340, &qword_1EB13C348, MEMORY[0x1E6981EF8], MEMORY[0x1E697E048], a2);
    sub_1A44C41A0(255, v2);
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB13C338);
    }
  }
}

void sub_1A44C4118(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, double a6)
{
  if (!*a2)
  {
    sub_1A44C5480(255, a3, a4, a5, MEMORY[0x1E697E830]);
    sub_1A3D6D248(255);
    v7 = sub_1A5248804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A44C41A0(uint64_t a1, double a2)
{
  if (!qword_1EB13C350)
  {
    sub_1A44C4234(255, a2);
    sub_1A44C54D4(&qword_1EB13C360, sub_1A44C4234, sub_1A3FA91E8);
    v2 = sub_1A5248AE4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13C350);
    }
  }
}

void sub_1A44C4234(uint64_t a1, double a2)
{
  if (!qword_1EB13C358)
  {
    sub_1A44C4118(255, &qword_1EB12EA88, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], a2);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13C358);
    }
  }
}

void sub_1A44C42B4(uint64_t a1)
{
  if (!qword_1EB13C370)
  {
    sub_1A44C4354(255);
    sub_1A44C6384(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C370);
    }
  }
}

void sub_1A44C4354(uint64_t a1)
{
  if (!qword_1EB13C378)
  {
    sub_1A44C43E8(255);
    sub_1A44C2BD4(&qword_1EB13C390, sub_1A44C43E8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C378);
    }
  }
}

void sub_1A44C443C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1A44C44A0(uint64_t a1)
{
  if (!qword_1EB13C398)
  {
    sub_1A44C42B4(255);
    sub_1A44C5480(255, &qword_1EB13C3A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E6980498]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C398);
    }
  }
}

unint64_t sub_1A44C4538()
{
  result = qword_1EB13C3A8;
  if (!qword_1EB13C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C3A8);
  }

  return result;
}

unint64_t sub_1A44C45C8()
{
  result = qword_1EB13C3B0;
  if (!qword_1EB13C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C3B0);
  }

  return result;
}

void sub_1A44C4670(uint64_t a1)
{
  sub_1A44C24C0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A44C473C(uint64_t a1)
{
  sub_1A44C24C0(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A4128338(319);
    if (v2 <= 0x3F)
    {
      sub_1A44C24C0(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A3C52C70(319, &qword_1EB12B5D8, 0x1E697B678);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A44C4870()
{
  result = qword_1EB13C3B8;
  if (!qword_1EB13C3B8)
  {
    sub_1A44C3D54(255);
    sub_1A44C3578(255);
    sub_1A44C3490(255);
    sub_1A4034670(255);
    sub_1A44C3660();
    sub_1A44C3770(&qword_1EB13C2F0, sub_1A4034670, sub_1A44C37E0, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C3B8);
  }

  return result;
}

void sub_1A44C49F4(uint64_t a1)
{
  sub_1A44C24C0(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A44C24C0(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A44C5480(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A44C4B5C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  swift_getKeyPath();
  v18 = v24;
  sub_1A44C24C0(0, &qword_1EB13E370, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v17 = v24;
  v3 = v25;

  v4 = sub_1A524B6A4();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x1D8))(v4);

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *&v24 = v2;
  *(&v24 + 1) = v1;

  v8 = v2;
  v9 = sub_1A524B6A4();
  v10 = (*((*v5 & *v18) + 0x6F8))(v9);

  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10 & 1;
  *&v19 = v6;
  *(&v19 + 1) = sub_1A44C53BC;
  *&v20 = v7;
  *(&v20 + 1) = sub_1A44BD570;
  *&v21 = 0;
  *(&v21 + 1) = KeyPath;
  *&v22 = sub_1A3E07024;
  *(&v22 + 1) = v12;
  *&v24 = v8;
  *(&v24 + 1) = v1;
  v13 = sub_1A524B6A4();
  (*((*v5 & *v2) + 0x370))(v13);

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v1;
  sub_1A44C4FC8(0);
  sub_1A44C530C();
  v15 = v8;

  sub_1A524B154();

  v27 = v20;
  v28 = v21;
  v29 = v22;
  v24 = v17;
  v25 = v3;
  v26 = v19;
  return sub_1A44C5414(&v24, sub_1A44C4FC8);
}

void sub_1A44C4F30(uint64_t a1)
{
  if (!qword_1EB13C3C0)
  {
    sub_1A44C4FC8(255);
    sub_1A44C530C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C3C0);
    }
  }
}

void sub_1A44C4FC8(uint64_t a1)
{
  if (!qword_1EB13C3C8)
  {
    sub_1A44C5054(255);
    sub_1A44C6320(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C3C8);
    }
  }
}

void sub_1A44C5054(uint64_t a1)
{
  if (!qword_1EB13C3D0)
  {
    sub_1A44C5104(255);
    v3 = v2;
    v4 = sub_1A44C2BD4(&qword_1EB13C3F8, sub_1A44C5104, MEMORY[0x1E6981F48]);
    v7[0] = v3;
    v7[1] = MEMORY[0x1E69E6158];
    v7[2] = v4;
    v7[3] = MEMORY[0x1E69E6168];
    v5 = type metadata accessor for SharedAlbumsSection.NavigationButton(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13C3D0);
    }
  }
}

void sub_1A44C518C(uint64_t a1)
{
  if (!qword_1EB13C3E8)
  {
    sub_1A44C2458(255, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
    type metadata accessor for SharedAlbumsSection.SharedAlbumCell(255);
    sub_1A44C5270();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C3E8);
    }
  }
}

unint64_t sub_1A44C5270()
{
  result = qword_1EB13C3F0;
  if (!qword_1EB13C3F0)
  {
    sub_1A44C2458(255, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C3F0);
  }

  return result;
}

unint64_t sub_1A44C530C()
{
  result = qword_1EB13C400;
  if (!qword_1EB13C400)
  {
    sub_1A44C4FC8(255);
    sub_1A44C53CC(qword_1EB1C4400, sub_1A44C5054, &unk_1A5342308);
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C400);
  }

  return result;
}

uint64_t sub_1A44C53CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A44C5414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44C5480(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A44C54D4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A44C5558(uint64_t a1, void *a2)
{
  v4 = *(_s12PhotosUICore14CommentSectionVMa_0(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1A44BCCDC(a2, v5);
}

uint64_t objectdestroy_68Tm_0()
{
  v1 = _s12PhotosUICore14CommentSectionVMa_0(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A44C24C0(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5249A94();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A44C5780()
{
  _s12PhotosUICore14CommentSectionVMa_0(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A44C5480(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  sub_1A5247C04();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x348))(v0);
}

uint64_t sub_1A44C58F8()
{
  _s12PhotosUICore14CommentSectionVMa_0(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x340))(v0);

  sub_1A44C5480(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

void sub_1A44C5A78()
{
  v1 = (_s12PhotosUICore14CommentSectionVMa_0(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v3 = sub_1A524B6A4();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x310))(v3);
  v7 = v6;

  v8 = sub_1A3DD1E84(*(v2 + v1[9]), v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1A5907AC0](v8, v10, v12, v14);
  v17 = v16;

  (*((*v4 & *v18) + 0x318))(v15, v17);
}

unint64_t sub_1A44C5C5C()
{
  result = qword_1EB13C408;
  if (!qword_1EB13C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C408);
  }

  return result;
}

void sub_1A44C5CB0(char a1)
{
  v3 = type metadata accessor for SharedAlbumAddToView(0);
  v4 = (v1 + *(v3 + 24) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));
  v6 = *v4;
  v5 = v4[1];
  v8[0] = v6;
  v8[1] = v5;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (a1)
  {
    LOBYTE(v8[0]) = 1;
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x4F8))(v8);
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x6E0))(0, 0);
  }
}

void sub_1A44C5E70()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x6E0))(0, 0);
}

void sub_1A44C5F7C()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x650))(v0);

  v2 = sub_1A524B6A4();
  v3 = (*((*v1 & *v4) + 0x550))(v2);

  if (v3)
  {
    sub_1A44BACA4(v3);
  }
}

void *sub_1A44C6108()
{
  v1 = *(type metadata accessor for SharedAlbumAddToView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A44BB510(v2);
}

void sub_1A44C6168(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x6E0))(a1, a2);
}

uint64_t sub_1A44C6284(uint64_t a1, uint64_t a2)
{
  sub_1A44C2B68(0, &qword_1EB132C88, sub_1A4126ED4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44C6320(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A44C6384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A44C6400(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126AC0, 0x1E6978650);
  if (v1 <= 0x3F)
  {
    sub_1A44C64E4(319);
    if (v2 <= 0x3F)
    {
      sub_1A44C6384(319, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A44C64E4(uint64_t a1)
{
  if (!qword_1EB13C410)
  {
    sub_1A44C2458(255, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
    v1 = sub_1A524B6D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C410);
    }
  }
}

void sub_1A44C6590(uint64_t a1)
{
  sub_1A44C6384(319, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A44C6634(uint64_t a1)
{
  sub_1A524B974();
  if (v1 <= 0x3F)
  {
    sub_1A44C2458(319, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A44C6700(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A44C6860(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
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

      return result;
    }
  }

  if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1A44C6A44()
{
  result = qword_1EB13C418;
  if (!qword_1EB13C418)
  {
    sub_1A44C6B0C(255);
    sub_1A44C4FC8(255);
    sub_1A44C530C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C418);
  }

  return result;
}

void sub_1A44C6B0C(uint64_t a1)
{
  if (!qword_1EB13C420)
  {
    sub_1A44C4F30(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C420);
    }
  }
}

void sub_1A44C6BC0(uint64_t a1)
{
  if (!qword_1EB13C430)
  {
    sub_1A44C6C60(255);
    sub_1A44C6384(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C430);
    }
  }
}

void sub_1A44C6C60(uint64_t a1)
{
  if (!qword_1EB13C438)
  {
    sub_1A44C6CF4(255);
    sub_1A44C2BD4(&qword_1EB13C450, sub_1A44C6CF4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C438);
    }
  }
}

void sub_1A44C6D28(uint64_t a1)
{
  if (!qword_1EB13C448)
  {
    type metadata accessor for SharedAlbumsSection.SharedAlbumCell(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13C448);
    }
  }
}

unint64_t sub_1A44C6DB0()
{
  result = qword_1EB13C458;
  if (!qword_1EB13C458)
  {
    sub_1A44C2B68(255, &qword_1EB13C428, sub_1A44C6BC0, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A44C7820(&qword_1EB13C460, sub_1A44C6BC0, &qword_1EB13C468, sub_1A44C6C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C458);
  }

  return result;
}

unint64_t sub_1A44C6EA0()
{
  result = qword_1EB16C060[0];
  if (!qword_1EB16C060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16C060);
  }

  return result;
}

void sub_1A44C6F5C(uint64_t a1)
{
  if (!qword_1EB13C478)
  {
    sub_1A44C6CF4(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C478);
    }
  }
}

void sub_1A44C6FC4(uint64_t a1)
{
  if (!qword_1EB13C480)
  {
    sub_1A44C43E8(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C480);
    }
  }
}

uint64_t sub_1A44C702C()
{
  v2 = *(type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A44C13DC(v0 + v3);
}

void sub_1A44C70F8(uint64_t a1)
{
  if (!qword_1EB13C490)
  {
    sub_1A44C42B4(255);
    sub_1A44C7820(&qword_1EB13C498, sub_1A44C42B4, &qword_1EB13C4A0, sub_1A44C4354);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C490);
    }
  }
}

void sub_1A44C71D8(uint64_t a1)
{
  sub_1A44C24C0(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A524B974();
    if (v2 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A44C72A8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5248284() - 8) + 64);
  v7 = *(*(a3 + 24) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 7;
  v14 = v8 + (v10 | 7) + 1;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((v11 + ((v10 + 16) & ~v10) + (v14 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = ((((a1 + v14) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v26 = *(*(*(a3 + 24) - 8) + 48);

    return v26((v24 + v10 + 8) & ~v10);
  }

  else
  {
    v25 = *v24;
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void sub_1A44C7494(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + (v12 | 7) + 1;
  v15 = ((((*(v10 + 64) + ((v12 + 16) & ~v12) + (v14 & ~(v12 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((*(v10 + 64) + ((v12 + 16) & ~v12) + (v14 & ~(v12 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v22 = ((((a1 + v14) & ~(v12 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v24 = *(v10 + 56);

        v24((v22 + v12 + 8) & ~v12, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      return;
    }
  }

  if (((((*(v10 + 64) + ((v12 + 16) & ~v12) + (v14 & ~(v12 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((*(v10 + 64) + ((v12 + 16) & ~v12) + (v14 & ~(v12 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_1A44C76C4()
{
  result = qword_1EB13C4A8;
  if (!qword_1EB13C4A8)
  {
    sub_1A44C2AF4(255, &qword_1EB13C488, sub_1A44C70F8, MEMORY[0x1E697C028]);
    sub_1A44C42B4(255);
    sub_1A44C7820(&qword_1EB13C498, sub_1A44C42B4, &qword_1EB13C4A0, sub_1A44C4354);
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB128940, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C4A8);
  }

  return result;
}

uint64_t sub_1A44C7820(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A44C2BD4(a3, a4, MEMORY[0x1E69817F8]);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A44C7958@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1A44C7994()
{
  v1 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v1;
  v2 = *(type metadata accessor for SharedAlbumsSection.PickerView(0, v5) - 8);
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return sub_1A44BE86C(v3);
}

uint64_t sub_1A44C7A08(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A44C24C0(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A44C7AC4(uint64_t a1)
{
  if (!qword_1EB13C4C8)
  {
    sub_1A44C7B58(255);
    sub_1A44C2BD4(&qword_1EB13C508, sub_1A44C7B58, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C4C8);
    }
  }
}

void sub_1A44C7BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A44C7C78(uint64_t a1, double a2)
{
  if (!qword_1EB13C4E8)
  {
    sub_1A44C7D4C(255);
    sub_1A3EE1D04(255);
    sub_1A44C7DE0();
    sub_1A44C2BD4(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C4E8);
    }
  }
}

void sub_1A44C7D80(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB13C4F8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C4F8);
    }
  }
}

unint64_t sub_1A44C7DE0()
{
  result = qword_1EB13C500;
  if (!qword_1EB13C500)
  {
    sub_1A44C7D4C(255);
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB127800, sub_1A3D6D248, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C500);
  }

  return result;
}

void sub_1A44C7EA8(uint64_t a1)
{
  if (!qword_1EB13C510)
  {
    sub_1A44C7B58(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C510);
    }
  }
}

void sub_1A44C7F10(uint64_t a1)
{
  if (!qword_1EB13C520)
  {
    sub_1A40EAF5C(255);
    sub_1A44C2BD4(&qword_1EB1248E8, sub_1A40EAF5C, MEMORY[0x1E697DB78]);
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C520);
    }
  }
}

uint64_t sub_1A44C7FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44C800C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A44C8074()
{
  result = qword_1EB13C528;
  if (!qword_1EB13C528)
  {
    sub_1A44C2AF4(255, &qword_1EB13C518, sub_1A44C7A88, sub_1A44C7F10);
    sub_1A44C8154();
    sub_1A44C2BD4(&qword_1EB13C540, sub_1A44C7F10, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C528);
  }

  return result;
}

unint64_t sub_1A44C8154()
{
  result = qword_1EB13C530;
  if (!qword_1EB13C530)
  {
    sub_1A44C7A88(255);
    sub_1A44C2BD4(&qword_1EB13C538, sub_1A44C7AC4, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C530);
  }

  return result;
}

double sub_1A44C8214@<D0>(uint64_t a1@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v25 = sub_1A524B544();
  sub_1A524A1A4();
  v5 = sub_1A524A154();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_1A524A1B4();
  sub_1A441183C(v4);
  KeyPath = swift_getKeyPath();
  v8 = sub_1A524B4A4();
  v9 = swift_getKeyPath();
  v10 = sub_1A524A064();
  LOBYTE(v27) = 1;
  v11 = sub_1A524A064();
  sub_1A524BC74();
  sub_1A52481F4();
  *&v26[7] = v27;
  *&v26[23] = v28;
  *&v26[39] = v29;
  sub_1A44C8814(0, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
  v13 = (a1 + *(v12 + 36));
  v14 = *(sub_1A5248A14() + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1A52494A4();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #10.0 }

  *v13 = _Q0;
  sub_1A3E42C88(0);
  *&v13[*(v22 + 36)] = 256;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v23 = *&v26[16];
  *(a1 + 97) = *v26;
  *a1 = v25;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v6;
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 80) = 1;
  *(a1 + 88) = 1;
  *(a1 + 96) = v11;
  *(a1 + 113) = v23;
  result = *&v26[32];
  *(a1 + 129) = *&v26[32];
  *(a1 + 144) = *&v26[47];
  return result;
}

uint64_t sub_1A44C84A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = sub_1A52407E4();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v22 = sub_1A5243C24();
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = sub_1A5243C14();
  (*(*a1 + 184))(v16);
  sub_1A52408B4();
  sub_1A52407F4();
  v17 = v22;
  v18 = (*(v10 + 16))(v12, v15, v22);
  (*(*a1 + 136))(v18);
  v19 = v23;
  (*(v4 + 16))(v6, v9, v23);
  sub_1A5243554();
  (*(v4 + 8))(v9, v19);
  return (*(v10 + 8))(v15, v17);
}

void sub_1A44C8784(uint64_t a1)
{
  if (!qword_1EB13C550)
  {
    sub_1A44C8814(255, &qword_1EB13C558, sub_1A44C8888, sub_1A44C88E8);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C550);
    }
  }
}

void sub_1A44C8814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A44C8888(uint64_t a1)
{
  if (!qword_1EB13C560)
  {
    sub_1A3E3527C(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C560);
    }
  }
}

void sub_1A44C88E8(uint64_t a1)
{
  if (!qword_1EB13C568)
  {
    sub_1A44C897C();
    sub_1A44C89D4(&qword_1EB127A40, sub_1A44C897C, MEMORY[0x1E69809C8]);
    v1 = sub_1A5249C54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C568);
    }
  }
}

void sub_1A44C897C()
{
  if (!qword_1EB127A38)
  {
    v0 = sub_1A5249F04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127A38);
    }
  }
}

uint64_t sub_1A44C89D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A44C8A1C()
{
  result = qword_1EB13C570;
  if (!qword_1EB13C570)
  {
    sub_1A44C8814(255, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
    sub_1A44C8C34(&qword_1EB13C578, sub_1A44C8784, sub_1A44C8B28);
    sub_1A44C89D4(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C570);
  }

  return result;
}

unint64_t sub_1A44C8B28()
{
  result = qword_1EB13C580;
  if (!qword_1EB13C580)
  {
    sub_1A44C8814(255, &qword_1EB13C558, sub_1A44C8888, sub_1A44C88E8);
    sub_1A44C8C34(&qword_1EB13C588, sub_1A44C8888, sub_1A44C8CB4);
    sub_1A44C89D4(&qword_1EB13C590, sub_1A44C88E8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C580);
  }

  return result;
}

uint64_t sub_1A44C8C34(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A44C8CB4()
{
  result = qword_1EB13DA20;
  if (!qword_1EB13DA20)
  {
    sub_1A3E3527C(255);
    sub_1A3E4509C();
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DA20);
  }

  return result;
}

uint64_t sub_1A44C8D70@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = sub_1A5243934();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v9 - v6;
  sub_1A5243904();
  (*(v2 + 16))(v4, v7, v1);
  v10 = 1;

  sub_1A524B954();
  v9[0] = v11;
  sub_1A44C8814(0, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
  sub_1A5243544();
  sub_1A44C8A1C();
  sub_1A44C89D4(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
  sub_1A5242914();
  return (*(v2 + 8))(v7, v1);
}

void sub_1A44C8FD8(uint64_t a1)
{
  if (!qword_1EB13C5A0)
  {
    sub_1A44C8814(255, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
    sub_1A5243544();
    sub_1A44C8A1C();
    sub_1A44C89D4(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
    v1 = sub_1A5242904();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C5A0);
    }
  }
}

uint64_t type metadata accessor for LemonadeMemoriesShelfCreationButton(uint64_t a1)
{
  result = qword_1EB17A9A0;
  if (!qword_1EB17A9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A44C9128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A44C918C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x1E6981E70];
  v5 = MEMORY[0x1E697F948];
  sub_1A44CA990(0, &qword_1EB122AE0, sub_1A44CA954, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = v68 - v7;
  v8 = type metadata accessor for LemonadeMemoriesShelfCreationButton(0);
  v9 = v8 - 8;
  v70 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v71 = v11;
  v72 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44CB064(0, v10);
  v79 = v12;
  v74 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v73 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44CA990(0, &qword_1EB122B30, sub_1A44CA9FC, v4, v5);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v83 = v68 - v15;
  sub_1A44CC4B8(0, &qword_1EB122C38, sub_1A44CAA44, sub_1A44CB064, MEMORY[0x1E697F948]);
  v75 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v77 = v68 - v18;
  sub_1A44CA9FC(0, v17);
  v80 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v78 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44CAA44(0);
  v76 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v69 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44CA954(0);
  v87 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v82 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A52453A4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v88 = v68 - v30;
  sub_1A44CB134(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v68 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v68 - v39;
  v41 = *(v9 + 32);
  v84 = v2;
  v42 = *(v2 + v41);
  if (v42)
  {
    (*(*v42 + 192))(v38);
    (*(v26 + 56))(v36, 0, 1, v25);
  }

  else
  {
    (*(v26 + 56))(v36, 1, 1, v25);
  }

  sub_1A475C0F0(v36, v43, v40);
  sub_1A44CB168(v36, sub_1A44CB134);
  sub_1A44CC5BC(v40, v33, sub_1A44CB134);
  if ((*(v26 + 48))(v33, 1, v25) == 1)
  {
    sub_1A44CB168(v33, sub_1A44CB134);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_1A44CB1C8();
    sub_1A5249744();
    return sub_1A44CB168(v40, sub_1A44CB134);
  }

  v68[1] = a1;
  v44 = *(v26 + 32);
  v44(v88, v33, v25);
  if (![objc_opt_self() isMemoryCreationEnabled] || (sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0), v45 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_sharedInstance), v46 = objc_msgSend(v45, sel_showFreeformMemoryCreationButtonInMemoryShelf), v45, !v46) || (MEMORY[0x1A590D320]() & 1) != 0 || (v48 = static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)(v88), v90[0] = *(*(v84 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 28)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext), v49 = sub_1A475C390(v90), (v48 & 1) == 0) || !v49)
  {
    (*(v26 + 8))(v88, v25);
    goto LABEL_10;
  }

  static LemonadeMemoriesCreationAvailabilityUtils.navigationPermission(for:)(v88, &v89);
  if (v89)
  {
    if (v89 == 1)
    {
      (*(v26 + 16))(v28, v88, v25);
      v50 = v72;
      sub_1A44CC5BC(v84, v72, type metadata accessor for LemonadeMemoriesShelfCreationButton);
      v51 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v52 = (v27 + *(v70 + 80) + v51) & ~*(v70 + 80);
      v53 = swift_allocObject();
      v54 = v44;
      v55 = v53;
      v54(v53 + v51, v28, v25);
      v56 = sub_1A44CC450(v50, v55 + v52, type metadata accessor for LemonadeMemoriesShelfCreationButton);
      MEMORY[0x1EEE9AC00](v56);
      v68[-2] = v84;
      sub_1A44CC4B8(0, &qword_1EB1226F8, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F960]);
      sub_1A44CAD84(v57);
      v58 = v73;
      sub_1A524B704();
      v59 = v74;
      v60 = v79;
      (*(v74 + 16))(v77, v58, v79);
      swift_storeEnumTagMultiPayload();
      sub_1A44CB2F8();
      sub_1A44CAEF8(&qword_1EB121AB8, sub_1A44CB064, MEMORY[0x1E697D680]);
      v61 = v78;
      sub_1A5249744();
      sub_1A44CB508(v61, v83, sub_1A44CA9FC);
      swift_storeEnumTagMultiPayload();
      sub_1A44CB248(v62);
      v63 = v82;
      sub_1A5249744();
      sub_1A44CB570(v61, sub_1A44CA9FC);
      (*(v59 + 8))(v58, v60);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1A44CB248(v67);
      v63 = v82;
      sub_1A5249744();
    }
  }

  else
  {
    v64 = v69;
    sub_1A44C9D6C(v69);
    sub_1A44CB508(v64, v77, sub_1A44CAA44);
    swift_storeEnumTagMultiPayload();
    sub_1A44CB2F8();
    sub_1A44CAEF8(&qword_1EB121AB8, sub_1A44CB064, MEMORY[0x1E697D680]);
    v65 = v78;
    sub_1A5249744();
    sub_1A44CB508(v65, v83, sub_1A44CA9FC);
    swift_storeEnumTagMultiPayload();
    sub_1A44CB248(v66);
    v63 = v82;
    sub_1A5249744();
    sub_1A44CB570(v65, sub_1A44CA9FC);
    sub_1A44CB570(v64, sub_1A44CAA44);
  }

  sub_1A44CB508(v63, v86, sub_1A44CA954);
  swift_storeEnumTagMultiPayload();
  sub_1A44CB1C8();
  sub_1A5249744();
  sub_1A44CB570(v63, sub_1A44CA954);
  (*(v26 + 8))(v88, v25);
  return sub_1A44CB168(v40, sub_1A44CB134);
}

void sub_1A44C9D6C(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for LemonadeMemoriesShelfCreationButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A44CAB98(0, v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44CAA80(0, v7);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeShelfDisclosureOptions(0);
  v29 = v1;
  sub_1A44CC5BC(v1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMemoriesShelfCreationButton);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_1A44CC450(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LemonadeMemoriesShelfCreationButton);
  sub_1A44CC4B8(0, &qword_1EB1226F8, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F960]);
  v18 = v17;
  v20 = sub_1A44CAD84(v19);

  sub_1A472916C(v21, sub_1A44CC1B8, 0, 0, sub_1A44CC1BC, v16, v18, v9, v20);
  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
    v22 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v22 enableHeaderTitleChevron];
  }

  sub_1A44CC4B8(0, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
  sub_1A44CAEF8(&unk_1EB1253F0, sub_1A44CAB98, &unk_1A535BA5C);
  sub_1A44CAF40(v23);
  sub_1A524A584();
  sub_1A44CB570(v9, sub_1A44CAB98);
  v24 = v28;
  (*(v12 + 32))(v28, v14, v11);
  sub_1A44CAA44(0);
  v26 = (v24 + *(v25 + 36));
  *v26 = sub_1A44CBD24;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = 0;
}

void sub_1A44CA198(uint64_t a1, uint64_t a2)
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeMemoriesShelfCreationButton(0);
  sub_1A3FF29A0(v6);
  sub_1A3D63A8C(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A44CB168(v6, sub_1A3D63A58);
  static LemonadeMemoriesCreationUnavailableAlert.show(state:viewController:photoLibrary:)(a1, 0, *(a2 + *(v7 + 20)));
}

uint64_t sub_1A44CA2F8@<X0>(uint64_t a1@<X8>)
{
  v52[3] = a1;
  sub_1A4499BCC(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE213C(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44CC4B8(0, &qword_1EB13C5B0, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F948]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v52 - v10;
  sub_1A44CABB8(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()() && (sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328), v17 = [swift_getObjCClassFromMetadata() sharedInstance], v18 = objc_msgSend(v17, sel_enableHeaderTitleChevron), v17, !v18))
  {
    sub_1A524B574();
    sub_1A52495A4();
    v38 = sub_1A52495B4();
    (*(*(v38 - 8) + 56))(v3, 0, 1, v38);
    v39 = sub_1A524B584();

    sub_1A44CB168(v3, sub_1A4499BCC);
    v40 = (v7 + *(v5 + 36));
    sub_1A3F32A14(0);
    v42 = *(v41 + 28);
    v43 = *MEMORY[0x1E69816C0];
    v44 = sub_1A524B5B4();
    (*(*(v44 - 8) + 104))(v40 + v42, v43, v44);
    *v40 = swift_getKeyPath();
    *v7 = v39;
    sub_1A44CC5BC(v7, v11, sub_1A3EE213C);
    swift_storeEnumTagMultiPayload();
    sub_1A44CACBC(255);
    v46 = v45;
    v47 = sub_1A5243474();
    v48 = sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    v49 = MEMORY[0x1E6981148];
    v53 = MEMORY[0x1E6981148];
    v54 = v47;
    v50 = MEMORY[0x1E6981138];
    v55 = MEMORY[0x1E6981138];
    v56 = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = v49;
    v54 = v46;
    v55 = v50;
    v56 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1A3F37498();
    sub_1A5249744();
    return sub_1A44CB168(v7, sub_1A3EE213C);
  }

  else
  {
    v19 = sub_1A524C634();
    v20 = PXMemoryCreationLocalizedString(v19);

    v21 = sub_1A524C674();
    v23 = v22;

    v53 = v21;
    v54 = v23;
    sub_1A3D5F9DC();
    v24 = sub_1A524A464();
    v52[0] = v13;
    v52[1] = v9;
    v25 = v24;
    v27 = v26;
    v52[2] = v5;
    v53 = v24;
    v54 = v26;
    LOBYTE(v23) = v28 & 1;
    LOBYTE(v55) = v28 & 1;
    v56 = v29;
    sub_1A44CACBC(0);
    v31 = v30;
    v32 = sub_1A5243474();
    v33 = sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    v52[4] = MEMORY[0x1E6981148];
    v52[5] = v32;
    v52[6] = MEMORY[0x1E6981138];
    v52[7] = v33;
    v34 = v16;
    v35 = swift_getOpaqueTypeConformance2();
    sub_1A524A4B4();
    sub_1A3E04DF4(v25, v27, v23);

    v36 = v52[0];
    (*(v14 + 16))(v11, v34, v52[0]);
    swift_storeEnumTagMultiPayload();
    v53 = MEMORY[0x1E6981148];
    v54 = v31;
    v55 = MEMORY[0x1E6981138];
    v56 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1A3F37498();
    sub_1A5249744();
    return (*(v14 + 8))(v34, v36);
  }
}

void sub_1A44CA990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A44CAA80(uint64_t a1, double a2)
{
  if (!qword_1EB121FF0)
  {
    sub_1A44CAB98(255, a2);
    sub_1A44CC4B8(255, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A44CAEF8(&unk_1EB1253F0, sub_1A44CAB98, &unk_1A535BA5C);
    sub_1A44CAF40(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FF0);
    }
  }
}

void sub_1A44CABB8(uint64_t a1)
{
  if (!qword_1EB122028)
  {
    sub_1A44CACBC(255);
    sub_1A5243474();
    sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122028);
    }
  }
}

void sub_1A44CACBC(uint64_t a1)
{
  if (!qword_1EB121EE8)
  {
    sub_1A5243474();
    sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EE8);
    }
  }
}

unint64_t sub_1A44CAD84(double a1)
{
  result = qword_1EB122700;
  if (!qword_1EB122700)
  {
    sub_1A44CC4B8(255, &qword_1EB1226F8, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F960]);
    sub_1A44CACBC(255);
    sub_1A5243474();
    sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3F37498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122700);
  }

  return result;
}

uint64_t sub_1A44CAEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A44CAF40(double a1)
{
  result = qword_1EB1241D8;
  if (!qword_1EB1241D8)
  {
    sub_1A44CC4B8(255, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A44CAEF8(&unk_1EB1253F0, sub_1A44CAB98, &unk_1A535BA5C);
    sub_1A44CAEF8(&qword_1EB1245F8, sub_1A3FA95D4, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241D8);
  }

  return result;
}

void sub_1A44CB084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A44CC4B8(255, &qword_1EB1226F8, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F960]);
    v8 = v7;
    v10 = sub_1A44CAD84(v9);
    v11 = a3(a1, v8, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A44CB168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A44CB1C8()
{
  result = qword_1EB122470;
  if (!qword_1EB122470)
  {
    sub_1A44CA954(255);
    sub_1A44CB248(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122470);
  }

  return result;
}

unint64_t sub_1A44CB248(double a1)
{
  result = qword_1EB1227D0;
  if (!qword_1EB1227D0)
  {
    sub_1A44CA9FC(255, a1);
    sub_1A44CB2F8();
    sub_1A44CAEF8(&qword_1EB121AB8, sub_1A44CB064, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227D0);
  }

  return result;
}

unint64_t sub_1A44CB2F8()
{
  result = qword_1EB123FE0;
  if (!qword_1EB123FE0)
  {
    sub_1A44CAA44(255);
    sub_1A44CAB98(255, v1);
    sub_1A44CC4B8(255, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A44CAEF8(&unk_1EB1253F0, sub_1A44CAB98, &unk_1A535BA5C);
    sub_1A44CAF40(v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FE0);
  }

  return result;
}

void sub_1A44CB43C()
{
  v1 = *(sub_1A52453A4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LemonadeMemoriesShelfCreationButton(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1A44CA198(v0 + v2, v5);
}

uint64_t sub_1A44CB508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44CB570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44CB5EC()
{
  v2 = sub_1A5244854();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  objc_opt_self();
  sub_1A4036598();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A44CB878()
{
  v0 = sub_1A52434D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5243A34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeMemoriesShelfCreationButton(0);
  sub_1A44CC22C(v3);
  PXDisplayCollectionDetailedCountsMake();
  v43[3] = &type metadata for GenerativeStoryTransitionIdentifier;
  sub_1A52434B4();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_0(v43);
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 || (sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0), v10 = [swift_getObjCClassFromMetadata() sharedInstance], v11 = objc_msgSend(v10, sel_fullScreenTransitionType), v10, v11 != 1) || (v12 = sub_1A4654ADC()) == 0)
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v13 = v12;
  result = [v12 view];
  if (result)
  {
    v15 = result;
    sub_1A44CAEF8(&qword_1EB13C5A8, MEMORY[0x1E69C2790], MEMORY[0x1E69C2798]);
    v16 = sub_1A524DB54();

    if (v16)
    {
      [v16 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = [v13 view];
      [v16 convertRect:v25 toView:{v18, v20, v22, v24}];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      result = [v13 view];
      if (result)
      {
        v34 = result;
        [result bounds];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v44.origin.x = v36;
        v44.origin.y = v38;
        v44.size.width = v40;
        v44.size.height = v42;
        v46.origin.x = v27;
        v46.origin.y = v29;
        v46.size.width = v31;
        v46.size.height = v33;
        v45 = CGRectIntersection(v44, v46);
        v47.origin.x = v27;
        v47.origin.y = v29;
        v47.size.width = v31;
        v47.size.height = v33;
        LODWORD(v34) = CGRectEqualToRect(v45, v47);

        (*(v5 + 8))(v7, v4);
        return v34;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);

    return 0;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1A44CBC90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A44CB508(a1, a2, sub_1A44CAB98);
  sub_1A44CC4B8(0, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
  *(a2 + *(v3 + 36)) = 256;
}

void sub_1A44CBD24()
{
  objc_opt_self();
  sub_1A403658C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44CBE08(__int128 *a1)
{
  v2 = sub_1A5243474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 16);
  v6 = *(a1 + 3);
  v8 = *a1;
  v9 = v4;
  v10 = v6;
  sub_1A5247D74();
  sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  sub_1A524A944();
  return (*(v3 + 8))(v5, v2);
}

void sub_1A44CBF7C(uint64_t a1)
{
  type metadata accessor for LemonadeShelfDisclosureOptions(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
    if (v2 <= 0x3F)
    {
      sub_1A44C9128(319, &qword_1EB125038, type metadata accessor for LemonadeMemoriesCreationAvailabilityManager, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A44C9128(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LemonadeNavigationContext(319);
          if (v5 <= 0x3F)
          {
            sub_1A44C9128(319, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
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

unint64_t sub_1A44CC100()
{
  result = qword_1EB1223B0;
  if (!qword_1EB1223B0)
  {
    sub_1A44CA990(255, &qword_1EB1223A8, sub_1A44CA954, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A44CB1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1223B0);
  }

  return result;
}

void sub_1A44CC1BC()
{
  type metadata accessor for LemonadeMemoriesShelfCreationButton(0);

  sub_1A44CB5EC();
}

uint64_t sub_1A44CC22C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C24E0];
  sub_1A44C9128(0, &qword_1EB128A98, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1A44CC53C(v2, &v16 - v10, &qword_1EB128A98, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A52434D4();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A44CC450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A44CC4B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A44CC53C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A44C9128(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A44CC5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id PhotosDetailsLocationSearchViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosDetailsLocationSearchViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsLocationSearchViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosDetailsLocationSearchViewFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosDetailsLocationSearchViewFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s12PhotosUICore0A32DetailsLocationSearchViewFactoryC06searchF10Controller6assets8delegate10completionSo06UIViewI0CSo13PHFetchResultCySo7PHAssetCG_So08PXPhotoscdE8Delegate_pSgySbcSgtFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a2;
  v77 = a3;
  v78 = type metadata accessor for PhotosDetailsSearchView(0);
  MEMORY[0x1EEE9AC00](v78);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v72 - v10);
  v74 = [a1 count];
  v75 = a4;
  if (v74 > 1)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
LABEL_8:
    v20 = 1;
    goto LABEL_9;
  }

  v16 = [a1 objectAtIndexedSubscript_];
  v17 = [v16 px_singleLineMailingAddress];

  if (v17)
  {
    v14 = sub_1A524C674();
    v15 = v18;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v19 = [a1 objectAtIndexedSubscript_];
  v20 = [v19 location];

  if (v20)
  {
    v13 = v11;

    goto LABEL_8;
  }

  v13 = v11;
LABEL_9:
  v21 = type metadata accessor for PhotosDetailsLocationSearchDataSource(0, v12);
  v22 = a1;
  v23 = sub_1A3EBC7B4(v22, v20);
  v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0xC8);
  v25 = swift_unknownObjectRetain();
  v24(v25);
  v81 = v21;
  v82 = &off_1F16E6170;
  v80[0] = v23;
  v26 = v23;
  v27 = sub_1A3C30368();
  v28 = v13;
  sub_1A49CC818(v80, v14, v15, v27 & 1, v13);
  sub_1A3EBE334(v13, v7);
  sub_1A44CCD14(0);
  v30 = objc_allocWithZone(v29);
  v31 = sub_1A5249624();
  v32 = swift_allocObject();
  v33 = v77;
  v32[2] = v31;
  v32[3] = v33;
  v34 = v75;
  v32[4] = v75;
  v35 = v31;
  sub_1A3C66EE8(v33, v34);
  v36 = sub_1A5249634();
  v38 = (v37 + *(v78 + 32));
  v39 = *v38;
  v40 = v38[1];
  *v38 = sub_1A44CCDD0;
  v38[1] = v32;
  sub_1A3C33378(v39, v40);
  v36(v80, 0);
  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  v42 = *((*MEMORY[0x1E69E7D40] & *v26) + 0xE0);
  v43 = v35;
  v42(sub_1A44CCEC0, v41);
  if (v74 > 1)
  {
    sub_1A44CCF44(v28);
LABEL_14:

    return v43;
  }

  v44 = [v22 objectAtIndexedSubscript_];
  sub_1A44CCEF8();
  if (![swift_getObjCClassFromMetadata() canPerformOnAsset:v44 inAssetCollection:0])
  {
    sub_1A44CCF44(v28);

    goto LABEL_14;
  }

  v45 = sub_1A524C634();
  v46 = PXLocalizedString(v45);
  v74 = v28;
  v47 = v46;

  v73 = sub_1A524C674();
  v49 = v48;

  v50 = sub_1A524B3B4();
  v51 = swift_allocObject();
  v51[2] = v22;
  v51[3] = v43;
  v53 = v76;
  v52 = v77;
  v51[4] = v44;
  v51[5] = v53;
  v51[6] = v26;
  v51[7] = v52;
  v51[8] = v34;
  v54 = v22;
  swift_unknownObjectRetain();
  v55 = v26;
  v43;
  sub_1A3C66EE8(v52, v34);
  v56 = v44;
  sub_1A49CC4A4(v73, v49, v50, sub_1A44CCFA0, v51, v80);
  v57 = v80[0];
  v58 = v80[1];
  v59 = v80[2];
  v60 = v81;
  v61 = v82;
  v62 = sub_1A5249634();
  v64 = (v63 + *(v78 + 36));
  v65 = *v64;
  v66 = v64[1];
  v67 = v64[2];
  v68 = v64[3];
  v69 = v64[4];
  *v64 = v57;
  v64[1] = v58;
  v64[2] = v59;
  v64[3] = v60;
  v64[4] = v61;
  v70 = sub_1A3EC6998(v65, v66, v67, v68, v69);
  v62(v79, 0, v70);

  sub_1A44CCF44(v74);
  return v43;
}

void sub_1A44CCD14(uint64_t a1)
{
  if (!qword_1EB13C5B8)
  {
    type metadata accessor for PhotosDetailsSearchView(255);
    sub_1A44CCD78();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C5B8);
    }
  }
}

unint64_t sub_1A44CCD78()
{
  result = qword_1EB13C5C0;
  if (!qword_1EB13C5C0)
  {
    type metadata accessor for PhotosDetailsSearchView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C5C0);
  }

  return result;
}

void sub_1A44CCDD0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v6[4] = sub_1A44CD51C;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3C2E0D0;
  v6[3] = &block_descriptor_25_1;
  v5 = _Block_copy(v6);
  sub_1A3C66EE8(v2, v3);

  [v1 dismissViewControllerAnimated:1 completion:v5];
  _Block_release(v5);
}

id sub_1A44CCEC0()
{
  v1 = [*(v0 + 16) undoManager];

  return v1;
}

unint64_t sub_1A44CCEF8()
{
  result = qword_1EB12E198;
  if (!qword_1EB12E198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12E198);
  }

  return result;
}

uint64_t sub_1A44CCF44(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsSearchView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A44CCFA0()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = [objc_allocWithZone(PXRevertAssetLocationAction) initWithAssets_];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v17 = v1;
    v10 = [v1 undoManager];
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v2;
    v11[4] = v4;
    v22 = sub_1A44CD1C8;
    v23 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1A3D6084C;
    v21 = &block_descriptor_19_4;
    v12 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v13 = v4;
    v14 = v3;

    [v9 executeWithUndoManager:v10 completionHandler:v12];
    _Block_release(v12);

    v1 = v17;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v6;
  v22 = sub_1A44CD1C0;
  v23 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1A3C2E0D0;
  v21 = &block_descriptor_202;
  v16 = _Block_copy(&aBlock);
  sub_1A3C66EE8(v5, v6);

  [v1 dismissViewControllerAnimated:1 completion:v16];
  _Block_release(v16);
}

void sub_1A44CD1C8(uint64_t a1, void *a2)
{
  v3 = v2[2];
  if (a1)
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = sub_1A524D224();
    v7 = sub_1A475874C();
    swift_beginAccess();
    v8 = *v7;
    if (os_log_type_enabled(*v7, v6))
    {
      v9 = v8;
      v10 = v3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136446210;
      v13 = [v10 uuid];

      if (v13)
      {
        v14 = sub_1A524C674();
        v16 = v15;

        sub_1A3C2EF94(v14, v16, &v28);
      }

      __break(1u);
LABEL_13:

      __break(1u);
      return;
    }

    if (v5 && ([v5 respondsToSelector_] & 1) != 0)
    {
      [v5 locationSearchDataSourceDidRevertLocation_];
    }
  }

  else
  {
    v5 = a2;
    v17 = sub_1A524D244();
    v18 = sub_1A475874C();
    swift_beginAccess();
    v19 = *v18;
    if (os_log_type_enabled(*v18, v17))
    {
      v12 = v3;
      v20 = v19;
      v21 = v5;
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v22 = 136446466;
      v23 = [v12 uuid];
      if (v23)
      {
        v24 = v23;

        v25 = sub_1A524C674();
        v27 = v26;

        sub_1A3C2EF94(v25, v27, &v29);
      }

      goto LABEL_13;
    }
  }
}

uint64_t sub_1A44CD524(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t type metadata accessor for TimelineVFXEngineCell(uint64_t a1)
{
  result = qword_1EB16A240;
  if (!qword_1EB16A240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A44CD5B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TimelineVFXEngineCell(0);
  sub_1A52411B4();
  v5 = 0;
  sub_1A3E2AFA0(0.0, 1.0);
  *a2 = a1;
  *(a2 + v4[6]) = a1 == 0;
  if (a1)
  {
    v7 = __sincosf_stret((v6 + v6) * 3.1416);
    *(a2 + v4[7]) = v7.__sinval;
    *(a2 + v4[8]) = v7.__cosval;
    sub_1A3E2AFA0(0.0, 1.0);
    v5 = v8;
  }

  else
  {
    *(a2 + v4[7]) = 0;
    *(a2 + v4[8]) = 0;
  }

  *(a2 + v4[9]) = v5;
  cosval = 0.0;
  sub_1A3E2AFA0(0.0, 1.0);
  *(a2 + v4[10]) = v10;
  sub_1A3E2AFA0(0.0, 1.0);
  if (a1)
  {
    v12 = __sincosf_stret((v11 + v11) * 3.1416);
    cosval = v12.__cosval;
    *(a2 + v4[11]) = v12.__sinval;
  }

  else
  {
    *(a2 + v4[11]) = 0;
  }

  *(a2 + v4[12]) = cosval;
}

uint64_t sub_1A44CD6DC(uint64_t a1)
{
  MEMORY[0x1A590A010](*v1);
  type metadata accessor for TimelineVFXEngineCell(0);
  sub_1A52411C4();
  sub_1A44CD9F4(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A524C4B4();
  sub_1A524ECB4();
  sub_1A524ECC4();
  sub_1A524ECC4();
  sub_1A524ECC4();
  sub_1A524ECC4();
  sub_1A524ECC4();
  return sub_1A524ECC4();
}

uint64_t sub_1A44CD82C()
{
  sub_1A524EC94();
  sub_1A44CD6DC(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A44CD870(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A44CD6DC(v2);
  return sub_1A524ECE4();
}

BOOL sub_1A44CD8B0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for TimelineVFXEngineCell(0);
  return (_s12PhotosUICore33LemonadeMemoryPlayerConfigurationV2eeoiySbAC_ACtFZ_0() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]);
}

uint64_t sub_1A44CD9F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A44CDAAC(uint64_t a1)
{
  result = sub_1A52411C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A44CDB48()
{

  return swift_deallocClassInstance();
}

double LemonadePhotosPagingGridConfiguration.titleModel(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1A44CDCA8@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D6238;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A3C66EE8(v3, v4);
}

uint64_t sub_1A44CDD28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D62B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  sub_1A3C66EE8(v3, v4);
  result = sub_1A3C33378(v7, v8);
  *(a2 + 72) = v6;
  *(a2 + 80) = v5;
  return result;
}

void LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(void *a6@<X8>)
{
  type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  a6[9] = 0;
  a6[10] = 0;
  a6[8] = 0;
  sub_1A5245B94();
}

void LemonadePhotosPagingAssetCollectionGridConfiguration.init(singleItem:photoLibraryContext:defaultSectionBodyStyle:disallowedBehaviors:searchMatchInfo:badgesModifier:)(uint64_t a9@<X8>)
{
  *(a9 + 56) = 0;
  type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  sub_1A5245B94();
}

void LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(void *a8@<X8>)
{
  type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  a8[9] = 0;
  a8[10] = 0;
  a8[8] = 0;
  sub_1A5245B94();
}

uint64_t LemonadePhotosPagingAssetCollectionGridConfiguration.assetsFetchResultProvider(for:)()
{
  v1 = (v0 + *(type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0) + 52));
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t (*sub_1A44CE460())()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D5F14;
}

uint64_t sub_1A44CE4C8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 52));
  v4 = *v3;
  sub_1A3C66EE8(*v3, v3[1]);
  return v4;
}

BOOL static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = v6(a3, a4);
  swift_unknownObjectRelease();
  v8 = v6(a3, a4);
  swift_unknownObjectRelease();
  return v7 == v8;
}

uint64_t LemonadePhotosPagingGridConfiguration.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 40))(a2, a3);
  swift_unknownObjectRelease();
  return MEMORY[0x1A590A010](v3);
}

void *LemonadePhotosPagingMemoryGridConfiguration.viewConfiguration.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *LemonadePhotosPagingMemoryGridConfiguration.searchMatchInfo.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

double sub_1A44CE754@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D6238;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A3C66EE8(v3, v4);
}

uint64_t sub_1A44CE7D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D62B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  sub_1A3C66EE8(v3, v4);
  result = sub_1A3C33378(v7, v8);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t LemonadePhotosPagingMemoryGridConfiguration.badgesModifier.getter()
{
  v1 = *(v0 + 80);
  sub_1A3C66EE8(v1, *(v0 + 88));
  return v1;
}

uint64_t LemonadePhotosPagingMemoryGridConfiguration.badgesModifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A3C33378(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void LemonadePhotosPagingMemoryGridConfiguration.init(itemListManager:initialItem:selectionCoordinator:)(uint64_t a4@<X8>)
{
  *(a4 + 40) = 3;
  type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 72) = 0;
  swift_retain_n();
  sub_1A5245B94();
}

void LemonadePhotosPagingMemoryGridConfiguration.init(singleItem:photoLibraryContext:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = objc_opt_self();
  v7 = v4;
  v8 = v5;
  v9 = sub_1A524CA14();
  v10 = sub_1A524C634();
  v17 = [v6 transientCollectionListWithCollections:v9 title:v10 identifier:0 photoLibrary:v8];

  sub_1A3C47CBC(0, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
  v11 = *(a2 + 24);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v7;
  sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
  v13 = v7;
  v14 = v8;
  v15 = v17;
  v16 = v11;
  sub_1A43FD8EC();
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v15, v11, v20, v18, v19, sub_1A44D444C, v12);
}

void LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(void *a1)
{
  v6 = sub_1A524CA14();
  v7 = sub_1A524C634();
  v8 = [a1 photoLibrary];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() transientCollectionListWithCollections:v6 title:v7 identifier:0 photoLibrary:v8];

    sub_1A3C47CBC(0, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v28 = 2;
    v17 = v10;
    sub_1A3C6C180(&v18);
    v26 = v18;
    v27 = v19;
    sub_1A3C6C18C(&v24);
    v22 = v24;
    v23 = v25;
    LOBYTE(v10) = sub_1A3C5A374();
    v11 = sub_1A3C30368();
    v12 = sub_1A3C5A374();
    v13 = sub_1A3C5A374();
    v14 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v26, 0, &unk_1F1712450, 0, 1, &v22, v10 & 1, &v28, v21, v11, v12 & 1, v13 & 1, v14 & 1, 0);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v16 = a1;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v17, 0, v29, v21, &v18, sub_1A44D4608, v15);
  }

  __break(1u);
}

uint64_t (*sub_1A44CF168())()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D621C;
}

void *sub_1A44CF1D0()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_1A44CF20C()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_1A44CF234()
{
  v1 = *(v0 + 80);
  sub_1A3C66EE8(v1, *(v0 + 88));
  return v1;
}

void sub_1A44CF300(void *a6@<X8>)
{
  sub_1A40F354C(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  a6[9] = 0;
  a6[10] = 0;
  a6[8] = 0;
  sub_1A5245B94();
}

void *_s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV04viewH0So012PXPhotosViewH0CSgvg_0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *_s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV20selectionCoordinatorSo011PXSelectionJ0CSgvg_0()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *_s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV15searchMatchInfoSo013PXSearchQueryjK0CSgvg_0()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t _s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV14badgesModifierSo13PXAssetBadgesVSo09PXDisplayE0_p_AFtcSgvg_0()
{
  v1 = *(v0 + 72);
  sub_1A3C66EE8(v1, *(v0 + 80));
  return v1;
}

uint64_t _s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV14badgesModifierSo13PXAssetBadgesVSo09PXDisplayE0_p_AFtcSgvs_0(uint64_t a1, uint64_t a2)
{
  result = sub_1A3C33378(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t (*sub_1A44CF6F4())()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D5EE8;
}

id LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer.id.getter()
{
  v1 = [*v0 px_opaqueIdentifier];

  return v1;
}

uint64_t static LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  v5 = v3;
  if (v2 == v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return v6;
}

uint64_t sub_1A44CF880@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = sub_1A3C34460(a2, (a4 + 1));
  a4[6] = a3;
  return result;
}

double sub_1A44CF93C@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D6238;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A3C66EE8(v3, v4);
}

uint64_t sub_1A44CF9BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D62B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  sub_1A3C66EE8(v3, v4);
  result = sub_1A3C33378(v7, v8);
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  return result;
}

void LemonadePhotosPagingPhotoKitContainerGridConfiguration.init(containers:initialItem:photoLibrary:viewConfiguration:selectionCoordinator:)(uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a6@<X8>)
{
  v9[2] = a4;
  v9[4] = a6;
  v9[5] = a3;
  v9[7] = a2;
  v6 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8[3] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[6] = 0;
  sub_1A5245B94();
}

uint64_t LemonadePhotosPagingPhotoKitContainerGridConfiguration.existingKeyAsset(for:)()
{
  sub_1A44D07D8(v2);
  if (v2[0])
  {
    v0 = v2[6];
    swift_unknownObjectRetain();
    sub_1A44D4934(v2);
  }

  else
  {
    sub_1A3C2C918(v2, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    return 0;
  }

  return v0;
}

void sub_1A44D07D8(uint64_t a2@<X8>)
{
  v3 = *(v2 + *(type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0) + 48));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      sub_1A44D48FC(v6, v9);
      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      if (sub_1A524DBF4())
      {
        v7 = v9[1];
        *a2 = v9[0];
        *(a2 + 16) = v7;
        *(a2 + 32) = v9[2];
        *(a2 + 48) = v10;
        return;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_1EB176240 != -1)
        {
          swift_once();
        }

        sub_1A5246664();
      }

      ++v5;
      sub_1A44D4934(v9);
      v6 += 56;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

double LemonadePhotosPagingPhotoKitContainerGridConfiguration.titleModel(for:)@<D0>(uint64_t a2@<X8>)
{
  sub_1A44D07D8(&v4);
  if (v4)
  {
    sub_1A3C341C8(&v5, a2);
    sub_1A44D4934(&v4);
  }

  else
  {
    sub_1A3C2C918(&v4, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t (*sub_1A44D0B2C())()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D621C;
}

uint64_t sub_1A44D0B94(uint64_t *a1)
{
  sub_1A44D07D8(v3);
  if (v3[0])
  {
    v1 = v3[6];
    swift_unknownObjectRetain();
    sub_1A44D4934(v3);
  }

  else
  {
    sub_1A3C2C918(v3, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    return 0;
  }

  return v1;
}

double sub_1A44D0C04@<D0>(uint64_t a2@<X8>)
{
  sub_1A44D07D8(&v4);
  if (v4)
  {
    sub_1A3C341C8(&v5, a2);
    sub_1A44D4934(&v4);
  }

  else
  {
    sub_1A3C2C918(&v4, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *LemonadePhotosPagingHighlightGridConfiguration.viewConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *LemonadePhotosPagingHighlightGridConfiguration.searchMatchInfo.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

double sub_1A44D0DA0@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D5E14;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A3C66EE8(v3, v4);
}

uint64_t sub_1A44D0E20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D5E10;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  sub_1A3C66EE8(v3, v4);
  result = sub_1A3C33378(v7, v8);
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  return result;
}

uint64_t LemonadePhotosPagingHighlightGridConfiguration.badgesModifier.getter()
{
  v1 = *(v0 + 56);
  sub_1A3C66EE8(v1, *(v0 + 64));
  return v1;
}

uint64_t LemonadePhotosPagingHighlightGridConfiguration.badgesModifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A3C33378(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void LemonadePhotosPagingHighlightGridConfiguration.init(collection:photoLibrary:)(uint64_t a3@<X8>)
{
  type metadata accessor for LemonadePhotosPagingHighlightGridConfiguration(0);
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  sub_1A5245B94();
}

uint64_t (*sub_1A44D1348())()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D621C;
}

void *sub_1A44D13B0()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *sub_1A44D13E0()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_1A44D1408()
{
  v1 = *(v0 + 56);
  sub_1A3C66EE8(v1, *(v0 + 64));
  return v1;
}

uint64_t sub_1A44D14B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = (*(a5 + 40))(a4, a5);
  sub_1A3C47CBC(0, &qword_1EB129F80, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListManager);
  v12 = v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 160);
    v50[2] = *(v13 + 144);
    v50[3] = v14;
    v50[4] = *(v13 + 176);
    v51 = *(v13 + 192);
    v15 = *(v13 + 128);
    v50[0] = *(v13 + 112);
    v50[1] = v15;
    if (BYTE9(v14) == 1)
    {
      v16 = *(v13 + 160);
      v46 = *(v13 + 144);
      v47 = v16;
      v48 = *(v13 + 176);
      v49 = *(v13 + 192);
      v17 = *(v13 + 128);
      v18 = v13;
      v44 = *(v13 + 112);
      v45 = v17;
      swift_unknownObjectRetain();
      sub_1A3C6DB58(v50, v42);
      v19 = sub_1A43FACB0();
      v20 = sub_1A44D24F4(1, v19);

      if (!v20)
      {
        swift_unknownObjectRelease();
        v24 = *(v18 + 160);
        v36 = *(v18 + 144);
        v37 = v24;
        v38 = *(v18 + 176);
        v39 = *(v18 + 192);
        v25 = *(v18 + 128);
        v35[0] = *(v18 + 112);
        v35[1] = v25;
        v34 = v39;
        v31 = v36;
        v32 = v24;
        v33 = v38;
        v29 = v35[0];
        v30 = v25;
        sub_1A3C6DB58(v35, &v44);
        sub_1A43FB968(&unk_1F17124C8);
        v40[2] = v31;
        v40[3] = v32;
        v40[4] = v33;
        v41 = v34;
        v40[0] = v29;
        v40[1] = v30;
        v46 = v31;
        v47 = v32;
        v48 = v33;
        v49 = v34;
        v44 = v29;
        v45 = v30;
        v28 = a3;
        v26 = *(*v18 + 464);
        sub_1A3C6DB58(v40, v42);
        v27 = v26(&v44);
        v42[2] = v46;
        v42[3] = v47;
        v42[4] = v48;
        v43 = v49;
        v42[0] = v44;
        v42[1] = v45;
        sub_1A3C6EAD8(v42);
        sub_1A44D5158();
        v22 = sub_1A44D17D0(v27, a1, v9, v28, a4, v12, a5);

        sub_1A3C6EAD8(v50);
        swift_unknownObjectRelease();
        v46 = v31;
        v47 = v32;
        v48 = v33;
        v49 = v34;
        v44 = v29;
        v45 = v30;
        sub_1A3C6EAD8(&v44);
        return v22;
      }

      sub_1A3C6EAD8(v50);
      swift_unknownObjectRelease();
    }
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = sub_1A44D17D0(v10, a1, v9, a3, a4, AssociatedTypeWitness, a5);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_1A44D17D0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[0] = a1;
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    LOBYTE(v14[0]) = a3;
    sub_1A44D1944(a2, v14[2], v14, a4, a5, a7);
  }

  sub_1A524E404();

  swift_unknownObjectRetain();
  v12 = sub_1A524C714();
  MEMORY[0x1A5907B60](v12);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A44D1944(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a2;
  v74 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v75 = AssociatedTypeWitness;
  v76 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v54[3] = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54[1] = v54 - v14;
  v15 = swift_checkMetadataState();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v54[2] = v54 - v17;
  v69 = a5;
  v63 = *(a5 - 8);
  v18 = v63[8];
  MEMORY[0x1EEE9AC00](v19);
  v62 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C37710(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v54[4] = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v54 - v23;
  v25 = swift_checkMetadataState();
  v66 = *(v25 - 8);
  v67 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v65 = v54 - v26;
  v55 = sub_1A524DF24();
  v54[5] = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v64 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v61 = v12;
  v29 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v29);
  v59 = v54 - v30;
  v72 = *a3;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v31 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v12) = [v31 enableDetailsViewPrototype];

  v71 = v24;
  v68 = a4;
  if (v12)
  {
    v56 = v29;
    v57 = v13;
    v58 = v18;
    swift_checkMetadataState();
    sub_1A5245914();
  }

  if (MEMORY[0x1A590D320]())
  {
    swift_checkMetadataState();
    sub_1A5245914();
  }

  v59 = v16;
  v32 = *(*(a4 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  v60 = v15;
  if (v32)
  {
    v33 = *((*MEMORY[0x1E69E7D40] & *v32) + 0x318);
    v34 = v32;
    LODWORD(v57) = v33();
  }

  else
  {
    LODWORD(v57) = 1;
  }

  LODWORD(v56) = v32 != 0;
  sub_1A46535F0(v24);
  v58 = type metadata accessor for PhotosPagingViewConfiguration(0, v75, v76, v35);
  v36 = v62;
  v37 = v63;
  v38 = v69;
  (v63[2])(v62, v74, v69);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = (v18 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 17) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v70;
  *(v42 + 16) = v38;
  *(v42 + 24) = v43;
  (v37[4])(v42 + v39, v36, v38);
  v44 = v42 + v40;
  v45 = v68;
  v46 = v73;
  *v44 = v73;
  *(v44 + 8) = v56;
  *(v44 + 9) = v57 & 1;
  *(v42 + v41) = v32;
  v47 = v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v47 = v45;
  v48 = v72;
  *(v47 + 8) = v72;
  v57 = *(v43 + 48);
  v49 = v57;
  swift_unknownObjectRetain_n();
  v62 = v32;
  v63 = v32;

  v50 = v49(v38, v43);
  v52 = v51;
  LOBYTE(v77) = v48;
  v53 = sub_1A41FE5EC();
  sub_1A3EA80D8(v46, sub_1A44D5F48, v42, v50, v52, v53, 0);
  v57(v38, v43);
  sub_1A5245904();
}

BOOL sub_1A44D24F4(char a1, uint64_t a2)
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
    sub_1A3C6C358();
  }

  while ((sub_1A524C594() & 1) == 0);
  return v4 != 0;
}

uint64_t PHCollection.px_containerShouldReverseSortOrderInDetailsView.getter()
{
  if ([v0 px_isImportSessionCollection])
  {
    return 1;
  }

  else
  {
    return [v0 px_isAllLibraryDuplicatesSmartAlbum];
  }
}

id sub_1A44D346C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(a1 + 112);
  if (!*(v8 + 16) || (v9 = sub_1A3E4BF44(2), (v10 & 1) == 0))
  {
    sub_1A3C47CBC(0, &qword_1EB125C40, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItem);

    swift_dynamicCast();
    swift_checkMetadataState();
    sub_1A5245924();
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  return v11;
}

uint64_t sub_1A44D38E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v6 = v4(v5, a3);

  swift_unknownObjectRelease();
  return v6;
}

id sub_1A44D3944()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
  return [ObjCClassFromMetadata isSubclassOfClass_];
}

void sub_1A44D39F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PHCollection.associatedPhotoKitContainer.setter(v1);
}

void sub_1A44D3A24()
{
  if (qword_1EB176240 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void sub_1A44D3BC4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2;
    PHCollection.associatedPhotoKitContainer.setter(v2);
  }

  PHCollection.associatedPhotoKitContainer.setter(*a1);
}

id sub_1A44D3C5C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14AssociatedDataCMa_7();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A44D3CEC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = __swift_project_boxed_opaque_existential_1(v0, v1);
  v5 = *(v0 + 40);
  return sub_1A44D14B4(v3, &v5, *(v0 + 48), v1, v2);
}

uint64_t sub_1A44D3D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44D5E94();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A44D3DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44D5E94();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A44D3E10(uint64_t a1)
{
  sub_1A44D5E94();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A44D3E38()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) librarySpecificFetchOptions];
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  sub_1A3C37380(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F9790;
  v6 = *(v1 + 16);
  *(v5 + 32) = v6;
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  v7 = v6;
  v8 = sub_1A524CA14();

  v9 = [v4 transientCollectionListWithCollections:v8 title:0];

  v10 = [v3 fetchCollectionsInCollectionList:v9 options:v2];
  return v10;
}

void sub_1A44D3F84(uint64_t a1)
{
  v4 = a1;
  v1 = PhotoKitItem.id.getter();
  v3 = MEMORY[0x1E69E5FE0];
  v2 = v1;
  sub_1A3C47CBC(0, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A4338FA4();
  sub_1A5246424();
}

id sub_1A44D4038()
{
  v1 = *(v0 + 16);
  if ([v1 isTransient])
  {
    v2 = objc_opt_self();
    v3 = objc_opt_self();
    sub_1A3C37380(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F9790;
    *(v4 + 32) = v1;
    sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
    v5 = v1;
    v6 = sub_1A524CA14();

    v7 = [v3 transientCollectionListWithCollections:v6 title:0];

    sub_1A3C47CBC(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
    v8 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
    v9 = [v2 fetchCollectionsInCollectionList:v7 options:v8];
LABEL_5:
    v16 = v9;

    return v16;
  }

  result = [v1 photoLibrary];
  if (result)
  {
    v7 = result;
    sub_1A3C37380(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    v12 = [v1 localIdentifier];
    v13 = sub_1A524C674();
    v15 = v14;

    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    v8 = sub_1A524CA14();

    v9 = [v7 px:v8 fetchObjectsWithLocalIdentifiers:1 wantsDefaultPredicates:?];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1A44D4298(uint64_t a1)
{
  v1 = a1;
  sub_1A3C47CBC(0, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A4338FA4();
  sub_1A52463B4();
}

id sub_1A44D444C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [v1 librarySpecificFetchOptions];
  [v3 setIncludeLocalMemories_];
  [v3 setIncludePendingMemories_];
  [v3 setIncludeStoryMemories_];
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FC9F0;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1A3D710E8();
  *(v4 + 64) = v6;
  *(v4 + 32) = 1684632949;
  *(v4 + 40) = 0xE400000000000000;
  v7 = [v2 uuid];
  v8 = sub_1A524C674();
  v10 = v9;

  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v8;
  *(v4 + 80) = v10;
  v11 = sub_1A524D134();
  [v3 setPredicate_];

  v12 = [objc_opt_self() fetchMemoriesWithOptions_];
  return v12;
}

void sub_1A44D4624(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6 = a1;
  v3 = [v2 px_opaqueIdentifier];
  v5 = sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v4 = v3;
  sub_1A3C47CBC(0, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A44D617C();
  sub_1A5246424();
}

uint64_t sub_1A44D4820@<X0>(uint64_t a1@<X8>)
{
  sub_1A40F354C(0);
  v4 = v3;
  v7 = *(v3 - 8);
  (*(v7 + 16))(a1, v1 + ((*(v7 + 80) + 16) & ~*(v7 + 80)), v3);
  v5 = *(v7 + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_1A44D4988(uint64_t a1, uint64_t a2)
{
  sub_1A3C37380(0, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A44D4A10(uint64_t a1)
{
  if (!qword_1EB13C5E8)
  {
    sub_1A3C37380(255, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13C5E8);
    }
  }
}

uint64_t sub_1A44D4A98(uint64_t a1)
{
  sub_1A44D4988(v1 + 16, &v5);
  if (v5)
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v9 = a1;
    v3 = [v5 px_opaqueIdentifier];

    *(&v6 + 1) = MEMORY[0x1E69E5FE0];
    *&v5 = v3;
    sub_1A3C47CBC(0, &qword_1EB125448, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A44D60F8();
    sub_1A5246424();
  }

  sub_1A3C2C918(&v5, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
  return 0;
}

uint64_t sub_1A44D4D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A44D4DAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A44D4E48(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v5 = *(v4 + 16);
  sub_1A3C47CBC(0, a2, a3, a4, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v6 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  sub_1A3C37380(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52F9790;
  *(v9 + 32) = v5;
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  v10 = v5;
  v11 = sub_1A524CA14();

  v12 = [v8 transientCollectionListWithCollections:v11 title:0];

  v13 = [v7 fetchCollectionsInCollectionList:v12 options:v6];
  return v13;
}

void sub_1A44D4FA4(uint64_t a1)
{
  v1 = a1;
  sub_1A3C47CBC(0, &unk_1EB136E40, &qword_1EB126AA0, 0x1E69789F0, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A44D6074();
  sub_1A52463B4();
}

unint64_t sub_1A44D5158()
{
  result = qword_1EB125860;
  if (!qword_1EB125860)
  {
    sub_1A3C47CBC(255, &qword_1EB129F80, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125860);
  }

  return result;
}

uint64_t sub_1A44D51DC(uint64_t a1)
{
  result = sub_1A3C483F8(&unk_1EB12AD38, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingAssetCollectionGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A44D5280()
{
  result = qword_1EB129F90;
  if (!qword_1EB129F90)
  {
    sub_1A3C47CBC(255, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129F90);
  }

  return result;
}

uint64_t sub_1A44D5304(uint64_t a1)
{
  result = sub_1A3C483F8(&qword_1EB12AD58, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingMemoryGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A44D53EC(uint64_t a1)
{
  result = sub_1A3C483F8(&qword_1EB133D48, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration, &unk_1A534298C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A44D5490(uint64_t a1)
{
  result = sub_1A3C483F8(&unk_1EB125FB0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A44D5530(uint64_t a1)
{
  result = sub_1A3C483F8(&qword_1EB13C620, type metadata accessor for LemonadePhotosPagingHighlightGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingHighlightGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A44D55D4()
{
  result = qword_1EB12ADC0;
  if (!qword_1EB12ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ADC0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  return (v3 + 1);
}

void *__swift_store_extra_inhabitant_indexTm_4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  *result = (a2 - 1);
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_65Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  return (v3 + 1);
}

void *__swift_store_extra_inhabitant_index_66Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  *result = (a2 - 1);
  return result;
}

void sub_1A44D5AD8(uint64_t a1)
{
  sub_1A3C47CBC(319, &qword_1EB13C5F0, &qword_1EB126AA0, 0x1E69789F0, type metadata accessor for PhotoKitItemListManager);
  if (v1 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v2 <= 0x3F)
    {
      sub_1A3C47CBC(319, &qword_1EB120730, &qword_1EB126850, &off_1E7721830, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PXPhotosViewConfigurationAllowedBehaviors(319);
        if (v4 <= 0x3F)
        {
          sub_1A3C47CBC(319, &qword_1EB1207D0, &qword_1EB1207D8, &off_1E77218D0, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1A3C47CBC(319, &unk_1EB1207E0, &qword_1EB1207F0, off_1E771F5C8, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1A3C37710(319, &qword_1EB1201F0, sub_1A3C3637C);
              if (v7 <= 0x3F)
              {
                sub_1A5245BA4();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A44D5E18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_1A44D5E5C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_1A44D5E94()
{
  result = qword_1EB13C650;
  if (!qword_1EB13C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C650);
  }

  return result;
}

uint64_t sub_1A44D5F14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void sub_1A44D5F48(uint64_t a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A44D2578(a1, v1 + v2, *(v1 + v3), *(v1 + v3 + 8), *(v1 + v3 + 9), *(v1 + ((v3 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1A44D5FFC(uint64_t a1)
{
  sub_1A3C37710(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A44D6074()
{
  result = qword_1EB13C660;
  if (!qword_1EB13C660)
  {
    sub_1A3C47CBC(255, &unk_1EB136E40, &qword_1EB126AA0, 0x1E69789F0, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C660);
  }

  return result;
}

unint64_t sub_1A44D60F8()
{
  result = qword_1EB125450;
  if (!qword_1EB125450)
  {
    sub_1A3C47CBC(255, &qword_1EB125448, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125450);
  }

  return result;
}

unint64_t sub_1A44D617C()
{
  result = qword_1EB125468;
  if (!qword_1EB125468)
  {
    sub_1A3C47CBC(255, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125468);
  }

  return result;
}

uint64_t sub_1A44D6330(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EB1251A0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A44D639C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EB1251A0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

id sub_1A44D643C(uint64_t a1)
{
  v2 = *(a1 + qword_1EB1251B0);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *sub_1A44D648C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, unsigned __int8 a10)
{
  v56 = a7;
  v57 = a4;
  v58 = a1;
  v55 = a10;
  sub_1A3C37764(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v54 = &v47 - v17;
  v18 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v50 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v10);
  v53 = *a3;
  v21 = &v20[qword_1EB1251A0];
  *&v20[qword_1EB1251A0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v20[qword_1EB1251D0] = 0;
  v22 = qword_1EB1251C8;
  sub_1A52422E4();
  swift_allocObject();
  *&v20[v22] = sub_1A52422D4();
  v23 = qword_1EB125190;
  type metadata accessor for LemonadeFeedSpec(0);
  *&v20[v23] = LemonadeFeedSpec.__allocating_init()();
  *&v20[qword_1EB125208] = 0;
  *&v20[qword_1EB125200] = 0;
  swift_unknownObjectWeakInit();
  *&v20[qword_1EB1251F0] = a5;
  v24 = objc_opt_self();
  v25 = a5;
  v26 = [v24 defaultManager];
  v27 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

  *&v20[qword_1EB1251E8] = v27;
  v28 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  type metadata accessor for LemonadePhotoLibraryContext(0, v29);
  v30 = a8;
  v31 = v25;

  v51 = v31;
  v52 = v28;
  v32 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v31, a8, v28);
  swift_beginAccess();
  *(v21 + 1) = v56;
  v56 = a6;
  swift_unknownObjectWeakAssign();
  *&v20[qword_1EB1251C0] = a8;
  v49 = v30;
  if (a8)
  {
    v33 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x288);
    v34 = v30;
    v35 = v33();
  }

  else
  {
    sub_1A5244244();
    swift_allocObject();
    v35 = sub_1A5244214();
  }

  *&v20[qword_1EB1251D8] = v35;
  *&v20[qword_1EB125188] = a9;
  *&v20[qword_1EB1251B0] = a2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v48 = a9;
  v36 = sub_1A5249624();
  sub_1A44D6AF8(&qword_1EB125170, type metadata accessor for LemonadeDestinationRootViewController, &unk_1A5343228);
  v37 = v36;

  sub_1A52422C4();

  sub_1A44D6AF8(&unk_1EB125178, type metadata accessor for LemonadeDestinationRootViewController, &unk_1A5343270);

  sub_1A5244234();

  v38 = v58;
  v39 = v50;
  sub_1A44D6B40(v58, v50, type metadata accessor for LemonadeNavigationDestination);
  if (a2)
  {
    v40 = &off_1F1721C48;
  }

  else
  {
    v40 = 0;
  }

  type metadata accessor for LemonadeNavigationContext(0);
  v41 = v57;
  v42 = v54;
  sub_1A44D6B40(v57, v54, type metadata accessor for LemonadeDetailsContext);
  v43 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v59[0] = v53;

  v44 = v37;

  *&v44[qword_1EB1251D0] = sub_1A3C799F0(v39, a2, v40, v36, v42, v59, v32, 2);

  sub_1A4655D24(v55 & 1);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v45 = v44;
  sub_1A5249644();

  swift_unknownObjectRelease();

  sub_1A44D6BA8(v41, type metadata accessor for LemonadeDetailsContext);
  sub_1A44D6BA8(v38, type metadata accessor for LemonadeNavigationDestination);
  return v45;
}

uint64_t type metadata accessor for LemonadeDestinationRootViewController(uint64_t a1)
{
  result = qword_1EB15F0B0;
  if (!qword_1EB15F0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A44D6AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A44D6B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44D6BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A44D6C30(void *a1)
{
  v1 = a1;
  v2 = sub_1A44D6CB0();

  if (v2)
  {
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    v3 = sub_1A524CA14();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1A44D6CB0()
{
  if (!*&v0[qword_1EB1251C0])
  {
    goto LABEL_15;
  }

  v1 = [v0 navigationController];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
  v4 = sub_1A524CA34();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1A59097F0](0, v4);
    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_8:
    v7 = v6;

    if ((sub_1A524DBF4() & 1) == 0)
    {
      v8 = [v7 toolbarItems];
      if (v8)
      {
        v9 = v8;
        sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
        v10 = sub_1A524CA34();

        return v10;
      }

      return 0;
    }

LABEL_15:
    v13.receiver = v0;
    v13.super_class = type metadata accessor for LemonadeDestinationRootViewController(0);
    v11 = objc_msgSendSuper2(&v13, sel_toolbarItems);
    if (v11)
    {
      v12 = v11;
      sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
      v10 = sub_1A524CA34();

      return v10;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1A44D6EA8(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    sub_1A524CA34();
    v5 = a1;
    v3 = sub_1A524CA14();
  }

  else
  {
    v6 = a1;
  }

  v7.receiver = a1;
  v7.super_class = type metadata accessor for LemonadeDestinationRootViewController(0);
  objc_msgSendSuper2(&v7, sel_setToolbarItems_, v3);
}

void sub_1A44D6F58()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for LemonadeDestinationRootViewController(0);
  objc_msgSendSuper2(&v25, sel_viewDidLoad);

  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;

  v7 = [v0 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 safeAreaInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  type metadata accessor for LemonadeFeedSpec(0);
  sub_1A44D6AF8(&qword_1EB13C680, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  v26.top = v10;
  v26.left = v12;
  v26.bottom = v14;
  v26.right = v16;
  LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v6, v4), v26);

  v17 = *&v0[qword_1EB1251C0];
  if (!v17)
  {
    goto LABEL_6;
  }

  if (!*&v0[qword_1EB1251D0])
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3D8);
  v19 = v17;

  v21 = v18(v20);
  sub_1A4655DC0(v21 & 1);

LABEL_6:
  v22 = [v0 px_splitViewController];
  if (!v22)
  {
    return;
  }

  v23 = qword_1EB1251D0;
  if (!*&v0[qword_1EB1251D0])
  {
    goto LABEL_14;
  }

  v24 = v22;

  sub_1A4655D24(1);

  if (!*&v0[v23])
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1A4655DC0([v24 isSidebarVisible]);

  [v24 registerChangeObserver_];
}

void sub_1A44D71E4(void *a1)
{
  v1 = a1;
  sub_1A44D6F58();
}

void sub_1A44D722C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for LemonadeDestinationRootViewController(0);
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);

  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 safeAreaInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      type metadata accessor for LemonadeFeedSpec(0);
      sub_1A44D6AF8(&qword_1EB13C680, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
      v18.top = v10;
      v18.left = v12;
      v18.bottom = v14;
      v18.right = v16;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v6, v4), v18);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A44D738C(void *a1)
{
  v1 = a1;
  sub_1A44D722C();
}

void sub_1A44D73D4(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*&a1[qword_1EB1251D0])
  {
    v5 = a1;
    v6 = a3;
    v8 = v5;

    LOBYTE(v5) = sub_1A4655D4C();

    if (v5)
    {
      v7 = [v8 parentViewController];
      [v7 setContentScrollView:v6 forEdge:a4];
    }

    else
    {
      v9.receiver = v8;
      v9.super_class = type metadata accessor for LemonadeDestinationRootViewController(0);
      objc_msgSendSuper2(&v9, sel_setContentScrollView_forEdge_, v6, a4);
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_1A44D74DC(char *result, uint64_t a2, void *a3)
{
  if (*&result[qword_1EB1251D0])
  {
    v3 = result;
    v4 = a3;
    v5 = v3;

    v6 = sub_1A465A2B8(v4);

    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44D7550(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1A524CC54();
  v3[22] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A44D75EC, v5, v4);
}

uint64_t sub_1A44D75EC()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A44D7708;
  v3 = swift_continuation_init();
  sub_1A43A6C50(0);
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A43A6168;
  v0[13] = &block_descriptor_205;
  v0[14] = v3;
  [v1 px:v2 dismissPresentedViewControllerWithOptions:v0 + 10 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A44D7708()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A44D7D04;
  }

  else
  {
    v5 = sub_1A44D7838;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A44D7838()
{
  v1 = v0[18];
  if (v1 == 1)
  {
    v2 = v0[21];
    v3 = qword_1EB1251D0;
    v0[26] = qword_1EB1251D0;
    v4 = *(v2 + v3);
    v0[27] = v4;
    if (v4)
    {

      v5 = swift_task_alloc();
      v0[28] = v5;
      *v5 = v0;
      v5[1] = sub_1A44D7948;
      v7 = v0[19];
      v6 = v0[20];

      sub_1A465A32C(v7, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v8 = v0[1];

    v8(v1);
  }
}

uint64_t sub_1A44D7948(uint64_t a1)
{
  v3 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1A44D7D78;
  }

  else
  {

    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1A44D7A64;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void sub_1A44D7A64()
{
  if (v0[29] == 1)
  {
    v1 = *(v0[21] + v0[26]);
    v0[31] = v1;
    if (v1)
    {

      v2 = swift_task_alloc();
      v0[32] = v2;
      *v2 = v0;
      v2[1] = sub_1A44D7B6C;
      v4 = v0[19];
      v3 = v0[20];

      sub_1A465A8EC(v4, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v5 = v0[29];
    v6 = v0[1];

    v6(v5);
  }
}

uint64_t sub_1A44D7B6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A44D7DE8;
  }

  else
  {

    v4[34] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A44D7C9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A44D7C9C()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A44D7D04()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A44D7D78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A44D7DE8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A44D7E58(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
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
  v15[4] = &unk_1A5343448;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A5343458;
  v16[5] = v15;
  v17 = a3;
  v18 = a1;
  sub_1A403AC74(0, 0, v11, &unk_1A5343468, v16);

  return result;
}

uint64_t sub_1A44D7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44D8078, v6, v5);
}

uint64_t sub_1A44D8078()
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

  return sub_1A44D7550(v8, v7);
}

uint64_t sub_1A44D8140(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 56);
  if (v3)
  {
    v11 = sub_1A5240B74();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 56), a1, 0);
  }

  _Block_release(*(v6 + 56));
  v12 = *(v9 + 8);

  return v12();
}

id sub_1A44D82F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1A44D83F0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A44D8450(uint64_t *a1))(void **a1, char a2)
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
  v5 = qword_1EB1251B8;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A44D84E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + qword_1EB1EADB0 + 256))(a1, a2);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1A524CA14();
  if (a3)
  {
    a3 = sub_1A524CF34();
  }

  v8 = [v6 actionMenuElementsForObjects:v7 allowedActionTypes:a3];

  swift_unknownObjectRelease();
  sub_1A3C5D0E8(0, &qword_1EB120AE0, &protocolRef_PXMenuElement);
  v9 = sub_1A524CA34();

  return v9;
}

void *sub_1A44D8618(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + qword_1EB1EADB0 + 256))();
  if (result)
  {
    v6 = result;
    sub_1A44D9D88(MEMORY[0x1E69E7CC0]);
    type metadata accessor for PXActionParameterKey();
    sub_1A44D6AF8(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey, &unk_1A5377DC0);
    v7 = sub_1A524C3D4();

    [v6 performActionWithType:a1 objects:a2 parameters:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1A44D8768(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + qword_1EB1EADB0 + 256))();
  if (result)
  {
    v5 = result;
    v6 = *off_1E77219D8;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = sub_1A524EA94();
    v8 = [objc_opt_self() arrayWithObject_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1A3C37764(0, &unk_1EB146250, sub_1A44D9E98, MEMORY[0x1E69E6F90]);
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
    sub_1A44D6BA8(inited + 32, sub_1A44D9E98);
    type metadata accessor for PXActionParameterKey();
    sub_1A44D6AF8(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey, &unk_1A5377DC0);
    v12 = sub_1A524C3D4();

    [v5 performActionWithType:v6 objects:v8 parameters:v12];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A44D8A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  type metadata accessor for LemonadeDnDUtilities();
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EADB0 + 256))();
  static LemonadeDnDUtilities.performActionForDragging(containerObject:sourceObjects:targetObject:actionProviderDelegate:merging:)(a1, a2, a3, v9, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A44D8AF4()
{
  sub_1A44D9F04(0);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + qword_1EB1EADB0 + 104))(v2);
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    sub_1A52441D4();
    sub_1A3E7CAB0(0);
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = sub_1A5244204();
    (*(v7 + 8))(v4, v10, ObjectType, v7);
    swift_unknownObjectRelease();

    return sub_1A44D6BA8(v4, sub_1A44D9F04);
  }

  return result;
}

uint64_t sub_1A44D8CD8()
{

  sub_1A3D35A10(v0 + qword_1EB1251A0);

  swift_unknownObjectRelease();

  v1 = v0 + qword_1EB1251B8;

  return sub_1A3D35A10(v1);
}

id sub_1A44D8DC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeDestinationRootViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A44D8E00(uint64_t a1)
{

  sub_1A3D35A10(a1 + qword_1EB1251A0);

  swift_unknownObjectRelease();

  v2 = a1 + qword_1EB1251B8;

  return sub_1A3D35A10(v2);
}

void *sub_1A44D90F4()
{
  v1 = *(*v0 + qword_1EB125188);
  v2 = v1;
  return v1;
}

void sub_1A44D9128(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*&a1[qword_1EB1251D0])
  {
    v5 = a1;

    sub_1A4655DC0(a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A44D9198(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A44D9F38(0);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44D9FF4(0);
  v52 = v7;
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A44DA0A8(0);
  v42[8] = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1A44DA0DC(0);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1A44DA184(0);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1A44DA254(0);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44DA288(0);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v51 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44DA2BC(0);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v53 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44DA324(0);
  v42[7] = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44DA110(0, &unk_1EB13C730, sub_1A44DA324, sub_1A44DA38C);
  v21 = v20;
  v54 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v42[6] = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v42[5] = v42 - v24;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v42[1] = v19;
    v42[2] = v21;
    v56 = *(Strong + qword_1EB125190);
    v42[4] = v2;
    v27 = swift_unknownObjectWeakLoadStrong();
    v42[3] = a1;
    if (!v27)
    {

      goto LABEL_10;
    }

    v28 = v27;
    v29 = *(v27 + qword_1EB1251D0);

    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

      v31 = *(v30 + 40);
      v32 = v31;

      if (v31)
      {

        v34 = 3;
        goto LABEL_11;
      }

LABEL_10:
      v34 = 0;
LABEL_11:
      v55 = v34;
      MEMORY[0x1EEE9AC00](v33);
      v42[-2] = v26;
      v36 = type metadata accessor for LemonadeFeedSpec(0);
      sub_1A3EED270(0);
      v38 = v37;
      v39 = sub_1A44D6AF8(&qword_1EB12E400, sub_1A3EED270, &unk_1A5363448);
      LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v56, &v55, sub_1A44DA408, v36, v38, &protocol witness table for LemonadeFeedSpec, v39, v6);
      v40 = sub_1A44D6AF8(&qword_1EB13C6C8, sub_1A44D9F38, &protocol conformance descriptor for LemonadeSpecsProviderView<A, B>);
      v41 = v26;
      sub_1A49E2648(v41, v43, v40);
      sub_1A44D6BA8(v6, sub_1A44D9F38);
      swift_getKeyPath();
      sub_1A3D63A24(0);
      sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
      sub_1A5245CA4();
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    v35 = *(v54 + 56);

    v35(a1, 1, 1, v21);
  }
}

uint64_t sub_1A44D9BC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44D6B40(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v6, type metadata accessor for LemonadeNavigationDestination);

  return sub_1A487864C(v6, a1, 0, a2);
}

void sub_1A44D9C84()
{
  *(v0 + qword_1EB1251A0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1EB1251D0) = 0;
  v1 = qword_1EB1251C8;
  sub_1A52422E4();
  swift_allocObject();
  *(v0 + v1) = sub_1A52422D4();
  v2 = qword_1EB125190;
  type metadata accessor for LemonadeFeedSpec(0);
  *(v0 + v2) = LemonadeFeedSpec.__allocating_init()();
  *(v0 + qword_1EB125208) = 0;
  *(v0 + qword_1EB125200) = 0;
  swift_unknownObjectWeakInit();
  sub_1A524E6E4();
  __break(1u);
}

unint64_t sub_1A44D9D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A44DADDC(0);
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A44D6B40(v4, &v11, sub_1A44D9E98);
      v5 = v11;
      result = sub_1A3C8BF74(v11);
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

void sub_1A44D9E98(uint64_t a1)
{
  if (!qword_1EB13C690)
  {
    type metadata accessor for PXActionParameterKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13C690);
    }
  }
}

void sub_1A44D9F38(uint64_t a1)
{
  if (!qword_1EB13C6B0)
  {
    v2 = type metadata accessor for LemonadeFeedSpec(255);
    sub_1A3EED270(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = &protocol witness table for LemonadeFeedSpec;
    v6[3] = sub_1A44D6AF8(&qword_1EB12E400, sub_1A3EED270, &unk_1A5363448);
    v4 = type metadata accessor for LemonadeSpecsProviderView(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB13C6B0);
    }
  }
}

void sub_1A44D9FF4(uint64_t a1)
{
  if (!qword_1EB13C6C0)
  {
    sub_1A44D9F38(255);
    sub_1A44D6AF8(&qword_1EB13C6C8, sub_1A44D9F38, &protocol conformance descriptor for LemonadeSpecsProviderView<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C6C0);
    }
  }
}

void sub_1A44DA110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A44DA1EC(uint64_t a1)
{
  if (!qword_1EB126A70)
  {
    sub_1A3C5D0E8(255, &qword_1EB126A80, &protocolRef_PXUIImageProvider);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126A70);
    }
  }
}

void sub_1A44DA38C(uint64_t a1)
{
  if (!qword_1EB1220C8)
  {
    sub_1A3C4886C(255, &qword_1EB126D90, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    v1 = sub_1A5249F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1220C8);
    }
  }
}

void sub_1A44DA408(uint64_t a1@<X8>)
{
  if (*(*(v1 + 16) + qword_1EB1251D0))
  {
    v3 = type metadata accessor for LemonadeNavigationDestinationView(0);
    v4 = sub_1A44D6AF8(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);
    swift_retain_n();
    sub_1A47E5794(sub_1A44DADD4, v3, v4, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A44DA4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A44DA604()
{
  result = qword_1EB13C800;
  if (!qword_1EB13C800)
  {
    sub_1A44DA67C(255);
    sub_1A44DA704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C800);
  }

  return result;
}

void sub_1A44DA67C(uint64_t a1)
{
  if (!qword_1EB13C808)
  {
    sub_1A44DA110(255, &unk_1EB13C730, sub_1A44DA324, sub_1A44DA38C);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13C808);
    }
  }
}

unint64_t sub_1A44DA704()
{
  result = qword_1EB13C810;
  if (!qword_1EB13C810)
  {
    sub_1A44DA110(255, &unk_1EB13C730, sub_1A44DA324, sub_1A44DA38C);
    sub_1A44DA7E4();
    sub_1A44D6AF8(&qword_1EB1220D8, sub_1A44DA38C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C810);
  }

  return result;
}

unint64_t sub_1A44DA7E4()
{
  result = qword_1EB13C818;
  if (!qword_1EB13C818)
  {
    sub_1A44DA324(255);
    sub_1A44DA894();
    sub_1A44D6AF8(&qword_1EB122170, sub_1A44DA358, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C818);
  }

  return result;
}