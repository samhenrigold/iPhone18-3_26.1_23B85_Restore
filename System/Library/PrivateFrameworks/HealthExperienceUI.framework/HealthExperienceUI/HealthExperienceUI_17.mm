void sub_1BA0D5A80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1BA0D5AD4()
{
  result = qword_1EBBEBAE0;
  if (!qword_1EBBEBAE0)
  {
    sub_1BA0D5A80(255, &qword_1EBBEBAD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBAE0);
  }

  return result;
}

unint64_t sub_1BA0D5B8C()
{
  result = qword_1EDC5F050;
  if (!qword_1EDC5F050)
  {
    sub_1BA0D5884(255, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
    sub_1BA0D5C4C();
    sub_1B9F87828(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F050);
  }

  return result;
}

unint64_t sub_1BA0D5C4C()
{
  result = qword_1EDC5F210;
  if (!qword_1EDC5F210)
  {
    sub_1BA0D5A80(255, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F210);
  }

  return result;
}

uint64_t sub_1BA0D5CF0(uint64_t a1)
{
  sub_1B9F864BC(0, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0D5D70()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1BA0D5DD8()
{
  result = qword_1EBBEBAF0;
  if (!qword_1EBBEBAF0)
  {
    sub_1BA0D594C(255);
    sub_1BA0D5A80(255, &qword_1EBBEBAD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1BA4A5A68();
    sub_1BA0D5AD4();
    sub_1B9F20854(&qword_1EBBEBAE8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1B9F20854(&qword_1EBBEBAF8, sub_1BA0D5B58, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBAF0);
  }

  return result;
}

void sub_1BA0D5F5C(uint64_t a1)
{
  if (!qword_1EBBEBB10)
  {
    sub_1BA0D5FE8(255);
    sub_1B9F864BC(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBB10);
    }
  }
}

void sub_1BA0D5FE8(uint64_t a1)
{
  if (!qword_1EBBEBB18)
  {
    sub_1BA0D5884(255, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
    sub_1BA0D5B8C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEBB18);
    }
  }
}

uint64_t sub_1BA0D608C(uint64_t a1)
{
  sub_1BA0D5884(0, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0D6144(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1BA0D61C4()
{
  result = qword_1EBBEBB28;
  if (!qword_1EBBEBB28)
  {
    sub_1BA0D5F5C(255);
    sub_1BA0D5884(255, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
    sub_1BA0D5B8C();
    swift_getOpaqueTypeConformance2();
    sub_1B9F5DB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB28);
  }

  return result;
}

uint64_t sub_1BA0D6294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA0D631C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1BA4A5418();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA0D6380(uint64_t a1)
{
  if (!qword_1EDC5EEA0)
  {
    sub_1BA0D6400(255);
    sub_1BA0D4B24(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EEA0);
    }
  }
}

void sub_1BA0D6400(uint64_t a1)
{
  if (!qword_1EDC5EF10)
  {
    sub_1BA0D6480(255);
    sub_1BA0D4B24(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EF10);
    }
  }
}

void sub_1BA0D6480(uint64_t a1)
{
  if (!qword_1EDC5F058)
  {
    sub_1BA0D5A80(255, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1B9F864BC(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F058);
    }
  }
}

unint64_t sub_1BA0D6574()
{
  result = qword_1EDC5EEA8;
  if (!qword_1EDC5EEA8)
  {
    sub_1BA0D6380(255);
    sub_1BA0D6614();
    sub_1B9F87828(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EEA8);
  }

  return result;
}

unint64_t sub_1BA0D6614()
{
  result = qword_1EDC5EF18;
  if (!qword_1EDC5EF18)
  {
    sub_1BA0D6400(255);
    sub_1BA0D66E4(&qword_1EDC5F060, sub_1BA0D6480, sub_1BA0D5C4C);
    sub_1B9F87828(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EF18);
  }

  return result;
}

uint64_t sub_1BA0D66E4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1B9F5DB4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA0D6768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA0D683C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA0D6910()
{
  result = qword_1EBBEBB40;
  if (!qword_1EBBEBB40)
  {
    sub_1BA0D4A9C(255);
    sub_1BA0D69C0();
    sub_1B9F20854(&qword_1EDC5EC30, sub_1B9F89374, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB40);
  }

  return result;
}

unint64_t sub_1BA0D69C0()
{
  result = qword_1EBBEBB48;
  if (!qword_1EBBEBB48)
  {
    sub_1BA0D5884(255, &qword_1EBBEBA00, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578]);
    sub_1BA0D6A80();
    sub_1B9F87828(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB48);
  }

  return result;
}

unint64_t sub_1BA0D6A80()
{
  result = qword_1EDC5F178;
  if (!qword_1EDC5F178)
  {
    sub_1BA0D5A80(255, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F178);
  }

  return result;
}

uint64_t sub_1BA0D6B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA0D6B84(uint64_t a1, uint64_t a2)
{
  sub_1BA0D6E7C(0, &qword_1EBBEB9E0, sub_1BA0D4A4C, MEMORY[0x1E697CBE8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA0D6C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F20854(a4, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1BA4A6268();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BA0D6CE8()
{
  result = qword_1EBBEBB68;
  if (!qword_1EBBEBB68)
  {
    sub_1BA0D49E0(255, &qword_1EBBEBB70, &qword_1EBBEBB00, sub_1BA0D5F34);
    sub_1BA0D6DB8(&qword_1EBBEBB78, &qword_1EBBEBB00, sub_1BA0D5F34, sub_1BA0D6108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB68);
  }

  return result;
}

uint64_t sub_1BA0D6DB8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA0D6E7C(255, a2, a3, MEMORY[0x1E697CBE8]);
    a4();
    sub_1B9F20854(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA0D6E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA0D6EF8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = qword_1EBC094D8;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA0D6F64@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBC094D8;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA0D6FBC(__int128 *a1)
{
  v3 = qword_1EBC094D8;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t PinnedPinnableFeedItemsDataSource.__allocating_init(pinnedContentManager:sourceProfiles:managedObjectContext:searchQuery:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BA0D881C(a1, a2, a3, a4);

  return v8;
}

uint64_t PinnedPinnableFeedItemsDataSource.init(pinnedContentManager:sourceProfiles:managedObjectContext:searchQuery:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = sub_1BA0D881C(a1, a2, a3, a4);

  return v4;
}

double sub_1BA0D712C@<D0>(uint64_t *a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1BA4A1318();
  v6 = v5;

  a1[3] = &type metadata for HeaderWithIconItem;
  a1[4] = sub_1B9FE8F38();
  v7 = swift_allocObject();
  *a1 = v7;
  *(v7 + 16) = 0xD000000000000024;
  *(v7 + 24) = 0x80000001BA4EA100;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  result = 0.0;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  return result;
}

double sub_1BA0D72AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EBC094D8));

  return result;
}

uint64_t PinnedPinnableFeedItemsDataSource.deinit()
{
  v0 = FavoritableFeedItemsDataSource.deinit();
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EBC094D8));

  return v0;
}

uint64_t PinnedPinnableFeedItemsDataSource.__deallocating_deinit()
{
  FavoritableFeedItemsDataSource.deinit();
  v0 = qword_1EBC094D8;

  __swift_destroy_boxed_opaque_existential_1((v1 + v0));

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall PinnedPinnableFeedItemsDataSource.getPinnedIdentifier(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v46 - v10;
  sub_1B9F3AB98(countAndFlagsBits, object, &v55);
  if (!*(&v56 + 1))
  {
    sub_1B9FCD638(&v55);
LABEL_14:
    v18 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  sub_1B9F1134C(&v55, v61);
  sub_1B9F0A534(v61, v54);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  if (!swift_dynamicCast())
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    sub_1BA0D8B74(&v48);
    sub_1BA4A3D68();
    sub_1B9F0A534(v61, &v55);
    sub_1B9F0A534(v61, &v48);
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v21 = 136315650;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, &v47);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      v54[0] = swift_getDynamicType();
      v54[1] = v57;
      sub_1BA051D44();
      v25 = sub_1BA4A6808();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1(&v55);
      v28 = sub_1B9F0B82C(v25, v27, &v47);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2080;
      sub_1B9F0A534(&v48, v54);
      v29 = sub_1BA4A6808();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v48);
      v32 = sub_1B9F0B82C(v29, v31, &v47);

      *(v21 + 24) = v32;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: Expected FavoritableFeedItem but got %s. Item: %s", v21, 0x20u);
      v33 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v48);
      __swift_destroy_boxed_opaque_existential_1(&v55);
    }

    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v61);
    goto LABEL_14;
  }

  v57 = v50;
  v58 = v51;
  v59 = v52;
  v60 = v53;
  v55 = v48;
  v56 = v49;
  v12 = [*(&v50 + 1) pinnedContentIdentifier];
  if (!v12)
  {
    sub_1BA4A3D68();
    sub_1B9F0A534(v61, &v48);
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v36 = 136315394;
      v37 = sub_1BA4A85D8();
      v39 = sub_1B9F0B82C(v37, v38, &v47);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      sub_1B9F0A534(&v48, v54);
      v40 = sub_1BA4A6808();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1(&v48);
      v43 = sub_1B9F0B82C(v40, v42, &v47);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%s]: Unable to get pinned content identifier from FavoritableFeedItem's underlying FeedItem. Item: %s", v36, 0x16u);
      v44 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v48);
    }

    (*(v4 + 8))(v11, v3);
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_1BA0D8BF4(&v55);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v16 = v15;

  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1BA0D8BF4(&v55);
  v17 = v16;
  v18 = v14;
LABEL_15:
  result.value._object = v17;
  result.value._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1BA0D795C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EBC094D8;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a1);
}

uint64_t sub_1BA0D79B8(__int128 *a1)
{
  v3 = *v1;
  v4 = qword_1EBC094D8;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t PinnableSearchQuery.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1BA0D7B3C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    [v4 setSearchResultsUpdater_];
    [v4 setHidesNavigationBarDuringPresentation_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA0D7BDC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = a1;
}

void (*sub_1BA0D7BF0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA0D7B3C();
  return sub_1BA0D7C38;
}

void sub_1BA0D7C38(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = v2;
}

char *EditFavoritesCollectionViewController.init(pinnedContentManager:sourceProfiles:healthExperienceStore:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = 0;
  type metadata accessor for PinnableSearchQuery();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_searchQuery;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_searchQuery) = v8;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v10 = sub_1BA4A1B68();
  sub_1B9F0A534(a1, v23);
  v11 = *(v4 + v9);
  type metadata accessor for PinnedPinnableFeedItemsDataSource(0);
  swift_allocObject();

  v12 = v10;

  v13 = sub_1BA0D881C(v23, a2, v12, v11);

  v14 = OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_pinnedItemsDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_pinnedItemsDataSource) = v13;
  sub_1B9F0A534(a1, v23);
  v15 = *(v4 + v9);
  type metadata accessor for FavoritableFeedItemsDataSource(0);
  swift_allocObject();
  v16 = v12;

  v17 = sub_1BA15B73C(a2, v16, v23, &unk_1F37FC6E8, v15, 1);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_otherItemsDataSource) = v17;
  sub_1B9F1DEA0(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5460;
  *(v18 + 32) = *(v4 + v14);
  *(v18 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v18 + 48) = v17;
  *(v18 + 56) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();

  v19 = CompoundSectionedDataSource.init(_:)(v18);
  v20 = CompoundDataSourceCollectionViewController.init(dataSource:)(v19);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  swift_beginAccess();
  v20[v21] = 0;
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v20;
}

id EditFavoritesCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EditFavoritesCollectionViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA0D7FEC()
{
  swift_getObjectType();
  v20.receiver = v0;
  v20.super_class = type metadata accessor for EditFavoritesCollectionViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_1BA4A1318();

  v3 = sub_1BA4A6758();

  [v0 setTitle_];

  v4 = [v0 collectionView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_1BA4A6758();
  [v5 setAccessibilityIdentifier_];

  v7 = [v0 collectionView];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 setKeyboardDismissMode_];

  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BA4A6AE8();
    v15 = HKUIJoinStringsForAutomationIdentifier();

    [v13 setAccessibilityIdentifier_];
    v16 = [v0 navigationItem];
    v17 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneButtonTapped];
    [v16 setRightBarButtonItem_];

    v18 = [v0 navigationItem];
    v19 = sub_1BA0D7B3C();
    [v18 setSearchController_];

    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1BA0D83F4(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_searchQuery);
  v4 = [a1 searchBar];
  v5 = [v4 text];

  if (v5)
  {
    v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v3 + 16) = v6;
  *(v3 + 24) = v8;

  v9 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_pinnedItemsDataSource);
  v10 = *(v9 + *(*v9 + 520));
  v11 = *(v9 + qword_1EDC64EB0);
  v12 = *(v9 + qword_1EDC64EB0 + 8);
  v13 = *(v9 + qword_1EDC64EB0 + 16);
  v14 = *(v9 + qword_1EDC84BB8);
  v15 = sub_1B9F17C00(v14, v10, v11, v12, v13);

  sub_1BA0E7F10(v15, 1);

  v16 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_otherItemsDataSource);
  v17 = *(v16 + qword_1EDC84BB8);
  LOBYTE(v15) = *(v16 + *(*v16 + 520));
  v18 = *(v16 + qword_1EDC64EB0);
  v19 = *(v16 + qword_1EDC64EB0 + 8);
  v20 = *(v16 + qword_1EDC64EB0 + 16);
  v21 = swift_unknownObjectRetain();
  v22 = sub_1B9F17C00(v21, v15, v18, v19, v20);

  sub_1BA0E7F10(v22, 1);

  return result;
}

id EditFavoritesCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

double sub_1BA0D86E0()
{

  return result;
}

id EditFavoritesCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditFavoritesCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s18HealthExperienceUI33PinnedPinnableFeedItemsDataSourceC17isReorderableItem10identifierSbSS_tF_0()
{
  v1 = *(v0 + qword_1EBC094E0);
  v2 = *(v1 + 24);
  result = 1;
  if (v2)
  {
    v3 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA0D881C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v27 = *v4;
  *(v4 + qword_1EBC094E0) = a4;
  sub_1B9F0A534(a1, v4 + qword_1EBC094D8);
  sub_1B9F0A534(a1, v29);
  *(v4 + qword_1EBC095A0) = a2;
  sub_1BA4A27B8();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);

  sub_1BA4A2388();
  v9 = sub_1BA4A2578();

  v10 = v9;
  v11 = sub_1BA4A26C8();

  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B7510;
  v13 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithKey:v14 ascending:1];

  *(v12 + 32) = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1BA4A6758();
  v18 = [v16 initWithKey:v17 ascending:1 selector:sel_localizedStandardCompare_];

  *(v12 + 40) = v18;
  sub_1BA0A361C();
  v19 = sub_1BA4A6AE8();

  [v11 setSortDescriptors_];

  v20 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v11 managedObjectContext:a3 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0(0);
  objc_allocWithZone(v21);
  v22 = v20;
  v23 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v22);
  sub_1B9F0A534(v29, v28);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  sub_1B9F1134C(v28, v24 + 24);
  *(v24 + 64) = v27;

  v25 = sub_1B9F17A68(v23, sub_1BA0D8EF8, v24, 0);

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v25;
}

uint64_t sub_1BA0D8B74(uint64_t a1)
{
  sub_1B9F23348(0, &qword_1EBBEBB88, &type metadata for FavoritableFeedItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PinnedPinnableFeedItemsDataSource(uint64_t a1)
{
  result = qword_1EBBEBBC0;
  if (!qword_1EBBEBBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PDFCharacteristicsProvider.Content.init(name:dateOfBirth:exportedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for PDFCharacteristicsProvider.Content(0);
  sub_1BA0D9010(a3, &a5[*(v8 + 20)]);
  v9 = *(v8 + 24);
  v10 = sub_1BA4A1728();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a4, v10);
}

uint64_t type metadata accessor for PDFCharacteristicsProvider.Content(uint64_t a1)
{
  result = qword_1EBBEBC40;
  if (!qword_1EBBEBC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA0D9010(uint64_t a1, uint64_t a2)
{
  sub_1BA0DA5D4(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PDFCharacteristicsProvider.Content.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PDFCharacteristicsProvider.Content.dateOfBirth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PDFCharacteristicsProvider.Content(0) + 20);

  return sub_1BA018958(v3, a1);
}

uint64_t PDFCharacteristicsProvider.Content.exportedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFCharacteristicsProvider.Content(0) + 24);
  v4 = sub_1BA4A1728();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFCharacteristicsProvider.__allocating_init(healthStore:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PDFCharacteristicsProvider.init(healthStore:dateGenerator:)(a1, a2, a3);
  return v6;
}

uint64_t *PDFCharacteristicsProvider.init(healthStore:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  swift_defaultActor_initialize();
  sub_1BA0DA5D4(0, &qword_1EBBEBC38, type metadata accessor for PDFCharacteristicsProvider.Content, MEMORY[0x1E69A3170]);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = v8;
  v4[14] = sub_1BA4A28C8();
  return v4;
}

uint64_t sub_1BA0D92D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BA0C2E3C;

  return sub_1BA0D945C(a1, a2, a3, a4);
}

uint64_t sub_1BA0D939C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA0D92D8(a1, v4, v5, v6);
}

uint64_t sub_1BA0D945C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = sub_1BA4A13E8();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v7 = sub_1BA4A1728();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA0D9580, 0, 0);
}

uint64_t sub_1BA0D9580()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1BA0D96C8;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_1BA0DA580;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BA0B06D4;
  v1[13] = &block_descriptor_22;
  v9 = _Block_copy(v4);

  [v6 hk:v9 fetchExistingDemographicInformationWithCompletion:?];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1BA0D96C8()
{
  *(*v0 + 224) = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BA0D97C4, 0, 0);
}

uint64_t sub_1BA0D97C4()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  (*(v0 + 152))();
  sub_1BA4A13D8();
  v5 = [v1 firstName];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A1388();
  v6 = [v1 lastName];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A13A8();
  v7 = objc_opt_self();
  v8 = sub_1BA4A13B8();
  v9 = [v7 localizedStringFromPersonNameComponents:v8 style:2 options:0];

  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;

  (*(v3 + 8))(v2, v4);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    v10 = 0;
    v12 = 0;
  }

  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 136);
  v19 = type metadata accessor for PDFCharacteristicsProvider.Content(0);
  sub_1BA0D9B9C(v14, v18 + *(v19 + 20));

  *v18 = v10;
  v18[1] = v12;
  (*(v17 + 32))(v18 + *(v19 + 24), v15, v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1BA0D99D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA0D99F8, v1, 0);
}

uint64_t sub_1BA0D99F8()
{
  v4 = (*MEMORY[0x1E69A3168] + MEMORY[0x1E69A3168]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1BA0D9AA8;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1BA0D9AA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA0D9B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0DA5D4(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - v9;
  v11 = sub_1BA4A1148();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = &v48 - v23;
  v25 = [a1 dateOfBirthComponents];
  sub_1BA4A1108();

  v26 = [a1 dateOfBirthComponents];
  sub_1BA4A1108();

  sub_1BA4A1128();
  v27 = *(v12 + 8);
  v27(v19, v11);
  v28 = sub_1BA4A1728();
  LODWORD(v19) = (*(*(v28 - 8) + 48))(v10, 1, v28);
  sub_1BA05DB44(v10);
  if (v19 == 1)
  {
    v50 = v27;
    sub_1BA4A3DD8();
    v29 = a1;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v49 = a2;
      v33 = v32;
      v48 = swift_slowAlloc();
      v55 = v48;
      *v33 = 136446722;
      v34 = sub_1BA4A85D8();
      v36 = sub_1B9F0B82C(v34, v35, &v55);
      LODWORD(v51) = v31;
      v37 = v36;

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1B9F0B82C(0xD000000000000019, 0x80000001BA4EA4D0, &v55);
      *(v33 + 22) = 2080;
      v38 = [v29 dateOfBirthComponents];
      sub_1BA4A1108();

      sub_1BA0DA638();
      v39 = sub_1BA4A82D8();
      v41 = v40;
      v42 = v50;
      v50(v15, v11);
      v43 = sub_1B9F0B82C(v39, v41, &v55);

      *(v33 + 24) = v43;
      _os_log_impl(&dword_1B9F07000, v30, v51, "[%{public}s.%{public}s]: Unable to create date from birth day components: %s", v33, 0x20u);
      v44 = v48;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      v45 = v33;
      a2 = v49;
      MEMORY[0x1BFAF43A0](v45, -1, -1);

      (*(v52 + 8))(v54, v53);
      v42(v24, v11);
    }

    else
    {

      (*(v52 + 8))(v54, v53);
      v50(v24, v11);
    }

    v46 = 1;
  }

  else
  {
    (*(v12 + 32))(a2, v24, v11);
    v46 = 0;
  }

  return (*(v12 + 56))(a2, v46, 1, v11);
}

uint64_t PDFCharacteristicsProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PDFCharacteristicsProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BA0DA11C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BA0DA13C, v3, 0);
}

uint64_t sub_1BA0DA13C()
{
  v4 = (*MEMORY[0x1E69A3168] + MEMORY[0x1E69A3168]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1BA0DA690;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t dispatch thunk of PDFCharacteristicsProviding.fetchContent()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0C36D8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PDFCharacteristicsProvider.fetchContent()(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0C36D8;

  return v6(a1);
}

void sub_1BA0DA4B4(uint64_t a1)
{
  sub_1B9F2F388();
  if (v1 <= 0x3F)
  {
    sub_1BA0DA5D4(319, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BA4A1728();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA0DA580(void *a1)
{
  v2 = *(v1 + 16);
  **(*(v2 + 64) + 40) = a1;
  v3 = a1;

  return MEMORY[0x1EEE6DEE0](v2);
}

void sub_1BA0DA5D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA0DA638()
{
  result = qword_1EBBEBC50;
  if (!qword_1EBBEBC50)
  {
    sub_1BA4A1148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBC50);
  }

  return result;
}

id sub_1BA0DA694()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = [objc_opt_self() whiteColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1BA0DA760()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1BA0DA918()
{
  v1 = sub_1BA0DA760();
  [v0 addSubview_];

  v2 = sub_1BA0DA694();
  [v0 addSubview_];

  v3 = objc_opt_self();
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4BBC90;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView;
  v6 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView] leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [*&v0[v5] trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v4 + 40) = v11;
  v12 = [*&v0[v5] topAnchor];
  v13 = [v0 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v4 + 48) = v14;
  v15 = [*&v0[v5] bottomAnchor];
  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v4 + 56) = v17;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner;
  v19 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner] centerXAnchor];
  v20 = [v0 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v4 + 64) = v21;
  v22 = [*&v0[v18] centerYAnchor];
  v23 = [v0 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v4 + 72) = v24;
  v25 = [*&v0[v18] widthAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v4 + 80) = v26;
  v27 = [*&v0[v18] heightAnchor];
  v28 = [v27 constraintEqualToConstant_];

  *(v4 + 88) = v28;
  sub_1B9F740B0();
  v29 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

id CameraScannerLoadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CameraScannerLoadingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerLoadingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ContextMenuConfigurationProviding<>.contextMenuConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v7, a1, a3);
  if (v7[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBE9910, &protocol descriptor for ContextMenuConfigurationProviding);
    if (swift_dynamicCast())
    {
      v3 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v4 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(&v8);
        return v5;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_1B9F43A50(&v8, &qword_1EBBE9908, &qword_1EBBE9910, &protocol descriptor for ContextMenuConfigurationProviding);
  return 0;
}

uint64_t sub_1BA0DAFB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v159 = a2;
  v153 = sub_1BA4A2BF8();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v5);
  v151 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v154 = &v148 - v9;
  v163 = sub_1BA4A31D8();
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v10);
  v166 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1BA4A3198();
  v160 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v12);
  v158 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0DCF4C(0);
  v167 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v168 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1BA4A31C8();
  v157 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v17);
  v155 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v150 = &v148 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v156 = &v148 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v149 = &v148 - v27;
  v28 = sub_1BA4A31F8();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0DCFBC(0);
  v34 = v33 - 8;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v148 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0DCC20(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v171 = &v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v148 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v148 - v47;
  v49 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_previousConfiguration;
  v174 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_previousConfiguration;
  swift_beginAccess();
  v173 = a1;
  sub_1BA0DD020(a1, v48, MEMORY[0x1E69A33E8]);
  v169 = *(v29 + 56);
  v170 = v29 + 56;
  v169(v48, 0, 1, v28);
  v50 = *(v34 + 56);
  v172 = v3;
  sub_1BA0DD020(&v3[v49], v37, sub_1BA0DCC20);
  sub_1BA0DD020(v48, &v37[v50], sub_1BA0DCC20);
  v51 = *(v29 + 48);
  if (v51(v37, 1, v28) == 1)
  {
    sub_1BA0DD26C(v48, sub_1BA0DCC20);
    if (v51(&v37[v50], 1, v28) == 1)
    {
      return sub_1BA0DD26C(v37, sub_1BA0DCC20);
    }

    goto LABEL_6;
  }

  sub_1BA0DD020(v37, v44, sub_1BA0DCC20);
  if (v51(&v37[v50], 1, v28) == 1)
  {
    sub_1BA0DD26C(v48, sub_1BA0DCC20);
    sub_1BA0DD26C(v44, MEMORY[0x1E69A33E8]);
LABEL_6:
    sub_1BA0DD26C(v37, sub_1BA0DCFBC);
    goto LABEL_7;
  }

  sub_1BA0DD324(&v37[v50], v32);
  v61 = MEMORY[0x1BFAEDC20](v44, v32);
  v62 = MEMORY[0x1E69A33E8];
  sub_1BA0DD26C(v32, MEMORY[0x1E69A33E8]);
  sub_1BA0DD26C(v48, sub_1BA0DCC20);
  sub_1BA0DD26C(v44, v62);
  result = sub_1BA0DD26C(v37, sub_1BA0DCC20);
  if ((v61 & 1) == 0)
  {
LABEL_7:
    v53 = v168;
    v54 = *(v167 + 48);
    v55 = v173;
    sub_1BA0DD020(v173, v168, MEMORY[0x1E69A33E8]);
    v56 = v172;
    sub_1BA0DD020(&v172[v174], v53 + v54, sub_1BA0DCC20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v164 = v28;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (v51((v53 + v54), 1, v28) == 1)
        {
          v58 = v157;
          v59 = v156;
          v60 = v165;
          (*(v157 + 32))(v156, v53, v165);
        }

        else
        {
          v74 = swift_getEnumCaseMultiPayload();
          v58 = v157;
          v75 = *(v157 + 32);
          v60 = v165;
          v59 = v156;
          if (v74 == 1)
          {
            v76 = v165;
            v77 = v150;
            v75(v150, v53, v165);
            v75(v155, v53 + v54, v76);
            v78 = v154;
            sub_1BA4A31B8();
            v79 = v151;
            sub_1BA4A31B8();
            sub_1BA0DD2CC();
            v80 = v153;
            v81 = sub_1BA4A6728();
            v82 = *(v152 + 8);
            v83 = v79;
            v84 = v77;
            v82(v83, v80);
            v82(v78, v80);
            if ((v81 & 1) == 0)
            {
              v85 = *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView];
              if (v85)
              {
                v86 = v85;
                v87 = v154;
                sub_1BA4A31B8();
                v88 = sub_1BA4A2BB8();
                v82(v87, v80);
                [v86 setImage_];
              }
            }

            v89 = *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint];
            if (v89)
            {
              v90 = v89;
              v91 = COERCE_DOUBLE(sub_1BA4A31A8());
              if (v92)
              {
                v91 = 0.0;
              }

              [v90 setConstant_];
            }

            v93 = *(v58 + 8);
            v94 = v165;
            v93(v155, v165);
            v93(v84, v94);
            goto LABEL_41;
          }

          v107 = v149;
          v75(v149, v53, v165);
          sub_1BA0DD26C(v53 + v54, MEMORY[0x1E69A33E8]);
          v108 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView;
          v109 = *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView];
          if (v109)
          {
            [v109 removeFromSuperview];
            v110 = *&v56[v108];
          }

          else
          {
            v110 = 0;
          }

          *&v56[v108] = 0;

          v111 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView;
          [*&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView] removeFromSuperview];
          v112 = *&v56[v111];
          *&v56[v111] = 0;

          v75(v59, v107, v60);
        }

        v113 = sub_1BA0DD088();
        [v56 addSubview_];
        v114 = [v113 image];
        if (v114)
        {
          v115 = v114;
          [v114 size];
          v117 = v116;
          v119 = v118;

          v120 = v119 / v117;
        }

        else
        {
          v120 = 1.0;
        }

        v121 = [v113 topAnchor];

        v122 = [v56 topAnchor];
        *&v123 = COERCE_DOUBLE(sub_1BA4A31A8());
        v124 = v59;
        v126 = v125;
        (*(v58 + 8))(v124, v60);
        v127 = *&v123;
        if (v126)
        {
          v127 = 0.0;
        }

        v128 = [v121 constraintEqualToAnchor:v122 constant:v127];

        v129 = objc_opt_self();
        sub_1B9F109F8();
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1BA4B5880;
        v131 = [v113 centerXAnchor];

        v132 = [v56 centerXAnchor];
        v133 = [v131 constraintEqualToAnchor_];

        *(v130 + 32) = v133;
        *(v130 + 40) = v128;
        v134 = v128;
        v135 = [v113 widthAnchor];

        v136 = [v135 constraintEqualToConstant_];
        *(v130 + 48) = v136;
        v137 = [v113 heightAnchor];

        v138 = [v113 widthAnchor];
        v139 = [v137 constraintEqualToAnchor:v138 multiplier:v120];

        *(v130 + 56) = v139;
        v140 = [v113 bottomAnchor];

        v141 = [v56 bottomAnchor];
        v142 = [v140 constraintEqualToAnchor_];

        *(v130 + 64) = v142;
        sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
        v143 = sub_1BA4A6AE8();

        [v129 activateConstraints_];

        v144 = *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView];
        *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView] = v113;

        v145 = *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint];
        *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint] = v134;

        v55 = v173;
LABEL_41:
        v146 = v171;
        sub_1BA0DD020(v55, v171, MEMORY[0x1E69A33E8]);
        v169(v146, 0, 1, v164);
        v147 = v174;
        swift_beginAccess();
        sub_1BA0DD208(v146, &v56[v147]);
        return swift_endAccess();
      }

      v68 = v160;
      v69 = v158;
      v70 = v162;
      (*(v160 + 32))(v158, v53, v162);
      v71 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView;
      v72 = *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView];
      if (v72)
      {
        [v72 removeFromSuperview];
        v73 = *&v56[v71];
      }

      else
      {
        v73 = 0;
      }

      *&v56[v71] = 0;

      sub_1BA0DBFF4();
      v101 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView;
      [*&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView] removeFromSuperview];
      v102 = *&v56[v101];
      *&v56[v101] = 0;

      v103 = sub_1BA0DCC78();
      v104 = *&v56[v101];
      *&v56[v101] = v103;
      v105 = v103;

      [v105 setTranslatesAutoresizingMaskIntoConstraints_];
      LODWORD(v106) = 1148846080;
      [v105 setContentHuggingPriority:1 forAxis:v106];
      [v56 addSubview_];
      [v105 hk:v56 alignConstraintsWithView:0.0 insets:{0.0, 0.0, 0.0}];

      (*(v68 + 8))(v69, v70);
    }

    else
    {
      v63 = v161;
      v64 = v163;
      (*(v161 + 32))(v166, v53, v163);
      v65 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView;
      v66 = *&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView];
      if (v66)
      {
        [v66 removeFromSuperview];
        v67 = *&v56[v65];
      }

      else
      {
        v67 = 0;
      }

      *&v56[v65] = 0;

      sub_1BA0DBFF4();
      v95 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView;
      [*&v56[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView] removeFromSuperview];
      v96 = *&v56[v95];
      *&v56[v95] = 0;

      v97 = v166;
      v98 = sub_1BA0DC074(v166, v159);
      v99 = *&v56[v65];
      *&v56[v65] = v98;
      v100 = v98;

      [v56 addSubview_];
      [v100 hk:v56 alignConstraintsWithView:0.0 insets:{0.0, 0.0, 0.0}];

      (*(v63 + 8))(v97, v64);
    }

    sub_1BA0DD26C(v53 + v54, sub_1BA0DCC20);
    goto LABEL_41;
  }

  return result;
}

void sub_1BA0DBFF4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageHeightConstraint);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageHeightConstraint) = 0;
}

id sub_1BA0DC074(uint64_t a1, void *a2)
{
  v78 = a2;
  v79 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3198();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A2C58();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A2B98();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A2BF8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A31D8();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v27, v79, v22, v25);
  v28 = (*(v23 + 88))(v27, v22);
  if (v28 == *MEMORY[0x1E69A33E0])
  {
    (*(v23 + 96))(v27, v22);
    sub_1BA0DCE24(0, v29);
    v68 = *&v27[v30[12]];
    v72 = *&v27[v30[16]];
    v31 = v30[20];
    (*(v18 + 32))(v21, v27, v17);
    (*(v13 + 32))(v16, &v27[v31], v12);
    v32 = sub_1BA4A2BB8();
    v73 = v12;
    v79 = v17;
    v33 = v16;
    v67 = v21;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v44 = v74;
      sub_1BA4A3DD8();
      v45 = sub_1BA4A3E88();
      v46 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v66 = v16;
        v48 = v47;
        v49 = swift_slowAlloc();
        v80 = v49;
        *v48 = 136446210;
        v50 = sub_1BA4A85D8();
        v52 = sub_1B9F0B82C(v50, v51, &v80);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1B9F07000, v45, v46, "[%{public}s] Failed to create image view", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1BFAF43A0](v49, -1, -1);
        v33 = v66;
        MEMORY[0x1BFAF43A0](v48, -1, -1);

        (*(v70 + 8))(v74, v71);
      }

      else
      {

        (*(v70 + 8))(v44, v71);
      }

      v53 = sub_1BA4A6758();
      v54 = [objc_opt_self() systemImageNamed_];

      if (!v54)
      {
        v54 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      }

      v34 = v54;
      v32 = 0;
    }

    v55 = v32;
    v56 = v78;
    v57 = v75;
    sub_1BA4A2C48();
    v58 = sub_1BA4A2B68();
    (*(v76 + 8))(v57, v77);
    v59 = objc_allocWithZone(MEMORY[0x1E69A44B0]);
    v60 = sub_1BA4A6758();

    v61 = sub_1BA4A6758();

    v62 = [v59 initWithIconImage:v34 titleText:v60 detailText:v61 tintColor:v58];

    (*(v13 + 8))(v33, v73);
    (*(v18 + 8))(v67, v79);
    v39 = v62;
    goto LABEL_14;
  }

  if (v28 == *MEMORY[0x1E69A33D8])
  {
    (*(v23 + 96))(v27, v22);
    v36 = v72;
    v35 = v73;
    (*(v72 + 32))(v5, v27, v73);
    v37 = sub_1BA0DCC78();
    v38 = [objc_allocWithZone(MEMORY[0x1E69A44B0]) initWithWatchView_];

    (*(v36 + 8))(v5, v35);
    v39 = v38;
LABEL_14:
    v43 = v39;
    goto LABEL_15;
  }

  v40 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v41 = [objc_allocWithZone(MEMORY[0x1E69A44B0]) initWithWatchView_];

  v42 = *(v23 + 8);
  v43 = v41;
  v42(v27, v22);
LABEL_15:
  [v43 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v63) = 1148846080;
  [v43 setContentHuggingPriority:1 forAxis:v63];

  return v43;
}

id sub_1BA0DC93C(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_previousConfiguration;
  v4 = sub_1BA4A31F8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageHeightConstraint] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PromotionTileHeroView(0);
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1BA0DCA54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotionTileHeroView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PromotionTileHeroView(uint64_t a1)
{
  result = qword_1EDC67738;
  if (!qword_1EDC67738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA0DCB80(uint64_t a1)
{
  sub_1BA0DCC20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA0DCC20(uint64_t a1)
{
  if (!qword_1EDC6AD10)
  {
    sub_1BA4A31F8();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6AD10);
    }
  }
}

id sub_1BA0DCC78()
{
  sub_1BA4A3178();
  if (v0)
  {
    v1 = sub_1BA4A6758();

    v2 = [objc_opt_self() bundleWithIdentifier_];

    if (v2)
    {
      sub_1BA4A3188();
      v3 = sub_1BA4A6758();

      v4 = [v2 classNamed_];

      if (v4)
      {
        swift_getObjCClassMetadata();
        sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
        if (swift_dynamicCastMetatype())
        {
          v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          if (v5)
          {
            v6 = v5;
            [v5 setContentMode_];
            LODWORD(v7) = 1148846080;
            [v6 setContentHuggingPriority:1 forAxis:v7];
            LODWORD(v8) = 1148846080;
            [v6 setContentCompressionResistancePriority:0 forAxis:v8];

            return v6;
          }
        }
      }
    }
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v10 initWithFrame_];
}

void sub_1BA0DCE24(uint64_t a1, uint64_t a2)
{
  if (!qword_1EBBEBC68)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1BA4A2BF8();
    sub_1BA4A2B98();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBEBC68);
    }
  }
}

void sub_1BA0DCF4C(uint64_t a1)
{
  if (!qword_1EDC6AD00)
  {
    sub_1BA4A31F8();
    sub_1BA0DCC20(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6AD00);
    }
  }
}

void sub_1BA0DCFBC(uint64_t a1)
{
  if (!qword_1EDC6AD08)
  {
    sub_1BA0DCC20(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6AD08);
    }
  }
}

uint64_t sub_1BA0DD020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1BA0DD088()
{
  v0 = sub_1BA4A2BF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v5 setContentMode_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1BA4A31B8();
  v6 = sub_1BA4A2BB8();
  (*(v1 + 8))(v4, v0);
  [v5 setImage_];

  LODWORD(v7) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v8];
  return v5;
}

uint64_t sub_1BA0DD208(uint64_t a1, uint64_t a2)
{
  sub_1BA0DCC20(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0DD26C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA0DD2CC()
{
  result = qword_1EDC6AD60;
  if (!qword_1EDC6AD60)
  {
    sub_1BA4A2BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AD60);
  }

  return result;
}

uint64_t sub_1BA0DD324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A31F8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CellEditModeHandling<>.didSetEditMode(isEditing:animated:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v10, a3, a5);
  if (v10[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC67CE0, &protocol descriptor for CellEditModeHandling);
    if (swift_dynamicCast())
    {
      v7 = *(&v12 + 1);
      if (*(&v12 + 1))
      {
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(a1 & 1, a2 & 1, v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(&v11);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v10, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  return sub_1B9F43A50(&v11, &qword_1EDC67CD8, &qword_1EDC67CE0, &protocol descriptor for CellEditModeHandling);
}

UIInterfaceOrientationMask __swiftcall UINavigationController.overrideMask()()
{
  v1 = [v0 visibleViewController];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = [v3 overrideMask];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

void sub_1BA0DD624()
{
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] != 1)
  {
    return;
  }

  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v3 directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v0 tableView];
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  [v12 directionalLayoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v15 != v5 || v17 != v7 || v19 != v9 || v21 != v11)
  {
    v25 = [v0 tableView];
    if (v25)
    {
      v26 = v25;
      [v25 setDirectionalLayoutMargins_];

      return;
    }

LABEL_22:
    __break(1u);
  }
}

id OnboardingTableViewController.__allocating_init(title:detailText:dataSource:icon:tableViewStyle:allowAnimations:useSystemMargins:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  ObjectType = swift_getObjectType();
  return sub_1BA0DF484(a1, a2, a3, a4, a5, a7, a8, a9, a10, v18, ObjectType, a6);
}

void sub_1BA0DD864(uint64_t a1)
{
  v2 = v1;
  v38.receiver = v1;
  v38.super_class = type metadata accessor for OnboardingTableViewController();
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:*&v1[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] style:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTableView_];

  v4 = [v2 tableView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = [v2 tableView];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v7 setDelegate_];

  v9 = [v2 tableView];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [v2 tableView];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  v13 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  v14 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource + 8];
  v15 = v2[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations];
  type metadata accessor for DiffableTableViewAdaptor();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v16 = sub_1BA374C90(v12, v13, v14, v15);

  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = v16;

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v16[6];
  v19 = v16[7];
  v16[6] = sub_1BA0DF5C4;
  v16[7] = v17;

  sub_1B9F0E310(v18, v19);

  v33 = v13;
  v34 = v14;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, &qword_1EBBEBCF8, &protocol descriptor for TableViewCellRegistering, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_1B9F43AAC(v31, &qword_1EBBEBD00, &qword_1EBBEBCF8, &protocol descriptor for TableViewCellRegistering);
LABEL_9:
    v24 = [v2 tableView];
    if (v24)
    {
      v25 = v24;
      sub_1B9F0ADF8(0, &qword_1EBBEBD08, 0x1E69DD050);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = sub_1BA4A6758();
      [v25 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v27];

      v28 = [v2 tableView];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1BA4A6758();
        [v29 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v30];

        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B9F1134C(v31, v35);
  v20 = v36;
  v21 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v22 = [v2 tableView];
  if (v22)
  {
    v23 = v22;
    (*(v21 + 8))(v22, v20, v21);

    __swift_destroy_boxed_opaque_existential_1(v35);
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
}

void sub_1BA0DDCA4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong view];

    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v3 setNeedsLayout];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 view];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v6 layoutIfNeeded];
}

void sub_1BA0DDDD0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor];
      if (v4)
      {
        if ((*(v4 + 41) & 1) == 0)
        {

          sub_1BA3741A8();
        }
      }
    }

    v5.receiver = v0;
    v5.super_class = type metadata accessor for OnboardingTableViewController();
    objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
    sub_1BA0DD624();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA0DDEE0(uint64_t a1)
{
  v2 = a1;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for OnboardingTableViewController();
  objc_msgSendSuper2(&v29, sel_viewWillAppear_, v2 & 1);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins) != 1)
  {
    return;
  }

  v3 = [v1 navigationController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v5 directionalLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v1 tableView];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v14 directionalLayoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (v17 != v7 || v19 != v9 || v21 != v11 || v23 != v13)
  {
    v27 = [v1 tableView];
    if (v27)
    {
      v28 = v27;
      [v27 setDirectionalLayoutMargins_];

      return;
    }

LABEL_20:
    __break(1u);
  }
}

id OnboardingTableViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1BA4A6758();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1BA4A6758();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id OnboardingTableViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_1BA4A6758();

  if (a4)
  {
    v10 = sub_1BA4A6758();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id OnboardingTableViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id OnboardingTableViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id OnboardingTableViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OnboardingTableViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA0DE6E4(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BA4A1998();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAEC380](0, a2, v11);
  v15 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource);
  v14 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource + 8);
  *&v39 = v15;
  *(&v39 + 1) = v14;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, &qword_1EBBEBD18, &protocol descriptor for TableViewSupplementaryContentConfigurationDataSource, 1);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1B9F43AAC(&v41, &qword_1EBBEBD20, &qword_1EBBEBD18, &protocol descriptor for TableViewSupplementaryContentConfigurationDataSource);
    goto LABEL_9;
  }

  v36 = v9;
  v37 = v8;
  v16 = a1;
  sub_1B9F1134C(&v41, v44);
  v18 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v35 = a3;
  v38 = a3;
  (*(v17 + 8))(&v39, &v38, v13, v18, v17);
  if (!v40)
  {
    sub_1B9F43AAC(&v39, &qword_1EBBEA750, &unk_1EDC5F8B0, MEMORY[0x1E69DC068]);
    __swift_destroy_boxed_opaque_existential_1(v44);
    a1 = v16;
LABEL_8:
    v8 = v37;
    LOBYTE(a3) = v35;
    v9 = v36;
LABEL_9:
    *&v39 = v15;
    *(&v39 + 1) = v14;
    sub_1B9F0D9AC(0, &qword_1EBBEBD28, &protocol descriptor for TableViewSupplementaryViewDataSource, 1);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(&v41, v44);
      v21 = v45;
      v22 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      LOBYTE(v41) = a3;
      v23 = [a1 layoutMarginsGuide];
      [v23 layoutFrame];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v47.origin.x = v25;
      v47.origin.y = v27;
      v47.size.width = v29;
      v47.size.height = v31;
      Width = CGRectGetWidth(v47);
      v20 = (*(v22 + 8))(&v41, v13, v21, v22, Width);
      (*(v9 + 8))(v13, v8);
      __swift_destroy_boxed_opaque_existential_1(v44);
      if (v20)
      {
        return v20;
      }
    }

    else
    {
      (*(v9 + 8))(v13, v8);
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      sub_1B9F43AAC(&v41, &unk_1EBBEBD30, &qword_1EBBEBD28, &protocol descriptor for TableViewSupplementaryViewDataSource);
    }

    return 0;
  }

  sub_1B9F1134C(&v39, &v41);
  v19 = sub_1BA4A6758();
  a1 = v16;
  v20 = [v16 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (!v20)
  {
    __swift_destroy_boxed_opaque_existential_1(&v41);
    __swift_destroy_boxed_opaque_existential_1(v44);
    goto LABEL_8;
  }

  sub_1B9F0A534(&v41, &v39);
  MEMORY[0x1BFAF18E0](&v39);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  (*(v36 + 8))(v13, v37);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v20;
}

double OnboardingTableViewController.tableView(_:heightForHeaderInSection:)(void *a1, uint64_t a2)
{
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAEC380](0, a2, v8);
  v15 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource);
  *v18 = v15;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v16, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v12 + 8))(v16, 0xD000000000000013, 0x80000001BA4E1530, v10, v11, v12);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v10, v5);
      v13 = v18[0];
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v13;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B9F43AAC(v16, &qword_1EBBEBD40, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource);
  }

  if ([a1 style])
  {
    v13 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v13 = 0.0;
  }

  (*(v6 + 8))(v10, v5);
  return v13;
}

double OnboardingTableViewController.tableView(_:heightForFooterInSection:)(void *a1, uint64_t a2)
{
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAEC380](0, a2, v8);
  v15 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource);
  *v18 = v15;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v16, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v12 + 8))(v16, 0xD000000000000013, 0x80000001BA4E1560, v10, v11, v12);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v10, v5);
      v13 = v18[0];
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v13;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B9F43AAC(v16, &qword_1EBBEBD40, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource);
  }

  if ([a1 style])
  {
    v13 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v13 = 0.0;
  }

  (*(v6 + 8))(v10, v5);
  return v13;
}

void OnboardingTableViewController.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A18F8();
  v5 = [a1 cellForRowAtIndexPath_];

  if (v5 && (sub_1B9F0ADF8(0, &unk_1EBBEBD60, 0x1E69DD028), sub_1B9F0D9AC(0, &qword_1EBBEBD58, &protocol descriptor for OnboardingTableViewControllerCellSelectionHandling, 1), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_1B9F43AAC(&v9, &qword_1EBBEBD50, &qword_1EBBEBD58, &protocol descriptor for OnboardingTableViewControllerCellSelectionHandling);
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, &qword_1EBBEBD58, &protocol descriptor for OnboardingTableViewControllerCellSelectionHandling, 1);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_1B9F43AAC(&v9, &qword_1EBBEBD50, &qword_1EBBEBD58, &protocol descriptor for OnboardingTableViewControllerCellSelectionHandling);
    goto LABEL_9;
  }

LABEL_7:
  sub_1B9F1134C(&v9, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v7 + 8))(a2, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_9:
  v8 = sub_1BA4A18F8();
  [a1 deselectRowAtIndexPath:v8 animated:1];
}

id sub_1BA0DF484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, char a9, _BYTE *a10, uint64_t a11, uint64_t a12)
{
  *&a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
  v14 = &a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  *v14 = a5;
  v14[1] = a12;
  *&a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = a7;
  a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = a9;
  a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = a8;
  v15 = sub_1BA4A6758();

  if (a4)
  {
    v16 = sub_1BA4A6758();
  }

  else
  {
    v16 = 0;
  }

  v20.receiver = a10;
  v20.super_class = type metadata accessor for OnboardingTableViewController();
  v17 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v15, v16, a6, 1);

  v18 = v17;
  [v18 setModalInPresentation_];

  return v18;
}

void *sub_1BA0DF61C(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BA0219CC(a1[2], 0);
  v4 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
  sub_1BA023688(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  v6 = v5;
  sub_1B9F52E48(v8);
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t SummarySharingSelectedDataTypesContext.__allocating_init(selectedItems:selectionFlow:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(a1, a2);
  return v4;
}

double sub_1BA0DF734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double sub_1BA0DF794()
{
  swift_beginAccess();

  return result;
}

double sub_1BA0DF7CC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

void *sub_1BA0DF814@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();

  result = sub_1BA0DF61C(v3);
  *a2 = result;
  return result;
}

void *sub_1BA0DF864()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1[2];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BA0219CC(v1[2], 0);
  v4 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
  sub_1BA023688(&v9, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
  v6 = v5;
  v7 = v9;

  sub_1B9F52E48(v7);
  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1BA0DF96C(uint64_t a1)
{
  v2 = v1;
  sub_1BA0E7408(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA024284(a1);
  swift_beginAccess();
  *(v2 + 24) = v13;

  v14 = *(a1 + 16);
  if (v14)
  {
    v37 = a1;
    v38 = v7;
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BA025290(v15, v12);
      v19 = *(v12 + 7);
      v20 = *(v12 + 8);

      sub_1BA0E6EC0(v12, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1BA27EE34(0, *(v17 + 2) + 1, 1, v17);
        }

        v22 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_1BA27EE34((v21 > 1), v22 + 1, 1, v17);
        }

        *(v17 + 2) = v22 + 1;
        v18 = &v17[16 * v22];
        *(v18 + 4) = v19;
        *(v18 + 5) = v20;
      }

      v15 += v16;
      --v14;
    }

    while (v14);

    v7 = v38;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1B9F12EB8(v17);

  swift_beginAccess();
  *(v2 + 32) = v23;

  v24 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  sub_1BA0E6D6C(v2 + v24, v7, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v25 = type metadata accessor for SummarySharingSelectionFlow(0);
  if ((*(*(v25 - 8) + 48))(v7, 1, v25) == 1)
  {
    sub_1BA0E6DEC(v7, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
LABEL_26:
    sub_1BA0E6E5C();
    sub_1BA0E7830(&qword_1EBBEBE30, sub_1BA0E6E5C, MEMORY[0x1E695BF80]);

    sub_1BA4A4EB8();

    return;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BA0E6EC0(v7, type metadata accessor for SummarySharingSelectionFlow);
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_26;
  }

  v27 = *(v2 + 32);
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 56);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v31 = 0;
  while (v30)
  {
    v32 = v31;
LABEL_23:
    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v34 = (*(v27 + 48) + ((v32 << 10) | (16 * v33)));
    v35 = *v34;
    v36 = v34[1];

    sub_1BA0E1C3C(v39, v35, v36);
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= ((v28 + 63) >> 6))
    {
      swift_endAccess();

      goto LABEL_26;
    }

    v30 = *(v27 + 56 + 8 * v32);
    ++v31;
    if (v30)
    {
      v31 = v32;
      goto LABEL_23;
    }
  }

  __break(1u);
}

void (*sub_1BA0DFE2C(uint64_t *a1))(void **a1, char a2)
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
  swift_beginAccess();
  v5 = *(v1 + 24);
  v6 = v5[2];
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_8:
    *(v4 + 24) = v7;
    return sub_1BA0DFF8C;
  }

  v7 = sub_1BA0219CC(v6, 0);
  v8 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
  sub_1BA023688(&v13, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  v10 = v9;
  v11 = v13;

  result = sub_1B9F52E48(v11);
  if (v10 == v6)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1BA0DFF8C(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    sub_1BA0DF96C(v4);
  }

  else
  {
    sub_1BA0DF96C(v3);
  }

  free(v2);
}

void sub_1BA0DFFF0(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v35 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v35 = *(v16 + 72);
    v21 = v20;
    v22 = v19;
    do
    {
      sub_1BA025290(v21, v18);
      sub_1BA025290(v18, v5);
      swift_beginAccess();
      sub_1BA0E1D8C(v9, v5);
      sub_1BA0E6EC0(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
      swift_endAccess();
      sub_1BA0E6EC0(v18, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v21 += v35;
      --v22;
    }

    while (v22);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = v35;
    do
    {
      sub_1BA025290(v20, v13);
      v27 = *(v13 + 7);
      v26 = *(v13 + 8);

      sub_1BA0E6EC0(v13, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v26)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1BA27EE34(0, *(v23 + 2) + 1, 1, v23);
        }

        v29 = *(v23 + 2);
        v28 = *(v23 + 3);
        if (v29 >= v28 >> 1)
        {
          v23 = sub_1BA27EE34((v28 > 1), v29 + 1, 1, v23);
        }

        *(v23 + 2) = v29 + 1;
        v25 = &v23[16 * v29];
        *(v25 + 4) = v27;
        *(v25 + 5) = v26;
      }

      v20 += v24;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v23 + 2);
  if (v30)
  {
    v31 = 0;
    v32 = (v23 + 40);
    while (v31 < *(v23 + 2))
    {
      ++v31;
      v34 = *(v32 - 1);
      v33 = *v32;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      sub_1BA0E1C3C(&v36, v34, v33);
      swift_endAccess();

      swift_beginAccess();
      sub_1BA0E1C3C(&v36, v34, v33);
      swift_endAccess();

      v32 += 2;
      if (v30 == v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1BA0E6E5C();
    sub_1BA0E7830(&qword_1EBBEBE30, sub_1BA0E6E5C, MEMORY[0x1E695BF80]);

    sub_1BA4A4EB8();
  }
}

void sub_1BA0E039C(uint64_t a1)
{
  v2 = v1;
  sub_1BA0E7408(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v43 - v9;
  v48 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v11 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v12);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v50 = &v43 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v47 = v10;
    v43 = v18;
    v21 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v49 = v2;
    swift_beginAccess();
    v51 = *(v11 + 72);
    v46 = (v11 + 48);
    v22 = v21;
    v23 = v20;
    v24 = v50;
    do
    {
      v25 = sub_1BA025290(v22, v24);
      v26 = *(v49 + 24);
      MEMORY[0x1EEE9AC00](v25, v27);
      *(&v43 - 2) = v24;

      v28 = v47;
      sub_1BA368E04(sub_1BA0E7354, v26, v47);

      if ((*v46)(v28, 1, v48) == 1)
      {
        sub_1BA0E6DEC(v28, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
      }

      else
      {
        v29 = v44;
        sub_1BA025350(v28, v44);
        swift_beginAccess();
        v30 = v45;
        sub_1BA0222A4(v29, v45);
        sub_1BA0E6DEC(v30, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
        swift_endAccess();
        sub_1BA0E6EC0(v29, type metadata accessor for SummarySharingSelectableDataTypeItem);
      }

      v24 = v50;
      sub_1BA0E6EC0(v50, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v22 += v51;
      --v23;
    }

    while (v23);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = v43;
    do
    {
      sub_1BA025290(v21, v32);
      v35 = *(v32 + 56);
      v34 = *(v32 + 64);

      sub_1BA0E6EC0(v32, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1BA27EE34(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_1BA27EE34((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v33 = &v31[16 * v37];
        *(v33 + 4) = v35;
        *(v33 + 5) = v34;
      }

      v21 += v51;
      --v20;
    }

    while (v20);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v38 = *(v31 + 2);
  if (v38)
  {
    v39 = 0;
    v40 = (v31 + 40);
    while (v39 < *(v31 + 2))
    {
      ++v39;
      v42 = *(v40 - 1);
      v41 = *v40;
      swift_beginAccess();

      sub_1BA021E7C(v42, v41);
      swift_endAccess();

      v40 += 2;
      if (v38 == v39)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    sub_1BA0E6E5C();
    sub_1BA0E7830(&qword_1EBBEBE30, sub_1BA0E6E5C, MEMORY[0x1E695BF80]);

    sub_1BA4A4EB8();
  }
}

uint64_t sub_1BA0E08C8(uint64_t a1, uint64_t a2)
{
  sub_1BA0E7408(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA0E6D6C(a1 + *(v12 + 40), v11, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v13 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v11, 1, v13) == 1)
  {
    sub_1BA0E6DEC(v11, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = *&v11[*(v13 + 44)];

    sub_1BA0E6EC0(v11, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  sub_1BA0E6D6C(a2 + *(v12 + 40), v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v14(v7, 1, v13) == 1)
  {
    sub_1BA0E6DEC(v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = *&v7[*(v13 + 44)];

    sub_1BA0E6EC0(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  sub_1BA2ECCE8(v16, v15);
  v18 = v17;

  return v18 & 1;
}

uint64_t sub_1BA0E0B48(__n128 a1)
{
  sub_1BA0E6E5C();
  sub_1BA0E7830(&qword_1EBBEB1A8, sub_1BA0E6E5C, MEMORY[0x1E695BF88]);
  return sub_1BA4A4F98();
}

uint64_t sub_1BA0E0BC4(uint64_t a1, uint64_t *a2)
{
  sub_1BA0E7408(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_1BA0E6D6C(a1, &v11 - v6, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  sub_1BA0E6F20(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1BA0E0CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  return sub_1BA0E6D6C(v1 + v3, a1, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
}

uint64_t sub_1BA0E0D34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  sub_1BA0E6F20(a1, v1 + v3);
  return swift_endAccess();
}

void *SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = MEMORY[0x1E69E7CC8];
  v2[5] = MEMORY[0x1E69E7CD0];
  sub_1BA0E6E5C();
  swift_allocObject();
  v2[6] = sub_1BA4A4D88();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  v12 = type metadata accessor for SummarySharingSelectionFlow(0);
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);

  v14 = sub_1BA024284(v13);

  v3[3] = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v26[0] = v11;
    v26[1] = a1;
    v27 = a2;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BA025290(v16, v10);
      v21 = *(v10 + 7);
      v20 = *(v10 + 8);

      sub_1BA0E6EC0(v10, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1BA27EE34(0, *(v18 + 2) + 1, 1, v18);
        }

        v23 = *(v18 + 2);
        v22 = *(v18 + 3);
        if (v23 >= v22 >> 1)
        {
          v18 = sub_1BA27EE34((v22 > 1), v23 + 1, 1, v18);
        }

        *(v18 + 2) = v23 + 1;
        v19 = &v18[16 * v23];
        *(v19 + 4) = v21;
        *(v19 + 5) = v20;
      }

      v16 += v17;
      --v15;
    }

    while (v15);

    a2 = v27;
    v11 = v26[0];
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1B9F12EB8(v18);

  v3[4] = v24;
  swift_beginAccess();
  sub_1BA0E6F20(a2, v3 + v11);
  swift_endAccess();
  return v3;
}

uint64_t sub_1BA0E1094(uint64_t a1)
{
  if (*(a1 + 49))
  {

    return sub_1BA0E11F0(a1);
  }

  else
  {
    sub_1BA0E7408(0, &qword_1EBBEA670, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6F90]);
    v3 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B5480;
    sub_1BA025290(a1, v5 + v4);
    sub_1BA0E17CC(v5);
    swift_setDeallocating();
    swift_arrayDestroy();

    return swift_deallocClassInstance();
  }
}

uint64_t sub_1BA0E11F0(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  sub_1BA025290(a1, v6);
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v3;
    v17 = v16;
    v32 = v16;
    *v15 = 136315394;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, &v32);
    v31 = a1;
    v21 = v20;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = *(v6 + 2);
    v23 = *(v6 + 3);

    sub_1BA0E6EC0(v6, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v24 = sub_1B9F0B82C(v22, v23, &v32);

    *(v15 + 14) = v24;
    a1 = v31;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Adding data type with identifier '%s' to the selected data types array", v15, 0x16u);
    swift_arrayDestroy();
    v25 = v17;
    v3 = v30;
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    MEMORY[0x1BFAF43A0](v15, -1, -1);

    (*(v8 + 8))(v11, v29);
  }

  else
  {

    sub_1BA0E6EC0(v6, type metadata accessor for SummarySharingSelectableDataTypeItem);
    (*(v8 + 8))(v11, v7);
  }

  sub_1BA0E7408(0, &qword_1EBBEA670, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6F90]);
  v26 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5480;
  sub_1BA025290(a1, v27 + v26);
  sub_1BA0DFFF0(v27);
  swift_setDeallocating();
  sub_1BA0E6EC0(v27 + v26, type metadata accessor for SummarySharingSelectableDataTypeItem);
  return swift_deallocClassInstance();
}

void sub_1BA0E159C(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  swift_bridgeObjectRetain_n();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    v12 = sub_1BA4A85D8();
    v14 = sub_1B9F0B82C(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    v15 = *(a1 + 16);

    *(v10 + 14) = v15;

    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] Adding array of %ld data types to selected items", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    MEMORY[0x1BFAF43A0](v10, -1, -1);

    (*(v3 + 8))(v6, v16);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v3 + 8))(v6, v2);
  }

  sub_1BA0DFFF0(a1);
}

double sub_1BA0E17CC(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  swift_bridgeObjectRetain_n();
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v3;
    v16 = v15;
    v33 = v15;
    *v14 = 136315394;
    v17 = sub_1BA4A85D8();
    v19 = sub_1B9F0B82C(v17, v18, &v33);
    v31 = v7;
    v20 = v19;

    *(v14 + 4) = v20;
    *(v14 + 12) = 2048;
    v21 = *(a1 + 16);

    *(v14 + 14) = v21;

    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Removing array of %ld data types from selected items", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v22 = v16;
    v3 = v32;
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    (*(v8 + 8))(v11, v31);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v8 + 8))(v11, v7);
  }

  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1BA066E50(0, v23, 0);
    v24 = v33;
    v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v26 = a1 + v25;
    v27 = *(v3 + 72);
    do
    {
      sub_1BA025290(v26, v6);
      v6[49] = 1;
      v33 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1BA066E50((v28 > 1), v29 + 1, 1);
        v24 = v33;
      }

      *(v24 + 16) = v29 + 1;
      sub_1BA025350(v6, v24 + v25 + v29 * v27);
      v26 += v27;
      --v23;
    }

    while (v23);
  }

  sub_1BA0E039C(v24);

  return result;
}

void *SummarySharingSelectedDataTypesContext.deinit()
{

  sub_1BA0E6DEC(v0 + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  return v0;
}

uint64_t SummarySharingSelectedDataTypesContext.__deallocating_deinit()
{

  sub_1BA0E6DEC(v0 + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA0E1C3C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v8 = sub_1BA4A84D8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1BA4A8338() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1BA0E3600(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BA0E1D8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BA4A8488();
  if (*(a2 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v11 = sub_1BA4A84D8();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v6 + 72);
    while (1)
    {
      sub_1BA025290(*(v10 + 48) + v15 * v13, v9);
      v16 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1BA0E6EC0(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_1BA0E6EC0(a2, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA025290(*(v10 + 48) + v15 * v13, v20);
    return 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BA025290(a2, v9);
    v21 = *v3;
    sub_1BA0E3780(v9, v13, isUniquelyReferenced_nonNull_native);
    v18 = v20;
    *v3 = v21;
    sub_1BA025350(a2, v18);
    return 1;
  }
}

uint64_t sub_1BA0E1FA4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BA4A8488();
  v6 = a2 >> 6;
  if (v6 > 1)
  {
    if (v6 == 3)
    {
      v7 = 0x80504u >> (8 * (a2 + 64));
    }

    else
    {
      LOBYTE(v7) = a2 ^ 0x80;
    }
  }

  else if (a2 >> 6)
  {
    LOBYTE(v7) = a2 & 0x3F;
    MEMORY[0x1BFAF2ED0](7);
  }

  else
  {
    MEMORY[0x1BFAF2ED0](6);
    LOBYTE(v7) = a2;
  }

  MEMORY[0x1BFAF2ED0](v7);
  v8 = sub_1BA4A84D8();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v5 + 48);
      v13 = *(v12 + v10);
      v14 = v13 >> 6;
      if (v13 >> 6 > 1)
      {
        if (v14 == 3)
        {
          if (v13 == 192)
          {
            if (a2 == 192)
            {
              result = 0;
              LOBYTE(a2) = -64;
              goto LABEL_39;
            }
          }

          else if (v13 == 193)
          {
            if (a2 == 193)
            {
              result = 0;
              LOBYTE(a2) = -63;
              goto LABEL_39;
            }
          }

          else if (a2 == 194)
          {
            result = 0;
            LOBYTE(a2) = -62;
            goto LABEL_39;
          }
        }

        else if (*(v12 + v10) > 0x81u)
        {
          if (v13 == 130)
          {
            if (a2 == 130)
            {
              result = 0;
              LOBYTE(a2) = -126;
              goto LABEL_39;
            }
          }

          else if (a2 == 131)
          {
            result = 0;
            LOBYTE(a2) = -125;
            goto LABEL_39;
          }
        }

        else if (v13 == 128)
        {
          if (a2 == 128)
          {
            result = 0;
            LOBYTE(a2) = 0x80;
            goto LABEL_39;
          }
        }

        else if (a2 == 129)
        {
          result = 0;
          LOBYTE(a2) = -127;
          goto LABEL_39;
        }
      }

      else if (v14)
      {
        if (v6 == 1 && ((v13 ^ a2) & 0x3F) == 0)
        {
          result = 0;
          LOBYTE(a2) = *(v12 + v10);
          goto LABEL_39;
        }
      }

      else if (a2 <= 0x3Fu && v13 == a2)
      {
        result = 0;
        goto LABEL_39;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  sub_1BA0E39C4(a2, v10, isUniquelyReferenced_nonNull_native);
  *v2 = v17;
  result = 1;
LABEL_39:
  *a1 = a2;
  return result;
}

uint64_t sub_1BA0E2238(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A3A28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1BA0E7830(&qword_1EBBEA610, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
  v34 = a2;
  v12 = sub_1BA4A6698();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BA0E7830(&qword_1EBBEA620, MEMORY[0x1E69A3910], MEMORY[0x1E69A3920]);
      v22 = sub_1BA4A6728();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1BA0E3C4C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1BA0E2518(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BA4A7CD8();

    if (v9)
    {

      sub_1BA0E7594();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1BA4A7CC8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BA0E3410(v7, result + 1, sub_1BA0E75E0, sub_1BA0E7594, sub_1BA305B7C);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1BA305B7C(v20 + 1);
    }

    v18 = v8;
    sub_1BA30AC88();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BA0E7594();
  v11 = sub_1BA4A7788();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1BA0E41E4(v18, v13, isUniquelyReferenced_nonNull_native, sub_1BA305B7C, sub_1BA0E7594, sub_1BA0E75E0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BA4A7798();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1BA0E27A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1E88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1BA0E7830(&qword_1EBBEA650, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C88]);
  v34 = a2;
  v12 = sub_1BA4A6698();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BA0E7830(&unk_1EBBEA658, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C90]);
      v22 = sub_1BA4A6728();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1BA0E3F18(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1BA0E2A88(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BA4A7CD8();

    if (v9)
    {

      sub_1BA4A27B8();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_1BA4A7CC8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BA0E3410(v7, result + 1, sub_1B9FF7538, MEMORY[0x1E69A3DD0], sub_1BA3060FC);
    v21 = *(v19 + 16);
    if (*(v19 + 24) <= v21)
    {
      sub_1BA3060FC(v21 + 1, v20);
    }

    v18 = v8;
    sub_1BA30AC88();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BA4A27B8();
  v11 = sub_1BA4A7788();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v18 = a2;
    sub_1BA0E41E4(v18, v13, isUniquelyReferenced_nonNull_native, sub_1BA3060FC, MEMORY[0x1E69A3DD0], sub_1B9FF7538);
    *v3 = v25;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BA4A7798();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_1BA0E2D18(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A15D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1BA0E7830(&qword_1EDC6E278, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v34 = a2;
  v12 = sub_1BA4A6698();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BA0E7830(&qword_1EBBEBE70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v22 = sub_1BA4A6728();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1BA0E435C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1BA0E2FF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A3B48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1BA0E7830(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E20]);
  v34 = a2;
  v12 = sub_1BA4A6698();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BA0E7830(&unk_1EDC6B7A0, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E28]);
      v22 = sub_1BA4A6728();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1BA0E4628(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1BA0E32D8(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a2);
  v6 = sub_1BA4A84D8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1BA0E48F4(a2, v8, isUniquelyReferenced_nonNull_native, v11);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BA0E3410(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void), void (*a5)(unint64_t))
{
  if (a2)
  {
    a3(0);
    v7 = sub_1BA4A7D88();
    v20 = v7;
    sub_1BA4A7C88();
    if (sub_1BA4A7CF8())
    {
      a4(0);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          a5(v14 + 1);
        }

        v7 = v20;
        result = sub_1BA4A7788();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_1BA4A7CF8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

void sub_1BA0E3600(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BA3050BC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1BA0E4A50();
      goto LABEL_16;
    }

    sub_1BA0E56DC(v8 + 1);
  }

  v10 = *v4;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v11 = sub_1BA4A84D8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1BA4A8338() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1BA4A83A8();
  __break(1u);
}

uint64_t sub_1BA0E3780(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    v27 = v11;
    sub_1BA305310(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1BA0E4BA0();
      goto LABEL_15;
    }

    v27 = v11;
    sub_1BA0E5908(v14 + 1);
  }

  v16 = *v4;
  sub_1BA4A8488();
  if (*(a1 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v17 = sub_1BA4A84D8();
  v18 = -1 << *(v16 + 32);
  a2 = v17 & ~v18;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v9 + 72);
    do
    {
      sub_1BA025290(*(v16 + 48) + v20 * a2, v13);
      v21 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1BA0E6EC0(v13, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v21)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1BA025350(a1, *(v22 + 48) + *(v9 + 72) * a2);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

void sub_1BA0E39C4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_1BA30569C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1BA0E4D74();
      a2 = v7;
      goto LABEL_45;
    }

    sub_1BA0E5BF0(v5 + 1);
  }

  v8 = *v3;
  sub_1BA4A8488();
  v9 = v4 >> 6;
  if (v9 > 1)
  {
    if (v9 == 3)
    {
      v10 = 0x80504u >> (8 * (v4 + 64));
    }

    else
    {
      LOBYTE(v10) = v4 ^ 0x80;
    }
  }

  else if (v4 >> 6)
  {
    LOBYTE(v10) = v4 & 0x3F;
    MEMORY[0x1BFAF2ED0](7);
  }

  else
  {
    MEMORY[0x1BFAF2ED0](6);
    LOBYTE(v10) = v4;
  }

  MEMORY[0x1BFAF2ED0](v10);
  v11 = sub_1BA4A84D8();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v8 + 48) + a2);
      v15 = v14 >> 6;
      if (v14 >> 6 > 1)
      {
        if (v15 == 3)
        {
          if (v14 == 192)
          {
            if (v4 == 192)
            {
              goto LABEL_44;
            }
          }

          else if (v14 == 193)
          {
            if (v4 == 193)
            {
              goto LABEL_44;
            }
          }

          else if (v4 == 194)
          {
            goto LABEL_44;
          }
        }

        else if (*(*(v8 + 48) + a2) > 0x81u)
        {
          if (v14 == 130)
          {
            if (v4 == 130)
            {
              goto LABEL_44;
            }
          }

          else if (v4 == 131)
          {
            goto LABEL_44;
          }
        }

        else if (v14 == 128)
        {
          if (v4 == 128)
          {
            goto LABEL_44;
          }
        }

        else if (v4 == 129)
        {
          goto LABEL_44;
        }
      }

      else if (v15)
      {
        if (v9 == 1 && ((v14 ^ v4) & 0x3F) == 0)
        {
LABEL_44:
          sub_1BA4A83A8();
          __break(1u);
          break;
        }
      }

      else if (v4 <= 0x3Fu && v14 == v4)
      {
        goto LABEL_44;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v4;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
  }
}

uint64_t sub_1BA0E3C4C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1BA4A3A28();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA305818(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BA0E4ED4(MEMORY[0x1E69A3910], sub_1BA0E746C);
      goto LABEL_12;
    }

    sub_1BA0E5D0C(v12 + 1);
  }

  v14 = *v3;
  sub_1BA0E7830(&qword_1EBBEA610, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
  v15 = sub_1BA4A6698();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1BA0E7830(&qword_1EBBEA620, MEMORY[0x1E69A3910], MEMORY[0x1E69A3920]);
      v23 = sub_1BA4A6728();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0E3F18(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1BA4A1E88();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA305D98(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BA0E4ED4(MEMORY[0x1E69A3C80], sub_1BA0E779C);
      goto LABEL_12;
    }

    sub_1BA0E601C(v12 + 1);
  }

  v14 = *v3;
  sub_1BA0E7830(&qword_1EBBEA650, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C88]);
  v15 = sub_1BA4A6698();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1BA0E7830(&unk_1EBBEA658, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C90]);
      v23 = sub_1BA4A6728();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

void sub_1BA0E41E4(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t), void (*a5)(void), void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a5;
    a4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1BA0E514C(a6);
      goto LABEL_12;
    }

    v11 = a5;
    sub_1BA0E632C(v9 + 1, a6);
  }

  v12 = *v6;
  v13 = sub_1BA4A7788();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_1BA4A7798();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BA4A83A8();
  __break(1u);
}

uint64_t sub_1BA0E435C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1BA4A15D8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA30635C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BA0E4ED4(MEMORY[0x1E6968FB0], sub_1BA0E7708);
      goto LABEL_12;
    }

    sub_1BA0E6538(v12 + 1);
  }

  v14 = *v3;
  sub_1BA0E7830(&qword_1EDC6E278, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v15 = sub_1BA4A6698();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1BA0E7830(&qword_1EBBEBE70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v23 = sub_1BA4A6728();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0E4628(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1BA4A3B48();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA3066C0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BA0E4ED4(MEMORY[0x1E69A3E18], sub_1BA0E7674);
      goto LABEL_12;
    }

    sub_1BA0E6848(v12 + 1);
  }

  v14 = *v3;
  sub_1BA0E7830(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E20]);
  v15 = sub_1BA4A6698();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1BA0E7830(&unk_1EDC6B7A0, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E28]);
      v23 = sub_1BA4A6728();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

void sub_1BA0E48F4(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA306A24(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      sub_1BA0E5298();
      a2 = v8;
      goto LABEL_12;
    }

    sub_1BA0E6B58(v6 + 1);
  }

  v9 = *v4;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1);
  v10 = sub_1BA4A84D8();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for _HKDataTypeCode(0);
    a2 = v13;
    while (*(*(v9 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
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
  sub_1BA4A83A8();
  __break(1u);
}

void sub_1BA0E4A50()
{
  v1 = v0;
  sub_1BA0E790C();
  v2 = *v0;
  v3 = sub_1BA4A7D68();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void sub_1BA0E4BA0()
{
  v1 = v0;
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0E7374(0);
  v7 = *v0;
  v8 = sub_1BA4A7D68();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 56 + 8 * v11)
    {
      memmove(v10, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1BA025290(*(v7 + 48) + v22, v6);
        sub_1BA025350(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }
}

void sub_1BA0E4D74()
{
  v1 = v0;
  sub_1BA0E72F8(0);
  v2 = *v0;
  v3 = sub_1BA4A7D68();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1BA0E4ED4(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v26 - v9;
  (a2)(0, v8);
  v11 = *v2;
  v12 = sub_1BA4A7D68();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v4;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v6 + 32;
    v29 = v6 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v6 + 72) * (v22 | (v17 << 6));
      (*(v6 + 16))(v10, *(v11 + 48) + v25, v5);
      (*(v6 + 32))(*(v13 + 48) + v25, v10, v5);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v13;
  }
}

void sub_1BA0E514C(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1BA4A7D68();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 56 + 8 * v7)
    {
      memmove(v6, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        v20 = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

void sub_1BA0E5298()
{
  v1 = v0;
  sub_1BA0E7500(0);
  v2 = *v0;
  v3 = sub_1BA4A7D68();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1BA0E53CC(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1BA4A1C68();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1BA0E7878(0);
  v8 = sub_1BA4A7D78();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_1BA0E7830(&qword_1EDC6E240, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C10]);
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }
}

void sub_1BA0E56DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BA0E790C();
  v4 = sub_1BA4A7D78();
  v5 = v4;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v20 = sub_1BA4A84D8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

void sub_1BA0E5908(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_1BA0E7374(0);
  v9 = sub_1BA4A7D78();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32 = v1;
    v33 = v8;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
LABEL_15:
      v22 = *(v8 + 48);
      v34 = *(v4 + 72);
      sub_1BA025290(v22 + v34 * (v19 | (v11 << 6)), v7);
      sub_1BA4A8488();
      if (*(v7 + 8))
      {
        sub_1BA4A84A8();
        v8 = v33;
        sub_1BA4A68C8();
      }

      else
      {
        sub_1BA4A84A8();
      }

      v23 = sub_1BA4A84D8();
      v24 = -1 << *(v10 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1BA025350(v7, *(v10 + 48) + v18 * v34);
      ++*(v10 + 16);
      v15 = v35;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v32;
        goto LABEL_29;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v35 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v10;
  }
}

void sub_1BA0E5BF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BA0E72F8(0);
  v4 = sub_1BA4A7D78();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      sub_1BA306CAC(*(*(v3 + 48) + (v10 | (v5 << 6))), v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

void sub_1BA0E5D0C(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1BA4A3A28();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1BA0E746C(0);
  v8 = sub_1BA4A7D78();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_1BA0E7830(&qword_1EBBEA610, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }
}

void sub_1BA0E601C(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1BA4A1E88();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1BA0E779C(0);
  v8 = sub_1BA4A7D78();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_1BA0E7830(&qword_1EBBEA650, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C88]);
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }
}

void sub_1BA0E632C(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  v5 = sub_1BA4A7D78();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = sub_1BA4A7788();
      v19 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }
}

void sub_1BA0E6538(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1BA4A15D8();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1BA0E7708(0);
  v8 = sub_1BA4A7D78();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_1BA0E7830(&qword_1EDC6E278, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }
}

void sub_1BA0E6848(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1BA4A3B48();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1BA0E7674(0);
  v8 = sub_1BA4A7D78();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_1BA0E7830(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E20]);
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }
}

void sub_1BA0E6B58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BA0E7500(0);
  v4 = sub_1BA4A7D78();
  v5 = v4;
  if (*(v3 + 16))
  {
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
      sub_1BA4A8488();
      MEMORY[0x1BFAF2ED0](v16);
      v17 = sub_1BA4A84D8();
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

        v2 = v1;
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

uint64_t sub_1BA0E6D6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA0E7408(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA0E6DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA0E7408(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA0E6E5C()
{
  if (!qword_1EBBEB1A0)
  {
    v0 = sub_1BA4A4D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB1A0);
    }
  }
}

uint64_t sub_1BA0E6EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA0E6F20(uint64_t a1, uint64_t a2)
{
  sub_1BA0E7408(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SummarySharingSelectedDataTypesContext(uint64_t a1)
{
  result = qword_1EBBEBE38;
  if (!qword_1EBBEBE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA0E7008(uint64_t a1)
{
  sub_1BA0E7408(319, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA0E72F8(uint64_t a1)
{
  if (!qword_1EBBEBE48)
  {
    sub_1BA0251E0();
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBE48);
    }
  }
}

void sub_1BA0E7374(uint64_t a1)
{
  if (!qword_1EBBEBE50)
  {
    type metadata accessor for SummarySharingSelectableDataTypeItem(255);
    sub_1BA0E7830(&qword_1EBBEA668, type metadata accessor for SummarySharingSelectableDataTypeItem, &protocol conformance descriptor for SummarySharingSelectableDataTypeItem);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBE50);
    }
  }
}

void sub_1BA0E7408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA0E746C(uint64_t a1)
{
  if (!qword_1EBBEBE58)
  {
    sub_1BA4A3A28();
    sub_1BA0E7830(&qword_1EBBEA610, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBE58);
    }
  }
}

void sub_1BA0E7500(uint64_t a1)
{
  if (!qword_1EBBEBE60)
  {
    type metadata accessor for _HKDataTypeCode(255);
    sub_1BA0E7830(&qword_1EBBEBE68, type metadata accessor for _HKDataTypeCode, &unk_1BA4B4F70);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBE60);
    }
  }
}

unint64_t sub_1BA0E7594()
{
  result = qword_1EDC6E920;
  if (!qword_1EDC6E920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E920);
  }

  return result;
}

void sub_1BA0E75E0(uint64_t a1)
{
  if (!qword_1EDC5E050)
  {
    sub_1BA0E7594();
    sub_1BA0E7830(&qword_1EDC5E578, sub_1BA0E7594, MEMORY[0x1E69E81B8]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E050);
    }
  }
}

void sub_1BA0E7674(uint64_t a1)
{
  if (!qword_1EDC6B478)
  {
    sub_1BA4A3B48();
    sub_1BA0E7830(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E20]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B478);
    }
  }
}

void sub_1BA0E7708(uint64_t a1)
{
  if (!qword_1EBBEBE78)
  {
    sub_1BA4A15D8();
    sub_1BA0E7830(&qword_1EDC6E278, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBE78);
    }
  }
}

void sub_1BA0E779C(uint64_t a1)
{
  if (!qword_1EBBEBE80)
  {
    sub_1BA4A1E88();
    sub_1BA0E7830(&qword_1EBBEA650, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C88]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBE80);
    }
  }
}

uint64_t sub_1BA0E7830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA0E7878(uint64_t a1)
{
  if (!qword_1EBBEBE88)
  {
    sub_1BA4A1C68();
    sub_1BA0E7830(&qword_1EDC6E240, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C10]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBE88);
    }
  }
}

void sub_1BA0E790C()
{
  if (!qword_1EDC5E058)
  {
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E058);
    }
  }
}

uint64_t sub_1BA0E7964(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_1BA0E7A78()
{
  swift_beginAccess();

  return result;
}

void sub_1BA0E7B20()
{
  v1 = v0;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v32 - v6;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = sub_1BA4A4578();
  (*(v4 + 8))(v7, v3);
  v10 = *(v9 + 16);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  if (v10)
  {
    v12 = 0;
    v13 = v9 + 40;
    v38 = v10 - 1;
    v14 = MEMORY[0x1E69E7CC0];
    v39 = v9 + 40;
    while (1)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        v17 = *(v1 + v11);
        if (*(v17 + 16))
        {
          break;
        }

LABEL_4:
        ++v16;
        v15 += 2;
        if (v10 == v16)
        {
          goto LABEL_14;
        }
      }

      v18 = *(v15 - 1);
      v19 = *v15;

      v20 = sub_1B9F24A34(v18, v19);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = (*(v17 + 56) + 48 * v20);
      v23 = v22[1];
      v37 = *v22;
      v33 = v14;
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[5];
      v34 = v22[4];
      v35 = v23;

      v36 = v24;
      v27 = v25;
      v14 = v33;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1B9F21540(0, *(v14 + 2) + 1, 1, v14);
      }

      v29 = *(v14 + 2);
      v28 = *(v14 + 3);
      if (v29 >= v28 >> 1)
      {
        v14 = sub_1B9F21540((v28 > 1), v29 + 1, 1, v14);
      }

      v12 = v16 + 1;
      *(v14 + 2) = v29 + 1;
      v30 = &v14[48 * v29];
      v31 = v35;
      *(v30 + 4) = v37;
      *(v30 + 5) = v31;
      *(v30 + 6) = v36;
      *(v30 + 7) = v27;
      *(v30 + 8) = v34;
      *(v30 + 9) = v26;
      v13 = v39;
      if (v38 == v16)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_4;
  }

LABEL_14:
}

uint64_t sub_1BA0E7E1C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA0E7E60(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BA0E7F10(uint64_t a1, char a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v58 - v7;
  if (a2)
  {
    v60 = v5;
    v9 = *(a1 + 16);
    v10 = &v77;
    v59 = a1;
    v11 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v12 = (a1 + 48);
      v13 = MEMORY[0x1E69A3310];
      do
      {
        v14 = *v12;
        v15 = *(*v12 + 16);
        v16 = v11[2];
        v17 = (v16 + v15);
        if (__OFADD__(v16, v15))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v17 <= v11[3] >> 1)
        {
          if (!*(v14 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v16 <= v17)
          {
            v19 = v16 + v15;
          }

          else
          {
            v19 = v16;
          }

          v11 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v19, 1, v11);
          if (!*(v14 + 16))
          {
LABEL_4:

            if (v15)
            {
              goto LABEL_24;
            }

            goto LABEL_5;
          }
        }

        v10 = v11[2];
        if ((v11[3] >> 1) - v10 < v15)
        {
          goto LABEL_25;
        }

        v16 = &v11[5 * v10];
        sub_1B9F0D950(0, &qword_1EDC6AD50, v13);
        swift_arrayInitWithCopy();

        if (v15)
        {
          v20 = v11[2];
          v21 = __OFADD__(v20, v15);
          v10 = (v20 + v15);
          if (v21)
          {
            goto LABEL_26;
          }

          v11[2] = v10;
        }

LABEL_5:
        v12 += 6;
        --v9;
      }

      while (v9);
    }

    v12 = v11[2];
    if (v12)
    {
      v22 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      v15 = (v11 + 4);
      v66 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
      swift_beginAccess();
      v61 = v22;
      swift_beginAccess();
      v65 = (v64 + 2);
      ++v64;
      v17 = MEMORY[0x1E69E7CC0];
      v62 = MEMORY[0x1E69E7CC0];
      v14 = v60;
      while (1)
      {
        sub_1B9F0A534(v15, v75);
        (*v65)(v8, v67 + v66, v14);
        __swift_project_boxed_opaque_existential_1(v75, v76);
        v72[0] = sub_1BA4A2D58();
        v72[1] = v27;
        sub_1BA4A4468();
        v29 = v28;

        (*v64)(v8, v14);
        if ((v29 & 1) == 0)
        {
          break;
        }

LABEL_31:
        __swift_destroy_boxed_opaque_existential_1(v75);
        v15 += 40;
        v12 = (v12 - 1);
        if (!v12)
        {
          goto LABEL_58;
        }
      }

      v63 = v17;
      sub_1B9F0A534(v75, v71);
      sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      sub_1B9F0D950(0, &qword_1EDC66148, &protocol descriptor for ReloadableDataSourceItem);
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(&v68, v72);
        v30 = v73;
        v31 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        if ((*(v31 + 16))(v30, v31))
        {
          __swift_project_boxed_opaque_existential_1(v72, v73);
          v16 = sub_1BA4A2D58();
          v13 = v32;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v17 = v63;
            v23 = v62;
          }

          else
          {
            v23 = sub_1BA27EE34(0, *(v62 + 2) + 1, 1, v62);
            v17 = v63;
          }

LABEL_28:
          v25 = *(v23 + 2);
          v24 = *(v23 + 3);
          if (v25 >= v24 >> 1)
          {
            v23 = sub_1BA27EE34((v24 > 1), v25 + 1, 1, v23);
          }

          *(v23 + 2) = v25 + 1;
          v62 = v23;
          v26 = &v23[16 * v25];
          *(v26 + 4) = v16;
          *(v26 + 5) = v13;
          __swift_destroy_boxed_opaque_existential_1(v72);
          goto LABEL_31;
        }

        __swift_destroy_boxed_opaque_existential_1(v72);
      }

      else
      {
        v70 = 0;
        v69 = 0u;
        v68 = 0u;
        sub_1BA0FA9CC(&v68, &qword_1EDC66140, &qword_1EDC66148, &protocol descriptor for ReloadableDataSourceItem);
      }

      sub_1B9F0A534(v75, v71);
      v33 = MEMORY[0x1E69A3348];
      sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v70 = 0;
        v69 = 0u;
        v68 = 0u;
        sub_1BA0FA9CC(&v68, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v33);
        goto LABEL_46;
      }

      sub_1B9F1134C(&v68, v72);
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v34 = sub_1BA4A2E58();
      v36 = v35;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v37 = sub_1BA4A2D58();
      v39 = v38;
      v40 = *(v67 + v61);
      if (*(v40 + 16))
      {
        v41 = v37;

        v42 = sub_1B9F24A34(v41, v39);
        v44 = v43;

        if (v44)
        {
          v45 = (*(v40 + 56) + 16 * v42);
          v47 = *v45;
          v46 = v45[1];

          if (v34 == v47 && v36 == v46)
          {

            v14 = v60;
LABEL_56:
            __swift_destroy_boxed_opaque_existential_1(v72);
LABEL_46:
            v17 = v63;
            __swift_project_boxed_opaque_existential_1(v75, v76);
            v48 = sub_1BA4A2D58();
            v50 = v49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1BA27EE34(0, *(v17 + 2) + 1, 1, v17);
            }

            v52 = *(v17 + 2);
            v51 = *(v17 + 3);
            if (v52 >= v51 >> 1)
            {
              v17 = sub_1BA27EE34((v51 > 1), v52 + 1, 1, v17);
            }

            *(v17 + 2) = v52 + 1;
            v53 = &v17[16 * v52];
            *(v53 + 4) = v48;
            *(v53 + 5) = v50;
            goto LABEL_31;
          }

          v56 = sub_1BA4A8338();

          v14 = v60;
          if (v56)
          {
            goto LABEL_56;
          }
        }

        else
        {

          v14 = v60;
        }
      }

      else
      {
      }

      __swift_project_boxed_opaque_existential_1(v72, v73);
      v16 = sub_1BA4A2D58();
      v13 = v54;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v17 = v63;
      v10 = &v78;
      if (v55)
      {
        v23 = v62;
      }

      else
      {
LABEL_27:
        v23 = sub_1BA27EE34(0, *(*(v10 - 32) + 16) + 1, 1, *(v10 - 32));
      }

      goto LABEL_28;
    }

LABEL_58:

    a1 = v59;
  }

  sub_1B9F185CC(a1);
  swift_beginAccess();
  sub_1BA4A4498();

  sub_1BA4A4558();
  swift_endAccess();

  sub_1B9F18D28();
  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0E8828(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t))
{
  v5 = v2;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v8 + 16))(v11, v5 + v12, v7);
  v13 = a1(v7);
  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  a2(v13, v7);
  swift_endAccess();

  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0E89AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v28 = *v2;
  v29 = sub_1BA4A3EA8();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v28 - v14;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v12 + 16))(v15, v3 + v16, v11);
  v30[0] = a1;
  v30[1] = a2;
  sub_1BA4A44E8();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    sub_1BA4A3D88();

    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136315650;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, v30);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1B9F0B82C(0xD000000000000019, 0x80000001BA4EA9E0, v30);
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1B9F0B82C(a1, a2, v30);
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] %s Failed to find section with id: %s.", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    return (*(v6 + 8))(v9, v29);
  }

  else
  {
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BA4B5480;
    *(v27 + 32) = a1;
    *(v27 + 40) = a2;
    swift_beginAccess();

    sub_1BA4A4518();
    swift_endAccess();

    return sub_1BA0EF3D0();
  }
}

void sub_1BA0E8D84(int64_t a1)
{
  v2 = v1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v20 = *(v6 + 16);
  v20(v9, v2 + v10, v5);
  v11 = sub_1BA4A4578();
  v12 = *(v6 + 8);
  v12(v9, v5);
  v13 = *(v11 + 16);

  if (v13 > a1)
  {
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5480;
    v20(v9, v2 + v10, v5);
    v15 = sub_1BA4A4578();
    v12(v9, v5);
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*(v15 + 16) > a1)
    {
      v16 = v15 + 16 * a1;
      v18 = *(v16 + 32);
      v17 = *(v16 + 40);

      *(v14 + 32) = v18;
      *(v14 + 40) = v17;
      swift_beginAccess();
      sub_1BA4A4518();
      swift_endAccess();

      sub_1BA0EF3D0();
      return;
    }

    __break(1u);
  }
}

uint64_t sub_1BA0E8FD4(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v85 = *v2;
  v88 = sub_1BA4A3EA8();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v6);
  v86 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v85 - v12;
  v14 = a1[1];
  v94 = *a1;
  v95 = v14;
  v96 = a1[2];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v16 = *(v10 + 16);
  v16(v13, &v3[v15], v9);
  v17 = sub_1BA4A4548();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v19 = v17 < a2;
  v20 = a2;
  if (v19)
  {
    v21 = a2;
    v22 = v86;
    sub_1BA4A3D88();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v92[0] = v26;
      *v25 = 136315650;
      v27 = sub_1BA4A85D8();
      v29 = sub_1B9F0B82C(v27, v28, v92);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4EAA00, v92);
      *(v25 + 22) = 2048;
      *(v25 + 24) = v21;
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] %s Failed to insert a section at %ld, because it doesn't exist.", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    return (v87[1])(v22, v88);
  }

  v16(v13, &v3[v15], v9);
  v31 = sub_1BA4A4548();
  v18(v13, v9);
  v88 = v20;
  if (v31 == v20)
  {
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BA4B5480;
    v33 = *(&v96 + 1);
    *(v32 + 32) = v96;
    *(v32 + 40) = v33;
    swift_beginAccess();

    sub_1BA4A44C8();
    swift_endAccess();
  }

  else
  {
    v16(v13, &v3[v15], v9);
    v34 = sub_1BA4A4578();
    v18(v13, v9);
    if ((v88 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    if (*(v34 + 16) <= v88)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }

    v35 = v34 + 16 * v88;
    v36 = *(v35 + 32);
    v37 = *(v35 + 40);

    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BA4B5480;
    v39 = *(&v96 + 1);
    *(v38 + 32) = v96;
    *(v38 + 40) = v39;
    *&v91 = v36;
    *(&v91 + 1) = v37;
    swift_beginAccess();

    sub_1BA4A4508();
    swift_endAccess();
  }

  v87 = v3;
  v40 = v95;
  v41 = *(v95 + 16);
  if (v41)
  {
    v88 = v15;
    *&v91 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v41, 0);
    v42 = v91;
    v43 = v40 + 32;
    do
    {
      sub_1B9F0A534(v43, v92);
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v44 = sub_1BA4A2D58();
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_1(v92);
      *&v91 = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1B9F1C360((v47 > 1), v48 + 1, 1);
        v42 = v91;
      }

      *(v42 + 16) = v48 + 1;
      v49 = v42 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v43 += 40;
      --v41;
    }

    while (v41);
  }

  v50 = *(&v96 + 1);
  v51 = v96;
  v91 = v96;
  v52 = v87;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_1BA4A4448();
  swift_endAccess();

  v53 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  sub_1BA0F7D24(&v94, v92);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92[0] = *(v52 + v53);
  *(v52 + v53) = 0x8000000000000000;
  v55 = v51;
  v56 = v52;
  sub_1B9FF1718(&v94, v55, v50, isUniquelyReferenced_nonNull_native);

  *(v52 + v53) = v92[0];
  swift_endAccess();
  v57 = *(v40 + 16);
  if (v57)
  {
    v88 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    v58 = v40 + 32;
    v59 = MEMORY[0x1E69A3310];
    v60 = MEMORY[0x1E69A3348];
    do
    {
      sub_1B9F0A534(v58, &v91);
      sub_1B9F0D950(0, &qword_1EDC6AD50, v59);
      sub_1B9F0D950(0, &qword_1EDC6E1B0, v60);
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v89, v92);
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v61 = sub_1BA4A2D58();
        v63 = v62;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v64 = sub_1BA4A2E58();
        v66 = v65;
        v67 = v88;
        swift_beginAccess();
        v68 = swift_isUniquelyReferenced_nonNull_native();
        *&v89[0] = *(v56 + v67);
        v69 = *&v89[0];
        *(v56 + v67) = 0x8000000000000000;
        v71 = sub_1B9F24A34(v61, v63);
        v72 = *(v69 + 16);
        v73 = (v70 & 1) == 0;
        v74 = v72 + v73;
        if (__OFADD__(v72, v73))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v75 = v70;
        if (*(v69 + 24) >= v74)
        {
          if ((v68 & 1) == 0)
          {
            sub_1BA0F1474();
          }
        }

        else
        {
          sub_1B9F24AAC(v74, v68);
          v76 = sub_1B9F24A34(v61, v63);
          if ((v75 & 1) != (v77 & 1))
          {
            goto LABEL_38;
          }

          v71 = v76;
        }

        v78 = *&v89[0];
        if (v75)
        {
          v79 = (*(*&v89[0] + 56) + 16 * v71);
          *v79 = v64;
          v79[1] = v66;
        }

        else
        {
          *(*&v89[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
          v80 = (v78[6] + 16 * v71);
          *v80 = v61;
          v80[1] = v63;
          v81 = (v78[7] + 16 * v71);
          *v81 = v64;
          v81[1] = v66;
          v82 = v78[2];
          v83 = __OFADD__(v82, 1);
          v84 = v82 + 1;
          if (v83)
          {
            goto LABEL_35;
          }

          v78[2] = v84;
        }

        v56 = v87;
        *(v87 + v88) = v78;
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(v92);
        v59 = MEMORY[0x1E69A3310];
        v60 = MEMORY[0x1E69A3348];
      }

      else
      {
        v90 = 0;
        memset(v89, 0, sizeof(v89));
        sub_1BA0FA9CC(v89, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v60);
      }

      v58 += 40;
      --v57;
    }

    while (v57);
  }

  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0E9994(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v75 = *v4;
  v76 = sub_1BA4A3EA8();
  v8 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v73 - v16;
  v18 = a1[1];
  v83 = *a1;
  v84 = v18;
  v85 = a1[2];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v14 + 16))(v17, &v4[v19], v13);
  v81[0] = a2;
  v81[1] = a3;
  sub_1BA4A44E8();
  LOBYTE(a1) = v20;
  (*(v14 + 8))(v17, v13);
  if (a1)
  {
    sub_1BA4A3D88();

    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v81[0] = v24;
      *v23 = 136315650;
      v25 = sub_1BA4A85D8();
      v27 = sub_1B9F0B82C(v25, v26, v81);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B9F0B82C(0xD00000000000001ELL, 0x80000001BA4EAA20, v81);
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_1B9F0B82C(a2, a3, v81);
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] %s Failed to insert a section with id: %s, because it doesn't exist.", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    return (*(v8 + 8))(v11, v76);
  }

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5480;
  v30 = *(&v85 + 1);
  v31 = v85;
  *(v29 + 32) = v85;
  *(v29 + 40) = v30;
  v79 = a2;
  v80 = a3;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v75 = v4;
  sub_1BA4A4508();
  swift_endAccess();

  v32 = v84;
  v33 = *(v84 + 16);
  if (v33)
  {
    v74 = v31;
    v76 = v30;
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v33, 0);
    v34 = v79;
    v73 = v32;
    v35 = v32 + 32;
    do
    {
      sub_1B9F0A534(v35, v81);
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v36 = sub_1BA4A2D58();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1(v81);
      v79 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B9F1C360((v39 > 1), v40 + 1, 1);
        v34 = v79;
      }

      *(v34 + 16) = v40 + 1;
      v41 = v34 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v35 += 40;
      --v33;
    }

    while (v33);
    v30 = v76;
    v31 = v74;
    v32 = v73;
  }

  v79 = v31;
  v80 = v30;
  v42 = v75;
  swift_beginAccess();
  sub_1BA4A4448();
  swift_endAccess();

  v43 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  sub_1BA0F7D24(&v83, v81);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81[0] = *(v42 + v43);
  *(v42 + v43) = 0x8000000000000000;
  sub_1B9FF1718(&v83, v31, v30, isUniquelyReferenced_nonNull_native);

  *(v42 + v43) = v81[0];
  swift_endAccess();
  v45 = *(v32 + 16);
  if (!v45)
  {
    return sub_1BA0EF3D0();
  }

  v76 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  v46 = v32 + 32;
  v47 = MEMORY[0x1E69A3310];
  v48 = MEMORY[0x1E69A3348];
  while (1)
  {
    sub_1B9F0A534(v46, &v79);
    sub_1B9F0D950(0, &qword_1EDC6AD50, v47);
    sub_1B9F0D950(0, &qword_1EDC6E1B0, v48);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v78 = 0;
      memset(v77, 0, sizeof(v77));
      sub_1BA0FA9CC(v77, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v48);
      goto LABEL_14;
    }

    sub_1B9F1134C(v77, v81);
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v49 = sub_1BA4A2D58();
    v51 = v50;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v52 = sub_1BA4A2E58();
    v54 = v53;
    v55 = v76;
    swift_beginAccess();
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *&v77[0] = *(v42 + v55);
    v57 = *&v77[0];
    *(v42 + v55) = 0x8000000000000000;
    v59 = sub_1B9F24A34(v49, v51);
    v60 = *(v57 + 16);
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      break;
    }

    v63 = v58;
    if (*(v57 + 24) >= v62)
    {
      if ((v56 & 1) == 0)
      {
        sub_1BA0F1474();
      }
    }

    else
    {
      sub_1B9F24AAC(v62, v56);
      v64 = sub_1B9F24A34(v49, v51);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_30;
      }

      v59 = v64;
    }

    v66 = *&v77[0];
    if (v63)
    {
      v67 = (*(*&v77[0] + 56) + 16 * v59);
      *v67 = v52;
      v67[1] = v54;
    }

    else
    {
      *(*&v77[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
      v68 = (v66[6] + 16 * v59);
      *v68 = v49;
      v68[1] = v51;
      v69 = (v66[7] + 16 * v59);
      *v69 = v52;
      v69[1] = v54;
      v70 = v66[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_29;
      }

      v66[2] = v72;
    }

    v42 = v75;
    *(v75 + v76) = v66;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v81);
    v47 = MEMORY[0x1E69A3310];
    v48 = MEMORY[0x1E69A3348];
LABEL_14:
    v46 += 40;
    if (!--v45)
    {
      return sub_1BA0EF3D0();
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0EA210(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v75 = *v4;
  v76 = sub_1BA4A3EA8();
  v8 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v73 - v16;
  v18 = a1[1];
  v83 = *a1;
  v84 = v18;
  v85 = a1[2];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v14 + 16))(v17, &v4[v19], v13);
  v81[0] = a2;
  v81[1] = a3;
  sub_1BA4A44E8();
  LOBYTE(a1) = v20;
  (*(v14 + 8))(v17, v13);
  if (a1)
  {
    sub_1BA4A3D88();

    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v81[0] = v24;
      *v23 = 136315650;
      v25 = sub_1BA4A85D8();
      v27 = sub_1B9F0B82C(v25, v26, v81);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4EAA40, v81);
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_1B9F0B82C(a2, a3, v81);
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] %s Failed to insert a section after section with id: %s, because it doesn't exist.", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    return (*(v8 + 8))(v11, v76);
  }

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5480;
  v30 = *(&v85 + 1);
  v31 = v85;
  *(v29 + 32) = v85;
  *(v29 + 40) = v30;
  v79 = a2;
  v80 = a3;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v75 = v4;
  sub_1BA4A44F8();
  swift_endAccess();

  v32 = v84;
  v33 = *(v84 + 16);
  if (v33)
  {
    v74 = v31;
    v76 = v30;
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v33, 0);
    v34 = v79;
    v73 = v32;
    v35 = v32 + 32;
    do
    {
      sub_1B9F0A534(v35, v81);
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v36 = sub_1BA4A2D58();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1(v81);
      v79 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B9F1C360((v39 > 1), v40 + 1, 1);
        v34 = v79;
      }

      *(v34 + 16) = v40 + 1;
      v41 = v34 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v35 += 40;
      --v33;
    }

    while (v33);
    v30 = v76;
    v31 = v74;
    v32 = v73;
  }

  v79 = v31;
  v80 = v30;
  v42 = v75;
  swift_beginAccess();
  sub_1BA4A4448();
  swift_endAccess();

  v43 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  sub_1BA0F7D24(&v83, v81);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81[0] = *(v42 + v43);
  *(v42 + v43) = 0x8000000000000000;
  sub_1B9FF1718(&v83, v31, v30, isUniquelyReferenced_nonNull_native);

  *(v42 + v43) = v81[0];
  swift_endAccess();
  v45 = *(v32 + 16);
  if (!v45)
  {
    return sub_1BA0EF3D0();
  }

  v76 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  v46 = v32 + 32;
  v47 = MEMORY[0x1E69A3310];
  v48 = MEMORY[0x1E69A3348];
  while (1)
  {
    sub_1B9F0A534(v46, &v79);
    sub_1B9F0D950(0, &qword_1EDC6AD50, v47);
    sub_1B9F0D950(0, &qword_1EDC6E1B0, v48);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v78 = 0;
      memset(v77, 0, sizeof(v77));
      sub_1BA0FA9CC(v77, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v48);
      goto LABEL_14;
    }

    sub_1B9F1134C(v77, v81);
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v49 = sub_1BA4A2D58();
    v51 = v50;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v52 = sub_1BA4A2E58();
    v54 = v53;
    v55 = v76;
    swift_beginAccess();
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *&v77[0] = *(v42 + v55);
    v57 = *&v77[0];
    *(v42 + v55) = 0x8000000000000000;
    v59 = sub_1B9F24A34(v49, v51);
    v60 = *(v57 + 16);
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      break;
    }

    v63 = v58;
    if (*(v57 + 24) >= v62)
    {
      if ((v56 & 1) == 0)
      {
        sub_1BA0F1474();
      }
    }

    else
    {
      sub_1B9F24AAC(v62, v56);
      v64 = sub_1B9F24A34(v49, v51);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_30;
      }

      v59 = v64;
    }

    v66 = *&v77[0];
    if (v63)
    {
      v67 = (*(*&v77[0] + 56) + 16 * v59);
      *v67 = v52;
      v67[1] = v54;
    }

    else
    {
      *(*&v77[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
      v68 = (v66[6] + 16 * v59);
      *v68 = v49;
      v68[1] = v51;
      v69 = (v66[7] + 16 * v59);
      *v69 = v52;
      v69[1] = v54;
      v70 = v66[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_29;
      }

      v66[2] = v72;
    }

    v42 = v75;
    *(v75 + v76) = v66;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v81);
    v47 = MEMORY[0x1E69A3310];
    v48 = MEMORY[0x1E69A3348];
LABEL_14:
    v46 += 40;
    if (!--v45)
    {
      return sub_1BA0EF3D0();
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0EAA8C(uint64_t a1)
{
  v2 = v1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v17 - v8 + 16;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v12;
  v18 = v10;
  v19 = v11;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 16))(v9, v2 + v13, v5);
  v14 = sub_1BA4A4548();
  (*(v6 + 8))(v9, v5);
  return sub_1BA0E8FD4(v17, v14);
}

uint64_t sub_1BA0EABE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v69 = *v2;
  v70 = sub_1BA4A3EA8();
  v6 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v69 - v14;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v12 + 16))(v15, v3 + v16, v11);
  v74 = a1;
  v75 = a2;
  sub_1BA4A44E8();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    sub_1BA4A3D88();

    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v74 = v22;
      *v21 = 136315650;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, &v74);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1B9F0B82C(0xD00000000000001ALL, 0x80000001BA4EAA60, &v74);
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1B9F0B82C(a1, a2, &v74);
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] %s Failed to remove a section with id: %s, because it doesn't exist.", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    return (*(v6 + 8))(v9, v70);
  }

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5480;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;
  swift_beginAccess();

  sub_1BA4A44D8();
  swift_endAccess();

  v28 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  sub_1BA0F6560(a1, a2, &v74);
  v29 = v74;
  v30 = v75;
  v31 = v76;
  v32 = v77;
  v33 = v78;
  v34 = v79;
  swift_endAccess();
  sub_1BA0F7D80(v29, v30, v31, v32, v33, v34);
  v35 = *(v3 + v28);
  v36 = *(v35 + 16);
  v70 = v3;
  if (!v36)
  {
    goto LABEL_10;
  }

  v37 = sub_1B9F24A34(a1, a2);
  if ((v38 & 1) == 0)
  {

LABEL_10:
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
LABEL_11:
    sub_1BA0F7D80(v47, v48, 0, v49, v50, v46);
    v41 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v39 = (*(v35 + 56) + 48 * v37);
  v40 = *v39;
  v41 = v39[2];
  v42 = v39[3];
  v43 = v39[4];
  v44 = v39[5];
  v45 = v39[1];

  if (!v41)
  {
    v46 = v44;
    v47 = v40;
    v48 = v45;
    v49 = v42;
    v50 = v43;
    goto LABEL_11;
  }

  sub_1BA0F7D80(v40, v45, v41, v42, v43, v44);
LABEL_12:
  v69 = v41;
  v51 = *(v41 + 16);
  if (v51)
  {
    v52 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    v53 = v69 + 32;
    v54 = &qword_1EDC6AD50;
    v55 = MEMORY[0x1E69A3310];
    v56 = MEMORY[0x1E69A3348];
    do
    {
      sub_1B9F0A534(v53, v73);
      sub_1B9F0D950(0, v54, v55);
      sub_1B9F0D950(0, &qword_1EDC6E1B0, v56);
      if (swift_dynamicCast())
      {
        v58 = v55;
        v59 = v54;
        sub_1B9F1134C(v71, &v74);
        __swift_project_boxed_opaque_existential_1(&v74, v77);
        v60 = sub_1BA4A2D58();
        v62 = v61;
        swift_beginAccess();
        v63 = sub_1B9F24A34(v60, v62);
        v65 = v64;

        if (v65)
        {
          v66 = v70;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = *(v66 + v52);
          *&v71[0] = v68;
          *(v66 + v52) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BA0F1474();
            v68 = *&v71[0];
          }

          sub_1BA0F6A1C(v63, v68, v57);
          *(v66 + v52) = v68;
        }

        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v74);
        v54 = v59;
        v55 = v58;
        v56 = MEMORY[0x1E69A3348];
      }

      else
      {
        v72 = 0;
        memset(v71, 0, sizeof(v71));
        sub_1BA0FA9CC(v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v56);
      }

      v53 += 40;
      --v51;
    }

    while (v51);
  }

  return sub_1BA0EF3D0();
}

void sub_1BA0EB2C0(unint64_t a1)
{
  v2 = v1;
  v29 = *v1;
  v4 = sub_1BA4A3EA8();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v14 = *(v9 + 16);
  v14(v12, &v2[v13], v8);
  v15 = sub_1BA4A4548();
  v16 = *(v9 + 8);
  v16(v12, v8);
  if (v15 <= a1)
  {
    v21 = v30;
    sub_1BA4A3D88();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315650;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, &v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4EAA80, &v33);
      *(v24 + 22) = 2048;
      *(v24 + 24) = a1;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] %s Failed to remove a section at %ld, because it doesn't exist.", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v31 + 8))(v21, v32);
  }

  else
  {
    v14(v12, &v2[v13], v8);
    v17 = sub_1BA4A4578();
    v16(v12, v8);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v17 + 16) > a1)
    {
      v18 = v17 + 16 * a1;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);

      sub_1BA0EABE4(v19, v20);

      return;
    }

    __break(1u);
  }
}

void sub_1BA0EB668(int64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v45 = a3;
  v49 = *v3;
  v50 = a2;
  v6 = sub_1BA4A3EA8();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v51 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BA4A1798();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v46 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v44[-v16];
  v18 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v19 = *(v14 + 16);
  v19(v17, &v4[v18], v13);
  v20 = sub_1BA4A4548();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v22 = v20 < a1;
  v23 = a1;
  if (!v22)
  {
    v19(v17, &v4[v18], v13);
    v32 = sub_1BA4A4548();
    v21(v17, v13);
    if (v32 == v23)
    {
      v33 = v46;
      sub_1BA4A1788();
      v34 = sub_1BA4A1748();
      v36 = v35;
      (*(v47 + 8))(v33, v48);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
      v37 = v50;

      v39 = Array<A>.identifierToIndexDict()(v38);

      v54 = 0uLL;
      v55 = v37;
      v56 = v39;
      v57 = v34;
      v58 = v36;
      sub_1BA0E8FD4(&v54, v23);

LABEL_11:

      return;
    }

    v19(v17, &v4[v18], v13);
    v40 = sub_1BA4A4578();
    v21(v17, v13);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v40 + 16) > v23)
    {
      v41 = v40 + 16 * v23;
      v42 = *(v41 + 32);
      v43 = *(v41 + 40);

      sub_1BA0EBB7C(v42, v43, v50, v45 & 1);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v24 = v51;
  sub_1BA4A3D88();
  v25 = sub_1BA4A3E88();
  v26 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v54 = v28;
    *v27 = 136315650;
    v29 = sub_1BA4A85D8();
    v31 = sub_1B9F0B82C(v29, v30, &v54);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1B9F0B82C(0xD00000000000003ELL, 0x80000001BA4EAAA0, &v54);
    *(v27 + 22) = 2048;
    *(v27 + 24) = v23;
    _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] %s Failed to replace items at section with index %ld, because it doesn't exist.", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
  }

  (*(v52 + 8))(v24, v53);
}

uint64_t sub_1BA0EBB7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v166) = a4;
  v163 = a3;
  v171 = *v4;
  v8 = sub_1BA4A3EA8();
  v173 = *(v8 - 8);
  v174 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v172 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v12 = v11;
  v13 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v159 - v15;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v18 = v13 + 16;
  v19 = *(v13 + 16);
  v19(v16, &v5[v17], v12);
  v169 = a1;
  v183 = a1;
  v184 = a2;
  v165 = a2;
  sub_1BA4A44E8();
  LOBYTE(a2) = v20;
  v23 = *(v13 + 8);
  v21 = v13 + 8;
  v22 = v23;
  (v23)(v16, v12);
  if (a2)
  {
    v24 = v169;
    v25 = v172;
    sub_1BA4A3D88();
    v26 = v165;

    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v183 = v30;
      *v29 = 136315650;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, &v183);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1B9F0B82C(0xD000000000000045, 0x80000001BA4EAAE0, &v183);
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_1B9F0B82C(v24, v26, &v183);
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] %s Failed to replace items at section with id: %s, because it doesn't exist.", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    return (*(v173 + 8))(v25, v174);
  }

  v168 = v17;
  v170 = v19;
  v19(v16, &v5[v17], v12);
  v35 = v169;
  v183 = v169;
  v184 = v165;
  v162 = sub_1BA4A4528();
  v171 = v16;
  v173 = v21;
  (v22)(v16, v12);
  v174 = v5;
  v172 = v12;
  v36 = v22;
  v37 = v5;
  v38 = v35;
  if (v166)
  {
    v39 = *(v163 + 16);
    if (v39)
    {
      v40 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      v41 = v163 + 32;
      v166 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
      swift_beginAccess();
      v160 = v40;
      swift_beginAccess();
      v161 = xmmword_1BA4B5480;
      v164 = v18;
      v167 = v36;
      while (1)
      {
        sub_1B9F0A534(v41, &v183);
        __swift_project_boxed_opaque_existential_1(&v183, v185);
        v42 = sub_1BA4A2D58();
        v44 = v43;
        v45 = v171;
        v170(v171, &v37[v168], v12);
        *&v175[0] = v42;
        *(&v175[0] + 1) = v44;
        sub_1BA4A4568();
        (v167)(v45, v12);
        v46 = *(&v177 + 1);
        if (!*(&v177 + 1))
        {

LABEL_9:
          v182 = 0;
          v180 = 0u;
          v181 = 0u;
          v38 = v169;
          goto LABEL_10;
        }

        v47 = *&v37[v166];
        if (!*(v47 + 16) || (v48 = v177, , v49 = sub_1B9F24A34(v48, v46), v51 = v50, , (v51 & 1) == 0))
        {

          v12 = v172;
          goto LABEL_9;
        }

        v52 = *(v47 + 56) + 48 * v49;
        v53 = *(v52 + 16);
        v54 = *(v52 + 24);

        if (!*(v54 + 16))
        {
          break;
        }

        v55 = sub_1B9F24A34(v42, v44);
        v57 = v56;

        if ((v57 & 1) == 0)
        {
          goto LABEL_23;
        }

        v58 = *(*(v54 + 56) + 8 * v55);
        if ((v58 & 0x8000000000000000) != 0)
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          result = sub_1BA4A83B8();
          __break(1u);
          return result;
        }

        v12 = v172;
        if (v58 >= *(v53 + 16))
        {
          goto LABEL_85;
        }

        sub_1B9F0A534(v53 + 40 * v58 + 32, &v180);

LABEL_24:

        v38 = v169;
        v37 = v174;
        if (*(&v181 + 1))
        {
          v59 = MEMORY[0x1E69A3310];
          sub_1BA0FA9CC(&v180, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
          sub_1B9F0A534(&v183, &v177);
          sub_1B9F0D950(0, &qword_1EDC6AD50, v59);
          v60 = MEMORY[0x1E69A3348];
          sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v176 = 0;
            memset(v175, 0, sizeof(v175));
            sub_1BA0FA9CC(v175, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v60);
            goto LABEL_32;
          }

          sub_1B9F1134C(v175, &v180);
          __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
          v61 = sub_1BA4A2E58();
          v63 = v62;
          __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
          v64 = sub_1BA4A2D58();
          v66 = v65;
          v67 = *&v37[v160];
          if (*(v67 + 16) && (v68 = v64, , v69 = sub_1B9F24A34(v68, v66), v71 = v70, , (v71 & 1) != 0))
          {
            v72 = (*(v67 + 56) + 16 * v69);
            v74 = *v72;
            v73 = v72[1];

            if (v61 == v74 && v63 == v73)
            {

              goto LABEL_37;
            }

            v79 = sub_1BA4A8338();

            if (v79)
            {
LABEL_37:
              __swift_destroy_boxed_opaque_existential_1(&v180);
LABEL_32:
              sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
              v75 = swift_allocObject();
              *(v75 + 16) = v161;
              __swift_project_boxed_opaque_existential_1(&v183, v185);
              *(v75 + 32) = sub_1BA4A2D58();
              *(v75 + 40) = v76;
              swift_beginAccess();
              v12 = v172;
              sub_1BA4A4558();
              swift_endAccess();

LABEL_35:
              v38 = v169;
              goto LABEL_11;
            }
          }

          else
          {
          }

          sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v77 = swift_allocObject();
          *(v77 + 16) = v161;
          __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
          *(v77 + 32) = sub_1BA4A2D58();
          *(v77 + 40) = v78;
          swift_beginAccess();
          v12 = v172;
          sub_1BA4A4498();
          swift_endAccess();

          __swift_destroy_boxed_opaque_existential_1(&v180);
          goto LABEL_35;
        }

LABEL_10:
        sub_1BA0FA9CC(&v180, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(&v183);
        v41 += 40;
        if (!--v39)
        {
          goto LABEL_38;
        }
      }

LABEL_23:
      v182 = 0;
      v180 = 0u;
      v181 = 0u;

      v12 = v172;
      goto LABEL_24;
    }
  }

LABEL_38:
  v80 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  v81 = *&v37[v80];
  if (!*(v81 + 16))
  {
    goto LABEL_43;
  }

  v82 = sub_1B9F24A34(v38, v165);
  if ((v83 & 1) == 0)
  {

LABEL_43:
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
LABEL_44:
    sub_1BA0F7D80(v94, v95, 0, v93, v92, v91);
    v86 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  v84 = (*(v81 + 56) + 48 * v82);
  v85 = *v84;
  v86 = v84[2];
  v87 = v84[3];
  v88 = v84[4];
  v89 = v84[5];
  v90 = v84[1];

  if (!v86)
  {
    v91 = v89;
    v92 = v88;
    v93 = v87;
    v94 = v85;
    v95 = v90;
    goto LABEL_44;
  }

  sub_1BA0F7D80(v85, v90, v86, v87, v88, v89);
LABEL_45:
  v173 = v86;
  v96 = *(v86 + 16);
  if (v96)
  {
    v97 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    v98 = v173 + 32;
    v99 = &qword_1EDC6AD50;
    v100 = MEMORY[0x1E69A3310];
    v101 = MEMORY[0x1E69A3348];
    do
    {
      sub_1B9F0A534(v98, &v180);
      sub_1B9F0D950(0, v99, v100);
      sub_1B9F0D950(0, &qword_1EDC6E1B0, v101);
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(&v177, &v183);
        __swift_project_boxed_opaque_existential_1(&v183, v185);
        v103 = sub_1BA4A2D58();
        v105 = v104;
        swift_beginAccess();
        v106 = sub_1B9F24A34(v103, v105);
        v108 = v107;

        if (v108)
        {
          v109 = v100;
          v110 = v99;
          v111 = v174;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113 = *(v111 + v97);
          *&v177 = v113;
          *(v111 + v97) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BA0F1474();
            v113 = v177;
          }

          sub_1BA0F6A1C(v106, v113, v102);
          *(v111 + v97) = v113;
          v99 = v110;
          v100 = v109;
        }

        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v183);
        v101 = MEMORY[0x1E69A3348];
      }

      else
      {
        v179 = 0;
        v177 = 0u;
        v178 = 0u;
        sub_1BA0FA9CC(&v177, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v101);
      }

      v98 += 40;
      --v96;
    }

    while (v96);
  }

  v114 = *(v163 + 16);
  if (!v114)
  {
    swift_beginAccess();
    sub_1BA4A4458();
    swift_endAccess();

    v153 = v165;
    goto LABEL_78;
  }

  v173 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  v115 = MEMORY[0x1E69A3310];
  v116 = v163 + 32;
  v117 = v163 + 32;
  v167 = v114;
  v118 = v174;
  do
  {
    sub_1B9F0A534(v117, &v180);
    sub_1B9F0D950(0, &qword_1EDC6AD50, v115);
    v119 = MEMORY[0x1E69A3348];
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v179 = 0;
      v177 = 0u;
      v178 = 0u;
      sub_1BA0FA9CC(&v177, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v119);
      goto LABEL_58;
    }

    sub_1B9F1134C(&v177, &v183);
    __swift_project_boxed_opaque_existential_1(&v183, v185);
    v120 = sub_1BA4A2D58();
    v121 = v118;
    v123 = v122;
    __swift_project_boxed_opaque_existential_1(&v183, v185);
    v170 = sub_1BA4A2E58();
    v171 = v124;
    v125 = v173;
    swift_beginAccess();
    v126 = swift_isUniquelyReferenced_nonNull_native();
    *&v177 = *(v121 + v125);
    v127 = v177;
    *(v121 + v125) = 0x8000000000000000;
    v129 = sub_1B9F24A34(v120, v123);
    v130 = *(v127 + 16);
    v131 = (v128 & 1) == 0;
    v132 = v130 + v131;
    if (__OFADD__(v130, v131))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v133 = v128;
    if (*(v127 + 24) >= v132)
    {
      if (v126)
      {
        v136 = v177;
        if ((v128 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        sub_1BA0F1474();
        v136 = v177;
        if ((v133 & 1) == 0)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      sub_1B9F24AAC(v132, v126);
      v134 = sub_1B9F24A34(v120, v123);
      if ((v133 & 1) != (v135 & 1))
      {
        goto LABEL_86;
      }

      v129 = v134;
      v136 = v177;
      if ((v133 & 1) == 0)
      {
LABEL_69:
        v136[(v129 >> 6) + 8] |= 1 << v129;
        v139 = (v136[6] + 16 * v129);
        *v139 = v120;
        v139[1] = v123;
        v140 = (v136[7] + 16 * v129);
        v141 = v171;
        *v140 = v170;
        v140[1] = v141;
        v142 = v136[2];
        v143 = __OFADD__(v142, 1);
        v144 = v142 + 1;
        if (v143)
        {
          goto LABEL_83;
        }

        v136[2] = v144;
        goto LABEL_71;
      }
    }

    v137 = (v136[7] + 16 * v129);
    v138 = v171;
    *v137 = v170;
    v137[1] = v138;

LABEL_71:
    v118 = v174;
    *(v174 + v173) = v136;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v115 = MEMORY[0x1E69A3310];
LABEL_58:
    v117 += 40;
    --v114;
  }

  while (v114);
  swift_beginAccess();
  sub_1BA4A4458();
  swift_endAccess();

  *&v180 = MEMORY[0x1E69E7CC0];
  v145 = v167;
  sub_1B9F1C360(0, v167, 0);
  v146 = v180;
  do
  {
    sub_1B9F0A534(v116, &v183);
    __swift_project_boxed_opaque_existential_1(&v183, v185);
    v147 = sub_1BA4A2D58();
    v149 = v148;
    __swift_destroy_boxed_opaque_existential_1(&v183);
    *&v180 = v146;
    v151 = *(v146 + 16);
    v150 = *(v146 + 24);
    if (v151 >= v150 >> 1)
    {
      sub_1B9F1C360((v150 > 1), v151 + 1, 1);
      v146 = v180;
    }

    *(v146 + 16) = v151 + 1;
    v152 = v146 + 16 * v151;
    *(v152 + 32) = v147;
    *(v152 + 40) = v149;
    v116 += 40;
    --v145;
  }

  while (v145);
  v153 = v165;
LABEL_78:
  v154 = v169;
  *&v180 = v169;
  *(&v180 + 1) = v153;
  swift_beginAccess();

  sub_1BA4A4448();
  swift_endAccess();

  v155 = sub_1BA0E7AC0(&v183);
  v157 = sub_1BA0F0994(&v180, v154, v153);
  if (*(v156 + 16))
  {
    *(v156 + 16) = v163;
    v158 = v156;

    *(v158 + 24) = Array<A>.identifierToIndexDict()(*(v158 + 16));
  }

  (v157)(&v180, 0);
  (v155)(&v183, 0);
  return sub_1BA0EF3D0();
}