id static AppStorageMO.objectsToDeletePredicate.getter()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

id sub_2556B0594()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

uint64_t sub_2556B05D8@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2556B060C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = sub_25574F0D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v3 id];
  if (v17)
  {
    v18 = v17;
    sub_25574F080();

    (*(v14 + 56))(v10, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v10, 1, 1, v13);
  }

  sub_2556B0D64(v10, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
    if (qword_27F7BD7E8 != -1)
    {
      swift_once();
    }

    v19 = sub_25574F2C0();
    __swift_project_value_buffer(v19, qword_27F7BFB38);
    v20 = v3;
    v21 = sub_25574F2A0();
    v22 = sub_255750780();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2556E474C(a1, a2, &v32);
      *(v23 + 12) = 2080;
      v31 = v20;
      a3(0);
      v25 = v20;
      v26 = sub_2557501D0();
      v28 = sub_2556E474C(v26, v27, &v32);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_255661000, v21, v22, "Can't create %s record name because the object doesn't have an id: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v24, -1, -1);
      MEMORY[0x259C3F520](v23, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v30 = sub_25574F040();
    (*(v14 + 8))(v16, v13);
    return v30;
  }
}

id _s13JournalShared12AppStorageMOC22objectsToSavePredicateSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755070;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_255666F5C();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000002557523D0;
  *(v0 + 32) = sub_255750750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755060;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000255752490;
  *(v0 + 40) = sub_255750750();
  v5 = sub_255750370();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v6;
}

void sub_2556B0B6C()
{
  if (qword_27F7BD6F8 != -1)
  {
    swift_once();
  }

  v0 = sub_25574F2C0();
  __swift_project_value_buffer(v0, qword_27F7BE5D0);
  v1 = sub_25574F2A0();
  v2 = sub_255750780();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    v5 = sub_255751020();
    v7 = sub_2556E474C(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_255661000, v1, v2, "%s was marked for deletion.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x259C3F520](v4, -1, -1);
    MEMORY[0x259C3F520](v3, -1, -1);
  }
}

uint64_t sub_2556B0CD8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_2556B0D0C(uint64_t a1)
{
  result = sub_2556B0F04(&qword_27F7BE610, type metadata accessor for AppStorageMO, &protocol conformance descriptor for AppStorageMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2556B0D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556B0DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556B0E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556B0EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2556B0F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

JournalShared::SettingsKey_optional __swiftcall SettingsKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750ED0();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2556B0FB0()
{
  v0 = SettingsKey.rawValue.getter();
  v2 = v1;
  if (v0 == SettingsKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_255750EB0();
  }

  return v5 & 1;
}

uint64_t sub_2556B104C()
{
  sub_255750F80();
  SettingsKey.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556B10B4(uint64_t a1)
{
  SettingsKey.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_2556B1118(uint64_t a1)
{
  sub_255750F80();
  SettingsKey.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

unint64_t sub_2556B1188@<X0>(unint64_t *a1@<X8>)
{
  result = SettingsKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AnalyticsEndpointName.id.getter()
{
  v1 = *v0;
  v2 = 0x69746375646F7250;
  v3 = 1953719636;
  v4 = 0x6D706F6C65766544;
  if (v1 != 3)
  {
    v4 = 0x676E6967617453;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 16721;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

JournalShared::AnalyticsEndpointName_optional __swiftcall AnalyticsEndpointName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2556B12B0()
{
  result = qword_27F7BE618;
  if (!qword_27F7BE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE618);
  }

  return result;
}

unint64_t sub_2556B1314()
{
  result = qword_27F7BE620;
  if (!qword_27F7BE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE620);
  }

  return result;
}

uint64_t sub_2556B1368()
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556B1444(uint64_t a1)
{
  sub_2557501F0();
}

uint64_t sub_2556B150C(uint64_t a1)
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

unint64_t sub_2556B15F4()
{
  result = qword_27F7BE628;
  if (!qword_27F7BE628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BE630, &qword_255757590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE628);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsEndpointName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsEndpointName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2556B17E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t StreakEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreakEvent(0) + 20);
  v4 = sub_25574F020();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreakEvent.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StreakEvent(0) + 20);
  v4 = sub_25574F020();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StreakEvent.init(entryID:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25574F0D0();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_2556B17E8(a1, a3);
  v7 = *(type metadata accessor for StreakEvent(0) + 20);
  v8 = sub_25574F020();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_2556B1A88()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x44497972746E65;
  }
}

uint64_t sub_2556B1ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44497972746E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_255750EB0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255750EB0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2556B1B98(uint64_t a1)
{
  v2 = sub_2556B1E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556B1BD4(uint64_t a1)
{
  v2 = sub_2556B1E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StreakEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE638, &qword_2557576B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556B1E10();
  sub_255750FF0();
  v8[15] = 0;
  sub_25574F0D0();
  sub_2556B22B4(&qword_27F7BE648, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_255750DF0();
  if (!v1)
  {
    type metadata accessor for StreakEvent(0);
    v8[14] = 1;
    sub_25574F020();
    sub_2556B22B4(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750E30();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2556B1E10()
{
  result = qword_27F7BE640;
  if (!qword_27F7BE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE640);
  }

  return result;
}

uint64_t StreakEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = sub_25574F020();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v20 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE650, &qword_2557576B8);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v20 - v7;
  v9 = type metadata accessor for StreakEvent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25574F0D0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556B1E10();
  v13 = v27;
  sub_255750FE0();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2556B224C(v11);
  }

  else
  {
    v27 = v9;
    v14 = v24;
    v29 = 0;
    sub_2556B22B4(&qword_27F7BE658, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v15 = v25;
    sub_255750D40();
    sub_2556B17E8(v15, v11);
    v28 = 1;
    sub_2556B22B4(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v16 = v4;
    v17 = v23;
    v18 = v26;
    sub_255750D80();
    (*(v14 + 8))(v8, v18);
    (*(v21 + 32))(&v11[*(v27 + 20)], v16, v17);
    sub_2556B22FC(v11, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2556B2360(v11);
  }
}

uint64_t sub_2556B224C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556B22B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2556B22FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556B2360(uint64_t a1)
{
  v2 = type metadata accessor for StreakEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2556B2428()
{
  result = qword_27F7BE678;
  if (!qword_27F7BE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE678);
  }

  return result;
}

unint64_t sub_2556B2480()
{
  result = qword_27F7BE680;
  if (!qword_27F7BE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE680);
  }

  return result;
}

unint64_t sub_2556B24D8()
{
  result = qword_27F7BE688;
  if (!qword_27F7BE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE688);
  }

  return result;
}

uint64_t sub_2556B252C()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE690);
  v1 = __swift_project_value_buffer(v0, qword_27F7BE690);
  if (qword_27F7BD5D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0510);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ValueMetadata *AssetType.metadataType.getter(uint64_t a1)
{
  v2 = 0;
  switch(*v1)
  {
    case 0:
    case 1:
    case 2:
      v2 = type metadata accessor for PhotoLibraryAssetMetadata(0);
      v3 = &unk_27F7BE720;
      v4 = type metadata accessor for PhotoLibraryAssetMetadata;
      v5 = &protocol conformance descriptor for PhotoLibraryAssetMetadata;
      goto LABEL_18;
    case 3:
      v2 = type metadata accessor for MusicAssetMetadata(0);
      v3 = &unk_27F7BE6F0;
      v4 = type metadata accessor for MusicAssetMetadata;
      v5 = &protocol conformance descriptor for MusicAssetMetadata;
      goto LABEL_18;
    case 4:
      v2 = type metadata accessor for PodcastAssetMetadata(0);
      v3 = &unk_27F7BE6E0;
      v4 = type metadata accessor for PodcastAssetMetadata;
      v5 = &protocol conformance descriptor for PodcastAssetMetadata;
      goto LABEL_18;
    case 5:
      v2 = type metadata accessor for BookAssetMetadata(0);
      v3 = &unk_27F7BE6E8;
      v4 = type metadata accessor for BookAssetMetadata;
      v5 = &protocol conformance descriptor for BookAssetMetadata;
      goto LABEL_18;
    case 6:
      v2 = type metadata accessor for AudioAssetMetadata(0);
      v3 = &unk_27F7BE6F8;
      v4 = type metadata accessor for AudioAssetMetadata;
      v5 = &protocol conformance descriptor for AudioAssetMetadata;
      goto LABEL_18;
    case 7:
      v2 = type metadata accessor for VisitAssetMetadata(0);
      v3 = &unk_27F7BE718;
      v4 = type metadata accessor for VisitAssetMetadata;
      v5 = &protocol conformance descriptor for VisitAssetMetadata;
      goto LABEL_18;
    case 8:
      sub_2556B2A14();
      return &type metadata for MultiPinMapAssetMetadata;
    case 9:
      v2 = type metadata accessor for GenericMapAssetMetadata(0);
      v3 = &unk_27F7BE700;
      v4 = type metadata accessor for GenericMapAssetMetadata;
      v5 = &protocol conformance descriptor for GenericMapAssetMetadata;
      goto LABEL_18;
    case 0xA:
      v2 = type metadata accessor for LinkAssetMetadata(0);
      v3 = &unk_27F7BE6D0;
      v4 = type metadata accessor for LinkAssetMetadata;
      v5 = &protocol conformance descriptor for LinkAssetMetadata;
      goto LABEL_18;
    case 0xB:
      v2 = type metadata accessor for ContactAssetMetadata(0);
      v3 = &unk_27F7BE6D8;
      v4 = type metadata accessor for ContactAssetMetadata;
      v5 = &protocol conformance descriptor for ContactAssetMetadata;
      goto LABEL_18;
    case 0xC:
      v2 = type metadata accessor for WorkoutIconAssetMetadata(0);
      v3 = &unk_27F7BE708;
      v4 = type metadata accessor for WorkoutIconAssetMetadata;
      v5 = &protocol conformance descriptor for WorkoutIconAssetMetadata;
      goto LABEL_18;
    case 0xE:
      sub_2556B29C0();
      return &type metadata for ReflectionAssetMetadata;
    case 0xF:
      v2 = type metadata accessor for StateOfMindAssetMetadata(0);
      v3 = &unk_27F7BE6B8;
      v4 = type metadata accessor for StateOfMindAssetMetadata;
      v5 = &protocol conformance descriptor for StateOfMindAssetMetadata;
      goto LABEL_18;
    case 0x10:
      v2 = type metadata accessor for MotionActivityAssetMetadata(0);
      v3 = &unk_27F7BE6C8;
      v4 = type metadata accessor for MotionActivityAssetMetadata;
      v5 = &protocol conformance descriptor for MotionActivityAssetMetadata;
      goto LABEL_18;
    case 0x11:
      v2 = type metadata accessor for ThirdPartyMediaAssetMetadata(0);
      v3 = &unk_27F7BE6B0;
      v4 = type metadata accessor for ThirdPartyMediaAssetMetadata;
      v5 = &protocol conformance descriptor for ThirdPartyMediaAssetMetadata;
      goto LABEL_18;
    case 0x15:
      v2 = type metadata accessor for ConfettiAssetMetadata(0);
      v3 = &unk_27F7BE6A8;
      v4 = type metadata accessor for ConfettiAssetMetadata;
      v5 = &protocol conformance descriptor for ConfettiAssetMetadata;
LABEL_18:
      sub_2556B2A68(v3, v4, v5);
      break;
    default:
      return v2;
  }

  return v2;
}

unint64_t sub_2556B29C0()
{
  result = qword_27F7BE6C0;
  if (!qword_27F7BE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE6C0);
  }

  return result;
}

unint64_t sub_2556B2A14()
{
  result = qword_27F7BE710;
  if (!qword_27F7BE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE710);
  }

  return result;
}

uint64_t sub_2556B2A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char JournalEntryAssetMO.metadata.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = [v1 assetType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2557501B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  LOBYTE(v9) = AssetType.init(rawValue:)(v8);
  if (v27 == 23)
  {
    goto LABEL_10;
  }

  v9 = [v1 assetMetaData];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = sub_25574EF90();
  v13 = v12;

  v26[14] = v27;
  v15 = AssetType.metadataType.getter(v14);
  if (!v15)
  {
    LOBYTE(v9) = sub_2556755A8(v11, v13);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  v19 = sub_255750950();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v26[-v21];
  Data.asObject<A>(of:)(v17, &v26[-v21]);
  v23 = *(v17 - 8);
  if ((*(v23 + 48))(v22, 1, v17) == 1)
  {
    sub_2556755A8(v11, v13);
    LOBYTE(v9) = (*(v20 + 8))(v22, v19);
LABEL_10:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return v9;
  }

  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(v23 + 32))(boxed_opaque_existential_1, v22, v17);
  LOBYTE(v9) = sub_2556755A8(v11, v13);
  return v9;
}

uint64_t Encodable.asData.getter(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  sub_25574EB30();
  swift_allocObject();
  sub_25574EB20();
  v3 = sub_25574EB10();

  return v3;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void __swiftcall TTRInfo.init(alertTitle:alertMessage:radarTitle:errorDescription:classification:)(JournalShared::TTRInfo *__return_ptr retstr, Swift::String alertTitle, Swift::String alertMessage, Swift::String radarTitle, Swift::String_optional errorDescription, JournalShared::TapToRadarUtilities::RadarClassification classification)
{
  v6 = *classification;
  retstr->components.name._countAndFlagsBits = 0x6C616E72756F4ALL;
  retstr->components.name._object = 0xE700000000000000;
  retstr->components.id._countAndFlagsBits = 0x37333037383531;
  retstr->components.id._object = 0xE700000000000000;
  retstr->components.version._countAndFlagsBits = 5459817;
  retstr->components.version._object = 0xE300000000000000;
  retstr->alertTitle = alertTitle;
  retstr->alertMessage = alertMessage;
  retstr->radarTitle = radarTitle;
  retstr->errorDescription = errorDescription;
  retstr->classification = v6;
}

void static TapToRadarUtilities.RadarComponent.journaliOS.getter(void *a1@<X8>)
{
  *a1 = 0x6C616E72756F4ALL;
  a1[1] = 0xE700000000000000;
  a1[2] = 0x37333037383531;
  a1[3] = 0xE700000000000000;
  a1[4] = 5459817;
  a1[5] = 0xE300000000000000;
}

uint64_t TTRInfo.components.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t TTRInfo.alertTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TTRInfo.alertMessage.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TTRInfo.radarTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TTRInfo.errorDescription.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

JournalShared::TapToRadarUtilities::RadarClassification_optional __swiftcall TapToRadarUtilities.RadarClassification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TapToRadarUtilities.RadarClassification.rawValue.getter()
{
  if (*v0)
  {
    return 0x754220726568744FLL;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2556B330C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x754220726568744FLL;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x8000000255752240;
  }

  else
  {
    v4 = 0xE900000000000067;
  }

  if (*a2)
  {
    v5 = 0x754220726568744FLL;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xE900000000000067;
  }

  else
  {
    v6 = 0x8000000255752240;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255750EB0();
  }

  return v8 & 1;
}

uint64_t sub_2556B33BC()
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556B3448(uint64_t a1)
{
  sub_2557501F0();
}

uint64_t sub_2556B34C0(uint64_t a1)
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556B3548@<X0>(char *a2@<X8>)
{
  v3 = sub_255750CD0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2556B35A8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000255752240;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x754220726568744FLL;
    v2 = 0xE900000000000067;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t static TapToRadarUtilities.generateTapToRadarURL(for:title:description:classification:attachments:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v34 = a5;
  v25 = a4;
  v31 = a2;
  v32 = a3;
  v37 = a8;
  v27 = sub_25574EBC0();
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25574EC20();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[2];
  v28 = a1[3];
  v29 = v15;
  v30 = *a6;
  sub_25574EC10();
  sub_25574EC00();
  MEMORY[0x259C3C8C0](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0E8, &qword_255755C70);
  v16 = *(v10 + 72);
  v26 = v10;
  v17 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_255757880;
  sub_25574EBB0();
  sub_25574EBB0();
  sub_25574EBB0();
  sub_25574EBB0();
  sub_25574EBB0();

  v38 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
  sub_2556B3A2C();
  sub_2557500C0();
  sub_25574EBB0();

  if (v34)
  {
    v19 = v24;
    sub_25574EBB0();
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_255698958((v20 > 1), v21 + 1, 1, v18);
    }

    *(v18 + 16) = v21 + 1;
    (*(v26 + 32))(v18 + v17 + v21 * v16, v19, v27);
  }

  sub_25574EBD0();
  sub_25574EBE0();
  return (*(v35 + 8))(v14, v36);
}

unint64_t sub_2556B3A2C()
{
  result = qword_27F7BE730;
  if (!qword_27F7BE730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BE728, &qword_255757898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE730);
  }

  return result;
}

unint64_t sub_2556B3AAC()
{
  result = qword_27F7BE738;
  if (!qword_27F7BE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE738);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2556B3B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_2556B3B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2556B3C44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2556B3C8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

JournalShared::JournalAppVersion_optional __swiftcall JournalAppVersion.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue)
  {
    if (rawValue == 1010)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (rawValue == 1001)
    {
      v2 = 1;
    }

    else
    {
      v2 = v3;
    }
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2556B3D60()
{
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

uint64_t sub_2556B3DF0(uint64_t a1)
{
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

BOOL sub_2556B3F28(__int16 a1, __int16 a2)
{
  v2 = (0x3F203E90000uLL >> (16 * a2));
  v3 = (0x3F203E90000uLL >> (16 * a1));
  if (v2 != v3)
  {
    return v2 >= v3;
  }

  if (HIBYTE(a1) > 1u)
  {
    if (HIBYTE(a1) == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (HIBYTE(a1) == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!HIBYTE(a2))
    {
      goto LABEL_25;
    }

LABEL_16:
    if (HIBYTE(a2) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 10;
    }

    if (HIBYTE(a2) == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (HIBYTE(a2) > 2u)
    {
      v7 = v8;
    }

    return v5 >= v7;
  }

  if (!HIBYTE(a1))
  {
    v7 = 0x7FFF;
    v5 = 0x7FFF;
    if (!HIBYTE(a2))
    {
      return v5 >= v7;
    }

    goto LABEL_16;
  }

  v5 = -1;
  if (HIBYTE(a2))
  {
    goto LABEL_16;
  }

LABEL_25:
  v7 = 0x7FFF;
  return v5 >= v7;
}

BOOL sub_2556B4024(__int16 a1, __int16 a2)
{
  v2 = (0x3F203E90000uLL >> (16 * a1));
  v3 = (0x3F203E90000uLL >> (16 * a2));
  if (v2 != v3)
  {
    return v2 >= v3;
  }

  if (HIBYTE(a2) > 1u)
  {
    if (HIBYTE(a2) == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (HIBYTE(a2) == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!HIBYTE(a1))
    {
      goto LABEL_25;
    }

LABEL_16:
    if (HIBYTE(a1) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 10;
    }

    if (HIBYTE(a1) == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (HIBYTE(a1) > 2u)
    {
      v7 = v8;
    }

    return v5 >= v7;
  }

  if (!HIBYTE(a2))
  {
    v7 = 0x7FFF;
    v5 = 0x7FFF;
    if (!HIBYTE(a1))
    {
      return v5 >= v7;
    }

    goto LABEL_16;
  }

  v5 = -1;
  if (HIBYTE(a1))
  {
    goto LABEL_16;
  }

LABEL_25:
  v7 = 0x7FFF;
  return v5 >= v7;
}

BOOL sub_2556B4120(__int16 a1, __int16 a2)
{
  v2 = (0x3F203E90000uLL >> (16 * a2));
  v3 = (0x3F203E90000uLL >> (16 * a1));
  if (v2 != v3)
  {
    return v2 < v3;
  }

  if (HIBYTE(a1) > 1u)
  {
    if (HIBYTE(a1) == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (HIBYTE(a1) == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!HIBYTE(a2))
    {
      goto LABEL_25;
    }

LABEL_16:
    if (HIBYTE(a2) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 10;
    }

    if (HIBYTE(a2) == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (HIBYTE(a2) > 2u)
    {
      v7 = v8;
    }

    return v5 < v7;
  }

  if (!HIBYTE(a1))
  {
    v7 = 0x7FFF;
    v5 = 0x7FFF;
    if (!HIBYTE(a2))
    {
      return v5 < v7;
    }

    goto LABEL_16;
  }

  v5 = -1;
  if (HIBYTE(a2))
  {
    goto LABEL_16;
  }

LABEL_25:
  v7 = 0x7FFF;
  return v5 < v7;
}

uint64_t MinimumSupportedVersion.journalAppVersion.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  result = (*(a1 + 8))();
  if (result == 1010)
  {
    v5 = 2;
  }

  else
  {
    if (result)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (result == 1001)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  *a2 = v5;
  return result;
}

JournalShared::UnsupportedEntryMode_optional __swiftcall UnsupportedEntryMode.init(rawValue:)(Swift::Int16 rawValue)
{
  if ((rawValue + 1) > 0xBu)
  {
    *v1 = 5;
  }

  else
  {
    *v1 = byte_255757E42[(rawValue + 1)];
  }

  return rawValue;
}

uint64_t sub_2556B42B0()
{
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

uint64_t sub_2556B4338(uint64_t a1)
{
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

BOOL static UnsupportedEntryMode.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*a1)
    {
      v5 = -1;
      if (!*a2)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 < v6;
      }
    }

    else
    {
      v5 = 0x7FFF;
      v6 = 0x7FFF;
      if (!*a2)
      {
        return v5 < v6;
      }
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a2)
    {
      goto LABEL_23;
    }
  }

  if (v3 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v3 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a2 > 2u)
  {
    v6 = v7;
  }

  return v5 < v6;
}

uint64_t UnsupportedEntryMode.debugDescription.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x65546E6564646968;
  v4 = 0x7865546E69616C70;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C416E6564646968;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BOOL sub_2556B44F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*a1)
    {
      v5 = -1;
      if (!*a2)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 < v6;
      }
    }

    else
    {
      v6 = 0x7FFF;
      v5 = 0x7FFF;
      if (!*a2)
      {
        return v5 < v6;
      }
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a2)
    {
      goto LABEL_23;
    }
  }

  if (v3 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v3 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a2 > 2u)
  {
    v6 = v7;
  }

  return v5 < v6;
}

BOOL sub_2556B4580(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 <= 1)
  {
    if (*a2)
    {
      v5 = -1;
      if (!*a1)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 >= v6;
      }
    }

    else
    {
      v6 = 0x7FFF;
      v5 = 0x7FFF;
      if (!*a1)
      {
        return v5 >= v6;
      }
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v3 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a1)
    {
      goto LABEL_23;
    }
  }

  if (v2 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v2 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a1 > 2u)
  {
    v6 = v7;
  }

  return v5 >= v6;
}

BOOL sub_2556B4610(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*a1)
    {
      v5 = -1;
      if (!*a2)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 >= v6;
      }
    }

    else
    {
      v6 = 0x7FFF;
      v5 = 0x7FFF;
      if (!*a2)
      {
        return v5 >= v6;
      }
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a2)
    {
      goto LABEL_23;
    }
  }

  if (v3 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v3 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a2 > 2u)
  {
    v6 = v7;
  }

  return v5 >= v6;
}

BOOL sub_2556B46A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 <= 1)
  {
    if (*a2)
    {
      v5 = -1;
      if (!*a1)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 < v6;
      }
    }

    else
    {
      v6 = 0x7FFF;
      v5 = 0x7FFF;
      if (!*a1)
      {
        return v5 < v6;
      }
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v3 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a1)
    {
      goto LABEL_23;
    }
  }

  if (v2 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v2 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a1 > 2u)
  {
    v6 = v7;
  }

  return v5 < v6;
}

uint64_t sub_2556B4740()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x65546E6564646968;
  v4 = 0x7865546E69616C70;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C416E6564646968;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id JournalEntryMO.unsupportedEntryMode.getter@<X0>(char *a1@<X8>)
{
  result = [v1 minimumSupportedAppVersionMode];
  if ((result + 1) > 0xB)
  {
    v4 = 5;
  }

  else
  {
    v4 = byte_255757E42[(result + 1)];
  }

  *a1 = v4;
  return result;
}

void sub_2556B4870(__int16 a1, __int16 a2)
{
  if ([v2 minimumSupportedAppVersion] > 1010)
  {
    if (qword_27F7BD5B8 != -1)
    {
      swift_once();
    }

    v5 = sub_25574F2C0();
    __swift_project_value_buffer(v5, qword_27F7C04B0);
    oslog = sub_25574F2A0();
    v6 = sub_2557507A0();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Not setting minimum supported version since current app version is newer than the client";
LABEL_6:
    _os_log_impl(&dword_255661000, oslog, v6, v8, v7, 2u);
    MEMORY[0x259C3F520](v7, -1, -1);
LABEL_7:

    return;
  }

  v9 = [v2 minimumSupportedAppVersionMode];
  if ((v9 > 0xA || ((1 << v9) & 0x407) == 0) && v9 != 0xFFFF)
  {
    if (qword_27F7BD5B8 != -1)
    {
      swift_once();
    }

    v12 = sub_25574F2C0();
    __swift_project_value_buffer(v12, qword_27F7C04B0);
    oslog = sub_25574F2A0();
    v6 = sub_2557507A0();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Not setting minimum supported mode since current unsupported mode is not recognized";
    goto LABEL_6;
  }

  [v2 setMinimumSupportedAppVersion_];
  [v2 setMinimumSupportedAppVersionMode_];

  [v2 setIsUploadedToCloud_];
}

void sub_2556B4BDC(__int16 a1)
{
  if ([v1 minimumSupportedAppVersion] <= 1010)
  {
    [v1 setMinimumSupportedAppVersion_];

    [v1 setIsUploadedToCloud_];
  }

  else
  {
    if (qword_27F7BD5B8 != -1)
    {
      swift_once();
    }

    v3 = sub_25574F2C0();
    __swift_project_value_buffer(v3, qword_27F7C04B0);
    oslog = sub_25574F2A0();
    v4 = sub_2557507A0();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_255661000, oslog, v4, "Not setting minimum supported version since current app version is newer than the client", v5, 2u);
      MEMORY[0x259C3F520](v5, -1, -1);
    }
  }
}

uint64_t sub_2556B4D24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE790, &unk_255757E20);
  __swift_allocate_value_buffer(v0, qword_27F7BE740);
  __swift_project_value_buffer(v0, qword_27F7BE740);
  v1 = [objc_opt_self() megabytes];
  sub_2556B6054();
  return sub_25574EB40();
}

uint64_t sub_2556B4DC0@<X0>(unint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE790, &unk_255757E20);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7A0, &qword_255757E38);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v61 = v1;
  JournalEntryMO.mergeableAttributedText.getter(&v55 - v16);
  v18 = *(v9 + 6);
  v19 = (v18)(v17, 1, v8);
  v57 = v7;
  if (v19)
  {
    sub_255674B20(v17, &qword_27F7BE7A0, &qword_255757E38);
  }

  else
  {
    (*(v9 + 2))(v11, v17, v8);
    sub_255674B20(v17, &qword_27F7BE7A0, &qword_255757E38);
    CRAttributedString<>.minimumAppVersion.getter(v62);
    (*(v9 + 1))(v11, v8);
    LOBYTE(v21) = v62[0];
    if (LOBYTE(v62[0]))
    {
      v56 = a1;
      v20 = sub_255698980(0, 1, 1, MEMORY[0x277D84F90]);
      a1 = *(v20 + 2);
      v22 = *(v20 + 3);
      v23 = a1 + 1;
      if (a1 >= v22 >> 1)
      {
        goto LABEL_51;
      }

      goto LABEL_6;
    }
  }

  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    JournalEntryMO.mergeableAttributedText.getter(v15);
    if ((v18)(v15, 1, v8))
    {
      sub_255674B20(v15, &qword_27F7BE7A0, &qword_255757E38);
LABEL_54:
      v35 = v59;
      v34 = v60;
      v36 = v58;
      goto LABEL_55;
    }

    (*(v9 + 2))(v11, v15, v8);
    sub_255674B20(v15, &qword_27F7BE7A0, &qword_255757E38);
    v23 = sub_25574F9E0();
    v25 = *(v9 + 1);
    v9 += 8;
    v25(v11, v8);
    if (v23)
    {
      goto LABEL_54;
    }

    v26 = JournalEntryMO.assetsArrayUnsorted.getter();
    v21 = v26;
    if (v26 >> 62)
    {
      v18 = sub_255750A30();
      if (!v18)
      {
LABEL_53:

        goto LABEL_54;
      }
    }

    else
    {
      v18 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_53;
      }
    }

    v11 = 0;
    v55 = v21 & 0xFFFFFFFFFFFFFF8;
    v56 = v21 & 0xC000000000000001;
LABEL_13:
    if (v56)
    {
      v27 = MEMORY[0x259C3E830](v11, v21);
    }

    else
    {
      v22 = *(v55 + 16);
      if (v11 >= v22)
      {
        goto LABEL_50;
      }

      v27 = *(v21 + 8 * v11 + 32);
    }

    v15 = v27;
    v9 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      break;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v20 = sub_255698980((v22 > 1), v23, 1, v20);
LABEL_6:
    *(v20 + 2) = v23;
    v24 = &v20[2 * a1];
    v24[32] = v21;
    v24[33] = 3;
    a1 = v56;
  }

  v28 = [v27 assetType];
  if (v28)
  {
    v8 = v28;
    v29 = sub_2557501B0();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  AssetType.init(rawValue:)(v32);
  v23 = 0xE500000000000000;
  switch(LOBYTE(v62[0]))
  {
    case 1:
      v23 = 0xE90000000000006FLL;
      goto LABEL_39;
    case 4:
      v23 = 0xE700000000000000;
      goto LABEL_39;
    case 5:
      v23 = 0xE400000000000000;
      goto LABEL_39;
    case 8:
      v23 = 0xEB0000000070614DLL;
      goto LABEL_39;
    case 9:
      v23 = 0xEA00000000007061;
      goto LABEL_39;
    case 0xA:
      v23 = 0xE400000000000000;
      goto LABEL_39;
    case 0xB:
      v23 = 0xE700000000000000;
      goto LABEL_39;
    case 0xC:
      v23 = 0xEB000000006E6F63;
      goto LABEL_39;
    case 0xD:
      v23 = 0xEC0000006574756FLL;
      goto LABEL_39;
    case 0xE:
      v23 = 0xEA00000000006E6FLL;
      goto LABEL_39;
    case 0xF:
      v23 = 0xEB00000000646E69;
      goto LABEL_39;
    case 0x10:
      v23 = 0xEE00797469766974;
      goto LABEL_39;
    case 0x11:
      v23 = 0xEF616964654D7974;
      goto LABEL_39;
    case 0x12:
      v23 = 0xEB00000000726564;
      goto LABEL_39;
    case 0x13:
      v23 = 0xEB00000000746E65;
      goto LABEL_39;
    case 0x14:
      swift_bridgeObjectRelease_n();

      goto LABEL_44;
    case 0x15:
      v23 = 0xE800000000000000;
      goto LABEL_39;
    case 0x16:
      v23 = 0xE700000000000000;
      goto LABEL_39;
    case 0x17:

      goto LABEL_40;
    default:
LABEL_39:
      v33 = sub_255750EB0();

      if ((v33 & 1) == 0)
      {
LABEL_40:
        ++v11;
        if (v9 == v18)
        {
          goto LABEL_53;
        }

        goto LABEL_13;
      }

LABEL_44:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_255698980(0, *(v20 + 2) + 1, 1, v20);
      }

      v35 = v59;
      v34 = v60;
      v36 = v58;
      v38 = *(v20 + 2);
      v37 = *(v20 + 3);
      if (v38 >= v37 >> 1)
      {
        v20 = sub_255698980((v37 > 1), v38 + 1, 1, v20);
      }

      *(v20 + 2) = v38 + 1;
      *&v20[2 * v38 + 32] = 514;
LABEL_55:
      v62[3] = &type metadata for JournalFeatureFlags;
      v62[4] = sub_255663AC0();
      LOBYTE(v62[0]) = 4;
      v39 = sub_25574F1E0();
      __swift_destroy_boxed_opaque_existential_1(v62);
      if (v39)
      {
        v40 = [v61 deletedOnDate];
        if (v40)
        {
          v41 = v57;
          v42 = v40;
          sub_25574EFF0();

          v43 = sub_25574F020();
          (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
          sub_255674B20(v41, &qword_27F7BEB40, &unk_255754E40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_255698980(0, *(v20 + 2) + 1, 1, v20);
          }

          v45 = *(v20 + 2);
          v44 = *(v20 + 3);
          if (v45 >= v44 >> 1)
          {
            v20 = sub_255698980((v44 > 1), v45 + 1, 1, v20);
          }

          *(v20 + 2) = v45 + 1;
          *&v20[2 * v45 + 32] = 258;
        }

        else
        {
          v46 = sub_25574F020();
          v47 = v57;
          (*(*(v46 - 8) + 56))(v57, 1, 1, v46);
          sub_255674B20(v47, &qword_27F7BEB40, &unk_255754E40);
        }
      }

      sub_2557138B4(MEMORY[0x277D84FA0]);
      v48 = [objc_opt_self() bytes];
      sub_2556B6054();
      sub_25574EB40();
      if (qword_27F7BD708 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v34, qword_27F7BE740);
      sub_255669798(&qword_27F7BE7B8, &qword_27F7BE790, &unk_255757E20, MEMORY[0x277CC87E8]);
      v49 = sub_2557500D0();
      (*(v35 + 8))(v36, v34);
      if ((v49 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_255698980(0, *(v20 + 2) + 1, 1, v20);
        }

        v51 = *(v20 + 2);
        v50 = *(v20 + 3);
        if (v51 >= v50 >> 1)
        {
          v20 = sub_255698980((v50 > 1), v51 + 1, 1, v20);
        }

        *(v20 + 2) = v51 + 1;
        *&v20[2 * v51 + 32] = 770;
      }

      sub_2556C6980(v20, v62);

      v53 = v62[0];
      v54 = HIBYTE(LOWORD(v62[0]));
      if (LOBYTE(v62[0]) == 3)
      {
        v53 = 0;
        LOBYTE(v54) = 0;
      }

      *a1 = v53;
      *(a1 + 1) = v54;
      return result;
  }
}

id JournalEntryMO.minimumVersionConfiguration.getter@<X0>(__int16 *a1@<X8>)
{
  result = [v1 minimumSupportedAppVersion];
  if (result)
  {
    if (result == 1010)
    {
      v4 = 2;
    }

    else
    {
      if (result != 1001)
      {
        v6 = 3;
        goto LABEL_12;
      }

      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  result = [v1 minimumSupportedAppVersionMode];
  if ((result + 1) > 0xB)
  {
    v5 = 1;
  }

  else
  {
    v5 = byte_255757E4E[(result + 1)];
  }

  v6 = v4 | (v5 << 8);
LABEL_12:
  *a1 = v6;
  return result;
}

Swift::Void __swiftcall JournalEntryMO.setMinimumVersionConfiguration(_:)(JournalShared::MinimumVersionConfiguration a1)
{
  v1 = **&a1.version;
  v2 = *(*&a1.version + 1);
  JournalEntryMO.minimumVersionConfiguration.getter(&v17);
  if (v17 == 3)
  {
    if (qword_27F7BD5B8 != -1)
    {
      swift_once();
    }

    v3 = sub_25574F2C0();
    __swift_project_value_buffer(v3, qword_27F7C04B0);
    oslog = sub_25574F2A0();
    v4 = sub_255750770();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_255661000, oslog, v4, "Could not determine the current configuration. Ignoring update.", v5, 2u);
      MEMORY[0x259C3F520](v5, -1, -1);
    }
  }

  else
  {
    v6 = 0x3F203E90000uLL >> (16 * v1);
    if (v6 != (0x3F203E90000uLL >> (16 * v17)) || word_255757E5A[v2] != word_255757E5A[SHIBYTE(v17)])
    {
      if (qword_27F7BD5B8 != -1)
      {
        swift_once();
      }

      v7 = sub_25574F2C0();
      __swift_project_value_buffer(v7, qword_27F7C04B0);
      v8 = sub_25574F2A0();
      v9 = sub_2557507A0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v16 = v11;
        *v10 = 136315138;
        v12 = sub_2557501D0();
        v14 = sub_2556E474C(v12, v13, &v16);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_255661000, v8, v9, "Updating entry minimum version configuration to %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x259C3F520](v11, -1, -1);
        MEMORY[0x259C3F520](v10, -1, -1);
      }

      sub_2556B4870(word_255757E5A[v2], v6);
    }
  }
}

Swift::Void __swiftcall JournalEntryMO.computeAndSetAggregateMinimumVersion()()
{
  sub_2556B4DC0(&v2);
  v1 = v2;
  v0 = &v1;
  JournalEntryMO.setMinimumVersionConfiguration(_:)(v0);
}

BOOL _s13JournalShared27MinimumVersionConfigurationV1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = (0x3F203E90000uLL >> (16 * *a1));
  v3 = (0x3F203E90000uLL >> (16 * *a2));
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v5 > 1)
  {
    if (v5 == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 10;
    }

    if (v5 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (!a1[1])
    {
      goto LABEL_25;
    }

LABEL_16:
    if (v4 == 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 10;
    }

    if (v4 == 1)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (a1[1] > 2u)
    {
      v9 = v10;
    }

    return v7 < v9;
  }

  if (!a2[1])
  {
    v9 = 0x7FFF;
    v7 = 0x7FFF;
    if (!a1[1])
    {
      return v7 < v9;
    }

    goto LABEL_16;
  }

  v7 = -1;
  if (a1[1])
  {
    goto LABEL_16;
  }

LABEL_25:
  v9 = 0x7FFF;
  return v7 < v9;
}

unint64_t sub_2556B5D48()
{
  result = qword_27F7BE758;
  if (!qword_27F7BE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE758);
  }

  return result;
}

unint64_t sub_2556B5DE0()
{
  result = qword_27F7BE770;
  if (!qword_27F7BE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE770);
  }

  return result;
}

unint64_t sub_2556B5E7C()
{
  result = qword_27F7BE788;
  if (!qword_27F7BE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE788);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MinimumVersionConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MinimumVersionConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2556B6054()
{
  result = qword_27F7BE7B0;
  if (!qword_27F7BE7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE7B0);
  }

  return result;
}

void sub_2556B60A8(uint64_t a1, uint64_t a2, void *a3)
{
  v92 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v81 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = v77 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v77 - v11;
  MEMORY[0x28223BE20](v10);
  v83 = v77 - v13;
  v86 = a2;
  swift_bridgeObjectRetain_n();
  v14 = [a3 updatedObjects];
  v15 = sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
  v16 = sub_25568B170();
  v17 = sub_255750580();

  v78 = a3;
  v77[1] = v16;
  v84 = v12;
  v80 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v18 = v96;
    v88 = v95;
    v19 = v97;
    v20 = v98;
    v21 = v99;
  }

  else
  {
    v22 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(v17 + 56);

    v20 = 0;
    v88 = v17;
  }

  v79 = v19;
  v25 = (v19 + 64) >> 6;
  v91 = v15;
  v26 = v88;
  while (v26 < 0)
  {
    v32 = sub_255750A60();
    if (!v32)
    {
      goto LABEL_28;
    }

    v94 = v32;
    swift_dynamicCast();
    v31 = v100;
    v30 = v20;
    v27 = v21;
    if (!v100)
    {
      goto LABEL_28;
    }

LABEL_19:
    v87 = v20;
    type metadata accessor for JournalMO();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      v89 = v27;
      v90 = v31;
      v35 = [v34 id];
      v85 = v21;
      if (v35)
      {
        v36 = v84;
        v37 = v35;
        sub_25574F080();

        v38 = 0;
      }

      else
      {
        v38 = 1;
        v36 = v84;
      }

      v39 = sub_25574F0D0();
      v40 = *(v39 - 8);
      (*(v40 + 56))(v36, v38, 1, v39);
      v41 = v83;
      sub_255675060(v36, v83, &unk_27F7BED20, &unk_2557551D0);
      if ((*(v40 + 48))(v41, 1, v39) == 1)
      {
        sub_255674B20(v41, &unk_27F7BED20, &unk_2557551D0);

        v26 = v88;
        v27 = v89;
      }

      else
      {
        v42 = sub_25574F040();
        v43 = v41;
        v44 = v42;
        v46 = v45;
        (*(v40 + 8))(v43, v39);
        if (v44 == v92 && v46 == v86)
        {

          v26 = v88;
LABEL_57:
          sub_25568B1C8(v26);

          swift_bridgeObjectRelease_n();
          return;
        }

        v47 = sub_255750EB0();

        v26 = v88;
        v27 = v89;
        if (v47)
        {
          goto LABEL_57;
        }
      }
    }

    v20 = v30;
    v21 = v27;
  }

  v28 = v20;
  v29 = v21;
  v30 = v20;
  if (v21)
  {
LABEL_15:
    v27 = (v29 - 1) & v29;
    v31 = *(*(v26 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v31)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v30 >= v25)
    {
      break;
    }

    v29 = *(v18 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_15;
    }
  }

LABEL_28:
  sub_25568B1C8(v26);

  v48 = [v78 insertedObjects];
  v49 = sub_255750580();

  v83 = v49;
  if ((v49 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v50 = v101;
    v88 = v100;
    v51 = v102;
    v52 = v103;
    v53 = v104;
  }

  else
  {
    v54 = -1 << *(v49 + 32);
    v50 = v49 + 56;
    v51 = ~v54;
    v55 = -v54;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v53 = v56 & *(v49 + 56);

    v88 = v49;
    v52 = 0;
  }

  v57 = v81;
  v80 = v51;
  v58 = (v51 + 64) >> 6;
  v26 = v88;
  v84 = v50;
  while (2)
  {
    if (v26 < 0)
    {
      v64 = sub_255750A60();
      if (!v64)
      {
        goto LABEL_57;
      }

      v93 = v64;
      swift_dynamicCast();
      v63 = v94;
      v62 = v52;
      v59 = v53;
      if (!v94)
      {
        goto LABEL_57;
      }

      goto LABEL_46;
    }

    v60 = v52;
    v61 = v53;
    v62 = v52;
    if (v53)
    {
LABEL_42:
      v59 = (v61 - 1) & v61;
      v63 = *(*(v26 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
      if (!v63)
      {
        goto LABEL_57;
      }

LABEL_46:
      v85 = v52;
      v87 = v53;
      type metadata accessor for JournalMO();
      v65 = swift_dynamicCastClass();
      if (v65)
      {
        v66 = v65;
        v89 = v59;
        v90 = v63;
        v67 = [v66 id];
        if (v67)
        {
          v68 = v67;
          sub_25574F080();

          v69 = 0;
        }

        else
        {
          v69 = 1;
        }

        v70 = sub_25574F0D0();
        v71 = *(v70 - 8);
        (*(v71 + 56))(v57, v69, 1, v70);
        v72 = v82;
        sub_255675060(v57, v82, &unk_27F7BED20, &unk_2557551D0);
        if ((*(v71 + 48))(v72, 1, v70) == 1)
        {
          sub_255674B20(v72, &unk_27F7BED20, &unk_2557551D0);

          v26 = v88;
          v59 = v89;
          v50 = v84;
        }

        else
        {
          v73 = sub_25574F040();
          v75 = v74;
          (*(v71 + 8))(v72, v70);
          if (v73 == v92 && v75 == v86)
          {

            goto LABEL_59;
          }

          v76 = sub_255750EB0();

          v57 = v81;
          v26 = v88;
          v59 = v89;
          v50 = v84;
          if (v76)
          {

LABEL_59:
            sub_25568B1C8(v88);

            return;
          }
        }
      }

      v52 = v62;
      v53 = v59;
      continue;
    }

    break;
  }

  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v62 >= v58)
    {
      goto LABEL_57;
    }

    v61 = *(v50 + 8 * v62);
    ++v60;
    if (v61)
    {
      goto LABEL_42;
    }
  }

LABEL_61:
  __break(1u);
}

void sub_2556B69DC(NSObject *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v104 = a1;
  v7 = sub_25574F500();
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x28223BE20](v7);
  v99 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v92 - v10;
  v12 = type metadata accessor for MergeableJournalAttributes(0);
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v92 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v92 - v22;
  v24 = a3;
  v25 = a3;
  v26 = a4;
  v27 = v106;
  sub_2556AD860(v25, a4, v11);
  if (!v27)
  {
    v93 = v18;
    v94 = v21;
    v97 = v23;
    v98 = a2;
    v29 = v104;
    v28 = v105;
    v95 = v15;
    v96 = v24;
    v106 = 0;
    if (v102[6](v11, 1, v103) == 1)
    {
      sub_255674B20(v11, &qword_27F7BE7D8, &qword_255757E98);
      if (qword_27F7BD6B8 != -1)
      {
        swift_once();
      }

      v30 = sub_25574F2C0();
      __swift_project_value_buffer(v30, qword_27F7BDD70);
      v31 = v98;

      v32 = sub_25574F2A0();
      v33 = sub_255750760();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v109 = v35;
        *v34 = 136446722;
        v36 = sub_255750920();
        v38 = sub_2556E474C(v36, v37, &v109);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2082;
        *(v34 + 14) = sub_2556E474C(v96, a4, &v109);
        *(v34 + 22) = 2080;
        v39 = [v31 recordID];
        v40 = [v39 recordName];

        v41 = sub_2557501B0();
        v43 = v42;

        v44 = sub_2556E474C(v41, v43, &v109);

        *(v34 + 24) = v44;
        _os_log_impl(&dword_255661000, v32, v33, "%{public}s record does not have a mergeable value for %{public}s. Retaining local values. Record ID: %s", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v35, -1, -1);
        MEMORY[0x259C3F520](v34, -1, -1);
      }
    }

    else
    {
      v45 = v97;
      sub_2556BBC90(v11, v97, type metadata accessor for MergeableJournalAttributes);
      v108 = v28;
      v46 = v28;
      v47 = v29;
      swift_getAtKeyPath();

      v48 = v109;
      if (v109)
      {
        v49 = v26;
        v50 = v93;
        sub_2556BBB3C(v109 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v93);

        v51 = v94;
        sub_2556BBC90(v50, v94, type metadata accessor for MergeableJournalAttributes);
        v52 = v98;
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v53 = sub_25574F2C0();
        __swift_project_value_buffer(v53, qword_27F7BDD70);
        v54 = v52;

        v55 = sub_25574F2A0();
        v56 = sub_255750760();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v105 = v55;
          v58 = v57;
          v59 = swift_slowAlloc();
          v102 = v54;
          v60 = v59;
          v109 = v59;
          *v58 = 136446722;
          v108 = v47;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7F8, &qword_255757FB8);
          v61 = sub_2557501D0();
          LODWORD(v103) = v56;
          v63 = v46;
          v64 = sub_2556E474C(v61, v62, &v109);

          *(v58 + 4) = v64;
          *(v58 + 12) = 2082;
          v65 = sub_255750920();
          v67 = sub_2556E474C(v65, v66, &v109);

          *(v58 + 14) = v67;
          v46 = v63;
          v51 = v94;
          *(v58 + 22) = 2082;
          *(v58 + 24) = sub_2556E474C(v96, v49, &v109);
          v68 = v105;
          _os_log_impl(&dword_255661000, v105, v103, "Merging %{public}s with %{public}s.%{public}s record", v58, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v60, -1, -1);
          MEMORY[0x259C3F520](v58, -1, -1);
        }

        else
        {
        }

        v84 = v95;
        v86 = v100;
        v85 = v101;
        v87 = v99;
        MergeableJournalAttributes.merge(_:)(v51, v99);
        (*(v86 + 8))(v87, v85);
        sub_2556BBCF8(v51, type metadata accessor for MergeableJournalAttributes);
      }

      else
      {
        v69 = v98;
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v70 = sub_25574F2C0();
        __swift_project_value_buffer(v70, qword_27F7BDD70);
        v71 = v69;
        v72 = v26;

        v73 = sub_25574F2A0();
        v74 = sub_255750760();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v109 = v105;
          *v75 = 136446722;
          v108 = v29;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7F8, &qword_255757FB8);
          v76 = sub_2557501D0();
          v78 = v46;
          v79 = sub_2556E474C(v76, v77, &v109);

          *(v75 + 4) = v79;
          *(v75 + 12) = 2082;
          v80 = sub_255750920();
          v82 = sub_2556E474C(v80, v81, &v109);

          *(v75 + 14) = v82;
          v46 = v78;
          *(v75 + 22) = 2082;
          *(v75 + 24) = sub_2556E474C(v96, v72, &v109);
          _os_log_impl(&dword_255661000, v73, v74, "Local %{public}s is nil. Will set to value from %{public}s.%{public}s record (instead of merging)", v75, 0x20u);
          v83 = v105;
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v83, -1, -1);
          MEMORY[0x259C3F520](v75, -1, -1);
        }

        v84 = v95;
        v45 = v97;
      }

      sub_2556BBB3C(v45, v84);
      v88 = type metadata accessor for WrappedMergeableJournalAttributes(0);
      v89 = objc_allocWithZone(v88);
      sub_2556BBB3C(v84, v89 + OBJC_IVAR___WrappedMergeableJournalAttributes_value);
      v107.receiver = v89;
      v107.super_class = v88;
      v90 = v46;
      v91 = [&v107 init];
      sub_2556BBCF8(v84, type metadata accessor for MergeableJournalAttributes);
      v109 = v90;
      v108 = v91;
      swift_setAtReferenceWritableKeyPath();

      sub_2556BBCF8(v45, type metadata accessor for MergeableJournalAttributes);
    }
  }
}

uint64_t sub_2556B736C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for MergeableAppStorage(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v4, &qword_27F7BE5E8, &qword_255757420);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_255674B20(v4, &qword_27F7BE5E8, &qword_255757420);
    if (qword_27F7BD5E0 != -1)
    {
      swift_once();
    }

    v9 = sub_25574F2C0();
    __swift_project_value_buffer(v9, qword_27F7C0528);
    v10 = sub_25574F2A0();
    v11 = sub_255750780();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_2556E474C(0x61726F7453707041, 0xEC0000004F4D6567, &v16);
      _os_log_impl(&dword_255661000, v10, v11, "Tried to set nil mergeable attributes on %{public}s.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x259C3F520](v13, -1, -1);
      MEMORY[0x259C3F520](v12, -1, -1);
    }

    return sub_255674B20(a1, &qword_27F7BE5E8, &qword_255757420);
  }

  else
  {
    sub_2556BBC90(v4, v8, type metadata accessor for MergeableAppStorage);
    sub_2556ADC68(v8);
    sub_255674B20(a1, &qword_27F7BE5E8, &qword_255757420);
    return sub_2556BBCF8(v8, type metadata accessor for MergeableAppStorage);
  }
}

uint64_t sub_2556B7644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for MergeableJournalAttributes(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v4, &qword_27F7BE7D8, &qword_255757E98);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_255674B20(v4, &qword_27F7BE7D8, &qword_255757E98);
    if (qword_27F7BD5E0 != -1)
    {
      swift_once();
    }

    v9 = sub_25574F2C0();
    __swift_project_value_buffer(v9, qword_27F7C0528);
    v10 = sub_25574F2A0();
    v11 = sub_255750780();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_2556E474C(0x4D6C616E72756F4ALL, 0xE90000000000004FLL, &v16);
      _os_log_impl(&dword_255661000, v10, v11, "Tried to set nil mergeable attributes on %{public}s.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x259C3F520](v13, -1, -1);
      MEMORY[0x259C3F520](v12, -1, -1);
    }

    return sub_255674B20(a1, &qword_27F7BE7D8, &qword_255757E98);
  }

  else
  {
    sub_2556BBC90(v4, v8, type metadata accessor for MergeableJournalAttributes);
    sub_2556ADFBC(v8);
    sub_255674B20(a1, &qword_27F7BE7D8, &qword_255757E98);
    return sub_2556BBCF8(v8, type metadata accessor for MergeableJournalAttributes);
  }
}

uint64_t sub_2556B7918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for MergeableEntryAttributes(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v4, &qword_27F7BE7E8, &unk_255757F00);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_255674B20(v4, &qword_27F7BE7E8, &unk_255757F00);
    if (qword_27F7BD5E0 != -1)
    {
      swift_once();
    }

    v9 = sub_25574F2C0();
    __swift_project_value_buffer(v9, qword_27F7C0528);
    v10 = sub_25574F2A0();
    v11 = sub_255750780();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_2556E474C(0x456C616E72756F4ALL, 0xEE004F4D7972746ELL, &v16);
      _os_log_impl(&dword_255661000, v10, v11, "Tried to set nil mergeable attributes on %{public}s.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x259C3F520](v13, -1, -1);
      MEMORY[0x259C3F520](v12, -1, -1);
    }

    return sub_255674B20(a1, &qword_27F7BE7E8, &unk_255757F00);
  }

  else
  {
    sub_2556BBC90(v4, v8, type metadata accessor for MergeableEntryAttributes);
    sub_2556AE310(v8);
    sub_255674B20(a1, &qword_27F7BE7E8, &unk_255757F00);
    return sub_2556BBCF8(v8, type metadata accessor for MergeableEntryAttributes);
  }
}

uint64_t sub_2556B7BF4()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE7C0);
  v1 = __swift_project_value_buffer(v0, qword_27F7BE7C0);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *static JournalMO.newObjectFromRecord(_:context:)(void *a1, void *a2)
{
  v42 = a2;
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  MEMORY[0x28223BE20](v40);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v41 = a1;
  v19 = [a1 recordID];
  v20 = [v19 recordName];

  sub_2557501B0();
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = [v21 initWithContext_];
  sub_25574F030();

  v23 = *(v4 + 48);
  v24 = 0;
  if (v23(v18, 1, v3) != 1)
  {
    v24 = sub_25574F050();
    (*(v4 + 8))(v18, v3);
  }

  [v22 setId_];

  v25 = 1;
  [v22 setIsUploadedToCloud_];
  v26 = [v22 id];
  v42 = v22;
  if (v26)
  {
    v27 = v26;
    sub_25574F080();

    v25 = 0;
  }

  v28 = *(v4 + 56);
  v28(v16, v25, 1, v3);
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v3, qword_27F7BFF68);
  (*(v4 + 16))(v13, v29, v3);
  v28(v13, 0, 1, v3);
  v30 = *(v40 + 48);
  sub_255663294(v16, v7, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v13, &v7[v30], &unk_27F7BED20, &unk_2557551D0);
  if (v23(v7, 1, v3) == 1)
  {
    sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);
    if (v23(&v7[v30], 1, v3) == 1)
    {
      sub_255674B20(v7, &unk_27F7BED20, &unk_2557551D0);
      v31 = v42;
LABEL_14:
      [v31 setSortCategory_];
      [v31 setSortOrder_];
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v32 = v39;
  sub_255663294(v7, v39, &unk_27F7BED20, &unk_2557551D0);
  if (v23(&v7[v30], 1, v3) == 1)
  {
    sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);
    (*(v4 + 8))(v32, v3);
LABEL_12:
    sub_255674B20(v7, &unk_27F7BFFD0, &unk_255757E80);
    v31 = v42;
    goto LABEL_15;
  }

  v33 = v38;
  (*(v4 + 32))(v38, &v7[v30], v3);
  sub_2556BBBA0(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v34 = v32;
  v35 = sub_255750100();
  v36 = *(v4 + 8);
  v36(v33, v3);
  sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
  sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);
  v36(v34, v3);
  sub_255674B20(v7, &unk_27F7BED20, &unk_2557551D0);
  v31 = v42;
  if (v35)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_2556B8430(v41);
  return v31;
}

void sub_2556B8430(void *a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  KeyPath = swift_getKeyPath();
  sub_2556DB4F8(KeyPath, a1, 0x4464657461657263, 0xEB00000000657461);

  if (!v1)
  {
    v21 = v9;
    v22 = v4;
    v11 = swift_getKeyPath();
    sub_2556DB4F8(v11, a1, 0x4464657461647075, 0xEB00000000657461);

    sub_2556BA7E4(a1);
    v12 = [0 id];
    if (v12)
    {
      v13 = v12;
      sub_25574F080();

      v14 = v22;
      v15 = v21;
      (*(v22 + 32))(v21, v7, v3);
      if (qword_27F7BD820 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_27F7BFF68);
      sub_2556BBBA0(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      if ((sub_255750100() & 1) == 0)
      {
        v16 = [0 managedObjectContext];
        if (v16)
        {
          v17 = v16;
          type metadata accessor for AppStorageMO();
          v18 = static AppStorageMO.sharedStorage(context:)(v17);
          if (!v18)
          {
            (*(v14 + 8))(v15, v3);

            return;
          }

          v19 = v18;
          [0 setSortOrder_];
        }
      }

      (*(v14 + 8))(v15, v3);
    }
  }
}

id JournalMO.cloudKitRecord.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v1);
  v3 = &v67 - v2;
  v71 = type metadata accessor for MergeableJournalAttributes(0);
  v4 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v67 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v67 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  v22 = sub_2556AF81C();
  v73 = v22;
  if (v22)
  {
    v68 = v9;
    [v22 encryptedValues];
    v23 = [v0 updatedDate];
    v69 = v4;
    v70 = v6;
    v72 = v0;
    if (v23)
    {
      v24 = v23;
      sub_25574EFF0();

      v25 = sub_25574F020();
      (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
    }

    else
    {
      v25 = sub_25574F020();
      (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    }

    sub_255675060(v19, v21, &qword_27F7BEB40, &unk_255754E40);
    sub_25574F020();
    v35 = *(v25 - 8);
    v36 = *(v35 + 48);
    v37 = v36(v21, 1, v25);
    v38 = MEMORY[0x277CBBBE8];
    if (v37 == 1)
    {
      sub_255674B20(v21, &qword_27F7BEB40, &unk_255754E40);
      v74 = 0u;
      v75 = 0u;
      v76 = 0;
    }

    else
    {
      *(&v75 + 1) = v25;
      v76 = MEMORY[0x277CBBBE8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
      (*(v35 + 32))(boxed_opaque_existential_1, v21, v25);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v40 = [v73 encryptedValues];
    v41 = [v72 createdDate];
    if (v41)
    {
      v42 = v38;
      v43 = v41;
      sub_25574EFF0();

      v38 = v42;
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = v68;
    (*(v35 + 56))(v13, v44, 1, v25);
    sub_255675060(v13, v16, &qword_27F7BEB40, &unk_255754E40);
    if (v36(v16, 1, v25) == 1)
    {
      sub_255674B20(v16, &qword_27F7BEB40, &unk_255754E40);
      v74 = 0u;
      v75 = 0u;
      v76 = 0;
    }

    else
    {
      *(&v75 + 1) = v25;
      v76 = v38;
      v46 = __swift_allocate_boxed_opaque_existential_1(&v74);
      (*(v35 + 32))(v46, v16, v25);
    }

    v47 = v70;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v48 = [v72 mergeableAttributes];
    if (v48)
    {
      v49 = v48;
      sub_2556BBB3C(v48 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v45);

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v51 = v71;
    v52 = v69;
    (*(v69 + 56))(v45, v50, 1, v71);
    if ((*(v52 + 48))(v45, 1, v51))
    {
      sub_255674B20(v45, &qword_27F7BE7D8, &qword_255757E98);
      v53 = 0;
      v54 = 0xF000000000000000;
    }

    else
    {
      sub_2556BBB3C(v45, v47);
      sub_255674B20(v45, &qword_27F7BE7D8, &qword_255757E98);
      if (qword_27F7BD768 != -1)
      {
        swift_once();
      }

      if (qword_27F7BD760 != -1)
      {
        swift_once();
      }

      v60 = sub_25574F770();
      __swift_project_value_buffer(v60, qword_27F7C0570);
      sub_2556BBBA0(&qword_27F7BDF10, type metadata accessor for MergeableJournalAttributes, &protocol conformance descriptor for MergeableJournalAttributes);
      v53 = sub_25574F4B0();
      v54 = v61;
      sub_2556BBCF8(v47, type metadata accessor for MergeableJournalAttributes);
    }

    v55 = [v73 encryptedValues];
    if (v54 >> 60 == 15)
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      *&v75 = 0;
    }

    else
    {
      v59 = MEMORY[0x277CBBBE0];
      v58 = MEMORY[0x277CC9318];
      v56 = v53;
      v57 = v54;
    }

    *&v74 = v56;
    *(&v74 + 1) = v57;
    *(&v75 + 1) = v58;
    v76 = v59;
    swift_getObjectType();
    sub_25567625C(v53, v54);
    sub_2557508E0();
    sub_2556A15B8(v53, v54);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F7BD710 != -1)
    {
      swift_once();
    }

    v26 = sub_25574F2C0();
    __swift_project_value_buffer(v26, qword_27F7BE7C0);
    v27 = v0;
    v28 = sub_25574F2A0();
    v29 = sub_255750780();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v74 = v31;
      *v30 = 136315138;
      v32 = [v27 id];
      if (v32)
      {
        v33 = v32;
        sub_25574F080();

        v34 = sub_25574F0D0();
        (*(*(v34 - 8) + 56))(v3, 0, 1, v34);
      }

      else
      {
        v62 = sub_25574F0D0();
        (*(*(v62 - 8) + 56))(v3, 1, 1, v62);
      }

      v63 = sub_2557501D0();
      v65 = sub_2556E474C(v63, v64, &v74);

      *(v30 + 4) = v65;
      _os_log_impl(&dword_255661000, v28, v29, "Failed to create partial CKRecord for JournalMO with id: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x259C3F520](v31, -1, -1);
      MEMORY[0x259C3F520](v30, -1, -1);
    }
  }

  return v73;
}

void static JournalMO.resolveDifferences(object:record:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E0, "ԧ");
  MEMORY[0x28223BE20](v5 - 8);
  v164 = &v159 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v159 - v11;
  v13 = sub_25574F020();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v172 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v159 - v18;
  MEMORY[0x28223BE20](v17);
  v173 = &v159 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v166 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v165 = &v159 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v169 = &v159 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v168 = &v159 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v176 = &v159 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v159 - v32;
  v34 = type metadata accessor for MergeableJournalAttributes(0);
  v35 = *(v34 - 8);
  v177 = v34;
  v178 = v35;
  v36 = MEMORY[0x28223BE20](v34);
  v171 = &v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v167 = &v159 - v39;
  MEMORY[0x28223BE20](v38);
  v175 = &v159 - v40;
  if ([a1 userDeleted])
  {
    if (qword_27F7BD710 != -1)
    {
      swift_once();
    }

    v41 = sub_25574F2C0();
    __swift_project_value_buffer(v41, qword_27F7BE7C0);
    v42 = a2;
    v43 = sub_25574F2A0();
    v44 = sub_255750780();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v179 = v46;
      *v45 = 136315138;
      v47 = [v42 recordID];
      v48 = [v47 recordName];

      v49 = sub_2557501B0();
      v51 = v50;

      v52 = sub_2556E474C(v49, v51, &v179);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_255661000, v43, v44, "Received an update to a deleted Journal %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x259C3F520](v46, -1, -1);
      MEMORY[0x259C3F520](v45, -1, -1);
    }

LABEL_6:

    return;
  }

  v160 = v14;
  v161 = v13;
  v162 = a1;
  v53 = [a1 recordSystemFields];
  v163 = v2;
  if (v53 && (v54 = v53, v55 = sub_25574EF90(), v57 = v56, v54, sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0), (v58 = CKRecord.init(systemFields:)(v55, v57)) != 0) && (v59 = v58, v60 = [v58 recordChangeTag], v59, v60))
  {
    v61 = sub_2557501B0();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v174 = a2;
  v64 = [a2 recordChangeTag];
  if (!v64)
  {
    v69 = v174;
    if (!v63)
    {
      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_31;
  }

  v65 = v64;
  v66 = sub_2557501B0();
  v68 = v67;

  if (!v63)
  {
    v69 = v174;
    if (!v68)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v69 = v174;
  if (!v68)
  {
    goto LABEL_21;
  }

  if (v61 == v66 && v63 == v68)
  {
  }

  else
  {
    v70 = sub_255750EB0();

    if ((v70 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

LABEL_23:
  v71 = [v162 recordSystemFields];
  if (v71)
  {
    v72 = v71;
    v73 = sub_25574EF90();
    v75 = v74;

    sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
    v76 = CKRecord.init(systemFields:)(v73, v75);
    if (v76)
    {
      v77 = v76;
      v78 = [v76 recordChangeTag];

      if (v78)
      {

        if (qword_27F7BD710 != -1)
        {
          swift_once();
        }

        v79 = sub_25574F2C0();
        __swift_project_value_buffer(v79, qword_27F7BE7C0);
        v80 = v69;
        v43 = sub_25574F2A0();
        v81 = sub_255750770();

        if (os_log_type_enabled(v43, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v179 = v83;
          *v82 = 136315650;
          v84 = sub_255750920();
          v86 = sub_2556E474C(v84, v85, &v179);

          *(v82 + 4) = v86;
          *(v82 + 12) = 2080;
          v87 = [v80 recordID];
          v88 = [v87 recordName];

          v89 = sub_2557501B0();
          v91 = v90;

          v92 = sub_2556E474C(v89, v91, &v179);

          *(v82 + 14) = v92;
          *(v82 + 22) = 2080;
          v93 = sub_255751020();
          v95 = sub_2556E474C(v93, v94, &v179);

          *(v82 + 24) = v95;
          _os_log_impl(&dword_255661000, v43, v81, "Ignoring remote %s record update with ID %s because %s has the most recent server changes", v82, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v83, -1, -1);
          MEMORY[0x259C3F520](v82, -1, -1);
        }

        goto LABEL_6;
      }
    }
  }

LABEL_31:
  v96 = v163;
  sub_2556AD860(0xD000000000000013, 0x8000000255757E80, v33);
  if (v96)
  {
    return;
  }

  v97 = *(v178 + 48);
  if (v97(v33, 1, v177) == 1)
  {
    sub_255674B20(v33, &qword_27F7BE7D8, &qword_255757E98);
    sub_25568B1D0();
    swift_allocError();
    *v98 = 3;
    swift_willThrow();
    return;
  }

  sub_2556BBC90(v33, v175, type metadata accessor for MergeableJournalAttributes);
  v99 = v162;
  v100 = [v162 mergeableAttributes];
  if (v100)
  {
    v101 = v100;
    v102 = v176;
    sub_2556BBB3C(v100 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v176);

    v99 = v162;
    v103 = 0;
  }

  else
  {
    v103 = 1;
    v102 = v176;
  }

  v104 = *(v178 + 56);
  v178 += 56;
  v170 = v104;
  v104(v102, v103, 1, v177);
  v105 = [v99 updatedDate];
  if (v105)
  {
    v106 = v105;
    sub_25574EFF0();

    v107 = v160;
    v108 = *(v160 + 32);
    v109 = v19;
    v110 = v161;
    v108(v12, v109, v161);
    (*(v107 + 56))(v12, 0, 1, v110);
    v108(v173, v12, v110);
  }

  else
  {
    v112 = v160;
    v111 = v161;
    (*(v160 + 56))(v12, 1, 1, v161);
    sub_25574EFB0();
    if ((*(v112 + 48))(v12, 1, v111) != 1)
    {
      sub_255674B20(v12, &qword_27F7BEB40, &unk_255754E40);
    }
  }

  sub_2556E2EE0(0x4464657461647075, 0xEB00000000657461, v10);
  v114 = v160;
  v113 = v161;
  v115 = *(v160 + 48);
  if (v115(v10, 1, v161) == 1)
  {
    v116 = v172;
    sub_25574EFB0();
    v117 = v115(v10, 1, v113);
    v118 = v162;
    if (v117 != 1)
    {
      sub_255674B20(v10, &qword_27F7BEB40, &unk_255754E40);
    }
  }

  else
  {
    v119 = *(v114 + 32);
    v116 = v172;
    v119(v172, v10, v113);
    v118 = v162;
  }

  v120 = sub_25574EFD0();
  v121 = v171;
  if (v120)
  {
    v122 = v175;
    if (qword_27F7BD710 != -1)
    {
      swift_once();
    }

    v123 = sub_25574F2C0();
    __swift_project_value_buffer(v123, qword_27F7BE7C0);
    v124 = v168;
    sub_255663294(v176, v168, &qword_27F7BE7D8, &qword_255757E98);
    v125 = v167;
    sub_2556BBB3C(v122, v167);
    v126 = sub_25574F2A0();
    v127 = sub_255750770();
    v128 = os_log_type_enabled(v126, v127);
    v129 = v174;
    if (v128)
    {
      v130 = swift_slowAlloc();
      *v130 = 67109120;
      MEMORY[0x28223BE20](v130);
      *(&v159 - 2) = v125;
      v131 = sub_2556BA600(sub_2556BBBE8);
      v132 = v131 != 2 && (v131 & 1) != 0;
      sub_255674B20(v124, &qword_27F7BE7D8, &qword_255757E98);
      sub_2556BBCF8(v125, type metadata accessor for MergeableJournalAttributes);
      *(v130 + 4) = v132;
      _os_log_impl(&dword_255661000, v126, v127, "Remote Journal record changes are newer. Used LWW for non-mergeable fields; has local attributes to merge: %{BOOL}d.", v130, 8u);
      MEMORY[0x259C3F520](v130, -1, -1);
      v118 = v162;
    }

    else
    {
      sub_255674B20(v124, &qword_27F7BE7D8, &qword_255757E98);
      sub_2556BBCF8(v125, type metadata accessor for MergeableJournalAttributes);
    }

    v141 = v129;
    sub_2556B8430(v129);
    v116 = v172;
    v144 = v118;
    v133 = v175;
    goto LABEL_67;
  }

  v133 = v175;
  if (qword_27F7BD710 != -1)
  {
    swift_once();
  }

  v134 = sub_25574F2C0();
  __swift_project_value_buffer(v134, qword_27F7BE7C0);
  v135 = v169;
  sub_255663294(v176, v169, &qword_27F7BE7D8, &qword_255757E98);
  sub_2556BBB3C(v133, v121);
  v136 = sub_25574F2A0();
  v137 = v121;
  v138 = sub_255750770();
  if (os_log_type_enabled(v136, v138))
  {
    v139 = swift_slowAlloc();
    *v139 = 67109120;
    v140 = v165;
    sub_255663294(v135, v165, &qword_27F7BE7D8, &qword_255757E98);
    if (v97(v140, 1, v177) == 1)
    {
      sub_255674B20(v140, &qword_27F7BE7D8, &qword_255757E98);
      v141 = v174;
      v142 = v166;
      v143 = v170;
    }

    else
    {
      sub_2556BBBA0(&qword_27F7BDF18, type metadata accessor for MergeableJournalAttributes, &protocol conformance descriptor for MergeableJournalAttributes);
      v145 = v164;
      sub_25574FD60();
      v146 = type metadata accessor for MergeableJournalAttributes.ObservableDifference(0);
      v147 = v140;
      v148 = 1;
      v149 = (*(*(v146 - 8) + 48))(v145, 1, v146);
      sub_255674B20(v145, &qword_27F7BE7E0, "ԧ");
      sub_2556BBCF8(v147, type metadata accessor for MergeableJournalAttributes);
      v150 = v149 == 1;
      v141 = v174;
      v142 = v166;
      v143 = v170;
      if (!v150)
      {
        goto LABEL_65;
      }
    }

    v148 = 0;
LABEL_65:
    sub_255674B20(v135, &qword_27F7BE7D8, &qword_255757E98);
    sub_2556BBCF8(v171, type metadata accessor for MergeableJournalAttributes);
    *(v139 + 4) = v148;
    _os_log_impl(&dword_255661000, v136, v138, "Local JournalMO changes are newer. Requires merging coherence values with record: %{BOOL}d.", v139, 8u);
    MEMORY[0x259C3F520](v139, -1, -1);
    v116 = v172;
    v133 = v175;
    goto LABEL_66;
  }

  sub_255674B20(v135, &qword_27F7BE7D8, &qword_255757E98);
  sub_2556BBCF8(v137, type metadata accessor for MergeableJournalAttributes);
  v141 = v174;
  v142 = v166;
  v143 = v170;
LABEL_66:

  sub_2556BBB3C(v133, v142);
  v143(v142, 0, 1, v177);
  v144 = v162;
  sub_2556B7644(v142);
LABEL_67:
  v151 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v141 encodeSystemFieldsWithCoder_];
  v152 = [v151 encodedData];
  v153 = sub_25574EF90();
  v155 = v154;

  v156 = sub_25574EF80();
  sub_2556755A8(v153, v155);
  [v144 setRecordSystemFields_];

  v157 = v161;
  v158 = *(v160 + 8);
  v158(v116, v161);
  v158(v173, v157);
  sub_255674B20(v176, &qword_27F7BE7D8, &qword_255757E98);
  sub_2556BBCF8(v133, type metadata accessor for MergeableJournalAttributes);
}

uint64_t sub_2556BA4B0@<X0>(BOOL *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E0, "ԧ");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  type metadata accessor for MergeableJournalAttributes(0);
  sub_2556BBBA0(&qword_27F7BDF18, type metadata accessor for MergeableJournalAttributes, &protocol conformance descriptor for MergeableJournalAttributes);
  sub_25574FD60();
  v6 = type metadata accessor for MergeableJournalAttributes.ObservableDifference(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  result = sub_255674B20(v5, &qword_27F7BE7E0, "ԧ");
  *a2 = v7;
  return result;
}

uint64_t sub_2556BA600(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = type metadata accessor for MergeableJournalAttributes(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_255663294(v1, &v11 - v8, &qword_27F7BE7D8, &qword_255757E98);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 2;
  }

  sub_2556BBC90(v9, v6, type metadata accessor for MergeableJournalAttributes);
  v12(&v13, v6);
  if (v2)
  {
    result = sub_2556BBCF8(v6, type metadata accessor for MergeableJournalAttributes);
    __break(1u);
  }

  else
  {
    sub_2556BBCF8(v6, type metadata accessor for MergeableJournalAttributes);
    return v13;
  }

  return result;
}

uint64_t sub_2556BA7E4(void *a1)
{
  KeyPath = swift_getKeyPath();
  sub_2556B69DC(KeyPath, a1, 0xD000000000000013, 0x8000000255757E80);
  if (!v1)
  {
  }

  if (qword_27F7BD710 != -1)
  {
    swift_once();
  }

  v4 = sub_25574F2C0();
  __swift_project_value_buffer(v4, qword_27F7BE7C0);
  v5 = v1;
  v6 = sub_25574F2A0();
  v7 = sub_255750780();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_255661000, v6, v7, "Error updating mergeable attributes: %@", v8, 0xCu);
    sub_255674B20(v9, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v9, -1, -1);
    MEMORY[0x259C3F520](v8, -1, -1);
  }

  return swift_willThrow();
}

uint64_t static JournalMO.deleteObjectForRecordID(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v7 = sub_2557508A0();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_255750490();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[8] = v8;
  v5[9] = v10;

  return MEMORY[0x2822009F8](sub_2556BAA94, v8, v10);
}

uint64_t sub_2556BAA94()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = v6;
  v9 = v5;
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_2556BABC8;
  v11 = v0[7];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v10, v11, sub_2556BBC08, v7, v12);
}

uint64_t sub_2556BABC8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = sub_2556BADE8;
  }

  else
  {
    v8 = sub_2556BAD84;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2556BAD84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2556BADE8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2556BAE4C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v53 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = sub_25574F0D0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v49 - v15);
  v55 = a2;
  v17 = [a2 recordName];
  v18 = sub_2557501B0();
  v20 = v19;

  sub_25574F030();
  v56 = *(v12 + 48);
  if (v56(v10, 1, v11) == 1)
  {
    v52 = v12;
    sub_255674B20(v10, &unk_27F7BED20, &unk_2557551D0);
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    v42 = v58;
    sub_255727DC8(v16);
    v58 = v42;
    if (v42)
    {
      (*(v12 + 8))(v16, v11);

      return;
    }

    v22 = v43;
    (*(v12 + 8))(v16, v11);
    if (v22)
    {

      goto LABEL_14;
    }

    v52 = v12;
  }

  sub_2556B60A8(v18, v20, a3);
  v22 = v21;

  if (v22)
  {
LABEL_14:
    [v22 setIsUploadedToCloud_];
    [v22 setUserDeleted_];
    [v22 setMergeableAttributes_];
    [v22 setCreatedDate_];
    [v22 setRecordSystemFields_];
    sub_255669A88(0, &qword_27F7BE7F0, 0x277CBEB98);
    v44 = MEMORY[0x259C3E5C0](MEMORY[0x277D84F90]);
    [v22 setEntries_];

    return;
  }

  v50 = a3;
  if (qword_27F7BD710 != -1)
  {
    swift_once();
  }

  v51 = v11;
  v23 = sub_25574F2C0();
  __swift_project_value_buffer(v23, qword_27F7BE7C0);
  v24 = v55;
  v25 = sub_25574F2A0();
  v26 = sub_255750760();

  v27 = &property descriptor for JournalMO.isUploadedToCloud;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v59 = v29;
    *v28 = 136315394;
    v30 = sub_255751020();
    v32 = sub_2556E474C(v30, v31, &v59);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = [v24 recordName];
    v34 = sub_2557501B0();
    v36 = v35;

    v37 = sub_2556E474C(v34, v36, &v59);

    *(v28 + 14) = v37;
    v27 = &property descriptor for JournalMO.isUploadedToCloud;
    _os_log_impl(&dword_255661000, v25, v26, "Could not find %s object to delete for record ID %s. Creating a tombstone.", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v29, -1, -1);
    MEMORY[0x259C3F520](v28, -1, -1);
  }

  v38 = v52;
  v39 = [v24 v27[56]];
  sub_2557501B0();

  v40 = v57;
  sub_25574F030();

  v41 = v51;
  if (v56(v40, 1, v51) == 1)
  {
    sub_255674B20(v40, &unk_27F7BED20, &unk_2557551D0);
  }

  else
  {
    v45 = v54;
    (*(v38 + 32))(v54, v40, v41);
    type metadata accessor for JournalMO();
    v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v47 = [v46 initWithContext_];
    v48 = sub_25574F050();
    [v47 setId_];

    [v47 setUserDeleted_];
    [v47 setMergeableAttributes_];
    [v47 setCreatedDate_];

    (*(v38 + 8))(v45, v41);
  }
}

uint64_t sub_2556BB4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_25568AC58;

  return static JournalMO.deleteObjectForRecordID(_:context:)(a1, a2, a3, a4);
}

id _s13JournalShared0A2MOC22objectsToSavePredicateSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755030;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_255666F5C();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000002557523D0;
  *(v0 + 32) = sub_255750750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755060;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000255757E80;
  *(v0 + 40) = sub_255750750();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255755060;
  *(v5 + 56) = v2;
  *(v5 + 64) = v3;
  *(v5 + 32) = 0x656C654472657375;
  *(v5 + 40) = 0xEB00000000646574;
  *(v0 + 48) = sub_255750750();
  v6 = sub_255750370();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

id _s13JournalShared0A2MOC24objectsToDeletePredicateSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755070;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_255666F5C();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000002557523D0;
  *(v0 + 32) = sub_255750750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755060;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000255757E80;
  *(v0 + 40) = sub_255750750();
  v5 = sub_255750370();

  v6 = objc_opt_self();
  v7 = [v6 orPredicateWithSubpredicates_];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755070;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_255755060;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 32) = 0x656C654472657375;
  *(v9 + 40) = 0xEB00000000646574;
  *(v8 + 32) = sub_255750750();
  *(v8 + 40) = v7;
  v10 = v7;
  v11 = sub_255750370();

  v12 = [v6 andPredicateWithSubpredicates_];

  return v12;
}

void sub_2556BBA68(void *a1)
{
  [a1 setIsUploadedToCloud_];
  [a1 setUserDeleted_];
  [a1 setMergeableAttributes_];
  [a1 setCreatedDate_];
  [a1 setRecordSystemFields_];
  sub_255669A88(0, &qword_27F7BE7F0, 0x277CBEB98);
  v2 = MEMORY[0x259C3E5C0](MEMORY[0x277D84F90]);
  [a1 setEntries_];
}

uint64_t sub_2556BBB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableJournalAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556BBBA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2556BBC28(uint64_t a1)
{
  result = sub_2556BBBA0(&unk_27F7BED80, type metadata accessor for JournalMO, &protocol conformance descriptor for JournalMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2556BBC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556BBCF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2556BBD7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v41 = sub_25574F0D0();
  v6 = *(v41 - 8);
  v7 = MEMORY[0x28223BE20](v41);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v32 - v9;
  v37 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    type metadata accessor for JournalMO();
    sub_25567AF9C(&qword_27F7BE0A8, type metadata accessor for JournalMO, MEMORY[0x277D85378]);
    result = sub_2557505C0();
    a1 = v43;
    v11 = v44;
    v12 = v45;
    v13 = v46;
    v14 = v47;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v13 = 0;
  }

  v36 = v12;
  v39 = (v6 + 48);
  v40 = (v6 + 56);
  v32 = v6;
  v33 = (v6 + 32);
  v38 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v21 = sub_255750A60();
    if (!v21 || (v42 = v21, type metadata accessor for JournalMO(), swift_dynamicCast(), (v20 = v48) == 0))
    {
LABEL_27:
      sub_25568B1C8(a1);
      return v38;
    }

LABEL_17:
    v22 = [v20 id];
    if (v22)
    {
      v23 = v22;
      sub_25574F080();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = v41;
    (*v40)(v5, v24, 1, v41);

    if ((*v39)(v5, 1, v25) == 1)
    {
      result = sub_255674B20(v5, &unk_27F7BED20, &unk_2557551D0);
    }

    else
    {
      v26 = *v33;
      v27 = v41;
      (*v33)(v34, v5, v41);
      v26(v35, v34, v27);
      v28 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_255698A7C(0, v38[2] + 1, 1, v38);
      }

      v30 = v38[2];
      v29 = v38[3];
      if (v30 >= v29 >> 1)
      {
        v38 = sub_255698A7C((v29 > 1), v30 + 1, 1, v38);
      }

      v31 = v38;
      v38[2] = v30 + 1;
      result = (v28)(v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30, v35, v41);
    }
  }

  v18 = v13;
  v19 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v13 >= ((v12 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v19 = *(v11 + 8 * v13);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2556BC1EC()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE800);
  v1 = __swift_project_value_buffer(v0, qword_27F7BE800);
  if (qword_27F7BD5E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0528);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t JournalEntryMO.mergeableAttributedText.setter(uint64_t a1)
{
  v3 = sub_25574F500();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7A0, &qword_255757E38);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  sub_255663294(a1, v13, &qword_27F7BE7A0, &qword_255757E38);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_255674B20(a1, &qword_27F7BE7A0, &qword_255757E38);
    v18 = v13;
    v19 = &qword_27F7BE7A0;
    v20 = &qword_255757E38;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v21 = [v1 mergeableAttributes];
    if (v21)
    {
      v22 = v21;
      sub_255678960(v21 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v10, type metadata accessor for MergeableEntryAttributes);

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = type metadata accessor for MergeableEntryAttributes(0);
    v25 = *(v24 - 8);
    (*(v25 + 56))(v10, v23, 1, v24);
    if (!(*(v25 + 48))(v10, 1, v24))
    {
      v27 = v29;
      sub_25574FA10();
      (*(v30 + 8))(v27, v31);
      sub_2556B7918(v10);
      sub_255674B20(a1, &qword_27F7BE7A0, &qword_255757E38);
      return (*(v15 + 8))(v17, v14);
    }

    sub_255663294(v10, v8, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v8);
    sub_255674B20(a1, &qword_27F7BE7A0, &qword_255757E38);
    (*(v15 + 8))(v17, v14);
    v18 = v10;
    v19 = &qword_27F7BE7E8;
    v20 = &unk_255757F00;
  }

  return sub_255674B20(v18, v19, v20);
}

void (*JournalEntryMO.mergeableAttributedText.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7A0, &qword_255757E38) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  JournalEntryMO.mergeableAttributedText.getter(v4);
  return sub_2556BC7C8;
}

uint64_t JournalEntryMO.mergeableAttributedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = [v2 mergeableAttributes];
  if (v11)
  {
    v12 = v11;
    sub_255678960(v11 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v10, type metadata accessor for MergeableEntryAttributes);

    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_255674B20(v10, &qword_27F7BE7E8, &unk_255757F00);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_255678960(v10, v7, type metadata accessor for MergeableEntryAttributes);
    sub_255674B20(v10, &qword_27F7BE7E8, &unk_255757F00);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a1, v7, v15);
    sub_2556C0F6C(v7, type metadata accessor for MergeableEntryAttributes);
    return (*(v16 + 56))(a1, 0, 1, v15);
  }
}

uint64_t sub_2556BCAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_255663294(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t JournalEntryMO.mergeableAttributedTitle.setter(uint64_t a1)
{
  v2 = sub_25574F500();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE820, &qword_255757FD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  sub_255663294(a1, v12, &qword_27F7BE820, &qword_255757FD8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_255674B20(a1, &qword_27F7BE820, &qword_255757FD8);
    v20 = v12;
    v21 = &qword_27F7BE820;
    v22 = &qword_255757FD8;
  }

  else
  {
    v34 = a1;
    (*(v14 + 32))(v19, v12, v13);
    v23 = [v38 mergeableAttributes];
    if (v23)
    {
      v24 = v23;
      sub_255678960(v23 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v9, type metadata accessor for MergeableEntryAttributes);

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = type metadata accessor for MergeableEntryAttributes(0);
    v27 = *(v26 - 8);
    (*(v27 + 56))(v9, v25, 1, v26);
    if (!(*(v27 + 48))(v9, 1, v26))
    {
      (*(v14 + 16))(v17, v19, v13);
      v29 = v35;
      sub_25574FA10();
      v30 = v37;
      v31 = *(v36 + 8);
      v31(v29, v37);
      sub_25574FA10();
      v31(v29, v30);
      v32 = *(v14 + 8);
      v32(v17, v13);
      sub_2556B7918(v9);
      sub_255674B20(v34, &qword_27F7BE820, &qword_255757FD8);
      return (v32)(v19, v13);
    }

    sub_255663294(v9, v7, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v7);
    sub_255674B20(v34, &qword_27F7BE820, &qword_255757FD8);
    (*(v14 + 8))(v19, v13);
    v20 = v9;
    v21 = &qword_27F7BE7E8;
    v22 = &unk_255757F00;
  }

  return sub_255674B20(v20, v21, v22);
}

void (*JournalEntryMO.mergeableAttributedTitle.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE820, &qword_255757FD8) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  JournalEntryMO.mergeableAttributedTitle.getter(v4);
  return sub_2556BD114;
}

void sub_2556BD13C(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2)
  {
    sub_255663294(v7, v6, a4, a5);
    a3(v6);
    sub_255674B20(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

uint64_t JournalEntryMO.mergeableAssetPlacement.setter(uint64_t a1)
{
  v2 = sub_25574F500();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE828, &qword_255757FE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  sub_255663294(a1, v12, &qword_27F7BE828, &qword_255757FE0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_255674B20(a1, &qword_27F7BE828, &qword_255757FE0);
    v20 = v12;
    v21 = &qword_27F7BE828;
    v22 = &qword_255757FE0;
  }

  else
  {
    sub_255678A44(v12, v19);
    v23 = [v37 mergeableAttributes];
    if (v23)
    {
      v24 = v23;
      sub_255678960(v23 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v9, type metadata accessor for MergeableEntryAttributes);

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = type metadata accessor for MergeableEntryAttributes(0);
    v27 = *(v26 - 8);
    (*(v27 + 56))(v9, v25, 1, v26);
    if (!(*(v27 + 48))(v9, 1, v26))
    {
      sub_255678960(v19, v17, type metadata accessor for MergeableEntryAssetsPlacement);
      v33 = a1;
      v29 = v34;
      MergeableEntryAssetsPlacement.merge(_:)(&v9[*(v26 + 24)], v34);
      v30 = v36;
      v31 = *(v35 + 8);
      v31(v29, v36);
      MergeableEntryAssetsPlacement.merge(_:)(v17, v29);
      v31(v29, v30);
      sub_2556C0F6C(v17, type metadata accessor for MergeableEntryAssetsPlacement);
      sub_2556B7918(v9);
      sub_255674B20(v33, &qword_27F7BE828, &qword_255757FE0);
      return sub_2556C0F6C(v19, type metadata accessor for MergeableEntryAssetsPlacement);
    }

    sub_255663294(v9, v7, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v7);
    sub_255674B20(a1, &qword_27F7BE828, &qword_255757FE0);
    sub_2556C0F6C(v19, type metadata accessor for MergeableEntryAssetsPlacement);
    v20 = v9;
    v21 = &qword_27F7BE7E8;
    v22 = &unk_255757F00;
  }

  return sub_255674B20(v20, v21, v22);
}

void (*JournalEntryMO.mergeableAssetPlacement.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE828, &qword_255757FE0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  JournalEntryMO.mergeableAssetPlacement.getter(v4);
  return sub_2556BD748;
}

uint64_t sub_2556BD770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = type metadata accessor for MergeableEntryAttributes(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = [v1 mergeableAttributes];
  if (v13)
  {
    v14 = v13;
    sub_255678960(v13 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v12, type metadata accessor for MergeableEntryAttributes);

    (*(v7 + 56))(v12, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v12, 1, 1, v6);
  }

  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
    return 0;
  }

  else
  {
    sub_255678960(v12, v9, type metadata accessor for MergeableEntryAttributes);
    sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
    (*(v3 + 16))(v5, &v9[*(v6 + 28)], v2);
    v16 = sub_255695518();
    sub_2556C0F6C(v9, type metadata accessor for MergeableEntryAttributes);
    return v16;
  }
}

uint64_t JournalEntryMO.unformattedMergeableText.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7A0, &qword_255757E38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  JournalEntryMO.mergeableAttributedText.getter(&v11 - v5);
  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_255674B20(v6, &qword_27F7BE7A0, &qword_255757E38);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_255674B20(v6, &qword_27F7BE7A0, &qword_255757E38);
    v8 = sub_25574F880();
    (*(v1 + 8))(v3, v0);
    v9 = [v8 string];

    v10 = sub_2557501B0();
    return v10;
  }
}

uint64_t JournalEntryMO.unformattedMergeableTitle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE820, &qword_255757FD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  JournalEntryMO.mergeableAttributedTitle.getter(&v11 - v5);
  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_255674B20(v6, &qword_27F7BE820, &qword_255757FD8);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_255674B20(v6, &qword_27F7BE820, &qword_255757FD8);
    v8 = sub_25574F880();
    (*(v1 + 8))(v3, v0);
    v9 = [v8 string];

    v10 = sub_2557501B0();
    return v10;
  }
}

uint64_t sub_2556BDE00(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = [v1 mergeableAttributes];
  if (!v13)
  {
    if (qword_27F7BD718 != -1)
    {
      swift_once();
    }

    v14 = sub_25574F2C0();
    __swift_project_value_buffer(v14, qword_27F7BE800);
    v13 = sub_25574F2A0();
    v15 = sub_255750780();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      v23 = v3;
      v17 = v16;
      *v16 = 0;
      _os_log_impl(&dword_255661000, v13, v15, "Attempting to add an associated journal but there's no mergeable attributes", v16, 2u);
      v3 = v23;
      MEMORY[0x259C3F520](v17, -1, -1);
    }
  }

  v18 = [v2 mergeableAttributes];
  if (v18)
  {
    v19 = v18;
    sub_255678960(v18 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v12, type metadata accessor for MergeableEntryAttributes);

    v20 = type metadata accessor for MergeableEntryAttributes(0);
    (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  }

  else
  {
    v20 = type metadata accessor for MergeableEntryAttributes(0);
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  }

  type metadata accessor for MergeableEntryAttributes(0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20))
  {
    sub_255663294(v12, v10, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v10);
    return sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_25574FC60();
    (*(v4 + 8))(v6, v3);
    return sub_2556B7918(v12);
  }
}

uint64_t sub_2556BE1B0(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = [v1 mergeableAttributes];
  if (!v12)
  {
    if (qword_27F7BD718 != -1)
    {
      swift_once();
    }

    v13 = sub_25574F2C0();
    __swift_project_value_buffer(v13, qword_27F7BE800);
    v12 = sub_25574F2A0();
    v14 = sub_255750780();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_255661000, v12, v14, "Attempting to remove an associated journal but there's no mergeable attributes", v15, 2u);
      MEMORY[0x259C3F520](v15, -1, -1);
    }
  }

  v16 = [v2 mergeableAttributes];
  if (v16)
  {
    v17 = v16;
    sub_255678960(v16 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v11, type metadata accessor for MergeableEntryAttributes);

    v18 = type metadata accessor for MergeableEntryAttributes(0);
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  }

  else
  {
    v18 = type metadata accessor for MergeableEntryAttributes(0);
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  type metadata accessor for MergeableEntryAttributes(0);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18))
  {
    sub_255663294(v11, v9, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v9);
    return sub_255674B20(v11, &qword_27F7BE7E8, &unk_255757F00);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_25574FC70();
    sub_255674B20(v5, &unk_27F7BED20, &unk_2557551D0);
    return sub_2556B7918(v11);
  }
}

void JournalEntryMO.add(to:)(void *a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 id];
  if (v7)
  {
    v8 = v7;
    sub_25574F080();

    sub_2556BDE00(v6);
    [v1 addJournalsObject_];
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_27F7BD718 != -1)
    {
      swift_once();
    }

    v9 = sub_25574F2C0();
    __swift_project_value_buffer(v9, qword_27F7BE800);
    v10 = a1;
    v17 = sub_25574F2A0();
    v11 = sub_255750780();

    if (os_log_type_enabled(v17, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      _os_log_impl(&dword_255661000, v17, v11, "Could not add entry to journal %@ as it's missing an id", v12, 0xCu);
      sub_255674B20(v13, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v13, -1, -1);
      MEMORY[0x259C3F520](v12, -1, -1);
    }

    v15 = v17;
  }
}

id JournalEntryMO.remove(from:)(void *a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  result = [a1 id];
  if (result)
  {
    v11 = result;
    sub_25574F080();

    (*(v4 + 32))(v9, v7, v3);
    sub_2556BE1B0(v9);
    [v1 removeJournalsObject_];
    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JournalEntryMO.cacheJournalRelationships()()
{
  v1 = v0;
  v2 = sub_25574F0D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v150 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v151 = &v131 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v131 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v149 = &v131 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v131 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v157 = &v131 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v152 = &v131 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v131 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v156 = &v131 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v131 - v28;
  v30 = [v1 managedObjectContext];
  if (!v30)
  {
    return;
  }

  v31 = v30;
  v142 = v29;
  v137 = v9;
  v32 = sub_2556BD770();
  if (!v32)
  {

    return;
  }

  v33 = v32;
  v147 = v3;
  v155 = v1;
  v34 = [v1 journals];
  v35 = MEMORY[0x277D84FA0];
  if (v34)
  {
    v36 = v34;
    v166 = 0;
    type metadata accessor for JournalMO();
    sub_25567AF9C(&qword_27F7BE0A8, type metadata accessor for JournalMO, MEMORY[0x277D85378]);
    sub_255750570();

    if (v166)
    {
      v35 = v166;
    }
  }

  v139 = v33;
  v146 = v25;
  v144 = v18;
  v145 = v13;
  v148 = v2;
  v138 = v31;
  v37 = v158;
  v38 = sub_2556BBD7C(v35);
  v158 = v37;
  v140 = sub_25569B6D0(v38);

  v166 = MEMORY[0x277D84F90];
  v154 = v35;
  if ((v35 & 0xC000000000000001) != 0)
  {

    sub_2557509F0();
    type metadata accessor for JournalMO();
    sub_25567AF9C(&qword_27F7BE0A8, type metadata accessor for JournalMO, MEMORY[0x277D85378]);
    sub_2557505C0();
    v40 = v161;
    v39 = v162;
    v41 = v163;
    v42 = v164;
    v43 = v165;
  }

  else
  {
    v44 = -1 << *(v35 + 32);
    v39 = v35 + 56;
    v41 = ~v44;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v43 = v46 & *(v35 + 56);

    v42 = 0;
    v40 = v35;
  }

  v153 = v41;
  v47 = (v41 + 64) >> 6;
  while ((v40 & 0x8000000000000000) == 0)
  {
    v48 = v42;
    v49 = v43;
    v50 = v42;
    if (!v43)
    {
      while (1)
      {
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v50 >= v47)
        {
          goto LABEL_28;
        }

        v49 = *(v39 + 8 * v50);
        ++v48;
        if (v49)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

LABEL_22:
    v13 = ((v49 - 1) & v49);
    v51 = *(*(v40 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));
    if (!v51)
    {
      goto LABEL_28;
    }

LABEL_26:
    if ([v51 userDeleted])
    {
      sub_255750BB0();
      sub_255750BE0();
      sub_255750BF0();
      sub_255750BC0();
    }

    else
    {
    }

    v42 = v50;
    v43 = v13;
  }

  v52 = sub_255750A60();
  if (v52)
  {
    v159 = v52;
    type metadata accessor for JournalMO();
    swift_dynamicCast();
    v51 = v160;
    v50 = v42;
    v13 = v43;
    if (v160)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  sub_25568B1C8(v40);
  v47 = v166;
  v43 = v140;
  v40 = v139;
  v53 = sub_2556C0FCC(v140, v139);
  v39 = v158;
  v13 = v138;
  v42 = v148;
  v50 = v155;
  if ((v53 & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((v47 & 0x8000000000000000) == 0 && (v47 & 0x4000000000000000) == 0)
  {
    if (*(v47 + 16))
    {
      goto LABEL_32;
    }

LABEL_108:

    return;
  }

LABEL_107:
  if (!sub_255750A30())
  {
    goto LABEL_108;
  }

LABEL_32:
  if (*(v43 + 16) <= *(v40 + 16) >> 3)
  {
    v166 = v40;

    sub_2556C137C(v43);
    v54 = v166;
  }

  else
  {

    v54 = sub_2556C1C58(v43, v40);
  }

  v55 = sub_2556BFBF4(v54, v13, v50);
  if (v39)
  {

    return;
  }

  v56 = v55;
  v158 = 0;

  v57 = sub_2556C0864(v43, v40, v154, v47);

  if (v56 >> 62)
  {
    v58 = sub_255750A30();
  }

  else
  {
    v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v143 = v58;
  if (v58)
  {
LABEL_42:
    v136 = v56 >> 62;
    if (qword_27F7BD718 != -1)
    {
      swift_once();
    }

    v59 = sub_25574F2C0();
    __swift_project_value_buffer(v59, qword_27F7BE800);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v60 = v155;

    v61 = sub_25574F2A0();
    v62 = sub_2557507A0();

    if (os_log_type_enabled(v61, v62))
    {
      v134 = v61;
      v63 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v166 = v132;
      *v63 = 136447746;
      v135 = v60;
      v64 = [v60 id];
      if (v64)
      {
        v65 = v156;
        v66 = v64;
        sub_25574F080();

        v67 = 0;
      }

      else
      {
        v67 = 1;
        v65 = v156;
      }

      v13 = v157;
      v133 = v62;
      v68 = v147;
      v155 = *(v147 + 56);
      v156 = (v147 + 56);
      (v155)(v65, v67, 1, v42);
      v69 = v142;
      sub_2556B0D64(v65, v142);
      v153 = *(v68 + 48);
      v154 = v68 + 48;
      if (v153(v69, 1, v42))
      {
        sub_255674B20(v69, &unk_27F7BED20, &unk_2557551D0);
        v70 = 0xE300000000000000;
        v71 = 7104878;
      }

      else
      {
        v72 = v137;
        (*(v68 + 16))(v137, v69, v42);
        sub_255674B20(v69, &unk_27F7BED20, &unk_2557551D0);
        v73 = sub_25574F040();
        v74 = v68;
        v70 = v75;
        (*(v74 + 8))(v72, v42);
        v71 = v73;
      }

      v76 = sub_2556E474C(v71, v70, &v166);

      *(v63 + 4) = v76;
      *(v63 + 12) = 2048;
      if (v136)
      {
        v77 = sub_255750A30();
      }

      else
      {
        v77 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v63 + 14) = v77;

      *(v63 + 22) = 2048;
      v137 = (v57 >> 62);
      if (v57 >> 62)
      {
        v78 = sub_255750A30();
      }

      else
      {
        v78 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v63 + 24) = v78;
      v142 = v57;

      v39 = 2080;
      *(v63 + 32) = 2080;
      sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v50 = v140;
      v79 = sub_255750590();
      v81 = v80;

      v82 = sub_2556E474C(v79, v81, &v166);

      *(v63 + 34) = v82;
      *(v63 + 42) = 2080;
      v83 = sub_255750590();
      v85 = v84;

      v86 = sub_2556E474C(v83, v85, &v166);

      *(v63 + 44) = v86;
      v139 = v63;
      *(v63 + 52) = 2080;
      v141 = v56;
      if (v143)
      {
        v43 = 0;
        v140 = v56 & 0xC000000000000001;
        v47 = v56 & 0xFFFFFFFFFFFFFF8;
        v40 = v147 + 32;
        v87 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v140)
          {
            v88 = MEMORY[0x259C3E830](v43, v141);
            v39 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_103;
            }
          }

          else
          {
            if (v43 >= *(v47 + 16))
            {
              goto LABEL_104;
            }

            v88 = *(v141 + 8 * v43 + 32);
            v39 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_103;
            }
          }

          v50 = v88;
          v89 = [v50 id];
          if (v89)
          {
            v90 = v89;
            sub_25574F080();

            v13 = v157;
            v91 = 0;
          }

          else
          {
            v91 = 1;
          }

          (v155)(v13, v91, 1, v42);
          v92 = v152;
          sub_2556B0D64(v13, v152);
          v93 = v92;
          v94 = v146;
          sub_2556B0D64(v93, v146);

          if (v153(v94, 1, v42) == 1)
          {
            sub_255674B20(v94, &unk_27F7BED20, &unk_2557551D0);
          }

          else
          {
            v95 = v42;
            v96 = *v40;
            (*v40)(v151, v94, v95);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v87 = sub_255698A7C(0, *(v87 + 2) + 1, 1, v87);
            }

            v98 = *(v87 + 2);
            v97 = *(v87 + 3);
            if (v98 >= v97 >> 1)
            {
              v87 = sub_255698A7C((v97 > 1), v98 + 1, 1, v87);
            }

            *(v87 + 2) = v98 + 1;
            v50 = v148;
            v96(&v87[((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v98], v151, v148);
            v42 = v50;
            v13 = v157;
          }

          ++v43;
          if (v39 == v143)
          {
            goto LABEL_77;
          }
        }
      }

      v87 = MEMORY[0x277D84F90];
LABEL_77:
      v99 = MEMORY[0x259C3E060](v87, v42);
      v101 = v100;

      v102 = sub_2556E474C(v99, v101, &v166);

      v103 = v139;
      *(v139 + 54) = v102;
      *(v103 + 62) = 2080;
      v104 = v142;
      if (v137)
      {
        v47 = sub_255750A30();
      }

      else
      {
        v47 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v47)
      {
        v43 = 0;
        v157 = (v104 & 0xC000000000000001);
        v152 = v104 & 0xFFFFFFFFFFFFFF8;
        v40 = v147 + 32;
        v105 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v157)
          {
            v106 = MEMORY[0x259C3E830](v43, v142);
            v50 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (v43 >= *(v152 + 16))
            {
              goto LABEL_106;
            }

            v106 = *(v142 + 8 * v43 + 32);
            v50 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_105;
            }
          }

          v39 = v106;
          v107 = [v39 id];
          if (v107)
          {
            v108 = v145;
            v109 = v107;
            sub_25574F080();

            v110 = 0;
          }

          else
          {
            v110 = 1;
            v108 = v145;
          }

          (v155)(v108, v110, 1, v42);
          v111 = v108;
          v112 = v149;
          sub_2556B0D64(v111, v149);
          v113 = v112;
          v13 = v144;
          sub_2556B0D64(v113, v144);

          if (v153(v13, 1, v42) == 1)
          {
            sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
          }

          else
          {
            v114 = v42;
            v115 = *v40;
            (*v40)(v150, v13, v114);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v105 = sub_255698A7C(0, *(v105 + 2) + 1, 1, v105);
            }

            v117 = *(v105 + 2);
            v116 = *(v105 + 3);
            if (v117 >= v116 >> 1)
            {
              v105 = sub_255698A7C((v116 > 1), v117 + 1, 1, v105);
            }

            *(v105 + 2) = v117 + 1;
            v39 = v148;
            v115(&v105[((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v117], v150, v148);
            v42 = v39;
          }

          ++v43;
          if (v50 == v47)
          {
            goto LABEL_100;
          }
        }
      }

      v105 = MEMORY[0x277D84F90];
LABEL_100:
      v118 = MEMORY[0x259C3E060](v105, v42);
      v120 = v119;

      v121 = sub_2556E474C(v118, v120, &v166);

      v122 = v139;
      *(v139 + 64) = v121;
      v123 = v134;
      _os_log_impl(&dword_255661000, v134, v133, "Caching journals for entry with id %{public}s\nAdding: %ld\nRemoving: %ld\n---\nCached IDs: %s\nMergeable IDs: %s\nAdding IDs: %s\nRemoving IDs: %s", v122, 0x48u);
      v124 = v132;
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v124, -1, -1);
      MEMORY[0x259C3F520](v122, -1, -1);

      v13 = v138;
      v57 = v142;
      v56 = v141;
      v60 = v135;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    sub_25569B86C(v56);

    type metadata accessor for JournalMO();
    sub_25567AF9C(&qword_27F7BE0A8, type metadata accessor for JournalMO, MEMORY[0x277D85378]);
    v125 = sub_255750560();

    [v60 addJournals_];

    sub_25569B86C(v57);

    v126 = sub_255750560();

    [v60 removeJournals_];

    return;
  }

  if (v57 >> 62)
  {
    if (!sub_255750A30())
    {
      goto LABEL_112;
    }

    goto LABEL_42;
  }

  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

LABEL_112:

  if (qword_27F7BD718 != -1)
  {
    swift_once();
  }

  v127 = sub_25574F2C0();
  __swift_project_value_buffer(v127, qword_27F7BE800);
  v128 = sub_25574F2A0();
  v129 = sub_2557507A0();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&dword_255661000, v128, v129, "Exiting relationship caching early since there are no actual updates", v130, 2u);
    MEMORY[0x259C3F520](v130, -1, -1);
  }
}

uint64_t sub_2556BFB50@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    sub_25574F080();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_25574F0D0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_2556BFBF4(void *a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v111 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = (&v106 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v106 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v106 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v110 = &v106 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v106 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v125 = &v106 - v22;
  MEMORY[0x28223BE20](v21);
  v124 = &v106 - v23;
  v127 = sub_25574F0D0();
  v24 = *(v127 - 8);
  v25 = MEMORY[0x28223BE20](v127);
  v114 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v108 = &v106 - v28;
  MEMORY[0x28223BE20](v27);
  v123 = &v106 - v29;
  v30 = a1[2];
  v31 = MEMORY[0x277D84F90];
  v117 = v24;
  v126 = a1;
  if (v30)
  {
    v122 = v3;
    v32 = v20;
    v33 = a2;
    v34 = sub_25574250C(v30, 0);
    v129 = sub_255745468(v128, &v34[(*(v24 + 80) + 32) & ~*(v24 + 80)], v30, a1);
    v35 = v128[0];
    a2 = v128[1];
    a1 = v128[2];
    v36 = v128[3];

    sub_25568B1C8(v35);
    if (v129 != v30)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    a2 = v33;
    a1 = v126;
    v4 = v122;
    v31 = MEMORY[0x277D84F90];
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  sub_2556D09C4(v34, a2);
  v32 = v37;
  v36 = v4;

  if (v4)
  {
    return result;
  }

  v122 = v20;
  v128[0] = v31;
  if (!(v32 >> 62))
  {
    v39 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_82:
  v39 = sub_255750A30();
LABEL_8:
  v40 = v113;
  v112 = v36;
  if (v39)
  {
    v106 = a2;
    a2 = 0;
    v129 = v32 & 0xFFFFFFFFFFFFFF8;
    v36 = &property descriptor for JournalMO.isUploadedToCloud;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x259C3E830](a2, v32);
      }

      else
      {
        if (a2 >= *(v129 + 16))
        {
          goto LABEL_76;
        }

        v41 = *(v32 + 8 * a2 + 32);
      }

      v42 = v41;
      v43 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if ([v41 userDeleted])
      {
      }

      else
      {
        sub_255750BB0();
        a1 = *(v128[0] + 16);
        sub_255750BE0();
        sub_255750BF0();
        sub_255750BC0();
      }

      ++a2;
    }

    while (v43 != v39);
    v121 = v32 & 0xC000000000000001;
    a2 = 0;
    v107 = v128[0];
    v118 = (v117 + 56);
    v44 = (v117 + 48);
    v45 = MEMORY[0x277D84F90];
    v119 = v39;
    v120 = (v117 + 32);
    v36 = v127;
    do
    {
      if (v121)
      {
        v46 = MEMORY[0x259C3E830](a2, v32);
        v47 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (a2 >= *(v129 + 16))
        {
          goto LABEL_78;
        }

        v46 = *(v32 + 8 * a2 + 32);
        v47 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_77;
        }
      }

      v48 = v32;
      v49 = v46;
      v50 = [v49 id];
      if (v50)
      {
        v51 = v50;
        v52 = v122;
        sub_25574F080();

        v53 = 0;
      }

      else
      {
        v53 = 1;
        v52 = v122;
      }

      (v118->isa)(v52, v53, 1, v36);
      v54 = v52;
      v55 = v125;
      sub_2556B0D64(v54, v125);
      v56 = v55;
      v57 = v124;
      sub_2556B0D64(v56, v124);

      if ((*v44)(v57, 1, v36) == 1)
      {
        sub_255674B20(v57, &unk_27F7BED20, &unk_2557551D0);
        v32 = v48;
      }

      else
      {
        v58 = *v120;
        (*v120)(v123, v57, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_255698A7C(0, v45[2] + 1, 1, v45);
        }

        v32 = v48;
        v60 = v45[2];
        v59 = v45[3];
        if (v60 >= v59 >> 1)
        {
          v45 = sub_255698A7C((v59 > 1), v60 + 1, 1, v45);
        }

        v45[2] = v60 + 1;
        v61 = v45 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v60;
        v36 = v127;
        v58(v61, v123, v127);
      }

      ++a2;
      a1 = v126;
    }

    while (v47 != v119);
    v40 = v113;
    v62 = v107;
    a2 = v106;
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
  }

  v63 = sub_2556C1598(v45, a1);

  v64 = a2;
  v65 = v112;
  v66 = sub_2556C3584(v63, v64);
  v112 = v65;

  if (v66 >> 62)
  {
    v129 = sub_255750A30();
    if (v129)
    {
LABEL_41:
      if (qword_27F7BD718 != -1)
      {
        swift_once();
      }

      v67 = sub_25574F2C0();
      __swift_project_value_buffer(v67, qword_27F7BE800);

      v68 = v111;
      v69 = sub_25574F2A0();
      v70 = sub_2557507A0();

      if (os_log_type_enabled(v69, v70))
      {
        LODWORD(v111) = v70;
        v118 = v69;
        v71 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v128[0] = v106;
        *v71 = 134218498;
        if (v66 >> 62)
        {
          v72 = sub_255750A30();
        }

        else
        {
          v72 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v73 = v110;
        *(v71 + 4) = v72;

        v119 = v71;
        *(v71 + 12) = 2080;
        v74 = [v68 id];
        v75 = v109;
        if (v74)
        {
          v76 = v74;
          sub_25574F080();

          v77 = 0;
        }

        else
        {
          v77 = 1;
        }

        v78 = v117;
        v79 = v127;
        v122 = *(v117 + 56);
        v123 = (v117 + 56);
        v122(v75, v77, 1, v127);
        sub_2556B0D64(v75, v73);
        v120 = *(v78 + 48);
        v121 = v78 + 48;
        v80 = (v120)(v73, 1, v79);
        v107 = v62;
        if (v80)
        {
          sub_255674B20(v73, &unk_27F7BED20, &unk_2557551D0);
          v81 = 0xE300000000000000;
          v82 = 7104878;
        }

        else
        {
          v83 = v108;
          (*(v78 + 16))(v108, v73, v79);
          sub_255674B20(v73, &unk_27F7BED20, &unk_2557551D0);
          v84 = sub_25574F040();
          v85 = v79;
          v81 = v86;
          (*(v78 + 8))(v83, v85);
          v82 = v84;
        }

        v87 = v119;
        v88 = sub_2556E474C(v82, v81, v128);

        v36 = 0;
        *(v87 + 14) = v88;
        *(v87 + 22) = 2080;
        v125 = v66 & 0xFFFFFFFFFFFFFF8;
        v126 = (v66 & 0xC000000000000001);
        v32 = v78 + 32;
        v89 = MEMORY[0x277D84F90];
        v124 = v66;
        do
        {
          if (v126)
          {
            v90 = MEMORY[0x259C3E830](v36, v66);
            v91 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (v36 >= *(v125 + 16))
            {
              goto LABEL_80;
            }

            v90 = *(v66 + 8 * v36 + 32);
            v91 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_79;
            }
          }

          a2 = v90;
          v92 = [a2 id];
          if (v92)
          {
            v93 = v92;
            sub_25574F080();

            v94 = 0;
          }

          else
          {
            v94 = 1;
          }

          v95 = v127;
          v122(v40, v94, 1, v127);
          a1 = v116;
          sub_2556B0D64(v40, v116);
          v96 = v115;
          sub_2556B0D64(a1, v115);

          if ((v120)(v96, 1, v95) == 1)
          {
            sub_255674B20(v96, &unk_27F7BED20, &unk_2557551D0);
            v66 = v124;
          }

          else
          {
            a1 = *v32;
            (*v32)(v114, v96, v95);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v89 = sub_255698A7C(0, v89[2] + 1, 1, v89);
            }

            v66 = v124;
            v98 = v89[2];
            v97 = v89[3];
            a2 = v98 + 1;
            if (v98 >= v97 >> 1)
            {
              v89 = sub_255698A7C((v97 > 1), v98 + 1, 1, v89);
            }

            v89[2] = a2;
            (a1)(v89 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v98, v114, v127);
            v40 = v113;
          }

          ++v36;
        }

        while (v91 != v129);
        v99 = MEMORY[0x259C3E060](v89, v127);
        v101 = v100;

        v102 = sub_2556E474C(v99, v101, v128);

        v103 = v119;
        *(v119 + 24) = v102;
        v104 = v118;
        _os_log_impl(&dword_255661000, v118, v111, "Reserved %ld new Journal while caching relationships for entry %s. Reserved journal ids: %s", v103, 0x20u);
        v105 = v106;
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v105, -1, -1);
        MEMORY[0x259C3F520](v103, -1, -1);

        v62 = v107;
      }

      else
      {
      }
    }
  }

  else
  {
    v129 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v129)
    {
      goto LABEL_41;
    }
  }

  v128[0] = v62;
  sub_25574A3D8(v66);
  return v128[0];
}

uint64_t sub_2556C0864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 16) <= *(a1 + 16) >> 3)
  {

    sub_2556C137C(a2);
    v7 = a1;
  }

  else
  {

    v7 = sub_2556C1C58(a2, a1);
  }

  v9 = sub_2556C44C4(v8, v7);

  sub_25574A4C8(v9);
  return a4;
}

uint64_t sub_2556C091C(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_255750F80();
    AssetType.rawValue.getter();
    sub_2557501F0();

    v4 = sub_255750FD0();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE500000000000000;
        v9 = 0x6F746F6870;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE90000000000006FLL;
            v9 = 0x746F68506576696CLL;
            break;
          case 2:
            v9 = 0x6F65646976;
            break;
          case 3:
            v9 = 0x636973756DLL;
            break;
          case 4:
            v8 = 0xE700000000000000;
            v9 = 0x74736163646F70;
            break;
          case 5:
            v8 = 0xE400000000000000;
            v9 = 1802465122;
            break;
          case 6:
            v9 = 0x6F69647561;
            break;
          case 7:
            v9 = 0x7469736976;
            break;
          case 8:
            v9 = 0x6E695069746C756DLL;
            v10 = 7364941;
            goto LABEL_27;
          case 9:
            v8 = 0xEA00000000007061;
            v9 = 0x4D636972656E6567;
            break;
          case 0xA:
            v8 = 0xE400000000000000;
            v9 = 1802398060;
            break;
          case 0xB:
            v8 = 0xE700000000000000;
            v9 = 0x746361746E6F63;
            break;
          case 0xC:
            v9 = 0x4974756F6B726F77;
            v10 = 7237475;
            goto LABEL_27;
          case 0xD:
            v9 = 0x5274756F6B726F77;
            v8 = 0xEC0000006574756FLL;
            break;
          case 0xE:
            v9 = 0x697463656C666572;
            v8 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v9 = 0x4D664F6574617473;
            v10 = 6581865;
            goto LABEL_27;
          case 0x10:
            v9 = 0x63416E6F69746F6DLL;
            v8 = 0xEE00797469766974;
            break;
          case 0x11:
            v9 = 0x7261506472696874;
            v8 = 0xEF616964654D7974;
            break;
          case 0x12:
            v9 = 0x6C6F686563616C70;
            v10 = 7497060;
            goto LABEL_27;
          case 0x13:
            v9 = 0x76456B6165727473;
            v10 = 7630437;
LABEL_27:
            v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 0x14:
            v8 = 0xE700000000000000;
            v9 = 0x676E6977617264;
            break;
          case 0x15:
            v8 = 0xE800000000000000;
            v9 = 0x69747465666E6F63;
            break;
          case 0x16:
            v8 = 0xE700000000000000;
            v9 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        v11 = 0xE500000000000000;
        v12 = 0x6F746F6870;
        switch(a1)
        {
          case 1:
            v11 = 0xE90000000000006FLL;
            if (v9 == 0x746F68506576696CLL)
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          case 2:
            v16 = 1701079414;
            goto LABEL_59;
          case 3:
            if (v9 != 0x636973756DLL)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 4:
            v11 = 0xE700000000000000;
            v13 = 0x736163646F70;
            goto LABEL_37;
          case 5:
            v11 = 0xE400000000000000;
            if (v9 != 1802465122)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 6:
            v16 = 1768191329;
LABEL_59:
            if (v9 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 7:
            if (v9 != 0x7469736976)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 8:
            v14 = 0x6E695069746C756DLL;
            v15 = 7364941;
            goto LABEL_72;
          case 9:
            v11 = 0xEA00000000007061;
            if (v9 != 0x4D636972656E6567)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 10:
            v11 = 0xE400000000000000;
            if (v9 != 1802398060)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 11:
            v11 = 0xE700000000000000;
            v13 = 0x6361746E6F63;
LABEL_37:
            if (v9 != (v13 & 0xFFFFFFFFFFFFLL | 0x74000000000000))
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 12:
            v14 = 0x4974756F6B726F77;
            v15 = 7237475;
            goto LABEL_72;
          case 13:
            v11 = 0xEC0000006574756FLL;
            if (v9 != 0x5274756F6B726F77)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 14:
            v11 = 0xEA00000000006E6FLL;
            if (v9 != 0x697463656C666572)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 15:
            v14 = 0x4D664F6574617473;
            v15 = 6581865;
            goto LABEL_72;
          case 16:
            v11 = 0xEE00797469766974;
            if (v9 != 0x63416E6F69746F6DLL)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 17:
            v11 = 0xEF616964654D7974;
            if (v9 != 0x7261506472696874)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 18:
            v14 = 0x6C6F686563616C70;
            v15 = 7497060;
            goto LABEL_72;
          case 19:
            v14 = 0x76456B6165727473;
            v15 = 7630437;
LABEL_72:
            v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v9 != v14)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 20:
            v11 = 0xE700000000000000;
            if (v9 != 0x676E6977617264)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 21:
            v11 = 0xE800000000000000;
            if (v9 != 0x69747465666E6F63)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 22:
            v11 = 0xE700000000000000;
            v12 = 0x6E776F6E6B6E75;
            goto LABEL_66;
          default:
LABEL_66:
            if (v9 != v12)
            {
              goto LABEL_68;
            }

LABEL_67:
            if (v8 == v11)
            {

              v17 = 1;
              return v17 & 1;
            }

LABEL_68:
            v17 = sub_255750EB0();

            if (v17)
            {
              return v17 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v17 & 1;
            }

            break;
        }
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2556C0F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2556C0FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_255750090();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v31 = sub_255750100();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2556C137C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_255674B20(v5, &unk_27F7BED20, &unk_2557551D0))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_2556992A0(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2556C1598(uint64_t a1, uint64_t a2)
{
  v62[2] = *MEMORY[0x277D85DE8];
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v48 - v9;
  MEMORY[0x28223BE20](v8);
  i = v48 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = (a2 + 56);
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v18 = sub_255750090();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, *(v58 + 48) + v20 * v59, v4);
    sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v24 = sub_255750100();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    MEMORY[0x28223BE20](v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_2556C2F84(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = sub_255750090();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, *(v58 + 48) + v20 * v59, v4);
      v38 = sub_255750100();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, *(v58 + 48) + v20 * v59, v4);
          v40 = sub_255750100();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_2556C26BC(v47, v48[0], v58, v20, v62);

  MEMORY[0x259C3F520](v47, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_2556C1C58(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v65 - v9);
  v11 = sub_25574F0D0();
  v12 = MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v65 - v15);
  MEMORY[0x28223BE20](v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_255674B20(v30, &unk_27F7BED20, &unk_2557551D0);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v32 = sub_255750090();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v36 = sub_255750100();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_255674B20(v24, &unk_27F7BED20, &unk_2557551D0);
        a2 = sub_2556C2F84(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_255750090();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_255750100();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_255750100();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_2556C2AB0(v64, v65, v80, v24, &v89);

  MEMORY[0x259C3F520](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  sub_25568B1C8(v59);
  return a2;
}

uint64_t sub_2556C26BC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v42 = &v35 - v15;
  result = MEMORY[0x28223BE20](v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_2556C2F84(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v25 = sub_255750090();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v32 = sub_255750100();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2556C2AB0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_25574F0D0();
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
          v45 = v61;

          return sub_2556C2F84(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v35 = sub_255750090();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v43 = sub_255750100();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_2556C2F84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_25574F0D0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE838, &qword_255758008);
  result = sub_255750AE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_255750090();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2556C32AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE840, &unk_25575BD70);
  result = sub_255750AE0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_255750930();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_2556C34A0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2556C38C0(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

objc_class *sub_2556C3584(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v40 = sub_25574F0D0();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v30[1] = v2;
    v43 = MEMORY[0x277D84F90];
    sub_255750BD0();
    v8 = a1 + 56;
    v9 = sub_2557509B0();
    v10 = *(a1 + 36);
    type metadata accessor for JournalMO();
    result = swift_getObjCClassFromMetadata();
    v11 = 0;
    v35 = v4 + 16;
    v36 = result;
    v37 = a1;
    v38 = v4;
    v33 = v6;
    v34 = v4 + 8;
    v31 = a1 + 64;
    v32 = v10;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v42 = v11;
      v10 = v8;
      v14 = *(a1 + 48);
      v16 = v38;
      v15 = v39;
      v17 = v40;
      (*(v38 + 16))(v39, v14 + *(v38 + 72) * v9, v40);
      v18 = objc_allocWithZone(v36);
      v19 = [v18 initWithContext_];
      v20 = sub_25574F050();
      [v19 setId_];

      v21 = v15;
      a1 = v37;
      (*(v16 + 8))(v21, v17);
      sub_255750BB0();
      sub_255750BE0();
      sub_255750BF0();
      result = sub_255750BC0();
      v12 = 1 << *(a1 + 32);
      if (v9 >= v12)
      {
        goto LABEL_23;
      }

      v22 = *(v10 + 8 * v13);
      v23 = v33;
      if ((v22 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v8 = v10;
      LODWORD(v10) = v32;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v22 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v12 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v27 = (v31 + 8 * v13);
        while (v26 < (v12 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_2556A719C(v9, v32, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_2556A719C(v9, v32, 0);
      }

LABEL_4:
      v11 = v42 + 1;
      v9 = v12;
      if (v42 + 1 == v23)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_2556C38C0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = a2;
  v46 = a1;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = 0;
  v19 = *(a3 + 56);
  v47 = 0;
  v48 = a3 + 56;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v54 = (v7 + 48);
  v55 = (v7 + 56);
  v51 = a3;
  v52 = (v7 + 32);
  v59 = v7 + 16;
  v60 = a4 + 7;
  v44 = v7;
  v61 = (v7 + 8);
  v62 = a4;
  v24 = v17;
  v56 = v23;
  v49 = v17;
  v50 = v15;
  while (v22)
  {
    v25 = __clz(__rbit64(v22));
    v58 = (v22 - 1) & v22;
LABEL_14:
    v28 = v25 | (v18 << 6);
    v29 = *(a3 + 48);
    v53 = v28;
    v57 = *(v29 + 8 * v28);
    v30 = [v57 id];
    if (v30)
    {
      v31 = v30;
      sub_25574F080();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    (*v55)(v24, v32, 1, v6);
    sub_255663294(v24, v15, &unk_27F7BED20, &unk_2557551D0);
    if ((*v54)(v15, 1, v6) == 1)
    {
LABEL_6:
      sub_255674B20(v24, &unk_27F7BED20, &unk_2557551D0);

      v23 = v56;
      v22 = v58;
    }

    else
    {
      (*v52)(v63, v15, v6);
      if (!v62[2] || (v33 = v62, sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v34 = sub_255750090(), v35 = -1 << *(v33 + 32), v36 = v34 & ~v35, ((*(v60 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0))
      {
LABEL_5:
        (*v61)(v63, v6);
        v15 = v50;
        a3 = v51;
        v24 = v49;
        goto LABEL_6;
      }

      v37 = ~v35;
      v38 = *(v44 + 72);
      v39 = *(v44 + 16);
      while (1)
      {
        v39(v10, v62[6] + v38 * v36, v6);
        sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v40 = sub_255750100();
        v41 = *v61;
        (*v61)(v10, v6);
        if (v40)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v60 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v41(v63, v6);
      v24 = v49;
      sub_255674B20(v49, &unk_27F7BED20, &unk_2557551D0);

      *(v46 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v42 = __OFADD__(v47++, 1);
      v15 = v50;
      a3 = v51;
      v23 = v56;
      v22 = v58;
      if (v42)
      {
        __break(1u);
LABEL_27:

        sub_2556C32AC(v46, v45, v47, a3);
        return;
      }
    }
  }

  v26 = v18;
  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_27;
    }

    v27 = *(v48 + 8 * v18);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v58 = (v27 - 1) & v27;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_2556C3E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = *MEMORY[0x277D85DE8];
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = v50 - v15;
  v16 = *(a1 + 32);
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = (8 * v18);

  if (v17 > 0xD)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v72 = v6;
    v51 = v18;
    v52 = v3;
    v50[1] = v50;
    MEMORY[0x28223BE20](v20);
    v53 = v50 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v19);
    v3 = 0;
    v21 = *(a1 + 56);
    v54 = 0;
    v55 = a1 + 56;
    v22 = 1 << *(a1 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v21;
    v18 = (v22 + 63) >> 6;
    v61 = (v7 + 48);
    v62 = (v7 + 56);
    v56 = (v7 + 32);
    v69 = a2 + 56;
    v67 = v7 + 16;
    v50[0] = v7;
    v70 = (v7 + 8);
    v7 = &property descriptor for JournalMO.isUploadedToCloud;
    v19 = &unk_27F7BED20;
    v25 = v59;
    v63 = a1;
    v57 = v18;
    v58 = v14;
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v65 = (v24 - 1) & v24;
LABEL_15:
      v29 = v26 | (v3 << 6);
      v30 = *(a1 + 48);
      v60 = v29;
      v31 = *(v30 + 8 * v29);
      v32 = *(v7 + 125);
      v64 = v31;
      v33 = [v31 v32];
      if (v33)
      {
        v6 = v25;
        v34 = v33;
        sub_25574F080();

        v19 = &unk_27F7BED20;
        v35 = 0;
      }

      else
      {
        v35 = 1;
        v6 = v25;
      }

      v36 = v72;
      (*v62)(v6, v35, 1, v72);
      sub_255663294(v6, v14, &unk_27F7BED20, &unk_2557551D0);
      if ((*v61)(v14, 1, v36) == 1)
      {
LABEL_7:
        v25 = v6;
        sub_255674B20(v6, &unk_27F7BED20, &unk_2557551D0);

        a1 = v63;
        v24 = v65;
      }

      else
      {
        (*v56)(v71, v14, v36);
        if (!*(a2 + 16) || (sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v37 = sub_255750090(), v38 = -1 << *(a2 + 32), v39 = v37 & ~v38, ((*(v69 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0))
        {
LABEL_6:
          (*v70)(v71, v72);
          v14 = v58;
          v6 = v59;
          v18 = v57;
          v7 = &property descriptor for JournalMO.isUploadedToCloud;
          v19 = &unk_27F7BED20;
          goto LABEL_7;
        }

        v66 = ~v38;
        v40 = *(v50[0] + 72);
        v41 = *(v50[0] + 16);
        while (1)
        {
          v42 = a2;
          v6 = v68;
          v43 = v72;
          v41(v68, *(a2 + 48) + v40 * v39, v72);
          sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v44 = sub_255750100();
          v45 = *v70;
          (*v70)(v6, v43);
          if (v44)
          {
            break;
          }

          v39 = (v39 + 1) & v66;
          a2 = v42;
          if (((*(v69 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v45(v71, v72);
        v25 = v59;
        v19 = &unk_27F7BED20;
        sub_255674B20(v59, &unk_27F7BED20, &unk_2557551D0);

        *&v53[(v60 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v60;
        v46 = __OFADD__(v54++, 1);
        a2 = v42;
        a1 = v63;
        v18 = v57;
        v14 = v58;
        v7 = &property descriptor for JournalMO.isUploadedToCloud;
        v24 = v65;
        if (v46)
        {
          __break(1u);
LABEL_28:
          v47 = sub_2556C32AC(v53, v51, v54, a1);

          return v47;
        }
      }
    }

    v27 = v3;
    while (1)
    {
      v3 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v3 >= v18)
      {
        goto LABEL_28;
      }

      v28 = *(v55 + 8 * v3);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v65 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v49 = swift_slowAlloc();

  v47 = sub_2556C34A0(v49, v18, a1, a2);

  MEMORY[0x259C3F520](v49, -1, -1);

  return v47;
}

uint64_t sub_2556C44C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F0D0();
  v49 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v47 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2556C3E00(v12, a2);
  }

  v15 = MEMORY[0x277D84FA0];
  v63 = MEMORY[0x277D84FA0];

  v16 = sub_2557509F0();
  v17 = sub_255750A60();
  if (v17)
  {
    v18 = v17;
    v56 = type metadata accessor for JournalMO();
    v19 = v18;
    v20 = (v49 + 56);
    v55 = (v49 + 48);
    v50 = (v49 + 32);
    v57 = v49 + 16;
    v58 = a2 + 56;
    v59 = (v49 + 8);
    v48 = MEMORY[0x277D84FA0];
    v53 = v14;
    v54 = v11;
    v51 = (v49 + 56);
    v52 = v16;
    while (1)
    {
      v61 = v19;
      swift_dynamicCast();
      v21 = [v62 id];
      if (v21)
      {
        v22 = v21;
        sub_25574F080();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      (*v20)(v14, v23, 1, v4);
      sub_255663294(v14, v11, &unk_27F7BED20, &unk_2557551D0);
      if ((*v55)(v11, 1, v4) == 1)
      {
        goto LABEL_5;
      }

      (*v50)(v60, v11, v4);
      if (*(a2 + 16) && (sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v24 = sub_255750090(), v25 = -1 << *(a2 + 32), v26 = v24 & ~v25, ((*(v58 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
      {
        v27 = ~v25;
        v28 = *(v49 + 72);
        v29 = *(v49 + 16);
        while (1)
        {
          v30 = a2;
          v29(v7, *(a2 + 48) + v28 * v26, v4);
          sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v31 = sub_255750100();
          v32 = *v59;
          (*v59)(v7, v4);
          if (v31)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          a2 = v30;
          if (((*(v58 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v32(v60, v4);
        v14 = v53;
        sub_255674B20(v53, &unk_27F7BED20, &unk_2557551D0);
        v33 = v62;
        v34 = v48[2];
        if (v48[3] <= v34)
        {
          sub_2557008C8(v34 + 1);
        }

        v35 = v63;
        v48 = v33;
        result = sub_255750930();
        v37 = v35 + 56;
        v38 = -1 << *(v35 + 32);
        v39 = result & ~v38;
        v40 = v39 >> 6;
        a2 = v30;
        v11 = v54;
        v20 = v51;
        if (((-1 << v39) & ~*(v35 + 56 + 8 * (v39 >> 6))) != 0)
        {
          v41 = __clz(__rbit64((-1 << v39) & ~*(v35 + 56 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v42 = 0;
          v43 = (63 - v38) >> 6;
          do
          {
            if (++v40 == v43 && (v42 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v44 = v40 == v43;
            if (v40 == v43)
            {
              v40 = 0;
            }

            v42 |= v44;
            v45 = *(v37 + 8 * v40);
          }

          while (v45 == -1);
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
        }

        *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        *(*(v35 + 48) + 8 * v41) = v48;
        v46 = *(v35 + 16) + 1;
        v48 = v35;
        *(v35 + 16) = v46;
        v19 = sub_255750A60();
        if (!v19)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_4:
        (*v59)(v60, v4);
        v14 = v53;
        v11 = v54;
        v20 = v51;
LABEL_5:
        sub_255674B20(v14, &unk_27F7BED20, &unk_2557551D0);

        v19 = sub_255750A60();
        if (!v19)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v48 = v15;
LABEL_32:

  return v48;
}

uint64_t ProtectedData.stateStream.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE860, &qword_255758010);
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x277D85778]);
  return sub_255750520();
}

uint64_t sub_2556C4BCC(uint64_t a1, os_unfair_lock_s *a2)
{
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE178, &unk_255758110);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  sub_25574F0C0();
  os_unfair_lock_lock(a2 + 4);
  v18 = *(v7 + 16);
  v18(v10, v12, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, v19, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  sub_25569F4B4(v5, v10);
  os_unfair_lock_unlock(a2 + 4);
  v18(v10, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v7 + 32))(v16 + v15, v10, v6);

  sub_2557504E0();
  return (*(v7 + 8))(v12, v6);
}

void sub_2556C4E78(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  os_unfair_lock_lock(a2 + 4);
  sub_2556C4ED8(&a2[6], a3);

  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_2556C4ED8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE178, &unk_255758110);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_25567AF04(a2);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v20 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255742E24();
      v11 = v20;
    }

    v12 = *(v11 + 48);
    v13 = sub_25574F0D0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
    v16 = *(v15 - 8);
    (*(v16 + 32))(v6, v14 + *(v16 + 72) * v9, v15);
    sub_2556C6050(v9, v11);
    *a1 = v11;
    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  }

  return sub_255674B20(v6, &qword_27F7BE178, &unk_255758110);
}

uint64_t ProtectedData.ProtectedDataState.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t sub_2556C5174(uint64_t a1, os_unfair_lock_s *a2)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE898, &qword_255758120);
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v21[-v4];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v21[-v5];
  v7 = MKBGetDeviceLockState();
  if (v7 == 1)
  {
    v22 = 2;
  }

  else
  {
    if (v7 == 2)
    {
      v8 = [objc_opt_self() defaultCenter];
      if (qword_27F7BD728 != -1)
      {
LABEL_22:
        swift_once();
      }

      v22 = 1;
      v9 = &qword_27F7BE850;
    }

    else
    {
      v8 = [objc_opt_self() defaultCenter];
      if (qword_27F7BD720 != -1)
      {
        swift_once();
      }

      v22 = 0;
      v9 = &qword_27F7BE848;
    }

    [(os_unfair_lock_s *)v8 postNotificationName:*v9 object:a2];
  }

  swift_getKeyPath();
  os_unfair_lock_lock(a2 + 4);
  v30 = *&a2[6]._os_unfair_lock_opaque;

  swift_getAtKeyPath();

  v8 = v29;
  os_unfair_lock_unlock(a2 + 4);

  v10 = 0;
  a2 = v8 + 16;
  v11 = 1 << LOBYTE(v8[8]._os_unfair_lock_opaque);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *&v8[16]._os_unfair_lock_opaque;
  v14 = (v11 + 63) >> 6;
  v23 = v28 + 8;
  v24 = v28 + 16;
  v15 = (v3 + 8);
  v16 = v28;
  if (v13)
  {
    while (1)
    {
      v17 = v10;
LABEL_18:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v25;
      (*(v16 + 16))(v6, *&v8[14]._os_unfair_lock_opaque + *(v16 + 72) * (v18 | (v17 << 6)), v25);
      LOBYTE(v30) = v22;
      v3 = v26;
      sub_2557504F0();
      (*(v16 + 8))(v6, v19);
      (*v15)(v3, v27);
      if (!v13)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v17 >= v14)
    {
    }

    v13 = *&a2[2 * v17]._os_unfair_lock_opaque;
    ++v10;
    if (v13)
    {
      v10 = v17;
      goto LABEL_18;
    }
  }
}