unint64_t sub_1A45D80B8()
{
  result = qword_1EB13E738;
  if (!qword_1EB13E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E738);
  }

  return result;
}

unint64_t sub_1A45D8110()
{
  result = qword_1EB13E740;
  if (!qword_1EB13E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E740);
  }

  return result;
}

unint64_t sub_1A45D8190()
{
  result = qword_1EB13E748;
  if (!qword_1EB13E748)
  {
    sub_1A45D8220(255, &unk_1EB13E750, sub_1A45D6344, &type metadata for RenameAlbumIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E748);
  }

  return result;
}

void sub_1A45D8220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A45D8294()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  v4 = v3;

  qword_1EB1EBE98 = v2;
  unk_1EB1EBEA0 = v4;
}

uint64_t *sub_1A45D830C()
{
  if (qword_1EB1C9400 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBE98;
}

void sub_1A45D835C()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  v4 = v3;

  qword_1EB1EBEA8 = v2;
  unk_1EB1EBEB0 = v4;
}

uint64_t *sub_1A45D83D0()
{
  if (qword_1EB1C9408 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBEA8;
}

uint64_t sub_1A45D8420(void *a1)
{
  v1 = [a1 localizedTitle];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();
    v5 = v4;

    v6 = sub_1A524C634();
    v7 = PXLocalizedString(v6);

    sub_1A524C674();
    sub_1A3E072BC(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1A3D710E8();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = sub_1A524C6C4();
  }

  else
  {
    v11 = sub_1A524C634();
    v12 = PXLocalizedString(v11);

    v9 = sub_1A524C674();
  }

  return v9;
}

uint64_t sub_1A45D857C(void *a1)
{
  v1 = [a1 localizedTitle];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();
    v5 = v4;

    v6 = sub_1A524C634();
    v7 = PXLocalizedString(v6);

    sub_1A524C674();
    sub_1A3E072BC(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1A3D710E8();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = sub_1A524C6C4();
  }

  else
  {
    v11 = sub_1A524C634();
    v12 = PXLocalizedString(v11);

    v9 = sub_1A524C674();
  }

  return v9;
}

uint64_t sub_1A45D86D8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EBEB8);
  __swift_project_value_buffer(v0, qword_1EB1EBEB8);
  sub_1A524C814();
  return sub_1A5246F14();
}

uint64_t sub_1A45D8754()
{
  if (qword_1EB1C9410 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EBEB8);
}

id sub_1A45D88BC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LemonadeFeatureAvailabilityProcessingViewFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A45D8968(void *a1)
{
  v2 = type metadata accessor for LemonadeFeatureAvailabilityProcessingView(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [a1 featureAvailabilityMonitor];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  v14[12] = 1;
  sub_1A4092D8C(v7, 0x100000000, 2, 0, 0, 0, 0, v8 & 1, v5, v9 & 1, 0, 0);
  sub_1A45D8B08(0);
  v11 = objc_allocWithZone(v10);
  v12 = sub_1A52485F4();

  return v12;
}

unint64_t sub_1A45D8AA4()
{
  result = qword_1EB17E410[0];
  if (!qword_1EB17E410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17E410);
  }

  return result;
}

void sub_1A45D8B08(uint64_t a1)
{
  if (!qword_1EB124380)
  {
    type metadata accessor for LemonadeFeatureAvailabilityProcessingView(255);
    sub_1A4234A1C();
    v1 = sub_1A5248614();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124380);
    }
  }
}

void sub_1A45D8B6C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1C9428);
  __swift_project_value_buffer(v0, qword_1EB1C9428);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45D8C14()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5243994();
  sub_1A45DBE5C(&qword_1EB124D30, MEMORY[0x1E69C2718], MEMORY[0x1E69C2720]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A45D8CC0(uint64_t a1)
{
  sub_1A524DC04();
  sub_1A5243994();
  sub_1A45DBE5C(&qword_1EB124D30, MEMORY[0x1E69C2718], MEMORY[0x1E69C2720]);
  return sub_1A524C4B4();
}

uint64_t sub_1A45D8D50(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5243994();
  sub_1A45DBE5C(&qword_1EB124D30, MEMORY[0x1E69C2718], MEMORY[0x1E69C2720]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A45D8DF8(void *a1, void *a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if (sub_1A524DBF4())
  {
    sub_1A5243994();
    sub_1A45DBE5C(&qword_1EB12D1B0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2730]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v6 == v4 && v7 == v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1A524EAB4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A45D8F24()
{
  v1 = 0xD00000000000002ALL;
  v2 = sub_1A5243994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  (*(v3 + 16))(v5, v0 + *(v6 + 20), v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x1E69C2700])
  {
    return sub_1A3C38BD4(v1);
  }

  if (v7 == *MEMORY[0x1E69C26F8])
  {
    v1 = 0xD00000000000002CLL;
    return sub_1A3C38BD4(v1);
  }

  if (v7 == *MEMORY[0x1E69C26E8])
  {
    return sub_1A3C38BD4(v1);
  }

  if (v7 == *MEMORY[0x1E69C2710])
  {
    v1 = 0xD00000000000002DLL;
    return sub_1A3C38BD4(v1);
  }

  if (v7 == *MEMORY[0x1E69C26E0])
  {
    v1 = 0xD000000000000029;
    return sub_1A3C38BD4(v1);
  }

  if (v7 == *MEMORY[0x1E69C26F0])
  {
    return sub_1A3C38BD4(v1);
  }

  if (v7 == *MEMORY[0x1E69C26D0])
  {
    v1 = 0xD00000000000002ELL;
    return sub_1A3C38BD4(v1);
  }

  if (v7 == *MEMORY[0x1E69C2708])
  {
    v1 = 0xD000000000000032;
    return sub_1A3C38BD4(v1);
  }

  if (v7 == *MEMORY[0x1E69C26D8])
  {
    return 0;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A45D91B0(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 3;
  }

  (*(v3 + 8))(v6, v2);
  return 22;
}

uint64_t sub_1A45D92CC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v2 - 4) < 3 || v4 == 1)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  v7 = *v1;
  v8 = *(type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0) + 20);
  if (v6 < (*((*MEMORY[0x1E69E7D40] & *v7) + 0x290))(&v1[v8]))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A45D93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5243994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-v12];
  if (*(a1 + 24))
  {
    v14 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {

      SearchResultItem.value.getter(&v39);
      v15 = v39;
      if (v39)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1A4267C40(0);

          v16 = sub_1A3C5A374();
          sub_1A4270314(v14, a2, v16 & 1, 0, a3);
        }
      }

      if (qword_1EB1C9420 != -1)
      {
        swift_once();
      }

      v20 = sub_1A5246F24();
      __swift_project_value_buffer(v20, qword_1EB1C9428);
      v21 = v15;
      v22 = sub_1A5246F04();
      v23 = sub_1A524D244();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v24 = 136315138;
        sub_1A3C2EF94(0x65756C6156, 0xE500000000000000, &v39);
      }

      v25 = v14[2];
      v26 = v25;
      sub_1A3D8E6B0(v25, 0, &v39);

      sub_1A4267BB4(v14, 1);
      v27 = v40;
      *a3 = v39;
      *(a3 + 8) = v27;
      type metadata accessor for LemonadeNavigationDestination(0);
      return swift_storeEnumTagMultiPayload();
    }

    v36 = *(a1 + 16);
    v37 = a3;

    SearchResultItem.collectionItemType.getter(v13);
    (*(v8 + 104))(v10, *MEMORY[0x1E69C26F8], v7);
    sub_1A45DBE5C(&qword_1EB12D1B0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2730]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v39 == v38[0] && v40 == v38[1])
    {
      v18 = *(v8 + 8);
      v18(v10, v7);
      v18(v13, v7);

      v19 = v36;
    }

    else
    {
      v35 = sub_1A524EAB4();
      v28 = *(v8 + 8);
      v28(v10, v7);
      v28(v13, v7);

      v19 = v36;
      if ((v35 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v29 = *(v19 + 16);
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v31 = v30;
      LOBYTE(v38[0]) = 3;
      v39 = 0;
      v32 = v29;
      LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(v31);
      v33._countAndFlagsBits = sub_1A524C674();
      v38[0] = 0;
      v42.value.sourceIdentifiers._rawValue = v38;
      PhotosNavigationSourceInfo.init(sourceIdentifier:previousSourceInfo:)(v33, v42);
      v38[0] = v39;
      sub_1A4A04DA4(v38);
    }

LABEL_20:

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(singleItem:photoLibraryContext:defaultSectionBodyStyle:disallowedBehaviors:searchMatchInfo:badgesModifier:)(v37);
  }

  type metadata accessor for LemonadeNavigationDestination(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_1A45D99A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0) + 24));
  if (v3 && (v4 = [v3 title]) != 0)
  {
    v5 = v4;
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v9 = sub_1A524C634();
    v10 = PXLocalizedString(v9);

    v6 = sub_1A524C674();
    v8 = v11;

    if (!v3)
    {
LABEL_6:
      v13 = sub_1A524C634();
      v12 = PXLocalizedString(v13);

      goto LABEL_7;
    }
  }

  v12 = [v3 message];
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14 = sub_1A524C674();
  v16 = v15;

  result = sub_1A45D9AF4();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = result;
  a1[5] = v18;
  a1[6] = v19;
  a1[7] = v20;
  return result;
}

id sub_1A45D9AF4()
{
  v1 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8);
  result = *(v0 + *(v5 + 32));
  if (result)
  {
    result = [result numberOfAssetResults];
    if (result)
    {
      v7 = result;
      v8 = [result integerValue];

      if (v8 < 1)
      {
        return 0;
      }

      else
      {
        v9 = sub_1A524C634();
        v10 = PXLocalizedString(v9);

        v11 = sub_1A524C674();
        sub_1A45DBCD8(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
        v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
        v13 = swift_allocObject();
        sub_1A45DBC70(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
        return v11;
      }
    }
  }

  return result;
}

uint64_t sub_1A45D9CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  v8 = *(v7 + 20);
  v9 = sub_1A5243994();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t sub_1A45D9D50(uint64_t a1)
{
  MEMORY[0x1A5907B60](0x2D686372616573, 0xE700000000000000);
  sub_1A5243994();
  sub_1A524E624();
  return 0;
}

uint64_t sub_1A45D9E68@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A43A1980(24.0);
  v7 = v6;
  v8 = sub_1A43A1980(24.0);
  v10 = v9;
  v11 = sub_1A3C52D68();
  v13 = v12;
  v15 = v14;
  v16 = sub_1A3C4ED50(v11);
  v20[8] = 1;
  *v4 = sub_1A45D91B0;
  *(v4 + 1) = 0;
  v4[16] = 2;
  *(v4 + 3) = 1;
  v4[32] = 1;
  *(v4 + 5) = v5;
  *(v4 + 6) = v7;
  *(v4 + 7) = v8;
  *(v4 + 8) = v10;
  *(v4 + 9) = v11;
  *(v4 + 10) = v13;
  v4[88] = v15;
  v4[89] = v16;
  swift_storeEnumTagMultiPayload();
  v17 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v4, 6, v17, v18 & 1, a1);
}

uint64_t sub_1A45D9F9C@<X0>(void *a2@<X8>)
{
  MEMORY[0x1A5907B60](0x2D686372616573, 0xE700000000000000);
  sub_1A5243994();
  result = sub_1A524E624();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

id sub_1A45DA02C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *v2;
  v4 = *(a1 + 20);
  v5 = *(type metadata accessor for LemonadeSearchFeedOptions(0) + 20);
  v6 = sub_1A5243994();
  (*(*(v6 - 8) + 16))(&a2[v5], v2 + v4, v6);
  *a2 = v8;

  return v8;
}

void sub_1A45DA0C8(void **a1, uint64_t a2)
{
  sub_1A45DB77C(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  type metadata accessor for SearchResultItemListManager(0);
  v7 = *a1;
  v8 = *(type metadata accessor for LemonadeSearchFeedOptions(0) + 20);
  v9 = sub_1A5243994();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, a1 + v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);

  SearchResultItemListManager.__allocating_init(photoLibraryContext:collectionSectionProvider:limitTo:)(a2, v7, v6);
}

uint64_t sub_1A45DA228@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5243CE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243C84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5243C94();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v13, *MEMORY[0x1E69C2898], v11);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C2880], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C28B8], v2);

  return sub_1A48F05F4(v15, v13, v9, v5, a1);
}

uint64_t sub_1A45DA484()
{
  sub_1A45DBE5C(&qword_1EB129378, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider, &unk_1A534EB14);

  return sub_1A3C47918();
}

void sub_1A45DA4F0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v12[1] = a2;
  sub_1A41C369C(0);
  v12[3] = *(v3 - 8);
  v12[4] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v12[0] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1A45DB77C(0, &qword_1EB13E7D0, sub_1A41C369C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12[6] = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12[16] = v12 - v9;
  v12[13] = MEMORY[0x1E6980E30];
  sub_1A45DB77C(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], v5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = a1[1];
  v12[33] = *a1;
  v12[34] = v11;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45DAD58(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A45DB8DC(0);
  sub_1A45DA4F0(v2, (a1 + *(v4 + 44)));
}

void sub_1A45DADBC()
{
  v0 = sub_1A5243994();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultItem.collectionItemType.getter(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E69C2700])
  {
    v5 = 3;
  }

  else if (v4 == *MEMORY[0x1E69C26F8])
  {
    v5 = 5;
  }

  else if (v4 == *MEMORY[0x1E69C26E8])
  {
    v5 = 4;
  }

  else if (v4 == *MEMORY[0x1E69C2710])
  {
    v5 = 2;
  }

  else if (v4 == *MEMORY[0x1E69C26E0] || v4 == *MEMORY[0x1E69C26F0])
  {
    v5 = 6;
  }

  else
  {
    if (v4 != *MEMORY[0x1E69C26D0] && v4 != *MEMORY[0x1E69C2708] && v4 != *MEMORY[0x1E69C26D8])
    {
      sub_1A524E6E4();
      __break(1u);
      return;
    }

    v5 = 0;
  }

  v9 = [objc_opt_self() sharedSession];
  SearchResultItem.parsecIdentifier.getter();
  v10 = sub_1A524C634();

  [v9 reportSearchCollectionResultSelected:v10 type:v5];
}

void sub_1A45DAFF4()
{
  sub_1A45DADBC();
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E6991CB0];
  sub_1A45DB77C(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v3;
  v4 = v1;
  *(inited + 48) = sub_1A524C634();
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A45DBDEC(inited + 32, sub_1A3F24E98);
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v5 = sub_1A524C3D4();

  [v0 sendEvent:v4 withPayload:v5];
}

uint64_t sub_1A45DB1B4(uint64_t a1)
{
  *(a1 + 8) = sub_1A45DBE5C(&qword_1EB129378, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider, &unk_1A534EB14);
  result = sub_1A45DBE5C(&unk_1EB1293A0, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider, &unk_1A534EB30);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A45DB324(uint64_t a1)
{
  result = sub_1A45DBE5C(&unk_1EB129390, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider, &unk_1A534EB68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A45DB4B4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for PhotosSearchCollectionSectionProvider(319, a2);
  if (v3 <= 0x3F)
  {
    result = sub_1A5243994();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_6(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5243994();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_6(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5243994();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A45DB6B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhotosSearchCollectionSectionProvider(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A5243994();
    if (v3 <= 0x3F)
    {
      sub_1A45DB77C(319, &qword_1EB13E790, sub_1A45DB7E0, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A45DB77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A45DB7E0()
{
  result = qword_1EB13E798;
  if (!qword_1EB13E798)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13E798);
  }

  return result;
}

unint64_t sub_1A45DB844()
{
  result = qword_1EB1C9540;
  if (!qword_1EB1C9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C9540);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore37LemonadeSearchCollectionNoResultsView33_507024BB14EA46003FCF6AB3E187678CLLV11ActionModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1A45DB8DC(uint64_t a1)
{
  if (!qword_1EB13E7A8)
  {
    sub_1A45DB77C(255, &qword_1EB13E7B0, sub_1A45DB974, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E7A8);
    }
  }
}

void sub_1A45DB974(uint64_t a1)
{
  if (!qword_1EB13E7B8)
  {
    sub_1A45DBA1C(255);
    sub_1A45DB77C(255, &qword_1EB13E7D0, sub_1A41C369C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13E7B8);
    }
  }
}

void sub_1A45DBA1C(uint64_t a1)
{
  if (!qword_1EB13E7C0)
  {
    sub_1A45DBA7C(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E7C0);
    }
  }
}

void sub_1A45DBA7C(uint64_t a1)
{
  if (!qword_1EB13E7C8)
  {
    sub_1A453B8B4(255);
    sub_1A45DBB10(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E7C8);
    }
  }
}

void sub_1A45DBB10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A45DBB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A45DBBD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A45DB77C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A45DBC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45DBCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A45DBD40()
{
  v1 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 24));
  if (v2)
  {
    v3 = [v2 actionHandler];
    if (v3)
    {
      v4 = v3;
      (*(v3 + 2))();

      _Block_release(v4);
    }
  }
}

uint64_t sub_1A45DBDEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45DBE5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A45DBEA4(uint64_t a1)
{
  if (!qword_1EB13E7E8)
  {
    sub_1A45DB77C(255, &qword_1EB13E7B0, sub_1A45DB974, MEMORY[0x1E6981F40]);
    sub_1A45DBF38();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E7E8);
    }
  }
}

unint64_t sub_1A45DBF38()
{
  result = qword_1EB13E7F0;
  if (!qword_1EB13E7F0)
  {
    sub_1A45DB77C(255, &qword_1EB13E7B0, sub_1A45DB974, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E7F0);
  }

  return result;
}

uint64_t sub_1A45DC07C(void **a1)
{
  sub_1A45DC950(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45DEBF8(0, &qword_1EB122BB8, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v13 = *(a1 + *(type metadata accessor for GenerativeStoryFeedbackButtonsView(0) + 28));
  sub_1A45DE59C(0, &qword_1EB121C80, sub_1A45DBFF4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v8 = v12;
  if (v12)
  {
    *v4 = sub_1A5249314();
    *(v4 + 1) = 0x4031000000000000;
    v4[16] = 0;
    sub_1A45DEC68(0);
    sub_1A45DC328(v8, a1, &v4[*(v9 + 44)]);
    sub_1A45DE284(v4, v7, sub_1A45DC950);
    swift_storeEnumTagMultiPayload();
    sub_1A45DCA9C();
    sub_1A45DD088(&qword_1EB1219C0, sub_1A45DC950, MEMORY[0x1E69817F8]);
    sub_1A45DD0D0();
    sub_1A5249744();

    return sub_1A45DE6C8(v4, sub_1A45DC950);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A45DCA9C();
    sub_1A45DD088(&qword_1EB1219C0, sub_1A45DC950, MEMORY[0x1E69817F8]);
    sub_1A45DD0D0();
    return sub_1A5249744();
  }
}

uint64_t sub_1A45DC328@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for FeedbackButton(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v42 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  sub_1A52488D4();
  v16 = *a2;
  v17 = a2 + *(type metadata accessor for GenerativeStoryFeedbackButtonsView(0) + 32);
  v19 = v17[8];
  v20 = *(v17 + 2);
  v48 = *v17;
  v18 = v48;
  v49 = v19;
  v50 = v20;
  sub_1A45DE59C(0, &qword_1EB121BA8, sub_1A45DC028, MEMORY[0x1E6981790]);
  v21 = v16;
  sub_1A524B6C4();
  v22 = v45;
  v23 = v46;
  *v15 = 1;
  *(v15 + v6[8]) = a1;
  v24 = v47;
  *(v15 + v6[9]) = v21;
  v25 = v15 + v6[10];
  *v25 = v22;
  *(v25 + 2) = v23;
  v25[24] = v24;
  v26 = v15 + v6[11];
  LOBYTE(v48) = 0;
  v27 = v21;
  v28 = a1;
  sub_1A524B694();
  v29 = *(&v45 + 1);
  *v26 = v45;
  *(v26 + 1) = v29;
  sub_1A52488C4();
  v48 = v18;
  v49 = v19;
  v50 = v20;
  sub_1A524B6C4();
  v30 = v45;
  v31 = v46;
  *v12 = 2;
  *(v12 + v6[8]) = v28;
  v32 = v47;
  *(v12 + v6[9]) = v27;
  v33 = v12 + v6[10];
  *v33 = v30;
  *(v33 + 2) = v31;
  v33[24] = v32;
  v34 = v12 + v6[11];
  LOBYTE(v48) = 0;
  v35 = v28;
  sub_1A524B694();
  v36 = *(&v45 + 1);
  *v34 = v45;
  *(v34 + 1) = v36;
  v37 = v42;
  sub_1A45DE284(v15, v42, type metadata accessor for FeedbackButton);
  v38 = v43;
  sub_1A45DE284(v12, v43, type metadata accessor for FeedbackButton);
  v39 = v44;
  sub_1A45DE284(v37, v44, type metadata accessor for FeedbackButton);
  sub_1A45DCA18(0);
  sub_1A45DE284(v38, v39 + *(v40 + 48), type metadata accessor for FeedbackButton);
  sub_1A45DE6C8(v12, type metadata accessor for FeedbackButton);
  sub_1A45DE6C8(v15, type metadata accessor for FeedbackButton);
  sub_1A45DE6C8(v38, type metadata accessor for FeedbackButton);
  return sub_1A45DE6C8(v37, type metadata accessor for FeedbackButton);
}

void sub_1A45DC670(uint64_t a1)
{
  v2 = sub_1A5249FB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(type metadata accessor for GenerativeStoryFeedbackButtonsView(0) + 28));
  sub_1A45DE59C(0, &qword_1EB121C80, sub_1A45DBFF4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10)
  {
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    v6 = [swift_getObjCClassFromMetadata() sharedInstance];
    v7 = [v6 centralizedFeedbackUI];

    if (!v7)
    {
      v8 = sub_1A45DDEBC(v5);
      MEMORY[0x1EEE9AC00](v8);
      *(&v9 - 2) = a1;
      sub_1A5249FA4();
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_1A45DC87C(uint64_t a1, double a2)
{
  if (!qword_1EB123D40)
  {
    sub_1A45DC8DC(255, a2);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB123D40);
    }
  }
}

void sub_1A45DC8DC(uint64_t a1, double a2)
{
  if (!qword_1EB121D00)
  {
    sub_1A45DEBF8(255, &qword_1EB122628, MEMORY[0x1E697F960]);
    v2 = sub_1A524B514();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB121D00);
    }
  }
}

void sub_1A45DC950(uint64_t a1)
{
  if (!qword_1EB1219B8)
  {
    sub_1A45DC9E4(255);
    sub_1A45DD088(&qword_1EB121318, sub_1A45DC9E4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1219B8);
    }
  }
}

void sub_1A45DCA18(uint64_t a1)
{
  if (!qword_1EB125BD0)
  {
    type metadata accessor for FeedbackButton(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB125BD0);
    }
  }
}

void sub_1A45DCA9C()
{
  if (!qword_1EB1239A0)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1239A0);
    }
  }
}

void *sub_1A45DCAF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
  v4 = v3[5];
  v5 = sub_1A3C4A780();
  v6 = sub_1A5246F24();
  (*(*(v6 - 8) + 16))(&a2[v4], v5, v6);
  v7 = v3[6];
  *&a2[v7] = swift_getKeyPath();
  sub_1A45DBFC0(0);
  swift_storeEnumTagMultiPayload();
  v8 = v3[7];
  sub_1A45DBFF4(0);
  sub_1A524B694();
  *&a2[v8] = v11;
  v9 = &a2[v3[8]];
  sub_1A45DC028(0);
  result = sub_1A524B694();
  *v9 = v11;
  v9[8] = BYTE8(v11);
  *(v9 + 2) = v12;
  return result;
}

void sub_1A45DCC30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A45DC07C(v2);
  sub_1A45DE284(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryFeedbackButtonsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1A45DE2EC(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for GenerativeStoryFeedbackButtonsView);
  sub_1A45DC87C(0, v8);
  v10 = (a2 + *(v9 + 36));
  *v10 = sub_1A45DEE34;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = 0;
}

void sub_1A45DCD8C(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB1265E0, 0x1E69788F0);
  if (v1 <= 0x3F)
  {
    sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      sub_1A45DE59C(319, &unk_1EB1246F0, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A45DE59C(319, &qword_1EB121C80, sub_1A45DBFF4, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1A45DE59C(319, &qword_1EB121BA8, sub_1A45DC028, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A45DCEF8(double a1)
{
  result = qword_1EB123D48;
  if (!qword_1EB123D48)
  {
    sub_1A45DC87C(255, a1);
    sub_1A45DE214(&qword_1EB121D08, sub_1A45DC8DC, sub_1A45DCFBC, MEMORY[0x1E6981600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D48);
  }

  return result;
}

unint64_t sub_1A45DCFBC(double a1)
{
  result = qword_1EB122630;
  if (!qword_1EB122630)
  {
    sub_1A45DEBF8(255, &qword_1EB122628, MEMORY[0x1E697F960]);
    sub_1A45DD088(&qword_1EB1219C0, sub_1A45DC950, MEMORY[0x1E69817F8]);
    sub_1A45DD0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122630);
  }

  return result;
}

uint64_t sub_1A45DD088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A45DD0D0()
{
  result = qword_1EB1239A8;
  if (!qword_1EB1239A8)
  {
    sub_1A45DCA9C();
    sub_1A3E43880();
    sub_1A3E43C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1239A8);
  }

  return result;
}

void sub_1A45DD178(uint64_t a1)
{
  type metadata accessor for PXPhotosFeedbackType();
  if (v1 <= 0x3F)
  {
    sub_1A52488E4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PhotosFeedbackActionPerformer();
      if (v3 <= 0x3F)
      {
        sub_1A3C52C70(319, &qword_1EB1265E0, 0x1E69788F0);
        if (v4 <= 0x3F)
        {
          sub_1A45DE59C(319, &qword_1EB1214C8, sub_1A45DC028, MEMORY[0x1E6981948]);
          if (v5 <= 0x3F)
          {
            sub_1A45DE54C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1A45DD2C0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedbackButton(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A45DE0CC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A45DE284(v2, &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FeedbackButton);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1A45DE2EC(&v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for FeedbackButton);
  v23 = v2;
  sub_1A45DE174(0);
  sub_1A45DE214(&qword_1EB123CD8, sub_1A45DE174, sub_1A3E7440C, MEMORY[0x1E6982090]);
  sub_1A524B704();
  v15 = v2 + *(v5 + 44);
  v16 = *v15;
  v17 = *(v15 + 8);
  v25 = v16;
  v26 = v17;
  sub_1A45DE54C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v25 = v24;
  sub_1A45DD088(&qword_1EB121B48, sub_1A45DE0CC, MEMORY[0x1E697D680]);
  sub_1A524ABC4();
  (*(v10 + 8))(v12, v9);
  sub_1A524A0F4();
  sub_1A524A1A4();
  v18 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  sub_1A45DE404(0);
  v21 = (a1 + *(v20 + 36));
  *v21 = KeyPath;
  v21[1] = v18;
}

double sub_1A45DD60C(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = (a1 + *(v3 + 44));
  v12 = *(v10 + 1);
  v21 = *v10;
  v11 = v21;
  v22 = v12;
  sub_1A45DE54C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  v19[8] = v11;
  v20 = v12;
  v19[7] = (v23 & 1) == 0;
  sub_1A524B6B4();

  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_1A45DE284(a1, v6, type metadata accessor for FeedbackButton);
  sub_1A524CC54();
  v14 = sub_1A524CC44();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_1A45DE2EC(v6, v16 + v15, type metadata accessor for FeedbackButton);
  sub_1A3D4D930(0, 0, v9, &unk_1A534EF20, v16);

  return result;
}

uint64_t sub_1A45DD88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FeedbackButton(0);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v4[8] = v8;
  v4[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A45DD988, v8, v7);
}

uint64_t sub_1A45DD988()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *v3;
  v5 = *(v3 + *(v0[3] + 28));
  sub_1A45DE284(v3, v1, type metadata accessor for FeedbackButton);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  sub_1A45DE2EC(v1, v7 + v6, type metadata accessor for FeedbackButton);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1A45DDAC8;

  return PhotosFeedbackActionPerformer.reportMemoryFeedback(type:memory:completionHandler:)(v4, v5, sub_1A45DE850, v7);
}

uint64_t sub_1A45DDAC8()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A45DDC0C, v3, v2);
}

uint64_t sub_1A45DDC0C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1A45DDC74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedbackButton(0);
  v8 = *(a1 + *(v7 + 24));
  v9 = *a1;
  v10 = a1 + *(v7 + 32);
  v11 = *v10;
  v12 = *(v10 + 2);
  LOBYTE(v10) = v10[24];
  v22 = v11;
  v23 = v12;
  v24 = v10;
  sub_1A45DE59C(0, &qword_1EB1214C8, sub_1A45DC028, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v20);
  result = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x70))(v9, (v9 == v20) & ~v21);
  if (result)
  {
    v14 = result;
    sub_1A524B524();
    v15 = *MEMORY[0x1E6981698];
    v16 = sub_1A524B594();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v6, v15, v16);
    (*(v17 + 56))(v6, 0, 1, v16);
    v18 = sub_1A524B564();

    sub_1A45DE6C8(v6, sub_1A3EE4C14);
    v19 = sub_1A524B434();

    result = swift_getKeyPath();
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *a2 = v18;
  a2[1] = result;
  a2[2] = v19;
  return result;
}

uint64_t sub_1A45DDEBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45DBFC0(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45DE284(v2, v10, sub_1A45DBFC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5249FB4();
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

void sub_1A45DE0CC(uint64_t a1)
{
  if (!qword_1EB121B40)
  {
    sub_1A45DE174(255);
    sub_1A45DE214(&qword_1EB123CD8, sub_1A45DE174, sub_1A3E7440C, MEMORY[0x1E6982090]);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121B40);
    }
  }
}

void sub_1A45DE1A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A45DE54C(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A45DE214(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

uint64_t sub_1A45DE284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45DE2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45DE380(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_1A45DE404(uint64_t a1)
{
  if (!qword_1EB123E98)
  {
    sub_1A45DE484(255);
    sub_1A45DE1A8(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123E98);
    }
  }
}

void sub_1A45DE484(uint64_t a1)
{
  if (!qword_1EB121E28)
  {
    sub_1A45DE0CC(255);
    sub_1A45DD088(&qword_1EB121B48, sub_1A45DE0CC, MEMORY[0x1E697D680]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E28);
    }
  }
}

void sub_1A45DE54C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A45DE59C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45DE600()
{
  v2 = *(type metadata accessor for FeedbackButton(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A45DD88C(v4, v5, v6, v0 + v3);
}

uint64_t sub_1A45DE6C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for FeedbackButton(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v1 + 20);
  v5 = sub_1A52488E4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A45DE850(char a1)
{
  result = type metadata accessor for FeedbackButton(0);
  if (a1)
  {
    sub_1A45DE59C(0, &qword_1EB1214C8, sub_1A45DC028, MEMORY[0x1E6981948]);
    return sub_1A524B904();
  }

  return result;
}

uint64_t objectdestroyTm_65()
{
  v1 = type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[5];
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[6];
  sub_1A45DBFC0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249FB4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A45DEAAC(void *a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for PhotosFeedbackActionPerformer();
    PhotosFeedbackActionPerformer.__allocating_init(parentViewController:)(a1);
    type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
    sub_1A45DE59C(0, &qword_1EB121C80, sub_1A45DBFF4, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
  }

  else
  {
    type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
    oslog = sub_1A5246F04();
    v3 = sub_1A524D244();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v3, "No view controller to present feedback", v4, 2u);
      MEMORY[0x1A590EEC0](v4, -1, -1);
    }
  }
}

void sub_1A45DEBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A45DC950(255);
    v7 = v6;
    sub_1A45DCA9C();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A45DEC68(uint64_t a1)
{
  if (!qword_1EB124548)
  {
    sub_1A45DC9E4(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124548);
    }
  }
}

unint64_t sub_1A45DECD0()
{
  result = qword_1EB123EA0;
  if (!qword_1EB123EA0)
  {
    sub_1A45DE404(255);
    sub_1A45DE0CC(255);
    sub_1A45DD088(&qword_1EB121B48, sub_1A45DE0CC, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_1A45DEDE4(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EA0);
  }

  return result;
}

uint64_t sub_1A45DEDE4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A45DE1A8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIImage_optional __swiftcall UIImage.init(pixelBuffer:)(CVBufferRef pixelBuffer)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, v5);
  if (v5[0])
  {
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage_];
  }

  else
  {

    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

double sub_1A45DEEE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1A45DEF50();
  sub_1A524B194();
  return result;
}

unint64_t sub_1A45DEF50()
{
  result = qword_1EB18DB30[0];
  if (!qword_1EB18DB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18DB30);
  }

  return result;
}

void sub_1A45DEFA4(uint64_t a1)
{
  if (!qword_1EB128A08)
  {
    sub_1A45DEF50();
    v1 = sub_1A5247FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128A08);
    }
  }
}

uint64_t sub_1A45DF058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A45DF0A0(uint64_t a1)
{
  if (!qword_1EB13E808)
  {
    sub_1A45DEF50();
    v1 = sub_1A5247D54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E808);
    }
  }
}

double sub_1A45DF11C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = [objc_opt_self() bezierPathWithRoundedRect:*(v5 + 1) byRoundingCorners:a2 cornerRadii:{a3, a4, a5, *v5, *v5}];
  v8 = [v7 CGPath];
  sub_1A524A324();

  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

void (*sub_1A45DF1E8(uint64_t *a1))(void *a1)
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

uint64_t sub_1A45DF270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45DEF50();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1A45DF2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45DEF50();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1A45DF338(uint64_t a1)
{
  v2 = sub_1A45DEF50();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1A45DF388()
{
  result = qword_1EB18DB50[0];
  if (!qword_1EB18DB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18DB50);
  }

  return result;
}

unint64_t sub_1A45DF3E0()
{
  result = qword_1EB18DB48;
  if (!qword_1EB18DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18DB48);
  }

  return result;
}

void type metadata accessor for UIRectCorner()
{
  if (!qword_1EB126C58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB126C58);
    }
  }
}

void sub_1A45DF484(void *a1)
{
  sub_1A3F96FA8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A45DF5DC(a1);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 88))(v4, v5);
  sub_1A5245FB4();
}

uint64_t sub_1A45DF5DC(void *a1)
{
  v2 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 56))(v9, v10);
  if (!v12)
  {
    v13 = sub_1A3C38A40();
    (*(v6 + 16))(v8, v13, v5);
    v14 = sub_1A524D224();
    sub_1A3C341C8(a1, v25);
    v15 = sub_1A5246F04();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v16 = 136315138;
      v22[1] = v14;
      v18 = v26;
      v17 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v17 + 48))(v18, v17);
      sub_1A45DF8BC();
      v19 = sub_1A524EA44();
      v21 = v20;
      sub_1A3CA2CF8(v4);
      __swift_destroy_boxed_opaque_existential_0(v25);
      sub_1A3C2EF94(v19, v21, &v24);
    }

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(v25);
    return 0;
  }

  return result;
}

unint64_t sub_1A45DF8BC()
{
  result = qword_1EB13E810;
  if (!qword_1EB13E810)
  {
    type metadata accessor for LemonadeBookmark(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosCollectionStaticColorGradeModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t storeEnumTagSinglePayload for PhotosCollectionStaticColorGradeModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of OneUpSharePlayActivity.prepareForActivation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of OneUpSharePlayActivity.prepareForActivation(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 160) + **(a4 + 160));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OneUpSharePlayActivity.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 168) + **(a2 + 168));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D43A98;

  return v7(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore26OneUpSharePlaySessionStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t dispatch thunk of OneUpSharePlayMessenger.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A3CA8098;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of OneUpSharePlayMessenger.send<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 48) + **(a7 + 48));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1A3CA8098;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of OneUpSharePlayJournal.add<A, B>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 64) + **(a10 + 64));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1A3D60150;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of OneUpSharePlayJournal.remove(attachment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3CA8098;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of OneUpSharePlayJournalAttachment.load<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A3CA8098;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of OneUpSharePlayJournalAttachment.loadMetadata<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 24) + **(a7 + 24));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1A3CA8098;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t PhotosItemListSelectionSnapshot.selectedIndexes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v4 = sub_1A52414C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PhotosItemListSelectionSnapshot.__allocating_init(itemList:selectedIndexes:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v6 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v7 = sub_1A52414C4();
  (*(*(v7 - 8) + 32))(v4 + v6, a2, v7);
  return v4;
}

uint64_t PhotosItemListSelectionSnapshot.init(itemList:selectedIndexes:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  v5 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v6 = sub_1A52414C4();
  (*(*(v6 - 8) + 32))(v2 + v5, a2, v6);
  return v2;
}

uint64_t PhotosItemListSelectionSnapshot.isSelected(item:)(void *a1)
{
  v2 = v1;
  sub_1A42DCE20(v2 + 16, v6);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5[3] = swift_getAssociatedTypeWitness();
    v5[4] = swift_getAssociatedConformanceWitness();
    v5[5] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1A5246224();
  }

  sub_1A42DCF40(v6);
  return 0;
}

uint64_t PhotosItemListSelectionSnapshot.index(for:)(void *a1)
{
  sub_1A42DCE20(v1 + 16, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4[3] = swift_getAssociatedTypeWitness();
    v4[4] = swift_getAssociatedConformanceWitness();
    v4[5] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_1A5246224();
  }

  sub_1A42DCF40(v5);
  return 0;
}

uint64_t PhotosItemListSelectionSnapshot.deinit()
{
  sub_1A42DCF40(v0 + 16);
  v1 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v2 = sub_1A52414C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosItemListSelectionSnapshot.__deallocating_deinit()
{
  sub_1A42DCF40(v0 + 16);
  v1 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v2 = sub_1A52414C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t PhotosItemListSelectionSnapshot.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](v0);
  return sub_1A524ECE4();
}

uint64_t type metadata accessor for PhotosItemListSelectionSnapshot(uint64_t a1)
{
  result = qword_1EB1C9800;
  if (!qword_1EB1C9800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A45E0EBC(uint64_t a1)
{
  result = sub_1A52414C4();
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

uint64_t sub_1A45E0FA4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return sub_1A524EAB4();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A45E1030()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A45E1098()
{
  swift_getKeyPath();
  (*(*v0 + 144))();

  v1 = v0[2];
  sub_1A45E1510(v1, v0[3]);
  return v1;
}

uint64_t sub_1A45E1108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A45E1154(uint64_t *a1, __n128 a2)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1A45E1510(*a1, v3);
  return sub_1A45E1198(v2, v3);
}

double sub_1A45E1198(uint64_t a1, unint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        if (a2 == 3)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

LABEL_10:
      if (a2 >= 4)
      {
        if (v5 == a1 && v6 == a2)
        {
          goto LABEL_18;
        }

        v7 = v2[2];
        v8 = v2[3];
        v9 = sub_1A524EAB4();
        v6 = v8;
        v10 = v9;
        v5 = v7;
        if (v10)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_16;
    }

    if (a2 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (a2 == 1)
        {
          goto LABEL_18;
        }

LABEL_16:
        KeyPath = swift_getKeyPath();
        v12 = MEMORY[0x1EEE9AC00](KeyPath);
        (*(*v2 + 152))(v12);
        sub_1A440B338(a1, a2);

        return result;
      }

      goto LABEL_10;
    }

    if (a2)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v2[2] = a1;
  v2[3] = a2;

  return sub_1A440B338(v5, v6);
}

uint64_t sub_1A45E146C()
{
  sub_1A440B338(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtCC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel7Content___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A45E1510(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A45E155C()
{
  v0[3] = OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState;
  v0[4] = sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45E1600, v2, v1);
}

uint64_t sub_1A45E1600()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = *(v1 + v2);
  v0[6] = v3;
  v4 = *(v1 + v2 + 8);
  v0[7] = v4;
  sub_1A45E1510(v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A45E1684, 0, 0);
}

uint64_t sub_1A45E1684(__n128 a1)
{
  v2 = v1[7];
  if (!v2)
  {
LABEL_4:
    v1[8] = sub_1A524CC44();
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A45E1760, v4, v3);
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      goto LABEL_4;
    }

    a1.n128_f64[0] = sub_1A440B338(v1[6], v2);
  }

  v5 = v1[1];

  return v5(a1);
}

uint64_t sub_1A45E1760()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = *(v1 + v2);
  v4 = *(v1 + v2 + 8);
  *(v1 + v2) = xmmword_1A5301350;
  sub_1A440B338(v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content);
  v0[9] = v5;
  if (v5[3] == 1)
  {
    v5[2] = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = xmmword_1A5301350;
    (*(*v5 + 152))(KeyPath, sub_1A45E4738, v7, MEMORY[0x1E69E7CA8] + 8);
  }

  v0[10] = 0;
  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E18B4, 0, 0);
}

uint64_t sub_1A45E18B4()
{
  v49 = v0;
  sub_1A3C52C70(0, &qword_1EB1268C8, off_1E771F050);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[11] = v1;
  if ([v1 showAssetRichDescription])
  {
    sub_1A440B338(v0[6], v0[7]);
    v0[12] = sub_1A524CC44();
    v2 = sub_1A524CBC4();
    v4 = v3;
    v5 = sub_1A45E1EDC;
    goto LABEL_22;
  }

  v6 = sub_1A446720C();
  v7 = [v6 photoLibrary];

  if (!v7)
  {
    __break(1u);
    goto LABEL_29;
  }

  v11 = [v7 librarySpecificFetchOptions];
  v0[14] = v11;

  [v11 setFetchLimit_];
  sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  v13 = sub_1A446720C();
  v14 = [v13 uuid];

  if (!v14)
  {
LABEL_29:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  sub_1A440B338(v0[6], v0[7]);
  v15 = objc_opt_self();
  v16 = sub_1A524C674();
  v18 = v17;

  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  v19 = sub_1A524CA14();

  v20 = [v15 fetchAssetsWithUUIDs:v19 options:v11];

  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = [v20 firstObject];

  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = objc_opt_self();
  sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A52F9790;
  *(v23 + 32) = v21;
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v24 = v21;
  v25 = sub_1A524CA14();

  v47 = v22;
  v26 = [v22 fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType:1 forAssets:v25];

  sub_1A3C52C70(0, &qword_1EB13E820, 0x1E6978850);
  v27 = sub_1A524C3E4();

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_1A42414C4(*(v27 + 16), 0);
    v30 = sub_1A3E2CBF8(&v48, v29 + 4, v28, v27);
    sub_1A3C42540(v48);
    if (v30 == v28)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v32 = sub_1A45E24C0(v29, v31);

  v33 = v24;
  if (v32)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1A52F9790;
    *(v34 + 32) = v24;
    v35 = v24;
    v36 = sub_1A524CA14();

    v37 = [v47 fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType:2 forAssets:v36];

    v38 = sub_1A524C3E4();
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = sub_1A42414C4(*(v38 + 16), 0);
      v41 = sub_1A3E2CBF8(&v48, v40 + 4, v39, v38);
      sub_1A3C42540(v48);
      if (v41 == v39)
      {
LABEL_16:
        v43 = sub_1A45E24C0(v40, v42);

        if (v43)
        {
          if (*(v43 + 16))
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          if (*(v32 + 16))
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v0[19] = v0[10];
          v0[20] = sub_1A524CC44();
          v2 = sub_1A524CBC4();
          v4 = v45;
          v5 = sub_1A45E2378;
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

LABEL_20:

LABEL_21:
  v0[15] = sub_1A524CC44();
  v2 = sub_1A524CBC4();
  v4 = v44;
  v5 = sub_1A45E20BC;
LABEL_22:
  v8 = v5;
  v9 = v2;
  v10 = v4;

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1A45E1EDC()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  v4 = *(v3 + v2);
  v5 = *(v3 + v2 + 8);
  *(v3 + v2) = xmmword_1A5344DD0;
  sub_1A440B338(v4, v5);
  if (*(v1 + 24) == 2)
  {
    *(v0[9] + 16) = 0;
    v6 = v0[10];
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    KeyPath = swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = xmmword_1A5344DD0;
    (*(*v7 + 152))(KeyPath, sub_1A45E4738, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  v0[13] = v6;
  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2028, 0, 0);
}

uint64_t sub_1A45E2028(__n128 a1)
{
  v1[19] = v1[13];
  v1[20] = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2378, v3, v2);
}

uint64_t sub_1A45E20BC()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  v4 = *(v3 + v2);
  v5 = *(v3 + v2 + 8);
  *(v3 + v2) = xmmword_1A5344DD0;
  sub_1A440B338(v4, v5);
  if (*(v1 + 24) == 2)
  {
    *(v0[9] + 16) = 0;
  }

  else
  {
    v6 = v0[9];
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5344DD0;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2200, 0, 0);
}

uint64_t sub_1A45E2200()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A45E2268()
{
  v1 = v0[17];
  v2 = v0[16];
  v3 = v0[2];
  v4 = v0[3];

  v5 = (v3 + v4);
  v6 = *(v3 + v4);
  v7 = *(v3 + v4 + 8);
  *v5 = v2;
  v5[1] = v1;
  sub_1A440B338(v6, v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45E2318()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45E2378()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  v4 = *(v3 + v2);
  v5 = *(v3 + v2 + 8);
  *(v3 + v2) = xmmword_1A5344DD0;
  sub_1A440B338(v4, v5);
  if (*(v1 + 24) == 2)
  {
    *(v0[9] + 16) = 0;
  }

  else
  {
    v6 = v0[9];
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5344DD0;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E4750, 0, 0);
}

uint64_t sub_1A45E24C0(unint64_t a1, __n128 a2)
{
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, i & ~(i >> 63), 0);
    v5 = v9;
    if (v3)
    {
      v3 = sub_1A524E2B4();
      if (!v3)
      {
        return v5;
      }
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        return v5;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_17:
    ;
  }

  v6 = MEMORY[0x1A59097F0](0, a1);
LABEL_10:
  v7 = v6;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1A524C664();
  }

  else
  {
  }

  return 0;
}

double sub_1A45E2670()
{
  sub_1A3C56824(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1A3DCC930(0, 0, v3, &unk_1A534F448, v5);

  return result;
}

uint64_t sub_1A45E2798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1A5245004();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1A5246984();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1A3C56824(0, &qword_1EB13E828, MEMORY[0x1E69C1468], MEMORY[0x1E69E6720]);
  v4[19] = swift_task_alloc();
  v6 = sub_1A52452A4();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_1A5244FD4();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v8 = sub_1A5245124();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v9 = sub_1A52469C4();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2A68, 0, 0);
}

uint64_t sub_1A45E2A68()
{
  *(v0 + 264) = sub_1A524CC54();
  *(v0 + 272) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2B00, v2, v1);
}

uint64_t sub_1A45E2B00()
{
  v1 = v0[13];

  v2 = OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState;
  v0[35] = OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = v3[1];
  *v3 = xmmword_1A5301350;
  sub_1A440B338(v4, v5);
  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content);
  v0[36] = v6;
  if (v6[3] == 1)
  {
    v6[2] = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5301350;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  v0[37] = 0;
  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2C60, 0, 0);
}

uint64_t sub_1A45E2C60()
{
  sub_1A3C52C70(0, &qword_1EB1268C8, off_1E771F050);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[38] = v1;
  v2 = MEMORY[0x1E69C1878];
  sub_1A3C56824(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52FC9F0;
  sub_1A52469B4();
  sub_1A52469A4();
  v0[12] = v3;
  sub_1A45E4630(&qword_1EB124A50, MEMORY[0x1E69C1878], MEMORY[0x1E69C1880]);
  sub_1A3C56824(0, &qword_1EB120C98, v2, MEMORY[0x1E69E62F8]);
  sub_1A4000BE0();
  sub_1A524E224();
  sub_1A5245214();
  swift_allocObject();
  v0[39] = sub_1A52451F4();
  v4 = sub_1A52451B4();
  v0[40] = v4;
  if ([v1 showAssetRichDescription])
  {
    v5 = sub_1A446720C();
    v6 = [v5 uuid];

    if (v6)
    {
      v7 = sub_1A524C674();
      v9 = v8;

      v10 = sub_1A446720C();
      v11 = [v10 photoLibrary];
      v0[41] = v11;

      if (v11)
      {
        [v1 useShadowNamesInARD];
        sub_1A5245114();
        sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
        v12 = swift_allocObject();
        v0[42] = v12;
        *(v12 + 16) = xmmword_1A52F8E10;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
        sub_1A5244D94();
        v13 = swift_task_alloc();
        v0[43] = v13;
        *v13 = v0;
        v13[1] = sub_1A45E3110;

        return MEMORY[0x1EEE2A0C0](v12, v11);
      }
    }

    v0[49] = sub_1A524CC44();
    v20 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A45E37D8, v20, v19);
  }

  else
  {
    sub_1A5244D24();
    sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
    v14 = swift_allocObject();
    v0[50] = v14;
    *(v14 + 16) = xmmword_1A52F9790;
    *(v14 + 32) = sub_1A446720C();
    v15 = sub_1A52469D4();
    v16 = MEMORY[0x1E69C1888];
    v0[5] = v15;
    v0[6] = v16;
    v0[2] = v4;

    sub_1A4503FF0();
    v17 = swift_task_alloc();
    v0[51] = v17;
    *v17 = v0;
    v17[1] = sub_1A45E3A08;
    v18 = v0[17];

    return MEMORY[0x1EEE2A090](v14, v0 + 2, v18);
  }
}

uint64_t sub_1A45E3110(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {

    v4 = sub_1A45E3FB8;
  }

  else
  {
    v4 = sub_1A45E322C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A45E322C()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[19];
  sub_1A5244CE4();
  swift_allocObject();
  v8 = v2;
  sub_1A5244CD4();
  sub_1A5244FC4();
  (*(v5 + 16))(v4, v3, v6);
  sub_1A5245294();
  v9 = sub_1A5245274();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_1A52469D4();
  v11 = MEMORY[0x1E69C1888];
  v0[10] = v10;
  v0[11] = v11;
  v0[7] = v1;

  sub_1A4503FF0();
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_1A45E33E8;
  v13 = v0[44];
  v14 = v0[42];
  v15 = v0[29];
  v17 = v0[18];
  v16 = v0[19];
  v18 = MEMORY[0x1E69E7CD0];

  return MEMORY[0x1EEE2A380](v14, v16, v13, v18, v15, v0 + 7, v17, 0);
}

uint64_t sub_1A45E33E8(uint64_t a1)
{
  v3 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  sub_1A45E46C4(v3[19], &qword_1EB13E828, MEMORY[0x1E69C1468]);

  if (v1)
  {
    v4 = sub_1A45E40D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 7);
    v4 = sub_1A45E3584;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A45E3584()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 168);
  v29 = *(v0 + 176);
  v9 = *(v0 + 160);
  if (*(v1 + 16))
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 208);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v28 = *(v0 + 112);
    v24 = *(v0 + 328);
    (*(v11 + 16))(v10, v1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));

    v25 = v4;
    v12 = v2;
    v13 = sub_1A5244FF4();
    v15 = v14;

    (*(v8 + 8))(v29, v9);
    (*(v6 + 8))(v27, v26);
    (*(v3 + 8))(v12, v25);
    (*(v11 + 8))(v10, v28);
    v16 = *(v0 + 384);
    *(v0 + 432) = v13;
    *(v0 + 440) = v15;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      *(v0 + 448) = sub_1A524CC44();
      v18 = sub_1A524CBC4();
      v20 = v19;
      v21 = sub_1A45E3CD8;
      goto LABEL_9;
    }
  }

  else
  {

    (*(v8 + 8))(v29, v9);
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    v16 = *(v0 + 384);
  }

  *(v0 + 456) = v16;
  *(v0 + 464) = sub_1A524CC44();
  v18 = sub_1A524CBC4();
  v20 = v22;
  v21 = sub_1A45E3E70;
LABEL_9:

  return MEMORY[0x1EEE6DFA0](v21, v18, v20);
}

uint64_t sub_1A45E37D8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[13];

  v4 = *(v3 + v1);
  v5 = *(v3 + v1 + 8);
  *(v3 + v1) = xmmword_1A5344DC0;
  sub_1A440B338(v4, v5);
  if (*(v2 + 24) == 3)
  {
    *(v0[36] + 16) = 0;
  }

  else
  {
    v6 = v0[36];
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5344DC0;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E391C, 0, 0);
}

uint64_t sub_1A45E391C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45E3A08(uint64_t a1)
{
  v3 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
    v4 = sub_1A45E4230;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v4 = sub_1A45E3B34;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A45E3B34()
{
  v1 = v0[52];
  v2 = sub_1A446720C();
  v3 = [v2 localIdentifier];

  v4 = sub_1A524C674();
  v6 = v5;

  if (*(v1 + 16))
  {
    sub_1A3C5DCA4(v4, v6);
    v8 = v7;

    if (v8)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
  }

  v0[57] = v0[53];
  v0[58] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45E3E70, v10, v9);
}

void sub_1A45E3CD8()
{
  v1 = v0[55];
  v2 = v0[54];
  v3 = v0[35];
  v4 = v0[13];

  v5 = (v4 + v3);
  v6 = *(v4 + v3);
  v7 = *(v4 + v3 + 8);
  *v5 = v2;
  v5[1] = v1;
  sub_1A440B338(v6, v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45E3D88()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A45E3E70()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[13];

  v4 = *(v3 + v1);
  v5 = *(v3 + v1 + 8);
  *(v3 + v1) = xmmword_1A5344DC0;
  sub_1A440B338(v4, v5);
  if (*(v2 + 24) == 3)
  {
    *(v0[36] + 16) = 0;
  }

  else
  {
    v6 = v0[36];
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5344DC0;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E4734, 0, 0);
}

uint64_t sub_1A45E3FB8()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A45E40D0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 224);
  v11 = *(v0 + 216);
  v12 = *(v0 + 232);
  v10 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A45E4230()
{
  v1 = v0[38];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

char *sub_1A45E4328(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content;
  type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel.Content(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1A5241604();
  *&v7[v8] = v9;
  v10 = &v7[OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState];
  *v10 = 0;
  *(v10 + 1) = 0;
  return sub_1A4467460(a1, a2, a3);
}

double sub_1A45E43C4()
{

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState + 8);

  return sub_1A440B338(v1, v2);
}

uint64_t sub_1A45E4458()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A45E2798(v3, v4, v5, v2);
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore0A38DetailsAssetDescriptionWidgetViewModelC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A45E4594(uint64_t a1)
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

uint64_t sub_1A45E4630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A45E4678()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_1A45E1510(v1, v3);
  return sub_1A440B338(v4, v5);
}

uint64_t sub_1A45E46C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56824(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OneUpSharePlayActivityActivationResult.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t OneUpSharePlayActivityCoordinator.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  swift_beginAccess();
  return sub_1A45EC8B0(v1 + 16, a1, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate);
}

uint64_t OneUpSharePlayActivityCoordinator.delegate.setter(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1A45E4AD8(KeyPath, sub_1A45E4A78, &v5, MEMORY[0x1E69E7CA8] + 8);

  return sub_1A45EC970(a1, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);
}

uint64_t sub_1A45E4A78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_1A45ECAEC(v1, v2 + 16);
  return swift_endAccess();
}

double (*OneUpSharePlayActivityCoordinator.delegate.modify(uint64_t **a1))(uint64_t a1)
{
  a1[3] = v1;
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A45E4CF0;
}

double sub_1A45E4CF0(uint64_t a1)
{
  swift_endAccess();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

double sub_1A45E4DAC()
{
  sub_1A45EBBC4();

  return result;
}

double sub_1A45E4DD4@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A45EBBC4();

  return result;
}

double sub_1A45E4E3C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[7];
  v13 = a1;
  v14 = v5;
  v6 = v4;
  sub_1A45EBFD4(0, &qword_1EB140920, MEMORY[0x1E695BF10]);
  v12 = *(v6 + 80);
  sub_1A45EC6B0();
  v7 = sub_1A524C594();
  if (v7)
  {
    v2[7] = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_1A45E4AD8(v10, sub_1A45EC774, v11, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double sub_1A45E4FB0()
{
  sub_1A45EBC38();

  return result;
}

double sub_1A45E4FD8@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A45EBC38();

  return result;
}

double sub_1A45E5040(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[8];
  v13 = a1;
  v14 = v5;
  v6 = v4;
  sub_1A45EBFD4(0, &qword_1EB140920, MEMORY[0x1E695BF10]);
  v12 = *(v6 + 80);
  sub_1A45EC6B0();
  v7 = sub_1A524C594();
  if (v7)
  {
    v2[8] = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_1A45E4AD8(v10, sub_1A45EC934, v11, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double OneUpSharePlayActivityCoordinator.activeSessionCoordinator.getter()
{
  sub_1A45EBCAC();

  return result;
}

double sub_1A45E51DC@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A45EBCAC();

  return result;
}

double sub_1A45E5244(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1A45E4AD8(KeyPath, sub_1A3C6308C, &v5, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double OneUpSharePlayActivityCoordinator.sessionReceivedPublisher.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 80);

  return result;
}

double OneUpSharePlayActivityCoordinator.sessionJoinedPublisher.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 88);

  return result;
}

void sub_1A45E530C()
{
  sub_1A45EC31C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45E5334(uint64_t *a1@<X8>)
{
  *a1 = sub_1A45EC31C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A45E539C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = v2[13];
  v12 = a1;
  v13 = v5;
  sub_1A45EC9CC(0);
  v11 = *(v4 + 80);
  sub_1A45EC22C(&qword_1EB13E890, sub_1A45EC9CC, MEMORY[0x1E69E6500]);
  v6 = sub_1A524C594();
  if (v6)
  {
    v2[13] = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[2] = v2;
    v10[3] = a1;
    sub_1A45E4AD8(v9, sub_1A45EC9EC, v10, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1A45E5538()
{
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  return *(v0 + 112);
}

uint64_t sub_1A45E55AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A45E5538();
  *a1 = result & 1;
  return result;
}

double sub_1A45E5604(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 112);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = sub_1A524C594();
  if (v4)
  {
    *(v1 + 112) = v3;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1A45E4AD8(v7, sub_1A3C616AC, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1A45E5748()
{
  v0 = sub_1A45EC3A4();
  sub_1A3C66EE8(v0, v1);
  return v0;
}

double sub_1A45E577C@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A45EC3A4();
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v2;
  a1[1] = v4;

  return sub_1A3C66EE8(v2, v3);
}

double sub_1A45E57C0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[1];
  }

  else
  {
    v2 = 0;
  }

  sub_1A3C66EE8(*a1, a1[1]);
  return sub_1A45E580C(v1, v2);
}

double sub_1A45E580C(uint64_t a1, uint64_t a2)
{
  v11 = *(*v2 + 80);
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1A45E4AD8(KeyPath, sub_1A45EC664, &v7, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t OneUpSharePlayActivityCoordinator.isEligibleForGroupSession.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  return *(v0 + 136);
}

uint64_t sub_1A45E5944@<X0>(_BYTE *a1@<X8>)
{
  result = OneUpSharePlayActivityCoordinator.isEligibleForGroupSession.getter();
  *a1 = result & 1;
  return result;
}

double sub_1A45E599C(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 136);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = sub_1A524C594();
  if (v4)
  {
    *(v1 + 136) = v3;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1A45E4AD8(v7, sub_1A45EBFC4, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t OneUpSharePlayActivityCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  OneUpSharePlayActivityCoordinator.init()();
  return v0;
}

void *OneUpSharePlayActivityCoordinator.init()()
{
  v1 = v0;
  v2 = *v0;
  v36 = v2;
  sub_1A45EBFD4(0, &qword_1EB13E840, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  sub_1A45EC614(0, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
  v7 = v6;
  v32 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  sub_1A45EC028(0, v8);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  v14 = *(v2 + 88);
  v15 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  sub_1A5247914();
  v1[10] = sub_1A52478F4();
  v33 = v14;
  type metadata accessor for OneUpSharePlaySessionCoordinator(255, v15, v14, v16);
  sub_1A5247914();
  v1[11] = sub_1A52478F4();
  sub_1A52418A4();
  v1[12] = sub_1A5241894();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1A524E2B4())
  {
    sub_1A45EBD20(MEMORY[0x1E69E7CC0], v30);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  v1[13] = v17;
  *(v1 + 112) = 0;
  v1[15] = 0;
  v1[16] = 0;
  v31 = qword_1EB1C9950;
  sub_1A5241604();
  *(v1 + 136) = 0;
  sub_1A5241884();
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v18 = sub_1A524D474();
  *&v37 = v18;
  v19 = sub_1A524D434();
  v20 = (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_1A45EC0E8(v20);
  sub_1A45EC164();
  sub_1A5247A44();
  sub_1A45EC7B0(v5, &qword_1EB13E840, MEMORY[0x1E69E8050]);

  (*(v32 + 8))(v10, v7);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v23 = v33;
  v22[2] = v15;
  v22[3] = v23;
  v22[4] = v21;
  sub_1A45EC22C(&qword_1EB13E858, sub_1A45EC028, MEMORY[0x1E695BE98]);
  v24 = v35;
  sub_1A5247A94();

  v25 = (*(v34 + 8))(v13, v24);
  MEMORY[0x1EEE9AC00](v25);
  *(&v31 - 2) = v15;
  *(&v31 - 1) = v23;
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  *&v37 = v1;
  MEMORY[0x1EEE9AC00](v27);
  *(&v31 - 2) = v15;
  *(&v31 - 1) = v23;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  sub_1A5247864();
  swift_endAccess();

  v28 = *v1;
  v38 = v1;
  v37 = *(v28 + 80);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return v1;
}

Swift::Void __swiftcall OneUpSharePlayActivityCoordinator.beginListening()()
{
  v1 = *v0;
  sub_1A45EBFD4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  if (sub_1A45EBBC4())
  {
    v5 = sub_1A524D244();
    v15 = *sub_1A486DB9C();
    sub_1A5246DF4(v5, &dword_1A3C1C000, v15, "Attempting to listen for one up group activity more than once", 61, 2, MEMORY[0x1E69E7CC0]);
    v6 = v15;
  }

  else
  {
    v7 = sub_1A524CCB4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_1A524CC54();

    v9 = sub_1A524CC44();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = *(v1 + 80);
    v10[5] = *(v1 + 88);
    v10[6] = v8;

    v12 = sub_1A3D4D930(0, 0, v4, &unk_1A534F628, v10);
    v13 = sub_1A3EE1368(v12, MEMORY[0x1E69E7CA8] + 8);

    sub_1A45E4E3C(v13);
  }
}

uint64_t sub_1A45E6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a4;
  v7 = sub_1A52411C4();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6[14] = swift_getAssociatedTypeWitness();
  v6[15] = swift_getAssociatedConformanceWitness();
  v6[16] = swift_getAssociatedTypeWitness();
  v6[17] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6[18] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[19] = AssociatedTypeWitness;
  v6[20] = *(AssociatedTypeWitness - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_checkMetadataState();
  v6[24] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = sub_1A524CC54();
  v6[29] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v6[30] = v11;
  v6[31] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A45E66FC, v11, v10);
}

uint64_t sub_1A45E66FC()
{
  v1 = v0[17];
  v2 = sub_1A524D264();
  v3 = sub_1A486DB9C();
  v0[32] = v3;
  v4 = *v3;
  sub_1A5246DF4(v2, &dword_1A3C1C000, v4, "Starting to listen for one up group activities", 46, 2, MEMORY[0x1E69E7CC0]);

  swift_checkMetadataState();
  (*(v1 + 32))();
  sub_1A524CE24();
  swift_beginAccess();
  v5 = sub_1A524CC44();
  v0[33] = v5;
  v0[34] = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1A45E68C8;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 8, v5, v7);
}

uint64_t sub_1A45E68C8()
{
  v2 = *v1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1A45E7098;
  }

  else
  {
    v5 = sub_1A45E6A1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A45E6A1C()
{
  v25 = v0;
  v1 = v0[8];
  v0[36] = v1;
  v2 = v0[32];
  if (v1)
  {
    v3 = sub_1A524D264();
    v4 = *v2;
    if (os_log_type_enabled(*v2, v3))
    {
      v5 = v0[15];
      v7 = v0[12];
      v6 = v0[13];
      v23 = v0[11];
      v4;
      swift_unknownObjectRetain();
      v8 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v8 = 136446210;
      v9 = *(v5 + 120);
      v10 = swift_checkMetadataState();
      v9(v10, v5);
      sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v11 = sub_1A524EA44();
      v13 = v12;
      swift_unknownObjectRelease();
      (*(v7 + 8))(v6, v23);
      sub_1A3C2EF94(v11, v13, &v24);
    }

    Strong = swift_weakLoadStrong();
    v0[37] = Strong;
    if (Strong)
    {
      v15 = swift_task_alloc();
      v0[38] = v15;
      *v15 = v0;
      v15[1] = sub_1A45E6E44;

      return sub_1A45E730C(v1);
    }

    else
    {
      swift_unknownObjectRelease();
      v20 = sub_1A524CC44();
      v0[33] = v20;
      v0[34] = swift_getAssociatedConformanceWitness();
      v21 = swift_task_alloc();
      v0[35] = v21;
      *v21 = v0;
      v21[1] = sub_1A45E68C8;
      v22 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D8D0](v0 + 8, v20, v22);
    }
  }

  else
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    v17 = sub_1A524D264();
    v18 = *v2;
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Group activity session listener cancelled", 41, 2, MEMORY[0x1E69E7CC0]);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1A45E6E44()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1A45E6F88, v3, v2);
}

uint64_t sub_1A45E6F88()
{
  swift_unknownObjectRelease();
  v1 = sub_1A524CC44();
  v0[33] = v1;
  v0[34] = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_1A45E68C8;
  v3 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 8, v1, v3);
}

uint64_t sub_1A45E7098()
{
  v21 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1A524EA74();
  v7 = v0[21];
  if (v6)
  {
    v8 = v6;
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v9 = v0[19];
    v8 = swift_allocError();
    v5(v10, v7, v9);
  }

  v11 = v0[32];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v12 = sub_1A524D244();
  v13 = *v11;
  if (os_log_type_enabled(v13, v12))
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v15 = 136315138;
    swift_getErrorValue();
    v16 = sub_1A524EBE4();
    sub_1A3C2EF94(v16, v17, &v20);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A45E730C(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = *v1;
  sub_1A45EBFD4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  v2[29] = swift_task_alloc();
  v2[30] = *(v3 + 88);
  v2[31] = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2[32] = swift_getAssociatedTypeWitness();
  v2[33] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[34] = AssociatedTypeWitness;
  v2[35] = *(AssociatedTypeWitness - 8);
  v2[36] = swift_task_alloc();
  v5 = swift_getAssociatedTypeWitness();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v6 = sub_1A52411C4();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = sub_1A524CC54();
  v2[46] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v2[47] = v8;
  v2[48] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A45E7628, v8, v7);
}

uint64_t sub_1A45E7628()
{
  v38 = v0;
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  *(v0 + 392) = v2;
  v36 = v2;
  v3 = *v2;
  if (os_log_type_enabled(*v2, v1))
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 328);
    v6 = *(v0 + 264);
    v35 = *(v0 + 320);
    v3;
    swift_unknownObjectRetain();
    v7 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v7 = 136446210;
    v8 = *(v6 + 120);
    v9 = swift_checkMetadataState();
    v8(v9, v6);
    sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1A524EA44();
    v12 = v11;
    swift_unknownObjectRelease();
    (*(v5 + 8))(v4, v35);
    sub_1A3C2EF94(v10, v12, &v37);
  }

  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 296);
  v16 = *(*(v0 + 264) + 72);
  v17 = swift_checkMetadataState();
  *(v0 + 400) = v17;
  v16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 64))(v15, AssociatedConformanceWitness);
  (*(v14 + 8))(v13, v15);
  if (v19)
  {
    v20 = *(v0 + 264);
    *(v0 + 208) = *(v0 + 216);
    sub_1A52478E4();
    v21 = (*(v20 + 136))(v17, v20);
    *(v0 + 481) = v21 & 1;
    *(v0 + 480) = (v21 & 1) == 0;
    v22 = sub_1A45EC3A4();
    v24 = v23;
    *(v0 + 408) = v22;
    *(v0 + 416) = v23;
    sub_1A3C66EE8(v22, v23);
    v25 = swift_task_alloc();
    *(v0 + 424) = v25;
    *v25 = v0;
    v25[1] = sub_1A45E7D54;

    return sub_1A45EAC68(v0 + 16, (v0 + 480), v22, v24);
  }

  else
  {

    v27 = sub_1A524D244();
    v28 = *v36;
    swift_unknownObjectRetain_n();
    if (os_log_type_enabled(v28, v27))
    {
      swift_unknownObjectRetain_n();
      v28;
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v29 = 136315906;
      v30 = sub_1A3F67960();
      v31 = *(v30 + 1);
      *(v0 + 448) = *v30;
      *(v0 + 452) = v31;
      sub_1A3DC37B0();
      v32 = sub_1A524EA44();
      sub_1A3C2EF94(v32, v33, &v37);
    }

    swift_unknownObjectRelease_n();
    (*(*(v0 + 264) + 168))(v17);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1A45E7D54()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);

  sub_1A3C33378(v3, v2);
  v4 = *(v1 + 384);
  v5 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1A45E7EB0, v5, v4);
}

uint64_t sub_1A45E7EB0()
{
  v37 = v0;
  sub_1A45E580C(0, 0);
  if (sub_1A45EBCAC())
  {
    result = sub_1A45EBCAC();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = *(v0 + 392);
    v3 = *(v0 + 400);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v9 = *(v0 + 264);

    swift_unknownObjectRetain();

    (*(v9 + 120))(v3, v9);
    swift_unknownObjectRelease();
    v10 = sub_1A524D244();
    v11 = *v4;
    (*(v8 + 16))(v6, v5, v7);
    if (os_log_type_enabled(v11, v10))
    {
      v13 = *(v0 + 328);
      v12 = *(v0 + 336);
      v14 = *(v0 + 320);
      swift_unknownObjectRetain_n();
      v11;
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v15 = 136315394;
      sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v16 = sub_1A524EA44();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      sub_1A3C2EF94(v16, v18, &v36);
    }

    v24 = *(v0 + 344);
    v25 = *(v0 + 320);
    v26 = *(*(v0 + 328) + 8);
    v26(*(v0 + 336), v25);
    v26(v24, v25);
    v27 = v0 + 16;
    goto LABEL_11;
  }

  if (*(v0 + 481) == 1)
  {
    sub_1A45EC8B0(v0 + 16, v0 + 96, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter);
    if (!*(v0 + 120))
    {
      v32 = *(v0 + 392);
      v31 = *(v0 + 400);
      v33 = *(v0 + 264);

      sub_1A45EC970(v0 + 96, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);
      (*(v33 + 176))(v31, v33);
      v34 = sub_1A524D244();
      v35 = *v32;
      sub_1A5246DF4(v34, &dword_1A3C1C000, v35, "No OneUp adapter present during set up of group session. Ending session immediately", 83, 2, MEMORY[0x1E69E7CC0]);

      v27 = v0 + 16;
LABEL_11:
      sub_1A45EC970(v27, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);

      v28 = *(v0 + 8);

      return v28();
    }

    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    sub_1A3C34460((v0 + 96), v0 + 56);
    type metadata accessor for OneUpSharePlaySessionHostCoordinator(0, v20, v19, v21);
    sub_1A3C341C8(v0 + 56, v0 + 136);
    swift_unknownObjectRetain();
    v22 = swift_task_alloc();
    *(v0 + 432) = v22;
    *v22 = v0;
    v22[1] = sub_1A45E84FC;
    v23 = *(v0 + 216);

    return sub_1A3E881B0(v23, v0 + 136);
  }

  else
  {
    type metadata accessor for OneUpSharePlaySessionRecipientCoordinator(0, *(v0 + 248), *(v0 + 240), v1);
    swift_unknownObjectRetain();
    v29 = swift_task_alloc();
    *(v0 + 440) = v29;
    *v29 = v0;
    v29[1] = sub_1A45E88F0;
    v30 = *(v0 + 216);

    return sub_1A4845D9C(v30);
  }
}

uint64_t sub_1A45E84FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 176) = v1;
  *(v3 + 184) = a1;

  v4 = *(v2 + 384);
  v5 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1A45E8620, v5, v4);
}

uint64_t sub_1A45E8620()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 184);
  v2 = *(v0 + 400);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 224);
  v20 = *(v0 + 232);
  v8 = swift_retain_n();
  v19 = *(v0 + 240);
  v9 = sub_1A45E5244(v8);
  (*(v6 + 112))(v2, v6, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[1] = vextq_s8(v19, v19, 8uLL);
  v11[2].i64[0] = v10;
  swift_getAssociatedConformanceWitness();
  v12 = sub_1A5247A94();

  (*(v3 + 8))(v4, v5);
  sub_1A45E5040(v12);
  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v20, 1, 1, v13);

  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v1;
  v15[5] = v7;
  sub_1A3D4D930(0, 0, v20, &unk_1A534F900, v15);

  sub_1A45EC970(v0 + 16, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A45E88F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 192) = v1;
  *(v3 + 200) = a1;

  v4 = *(v2 + 384);
  v5 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1A45E8A14, v5, v4);
}

uint64_t sub_1A45E8A14()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 400);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 224);
  v20 = *(v0 + 232);
  v8 = swift_retain_n();
  v19 = *(v0 + 240);
  v9 = sub_1A45E5244(v8);
  (*(v6 + 112))(v2, v6, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[1] = vextq_s8(v19, v19, 8uLL);
  v11[2].i64[0] = v10;
  swift_getAssociatedConformanceWitness();
  v12 = sub_1A5247A94();

  (*(v3 + 8))(v4, v5);
  sub_1A45E5040(v12);
  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v20, 1, 1, v13);

  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v1;
  v15[5] = v7;
  sub_1A3D4D930(0, 0, v20, &unk_1A534F900, v15);

  sub_1A45EC970(v0 + 16, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t OneUpSharePlayActivityCoordinator.activateActivity(initialDataSource:initialIndexPath:skipSharePlayPermissionPrompt:activationOneUpAdapterMaker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 104) = v19;
  *(v9 + 112) = v8;
  *(v9 + 88) = a6;
  *(v9 + 96) = a8;
  *(v9 + 328) = a7;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 48) = a1;
  v10 = *v8;
  sub_1A45EBFD4(0, &qword_1EB13E860, MEMORY[0x1E696B368]);
  *(v9 + 120) = swift_task_alloc();
  v11 = sub_1A5241A74();
  *(v9 + 128) = v11;
  *(v9 + 136) = *(v11 - 8);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  v12 = sub_1A5241C14();
  *(v9 + 160) = v12;
  *(v9 + 168) = *(v12 - 8);
  *(v9 + 176) = swift_task_alloc();
  v13 = sub_1A5241C34();
  *(v9 + 184) = v13;
  *(v9 + 192) = *(v13 - 8);
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = *(v10 + 88);
  *(v9 + 216) = *(v10 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 224) = AssociatedTypeWitness;
  *(v9 + 232) = *(AssociatedTypeWitness - 8);
  *(v9 + 240) = swift_task_alloc();
  sub_1A524CC54();
  *(v9 + 248) = sub_1A524CC44();
  v16 = sub_1A524CBC4();
  *(v9 + 256) = v16;
  *(v9 + 264) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1A45E8FA0, v16, v15);
}

uint64_t sub_1A45E8FA0()
{
  v39 = v0;
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  *(v0 + 272) = v2;
  v3 = *v2;
  sub_1A5246DF4(v1, &dword_1A3C1C000, v3, "Preparing to activate one up group activity", 43, 2, MEMORY[0x1E69E7CC0]);

  if (sub_1A45E5538())
  {
    v4 = *(v0 + 48);

    v5 = sub_1A524D244();
    v6 = *v2;
    sub_1A5246DF4(v5, &dword_1A3C1C000, v6, "Ignoring SharePlay activation request due to an active request still pending", 76, 2, MEMORY[0x1E69E7CC0]);

    *v4 = 3;

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 224);
  v34 = *(v0 + 88);
  v33 = *(v0 + 80);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);
  sub_1A45E5604(1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 280) = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 144))(v12, v11, v10, v33, v34, v9, AssociatedConformanceWitness);
  v14 = sub_1A45EBCAC();
  *(v0 + 288) = v14;
  if (v14)
  {
    v15 = v14;
    v37 = *(v14 + 24);
    v38 = 0;

    if (static OneUpSharePlaySessionCoordinator.Role.== infix(_:_:)(&v37, &v38) && ((*(*v15 + 296))() & 1) != 0)
    {
      v16 = swift_task_alloc();
      *(v0 + 296) = v16;
      *v16 = v0;
      v16[1] = sub_1A45E94E8;
      v17 = *(v0 + 104);
      v18 = *(v0 + 96);
      v19 = *(v0 + 48);

      return sub_1A45EA1E0(v19, v18, v17);
    }
  }

  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);
  v24 = *(v0 + 160);
  v25 = *(v0 + 168);
  v26 = *(v0 + 120);
  v36 = AssociatedConformanceWitness;
  v27 = *(v0 + 328);
  sub_1A45EBCAC();
  v28 = MEMORY[0x1E696B360];
  if (!v27)
  {
    v28 = MEMORY[0x1E696B358];
  }

  (*(v25 + 104))(v23, *v28, v24);
  sub_1A5241C24();
  (*(v21 + 16))(v26, v20, v22);
  (*(v21 + 56))(v26, 0, 1, v22);
  v35 = (*(v36 + 160) + **(v36 + 160));
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *v29 = v0;
  v29[1] = sub_1A45E96EC;
  v30 = *(v0 + 224);
  v31 = *(v0 + 152);
  v32 = *(v0 + 120);

  return v35(v31, v32, v30, v36);
}

uint64_t sub_1A45E94E8()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1A45E9608, v3, v2);
}

uint64_t sub_1A45E9608()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  (*(v3 + 8))(v1, v2);
  sub_1A45E5604(0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A45E96EC()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  sub_1A45EC7B0(v2, &qword_1EB13E860, MEMORY[0x1E696B368]);
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1A45E984C, v4, v3);
}

uint64_t sub_1A45E984C()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  (*(v3 + 16))(v1, v0[19], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x1E696B2A0])
  {
    v5 = v0[34];
    v6 = sub_1A524D264();
    v7 = *v5;
    sub_1A5246DF4(v6, &dword_1A3C1C000, v7, "Activating one up group activity", 32, 2, MEMORY[0x1E69E7CC0]);

    if (sub_1A45EC3A4())
    {
      v8 = v0[34];
      v9 = sub_1A524D244();
      v10 = *v8;
      sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Overwriting existing pending activation OneUp adapter maker", 59, 2, MEMORY[0x1E69E7CC0]);
    }

    v30 = v0[35];
    v11 = v0[13];
    v12 = v0[12];

    sub_1A45E580C(v12, v11);
    v28 = (*(v30 + 168) + **(v30 + 168));
    v13 = swift_task_alloc();
    v0[39] = v13;
    *v13 = v0;
    v13[1] = sub_1A45E9C28;
    v14 = v0[35];
    v15 = v0[28];

    return v28(v15, v14);
  }

  else
  {
    if (v4 == *MEMORY[0x1E696B298])
    {
      v17 = 2;
    }

    else
    {
      if (v4 != *MEMORY[0x1E696B2A8])
      {
        return sub_1A524E6E4();
      }

      v17 = 3;
    }

    v31 = v17;
    v18 = v0[29];
    v27 = v0[28];
    v29 = v0[30];
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    v22 = v0[19];
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[6];

    (*(v24 + 8))(v22, v23);
    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v29, v27);
    *v25 = v31;
    sub_1A45E5604(0);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1A45E9C28(char a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = *(v4 + 256);
    v6 = *(v4 + 264);
    v7 = sub_1A45E9F58;
  }

  else
  {
    *(v4 + 329) = a1 & 1;
    v5 = *(v4 + 256);
    v6 = *(v4 + 264);
    v7 = sub_1A45E9D54;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A45E9D54()
{
  v1 = *(v0 + 329);

  if (v1)
  {
    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 224);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = *(v0 + 48);
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    *v8 = 0;
  }

  else
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 232);
    v23 = *(v0 + 224);
    v24 = *(v0 + 240);
    v11 = *(v0 + 192);
    v12 = *(v0 + 184);
    v13 = *(v0 + 152);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v21 = *(v0 + 200);
    v22 = *(v0 + 48);
    v16 = sub_1A524D244();
    v17 = *v9;
    sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "No session created for one up group activity", 44, 2, MEMORY[0x1E69E7CC0]);

    v18 = sub_1A45E580C(0, 0);
    (*(v14 + 8))(v13, v15, v18);
    (*(v11 + 8))(v21, v12);
    (*(v10 + 8))(v24, v23);
    *v22 = 4;
  }

  sub_1A45E5604(0);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1A45E9F58()
{
  v20 = v0;
  v1 = *(v0 + 272);

  v2 = sub_1A524D244();
  v3 = *v1;
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315138;
    swift_getErrorValue();
    v6 = sub_1A524EBE4();
    sub_1A3C2EF94(v6, v7, &v19);
  }

  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  v10 = *(v0 + 224);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 184);
  v14 = *(v0 + 152);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);

  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  **(v0 + 48) = 4;
  sub_1A45E5604(0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A45EA1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  sub_1A524CC54();
  v4[17] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[18] = v6;
  v4[19] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A45EA2A4, v6, v5);
}

uint64_t sub_1A45EA2A4()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  *(v0 + 160) = v2;
  v3 = *v2;
  sub_1A5246DF4(v1, &dword_1A3C1C000, v3, "Attempting to replace paused session with new OneUp session", 59, 2, MEMORY[0x1E69E7CC0]);

  v4 = sub_1A45EBCAC();
  *(v0 + 168) = v4;
  if (v4)
  {
    v6 = *(v0 + 128);
    v7 = *(v6 + 80);
    *(v0 + 176) = v7;
    v8 = *(v6 + 88);
    *(v0 + 184) = v8;
    type metadata accessor for OneUpSharePlaySessionHostCoordinator(0, v7, v8, v5);
    v9 = swift_dynamicCastClass();
    *(v0 + 192) = v9;
    if (v9)
    {
      v10 = *(v0 + 104);
      v11 = *(v0 + 112);
      *(v0 + 216) = 0;
      swift_retain_n();
      v12 = swift_task_alloc();
      *(v0 + 200) = v12;
      *v12 = v0;
      v12[1] = sub_1A45EA5E0;

      return sub_1A45EAC68(v0 + 56, (v0 + 216), v10, v11);
    }

    v14 = *(v0 + 96);

    v17 = sub_1A524D244();
    v18 = *v2;
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Unexpectedly found non-host session coordinator. Ending session immediately", 75, 2, MEMORY[0x1E69E7CC0]);

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = *(AssociatedConformanceWitness + 176);
    swift_unknownObjectRetain();
    v21 = swift_checkMetadataState();
    v20(v21, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v0 + 96);

    v15 = sub_1A524D244();
    v16 = *v2;
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "No active session found to replace", 34, 2, MEMORY[0x1E69E7CC0]);
  }

  *v14 = 4;
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1A45EA5E0()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1A45EA700, v3, v2);
}

uint64_t sub_1A45EA700()
{
  if (*(v0 + 80))
  {
    sub_1A3C34460((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 208) = v1;
    *v1 = v0;
    v1[1] = sub_1A45EA96C;

    return OneUpSharePlaySessionHostCoordinator.replacePausedSession(newOneUpAdapter:)(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 96);

    sub_1A45EC970(v0 + 56, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 176);
    swift_unknownObjectRetain();
    v7 = swift_checkMetadataState();
    v6(v7, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v8 = sub_1A524D244();
    v9 = *v3;
    sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "No OneUp adapter available to replace. Ending session immediately", 65, 2, MEMORY[0x1E69E7CC0]);

    *v4 = 4;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1A45EA96C(char a1)
{
  v2 = *v1;
  *(*v1 + 217) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1A45EAA94, v4, v3);
}

uint64_t sub_1A45EAA94()
{
  v1 = *(v0 + 217);

  if (v1 == 1)
  {
    v2 = *(v0 + 96);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    *v2 = 1;
  }

  else
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 96);
    v5 = sub_1A524D244();
    v6 = *v3;
    sub_1A5246DF4(v5, &dword_1A3C1C000, v6, "Failed to replace paused session. Ending session immediately", 60, 2, MEMORY[0x1E69E7CC0]);

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(AssociatedConformanceWitness + 176);
    v9 = swift_checkMetadataState();
    v8(v9, AssociatedConformanceWitness);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    *v4 = 4;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A45EAC68(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  *(v5 + 128) = *v4;
  *(v5 + 168) = *a2;
  sub_1A524CC54();
  *(v5 + 136) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v5 + 144) = v7;
  *(v5 + 152) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A45EAD34, v7, v6);
}

uint64_t sub_1A45EAD34()
{
  v26 = v0;
  v1 = *(v0 + 168);
  if (*(v0 + 104))
  {
    v24 = *(v0 + 168);
    v25 = 0;

    if (static OneUpSharePlaySessionCoordinator.Role.== infix(_:_:)(&v24, &v25))
    {
      v2 = *(v0 + 104);
      v3 = sub_1A524D264();
      v4 = *sub_1A486DB9C();
      sub_1A5246DF4(v3, &dword_1A3C1C000, v4, "Creating OneUp adapter from pending activation maker", 52, 2, MEMORY[0x1E69E7CC0]);

      v21 = (v2 + *v2);
      v5 = swift_task_alloc();
      *(v0 + 160) = v5;
      *v5 = v0;
      v5[1] = sub_1A45EB0F4;
      v6 = *(v0 + 96);

      return v21(v6);
    }

    v14 = *(v0 + 104);
    v15 = *(v0 + 112);
    v16 = *(v0 + 96);

    v17 = sub_1A524D244();
    v18 = *sub_1A486DB9C();
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Recipient session activating with unexpected pending activation OneUp adapter maker", 83, 2, MEMORY[0x1E69E7CC0]);
    sub_1A3C33378(v14, v15);

    *(v16 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;
  }

  else
  {

    v22 = v1;
    v23 = 0;
    v8 = static OneUpSharePlaySessionCoordinator.Role.== infix(_:_:)(&v22, &v23);
    v9 = sub_1A524D264();
    v10 = *sub_1A486DB9C();
    if (v8)
    {
      sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Falling back to active OneUp session adapter", 44, 2, MEMORY[0x1E69E7CC0]);

      OneUpSharePlayActivityCoordinator.delegate.getter(v0 + 16);
      v11 = *(v0 + 96);
      if (*(v0 + 40))
      {
        sub_1A3C341C8(v0 + 16, v0 + 56);
        sub_1A45EC970(v0 + 16, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);
        v12 = *(v0 + 80);
        v13 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v12);
        (*(v13 + 8))(v12, v13);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      }

      else
      {
        sub_1A45EC970(v0 + 16, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);
        *v11 = 0u;
        *(v11 + 16) = 0u;
        *(v11 + 32) = 0;
      }
    }

    else
    {
      v19 = *(v0 + 96);
      sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Deferring OneUp adapter creation for recipient", 46, 2, MEMORY[0x1E69E7CC0]);

      *(v19 + 32) = 0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1A45EB0F4()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1A45EB214, v3, v2);
}

uint64_t sub_1A45EB214()
{
  v1 = v0[13];
  v2 = v0[14];

  sub_1A3C33378(v1, v2);
  v3 = v0[1];

  return v3();
}

void sub_1A45EB284(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1A52411C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = sub_1A45EBCAC();
    if (v10 && v9 >= 2)
    {
      v11 = v10;

      sub_1A3F2DC14(v9);
      v12 = sub_1A524D264();
      v13 = *sub_1A486DB9C();
      if (os_log_type_enabled(v13, v12))
      {

        v29 = v13;
        v14 = swift_slowAlloc();
        v26 = v14;
        v28 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v14 = 136446466;
        v25 = *(v11 + 16);
        swift_getAssociatedTypeWitness();
        v27 = v12;
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v24 = *(AssociatedConformanceWitness + 120);
        v16 = swift_checkMetadataState();
        v24(v16, AssociatedConformanceWitness);
        sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v17 = sub_1A524EA44();
        v19 = v18;

        (*(v6 + 8))(v8, v5);
        sub_1A3C2EF94(v17, v19, &v31);
      }

      v20 = sub_1A45EBCAC();
      if (v20)
      {
        v21 = *(*v20 + 624);

        v21(v22);
      }

      sub_1A45E5244(0);

      sub_1A3F2D9F4(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1A45EB6A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = *a4;
  v6 = sub_1A52411C4();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  sub_1A524CC54();

  v5[9] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45EB7C8, v8, v7);
}

uint64_t sub_1A45EB7C8()
{
  v16 = v0;

  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[8];
    v13 = v0[6];
    v14 = v0[7];

    v2;
    v4 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v4 = 136446210;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 120);
    v7 = swift_checkMetadataState();
    v6(v7, AssociatedConformanceWitness);

    sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v8 = sub_1A524EA44();
    v10 = v9;

    (*(v14 + 8))(v3, v13);
    sub_1A3C2EF94(v8, v10, &v15);
  }

  v0[2] = v0[3];
  sub_1A52478E4();

  v11 = v0[1];

  return v11();
}

char *OneUpSharePlayActivityCoordinator.deinit(__n128 a1)
{
  sub_1A45EC970(v1 + 16, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);

  sub_1A3C33378(*(v1 + 120), *(v1 + 128));
  v2 = qword_1EB1C9950;
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t OneUpSharePlayActivityCoordinator.__deallocating_deinit(__n128 a1)
{
  OneUpSharePlayActivityCoordinator.deinit(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_1A45EBBC4()
{
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  return *(v0 + 56);
}

uint64_t sub_1A45EBC38()
{
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  return *(v0 + 64);
}

uint64_t sub_1A45EBCAC()
{
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  return *(v0 + 72);
}

void sub_1A45EBD20(unint64_t a1, __n128 a2)
{
  v2 = a1;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      sub_1A45ECA50(0, &qword_1EB13E898, MEMORY[0x1E69E6A10]);
      v4 = sub_1A524E3D4();
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = sub_1A524E2B4();
      if (!v6)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v4 = MEMORY[0x1E69E7CD0];
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

LABEL_9:
  v7 = 0;
  v8 = v4 + 56;
  v23 = v2 & 0xC000000000000001;
  v20 = v2 + 32;
  v21 = v2 & 0xFFFFFFFFFFFFFF8;
  v22 = v2;
  while (v23)
  {
    v9 = MEMORY[0x1A59097F0](v7, v2);
    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1A5247894();
    sub_1A45EC22C(&qword_1EB13E888, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    v11 = sub_1A524C4A4();
    v12 = -1 << *(v4 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = *(v8 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    if (((1 << v13) & v15) != 0)
    {
      v17 = ~v12;
      sub_1A45EC22C(&qword_1EB13E878, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        if (sub_1A524C594())
        {

          v2 = v22;
          goto LABEL_11;
        }

        v13 = (v13 + 1) & v17;
        v14 = v13 >> 6;
        v15 = *(v8 + 8 * (v13 >> 6));
        v16 = 1 << v13;
      }

      while (((1 << v13) & v15) != 0);
      v2 = v22;
    }

    *(v8 + 8 * v14) = v16 | v15;
    *(*(v4 + 48) + 8 * v13) = v9;
    v18 = *(v4 + 16);
    v10 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v10)
    {
      goto LABEL_27;
    }

    *(v4 + 16) = v19;
LABEL_11:
    if (v7 == v6)
    {
      return;
    }
  }

  if (v7 >= *(v21 + 16))
  {
    goto LABEL_28;
  }

  v9 = *(v20 + 8 * v7);

  v10 = __OFADD__(v7++, 1);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1A45EBFD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1A45EC028(uint64_t a1, double a2)
{
  if (!qword_1EB13E848)
  {
    sub_1A45EC614(255, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
    sub_1A3C52C70(255, &qword_1EB12B180, 0x1E69E9610);
    sub_1A45EC0E8(v2);
    sub_1A45EC164();
    v3 = sub_1A5247844();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB13E848);
    }
  }
}

unint64_t sub_1A45EC0E8(double a1)
{
  result = qword_1EB13E850;
  if (!qword_1EB13E850)
  {
    sub_1A45EC614(255, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E850);
  }

  return result;
}

unint64_t sub_1A45EC164()
{
  result = qword_1EB12D740;
  if (!qword_1EB12D740)
  {
    sub_1A3C52C70(255, &qword_1EB12B180, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D740);
  }

  return result;
}

double sub_1A45EC1CC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A45E599C(v1);
  }

  return result;
}

uint64_t sub_1A45EC22C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A45EC274()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A45E6390(v5, v6, v7, v4, v2, v3);
}

uint64_t sub_1A45EC31C()
{
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  swift_beginAccess();
  return *(v0 + 104);
}

uint64_t sub_1A45EC3A4()
{
  KeyPath = swift_getKeyPath();
  sub_1A45E49E8(KeyPath);

  return *(v0 + 120);
}

unint64_t sub_1A45EC41C()
{
  result = qword_1EB13E868;
  if (!qword_1EB13E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E868);
  }

  return result;
}

uint64_t sub_1A45EC494(uint64_t a1)
{
  result = sub_1A5241614();
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

void sub_1A45EC5B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A45EC614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A45EC664()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 120);
  v5 = *(v2 + 128);
  *(v2 + 120) = v1;
  *(v2 + 128) = v3;
  sub_1A3C66EE8(v1, v3);
  return sub_1A3C33378(v4, v5);
}

unint64_t sub_1A45EC6B0()
{
  result = qword_1EB13E870;
  if (!qword_1EB13E870)
  {
    sub_1A45EBFD4(255, &qword_1EB140920, MEMORY[0x1E695BF10]);
    sub_1A45EC22C(&qword_1EB13E878, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E870);
  }

  return result;
}

void sub_1A45EC774()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_1A45EC7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A45EBFD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A45EC818()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A45EB6A0(v4, v5, v6, v2, v3);
}

uint64_t sub_1A45EC8B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1A45EC5B8(0, a3, a4, a5, sub_1A3C34400);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1A45EC934()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_1A45EC970(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1A45EC5B8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A45EC9EC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 104) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45ECA50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5247894();
    v7 = sub_1A45EC22C(&qword_1EB13E888, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A45ECAEC(uint64_t a1, uint64_t a2)
{
  sub_1A45EC5B8(0, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1A45ECB7C(uint64_t a1)
{
  v2 = [v1 indexOfObject_];
  if (v2 == sub_1A52403B4())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A45ECBC4()
{
  result = qword_1EB13E8A0;
  if (!qword_1EB13E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E8A0);
  }

  return result;
}

void sub_1A45ECC28()
{
  v1 = v0;
  v2 = [v0 socialGroup];
  if (!v2)
  {
LABEL_10:
    v14 = sub_1A524D244();
    v15 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Failed to perform Social Group make key photo action because the initial state is invalid.", 90, 2, MEMORY[0x1E69E7CC0]);

    [v1 completeBackgroundTaskWithSuccess:0 error:0];
    return;
  }

  v3 = v2;
  v4 = [v1 assets];
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v5 = sub_1A524CA34();

  if (v5 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1A59097F0](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:
    v7 = v6;

    type metadata accessor for SocialGroupMakeKeyPhotoAction();
    v8 = v3;
    v9 = v7;
    v10 = sub_1A46A5AA0(v8, v9);
    v11 = [v1 undoManager];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16[4] = sub_1A3DE1F24;
    v16[5] = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1A3D6084C;
    v16[3] = &block_descriptor_221;
    v13 = _Block_copy(v16);

    [v10 executeWithUndoManager:v11 completionHandler:v13];
    _Block_release(v13);

    return;
  }

  __break(1u);
}

unint64_t OneUpSharePlayOverridableAsset.init(asset:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A45EE2D4(MEMORY[0x1E69E7CC0]);
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t OneUpSharePlayOverridableAsset.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = sub_1A524E0C4();
  if (*(v10 + 16))
  {
    v12 = sub_1A3CAB9BC(v11);
    if (v13)
    {
      sub_1A3C2F0BC(*(v10 + 56) + 32 * v12, v18);
      sub_1A3C57128(v18, v19);
      sub_1A3C57128(v19, v18);
      v14 = swift_dynamicCast();
      v15 = *(*(v4 - 8) + 56);
      if (v14)
      {
        v16 = *(v4 - 8);
        v15(v8, 0, 1, v4);
        return (*(v16 + 32))(a2, v8, v4);
      }

      v15(v8, 1, 1, v4);
      (*(v6 + 8))(v8, v5);
    }
  }

  *&v19[0] = v9;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t OneUpSharePlayOverridableAsset.subscript.setter(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = *a2;
  sub_1A45EE3C4(a1, a2, a3);

  v5 = *(*(*(v4 + *MEMORY[0x1E69E77B0] + 8) - 8) + 8);

  return v5(a1);
}

_OWORD *sub_1A45ED4AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1A3C57128(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1A45EDFD0(v15, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    sub_1A3C35B00(a1);
    v7 = sub_1A3CAB9BC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1A45EE164();
        v11 = v14;
      }

      sub_1A3C57128((*(v11 + 56) + 32 * v9), v15);
      sub_1A45EDE60(v9, v11, v12);
      *v3 = v11;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return sub_1A3C35B00(v15);
  }

  return result;
}

void (*OneUpSharePlayOverridableAsset.subscript.modify(void *a1, void *a2))(uint64_t **a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  OneUpSharePlayOverridableAsset.subscript.getter(a2, v11);
  return sub_1A45ED6E4;
}

uint64_t OneUpSharePlayOverridableAsset.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(v3 + 8);
  v7 = sub_1A524E0C4();
  if (*(v6 + 16) && (v8 = sub_1A3CAB9BC(v7), (v9 & 1) != 0))
  {
    sub_1A3C2F0BC(*(v6 + 56) + 32 * v8, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1A3C35B84();
  v10 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v11 = swift_dynamicCast();
  return (*(*(v10 - 8) + 56))(a2, v11 ^ 1u, 1, v10);
}

double sub_1A45ED850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a3;

  a5(a1, v7);

  return result;
}

uint64_t OneUpSharePlayOverridableAsset.subscript.setter(uint64_t a1, uint64_t *a2)
{
  sub_1A45EE494(a1, a2);

  v3 = sub_1A524DF24();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*OneUpSharePlayOverridableAsset.subscript.modify(void *a1, uint64_t *a2))(uint64_t **a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_1A524DF24();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  OneUpSharePlayOverridableAsset.subscript.getter(a2, v11);
  return sub_1A45EDAC4;
}

void sub_1A45EDADC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);

    a3(v5, v9);

    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {

    a3(v6, v9);

    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

void sub_1A45EDBF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A45EE66C();
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1A3C57128(v21, v32);
      }

      else
      {
        sub_1A3C2F0BC(v21, v32);
      }

      v22 = sub_1A524EC84();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_1A3C57128(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_1A45EDE60(uint64_t result, uint64_t a2, __n128 a3)
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
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_1A524EC84();
      v13 = result & v8;
      if (v4 >= v9)
      {
        if (v13 >= v9 && v4 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v4);
          if (v4 != v7 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 32 * v4);
          v19 = (v17 + 32 * v7);
          if (v4 != v7 || v18 >= v19 + 2)
          {
            v10 = v19[1];
            *v18 = *v19;
            v18[1] = v10;
            v4 = v7;
          }
        }
      }

      else if (v13 >= v9 || v4 >= v13)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1A45EDFD0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A3CAB9BC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1A45EE164();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1A45EDBF4(v14, a3 & 1);
    v9 = sub_1A3CAB9BC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1A524EB84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_1A3C57128(a1, v20);
  }

  else
  {

    return sub_1A45EE0FC(v9, a2, a1, v19);
  }
}

_OWORD *sub_1A45EE0FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1A3C57128(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_1A45EE164()
{
  v1 = v0;
  sub_1A45EE66C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1A3C2F0BC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1A3C57128(v19, (*(v4 + 56) + 32 * v17));
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

unint64_t sub_1A45EE2D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A45EE66C();
    v3 = sub_1A524E794();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1A45EE6D0(i, &v11);
      v5 = v11;
      result = sub_1A3CAB9BC(v11);
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

_OWORD *sub_1A45EE3C4(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = *a2;
  v5 = sub_1A524E0C4();
  v10 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v6 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  return sub_1A45ED4AC(v9, v5);
}

_OWORD *sub_1A45EE494(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = sub_1A524E0C4();
  (*(v5 + 16))(v7, a1, v4);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(v9 + 32))(boxed_opaque_existential_1, v7, v3);
  }

  return sub_1A45ED4AC(&v12, v8);
}

void sub_1A45EE66C()
{
  if (!qword_1EB13E8A8)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E8A8);
    }
  }
}

uint64_t sub_1A45EE6D0(uint64_t a1, uint64_t a2)
{
  sub_1A45EE734();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A45EE734()
{
  if (!qword_1EB13E8B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13E8B0);
    }
  }
}

uint64_t sub_1A45EE798@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v71 = a3;
  v62 = a2;
  v72 = a5;
  v65 = type metadata accessor for LemonadePlaceholderView(0);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697F948];
  sub_1A45F8C38(0, &qword_1EB127F50, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v56 - v9;
  sub_1A424B840(0);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8C38(0, &qword_1EB122C78, type metadata accessor for LemonadeShelfPlaceholderView, sub_1A424B840, v7);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v73 = type metadata accessor for LemonadeShelfPlaceholderView(0);
  MEMORY[0x1EEE9AC00](v73);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524C634();
  v18 = PXLemonadeLocalizedString(v17);

  v68 = sub_1A524C674();
  v20 = v19;

  v21 = sub_1A524C634();
  v22 = PXLemonadeLocalizedString(v21);

  v23 = sub_1A524C674();
  v25 = v24;

  v26 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v75[0] = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v74 = 3;
  v27 = v26;
  if (static LemonadePresentationContext.== infix(_:_:)(v75, &v74))
  {
    v71 = v27;
    v28 = sub_1A3C5A374();
    v29 = sub_1A3C5A374();
    v30 = sub_1A3C5A374();
    v31 = sub_1A3C5A374();
    v32 = sub_1A3C5A374();
    v53 = v25;
    v33 = v71;
    sub_1A425463C(v71, v28 & 1, v29 & 1, v30 & 1, v31 & 1, v32 & 1, 0xD000000000000014, 0x80000001A53DF710, v16, v68, v20, v23, v53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_1A45F94B8(v16, v14, type metadata accessor for LemonadeShelfPlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView, &unk_1A53287E8);
    sub_1A424B944();
    sub_1A5249744();

    v34 = type metadata accessor for LemonadeShelfPlaceholderView;
    v35 = v16;
  }

  else
  {
    v57 = v23;
    v58 = "LemonadeEmptyAlbumsMessage";
    v56 = v16;
    v59 = v20;
    v60 = v14;
    v36 = sub_1A524C634();
    v37 = PXLemonadeLocalizedString(v36);

    v38 = sub_1A524C674();
    v40 = v39;

    v41 = v27;
    sub_1A3C66EE8(v71, v70);
    if (v62)
    {
      v42 = sub_1A3C5A374();
      v43 = sub_1A3C5A374();
      v44 = sub_1A3C5A374();
      v45 = sub_1A3C5A374();
      v46 = sub_1A3C5A374();
      v54 = v38;
      v47 = v56;
      sub_1A425463C(v41, v42 & 1, v43 & 1, v44 & 1, v45 & 1, v46 & 1, 0xD000000000000014, v58 | 0x8000000000000000, v56, v68, v59, v57, v25, 0, 0, 0, 0, 0, 0, v54, v40, v71, v70, 0, 0);
      sub_1A45F94B8(v47, v64, type metadata accessor for LemonadeShelfPlaceholderView);
      swift_storeEnumTagMultiPayload();
      sub_1A3C57458(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView, &unk_1A53287E8);
      sub_1A3C57458(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView, &unk_1A5352A50);
      v48 = v66;
      sub_1A5249744();
      v49 = type metadata accessor for LemonadeShelfPlaceholderView;
    }

    else
    {
      v50 = sub_1A3C5A374();
      v51 = sub_1A3C5A374();
      v55 = v38;
      v47 = v61;
      sub_1A463DB54(v41, v50 & 1, v51 & 1, 0, 0xD000000000000014, v58 | 0x8000000000000000, v68, v59, v61, v57, v25, 0, 0, 0, 0, v55, v40, v71, v70);
      sub_1A45F94B8(v47, v64, type metadata accessor for LemonadePlaceholderView);
      swift_storeEnumTagMultiPayload();
      sub_1A3C57458(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView, &unk_1A53287E8);
      sub_1A3C57458(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView, &unk_1A5352A50);
      v48 = v66;
      sub_1A5249744();
      v49 = type metadata accessor for LemonadePlaceholderView;
    }

    sub_1A45F9520(v47, v49);
    sub_1A45F94B8(v48, v60, sub_1A424B840);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView, &unk_1A53287E8);
    sub_1A424B944();
    sub_1A5249744();

    v34 = sub_1A424B840;
    v35 = v48;
  }

  return sub_1A45F9520(v35, v34);
}

uint64_t sub_1A45EEFBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v47 = a2;
  v2 = sub_1A5243834();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A5243EC4();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8C38(0, &qword_1EB13EBA0, sub_1A45F9AA0, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - v8;
  sub_1A45F9800(0, &qword_1EB13EBA8, MEMORY[0x1E69C1E58], MEMORY[0x1E697F948]);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  sub_1A45F8804(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_1A5242494();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  sub_1A45F9AA0(0);
  v43 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A52426F4())
  {
    v25 = sub_1A5242704();
    if (v41)
    {
      if (!(v25 >> 62))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3D435C4();
      v41 = sub_1A524E6F4();

      sub_1A524B314();
      v26 = *MEMORY[0x1E69C2048];
      v27 = sub_1A52429A4();
      v28 = *(v27 - 8);
      (*(v28 + 104))(v14, v26, v27);
      (*(v28 + 56))(v14, 0, 1, v27);
      sub_1A52424A4();
      goto LABEL_12;
    }

    if (!(v25 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_18:
    sub_1A3D435C4();
    sub_1A524E6F4();

    sub_1A524B304();
    v31 = sub_1A52429A4();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    sub_1A52424A4();
    v21 = v18;
LABEL_12:
    (*(v16 + 16))(v11, v21, v15);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB1292A0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C1E50]);
    sub_1A5249744();
    (*(v16 + 8))(v21, v15);
    sub_1A45F94B8(v24, v45, sub_1A45F9AA0);
    swift_storeEnumTagMultiPayload();
    sub_1A45F9BC8();
    sub_1A3C57458(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    return sub_1A45F9520(v24, sub_1A45F9AA0);
  }

  v29 = sub_1A5242704();
  if (v29 >> 62)
  {
    v33 = v29;
    v34 = sub_1A524E2B4();
    v29 = v33;
    if (!v34)
    {
      goto LABEL_14;
    }
  }

  else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v30 = *(v29 + 32);
  }

LABEL_14:

  v48 = 0u;
  v49 = 0u;
  v50 = 1;
  v35 = sub_1A52429A4();
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  (*(v38 + 104))(v4, *MEMORY[0x1E69C2678], v39);
  sub_1A5243ED4();
  v36 = v40;
  v37 = v46;
  (*(v40 + 16))(v45, v6, v46);
  swift_storeEnumTagMultiPayload();
  sub_1A45F9BC8();
  sub_1A3C57458(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  sub_1A5249744();
  return (*(v36 + 8))(v6, v37);
}

void sub_1A45EF880()
{
  sub_1A45FE3B8(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A52F8E10;
  sub_1A52426D4();
  v1 = *(v3 + 16);

  *(v0 + 56) = sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  *(v0 + 32) = v1;
  sub_1A3C52C70(0, &qword_1EB126690, 0x1E695DEC8);
  v2 = MEMORY[0x1A5908EF0](v0);
  sub_1A52422A4();
}

uint64_t sub_1A45EF99C@<X0>(uint64_t a1@<X8>)
{
  sub_1A45F8804(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3C5A374();

    return sub_1A42E7F0C(0, 1, v8, a1);
  }

  else
  {
    v10 = sub_1A3C56D60();
    v12 = v11;
    v14 = v13;
    sub_1A3C41FE8(v10, v11, v13, v7);
    sub_1A3C4208C(v10, v12, v14);
    sub_1A5241F74();
    v15 = sub_1A5241F84();
    (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
    return sub_1A3C52D78(v7, 5, v4, a1);
  }
}

double sub_1A45EFB4C(id *a1)
{
  sub_1A3CA2488(0, &qword_1EB13EBB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
  v2 = [*a1 px_virtualCollections];
  v3 = [v2 rootAlbumCollectionList];

  v4 = sub_1A46FBDB0(v3, 0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_1A45FE5E0(0, &unk_1EB13EBC0, type metadata accessor for LemonadeCollectionCustomizationView);
  v7 = v6;
  v8 = sub_1A45FE56C();
  v9 = v4;
  sub_1A46562D0(0, sub_1A45FE408, v5, v7, v8);

  return result;
}

uint64_t sub_1A45EFC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[2] = a2;
  sub_1A45F8C38(0, &qword_1EB122D30, sub_1A45F8AEC, sub_1A45F8DE0, MEMORY[0x1E697F948]);
  v25[1] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v25 - v4;
  sub_1A45F8804(0, &qword_1EB124DD0, sub_1A43DC1C8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  sub_1A45F8DE0(0);
  v25[0] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;

  if (sub_1A5242684())
  {
    sub_1A3CA2A44(0);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);

    sub_1A5243094();
    sub_1A43DC1C8(0);
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    sub_1A43DC1C8(0);
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  sub_1A3CA2A44(0);
  v15 = v14;
  v16 = sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44, MEMORY[0x1E69C1F80]);
  v17 = sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
  v18 = MEMORY[0x1E6981E70];
  v19 = MEMORY[0x1E6981E60];
  v20 = sub_1A4273C5C();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  sub_1A4273C78(&v26, v8, sub_1A45F8E00, v23, v15, v18, v16, v17, v11, v19);
  sub_1A45F94B8(v11, v5, sub_1A45F8DE0);
  swift_storeEnumTagMultiPayload();
  sub_1A45F8AEC(0);
  sub_1A3C57458(&qword_1EB124CF0, sub_1A45F8AEC, MEMORY[0x1E69C2918]);
  sub_1A3C57458(&qword_1EB1259C8, sub_1A45F8DE0, &unk_1A5329AA0);
  sub_1A5249744();
  return sub_1A45F9520(v11, sub_1A45F8DE0);
}

void sub_1A45F011C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 8);
  if (([a1 px_isTopLevelFolder] & 1) != 0 || objc_msgSend(a1, sel_px_isAllAlbumsVirtualCollection))
  {
    v8 = v7();
    v9 = sub_1A3C51EF8();
    v10 = sub_1A42E6C64(&type metadata for LemonadeAlbumsFeature.ShelfProvider, v9);
    *a3 = v8;
    a3[1] = a2;
    a3[2] = v10;
    a3[3] = v11;
    v12 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for LemonadeNavigationDestination(0);
    v14 = *(*(v13 - 8) + 56);

    v14(a3, 1, 1, v13);
  }
}

uint64_t sub_1A45F02BC()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A45F0334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

void sub_1A45F03CC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 184))(v4);
  }
}

uint64_t (*sub_1A45F04B4(uint64_t *a1))()
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
  (*(*v1 + 176))();

  v4[5] = OBJC_IVAR____TtCVV12PhotosUICore21LemonadeAlbumsFeature13ShelfProvider24CollectionContainerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C57458(&unk_1EB1259A0, type metadata accessor for LemonadeAlbumsFeature.ShelfProvider.CollectionContainerModel, &unk_1A534FEB8);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84(v4);
  return sub_1A45F05F0;
}

void sub_1A45F05F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A45F0684()
{
  v1 = *((*(**(v0 + 24) + 280))() + 16);
  v2 = v1;

  if (v1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 localizedTitle];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1A524C674();

        return v6;
      }
    }
  }

  return 0;
}

unint64_t sub_1A45F0758()
{
  v1 = *((*(**(v0 + 24) + 280))() + 16);
  v2 = v1;

  if (!v1)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_5:
    v6 = 0;
    v5 = 1;
    return v6 | (v5 << 32);
  }

  v4 = [v3 customSortKey];

  v5 = 0;
  v6 = v4;
  return v6 | (v5 << 32);
}

uint64_t sub_1A45F08B0()
{

  v1 = OBJC_IVAR____TtCVV12PhotosUICore21LemonadeAlbumsFeature13ShelfProvider24CollectionContainerModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A45F0A80@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeAlbumsFeature.ShelfProvider.CollectionContainerModel(0);
  result = sub_1A524E434();
  *a2 = result;
  return result;
}

void sub_1A45F0AC4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v3[1];
    v19 = *v3;
    v20 = v9;
    v21[0] = v3[2];
    *(v21 + 9) = *(v3 + 41);
    v10 = sub_1A3C51EF8();
    v11 = v6;
    v12 = sub_1A42E6C64(&type metadata for LemonadeAlbumsFeature.ShelfProvider, v10);
    *a3 = v8;
    a3[1] = a2;
    a3[2] = v12;
    a3[3] = v13;
    type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v14 = v6;
    if ((MEMORY[0x1A590D320]() & 1) == 0 && [v14 px_isUserCreated])
    {
      v15 = [v14 px_fetchContainer];
      if (v15)
      {
        v16 = v15;
        type metadata accessor for LemonadeAlbumItemListManager(0);

        v17 = v16;
        sub_1A43FD8F4(a2, v16, 0, 0, 0, 1, 0);
      }
    }

    sub_1A42EAB60(v14, &v19);
    v18 = v20;
    *a3 = v19;
    *(a3 + 1) = v18;
    type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1A45F0C6C(uint64_t a1, char a2, void *a3)
{
  sub_1A3EC2BA0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for LemonadeNavigationDestination(0);
  v10 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v46 - v16;
  v17 = v3[1];
  v58 = *v3;
  v59 = v17;
  v60[0] = v3[2];
  *(v60 + 9) = *(v3 + 41);
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    v18 = [*(a1 + 16) px:1 fetchAncestryIncludingRoot:?];
    sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
    v19 = sub_1A524CA34();

    if (v19 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
    {
      v21 = 0;
      v53 = v19 & 0xC000000000000001;
      v52 = v19 & 0xFFFFFFFFFFFFFF8;
      v49 = (v10 + 56);
      v46 = v10;
      v48 = (v10 + 48);
      v10 = MEMORY[0x1E69E7CC0];
      v51 = v19;
      v50 = i;
      while (1)
      {
        if (v53)
        {
          v24 = MEMORY[0x1A59097F0](v21, v19);
        }

        else
        {
          if (v21 >= *(v52 + 16))
          {
            goto LABEL_20;
          }

          v24 = *(v19 + 8 * v21 + 32);
        }

        v25 = v24;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v56 = v21 + 1;
        v57 = v10;
        sub_1A3CA2488(0, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
        v70 = 2;
        v26 = v25;
        sub_1A3C6C180(&v68);
        v66 = v68;
        v67 = v69;
        v27 = a3;
        v28 = sub_1A42011B0();
        sub_1A3C6C18C(&v64);
        v62 = v64;
        v63 = v65;
        v29 = v9;
        v30 = sub_1A3C5A374();
        v31 = sub_1A3C30368();
        v32 = sub_1A3C5A374();
        v33 = sub_1A3C5A374();
        v34 = sub_1A3C5A374();
        v35 = v30 & 1;
        v9 = v29;
        v36 = v28;
        a3 = v27;
        PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v66, 0, v36, 0, 1, &v62, v35, &v70, v61, v31, v32 & 1, v33 & 1, v34 & 1, 0);
        v37 = sub_1A3CA36F4(MEMORY[0x1E69E7CC0]);
        PhotoKitItem.__allocating_init(value:options:metadata:)(v26, v61, v37);
        sub_1A45F0AC4(v38, v27, v29);

        v39 = v29;
        v40 = v55;
        (*v49)(v39, 0, 1, v55);

        if ((*v48)(v9, 1, v40) == 1)
        {
          sub_1A45F9520(v9, sub_1A3EC2BA0);
          v19 = v51;
          v22 = v50;
          v10 = v57;
          v23 = v56;
        }

        else
        {
          v41 = v47;
          sub_1A3CA2760(v9, v47, type metadata accessor for LemonadeNavigationDestination);
          sub_1A3CA2760(v41, v54, type metadata accessor for LemonadeNavigationDestination);
          v10 = v57;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1A4249320(0, *(v10 + 16) + 1, 1, v10);
          }

          v23 = v56;
          v43 = *(v10 + 16);
          v42 = *(v10 + 24);
          v22 = v50;
          if (v43 >= v42 >> 1)
          {
            v10 = sub_1A4249320((v42 > 1), v43 + 1, 1, v10);
          }

          *(v10 + 16) = v43 + 1;
          sub_1A3CA2760(v54, v10 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43, type metadata accessor for LemonadeNavigationDestination);
          v19 = v51;
        }

        ++v21;
        if (v23 == v22)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_23:
  }

  else
  {
    sub_1A45F0AC4(a1, a3, v12);
    sub_1A45F8804(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
    v44 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52F8E10;
    sub_1A3CA2760(v12, v10 + v44, type metadata accessor for LemonadeNavigationDestination);
  }

  return v10;
}

void *sub_1A45F1310@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 8))();
  if (result)
  {
    v4 = result;
    type metadata accessor for LemonadeAlbumsFeature.ShelfProvider.CollectionContainerModel(0);
    swift_allocObject();
    sub_1A45F95A0(v4);
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  a1[3] = 0;
  a1[4] = 0;
  return result;
}

uint64_t sub_1A45F13C4(void *a1)
{
  if ([a1 px_isTopLevelFolder])
  {
    return 1;
  }

  else
  {
    return [a1 px_isAllAlbumsVirtualCollection];
  }
}

BOOL sub_1A45F1410(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F94B8(a1, v4, type metadata accessor for LemonadeNavigationDestination);
  v5 = swift_getEnumCaseMultiPayload() == 23;
  sub_1A45F9520(v4, type metadata accessor for LemonadeNavigationDestination);
  return v5;
}

double sub_1A45F14DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = (*(v4 + 8))();
  v10 = sub_1A42E6C64(a2, a3);
  *a4 = v9;
  a4[1] = a1;
  a4[2] = v10;
  a4[3] = v11;
  v12 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(a4, 0, 1, v12);

  return result;
}

uint64_t sub_1A45F1628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45FDCD8();

  return sub_1A4201830(a1, a2, a3, v6);
}

double sub_1A45F16AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v11[0] = *v2;
  v11[1] = v5;
  v12[0] = v2[2];
  *(v12 + 9) = *(v2 + 41);
  v6 = swift_allocObject();
  v7 = v2[1];
  *(v6 + 16) = *v2;
  *(v6 + 32) = v7;
  *(v6 + 48) = v2[2];
  *(v6 + 57) = *(v2 + 41);
  *(v6 + 80) = a1;
  sub_1A3FA1224(v11, &v10);

  sub_1A45EE798(v8, 1, sub_1A45FE6B8, v6, a2);

  return result;
}

unint64_t sub_1A45F176C(uint64_t a1)
{
  v2 = sub_1A3C51EF8();

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A45F17A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  *a3 = v5;
  a3[1] = a1;
  a3[2] = v6;
  v7 = *(type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0) + 28);
  v8 = v6;
  v9 = v5;
  v10 = a1;
  v11 = sub_1A437C480();
  return sub_1A437C488(v11, a3 + v7);
}

uint64_t sub_1A45F1810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v5 = *(type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0) + 28);
  v6 = sub_1A437C480();
  return sub_1A437C488(v6, a4 + v5);
}

uint64_t sub_1A45F1850(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524EC94();
  sub_1A524ECB4();
  if (a1)
  {
    v6 = a1;
    sub_1A524DC04();
  }

  type metadata accessor for LemonadePhotoLibraryContext(0, v5);
  sub_1A3C57458(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A45F194C(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_1A524ECB4();
    v3 = v2;
    sub_1A524DC04();
  }

  else
  {
    sub_1A524ECB4();
  }

  type metadata accessor for LemonadePhotoLibraryContext(0, v4);
  sub_1A3C57458(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A45F1A28(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  sub_1A524ECB4();
  if (v2)
  {
    v4 = v2;
    sub_1A524DC04();
  }

  type metadata accessor for LemonadePhotoLibraryContext(0, v3);
  sub_1A3C57458(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A45F1B24(void *a1, uint64_t (*a2)(void *))
{
  swift_allocObject();
  v4 = a2(a1);

  return v4;
}

uint64_t sub_1A45F1CF8()
{

  v1 = OBJC_IVAR____TtCV12PhotosUICore21LemonadeAlbumsFeature24CollectionContainerModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A45F1EB4@<X0>(uint64_t (*a1)(void)@<X2>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  a1(0);
  sub_1A3C57458(a2, a3, a4);
  result = sub_1A524E434();
  *a5 = result;
  return result;
}

uint64_t sub_1A45F1F24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeAlbumsFeature.CollectionContainerModel(0);
  result = sub_1A524E434();
  *a2 = result;
  return result;
}

void sub_1A45F1F68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x1C8);
    v22 = v8;
    if (v10() == 2 && ((*((*v9 & *v22) + 0x210))(&v25), v24 = v25, v23 = 1, static PickerMode.== infix(_:_:)(&v24, &v23)))
    {
      v11 = sub_1A437C7D4();
      sub_1A45F94B8(v11, a2, type metadata accessor for LemonadeFeedBodyStyle);
      v12 = v22;
    }

    else
    {

      v13 = sub_1A437C79C();
      sub_1A45F94B8(v13, a2, type metadata accessor for LemonadeFeedBodyStyle);
    }
  }

  else
  {
    if (*(a1 + *(type metadata accessor for LemonadeFeedStyleOptions(0) + 20)) - 4 >= 3)
    {
      sub_1A3C41FE8(0, 0, 2, v7);
      v15 = sub_1A3DC1AF8();
      v17 = v21 & 1;
      v18 = a2;
      v19 = v7;
      v20 = 6;
    }

    else
    {
      v14 = sub_1A43A1BA0();
      sub_1A45F94B8(v14, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      v15 = sub_1A3DC1AF8();
      v17 = v16 & 1;
      v18 = a2;
      v19 = v7;
      v20 = 5;
    }

    sub_1A437C3B8(v19, v20, v15, v17, v18);
  }
}

uint64_t sub_1A45F21A0()
{
  v1 = *(**sub_1A44E6630() + 264);

  v1(&v5, v2);

  if (LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
    return 1;
  }

  v3 = *(v0 + 8);
  if (!v3)
  {
    return 1;
  }

  else
  {
    return [v3 px_isTopLevelFolder];
  }
}

uint64_t sub_1A45F2240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A424B7F8(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8C38(0, &qword_1EB13E8D0, sub_1A45F97CC, sub_1A424B7F8, MEMORY[0x1E697F948]);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  sub_1A45F9800(0, &qword_1EB122CB0, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v63 = type metadata accessor for LemonadePlaceholderView(0);
  v14 = MEMORY[0x1EEE9AC00](v63);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F97CC(0, v14);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v69) = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  LOBYTE(v68) = 3;
  sub_1A424B564();
  if ((sub_1A524C594() & 1) != 0 || (v19 = sub_1A44E6630(), v20 = **v19, v66 = v5, v21 = *(v20 + 264), v65 = a2, v22 = , v21(&v69, v22), , !LemonadeAlbumsContentFilter.isFilterApplied.getter()))
  {
    sub_1A45EE798(a1, 0, 0, 0, v7);
    sub_1A45F94B8(v7, v10, sub_1A424B7F8);
    swift_storeEnumTagMultiPayload();
    sub_1A45A8F98();
    sub_1A424B894();
    sub_1A5249744();
    v44 = sub_1A424B7F8;
  }

  else
  {
    v23 = *(**v19 + 264);

    v23(&v69, v24);

    v25 = v69;
    v26 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
    v27 = sub_1A524C634();
    v28 = PXLemonadeLocalizedString(v27);

    v29 = sub_1A524C674();
    v60 = v30;
    v61 = v29;

    v31 = *sub_1A44E7304();
    v68 = v25;
    v69 = v31;
    sub_1A43FED2C();
    if (sub_1A524E114())
    {
      v32 = sub_1A524C634();
      v33 = PXLemonadeLocalizedString(v32);

      v34 = sub_1A524C674();
      v59 = v35;

      v36 = sub_1A524C634();
      v37 = PXLemonadeLocalizedString(v36);

      v38 = sub_1A524C674();
      v40 = v39;

      v41 = v26;
      v42 = sub_1A3C5A374();
      v43 = sub_1A3C5A374();
      sub_1A463DB54(v41, v42 & 1, v43 & 1, 0, 0x662E7265646C6F66, 0xEB000000006C6C69, v34, v59, v16, v38, v40, 0, 0, 0, 0, v61, v60, sub_1A45F29B0, 0);
    }

    else
    {
      v45 = sub_1A524C634();
      v46 = PXLemonadeLocalizedString(v45);

      v47 = sub_1A524C674();
      v58 = v48;
      v59 = v47;

      v49 = sub_1A524C634();
      v50 = PXLemonadeLocalizedString(v49);

      v51 = sub_1A524C674();
      v53 = v52;

      v54 = v26;
      v55 = sub_1A3C5A374();
      v56 = sub_1A3C5A374();
      sub_1A463DB54(v54, v55 & 1, v56 & 1, 0, 0xD000000000000014, 0x80000001A53DF710, v59, v58, v16, v51, v53, 0, 0, 0, 0, v61, v60, sub_1A45F29B0, 0);
    }

    sub_1A45F94B8(v16, v13, type metadata accessor for LemonadePlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView, &unk_1A5352A50);
    v7 = v64;
    sub_1A5249744();
    sub_1A45F9520(v16, type metadata accessor for LemonadePlaceholderView);
    sub_1A45F94B8(v7, v10, sub_1A45F97CC);
    swift_storeEnumTagMultiPayload();
    sub_1A45A8F98();
    sub_1A424B894();
    sub_1A5249744();

    v44 = sub_1A45F97CC;
  }

  return sub_1A45F9520(v7, v44);
}

double sub_1A45F29B0()
{
  v0 = *sub_1A44E6630();

  v2 = *sub_1A44E6F70();
  (*(*v0 + 272))(&v2);

  return result;
}

uint64_t sub_1A45F2A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  sub_1A45F8804(0, &qword_1EB124DD0, sub_1A43DC1C8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v45 - v4;
  sub_1A43DC25C(0);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697F948];
  sub_1A45F8C38(0, &qword_1EB13E8D8, sub_1A45F9958, sub_1A43DC25C, MEMORY[0x1E697F948]);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v57 = v45 - v10;
  sub_1A45F8C38(0, &qword_1EB13E910, sub_1A45F8AEC, sub_1A45F99A0, v8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = v45 - v12;
  sub_1A45F9958(0);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5243284();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  sub_1A45F99A0(0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v2 + 16);
  if (v28)
  {
    v29 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x540);
    v48 = v24;
    v49 = v15;
    v46 = v27;
    v47 = v25;
    v50 = v28;
    v29();
    v30 = v53;
    v59 = v53;

    sub_1A52426E4();
    v45[1] = v31;
    sub_1A45F94B8(v2, v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v32 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v33 = swift_allocObject();
    sub_1A3CA2760(v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    *(v33 + ((v22 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    (*(v17 + 104))(v19, *MEMORY[0x1E69C23E0], v16);

    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A3CA2A44(0);
    sub_1A45F8C38(0, &qword_1EB13E8F0, sub_1A45F9AA0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    sub_1A45F9AD4();
    v34 = v46;
    sub_1A5242AA4();
    v36 = v47;
    v35 = v48;
    (*(v47 + 16))(v52, v34, v48);
    swift_storeEnumTagMultiPayload();
    sub_1A45F8AEC(0);
    sub_1A3C57458(&qword_1EB124CF0, sub_1A45F8AEC, MEMORY[0x1E69C2918]);
    sub_1A3C57458(&unk_1EB13E920, sub_1A45F99A0, MEMORY[0x1E69C20C8]);
    v37 = v49;
    sub_1A5249744();
    sub_1A45F94B8(v37, v57, sub_1A45F9958);
    swift_storeEnumTagMultiPayload();
    sub_1A45F9C70();
    sub_1A3C57458(&qword_1EB139A48, sub_1A43DC25C, &unk_1A536F5E8);
    sub_1A5249744();

    sub_1A45F9520(v37, sub_1A45F9958);
    return (*(v36 + 8))(v34, v35);
  }

  else
  {
    v59 = v53;
    sub_1A43DC1C8(0);
    v40 = v50;
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
    sub_1A3CA2A44(0);
    v42 = v41;
    v43 = sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44, MEMORY[0x1E69C1F80]);
    v44 = sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);

    sub_1A48C88E8(&v59, v40, v42, v43, v44, v7);
    sub_1A45F94B8(v7, v57, sub_1A43DC25C);
    swift_storeEnumTagMultiPayload();
    sub_1A45F9C70();
    sub_1A3C57458(&qword_1EB139A48, sub_1A43DC25C, &unk_1A536F5E8);
    sub_1A5249744();
    return sub_1A45F9520(v7, sub_1A43DC25C);
  }
}

uint64_t sub_1A45F334C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v48 = a1;
  v51 = a3;
  sub_1A424ADF0(0, a4);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AE74(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F9DF0(0);
  v50 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8C38(0, &qword_1EB13E9A0, sub_1A45F9DF0, sub_1A424ADF0, MEMORY[0x1E697F960]);
  v49 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  sub_1A45FA79C(a2, &v53);
  v21 = v56;
  if (v56)
  {
    v47 = v15;
    v22 = v57;
    __swift_project_boxed_opaque_existential_1(&v53, v56);
    v23 = (*(v22 + 32))(v21, v22);
    __swift_destroy_boxed_opaque_existential_0(&v53);
    if (v23)
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = v24;
        LOBYTE(v53) = *(v48 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
        v52 = 3;
        sub_1A424B564();
        if ((sub_1A524C594() & 1) == 0)
        {
          v37 = swift_allocObject();
          *(v37 + 16) = v25;
          v53 = v25;
          v54 = sub_1A45FAB10;
          v55 = v37;
          sub_1A45F9EA4(0);
          v39 = v38;
          v40 = sub_1A3C57458(&qword_1EB13E998, sub_1A45F9EA4, &unk_1A534FE20);
          v41 = v23;
          MEMORY[0x1A5904CD0](&v53, v39, v40);
          v53 = v39;
          v54 = v40;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v43 = sub_1A45FCE48(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0, MEMORY[0x1E697D7E8]);
          v53 = v11;
          v54 = v43;
          v44 = swift_getOpaqueTypeConformance2();
          v45 = v50;
          MEMORY[0x1A5904CE0](v17, v50, v6, OpaqueTypeConformance2, v44);

          (*(v47 + 8))(v17, v45);
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    sub_1A45FA82C(&v53);
  }

  sub_1A45FE270(0, &qword_1EB128070, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697C280]);
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v27 = sub_1A45FCE48(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0, MEMORY[0x1E697D7E8]);
  MEMORY[0x1A5904CD0](v13, v11, v27);
  sub_1A45F9EA4(255);
  v29 = v28;
  v30 = sub_1A3C57458(&qword_1EB13E998, sub_1A45F9EA4, &unk_1A534FE20);
  v53 = v29;
  v54 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v53 = v11;
  v54 = v27;
  v32 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A5904CF0](v9, v50, v6, v31, v32);
  (*(v7 + 8))(v9, v6);
  sub_1A45F9520(v13, sub_1A424AE74);
LABEL_8:
  v33 = sub_1A45FA8B4();
  v34 = v51;
  MEMORY[0x1A5904CD0](v20, v49, v33);
  sub_1A3D13094(v20);
  sub_1A45FAA48(0);
  return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
}

uint64_t sub_1A45F3998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v35 = sub_1A5248644();
  v37 = *(v35 - 8);
  v3 = MEMORY[0x1EEE9AC00](v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FA138(0, v3);
  v7 = v6;
  Description = v6[-1].Description;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FB4EC(0, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
  v11 = v10;
  v38 = v10[-1].Description;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  sub_1A45F9F4C(0, v12);
  v16 = *(v15 - 8);
  v39 = v15;
  v40 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v42 = a1;
  sub_1A45FA270(0);
  v32 = v19;
  sub_1A5243124();
  v20 = sub_1A5243474();
  v34 = v20;
  v21 = sub_1A424B2FC();
  v33 = sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  v44 = &type metadata for LemonadeAlbumNewEntryLabel;
  v45 = v20;
  v46 = v21;
  v47 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1A3C57458(&qword_1EB124DC8, MEMORY[0x1E69C23A0], MEMORY[0x1E69C2398]);
  sub_1A524A2E4();
  sub_1A5248634();
  v22 = sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138, MEMORY[0x1E697CD28]);
  v23 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  v24 = v35;
  sub_1A524B204();
  (*(v37 + 8))(v5, v24);
  v25 = Description[1](v9, v7);
  sub_1A45FA340(0, v25);
  v27 = v26;
  v44 = v7;
  v45 = v24;
  v46 = v22;
  v47 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v11;
  v45 = v34;
  v46 = OpaqueTypeConformance2;
  v47 = v33;
  v29 = swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  v38[1](v14, v11);
  v44 = v11;
  v45 = v27;
  v46 = OpaqueTypeConformance2;
  v47 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v39;
  sub_1A524AA94();
  return (*(v40 + 8))(v18, v30);
}

uint64_t sub_1A45F3EF8(void *a1)
{
  v2 = sub_1A5243474();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [a1 px_isUserCreated];
  if (v7)
  {
    LOBYTE(v7) = [a1 px_isFolder];
  }

  v9[15] = v7;
  sub_1A5247D74();
  sub_1A424B2FC();
  sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  sub_1A524A944();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A45F4054()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A45FB4EC(0, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
  sub_1A45FA138(255, v4);
  v6 = v5;
  v7 = sub_1A5248644();
  v8 = sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138, MEMORY[0x1E697CD28]);
  v9 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  swift_getOpaqueTypeConformance2();
  sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

void sub_1A45F4270(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    v8 = [objc_opt_self() fetchCollectionListsContainingCollection:v5 options:0];
    v9 = [v8 firstObject];

    v10 = a2[5];
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = MEMORY[0x1E69E7D40];
    v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x1C8);
    v13 = v10;
    if (v12() == 2)
    {
      (*((*v11 & *v13) + 0x210))(v20);
      v19 = v20[0];
      v18 = 1;
      v14 = static PickerMode.== infix(_:_:)(&v19, &v18);

      if (v14)
      {
LABEL_8:
        v15 = 0;
        if (MEMORY[0x1A590D320]())
        {
LABEL_9:
          sub_1A42EAB60(v5, v20);

          v17 = v20[1];
          *a3 = v20[0];
          *(a3 + 16) = v17;
          type metadata accessor for LemonadeNavigationDestination(0);
          swift_storeEnumTagMultiPayload();
          return;
        }

LABEL_12:
        type metadata accessor for LemonadeAlbumItemListManager(0);

        v16 = v9;
        sub_1A43FD8F4(a2, v9, v15, 0, 0, 1, 0);
      }
    }

    else
    {
    }

    v15 = 1;
    if (MEMORY[0x1A590D320]())
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  *a3 = v6;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v7 = v5;
}

void sub_1A45F4584(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    sub_1A3CA2488(0, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
    v4 = v6;
    v5 = sub_1A3CA2B54();
  }

  a2[3] = v4;
  a2[4] = v5;
  *a2 = v3;
}

id sub_1A45F4648()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  result = *(v0 + 8);
  if (result)
  {
    return [result canPerformEditOperation_];
  }

  return result;
}

uint64_t sub_1A45F4688()
{
  sub_1A3C57458(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider, &unk_1A534FD40);

  return sub_1A3C47918();
}

void sub_1A45F46F4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() arrayWithObject_];
  sub_1A52422A4();
}

uint64_t sub_1A45F477C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A45F8804(0, &qword_1EB124DD0, sub_1A43DC1C8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v15 = a1;

  if (sub_1A5242684())
  {
    sub_1A3CA2A44(0);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);

    sub_1A5243094();
    sub_1A43DC1C8(0);
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    sub_1A43DC1C8(0);
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_1A3CA2A44(0);
  v10 = v9;
  v11 = sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44, MEMORY[0x1E69C1F80]);
  v12 = sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
  return sub_1A48C88E8(&v15, v6, v10, v11, v12, a2);
}

void sub_1A45F49C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    *a3 = v6;
    a3[1] = a2;
    a3[2] = 0;
    a3[3] = 0xE000000000000000;
    type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    v7 = v5;
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v10 = *(a2 + 40);
      if (v10)
      {
        v11 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x2D0))(v5);
      }

      else
      {
        v12 = v5;
        v11 = 0;
      }

      sub_1A47A9538(v9, 0, 0, 0, v13, v11, 0, a3);
      type metadata accessor for LemonadeNavigationDestination(0);
    }

    else
    {
      type metadata accessor for LemonadeNavigationDestination(0);
    }

    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1A45F4B54()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = [v1 px_localizedTitle];
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {

    return sub_1A3C38BD4(0xD000000000000017);
  }
}

uint64_t sub_1A45F4BE8()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    return [v1 px_isTopLevelFolder];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A45F4C58@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    type metadata accessor for LemonadeAlbumsFeature.CollectionContainerModel(0);
    swift_allocObject();
    sub_1A45F96B8(v2);
  }

  result = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  a1[3] = 0;
  a1[4] = 0;
  return result;
}

void sub_1A45F4DE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16) px_rootAlbumCollectionList];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = v4;
  sub_1A45EE798(a1, 0, sub_1A45FE6E0, v5, a2);
}

id sub_1A45F4EB0()
{
  result = *(v0 + 8);
  if (result)
  {
    return [result canPerformEditOperation_];
  }

  return result;
}

uint64_t sub_1A45F4EDC()
{
  sub_1A3C57458(&qword_1EB13EA68, type metadata accessor for LemonadeAlbumsFeature.MacFeedProvider, &unk_1A534FD94);

  return sub_1A3C47918();
}

id sub_1A45F4F48()
{
  v1 = [*(v0 + 16) px_rootAlbumCollectionList];

  return v1;
}

uint64_t sub_1A45F4F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a2;
  v22 = a3;
  v23 = a6;
  v9 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A52498E4();
  sub_1A3C57458(&qword_1EB141DF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v29 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A45F8804(255, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v10 = sub_1A5248A84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A5249834();
  v24 = a4;
  v25 = a5;
  v26 = a1;
  v27 = v21;
  v28 = v22;
  sub_1A5248A74();
  WitnessTable = swift_getWitnessTable();
  (*(v11 + 16))(v16, v13, v10);
  v18 = *(v11 + 8);
  v18(v13, v10);
  MEMORY[0x1A5904CD0](v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_1A45F5308@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v107 = a3;
  v108 = a1;
  v109 = a2;
  v102 = a6;
  v8 = sub_1A5248644();
  v9 = *(v8 - 8);
  v90 = v8;
  v91 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v86 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FB5E8(0);
  v12 = *(v11 - 8);
  v87 = v11;
  v88 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v84 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1A45FB5E8;
  sub_1A45FB4EC(0, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
  v92 = v14;
  v95 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v105 = v77 - v16;
  sub_1A45FB300(0, v15);
  v97 = v17;
  v101 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v89 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FB0A8(0, v18);
  v100 = v20;
  v98 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v94 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8804(0, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
  v99 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v96 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = v77 - v25;
  v83 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A52498E4();
  v30 = sub_1A3C57458(&qword_1EB141DF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v136 = a4;
  v137 = v29;
  v138 = a5;
  v139 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v136 = a4;
  v137 = v29;
  v138 = a5;
  v139 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v136 = OpaqueTypeMetadata2;
  v137 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeMetadata2();
  v136 = OpaqueTypeMetadata2;
  v137 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v136 = a4;
  v137 = v33;
  v138 = a5;
  v139 = v34;
  v77[1] = MEMORY[0x1E69C3020];
  v104 = swift_getOpaqueTypeMetadata2();
  v106 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v36 = v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v77 - v39;
  v81 = v77 - v39;
  v109(v38);
  v131 = a4;
  v132 = a5;
  v41 = swift_checkMetadataState();
  sub_1A524A4C4();
  v83[1](v28, a4);
  v136 = a4;
  v137 = v41;
  v138 = a5;
  v139 = v34;
  v82 = swift_getOpaqueTypeConformance2();
  v42 = v106;
  v43 = *(v106 + 16);
  v79 = v106 + 16;
  v80 = v43;
  v78 = v36;
  v44 = v104;
  v43(v40, v36, v104);
  v45 = *(v42 + 8);
  v106 = v42 + 8;
  v83 = v45;
  (v45)(v36, v44);
  v46 = 3;
  v103 = a4;
  v125 = a4;
  v126 = a5;
  if (!v108)
  {
    v46 = 1;
  }

  v127 = v108;
  v128 = v109;
  v129 = v107;
  v130 = v46;
  v120 = a4;
  v121 = a5;
  v47 = a5;
  v77[0] = a5;
  v122 = v108;
  v123 = v109;
  v124 = v107;
  v48 = v107;
  sub_1A45FB698(0);
  sub_1A3C57458(&qword_1EB13EA20, sub_1A45FB698, MEMORY[0x1E6981F48]);
  v49 = v84;
  sub_1A524A2E4();
  v50 = v86;
  sub_1A5248634();
  v51 = sub_1A3C57458(&qword_1EB13EA28, v85, MEMORY[0x1E697CD28]);
  v52 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  v53 = v87;
  v54 = v90;
  sub_1A524B204();
  (v91[1])(v50, v54);
  (*(v88 + 8))(v49, v53);
  v91 = v77;
  v115 = v103;
  v116 = v47;
  v117 = v108;
  v118 = v109;
  v119 = v48;
  sub_1A45FB88C(0);
  v56 = v55;
  v136 = v53;
  v137 = v54;
  v138 = v51;
  v139 = v52;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_1A5242424();
  v59 = sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
  v60 = v92;
  v136 = v92;
  v137 = v58;
  v138 = v57;
  v139 = v59;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v89;
  v63 = v105;
  sub_1A524A4C4();
  v64 = (*(v95 + 8))(v63, v60);
  v105 = v77;
  v110 = v103;
  v111 = v77[0];
  v112 = v108;
  v113 = v109;
  v114 = v107;
  sub_1A45FBA44(0, v64);
  v136 = v60;
  v137 = v56;
  v138 = v57;
  v139 = v61;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v97;
  v136 = v97;
  v137 = v58;
  v138 = v65;
  v139 = v59;
  swift_getOpaqueTypeConformance2();
  v67 = v94;
  sub_1A524A4A4();
  (*(v101 + 8))(v62, v66);
  v68 = v98;
  v69 = v93;
  v70 = v100;
  (*(v98 + 32))(v93, v67, v100);
  (*(v68 + 56))(v69, 0, 1, v70);
  v71 = v78;
  v72 = v81;
  v73 = v104;
  v80(v78, v81, v104);
  v136 = v71;
  v74 = v96;
  sub_1A3D1379C(v69, v96);
  v137 = v74;
  v135[0] = v73;
  v135[1] = v99;
  v133 = v82;
  v134 = sub_1A45FDF54();
  sub_1A3DF4988(&v136, 2uLL, v135);
  sub_1A3D13830(v69);
  v75 = v83;
  (v83)(v72, v73);
  sub_1A3D13830(v74);
  return (v75)(v71, v73);
}

uint64_t sub_1A45F5E1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_1A52498E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3C57458(&qword_1EB141DF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v16 = a1;
  v17 = v5;
  v18 = a2;
  v19 = v9;
  v15[0] = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = v15 - v12;
  sub_1A52498D4();
  sub_1A524A934();
  (*(v6 + 8))(v8, v5);
  sub_1A524A194();
  v16 = a1;
  v17 = v5;
  v18 = a2;
  v19 = v9;
  swift_getOpaqueTypeConformance2();
  sub_1A524A8F4();
  return (*(v11 + 8))(v13, OpaqueTypeMetadata2);
}

double sub_1A45F604C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1A45FE270(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v72 - v9;
  sub_1A41C3F80(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v72 - v14;
  sub_1A45FB7E0(0);
  v86 = v15;
  v85 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1A524B9A4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v88 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v80 = sub_1A5243124();
  v21 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - v25;
  sub_1A45FB7AC(0);
  v93 = v27;
  v91 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v84 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FB778(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v90 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v89 = &v72 - v33;
  v94 = 0;
  v95 = a1;
  if (a1)
  {
    v94 = *sub_1A44E6630();
    swift_retain_n();
  }

  if ((v95 & 2) != 0)
  {
    if (a2)
    {
      v76 = v8;
      v77 = v7;
      v78 = v12;
      v36 = a2;
      sub_1A45FE3B8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v74 = xmmword_1A52FF950;
      *(inited + 16) = xmmword_1A52FF950;
      *(inited + 32) = sub_1A524C674();
      *(inited + 40) = v38;
      *(inited + 48) = sub_1A524C674();
      *(inited + 56) = v39;
      *(inited + 64) = sub_1A524C674();
      *(inited + 72) = v40;
      v41 = v36;
      v42 = sub_1A3C4467C(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v98 = v42;
      v43 = [v41 px_isUserCreated];
      v79 = a3;
      if (v43)
      {
        v44 = swift_initStackObject();
        *(v44 + 16) = v74;
        *(v44 + 32) = sub_1A524C674();
        *(v44 + 40) = v45;
        *(v44 + 48) = sub_1A524C674();
        *(v44 + 56) = v46;
        *(v44 + 64) = sub_1A524C674();
        *(v44 + 72) = v47;
        sub_1A45FE200(v44);
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      v75 = v26;
      sub_1A5243104();
      v73 = v20;
      sub_1A524B994();
      *&v74 = *sub_1A44E6630();
      v49 = v21;
      v50 = *(v21 + 16);
      v51 = v26;
      v52 = v80;
      v50(v23, v51, v80);
      v53 = v81;
      v72 = v41;
      v54 = *(v81 + 16);
      v55 = v20;
      v56 = v82;
      v54(v88, v55, v82);
      v57 = v83;
      v50(v83, v23, v52);
      sub_1A45FB814(0);
      v59 = v58;
      v60 = v88;
      v54((v57 + *(v58 + 48)), v88, v56);
      v61 = *(v59 + 64);
      v62 = v74;
      swift_retain_n();

      *(v57 + v61) = v62;
      v63 = *(v53 + 8);
      v63(v73, v56);
      v64 = *(v49 + 8);
      v64(v75, v52);

      v63(v60, v56);
      v64(v23, v52);
      v48 = v84;
      sub_1A3CA2760(v57, v84, sub_1A45FB7E0);
      (*(v85 + 56))(v48, 0, 1, v86);
      a3 = v79;
      v12 = v78;
      v7 = v77;
      v8 = v76;
    }

    else
    {
      v48 = v84;
      (*(v85 + 56))(v84, 1, 1, v86, v32);
    }

    v35 = v92;
    v34 = v89;
    sub_1A3CA2760(v48, v89, sub_1A45FB7AC);
    (*(v91 + 56))(v34, 0, 1, v93);
  }

  else
  {
    v34 = v89;
    (*(v91 + 56))(v89, 1, 1, v93, v32);
    v35 = v92;
  }

  if ((v95 & 4) != 0)
  {
    v96 = sub_1A3C38BD4(0xD00000000000001FLL);
    v97 = v66;
    sub_1A3D5F9DC();
    v67 = v87;
    sub_1A524B754();
    (*(v8 + 32))(v35, v67, v7);
    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  (*(v8 + 56))(v35, v65, 1, v7);
  v68 = v90;
  sub_1A45F94B8(v34, v90, sub_1A45FB778);
  sub_1A45F94B8(v35, v12, sub_1A41C3F80);
  *a3 = v94;
  sub_1A45FB6CC(0);
  v70 = v69;
  sub_1A45F94B8(v68, a3 + *(v69 + 48), sub_1A45FB778);
  sub_1A45F94B8(v12, a3 + *(v70 + 64), sub_1A41C3F80);
  sub_1A45F9520(v35, sub_1A41C3F80);
  sub_1A45F9520(v34, sub_1A45FB778);
  sub_1A45F9520(v12, sub_1A41C3F80);
  sub_1A45F9520(v68, sub_1A45FB778);

  return result;
}

uint64_t sub_1A45F6AC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5242424();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F6CEC(a2);
  sub_1A45FB4EC(0, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
  sub_1A45FB5E8(255);
  v8 = v7;
  v9 = sub_1A5248644();
  v10 = sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8, MEMORY[0x1E697CD28]);
  v11 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  v13[0] = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
  sub_1A524A944();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A45F6CEC(uint64_t a1)
{
  if (a1 && (v1 = *(**sub_1A44E6630() + 264), v2 = , v1(&v4, v2), , LemonadeAlbumsContentFilter.isFilterApplied.getter()))
  {
    v4 = *sub_1A44E7304();
    sub_1A43FED2C();
    sub_1A524E114();
    v4 = sub_1A524B434();
    sub_1A524B3C4();
    return sub_1A5242404();
  }

  else
  {

    return sub_1A5242414();
  }
}

uint64_t sub_1A45F6E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a3;
  v22[1] = a1;
  v4 = sub_1A5242424();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F6CEC(a2);
  sub_1A45FB300(0, v8);
  sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
  v10 = v9;
  sub_1A45FB88C(255);
  v12 = v11;
  sub_1A45FB5E8(255);
  v14 = v13;
  v15 = sub_1A5248644();
  v16 = sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8, MEMORY[0x1E697CD28]);
  v17 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30], MEMORY[0x1E69C1E28]);
  v23 = v10;
  v24 = v4;
  v25 = OpaqueTypeConformance2;
  v26 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v23 = v10;
  v24 = v12;
  v25 = OpaqueTypeConformance2;
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1A524A944();
  return (*(v5 + 8))(v7, v4);
}

double sub_1A45F70EC()
{
  v0 = *(**sub_1A44E6630() + 224);

  v0(1);

  return result;
}

uint64_t sub_1A45F7170@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  sub_1A45F9800(0, &qword_1EB13EB48, sub_1A45FCCFC, MEMORY[0x1E697F948]);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  sub_1A45FCCFC(0);
  v10 = v9;
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_1A524CC54();

  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = a2;
  *(v15 + 40) = v13;

  v17 = sub_1A524CC44();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  *(v18 + 32) = a2;
  *(v18 + 40) = v13;
  sub_1A524B944();
  if (v13)
  {
    v19 = sub_1A3C38BD4(0xD00000000000002BLL);
    v26 = &v25;
    v30 = v19;
    v31 = v20;
    MEMORY[0x1EEE9AC00](v19);
    *(&v25 - 4) = &v30;
    *(&v25 - 3) = 0x6F746F6870;
    *(&v25 - 2) = 0xE500000000000000;
  }

  else
  {
    v21 = sub_1A3C38BD4(0xD000000000000028);
    v26 = &v25;
    v30 = v21;
    v31 = v22;
    MEMORY[0x1EEE9AC00](v21);
    *(&v25 - 4) = &v30;
    *(&v25 - 3) = 0x6C75622E7473696CLL;
    *(&v25 - 2) = 0xEB0000000074656CLL;
  }

  sub_1A3E429B4();
  sub_1A3C57458(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);

  sub_1A524B854();

  v23 = v28;
  (*(v28 + 16))(v8, v12, v10);
  swift_storeEnumTagMultiPayload();
  sub_1A3C57458(&qword_1EB13EB28, sub_1A45FCCFC, MEMORY[0x1E697D6A8]);
  sub_1A5249744();

  return (*(v23 + 8))(v12, v10);
}

uint64_t sub_1A45F7640()
{
  v0 = sub_1A5249934();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FD868(0, v2);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FD910(0);
  sub_1A45FCE48(&qword_1EB13EB78, sub_1A45FD910, sub_1A45FCF54, MEMORY[0x1E69819D0]);
  sub_1A5248004();
  sub_1A5249924();
  sub_1A3C57458(&qword_1EB13EB80, sub_1A45FD868, MEMORY[0x1E697BF08]);
  sub_1A3C57458(&qword_1EB13EB88, MEMORY[0x1E697C778], MEMORY[0x1E697C770]);
  sub_1A524AC34();
  (*(v1 + 8))(v4, v0);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A45F78B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  sub_1A45FC9D4(0);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524B9A4();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v56 - v8;
  sub_1A45FE270(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  sub_1A45FCAA4(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v68 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v56 - v20;
  sub_1A45FCAD8(0);
  v65 = *(v21 - 8);
  v66 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v26 = &v56 - v25;
  (*(*a1 + 264))(v74, v24);
  v27 = v74[0];
  v72 = a1;
  v73 = v74[0];
  sub_1A44A6464(0);
  sub_1A45FCBD8(0);
  sub_1A3C57458(&qword_1EB13AD70, sub_1A44A6464, MEMORY[0x1E6981F48]);
  sub_1A45FCE48(&qword_1EB13EB10, sub_1A45FCBD8, sub_1A45FCEB8, MEMORY[0x1E69819D0]);
  v64 = v26;
  sub_1A524A2E4();
  v74[0] = v27;
  if (LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
    v74[0] = sub_1A3C38BD4(0xD00000000000002ELL);
    v74[1] = v28;
    sub_1A3D5F9DC();

    v29 = v16;
    v57 = v16;
    sub_1A524B754();
    v30 = v61;
    sub_1A524B994();
    v31 = v11;
    v32 = *(v11 + 16);
    v33 = v13;
    v34 = v13;
    v56 = v13;
    v35 = v10;
    v32(v34, v29, v10);
    v36 = v58;
    v37 = v59;
    v38 = *(v58 + 16);
    v38(v63, v30, v59);
    v39 = v60;
    v32(v60, v33, v35);
    sub_1A45FCA08(0);
    v41 = v63;
    v38((v39 + *(v40 + 48)), v63, v37);
    v42 = *(v36 + 8);
    v42(v61, v37);
    v43 = *(v31 + 8);
    v43(v57, v35);
    v42(v41, v37);
    v43(v56, v35);
    v44 = v62;
    sub_1A3CA2760(v39, v62, sub_1A45FC9D4);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v44 = v62;
  }

  (*(v69 + 56))(v44, v45, 1, v70);
  v47 = v64;
  v46 = v65;
  v48 = *(v65 + 16);
  v49 = v66;
  v50 = v67;
  v48(v67, v64, v66);
  v51 = v68;
  sub_1A45F94B8(v44, v68, sub_1A45FCAA4);
  v52 = v71;
  v48(v71, v50, v49);
  sub_1A45FD510(0);
  sub_1A45F94B8(v51, &v52[*(v53 + 48)], sub_1A45FCAA4);
  sub_1A45F9520(v44, sub_1A45FCAA4);
  v54 = *(v46 + 8);
  v54(v47, v49);
  sub_1A45F9520(v51, sub_1A45FCAA4);
  return (v54)(v50, v49);
}

uint64_t sub_1A45F7FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  sub_1A45FD620(0, &qword_1EB13EB40, MEMORY[0x1E697F948]);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = v34 - v8;
  sub_1A45F9800(0, &qword_1EB13EB48, sub_1A45FCCFC, MEMORY[0x1E697F948]);
  v34[1] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  sub_1A45FCCC8(0);
  v34[2] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v36 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FCCFC(0);
  v15 = v14;
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_1A524CC54();
  v19 = sub_1A524CC44();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = a2;
  v20[5] = v18;

  v22 = sub_1A524CC44();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = a3;
  v23[5] = v18;
  sub_1A524B944();
  v24 = *sub_1A44E72F8();
  v40 = v18;
  v41 = v24;
  sub_1A43FE604();
  if (sub_1A524C594())
  {
    v25 = sub_1A3C38BD4(0xD00000000000002ELL);
    v34[0] = v34;
    v41 = v25;
    v42 = v26;
    MEMORY[0x1EEE9AC00](v25);
    v34[-4] = &v41;
    v34[-3] = 0x6C676E6174636572;
    v33 = 0xEF6B636174732E65;
    sub_1A3E429B4();
    sub_1A3C57458(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);

    sub_1A524B854();

LABEL_5:
    v30 = v35;
    (*(v35 + 16))(v11, v17, v15);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB13EB28, sub_1A45FCCFC, MEMORY[0x1E697D6A8]);
    v31 = v36;
    sub_1A5249744();
    sub_1A45F94B8(v31, v38, sub_1A45FCCC8);
    swift_storeEnumTagMultiPayload();
    sub_1A45FCF54();
    sub_1A5249744();

    sub_1A45F9520(v31, sub_1A45FCCC8);
    return (*(v30 + 8))(v17, v15);
  }

  v27 = *sub_1A44E7304();
  v40 = v18;
  v41 = v27;
  if (sub_1A524C594())
  {
    v28 = sub_1A3C38BD4(0xD00000000000002FLL);
    v34[0] = v34;
    v41 = v28;
    v42 = v29;
    MEMORY[0x1EEE9AC00](v28);
    v34[-4] = &v41;
    v34[-3] = 0x7265646C6F66;
    v33 = 0xE600000000000000;
    sub_1A3E429B4();
    sub_1A3C57458(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);

    sub_1A524B854();

    goto LABEL_5;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

double sub_1A45F8678@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A524B544();
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001BLL;
    }

    else
    {
      v4 = 0xD00000000000001ELL;
    }

    v5 = sub_1A3C38BD4(v4);
    v7 = v6;

    *&v9 = v5;
    *(&v9 + 1) = v7;
    sub_1A3D5F9DC();
    sub_1A524A464();
  }

  sub_1A5249744();
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

id sub_1A45F87D0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LemonadeAlbumsFolderAccessibilityUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A45F8804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45F8868(void *a1, uint64_t a2)
{
  v3 = [a1 px_rootAlbumCollectionList];
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = [ObjCClassFromMetadata sharedInstance];
  v7 = [v6 simulateEmptyShelves];

  if (!v7)
  {
    v11 = *(a2 + 40);
    if (v11)
    {
      v12 = MEMORY[0x1E69E7D40];
      v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x1C8);
      v14 = v11;
      if (v13() == 2)
      {
        (*((*v12 & *v14) + 0x210))(v19);
        LOBYTE(v21[0]) = v19[0];
        LOBYTE(v20[0]) = 1;
        v15 = static PickerMode.== infix(_:_:)(v21, v20);

        if (v15)
        {
          v16 = 0;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v16 = 1;
LABEL_9:
    type metadata accessor for LemonadeAlbumItemListManager(0);

    sub_1A43FD8F4(v17, v3, v16, 0, 20, 0, 0);
  }

  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v8 = *(a2 + 16);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  v9 = v8;
  sub_1A43FD8EC();
  v10 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v9, 0, v21);

  return v10;
}

void sub_1A45F8AEC(uint64_t a1)
{
  if (!qword_1EB124CE8)
  {
    sub_1A3CA2A44(255);
    sub_1A45F8C38(255, &qword_1EB127EB8, MEMORY[0x1E69C2288], MEMORY[0x1E69C2568], MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44, MEMORY[0x1E69C1F80]);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    sub_1A45F8CBC();
    v1 = sub_1A5243EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124CE8);
    }
  }
}

void sub_1A45F8C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A45F8CBC()
{
  result = qword_1EB127EC0;
  if (!qword_1EB127EC0)
  {
    sub_1A45F8C38(255, &qword_1EB127EB8, MEMORY[0x1E69C2288], MEMORY[0x1E69C2568], MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB129130, MEMORY[0x1E69C2288], MEMORY[0x1E69C2280]);
    sub_1A3C57458(&qword_1EB129070, MEMORY[0x1E69C2568], MEMORY[0x1E69C2560]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127EC0);
  }

  return result;
}

uint64_t sub_1A45F8E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v18 = sub_1A524C624();
  v12 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v15 - 8);
  if (a5 & 1) != 0 || (a7)
  {
LABEL_3:
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();
    sub_1A524C5E4();
    v19 = a3;
    goto LABEL_4;
  }

  if (a4 < 1)
  {
    if (a6 >= 1)
    {
      sub_1A524C5F4();
      sub_1A524C5E4();
      sub_1A524C5D4();
      sub_1A524C5E4();
      v19 = a6;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1A524C5F4();
  sub_1A524C5E4();
  sub_1A524C5D4();
  sub_1A524C5E4();
  v19 = a4;
  if (a6 >= 1)
  {
    sub_1A524C5C4();
    sub_1A524C5E4();
    v19 = a6;
  }

LABEL_4:
  sub_1A524C5C4();
  sub_1A524C5E4();
  sub_1A524C614();
  v16 = sub_1A524C774();
  (*(v12 + 8))(v14, v18);
  return v16;
}

uint64_t sub_1A45F9160()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (!v6)
  {
    if (sub_1A52426F4())
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v7 = 0xD000000000000022;
    }

    v5 = sub_1A3C38BD4(v7);
  }

  v8 = v5;
  v9 = v6;
  sub_1A3D6FBA4();
  v10 = sub_1A5242724();
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    if (sub_1A52426F4())
    {
      v13 = sub_1A5242694();
      v15 = v14;
      v16 = sub_1A52426A4();
      v18 = sub_1A45F8E30(v8, v9, v12, v13, v15 & 1, v16, v17 & 1);

      return v18;
    }
  }

  if (sub_1A52426F4())
  {
    v20 = 0xD000000000000034;
  }

  else
  {
    v21 = sub_1A5242724();
    if ((v22 & 1) == 0)
    {
      v25 = v21;
      sub_1A524C5F4();
      sub_1A524C5E4();
      sub_1A524C5D4();

      sub_1A524C5E4();
      v26[1] = v25;
      sub_1A524C5C4();
      sub_1A524C5E4();
      sub_1A524C614();
      v24 = sub_1A524C774();
      (*(v1 + 8))(v3, v0);
      return v24;
    }

    v20 = 0xD000000000000033;
  }

  sub_1A3C38BD4(v20);
  sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A52F8E10;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1A3D710E8();
  *(v23 + 32) = v8;
  *(v23 + 40) = v9;
  v24 = sub_1A524C6B4();

  return v24;
}