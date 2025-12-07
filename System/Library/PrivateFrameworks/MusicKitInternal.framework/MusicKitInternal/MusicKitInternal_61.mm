uint64_t MusicRoute.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0]([v1 hash]);
  return sub_1D5616328();
}

uint64_t sub_1D5415114(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0]([v2 hash]);
  return sub_1D5616328();
}

unint64_t sub_1D5415168()
{
  result = qword_1EC7F6260;
  if (!qword_1EC7F6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6260);
  }

  return result;
}

uint64_t sub_1D54151BC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicRoute.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MusicItem<>.==~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1D560EC98();
  sub_1D560EC98();
  v13 = sub_1D560D528();
  v14 = *(v6 + 8);
  v14(v10, v4);
  v14(v12, v4);
  return v13 & 1;
}

uint64_t MusicItem.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D560EC18() == a1 && v12 == a2)
  {

    goto LABEL_8;
  }

  v14 = sub_1D5616168();

  if (v14)
  {
LABEL_8:
    v15 = 1;
    return v15 & 1;
  }

  sub_1D560EC98();
  v15 = sub_1D560D788();
  (*(v8 + 8))(v11, v6);
  return v15 & 1;
}

double sub_1D5415478@<D0>(double *a1@<X8>)
{
  v29 = a1;
  v30 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v31 = v1;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D56119D8();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  sub_1D5610708();
  v28 = sub_1D56119C8();
  v15 = v14;
  v16 = *(v7 + 8);
  v16(v13, v5);
  if (v15)
  {
    OUTLINED_FUNCTION_6_98();
    v19 = v18 | 3;
LABEL_5:
    *v4 = v19;
    v4[1] = v17;
    v23 = v31;
    v24 = v30;
    (*(v31 + 104))(v4, *MEMORY[0x1E69763E0], v30);
    sub_1D50F96EC();
    swift_allocError();
    (*(v23 + 16))(v25, v4, v24);
    swift_willThrow();
    (*(v23 + 8))(v4, v24);
    return result;
  }

  sub_1D5610708();
  v20 = sub_1D56119A8();
  v22 = v21;
  v16(v11, v5);
  if (v22)
  {
    OUTLINED_FUNCTION_6_98();
    goto LABEL_5;
  }

  result = v28 / 1000.0;
  v27 = v29;
  *v29 = result;
  v27[1] = v20 / 1000.0;
  return result;
}

uint64_t SpatialOffset.convertToCloudSpatialOffsetAttribute()()
{
  v1 = sub_1D56119D8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  v11 = *v0 * 1000.0;
  if (v11 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v0[1] * 1000.0;
  v13 = COERCE_UNSIGNED_INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(*v0 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL || v13)
  {
    goto LABEL_10;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 < 9.22337204e18)
  {
    sub_1D56119B8();
    (*(v3 + 16))(v7, v10, v1);
    sub_1D5614A88();
    sub_1D5614BD8();
    sub_1D56106F8();
    return (*(v3 + 8))(v10, v1);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t MusicCatalogSearchSuggestionsResponse.internalTopResults.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6280, &unk_1D5662DD0);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  sub_1D5415B3C(v3);
  v8 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    sub_1D4E765C8(v3, &qword_1EC7F6280, &unk_1D5662DD0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    type metadata accessor for GenericMusicItem(0);
    OUTLINED_FUNCTION_2_170();
    sub_1D5417674(v10, v11, &protocol conformance descriptor for GenericMusicItem);
    sub_1D560D9F8();
    result = OUTLINED_FUNCTION_8_120();
    if (!v13)
    {
      return sub_1D4E765C8(v7, &qword_1EC7EF3F8, &qword_1D5631200);
    }
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    OUTLINED_FUNCTION_4();
    (*(v15 + 16))(v7, v3, v14);
    sub_1D5417620(v3, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
    v16 = OUTLINED_FUNCTION_128();
    return v17(v16);
  }

  return result;
}

uint64_t sub_1D5415B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F62D0, &qword_1D5662F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  sub_1D560EA68();
  v5 = sub_1D560CDB8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E765C8(v4, &qword_1EC7F62D0, &qword_1D5662F20);
    v6 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults(0);
    v7 = a1;
    v8 = 1;
  }

  else
  {
    sub_1D560CDA8();
    (*(*(v5 - 8) + 8))(v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F62D8, &qword_1D5662F28);
    v9 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults(0);
    v8 = swift_dynamicCast() ^ 1;
    v7 = a1;
    v6 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults(uint64_t a1)
{
  result = qword_1EC7F62B0;
  if (!qword_1EC7F62B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5415CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1D4F43D5C(a1, v7, &qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_8_120();
  if (v14)
  {
    type metadata accessor for GenericMusicItem(0);
    OUTLINED_FUNCTION_2_170();
    sub_1D5417674(v15, v16, &protocol conformance descriptor for GenericMusicItem);
    sub_1D560D9F8();
    sub_1D4E765C8(a1, &qword_1EC7EF3F8, &qword_1D5631200);
    OUTLINED_FUNCTION_8_120();
    if (!v14)
    {
      sub_1D4E765C8(v7, &qword_1EC7EF3F8, &qword_1D5631200);
    }
  }

  else
  {
    sub_1D4E765C8(a1, &qword_1EC7EF3F8, &qword_1D5631200);
    (*(v10 + 32))(v13, v7, v8);
  }

  return (*(v10 + 32))(a2, v13, v8);
}

uint64_t static MusicCatalogSearchSuggestionsResponse.InternalResults.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_3_172();
  sub_1D5417674(v3, v2, &protocol conformance descriptor for GenericMusicItem);
  sub_1D5417674(&qword_1EDD5C5F8, v2, &protocol conformance descriptor for GenericMusicItem);

  return sub_1D560DAA8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D4F0A558();
  OUTLINED_FUNCTION_128();

  return sub_1D5614CB8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D4F0A558();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5416064(uint64_t a1)
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D4F0A558();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D54160C4()
{
  v0 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults(0);
  result = sub_1D5417674(&qword_1EC7F62A0, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults, &protocol conformance descriptor for MusicCatalogSearchSuggestionsResponse.InternalResults);
  qword_1EC7F6268 = v0;
  unk_1EC7F6270 = result;
  return result;
}

uint64_t static MusicCatalogSearchSuggestionsResponse.extendedResultsType.getter()
{
  if (qword_1EC7E9630 != -1)
  {
    swift_once();
  }

  return qword_1EC7F6268;
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.init<A>(for:configuration:rawExtendedResults:with:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v45 = a5;
  v47 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v44 = v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6288, &unk_1D5662DE0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);
  v21 = OUTLINED_FUNCTION_22(v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v43 - v25;

  sub_1D560EBE8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6290, &qword_1D5662DF0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v27) == 1)
  {
    sub_1D4E765C8(v19, &qword_1EC7F6288, &unk_1D5662DE0);
    v28 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D5612398();
    OUTLINED_FUNCTION_24_0();
    (*(v29 + 8))(v19, v27);
    v28 = 0;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  __swift_storeEnumTagSinglePayload(v26, v28, 1, v30);
  v46 = v26;
  sub_1D4F43D5C(v26, v24, &qword_1EC7F1FF0, &unk_1D5645BF8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v31) == 1)
  {
    sub_1D4E765C8(v24, &qword_1EC7F1FF0, &unk_1D5645BF8);
    v32 = 1;
    v33 = v47;
  }

  else
  {
    v34 = sub_1D560CD98();
    v35 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v34);
    v43[1] = type metadata accessor for GenericMusicItem(0);
    sub_1D5417674(&qword_1EC7EEB48, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    OUTLINED_FUNCTION_1_166();
    sub_1D5417674(v36, type metadata accessor for GenericMusicItem, v37);
    v33 = v47;
    sub_1D5612368();
    sub_1D4E765C8(v35, &qword_1EC7EA7D8, &unk_1D561E8B0);
    OUTLINED_FUNCTION_24_0();
    (*(v38 + 8))(v24, v31);
    v32 = 0;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  __swift_storeEnumTagSinglePayload(v15, v32, 1, v39);
  sub_1D5415CF4(v15, a6);

  sub_1D560EC08();
  OUTLINED_FUNCTION_4_0();
  (*(v40 + 8))(a2);
  OUTLINED_FUNCTION_24_0();
  (*(v41 + 8))(v33, a4);
  return sub_1D4E765C8(v46, &qword_1EC7F1FF0, &unk_1D5645BF8);
}

uint64_t sub_1D5416644()
{
  v0 = sub_1D5612658();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CloudGenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6298, &qword_1D5662DF8);
  sub_1D5610648();
  sub_1D51374CC(v2, v5);
  sub_1D5417674(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem, &protocol conformance descriptor for CloudGenericMusicItem);
  sub_1D5610598();
  return sub_1D5417620(v5, type metadata accessor for CloudGenericMusicItem);
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.convertToCatalogSearchSuggestionsRawExtendedResults<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v29 = a2;
  v30 = a3;
  v33 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6288, &unk_1D5662DE0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v27 - v7;
  v28 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6290, &qword_1D5662DF0);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_3_172();
  sub_1D5417674(v20, v4, &protocol conformance descriptor for GenericMusicItem);
  OUTLINED_FUNCTION_1_166();
  sub_1D5417674(v21, v4, v22);
  sub_1D4F1ABE8(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D560DA98();
  (*(v9 + 8))(v12, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6298, &qword_1D5662DF8);
  sub_1D5612398();
  v23 = OUTLINED_FUNCTION_128();
  v24(v23);
  v25 = v32;
  (*(v16 + 16))(v32, v19, v14);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v14);
  sub_1D560EBF8();
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_1D5416AF0()
{
  v0 = type metadata accessor for CloudGenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D5612658();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  sub_1D5610648();
  sub_1D5137F18(v6);
  sub_1D5417620(v2, type metadata accessor for CloudGenericMusicItem);
  sub_1D5417674(&qword_1EC7F62C8, MEMORY[0x1E6976578], MEMORY[0x1E6976570]);
  sub_1D5610598();
  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall MusicCatalogSearchSuggestionsResponse.InternalResults.appendExtendedDescription(forDebugging:to:)(Swift::Bool forDebugging, Swift::String *to)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D538DD80();

  sub_1D56155F8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v6);
  v3[3] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v3[4] = v7;
  OUTLINED_FUNCTION_4();
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_1D5416E84;

  return MEMORY[0x1EEDCE928](v9, a2, a3, v7);
}

uint64_t sub_1D5416E84()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D4F25038;
  }

  else
  {
    v2 = sub_1D5416F98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5416F98()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[5] + 16))(v1, v0[6], v2);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  v3[3] = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults(0);
  v3[4] = sub_1D5417674(&qword_1EC7F62A0, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults, &protocol conformance descriptor for MusicCatalogSearchSuggestionsResponse.InternalResults);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  sub_1D5415CF4(v1, boxed_opaque_existential_0);
  v5 = OUTLINED_FUNCTION_128();
  v6(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D54170C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561D750;
  v5 = v4 + v3;
  sub_1D560D918();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7 = *(v1 + 16);
  v7(v5 + v2, v6, v0);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  v7(v5 + 2 * v2, v8, v0);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EC7F5D98);
  v7(v5 + 3 * v2, v9, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 4 * v2, v10, v0);
  qword_1EC7F6278 = v4;
  return result;
}

double static MusicCatalogSearchSuggestionsResponse.InternalResults.extendedSupportedTypeValues.getter()
{
  if (qword_1EC7E9638 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D54173C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4ECF3E8;

  return MusicCatalogSearchSuggestionsResponse.InternalResults.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t sub_1D5417474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5417674(&qword_1EC7F62A8, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults, &protocol conformance descriptor for MusicCatalogSearchSuggestionsResponse.InternalResults);

  return MEMORY[0x1EEDCF180](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5417508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5417674(&qword_1EC7F62C0, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults, &protocol conformance descriptor for MusicCatalogSearchSuggestionsResponse.InternalResults);

  return MEMORY[0x1EEDCF178](a1, a2, a3, v6);
}

void sub_1D54175B4(uint64_t a1)
{
  sub_1D53263DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D5417620(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D5417674(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.init(collaborator:playlist:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest(0);
  sub_1D5417790(a1, a3 + *(v6 + 20));
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v9 = *(v8 + 32);

  return v9(a3, a2, v7);
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest(uint64_t a1)
{
  result = qword_1EC7F62E8;
  if (!qword_1EC7F62E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5417790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Collaborator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.collaborator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest(0) + 20);

  return sub_1D5417898(v3, a1);
}

uint64_t sub_1D5417898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Collaborator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D50D5BD0;

  return sub_1D5417988(1);
}

uint64_t sub_1D5417988(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 232) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  *(v2 + 152) = swift_task_alloc();
  v3 = sub_1D560D838();
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  *(v2 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5417AC8, 0, 0);
}

uint64_t sub_1D5417AC8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  sub_1D5614898();
  sub_1D560EC98();
  sub_1D560D5C8();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = sub_1D560D4C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);
  v8 = *(v0 + 192);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(*(v0 + 192), &unk_1EC7EBF20, &unk_1D561F530);
    v9 = 4;
LABEL_5:
    sub_1D4F763B4();
    swift_allocError();
    *v15 = v9;
    swift_willThrow();

    OUTLINED_FUNCTION_55();

    return v16();
  }

  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  sub_1D560D4B8();
  (*(*(v6 - 8) + 8))(v8, v6);
  type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest(0);
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D54185D8(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  sub_1D560EC98();
  sub_1D560D7A8();
  v5(v10, v12);
  v13 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    v14 = *(v0 + 152);

    sub_1D4E50004(v14, &unk_1EC7F1970, &qword_1D561F4A0);
    v9 = 2;
    goto LABEL_5;
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 232);
  sub_1D560F138();
  (*(*(v13 - 8) + 8))(v18, v13);
  v20 = [objc_opt_self() sharedCloudController];
  *(v0 + 200) = v20;
  v21 = sub_1D5614D38();
  *(v0 + 208) = v21;

  v22 = sub_1D5614D38();
  *(v0 + 216) = v22;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D5417ED0;
  v23 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D4FE2404;
  *(v0 + 104) = &block_descriptor_24;
  *(v0 + 112) = v23;
  [v20 respondToPendingCollaborator:v21 onCollaborationWithPersistentID:v22 withApproval:v19 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D5417ED0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1D5418080;
  }

  else
  {
    v2 = sub_1D5417FDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5417FDC()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D5418080(uint64_t a1)
{
  v2 = v1[27];
  v4 = v1[25];
  v3 = v1[26];
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D505A824;

  return sub_1D5417988(0);
}

uint64_t static MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest(0) + 20);

  return static Playlist.Collaborator.== infix(_:_:)((a1 + v4), (a2 + v4));
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.hash(into:)(uint64_t a1)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_1_167();
  sub_1D54185D8(v1, v2, MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest(0);
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_0_223();
  sub_1D54185D8(v3, v4, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_1_167();
  sub_1D54185D8(v0, v1, MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest(0);
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_0_223();
  sub_1D54185D8(v2, v3, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D54183E0(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D54185D8(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5611AB8();
  sub_1D54185D8(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5418554(uint64_t a1)
{
  result = sub_1D5614898();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Playlist.Collaborator(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D54185D8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for StorePlatformUserProfile(uint64_t a1)
{
  result = qword_1EDD55548;
  if (!qword_1EDD55548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54186A0(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4F55058(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1D4E518A0(319, &qword_1EDD53A08, MEMORY[0x1E6975528]);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1D541884C(_BYTE *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v111[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v111[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v111[-v23];
  if (*a1 == 2)
  {
    if (*a2 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v30 || ((v26 ^ v27) & 1) != 0)
    {
      return result;
    }
  }

  v114 = v13;
  v115 = type metadata accessor for StorePlatformUserProfile(0);
  v28 = v115[5];
  v113 = v17;
  v29 = *(v17 + 48);
  sub_1D4F55DC8(&a1[v28], v24);
  sub_1D4F55DC8(&a2[v28], &v24[v29]);
  OUTLINED_FUNCTION_10(v24);
  if (!v30)
  {
    sub_1D4F55DC8(v24, v16);
    OUTLINED_FUNCTION_10(&v24[v29]);
    if (!v30)
    {
      (*(v6 + 32))(v9, &v24[v29], v4);
      OUTLINED_FUNCTION_10_108();
      sub_1D541A7F0(v32, v33, v34, MEMORY[0x1E6975DB8]);
      v112 = sub_1D5614D18();
      v35 = v21;
      v36 = a1;
      v37 = a2;
      v38 = v6;
      v39 = *(v6 + 8);
      v39(v9, v4);
      v39(v16, v4);
      v6 = v38;
      a2 = v37;
      a1 = v36;
      v21 = v35;
      sub_1D4E50004(v24, &qword_1EC7EB5B8, &unk_1D56206A0);
      if ((v112 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

    (*(v6 + 8))(v16, v4);
LABEL_14:
    v31 = v24;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10(&v24[v29]);
  if (!v30)
  {
    goto LABEL_14;
  }

  sub_1D4E50004(v24, &qword_1EC7EB5B8, &unk_1D56206A0);
LABEL_19:
  v40 = v115;
  v41 = v115[6];
  v42 = &a1[v41];
  v43 = a1[v41 + 8];
  v44 = &a2[v41];
  v45 = a2[v41 + 8];
  if (v43)
  {
    if (!v45)
    {
      return 0;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  v46 = v115[7];
  v47 = *&a1[v46];
  v48 = *&a1[v46 + 8];
  v49 = &a2[v46];
  v50 = v47 == *v49 && v48 == v49[1];
  if (!v50 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_3();
  if (v53)
  {
    if (!v51)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v52);
    v56 = v30 && v54 == v55;
    if (!v56 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_3();
  if (v59)
  {
    if (!v57)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v58);
    v62 = v30 && v60 == v61;
    if (!v62 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_173();
  if (v30)
  {
    if (v63 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v64 || ((v65 ^ v66) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173();
  if (v30)
  {
    if (v67 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v68 || ((v69 ^ v70) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173();
  if (v30)
  {
    if (v71 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v72 || ((v73 ^ v74) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173();
  if (v30)
  {
    if (v75 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v76 || ((v77 ^ v78) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173();
  if (v30)
  {
    if (v79 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v80 || ((v81 ^ v82) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173();
  if (v30)
  {
    if (v83 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v84 || ((v85 ^ v86) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173();
  if (v30)
  {
    if (v87 != 2)
    {
      return 0;
    }

    goto LABEL_90;
  }

  result = OUTLINED_FUNCTION_39();
  if (!v88 && ((v89 ^ v90) & 1) == 0)
  {
LABEL_90:
    v91 = v40[17];
    v92 = a1;
    v93 = *&a2[v91 + 8];
    if (*&a1[v91 + 8])
    {
      if (!v93)
      {
        return 0;
      }

      OUTLINED_FUNCTION_31_0(&a1[v91]);
      v96 = v30 && v94 == v95;
      if (!v96 && (sub_1D5616168() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v93)
    {
      return 0;
    }

    v97 = v115[18];
    v98 = *(v113 + 48);
    sub_1D4F55DC8(&a1[v97], v21);
    sub_1D4F55DC8(&a2[v97], v21 + v98);
    OUTLINED_FUNCTION_10(v21);
    if (v30)
    {
      OUTLINED_FUNCTION_10(v21 + v98);
      if (v30)
      {
        sub_1D4E50004(v21, &qword_1EC7EB5B8, &unk_1D56206A0);
LABEL_109:
        v106 = v115[19];
        v107 = *&a2[v106 + 8];
        if (*&v92[v106 + 8])
        {
          if (!v107)
          {
            return 0;
          }

          OUTLINED_FUNCTION_31_0(&v92[v106]);
          v110 = v30 && v108 == v109;
          return v110 || (sub_1D5616168() & 1) != 0;
        }

        return !v107;
      }
    }

    else
    {
      sub_1D4F55DC8(v21, v114);
      OUTLINED_FUNCTION_10(v21 + v98);
      if (!v99)
      {
        (*(v6 + 32))(v9, v21 + v98, v4);
        OUTLINED_FUNCTION_10_108();
        sub_1D541A7F0(v100, v101, v102, MEMORY[0x1E6975DB8]);
        v103 = v114;
        v104 = sub_1D5614D18();
        v105 = *(v6 + 8);
        v105(v9, v4);
        v105(v103, v4);
        sub_1D4E50004(v21, &qword_1EC7EB5B8, &unk_1D56206A0);
        if ((v104 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_109;
      }

      (*(v6 + 8))(v114, v4);
    }

    v31 = v21;
LABEL_15:
    sub_1D4E50004(v31, &qword_1EC7EC330, &qword_1D56222C0);
    return 0;
  }

  return result;
}

uint64_t sub_1D5418F48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001D56883E0 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x756F72676B636162 && a2 == 0xEF6567616D49646ELL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001DLL && 0x80000001D5687B40 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000001D568DC10 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001D5687BA0 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x776F6C6C6F467369 && a2 == 0xEC000000656C6261;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x72616F426E4F7369 && a2 == 0xEB00000000646564;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001D5687B60 == a2;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7461766972507369 && a2 == 0xE900000000000065;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6966697265567369 && a2 == 0xEA00000000006465;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1701667182 && a2 == 0xE400000000000000;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x49656C69666F7270 && a2 == 0xEC0000006567616DLL;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x72506C6169636F73 && a2 == 0xEF6449656C69666FLL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1D5616168();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D5419424(char a1)
{
  result = 0x756F72676B636162;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0x6449797469746E65;
      break;
    case 4:
      result = 0x7954797469746E65;
      break;
    case 5:
      result = 0x656C646E6168;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x776F6C6C6F467369;
      break;
    case 9:
      result = 0x72616F426E4F7369;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x7461766972507369;
      break;
    case 12:
      result = 0x6966697265567369;
      break;
    case 13:
      result = 1701667182;
      break;
    case 14:
      result = 0x49656C69666F7270;
      break;
    case 15:
      result = 0x72506C6169636F73;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D5419620(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6308, &unk_1D5663128);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541A608();
  sub_1D56163D8();
  LOBYTE(v19) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616038();
  if (!v2)
  {
    v11 = type metadata accessor for StorePlatformUserProfile(0);
    LOBYTE(v19) = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D541A71C(&qword_1EC7EC350, MEMORY[0x1E6975DA8]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_7(2);
    sub_1D5616058();
    v13 = (v3 + *(v11 + 28));
    v15 = *v13;
    v14 = v13[1];
    v18[1] = v12;
    *&v19 = v15;
    *(&v19 + 1) = v14;
    v20 = 3;
    v16 = sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    v18[0] = v16;
    OUTLINED_FUNCTION_7(4);
    sub_1D5616028();
    OUTLINED_FUNCTION_7(5);
    sub_1D5616028();
    OUTLINED_FUNCTION_24_9(6);
    OUTLINED_FUNCTION_24_9(7);
    OUTLINED_FUNCTION_24_9(8);
    OUTLINED_FUNCTION_24_9(9);
    OUTLINED_FUNCTION_24_9(10);
    OUTLINED_FUNCTION_24_9(11);
    OUTLINED_FUNCTION_24_9(12);
    OUTLINED_FUNCTION_7(13);
    sub_1D5616028();
    LOBYTE(v19) = 14;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v19 = *(v3 + *(v11 + 76));
    v20 = 15;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D54199B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  if (*v1 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v15 = type metadata accessor for StorePlatformUserProfile(0);
  sub_1D4F55DC8(&v1[v15[5]], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v7, v14, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    v19 = sub_1D541A7F0(v16, v17, v18, MEMORY[0x1E6975DB0]);
    OUTLINED_FUNCTION_25_61(v19);
    (*(v4 + 8))(v7, v2);
  }

  v20 = &v1[v15[6]];
  if (v20[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v21 = *v20;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v21);
  }

  sub_1D5614E28();
  if (*&v1[v15[8] + 8])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_67();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*&v1[v15[9] + 8])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_67();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_17_82();
  if (!v22)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82();
  if (!v22)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82();
  if (!v22)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82();
  if (!v22)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82();
  if (!v22)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82();
  if (!v22)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82();
  if (!v22)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*&v1[v15[17] + 8])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_67();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F55DC8(&v1[v15[18]], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    v26 = sub_1D541A7F0(v23, v24, v25, MEMORY[0x1E6975DB0]);
    OUTLINED_FUNCTION_25_61(v26);
    (*(v4 + 8))(v7, v2);
  }

  if (!*&v1[v15[19] + 8])
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  return sub_1D5614E28();
}

uint64_t sub_1D5419E14()
{
  sub_1D56162D8();
  sub_1D54199B0(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5419E54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6300, &qword_1D5663120);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v50 = type metadata accessor for StorePlatformUserProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  v48 = a1;
  v49 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541A608();
  sub_1D5616398();
  if (!v2)
  {
    v44 = a2;
    v45 = v8;
    v46 = v13;
    LOBYTE(v51) = 0;
    OUTLINED_FUNCTION_6_133();
    v21 = sub_1D5615F48();
    v22 = v49;
    *v49 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v51) = 1;
    v23 = sub_1D541A71C(&qword_1EDD531B8, MEMORY[0x1E6975DC0]);
    OUTLINED_FUNCTION_6_133();
    sub_1D5615F78();
    v24 = v50;
    v43 = v23;
    sub_1D4F55E8C(v11, &v22[v50[5]]);
    OUTLINED_FUNCTION_0_224(2);
    v25 = sub_1D5615F68();
    v26 = &v22[v24[6]];
    *v26 = v25;
    v26[8] = v27 & 1;
    v52 = 3;
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_6_133();
    sub_1D5615FD8();
    v28 = *(&v51 + 1);
    v29 = &v22[v24[7]];
    *v29 = v51;
    v29[1] = v28;
    OUTLINED_FUNCTION_0_224(4);
    v30 = sub_1D5615F38();
    v31 = &v22[v24[8]];
    *v31 = v30;
    v31[1] = v32;
    OUTLINED_FUNCTION_0_224(5);
    v33 = sub_1D5615F38();
    v34 = &v22[v24[9]];
    *v34 = v33;
    v34[1] = v35;
    OUTLINED_FUNCTION_0_224(6);
    v22[v24[10]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(7);
    v22[v24[11]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(8);
    v22[v24[12]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(9);
    v49[v50[13]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(10);
    v49[v50[14]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(11);
    v49[v50[15]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(12);
    v49[v50[16]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(13);
    v36 = sub_1D5615F38();
    v37 = &v49[v50[17]];
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v51) = 14;
    OUTLINED_FUNCTION_6_133();
    sub_1D5615F78();
    sub_1D4F55E8C(v45, &v49[v50[18]]);
    v52 = 15;
    OUTLINED_FUNCTION_6_133();
    sub_1D5615F78();
    v39 = OUTLINED_FUNCTION_15_84();
    v40(v39);
    v41 = v49;
    *&v49[v50[19]] = v51;
    sub_1D541A65C(v41, v44);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_1D541A6C0(v41);
  }

  OUTLINED_FUNCTION_11_109();
  result = __swift_destroy_boxed_opaque_existential_1(v48);
  if (v11)
  {
    result = OUTLINED_FUNCTION_46_4();
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (!v19)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_10:
  result = OUTLINED_FUNCTION_46_4();
  if ((v19 & 1) == 0)
  {
LABEL_11:
    if (v20)
    {
      return OUTLINED_FUNCTION_46_4();
    }

    return result;
  }

LABEL_6:
  result = OUTLINED_FUNCTION_46_4();
  if (v20)
  {
    return OUTLINED_FUNCTION_46_4();
  }

  return result;
}

uint64_t sub_1D541A4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5418F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D541A518(uint64_t a1)
{
  v2 = sub_1D541A608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541A554(uint64_t a1)
{
  v2 = sub_1D541A608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D541A5CC(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D54199B0(v2);
  return sub_1D5616328();
}

unint64_t sub_1D541A608()
{
  result = qword_1EDD55578[0];
  if (!qword_1EDD55578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55578);
  }

  return result;
}

uint64_t sub_1D541A65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformUserProfile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D541A6C0(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformUserProfile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D541A71C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v4 = MEMORY[0x1E6975968];
    sub_1D541A88C(&qword_1EDD533A8, MEMORY[0x1E6975968], MEMORY[0x1E6975988]);
    sub_1D541A88C(&qword_1EDD533B0, v4, MEMORY[0x1E6975970]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D541A7F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D541A88C(a2, MEMORY[0x1E6975968], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D541A88C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D541A8D4()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EDD76B70);
  __swift_project_value_buffer(v0, qword_1EDD76B70);
  return sub_1D560FE68();
}

_BYTE *storeEnumTagSinglePayload for StorePlatformUserProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D541AA00()
{
  result = qword_1EC7F6310[0];
  if (!qword_1EC7F6310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F6310);
  }

  return result;
}

unint64_t sub_1D541AA58()
{
  result = qword_1EDD55568;
  if (!qword_1EDD55568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55568);
  }

  return result;
}

unint64_t sub_1D541AAB0()
{
  result = qword_1EDD55570;
  if (!qword_1EDD55570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55570);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_61(uint64_t a1)
{

  return sub_1D5614CB8();
}

void static MusicIntentDonation.Donator.scheduleDonation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  (*(a4 + 24))(&v22, a3, a4);
  if (sub_1D541B200(a3, a4))
  {
    if ((*(a4 + 40))(a3, a4))
    {

      v11 = sub_1D5615458();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = a3;
      v12[5] = a4;
      v12[6] = a1;
      v12[7] = a2;

      sub_1D4F405A0(0, 0, v10, &unk_1D5663258, v12);

      sub_1D4E6C9CC(v10, &qword_1EC7EB710, &qword_1D561F440);
      return;
    }

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
    }

    v18 = sub_1D560C758();
    __swift_project_value_buffer(v18, qword_1EDD76AF0);

    v21 = sub_1D560C738();
    v14 = sub_1D56156E8();

    if (os_log_type_enabled(v21, v14))
    {
      OUTLINED_FUNCTION_142();
      v15 = OUTLINED_FUNCTION_110();
      v22 = v15;
      v19 = OUTLINED_FUNCTION_11_110(4.8149e-34);

      *(v10 + 4) = v19;
      v17 = "MusicIntentDonator: %s is disabled.";
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
    }

    v13 = sub_1D560C758();
    __swift_project_value_buffer(v13, qword_1EDD76AF0);

    v21 = sub_1D560C738();
    v14 = sub_1D56156E8();

    if (os_log_type_enabled(v21, v14))
    {
      OUTLINED_FUNCTION_142();
      v15 = OUTLINED_FUNCTION_110();
      v22 = v15;
      v16 = OUTLINED_FUNCTION_11_110(4.8149e-34);

      *(v10 + 4) = v16;
      v17 = "MusicIntentDonator: %s is not defined in IntentDonation of Info.plist";
LABEL_12:
      _os_log_impl(&dword_1D4E3F000, v21, v14, v17, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_54();

      return;
    }
  }

  v20 = v21;
}

uint64_t static MusicIntentDonation.Donator.deleteAll()(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D541AED4, 0, 0);
}

uint64_t sub_1D541AED4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = objc_opt_self();
  (*(v2 + 32))(v1, v2);
  v4 = sub_1D5614D38();
  v0[20] = v4;

  v0[2] = v0;
  v0[3] = sub_1D541B038;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4FD9A40;
  v0[13] = &block_descriptor_25;
  v0[14] = v5;
  [v3 deleteInteractionsWithGroupIdentifier:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D541B038()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1D541B194;
  }

  else
  {
    v5 = sub_1D541B138;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D541B138()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D541B194(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v3();
}

BOOL sub_1D541B200(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v8);
  static ClientInfo.optionalDefault.getter(v6);
  if (*(&v6[0] + 1) && (v2 = v7, , v3 = sub_1D4E6C9CC(v6, &qword_1EC7ED470, &qword_1D5625260), v2))
  {
    MEMORY[0x1EEE9AC00](v3);
    v4 = sub_1D4F25A04();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1D541B350(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v10 = sub_1D56158D8();
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v11 = swift_task_alloc();
  v7[23] = v11;
  v7[24] = *(a6 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v7[28] = v12;
  *v12 = v7;
  v12[1] = sub_1D541B524;

  return v14(v11);
}

uint64_t sub_1D541B524()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6DFA0](sub_1D541B618, 0, 0);
}

uint64_t sub_1D541B618()
{
  v1 = v0[23];
  v2 = v0[19];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[22] + 8))(v1, v0[21]);
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EDD76AF0);
    v4 = sub_1D560C738();
    v5 = sub_1D56156E8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D4E3F000, v4, v5, "MusicIntentDonator: intentBuilder returned nil, I will not donate anything.", v6, 2u);
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_4_133();

    OUTLINED_FUNCTION_55();

    return v7();
  }

  else
  {
    v13 = v0[20];
    (*(v0[24] + 32))(v0[27], v1, v2);
    v12 = (*(v13 + 48) + **(v13 + 48));
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_1D541B870;
    v11 = v0[19];
    v10 = v0[20];

    return v12(v11, v10);
  }
}

uint64_t sub_1D541B870()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D541B960, 0, 0);
}

uint64_t sub_1D541B960()
{
  v38 = v0;
  v1 = v0[30];
  if (!v1)
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
    }

    v12 = v0[26];
    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[19];
    v16 = sub_1D560C758();
    __swift_project_value_buffer(v16, qword_1EDD76AF0);
    v17 = *(v14 + 16);
    v17(v12, v13, v15);
    v18 = sub_1D560C738();
    v19 = sub_1D56156E8();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[26];
    if (v20)
    {
      v36 = v19;
      v22 = v0[24];
      v23 = v0[25];
      v24 = v0[19];
      OUTLINED_FUNCTION_142();
      v35 = OUTLINED_FUNCTION_110();
      v37 = v35;
      *v15 = 136446210;
      v17(v23, v21, v24);
      v25 = sub_1D5614DB8();
      v27 = v26;
      v28 = *(v22 + 8);
      v28(v21, v24);
      v29 = sub_1D4E6835C(v25, v27, &v37);

      *(v15 + 4) = v29;
      _os_log_impl(&dword_1D4E3F000, v18, v36, "MusicIntentDonator: %{public}s did not provide an INIntent to donate, I will not donate anything.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_54();
    }

    else
    {
      v30 = v0[24];
      v31 = v0[19];

      v28 = *(v30 + 8);
      v28(v21, v31);
    }

    v28(v0[27], v0[19]);
    OUTLINED_FUNCTION_4_133();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

  sub_1D541C4D4();
  v2 = v1;
  v3 = sub_1D4FE0510(v2, 0);
  v0[31] = v3;
  v4 = [v2 identifier];
  if (v4)
  {
    v5 = v4;
    [v3 setIdentifier_];
  }

  v7 = v0[19];
  v6 = v0[20];
  swift_getDynamicType();
  (*(v6 + 32))(v7, v6);
  v8 = sub_1D5614D38();

  [v3 setGroupIdentifier_];

  v0[2] = v0;
  v0[3] = sub_1D541BD24;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4FD9A40;
  v0[13] = &block_descriptor_11;
  v0[14] = v9;
  [v3 donateInteractionWithCompletion_];
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DEC8](v10);
}

uint64_t sub_1D541BD24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = sub_1D541BFF4;
  }

  else
  {
    v5 = sub_1D541BE24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D541BE24()
{
  v21 = v0;
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
  }

  v1 = *(v0 + 248);
  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76AF0);
  v3 = v1;
  v4 = sub_1D560C738();
  v5 = sub_1D56156E8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  if (v6)
  {
    OUTLINED_FUNCTION_142();
    v9 = OUTLINED_FUNCTION_110();
    v20 = v9;
    *v3 = 136446210;
    v10 = v7;
    v11 = [v10 description];
    v12 = sub_1D5614D68();
    v14 = v13;

    v15 = sub_1D4E6835C(v12, v14, &v20);

    *(v3 + 1) = v15;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "MusicIntentDonator: Successfully donated %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_9_113();
  v17(v16);
  OUTLINED_FUNCTION_4_133();

  OUTLINED_FUNCTION_55();

  return v18();
}

void sub_1D541BFF4(uint64_t a1)
{
  swift_willThrow();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
  }

  v3 = v1[31];
  v2 = v1[32];
  v4 = sub_1D560C758();
  __swift_project_value_buffer(v4, qword_1EDD76AF0);
  v5 = v3;
  v6 = v2;
  v7 = sub_1D560C738();
  v8 = sub_1D56156C8();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[31];
  v10 = v1[32];
  v12 = v1[30];
  if (v9)
  {
    v28 = v1[30];
    v13 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = v11;
    v15 = [v14 description];
    v16 = sub_1D5614D68();
    v18 = v17;

    v19 = sub_1D4E6835C(v16, v18, v29);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    v1[18] = v10;
    v20 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v21 = sub_1D5614DB8();
    v23 = sub_1D4E6835C(v21, v22, v29);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_1D4E3F000, v7, v8, "MusicIntentDonator: Failed to donate %{public}s because of error: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  v24 = OUTLINED_FUNCTION_9_113();
  v25(v24);
  OUTLINED_FUNCTION_4_133();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D541C264(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D541C338;

  return sub_1D541B350(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1D541C338()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();

  OUTLINED_FUNCTION_55();

  return v0();
}

_BYTE *sub_1D541C420(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D541C4D4()
{
  result = qword_1EDD526E8;
  if (!qword_1EDD526E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526E8);
  }

  return result;
}

BOOL static LegacyModelCodableMusicPin.Attributes.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63D0, &qword_1D5663290);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = *a1;
  v17 = *a2;
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  v19 = *(v18 + 20);
  v20 = *(v14 + 48);
  sub_1D541C848(&a1[v19], v3);
  sub_1D541C848(&a2[v19], v3 + v20);
  OUTLINED_FUNCTION_37_39(v3, 1);
  if (v21)
  {
    OUTLINED_FUNCTION_37_39(v3 + v20, 1);
    if (v21)
    {
      sub_1D4E50004(v3, &qword_1EC7F63C8, &qword_1D5663288);
      goto LABEL_16;
    }

LABEL_13:
    sub_1D4E50004(v3, &qword_1EC7F63D0, &qword_1D5663290);
    return 0;
  }

  sub_1D541C848(v3, v13);
  OUTLINED_FUNCTION_37_39(v3 + v20, 1);
  if (v21)
  {
    (*(v8 + 8))(v13, v6);
    goto LABEL_13;
  }

  (*(v8 + 32))(v2, v3 + v20, v6);
  sub_1D541CFBC(&qword_1EC7F63D8, &qword_1EC7F4E18, &protocol conformance descriptor for LegacyModelCodableMusicPinItem, MEMORY[0x1E6975D40]);
  v23 = sub_1D5614D18();
  v24 = *(v8 + 8);
  v24(v2, v6);
  v24(v13, v6);
  sub_1D4E50004(v3, &qword_1EC7F63C8, &qword_1D5663288);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v25 = *(v18 + 24);
  v26 = &a1[v25];
  v27 = a1[v25 + 8];
  v28 = &a2[v25];
  v29 = a2[v25 + 8];
  if (v27)
  {
    return (v29 & 1) != 0;
  }

  if (*v26 != *v28)
  {
    v29 = 1;
  }

  return (v29 & 1) == 0;
}

uint64_t sub_1D541C848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D541C8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1835365481 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D541C9C4(char a1)
{
  if (!a1)
  {
    return 0x6E6F69746361;
  }

  if (a1 == 1)
  {
    return 1835365481;
  }

  return 0x6E6F697469736F70;
}

uint64_t sub_1D541CA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D541C8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D541CA58(uint64_t a1)
{
  v2 = sub_1D541CC9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541CA94(uint64_t a1)
{
  v2 = sub_1D541CC9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodableMusicPin.Attributes.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63E0, &qword_1D5663298);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D541CC9C();
  OUTLINED_FUNCTION_15_35(&type metadata for LegacyModelCodableMusicPin.Attributes.CodingKeys, v9, v8);
  sub_1D541CCF0();
  OUTLINED_FUNCTION_10_43();
  sub_1D5616068();
  if (!v1)
  {
    type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
    sub_1D541D424(&qword_1EC7F63F8, MEMORY[0x1E6975D30]);
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616058();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1D541CC9C()
{
  result = qword_1EC7F63E8;
  if (!qword_1EC7F63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F63E8);
  }

  return result;
}

unint64_t sub_1D541CCF0()
{
  result = qword_1EC7F63F0;
  if (!qword_1EC7F63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F63F0);
  }

  return result;
}

uint64_t sub_1D541CD44(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t LegacyModelCodableMusicPin.Attributes.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *v1;
  sub_1D56162F8();
  if (v11 != 3)
  {
    MEMORY[0x1DA6EC0D0](v11);
  }

  v12 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  sub_1D541C848(&v1[*(v12 + 20)], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v2, v10, v3);
    sub_1D56162F8();
    sub_1D541CFBC(&qword_1EC7F6400, &qword_1EC7F6408, &protocol conformance descriptor for LegacyModelCodableMusicPinItem, MEMORY[0x1E6975D38]);
    sub_1D5614CB8();
    (*(v5 + 8))(v2, v3);
  }

  v13 = &v1[*(v12 + 24)];
  if (v13[8] == 1)
  {
    return sub_1D56162F8();
  }

  v15 = *v13;
  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](v15);
}

uint64_t sub_1D541CFBC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4DE0, &qword_1D5663280);
    sub_1D541CD44(a2, type metadata accessor for LegacyModelCodableMusicPinItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LegacyModelCodableMusicPin.Attributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6410, &qword_1D56632A0);
  OUTLINED_FUNCTION_4();
  v33 = v8;
  v34 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541CC9C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v12;
  v17 = v33;
  v37 = 0;
  sub_1D51D97B4();
  sub_1D5615F78();
  *v16 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  v36 = 1;
  sub_1D541D424(&qword_1EC7F6418, MEMORY[0x1E6975D48]);
  v18 = v3;
  sub_1D5615F78();
  v19 = v31;
  v20 = *(v31 + 20);
  v30 = v16;
  sub_1D541D4F8(v18, &v16[v20]);
  v35 = 2;
  v21 = sub_1D5615F68();
  v23 = v22;
  (*(v17 + 8))(v11, v34);
  v24 = v30;
  v25 = &v30[*(v19 + 24)];
  *v25 = v21;
  v25[8] = v23 & 1;
  OUTLINED_FUNCTION_0_225();
  sub_1D541E9D8(v24, v32, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_5_127();
  return sub_1D541EA38(v24, v27);
}

uint64_t sub_1D541D424(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4DE0, &qword_1D5663280);
    sub_1D541CD44(&qword_1EC7EC7F8, type metadata accessor for LegacyModelCodableMusicPinItem, &protocol conformance descriptor for LegacyModelCodableMusicPinItem);
    sub_1D541CD44(&qword_1EC7EC800, type metadata accessor for LegacyModelCodableMusicPinItem, &protocol conformance descriptor for LegacyModelCodableMusicPinItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D541D4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D541D56C(uint64_t a1)
{
  v2 = sub_1D541D628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541D5A8(uint64_t a1)
{
  v2 = sub_1D541D628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D541D628()
{
  result = qword_1EC7F6428;
  if (!qword_1EC7F6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6428);
  }

  return result;
}

uint64_t sub_1D541D69C(uint64_t a1)
{
  v2 = sub_1D541D758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541D6D8(uint64_t a1)
{
  v2 = sub_1D541D758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D541D758()
{
  result = qword_1EC7F6438;
  if (!qword_1EC7F6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6438);
  }

  return result;
}

uint64_t sub_1D541D82C(uint64_t a1)
{
  v2 = sub_1D541D9F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541D868(uint64_t a1)
{
  v2 = sub_1D541D9F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D541D8E8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D56163D8();
  return (*(v9 + 8))(v12, v7);
}

unint64_t sub_1D541D9F8()
{
  result = qword_1EC7F6448;
  if (!qword_1EC7F6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6448);
  }

  return result;
}

uint64_t LegacyModelCodableMusicPin.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LegacyModelCodableMusicPin.attributes.getter()
{
  OUTLINED_FUNCTION_24_63();
  OUTLINED_FUNCTION_0_225();
  return sub_1D541E9D8(v1 + v2, v0, v3);
}

uint64_t LegacyModelCodableMusicPin.relationships.getter()
{
  result = OUTLINED_FUNCTION_24_63();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t LegacyModelCodableMusicPin.views.getter()
{
  result = OUTLINED_FUNCTION_24_63();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t LegacyModelCodableMusicPin.meta.getter()
{
  result = OUTLINED_FUNCTION_24_63();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D541DBE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D560FE18();
  qword_1EC7F63A8 = v0;
  return result;
}

uint64_t sub_1D541DCBC()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F63B0);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F63B0);
  v2 = *MEMORY[0x1E6976828];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static LegacyModelCodableMusicPin.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9660 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EC7F63B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static LegacyModelCodableMusicPin.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D5616168()) && (v5 = type metadata accessor for LegacyModelCodableMusicPin(0), static LegacyModelCodableMusicPin.Attributes.== infix(_:_:)(a1 + v5[5], a2 + v5[5])) && *(a1 + v5[6]) == *(a2 + v5[6]) && *(a1 + v5[7]) == *(a2 + v5[7]))
  {
    v6 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D541DEA4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D541DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D541DF8C(uint64_t a1)
{
  v2 = sub_1D541E228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541DFC8(uint64_t a1)
{
  v2 = sub_1D541E228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodableMusicPin.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6450, &qword_1D56632C0);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D541E228();
  OUTLINED_FUNCTION_15_35(&type metadata for LegacyModelCodableMusicPin.CodingKeys, v9, v8);
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v1)
  {
    type metadata accessor for LegacyModelCodableMusicPin(0);
    type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
    OUTLINED_FUNCTION_12_90();
    sub_1D541CD44(v10, v11, &protocol conformance descriptor for LegacyModelCodableMusicPin.Attributes);
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
    sub_1D541E27C();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    sub_1D541E2D0();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    sub_1D541E324();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1D541E228()
{
  result = qword_1EC7F6458;
  if (!qword_1EC7F6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6458);
  }

  return result;
}

unint64_t sub_1D541E27C()
{
  result = qword_1EC7F6468;
  if (!qword_1EC7F6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6468);
  }

  return result;
}

unint64_t sub_1D541E2D0()
{
  result = qword_1EC7F6470;
  if (!qword_1EC7F6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6470);
  }

  return result;
}

unint64_t sub_1D541E324()
{
  result = qword_1EC7F6478;
  if (!qword_1EC7F6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6478);
  }

  return result;
}

uint64_t LegacyModelCodableMusicPin.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for LegacyModelCodableMusicPin(0);
  LegacyModelCodableMusicPin.Attributes.hash(into:)(a1);
  sub_1D56162F8();
  sub_1D56162F8();
  return sub_1D56162F8();
}

uint64_t sub_1D541E420(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

uint64_t LegacyModelCodableMusicPin.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6480, &unk_1D56632C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = type metadata accessor for LegacyModelCodableMusicPin(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541E228();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D4F89C9C();
  sub_1D5615FD8();
  *v13 = v22;
  v13[1] = v23;
  OUTLINED_FUNCTION_12_90();
  sub_1D541CD44(v14, v15, &protocol conformance descriptor for LegacyModelCodableMusicPin.Attributes);
  sub_1D5615FD8();
  sub_1D541E878(v7, v13 + v9[5]);
  sub_1D541E8DC();
  OUTLINED_FUNCTION_8_122();
  sub_1D5615F78();
  *(v13 + v9[6]) = 1;
  sub_1D541E930();
  OUTLINED_FUNCTION_8_122();
  sub_1D5615F78();
  *(v13 + v9[7]) = 1;
  sub_1D541E984();
  OUTLINED_FUNCTION_8_122();
  sub_1D5615F78();
  v18 = OUTLINED_FUNCTION_15_85();
  v19(v18);
  *(v13 + v9[8]) = 1;
  OUTLINED_FUNCTION_10_109();
  sub_1D541E9D8(v13, a2, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_3_174();
  return sub_1D541EA38(v13, v16);
}

uint64_t sub_1D541E834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

uint64_t sub_1D541E878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D541E8DC()
{
  result = qword_1EC7F6490;
  if (!qword_1EC7F6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6490);
  }

  return result;
}

unint64_t sub_1D541E930()
{
  result = qword_1EC7F6498;
  if (!qword_1EC7F6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6498);
  }

  return result;
}

unint64_t sub_1D541E984()
{
  result = qword_1EC7F64A0;
  if (!qword_1EC7F64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F64A0);
  }

  return result;
}

uint64_t sub_1D541E9D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D541EA38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t MusicPin.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v94 = a6;
  v95 = *(a4 - 8);
  v96 = a3;
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v85 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v86 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v93 = v17;
  v18 = OUTLINED_FUNCTION_70_0();
  v91 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(v18);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v92 = v21 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  OUTLINED_FUNCTION_4();
  v84 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v83 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v79 - v26;
  v27 = OUTLINED_FUNCTION_70_0();
  v28 = type metadata accessor for LegacyModelCodableMusicPin(v27);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v102 = v31 - v30;
  v32 = OUTLINED_FUNCTION_70_0();
  v33 = type metadata accessor for MusicPinPropertyProvider(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = (v36 - v35);
  v39 = *(v38 + 20);
  v40 = type metadata accessor for MusicPin.Item(0);
  v81 = v39;
  v80 = v40;
  __swift_storeEnumTagSinglePayload(&v37[v39], 1, 1, v40);
  if (qword_1EC7E9050 != -1)
  {
    swift_once();
  }

  v41 = sub_1D560D9A8();
  __swift_project_value_buffer(v41, qword_1EC7F1680);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F64A8, &unk_1D56632D8);
  OUTLINED_FUNCTION_11_111();
  sub_1D541CD44(v43, v44, &protocol conformance descriptor for LegacyModelCodableMusicPin);
  v97 = a4;
  v87 = a5;
  sub_1D5610668();
  sub_1D5610658();
  v45 = sub_1D5610618();
  v89 = v46;
  v90 = v45;
  v88 = sub_1D56105C8();
  v47 = sub_1D56105F8();
  v48 = sub_1D56105E8();
  v101 = v42;
  v99 = a1;
  v49 = sub_1D56105A8();
  *v37 = 3;
  v37[v33[6]] = 4;
  if (qword_1EC7E9388 != -1)
  {
    swift_once();
  }

  v50 = qword_1EC87C4C0;
  v100 = a2;
  if (qword_1EC87C4C0 >> 62)
  {
    sub_1D560CDE8();

    v78 = sub_1D5615E18();

    v50 = v78;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v51 = &v37[v33[7]];
  *&v37[v33[8]] = v50;
  v52 = &v37[v33[11]];
  v53 = v89;
  *v52 = v90;
  v52[1] = v53;
  *&v37[v33[12]] = v88;
  *&v37[v33[13]] = v47;
  *&v37[v33[14]] = v48;
  *&v37[v33[15]] = v49;
  v54 = v102;
  v55 = v99;
  sub_1D5610648();
  v56 = (v54 + *(v28 + 20));
  *v37 = *v56;
  v57 = v91;
  v58 = v92;
  v59 = &v56[*(v91 + 24)];
  v60 = *v59;
  LOBYTE(v59) = v59[8];
  *v51 = v60;
  v51[8] = v59;
  OUTLINED_FUNCTION_0_225();
  sub_1D541E9D8(v61, v58, v62);
  v63 = v93;
  sub_1D541D4F8(v58 + *(v57 + 20), v93);
  v64 = v98;
  OUTLINED_FUNCTION_37_39(v63, 1);
  if (v65)
  {
    sub_1D4E50004(v63, &qword_1EC7F63C8, &qword_1D5663288);
    v69 = v97;
    v71 = v100;
    v68 = v95;
  }

  else
  {
    v66 = v84;
    v67 = v82;
    (*(v84 + 32))(v82, v63, v64);
    (*(v66 + 16))(v83, v67, v64);
    v68 = v95;
    v69 = v97;
    (*(v95 + 16))(v85, v100, v97);

    v70 = v86;
    v55 = v99;
    MusicPin.Item.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v66 + 8))(v67, v98);
    v71 = v100;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v80);
    sub_1D541F1FC(v70, &v37[v81]);
  }

  v103[3] = v33;
  v103[4] = sub_1D541CD44(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider, &unk_1D564BCEC);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v103);
  sub_1D541E9D8(v37, boxed_opaque_existential_0, type metadata accessor for MusicPinPropertyProvider);
  MusicPin.init(propertyProvider:)(v103, v94);

  (*(v68 + 8))(v71, v69);
  (*(*(v101 - 8) + 8))(v55);
  OUTLINED_FUNCTION_3_174();
  sub_1D541EA38(v102, v76);
  return sub_1D541EA38(v37, type metadata accessor for MusicPinPropertyProvider);
}

uint64_t sub_1D541F1FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicPin.convertToLegacyModelCodableResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a2;
  v78 = a3;
  v76[1] = a1;
  v86 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v85 = v7;
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5610088();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v83 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v81 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v79 = v17;
  OUTLINED_FUNCTION_70_0();
  v84 = sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v82 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v88 = v21 - v20;
  v22 = OUTLINED_FUNCTION_70_0();
  v80 = type metadata accessor for LegacyModelCodableMusicPin(v22);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v87 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v76 - v26);
  v28 = OUTLINED_FUNCTION_70_0();
  v29 = type metadata accessor for MusicPin.Item(v28);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v76 - v36;
  v38 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  v42 = (v41 - v40);
  if (qword_1EC7E9020 != -1)
  {
    swift_once();
  }

  sub_1D541CD44(&qword_1EDD5ECA0, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  sub_1D541CD44(&qword_1EDD5EC98, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  sub_1D560EC28();
  v43 = v4;
  v44 = v91;
  MusicPin.item.getter(v33);
  MusicPin.Item.convertToLegacyModelCodableResource<A>(configuration:)();
  sub_1D541EA38(v33, type metadata accessor for MusicPin.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  if (qword_1EC7E9038 != -1)
  {
    swift_once();
  }

  if (v44 == 3)
  {
    LOBYTE(v44) = 1;
  }

  sub_1D560EC28();
  if (v90)
  {
    v49 = 0;
  }

  else
  {
    v49 = v89;
  }

  *v42 = v44;
  sub_1D541D4F8(v37, &v42[*(v38 + 20)]);
  v50 = &v42[*(v38 + 24)];
  v76[0] = v42;
  *v50 = v49;
  v50[8] = 0;
  v52 = *v43;
  v51 = v43[1];
  v53 = v80;
  OUTLINED_FUNCTION_0_225();
  v54 = v27;
  sub_1D541E9D8(v56, v27 + v55, v57);
  *v27 = v52;
  v27[1] = v51;
  *(v27 + v53[6]) = 1;
  *(v27 + v53[7]) = 1;
  *(v27 + v53[8]) = 1;
  type metadata accessor for MusicPin(0);

  sub_1D5611A28();
  sub_1D560D838();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v62);
  v63 = v88;
  sub_1D5612B38();
  OUTLINED_FUNCTION_10_109();
  sub_1D541E9D8(v27, v87, v64);
  sub_1D5611A98();
  v81 = sub_1D5611A88();
  v79 = v65;
  v66 = v82;
  v67 = v84;
  (*(v82 + 16))(v85, v63, v84);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v67);
  v78 = sub_1D5611A38();
  v77 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  OUTLINED_FUNCTION_11_111();
  sub_1D541CD44(v71, v72, &protocol conformance descriptor for LegacyModelCodableMusicPin);
  sub_1D5610628();
  (*(v66 + 8))(v88, v67);
  OUTLINED_FUNCTION_3_174();
  sub_1D541EA38(v54, v73);
  OUTLINED_FUNCTION_5_127();
  return sub_1D541EA38(v76[0], v74);
}

unint64_t sub_1D541F908()
{
  result = qword_1EC7F64C8;
  if (!qword_1EC7F64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F64C8);
  }

  return result;
}

unint64_t sub_1D541F960()
{
  result = qword_1EC7F64D0;
  if (!qword_1EC7F64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F64D0);
  }

  return result;
}

unint64_t sub_1D541F9B8()
{
  result = qword_1EC7F64D8;
  if (!qword_1EC7F64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F64D8);
  }

  return result;
}

void sub_1D541FC04(uint64_t a1)
{
  type metadata accessor for LegacyModelCodableMusicPin.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EC7F6500, &type metadata for LegacyModelCodableMusicPin.Relationships);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EC7F6508, &type metadata for LegacyModelCodableMusicPin.Associations);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EC7F6510, &type metadata for LegacyModelCodableMusicPin.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D541FD20(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EC7F3250, &type metadata for MusicPin.Action);
  if (v1 <= 0x3F)
  {
    sub_1D541FDDC(319);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D541FDDC(uint64_t a1)
{
  if (!qword_1EC7F6528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4DE0, &qword_1D5663280);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F6528);
    }
  }
}

_BYTE *sub_1D541FE60(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelCodableMusicPin.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelCodableMusicPin.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54200F8()
{
  result = qword_1EC7F6530;
  if (!qword_1EC7F6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6530);
  }

  return result;
}

unint64_t sub_1D5420150()
{
  result = qword_1EC7F6538;
  if (!qword_1EC7F6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6538);
  }

  return result;
}

unint64_t sub_1D54201A8()
{
  result = qword_1EC7F6540;
  if (!qword_1EC7F6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6540);
  }

  return result;
}

unint64_t sub_1D5420200()
{
  result = qword_1EC7F6548;
  if (!qword_1EC7F6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6548);
  }

  return result;
}

unint64_t sub_1D5420258()
{
  result = qword_1EC7F6550;
  if (!qword_1EC7F6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6550);
  }

  return result;
}

unint64_t sub_1D54202B0()
{
  result = qword_1EC7F6558;
  if (!qword_1EC7F6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6558);
  }

  return result;
}

unint64_t sub_1D5420308()
{
  result = qword_1EC7F6560;
  if (!qword_1EC7F6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6560);
  }

  return result;
}

unint64_t sub_1D5420360()
{
  result = qword_1EC7F6568;
  if (!qword_1EC7F6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6568);
  }

  return result;
}

unint64_t sub_1D54203B8()
{
  result = qword_1EC7F6570;
  if (!qword_1EC7F6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6570);
  }

  return result;
}

unint64_t sub_1D5420410()
{
  result = qword_1EC7F6578;
  if (!qword_1EC7F6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6578);
  }

  return result;
}

unint64_t sub_1D5420468()
{
  result = qword_1EC7F6580;
  if (!qword_1EC7F6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6580);
  }

  return result;
}

unint64_t sub_1D54204C0()
{
  result = qword_1EC7F6588;
  if (!qword_1EC7F6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6588);
  }

  return result;
}

uint64_t sub_1D54205A0(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1D54205F0(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1D5420628(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1D5420678(void *a1)
{
  v3 = OUTLINED_FUNCTION_35_59(a1);
  result = v1(v3);
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t sub_1D54206B4(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t static MusicPlaybackIntent.playbackIntent(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v347 = a2;
  v3 = type metadata accessor for MusicPlaybackIntent(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v344 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_48(&v318 - v9);
  v328 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v327 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v13 - v12);
  v325 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v324 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v323 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_48(&v318 - v20);
  v334 = sub_1D560F148();
  OUTLINED_FUNCTION_4();
  v333 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v24 - v23);
  v337 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v338 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  v345 = &v318 - v29;
  v30 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  v342 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  v39 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  v346 = &v318 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_135();
  v341 = v46;
  OUTLINED_FUNCTION_23();
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = &v318 - v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_135();
  v339 = v51;
  OUTLINED_FUNCTION_23();
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v318 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v318 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v318 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  v62 = OUTLINED_FUNCTION_22(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_59_0();
  v343 = (v63 - v64);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_135();
  v340 = v67;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v68);
  v348 = (&v318 - v69);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v3);
  v350 = v60;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v30);
  v349 = v58;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v30);
  v351 = a1;
  v79 = sub_1D54233C8(a1);
  if (v79)
  {
    v80 = v79;
    if (sub_1D4E62628(v79))
    {
      v320 = v3;
      sub_1D4F0B2FC();
      v81 = v39;
      if ((v80 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x1DA6EB9B0](0, v80);
      }

      else
      {
        v82 = *(v80 + 32);
      }

      v83 = v82;

      sub_1D5422E18(&v353);

      if (v353 == 3)
      {
        goto LABEL_18;
      }

      v84 = sub_1D54233C8(v351);
      if (v84)
      {
        v85 = v84;
        if (sub_1D4E62628(v84))
        {
          sub_1D4F0B2FC();
          if ((v85 & 0xC000000000000001) != 0)
          {
            v86 = MEMORY[0x1DA6EB9B0](0, v85);
          }

          else
          {
            v86 = *(v85 + 32);
          }

          v87 = v86;

          goto LABEL_15;
        }
      }

      v87 = 0;
LABEL_15:
      sub_1D5422730(v87, v55);
      OUTLINED_FUNCTION_14_84();
      if (__swift_getEnumTagSinglePayload(v89, v90, v91) == 1)
      {
        sub_1D4E50004(v55, &unk_1EC7EEC20, &unk_1D5623F70);
      }

      else
      {
        v318 = v81;
        v92 = v350;
        sub_1D4E50004(v350, &unk_1EC7EEC20, &unk_1D5623F70);
        v93 = *(v32 + 4);
        v94 = v346;
        v93(v346, v55, v30);
        v93(v92, v94, v30);
        v81 = v318;
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v95, v96, v97, v30);
      }

LABEL_18:
      v88 = v320;
      goto LABEL_19;
    }
  }

  v81 = v39;
  v88 = v3;
LABEL_19:
  v98 = [v351 mediaContainer];
  v346 = v32;
  if (!v98)
  {
    goto LABEL_23;
  }

  v99 = v98;
  sub_1D5422E18(&v353);

  if (v353 == 3)
  {
    goto LABEL_23;
  }

  v100 = [v351 mediaContainer];
  v101 = v339;
  sub_1D5422730(v100, v339);
  OUTLINED_FUNCTION_14_84();
  if (__swift_getEnumTagSinglePayload(v102, v103, v104) == 1)
  {
    sub_1D4E50004(v101, &unk_1EC7EEC20, &unk_1D5623F70);
LABEL_23:
    v105 = v350;
    goto LABEL_24;
  }

  v131 = v349;
  sub_1D4E50004(v349, &unk_1EC7EEC20, &unk_1D5623F70);
  v132 = v101;
  v133 = v88;
  v134 = *(v32 + 4);
  v135 = v336;
  v134(v336, v132, v30);
  v136 = v350;
  sub_1D4FD23EC(v350, v131, &unk_1EC7EEC20, &unk_1D5623F70);
  v134(v136, v135, v30);
  v88 = v133;
  v105 = v136;
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v30);
LABEL_24:
  sub_1D4F1C460(v105, v50, &unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_14_84();
  OUTLINED_FUNCTION_57(v106, v107, v108);
  if (!v201)
  {
    v115 = v346;
    v116 = *(v346 + 4);
    v116(v81, v50, v30);
    v117 = v345;
    switch(v345)
    {
      case 2:

        goto LABEL_36;
      case 3:
        v115[1](v81, v30);
        OUTLINED_FUNCTION_65();
        sub_1D4E50004(v177, v178, v179);
        OUTLINED_FUNCTION_65();
        sub_1D4E50004(v180, v181, v182);
        v167 = &qword_1EC7F2AC0;
        v168 = &qword_1D564A5E0;
        v166 = v348;
        goto LABEL_45;
      default:
        v118 = sub_1D5616168();

        if (v118 & 1) != 0 || (sub_1D560D828(), v119 = v335, sub_1D560D958(), v120 = sub_1D560D8C8(), v121 = v338 + 8, v122 = *(v338 + 8), v123 = v119, v124 = v337, v122(v123, v337), v338 = v121, v122(v117, v124), (v120))
        {
LABEL_36:
          v140 = v349;
          v141 = v341;
          sub_1D4F1C460(v349, v341, &unk_1EC7EEC20, &unk_1D5623F70);
          OUTLINED_FUNCTION_14_84();
          OUTLINED_FUNCTION_57(v142, v143, v144);
          if (v201)
          {
            v149 = v346;
            v148 = v342;
            (*(v346 + 2))(v342, v81, v30);
            OUTLINED_FUNCTION_14_84();
            OUTLINED_FUNCTION_57(v145, v146, v147);
            v150 = v343;
            if (!v201)
            {
              sub_1D4E50004(v141, &unk_1EC7EEC20, &unk_1D5623F70);
            }
          }

          else
          {
            v148 = v342;
            v116(v342, v141, v30);
            v149 = v346;
            v150 = v343;
          }

          v151 = v340;
          sub_1D5422FE4(v340);
          v152 = *(v149 + 1);
          v319 = v30;
          v152(v148, v30);
          v130 = v348;
          OUTLINED_FUNCTION_65();
          sub_1D4E50004(v153, v154, v155);
          sub_1D4FD23EC(v151, v130, &qword_1EC7F2AC0, &qword_1D564A5E0);
          v156 = v350;
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_28_62();
        sub_1D560D7A8();
        v125 = v334;
        OUTLINED_FUNCTION_57(v124, 1, v334);
        v319 = v30;
        if (!v201)
        {
          (*(v333 + 32))(v332, v124, v125);
          v197 = v330;
          sub_1D4F1C460(v349, v330, &unk_1EC7EEC20, &unk_1D5623F70);
          OUTLINED_FUNCTION_14_84();
          OUTLINED_FUNCTION_57(v198, v199, v200);
          if (v201)
          {
            sub_1D4E50004(v197, &unk_1EC7EEC20, &unk_1D5623F70);
            v211 = 0;
            v149 = v346;
          }

          else
          {
            v202 = v122;
            v203 = v322;
            v116(v322, v197, v30);
            sub_1D560D828();
            v204 = v323;
            sub_1D560D868();
            v205 = OUTLINED_FUNCTION_132_1();
            v202(v205);
            v206 = v30;
            v207 = sub_1D5159818();
            (*(v324 + 8))(v204, v325);
            v208 = v327;
            v209 = v326;
            v210 = v328;
            (*(v327 + 104))(v326, *MEMORY[0x1E6976970], v328);
            v211 = sub_1D4F42FA4(v207, v209);
            (*(v208 + 8))(v209, v210);
            v149 = v346;
            (*(v346 + 1))(v203, v206);
          }

          v156 = v350;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
          v212 = swift_allocObject();
          *(v212 + 16) = xmmword_1D561C050;
          v213 = v332;
          *(v212 + 32) = sub_1D560F138();
          *(v212 + 40) = v214;
          v215 = objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent);
          v216 = sub_1D5423284(v212, v211);
          (*(v333 + 8))(v213, v334);
          v130 = v348;
          sub_1D4E50004(v348, &qword_1EC7F2AC0, &qword_1D564A5E0);
          type metadata accessor for MusicPlaybackIntentDonation(0);
          OUTLINED_FUNCTION_33();
          __swift_storeEnumTagSinglePayload(v217, v218, v219, v220);
          *v130 = v216;
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v221, v222, v223, v88);
          v140 = v349;
          goto LABEL_75;
        }

        sub_1D4E50004(v124, &unk_1EC7F1970, &qword_1D561F4A0);
        v126 = v81;
        v127 = sub_1D560D808();
        v129 = v337;
        if (v128)
        {
          v341 = v127;
          v342 = v128;
          v130 = v348;
        }

        else
        {
          OUTLINED_FUNCTION_28_62();
          sub_1D560D5C8();
          v224 = sub_1D560D4C8();
          OUTLINED_FUNCTION_14_84();
          OUTLINED_FUNCTION_57(v225, v226, v227);
          v130 = v348;
          if (v201)
          {
            sub_1D4E50004(v124, &unk_1EC7EBF20, &unk_1D561F530);
            v228 = OUTLINED_FUNCTION_31_51();
            v229(v228);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v230, v231, v232);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v233, v234, v235);
            v167 = &qword_1EC7F2AC0;
            v168 = &qword_1D564A5E0;
            v166 = v130;
            goto LABEL_45;
          }

          v126 = v124;
          v341 = sub_1D560D4B8();
          v342 = v236;
          (*(*(v224 - 8) + 8))(v124, v224);
        }

        OUTLINED_FUNCTION_28_62();
        sub_1D560D828();
        OUTLINED_FUNCTION_24_64();
        sub_1D560D908();
        OUTLINED_FUNCTION_12_91();
        v239 = sub_1D54234E8(v237, v238, MEMORY[0x1E6974F90]);
        OUTLINED_FUNCTION_20_86();
        sub_1D5614D18();
        v240 = OUTLINED_FUNCTION_6_134();
        (v122)(v240);
        if (v126)
        {
          v122(v124, v129);
          v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0618, &qword_1D5638338);
          OUTLINED_FUNCTION_8_3(v241, &protocol witness table for MusicLibrarySectionedRequest<A, B>);
          OUTLINED_FUNCTION_147();
          sub_1D5613AF8();
          OUTLINED_FUNCTION_33_57();
          OUTLINED_FUNCTION_16_89();
          sub_1D560E668();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          OUTLINED_FUNCTION_34_60();
          MEMORY[0x1DA6E4340]();

          swift_getKeyPath();
          OUTLINED_FUNCTION_14_84();
          sub_1D560E658();

          swift_getKeyPath();
          OUTLINED_FUNCTION_14_84();
          sub_1D560E658();

          swift_getKeyPath();
          OUTLINED_FUNCTION_14_84();
          sub_1D560E658();
LABEL_73:

LABEL_74:
          v250 = v329;
          v140 = v349;
          sub_1D5424200();
          OUTLINED_FUNCTION_65();
          sub_1D4E50004(v251, v252, v253);
          __swift_destroy_boxed_opaque_existential_1(&v353);
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v254, v255, v256, v88);
          sub_1D4FD23EC(v250, v130, &qword_1EC7F2AC0, &qword_1D564A5E0);
          v149 = v346;
          v156 = v350;
LABEL_75:
          v150 = v343;
LABEL_41:
          sub_1D4F1C460(v130, v150, &qword_1EC7F2AC0, &qword_1D564A5E0);
          OUTLINED_FUNCTION_57(v150, 1, v88);
          if (v201)
          {
            (*(v149 + 1))(v81, v319);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v157, v158, v159);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v160, v161, v162);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v163, v164, v165);
            goto LABEL_44;
          }

          sub_1D512DFD8(v150, v344);
          v174 = [v351 playbackRepeatMode];
          if (v174 == 1)
          {
            v176 = v81;
            v175 = 0;
          }

          else
          {
            v175 = v174;
            v176 = v81;
            if (v174 != 2)
            {
              if (v174 == 3)
              {
                v175 = 1;
              }

              else
              {
                v175 = -1;
              }
            }
          }

          v183 = v344;
          v184 = *v344;
          [*v344 setRepeatMode_];
          v185 = v351;
          v186 = sub_1D5615708();
          if (v186 == 2)
          {
            v187 = -1;
          }

          else
          {
            v187 = v186 & 1;
          }

          [v184 setShuffleMode_];
          (*(v149 + 1))(v176, v319);
          sub_1D4E50004(v140, &unk_1EC7EEC20, &unk_1D5623F70);
          sub_1D4E50004(v156, &unk_1EC7EEC20, &unk_1D5623F70);
          sub_1D4E50004(v130, &qword_1EC7F2AC0, &qword_1D564A5E0);
          v188 = *(v88 + 20);
          sub_1D4E50004(v183 + v188, &unk_1EC7ED460, &unk_1D5625250);
          *(v183 + v188) = v185;
          type metadata accessor for MusicPlaybackIntentDonation.IntentKind(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for MusicPlaybackIntentDonation(0);
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v189, v190, v191, v192);
          sub_1D5423428(v183, v347);
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v193, v194, v195, v88);
          v196 = v185;
          return sub_1D542348C(v183);
        }

        sub_1D560D938();
        OUTLINED_FUNCTION_20_86();
        v340 = v239;
        sub_1D5614D18();
        v242 = OUTLINED_FUNCTION_6_134();
        (v122)(v242);
        if (qword_1EDD53C80 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v129, qword_1EDD53C88);
        OUTLINED_FUNCTION_20_86();
        v243 = v340;
        if (sub_1D5614D18())
        {
          v244 = OUTLINED_FUNCTION_132_1();
          (v122)(v244);
          v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0600, &qword_1D56382D8);
          OUTLINED_FUNCTION_8_3(v245, &protocol witness table for MusicLibrarySectionedRequest<A, B>);
          v246 = OUTLINED_FUNCTION_147();
          type metadata accessor for Composer(v246);
          OUTLINED_FUNCTION_33_57();
          sub_1D54234E8(&qword_1EC7F0608, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
          OUTLINED_FUNCTION_16_89();
          sub_1D560E668();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          v247 = sub_1D54234E8(&qword_1EC7EA8E8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
          v248 = MEMORY[0x1E6975510];
          v249 = v243;
LABEL_71:
          MEMORY[0x1DA6E4340](v249, &v352, v245, v247, v248);
LABEL_72:

          goto LABEL_73;
        }

        OUTLINED_FUNCTION_24_64();
        sub_1D560D918();
        OUTLINED_FUNCTION_8_123();
        v257 = OUTLINED_FUNCTION_6_134();
        (v122)(v257);
        if (v126)
        {
          v258 = OUTLINED_FUNCTION_132_1();
          (v122)(v258);
          v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F05F8, &qword_1D56382A8);
          OUTLINED_FUNCTION_8_3(v245, &protocol witness table for MusicLibrarySectionedRequest<A, B>);
          OUTLINED_FUNCTION_147();
          sub_1D5613C48();
          OUTLINED_FUNCTION_33_57();
          OUTLINED_FUNCTION_16_89();
          sub_1D560E668();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          v247 = MEMORY[0x1E6976D80];
          v248 = MEMORY[0x1E6975510];
          goto LABEL_71;
        }

        sub_1D560D8E8();
        OUTLINED_FUNCTION_8_123();
        v259 = OUTLINED_FUNCTION_6_134();
        (v122)(v259);
        sub_1D560D928();
        OUTLINED_FUNCTION_8_123();
        v260 = OUTLINED_FUNCTION_6_134();
        (v122)(v260);
        sub_1D560D878();
        OUTLINED_FUNCTION_8_123();
        v261 = OUTLINED_FUNCTION_6_134();
        (v122)(v261);
        if (qword_1EDD53D48 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v129, qword_1EDD53D50);
        v262 = v331;
        OUTLINED_FUNCTION_20_86();
        if (sub_1D5614D18())
        {
          v122(v262, v129);
          v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6610, &qword_1D561D168);
          OUTLINED_FUNCTION_8_3(v263, &protocol witness table for MusicLibraryRequest<A>);
          v264 = OUTLINED_FUNCTION_147();
          type metadata accessor for MusicMovie(v264);
          sub_1D54234E8(&qword_1EC7EA908, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
          OUTLINED_FUNCTION_16_89();
          sub_1D560DD68();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          OUTLINED_FUNCTION_34_60();
          MEMORY[0x1DA6E3AD0]();
          goto LABEL_72;
        }

        v265 = v129;
        v320 = v88;
        OUTLINED_FUNCTION_24_64();
        sub_1D560D898();
        OUTLINED_FUNCTION_18_83();
        sub_1D5614D18();
        v266 = OUTLINED_FUNCTION_1_15();
        (v122)(v266);
        if (v126)
        {
          goto LABEL_87;
        }

        OUTLINED_FUNCTION_24_64();
        sub_1D560D848();
        OUTLINED_FUNCTION_18_83();
        sub_1D5614D18();
        v267 = OUTLINED_FUNCTION_1_15();
        (v122)(v267);
        v339 = v122;
        if (qword_1EC7E9740 != -1)
        {
          swift_once();
        }

        v265 = v337;
        __swift_project_value_buffer(v337, qword_1EC7F7CF0);
        v262 = v331;
        OUTLINED_FUNCTION_18_83();
        v268 = sub_1D5614D18();
        v122 = v339;
        if (v268)
        {
LABEL_87:
          v122(v262, v265);

          if (qword_1EDD544B0 != -1)
          {
            OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
          }

          v269 = sub_1D560C758();
          __swift_project_value_buffer(v269, qword_1EDD76AF0);
          v270 = sub_1D560C738();
          v271 = sub_1D56156C8();
          if (os_log_type_enabled(v270, v271))
          {
            v272 = swift_slowAlloc();
            *v272 = 0;
            _os_log_impl(&dword_1D4E3F000, v270, v271, "Playlist entries and their underlying items must be played within the context of their playlist. Please supply a container for the INPlayMediaIntent.", v272, 2u);
            OUTLINED_FUNCTION_122();
          }

          v273 = OUTLINED_FUNCTION_31_51();
          v274(v273);
LABEL_92:
          OUTLINED_FUNCTION_65();
          sub_1D4E50004(v275, v276, v277);
          OUTLINED_FUNCTION_65();
          sub_1D4E50004(v278, v279, v280);
          sub_1D4E50004(v348, &qword_1EC7F2AC0, &qword_1D564A5E0);
          OUTLINED_FUNCTION_33();
          v172 = v320;
          return __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
        }

        OUTLINED_FUNCTION_24_64();
        sub_1D560D968();
        OUTLINED_FUNCTION_18_83();
        sub_1D5614D18();
        v281 = OUTLINED_FUNCTION_1_15();
        v282 = (v122)(v281);
        if (v126)
        {
          v283 = OUTLINED_FUNCTION_9_114();
          v284(v283);
          v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F05F0, &qword_1D5638228);
          OUTLINED_FUNCTION_8_3(v285, &protocol witness table for MusicLibrarySectionedRequest<A, B>);
          OUTLINED_FUNCTION_147();
          sub_1D5614898();
          OUTLINED_FUNCTION_33_57();
          OUTLINED_FUNCTION_16_89();
          sub_1D560E668();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          OUTLINED_FUNCTION_34_60();
          MEMORY[0x1DA6E4340]();
        }

        else
        {
          if (qword_1EDD53C38 != -1)
          {
            v282 = swift_once();
          }

          OUTLINED_FUNCTION_30_62(v282, qword_1EDD53C40);
          v286 = sub_1D5614D18();
          if (v286)
          {
            v287 = OUTLINED_FUNCTION_9_114();
            v288(v287);
            v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
            OUTLINED_FUNCTION_8_3(v289, &protocol witness table for MusicLibraryRequest<A>);
            v290 = OUTLINED_FUNCTION_147();
            type metadata accessor for TVEpisode(v290);
            sub_1D54234E8(&qword_1EC7EA920, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
            OUTLINED_FUNCTION_16_89();
            sub_1D560DD68();
          }

          else
          {
            if (qword_1EC7E8F18 != -1)
            {
              v286 = swift_once();
            }

            OUTLINED_FUNCTION_30_62(v286, qword_1EC7F08A0);
            v291 = sub_1D5614D18();
            if (v291)
            {
              v292 = OUTLINED_FUNCTION_9_114();
              v293(v292);
              v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65F0, &qword_1D56381D0);
              OUTLINED_FUNCTION_8_3(v294, &protocol witness table for MusicLibraryRequest<A>);
              v295 = OUTLINED_FUNCTION_147();
              type metadata accessor for UploadedAudio(v295);
              sub_1D54234E8(&qword_1EC7F05E8, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
              OUTLINED_FUNCTION_16_89();
              sub_1D560DD68();
            }

            else
            {
              if (qword_1EDD53CE8 != -1)
              {
                v291 = swift_once();
              }

              OUTLINED_FUNCTION_30_62(v291, qword_1EDD53CF0);
              v297 = *(v296 - 256);
              v298 = sub_1D5614D18();
              v339(v297, v126);
              if ((v298 & 1) == 0)
              {

                if (qword_1EDD544B0 != -1)
                {
                  OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
                }

                v301 = sub_1D560C758();
                __swift_project_value_buffer(v301, qword_1EDD76AF0);
                (*(v346 + 2))(v321, v81, v319);
                v302 = sub_1D560C738();
                LODWORD(v351) = sub_1D56156C8();
                if (os_log_type_enabled(v302, v351))
                {
                  v303 = swift_slowAlloc();
                  v343 = v303;
                  v344 = swift_slowAlloc();
                  v352 = v344;
                  *v303 = 136446210;
                  OUTLINED_FUNCTION_24_64();
                  v304 = v321;
                  sub_1D560D828();
                  OUTLINED_FUNCTION_12_91();
                  sub_1D54234E8(v305, v306, MEMORY[0x1E6974F98]);
                  v307 = v337;
                  v308 = sub_1D56160F8();
                  v310 = v309;
                  v339(v303, v307);
                  v311 = *(v346 + 1);
                  v312 = v304;
                  v313 = v319;
                  v311(v312, v319);
                  v314 = sub_1D4E6835C(v308, v310, &v352);

                  v315 = v343;
                  *(v343 + 1) = v314;
                  _os_log_impl(&dword_1D4E3F000, v302, v351, "Cannot generate playback intent from unsupported typeValue: %{public}s.", v315, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v344);
                  OUTLINED_FUNCTION_122();
                  OUTLINED_FUNCTION_122();

                  v311(v81, v313);
                }

                else
                {

                  v316 = *(v346 + 1);
                  v317 = v319;
                  v316(v321, v319);
                  v316(v81, v317);
                }

                goto LABEL_92;
              }

              v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65E0, &qword_1D5663EB0);
              OUTLINED_FUNCTION_8_3(v299, &protocol witness table for MusicLibraryRequest<A>);
              v300 = OUTLINED_FUNCTION_147();
              type metadata accessor for UploadedVideo(v300);
              sub_1D54234E8(&qword_1EC7EC718, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
              OUTLINED_FUNCTION_16_89();
              sub_1D560DD68();
            }
          }

          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          OUTLINED_FUNCTION_34_60();
          MEMORY[0x1DA6E3AD0]();
        }

        v88 = v320;
        v130 = v348;
        goto LABEL_74;
    }
  }

  OUTLINED_FUNCTION_65();
  sub_1D4E50004(v109, v110, v111);
  OUTLINED_FUNCTION_65();
  sub_1D4E50004(v112, v113, v114);
  sub_1D4E50004(v348, &qword_1EC7F2AC0, &qword_1D564A5E0);
LABEL_44:
  OUTLINED_FUNCTION_65();
LABEL_45:
  sub_1D4E50004(v166, v167, v168);
  OUTLINED_FUNCTION_33();
  v172 = v88;
  return __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
}

uint64_t sub_1D542266C(void *a1)
{
  v3 = OUTLINED_FUNCTION_35_59(a1);
  result = v1(v3);
  *v2 = result;
  *(v2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D54226B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D5612A88();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D54226F8(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1D5422730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v71 - v6;
  v8 = sub_1D560D4C8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v80 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v71 - v29;
  if (a1)
  {
    v79 = v28;
    v76 = v10;
    v77 = v8;
    v31 = a1;
    v32 = sub_1D5423358(v31);
    if (v33)
    {
      v34 = v32;
      v35 = v33;
      v78 = a2;
      sub_1D55C7764(v32, v33);
      v75 = v34;
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v22);
      v41 = v21;
      v42 = *(v79 + 32);
      v42(v26, v41, v22);
      sub_1D560D7A8();
      v43 = sub_1D560F148();
      OUTLINED_FUNCTION_57(v17, 1, v43);
      if (!v44)
      {

        sub_1D4E50004(v17, &unk_1EC7F1970, &qword_1D561F4A0);
LABEL_11:
        v42(v30, v26, v22);
LABEL_12:
        v46 = v78;
        v42(v78, v30, v22);
        a2 = v46;
        v36 = 0;
        return __swift_storeEnumTagSinglePayload(a2, v36, 1, v22);
      }

      sub_1D4E50004(v17, &unk_1EC7F1970, &qword_1D561F4A0);
      sub_1D560D808();
      if (v45)
      {

        goto LABEL_11;
      }

      sub_1D560D5C8();
      v47 = v77;
      OUTLINED_FUNCTION_57(v7, 1, v77);
      if (!v44)
      {
        v72 = v42;
        (*(v76 + 32))(v80, v7, v47);
        v50 = objc_opt_self();
        v51 = [v50 deviceLibrary];
        v52 = [v51 uniqueIdentifier];

        v71 = sub_1D5614D68();
        v74 = v53;

        v73 = sub_1D560D488();
        v55 = v54;
        v56 = [v50 deviceLibrary];
        v57 = [v56 uniqueIdentifier];

        v58 = sub_1D5614D68();
        v60 = v59;

        if (v73 == v58 && v55 == v60)
        {
        }

        else
        {
          v62 = sub_1D5616168();

          if ((v62 & 1) == 0)
          {
            if (qword_1EDD544B0 != -1)
            {
              OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
            }

            v63 = sub_1D560C758();
            __swift_project_value_buffer(v63, qword_1EDD76AF0);

            v64 = sub_1D560C738();
            v65 = sub_1D56156C8();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v81[0] = swift_slowAlloc();
              *v66 = 136446466;
              v67 = sub_1D4E6835C(v75, v35, v81);

              *(v66 + 4) = v67;
              *(v66 + 12) = 2082;
              v68 = sub_1D4E6835C(v71, v74, v81);

              *(v66 + 14) = v68;
              _os_log_impl(&dword_1D4E3F000, v64, v65, "Failed to create a valid identifier set for donated media item with identifier %{public}s because the database ID did not match with the active one: %{public}s.", v66, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_122();
              OUTLINED_FUNCTION_122();
            }

            else
            {
            }

            (*(v76 + 8))(v80, v77);
            v69 = OUTLINED_FUNCTION_36_55();
            v70(v69);
            goto LABEL_16;
          }
        }

        (*(v76 + 8))(v80, v77);

        v42 = v72;
        v72(v30, v26, v22);
        goto LABEL_12;
      }

      v48 = OUTLINED_FUNCTION_36_55();
      v49(v48);

      sub_1D4E50004(v7, &unk_1EC7EBF20, &unk_1D561F530);
LABEL_16:
      v36 = 1;
      a2 = v78;
      return __swift_storeEnumTagSinglePayload(a2, v36, 1, v22);
    }
  }

  v36 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v36, 1, v22);
}

uint64_t sub_1D5422E18@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE78, &qword_1D5623540);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22[-v6];
  v8 = sub_1D560BC78();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22[-v16];
  result = sub_1D54232F4(v2);
  if (!v19)
  {
    goto LABEL_5;
  }

  sub_1D560BC48();

  OUTLINED_FUNCTION_57(v7, 1, v8);
  if (v20)
  {
    result = sub_1D4E50004(v7, &qword_1EC7ECE78, &qword_1D5623540);
LABEL_5:
    v21 = 3;
    goto LABEL_6;
  }

  (*(v10 + 32))(v17, v7, v8);
  (*(v10 + 16))(v14, v17, v8);
  sub_1D5136804(v14, &v23);
  result = (*(v10 + 8))(v17, v8);
  v21 = v23;
LABEL_6:
  *a1 = v21;
  return result;
}

uint64_t sub_1D5422FE4@<X0>(void *a1@<X8>)
{
  v32 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1D560D828();
  sub_1D560D868();
  (*(v16 + 8))(v20, v14);
  v21 = sub_1D5159818();
  (*(v9 + 8))(v13, v7);
  (*(v2 + 104))(v6, *MEMORY[0x1E6976970], v32);
  v22 = sub_1D4F42FA4(v21, v6);
  (*(v2 + 8))(v6, v32);
  v23 = [objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent) initWithStationSeedingIdentifierSet_];
  swift_unknownObjectRelease();
  v24 = type metadata accessor for MusicPlaybackIntent(0);
  if (v23)
  {
    type metadata accessor for MusicPlaybackIntentDonation(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    *a1 = v23;
    v29 = a1;
    v30 = 0;
  }

  else
  {
    v29 = a1;
    v30 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v29, v30, 1, v24);
}

id sub_1D5423284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5615158();

  v5 = [v2 initWithStoreIDs:v4 startIdentifierSet:a2];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1D54232F4(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614D68();

  return v3;
}

uint64_t sub_1D5423358(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D5614D68();

  return v3;
}

uint64_t sub_1D54233C8(void *a1)
{
  v1 = [a1 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D5423530();
  v3 = sub_1D5615168();

  return v3;
}

uint64_t sub_1D5423428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542348C(uint64_t a1)
{
  v2 = type metadata accessor for MusicPlaybackIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D54234E8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5423530()
{
  result = qword_1EDD52700;
  if (!qword_1EDD52700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52700);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_57()
{

  return sub_1D5613D28();
}

void sub_1D54235CC()
{
  OUTLINED_FUNCTION_47();
  v74 = v0;
  v75 = v1;
  v3 = v2;
  v76 = v4;
  v73 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v72 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v7);
  v78 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v77 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  sub_1D4E62938(v3, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF760, &qword_1D5632BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v79, v84);
    v27 = v84[4];
    v28 = OUTLINED_FUNCTION_10_110(v84);
    OUTLINED_FUNCTION_44_39(v28, *(v27 + 8));
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    sub_1D56132C8();
    v29 = sub_1D5159818();
    v30 = *(v16 + 8);
    v70 = v14;
    v67 = v30;
    v30(v20, v14);
    v31 = v9;
    v32 = *(v9 + 104);
    v66 = *MEMORY[0x1E6976970];
    v33 = v78;
    v65 = v32;
    v32(v13);
    v34 = sub_1D4F42FA4(v29, v13);
    v35 = *(v31 + 8);
    v68 = v31 + 8;
    v64 = v35;
    (v35)(v13, v33);
    v63 = *(v22 + 8);
    v36 = v63(v26, v77);
    MEMORY[0x1EEE9AC00](v36);
    *(&v62 - 2) = v84;
    sub_1D50DDDD4(sub_1D5428300, (&v62 - 4), v74);
    v37 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
    v74 = v34;
    [v37 appendSection_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF50, &unk_1D561F550);
    v38 = sub_1D5615158();

    [v37 appendItems_];

    sub_1D4F43D5C(v75, &v79, &unk_1EC7F65C0, &qword_1D562E6B0);
    if (*(&v80 + 1))
    {
      sub_1D4E48324(&v79, v82);
      v39 = v83;
      v40 = OUTLINED_FUNCTION_10_110(v82);
      OUTLINED_FUNCTION_44_39(v40, *(v39 + 8));
      v41 = v83;
      v42 = OUTLINED_FUNCTION_10_110(v82);
      v43 = *(v41 + 8);
      v75 = v37;
      v44 = v69;
      OUTLINED_FUNCTION_44_39(v42, v43);
      v45 = v71;
      sub_1D560D828();
      v46 = v44;
      v47 = v77;
      v48 = v63;
      v63(v46, v77);
      sub_1D560D868();
      (*(v72 + 8))(v45, v73);
      v49 = sub_1D5159818();
      v67(v20, v70);
      v65(v13, v66, v78);
      v50 = sub_1D4F42FA4(v49, v13);
      v51 = OUTLINED_FUNCTION_20_9();
      v64(v51);
      v48(v26, v47);
      v37 = v75;
      __swift_destroy_boxed_opaque_existential_1(v82);
    }

    else
    {
      sub_1D4E7661C(&v79, &unk_1EC7F65C0, &qword_1D562E6B0);
      v50 = 0;
    }

    sub_1D512F270();
    v52 = sub_1D54272C8(v37, v50);
    swift_unknownObjectRelease();
    type metadata accessor for MusicPlaybackIntent(0);
    OUTLINED_FUNCTION_71_24();
    v53 = v76;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    *v53 = v52;
    __swift_destroy_boxed_opaque_existential_1(v84);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    sub_1D4E7661C(&v79, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000004ALL);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](11817, 0xE200000000000000);
    OUTLINED_FUNCTION_6_3();
    v62 = 139;
    OUTLINED_FUNCTION_16_90("Fatal error", v58, v59, v60, v61, "MusicKitInternal/MusicPlaybackIntent.swift");
    __break(1u);
  }
}

void sub_1D5423C84()
{
  OUTLINED_FUNCTION_47();
  v73 = v1;
  v74 = v2;
  v4 = v3;
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v71 = v6;
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v70 = v7;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v68 = v9;
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v67 = v10;
  OUTLINED_FUNCTION_70_0();
  v65 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v64 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v13);
  v14 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16_0();
  v24 = *(v4 + 16);
  v66 = v16;
  if (v24)
  {
    v25 = v4 + 32;
    v26 = (v16 + 8);
    v75 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D4E62938(v25, v78);
      v27 = v79;
      v28 = OUTLINED_FUNCTION_10_110(v78);
      OUTLINED_FUNCTION_44_39(v28, *(v27 + 8));
      sub_1D560D7A8();
      (*v26)(v21, v14);
      v29 = sub_1D560F148();
      if (__swift_getEnumTagSinglePayload(v0, 1, v29) == 1)
      {
        sub_1D4E7661C(v0, &unk_1EC7F1970, &qword_1D561F4A0);
        __swift_destroy_boxed_opaque_existential_1(v78);
      }

      else
      {
        v30 = v14;
        v31 = sub_1D560F138();
        v33 = v32;
        OUTLINED_FUNCTION_24_0();
        v34 = OUTLINED_FUNCTION_70();
        v35(v34);
        __swift_destroy_boxed_opaque_existential_1(v78);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFF8E4();
          v75 = v40;
        }

        v37 = *(v75 + 16);
        v36 = *(v75 + 24);
        if (v37 >= v36 >> 1)
        {
          OUTLINED_FUNCTION_93_1(v36);
          sub_1D4EFF8E4();
          v75 = v41;
        }

        v38 = v75;
        *(v75 + 16) = v37 + 1;
        v39 = v38 + 16 * v37;
        *(v39 + 32) = v31;
        *(v39 + 40) = v33;
        v14 = v30;
      }

      v25 += 40;
      --v24;
    }

    while (v24);
  }

  else
  {
    v75 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4F43D5C(v73, &v76, &unk_1EC7F65C0, &qword_1D562E6B0);
  if (v77)
  {
    sub_1D4E48324(&v76, v78);
    v42 = v79;
    v43 = OUTLINED_FUNCTION_10_110(v78);
    v44 = v63[2];
    OUTLINED_FUNCTION_44_39(v43, *(v42 + 8));
    v45 = v79;
    v46 = OUTLINED_FUNCTION_10_110(v78);
    v47 = v63[0];
    OUTLINED_FUNCTION_44_39(v46, *(v45 + 8));
    v48 = v63[1];
    sub_1D560D828();
    v49 = *(v66 + 8);
    v49(v47, v14);
    v50 = v67;
    sub_1D560D868();
    (*(v64 + 8))(v48, v65);
    v51 = sub_1D5159818();
    (*(v68 + 8))(v50, v69);
    v53 = v70;
    v52 = v71;
    v54 = v72;
    (*(v71 + 104))(v70, *MEMORY[0x1E6976970], v72);
    v55 = sub_1D4F42FA4(v51, v53);
    (*(v52 + 8))(v53, v54);
    v49(v44, v14);
    __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    sub_1D4E7661C(&v76, &unk_1EC7F65C0, &qword_1D562E6B0);
    v55 = 0;
  }

  v56 = objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent);
  v57 = sub_1D5423284(v75, v55);
  type metadata accessor for MusicPlaybackIntent(0);
  OUTLINED_FUNCTION_71_24();
  v58 = v74;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  *v58 = v57;
  OUTLINED_FUNCTION_46();
}

void sub_1D5424200()
{
  OUTLINED_FUNCTION_47();
  v69 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v70 = v8;
  v9 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v75 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v73 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v18);
  v86 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v72 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34_5();
  v87 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v71 = v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v31);
  v84 = v7;
  sub_1D4E62938(v7, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C10, &qword_1D5638890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6630, &qword_1D5663F88);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v88, v91);
    v32 = v3;
    v33 = *(v3 + 16);
    v34 = MEMORY[0x1E6976978];
    v85 = v15;
    if (v33)
    {
      v66 = v0;
      v67 = v5;
      v90[0] = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v35 = *(v71 + 16);
      v15 = v32 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v82 = *(v71 + 72);
      v83 = v35;
      v81 = v72 + 8;
      v80 = v73 + 8;
      v79 = *v34;
      OUTLINED_FUNCTION_58_35();
      v78 = (v34 + 26);
      v77 = (v34 + 2);
      v84 = v36;
      v76 = v36 - 8;
      v34 = v74;
      do
      {
        v37 = v87;
        v83(v30, v15, v87);
        sub_1D560D828();
        sub_1D560D868();
        OUTLINED_FUNCTION_195();
        v38(v23, v86);
        v39 = sub_1D5159818();
        OUTLINED_FUNCTION_195();
        v40(v34, v85);
        OUTLINED_FUNCTION_195();
        v41(v14, v79, v9);
        sub_1D4F42FA4(v39, v14);
        OUTLINED_FUNCTION_195();
        v42(v14, v9);
        OUTLINED_FUNCTION_195();
        v43(v30, v37);
        sub_1D5615C88();
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v15 += v82;
        --v33;
      }

      while (v33);
      v84 = v90[0];
      OUTLINED_FUNCTION_58_35();
      v5 = v67;
      v0 = v66;
    }

    else
    {
      v84 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_58_35();
    }

    sub_1D4F43D5C(v5, v0, &unk_1EC7EEC20, &unk_1D5623F70);
    v44 = v87;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v87);
    v46 = v74;
    v47 = v86;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E7661C(v0, &unk_1EC7EEC20, &unk_1D5623F70);
      v48 = 0;
    }

    else
    {
      v49 = v14;
      v50 = v73;
      OUTLINED_FUNCTION_167_0();
      v52 = v0;
      v53 = v68;
      (*(v51 + 32))(v68, v52, v44);
      sub_1D560D828();
      sub_1D560D868();
      (*(v72 + 8))(v23, v47);
      v54 = sub_1D5159818();
      (*(v50 + 8))(v46, v85);
      (*(v34 + 13))(v49, *MEMORY[0x1E6976978], v9);
      v48 = sub_1D4F42FA4(v54, v49);
      (*(v34 + 1))(v49, v9);
      (*(v15 + 8))(v53, v87);
    }

    __swift_project_boxed_opaque_existential_1(v91, v91[3]);
    v55 = sub_1D5612D48();
    v90[3] = swift_getObjectType();
    v90[0] = v55;
    objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent);
    v56 = sub_1D54281E8(v90, v84, v48, v69 & 1);
    type metadata accessor for MusicPlaybackIntent(0);
    OUTLINED_FUNCTION_71_24();
    v57 = v70;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    *v57 = v56;
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    sub_1D4E7661C(v88, &qword_1EC7F6638, &unk_1D5663F90);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000023, 0x80000001D56856E0);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD000000000000022);
    OUTLINED_FUNCTION_6_3();
    v66 = 181;
    OUTLINED_FUNCTION_16_90("Fatal error", v62, v63, v64, v65, "MusicKitInternal/MusicPlaybackIntent.swift");
    __break(1u);
  }
}

void sub_1D542497C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v259 = v5;
  v254 = v6;
  v255 = v7;
  v9 = v8;
  v256 = v10;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v18);
  v252 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v25);
  v239 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v29);
  v238 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_16_0();
  v240 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v263 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_2();
  v41 = OUTLINED_FUNCTION_48(v40);
  type metadata accessor for MusicPlaybackIntent(v41);
  OUTLINED_FUNCTION_4();
  v260 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v55);
  v257 = *v9;
  v56 = *(v12 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  v243 = v2;
  v253 = v4;
  v251 = v0;
  if (v56)
  {
    v248 = v31;
    v258 = v27;
    v262 = v20;
    v277 = MEMORY[0x1E69E7CC0];
    sub_1D4F04734(0, v56, 0);
    v58 = v12 + 32;
    v59 = v277;
    do
    {
      sub_1D4E62938(v58, v272);
      v271 = 0;
      v269 = 0u;
      v270 = 0u;
      sub_1D4E62938(v272, &v266);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65B0, &unk_1D5663EA0);
      if (swift_dynamicCast())
      {
        sub_1D4E48324(v264, &v274);
        __swift_project_boxed_opaque_existential_1(&v274, v275);
        sub_1D560D078();
        sub_1D4E7661C(&v269, &unk_1EC7F65C0, &qword_1D562E6B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
        if ((swift_dynamicCast() & 1) == 0)
        {
          OUTLINED_FUNCTION_40_51();
        }

        v269 = v264[0];
        v270 = v264[1];
        v271 = v265;
        __swift_destroy_boxed_opaque_existential_1(&v274);
      }

      else
      {
        OUTLINED_FUNCTION_40_51();
        sub_1D4E7661C(v264, &qword_1EC7EDCB8, &unk_1D5628170);
      }

      v267 = v270;
      v266 = v269;
      v268 = v271;
      if (*(&v270 + 1))
      {
        sub_1D4E48324(&v266, &v274);
      }

      else
      {
        sub_1D4E62938(v272, &v274);
        if (*(&v267 + 1))
        {
          sub_1D4E7661C(&v266, &unk_1EC7F65C0, &qword_1D562E6B0);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v272);
      v60 = v59;
      v277 = v59;
      v62 = *(v59 + 16);
      v61 = *(v59 + 24);
      if (v62 >= v61 >> 1)
      {
        v63 = OUTLINED_FUNCTION_93_1(v61);
        sub_1D4F04734(v63, v62 + 1, 1);
        v60 = v277;
      }

      *(v60 + 16) = v62 + 1;
      v59 = v60;
      sub_1D4E48324(&v274, v60 + 40 * v62 + 32);
      v58 += 40;
      --v56;
    }

    while (v56);
    v2 = v243;
    v57 = v59;
    v20 = v262;
    v31 = v248;
  }

  v64 = *(v57 + 16);
  v258 = v2 >> 60;
  v65 = &selRef_initWithType_itemIdentifier_;
  v66 = v245;
  if (v64)
  {
    v67 = v57 + 32;
    v248 = (v20 + 8);
    v233 = *MEMORY[0x1E6976970];
    v247 = (v263 + 8);
    v232 = v31 + 1;
    v68 = MEMORY[0x1E69E7CC0];
    v242 = MEMORY[0x1E69E7CC0];
    v244 = MEMORY[0x1E69E7CC0];
    v69 = v240;
    while (1)
    {
      v263 = v64;
      v262 = v67;
      sub_1D4E62938(v67, &v274);
      OUTLINED_FUNCTION_65_30();
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF760, &qword_1D5632BB8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v268 = 0;
        v267 = 0u;
        v266 = 0u;
      }

      v272[0] = v266;
      v272[1] = v267;
      v273 = v268;
      sub_1D4F43D5C(v272, &v266, &unk_1EC7F65D0, &qword_1D5638870);
      if (*(&v267 + 1))
      {
        sub_1D4E48324(&v266, &v269);
        v71 = *(&v270 + 1);
        v72 = v271;
        __swift_project_boxed_opaque_existential_1(&v269, *(&v270 + 1));
        LOBYTE(v266) = v257;
        OUTLINED_FUNCTION_53_31();
        v75 = PlayableMusicContainer.playbackIntent(startingAt:explicitPlaybackSource:isLocalPlayback:)(v256, v73, v74, v71, v72);
        v76 = *v66;
        if (v259)
        {
          OUTLINED_FUNCTION_45_41();
          v75 = sub_1D5614D38();
          v77 = v75;
        }

        else
        {
          v77 = 0;
        }

        OUTLINED_FUNCTION_55_31(v75, sel_setPlayActivityFeatureName_);

        OUTLINED_FUNCTION_14_85();
        if (!v104 & v103)
        {
          v105 = 0;
        }

        else
        {
          v105 = sub_1D560C168();
        }

        OUTLINED_FUNCTION_48_37();

        sub_1D5423428(v66, v261);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_13();
          sub_1D4F02458();
          v68 = v171;
        }

        OUTLINED_FUNCTION_6_118();
        if (v103)
        {
          OUTLINED_FUNCTION_22_41(v106);
          sub_1D4F02458();
          v68 = v172;
        }

        sub_1D4E7661C(v272, &unk_1EC7F65D0, &qword_1D5638870);
        *(v68 + 16) = v76;
        OUTLINED_FUNCTION_4_134();
        OUTLINED_FUNCTION_32_57();
        sub_1D512DFD8(v261, v107);
        sub_1D542348C(v66);
        __swift_destroy_boxed_opaque_existential_1(&v269);
        goto LABEL_95;
      }

      sub_1D4E7661C(&v266, &unk_1EC7F65D0, &qword_1D5638870);
      OUTLINED_FUNCTION_65_30();
      v78 = v251;
      if (swift_dynamicCast())
      {
        v246 = v68;
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v79, v80, v81, v69);
        OUTLINED_FUNCTION_195();
        v82 = v250;
        v83(v250, v78, v69);
        OUTLINED_FUNCTION_195();
        v84(v236, v233, v238);
        OUTLINED_FUNCTION_195();
        v85(v237, v236, v238);
        OUTLINED_FUNCTION_195();
        v86(v235, v82, v69);
        sub_1D56132E8();
        OUTLINED_FUNCTION_167_0();
        sub_1D56132C8();
        v87 = sub_1D5159818();
        OUTLINED_FUNCTION_195();
        v88(&qword_1D5638870, v239);
        sub_1D560EC98();
        v89 = *v247;
        (*v247)(v235, v69);
        v90 = sub_1D4F42FA4(v87, v237);
        OUTLINED_FUNCTION_195();
        v91(v241, v252);
        v92 = objc_allocWithZone(MEMORY[0x1E6977640]);
        v93 = sub_1D5614BA8();

        v94 = [v92 initWithIdentifierSet:v90 modelObjectType:v87 storageDictionary:v93];
        swift_unknownObjectRelease();

        v95 = *v232;
        (*v232)(v237, v238);
        v95(v236, v238);
        v96 = [objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent) initWithLegacyModelStationSeeding_];

        type metadata accessor for MusicPlaybackIntentDonation(0);
        OUTLINED_FUNCTION_33();
        v101 = __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
        *v234 = v96;
        if (v259)
        {
          OUTLINED_FUNCTION_45_41();
          v101 = sub_1D5614D38();
          v102 = v101;
        }

        else
        {
          v102 = 0;
        }

        v2 = v243;
        v68 = v246;
        v65 = &selRef_initWithType_itemIdentifier_;
        OUTLINED_FUNCTION_55_31(v101, sel_setPlayActivityFeatureName_);

        OUTLINED_FUNCTION_14_85();
        v69 = v240;
        if (!v104 & v103)
        {
          v146 = 0;
        }

        else
        {
          v146 = sub_1D560C168();
        }

        OUTLINED_FUNCTION_48_37();

        sub_1D5423428(v234, v249);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_13();
          sub_1D4F02458();
          v68 = v173;
        }

        OUTLINED_FUNCTION_6_118();
        if (v103)
        {
          OUTLINED_FUNCTION_22_41(v147);
          sub_1D4F02458();
          v68 = v174;
        }

        v89(v250, v240);
        sub_1D4E7661C(v272, &unk_1EC7F65D0, &qword_1D5638870);
        *(v68 + 16) = v96;
        OUTLINED_FUNCTION_4_134();
        OUTLINED_FUNCTION_32_57();
        sub_1D512DFD8(v249, v148);
        sub_1D542348C(v234);
        v66 = v245;
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v69);
      sub_1D4E7661C(v78, &unk_1EC7F65A0, &unk_1D561D200);
      v111 = v2;
      if (v257 == 2)
      {
        OUTLINED_FUNCTION_10_110(&v274);
        PlayableMusicItem.playbackSource.getter(&v269);
        if (v269)
        {
          goto LABEL_42;
        }
      }

      else if (v257)
      {
LABEL_42:
        v121 = v276;
        v122 = OUTLINED_FUNCTION_10_110(&v274);
        OUTLINED_FUNCTION_44_39(v122, *(v121 + 8));
        OUTLINED_FUNCTION_167_0();
        sub_1D560D5C8();
        v2 = v248;
        v123 = *v248;
        v65 = v252;
        (*v248)(v229, v252);
        v124 = sub_1D560D4C8();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&qword_1D5638870, 1, v124);
        sub_1D4E7661C(&qword_1D5638870, &unk_1EC7EBF20, &unk_1D561F530);
        if (EnumTagSinglePayload == 1 || (v126 = v276, OUTLINED_FUNCTION_10_110(&v274), OUTLINED_FUNCTION_167_0(), OUTLINED_FUNCTION_44_39(v127, v128), v129 = sub_1D560D6A8(), v123(v126, v65), (v129 & 1) == 0))
        {
          v130 = v276;
          OUTLINED_FUNCTION_10_110(&v274);
          OUTLINED_FUNCTION_167_0();
          OUTLINED_FUNCTION_44_39(v131, v132);
          sub_1D560D808();
          v129 = v133;
          v123(v130, v65);
          if (!v129)
          {
LABEL_49:
            if (qword_1EDD54498 != -1)
            {
              swift_once();
            }

            v137 = sub_1D560C758();
            __swift_project_value_buffer(v137, qword_1EDD76AC0);
            OUTLINED_FUNCTION_65_30();
            v138 = sub_1D560C738();
            v139 = sub_1D56156C8();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              *&v264[0] = v141;
              *v140 = 136446210;
              sub_1D4E62938(&v269, &v266);
              v142 = sub_1D5614DB8();
              v144 = v143;
              __swift_destroy_boxed_opaque_existential_1(&v269);
              v145 = sub_1D4E6835C(v142, v144, v264);

              *(v140 + 4) = v145;
              _os_log_impl(&dword_1D4E3F000, v138, v139, "Unable to generate playback intent from item: %{public}s due to lacking proper identifiers.", v140, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v141);
              MEMORY[0x1DA6ED200](v141, -1, -1);
              MEMORY[0x1DA6ED200](v140, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v269);
            }

            sub_1D4E7661C(v272, &unk_1EC7F65D0, &qword_1D5638870);
            v2 = v243;
            v65 = &selRef_initWithType_itemIdentifier_;
            goto LABEL_95;
          }
        }

        v134 = v242;
        if (*(v242 + 16))
        {
          sub_1D5423C84();

          OUTLINED_FUNCTION_62_35();
          if (v134)
          {

            OUTLINED_FUNCTION_45_41();
            v136 = sub_1D5614D38();
          }

          else
          {
            v136 = 0;
          }

          OUTLINED_FUNCTION_55_31(v135, sel_setPlayActivityFeatureName_);

          OUTLINED_FUNCTION_14_85();
          v66 = v245;
          if (!v104 & v103)
          {
            v151 = 0;
            OUTLINED_FUNCTION_70_24();
          }

          else
          {
            OUTLINED_FUNCTION_70_24();
            v149 = OUTLINED_FUNCTION_46_38();
            sub_1D4F48DE4(v149, v150);
            OUTLINED_FUNCTION_46_38();
            v151 = sub_1D560C168();
          }

          OUTLINED_FUNCTION_48_37();

          v152 = OUTLINED_FUNCTION_46_38();
          sub_1D50153E4(v152, v153);
          sub_1D5423428(v231, v226);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_1_13();
            sub_1D4F02458();
            v68 = v183;
          }

          OUTLINED_FUNCTION_6_118();
          if (v103)
          {
            OUTLINED_FUNCTION_22_41(v154);
            sub_1D4F02458();
            v68 = v184;
          }

          *(v68 + 16) = v129;
          OUTLINED_FUNCTION_4_134();
          OUTLINED_FUNCTION_32_57();
          sub_1D512DFD8(v226, v155);
          sub_1D542348C(v231);
          v134 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v65 = &selRef_initWithType_itemIdentifier_;
          v2 = v111;
        }

        OUTLINED_FUNCTION_65_30();
        v156 = v244;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = OUTLINED_FUNCTION_1_13();
          sub_1D4F02354(v175);
          v156 = v176;
        }

        v244 = v156;
        v158 = *(v156 + 16);
        v157 = *(v156 + 24);
        v159 = v158 + 1;
        v242 = v134;
        if (v158 >= v157 >> 1)
        {
          v177 = OUTLINED_FUNCTION_22_41(v157);
          sub_1D4F02354(v177);
          v244 = v178;
        }

        sub_1D4E7661C(v272, &unk_1EC7F65D0, &qword_1D5638870);
        v160 = &v269;
        goto LABEL_94;
      }

      v112 = v276;
      v113 = OUTLINED_FUNCTION_10_110(&v274);
      v65 = v228;
      OUTLINED_FUNCTION_44_39(v113, *(v112 + 8));
      sub_1D560D7A8();
      OUTLINED_FUNCTION_195();
      v114(v228, v252);
      v115 = sub_1D560F148();
      v116 = __swift_getEnumTagSinglePayload(v230, 1, v115);
      sub_1D4E7661C(v230, &unk_1EC7F1970, &qword_1D561F4A0);
      if (v116 == 1)
      {
        goto LABEL_49;
      }

      v117 = v244;
      if (*(v244 + 16))
      {
        OUTLINED_FUNCTION_53_31();
        OUTLINED_FUNCTION_64_31();

        OUTLINED_FUNCTION_62_35();
        v119 = v242;
        if (v70)
        {

          OUTLINED_FUNCTION_45_41();
          v120 = sub_1D5614D38();
        }

        else
        {
          v120 = 0;
        }

        OUTLINED_FUNCTION_55_31(v118, sel_setPlayActivityFeatureName_);

        OUTLINED_FUNCTION_14_85();
        v66 = v245;
        if (!v104 & v103)
        {
          v163 = 0;
          OUTLINED_FUNCTION_70_24();
        }

        else
        {
          OUTLINED_FUNCTION_70_24();
          v161 = OUTLINED_FUNCTION_46_38();
          sub_1D4F48DE4(v161, v162);
          OUTLINED_FUNCTION_46_38();
          v163 = sub_1D560C168();
        }

        OUTLINED_FUNCTION_48_37();

        v164 = OUTLINED_FUNCTION_46_38();
        sub_1D50153E4(v164, v165);
        sub_1D5423428(v227, v225);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_13();
          sub_1D4F02458();
          v68 = v185;
        }

        OUTLINED_FUNCTION_6_118();
        if (v103)
        {
          OUTLINED_FUNCTION_22_41(v166);
          sub_1D4F02458();
          v68 = v186;
        }

        *(v68 + 16) = v117;
        OUTLINED_FUNCTION_4_134();
        OUTLINED_FUNCTION_32_57();
        sub_1D512DFD8(v225, v167);
        sub_1D542348C(v227);
        v117 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v65 = &selRef_initWithType_itemIdentifier_;
        v119 = v242;
      }

      OUTLINED_FUNCTION_65_30();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v244 = v117;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v179 = OUTLINED_FUNCTION_1_13();
        sub_1D4F02354(v179);
        v119 = v180;
      }

      v158 = *(v119 + 16);
      v169 = *(v119 + 24);
      v159 = v158 + 1;
      if (v158 >= v169 >> 1)
      {
        v181 = OUTLINED_FUNCTION_22_41(v169);
        sub_1D4F02354(v181);
        v242 = v182;
      }

      else
      {
        v242 = v119;
      }

      sub_1D4E7661C(v272, &unk_1EC7F65D0, &qword_1D5638870);
      v160 = &v268;
LABEL_94:
      v170 = *(v160 - 32);
      *(v170 + 16) = v159;
      sub_1D4E48324(&v269, v170 + 40 * v158 + 32);
LABEL_95:
      __swift_destroy_boxed_opaque_existential_1(&v274);
      v67 = v262 + 40;
      v64 = v263 - 1;
      if (v263 == 1)
      {

        v187 = v244;
        v188 = v242;
        goto LABEL_99;
      }
    }
  }

  v68 = MEMORY[0x1E69E7CC0];
  v188 = MEMORY[0x1E69E7CC0];
  v187 = MEMORY[0x1E69E7CC0];
LABEL_99:
  if (*(v188 + 16))
  {
    v189 = v68;

    sub_1D5423C84();

    if (v259)
    {

      OUTLINED_FUNCTION_45_41();
      v191 = sub_1D5614D38();
    }

    else
    {
      v191 = 0;
    }

    OUTLINED_FUNCTION_72_27(v190, sel_setPlayActivityFeatureName_);

    OUTLINED_FUNCTION_14_85();
    if (!v104 & v103)
    {
      v198 = 0;
    }

    else
    {
      v196 = OUTLINED_FUNCTION_20_9();
      sub_1D4F48DE4(v196, v197);
      OUTLINED_FUNCTION_20_9();
      v195 = sub_1D560C168();
      v198 = v195;
    }

    OUTLINED_FUNCTION_72_27(v195, v65[238]);

    v199 = OUTLINED_FUNCTION_20_9();
    sub_1D50153E4(v199, v200);
    sub_1D5423428(v224, v222);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_13();
      sub_1D4F02458();
      v189 = v217;
    }

    v202 = *(v189 + 16);
    v201 = *(v189 + 24);
    if (v202 >= v201 >> 1)
    {
      OUTLINED_FUNCTION_93_1(v201);
      sub_1D4F02458();
      v189 = v218;
    }

    sub_1D542348C(v224);
    *(v189 + 16) = v202 + 1;
    OUTLINED_FUNCTION_4_134();
    v205 = v189 + v203 + *(v204 + 72) * v202;
    v206 = v222;
LABEL_124:
    sub_1D512DFD8(v206, v205);
    goto LABEL_125;
  }

  if (*(v187 + 16))
  {
    v192 = v68;
    OUTLINED_FUNCTION_53_31();
    OUTLINED_FUNCTION_64_31();

    if (v259)
    {

      OUTLINED_FUNCTION_45_41();
      v194 = sub_1D5614D38();
    }

    else
    {
      v194 = 0;
    }

    OUTLINED_FUNCTION_72_27(v193, sel_setPlayActivityFeatureName_);

    OUTLINED_FUNCTION_14_85();
    if (!v104 & v103)
    {
      v210 = 0;
    }

    else
    {
      v208 = OUTLINED_FUNCTION_20_9();
      sub_1D4F48DE4(v208, v209);
      OUTLINED_FUNCTION_20_9();
      v207 = sub_1D560C168();
      v210 = v207;
    }

    OUTLINED_FUNCTION_72_27(v207, v65[238]);

    v211 = OUTLINED_FUNCTION_20_9();
    sub_1D50153E4(v211, v212);
    sub_1D5423428(v223, v221);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_13();
      sub_1D4F02458();
      v192 = v219;
    }

    v214 = *(v192 + 16);
    v213 = *(v192 + 24);
    if (v214 >= v213 >> 1)
    {
      OUTLINED_FUNCTION_93_1(v213);
      sub_1D4F02458();
      v192 = v220;
    }

    sub_1D542348C(v223);
    *(v192 + 16) = v214 + 1;
    OUTLINED_FUNCTION_4_134();
    v205 = v192 + v215 + *(v216 + 72) * v214;
    v206 = v221;
    goto LABEL_124;
  }

LABEL_125:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D542628C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1D4E62938(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F06B8, &unk_1D564AB50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v24, v27);
    v11 = v28;
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v6 + 104))(v10, *MEMORY[0x1E6976970], v4);
    v13 = sub_1D5159364(v10, v11, v12);
    (*(v6 + 8))(v10, v4);
    v14 = [objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent) initWithLegacyModelStationSeeding_];

    type metadata accessor for MusicPlaybackIntent(0);
    OUTLINED_FUNCTION_71_24();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    *a2 = v14;
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1D4E7661C(v24, &unk_1EC7ED400, &qword_1D5620CF0);
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000029, 0x80000001D568DC60);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000037, 0x80000001D568DC90);
    OUTLINED_FUNCTION_6_3();
    *&v24[0] = 304;
    result = OUTLINED_FUNCTION_16_90("Fatal error", v20, v21, v22, v23, "MusicKitInternal/MusicPlaybackIntent.swift");
    __break(1u);
  }

  return result;
}

void sub_1D5426514()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v101 = v3;
  v102 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v100 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v99 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34_5();
  v21 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v103 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v99[2] = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_2();
  v104 = v27;
  sub_1D4ECCD9C(v6, v107);
  if (!v107[3])
  {
    sub_1D4E7661C(v107, &unk_1EC7F65C0, &qword_1D562E6B0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v21);
    goto LABEL_41;
  }

  v28 = v108;
  v29 = OUTLINED_FUNCTION_10_110(v107);
  OUTLINED_FUNCTION_44_39(v29, *(v28 + 8));
  sub_1D560D828();
  (*(v12 + 8))(v18, v10);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v21);
  __swift_destroy_boxed_opaque_existential_1(v107);
  if (__swift_getEnumTagSinglePayload(v0, 1, v21) == 1)
  {
LABEL_41:
    sub_1D4E7661C(v0, &qword_1EC7F6DF0, &qword_1D561D1E0);
    OUTLINED_FUNCTION_9_115();
    v99[0] = 209;
    v92 = v91 + 11;
    goto LABEL_42;
  }

  v33 = v103;
  v34 = v104;
  (*(v103 + 32))(v104, v0, v21);
  if (v2)
  {
    v35 = *(v6 + 16);
    if (v35)
    {
      v99[0] = v21;
      v106[0] = MEMORY[0x1E69E7CC0];
      sub_1D4F03EEC(0, v35, 0);
      v36 = v106[0];
      v37 = v6 + 32;
      do
      {
        sub_1D4E62938(v37, v107);
        v38 = v108;
        v39 = OUTLINED_FUNCTION_10_110(v107);
        OUTLINED_FUNCTION_44_39(v39, *(v38 + 8));
        __swift_destroy_boxed_opaque_existential_1(v107);
        v106[0] = v36;
        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        if (v41 >= v40 >> 1)
        {
          v42 = OUTLINED_FUNCTION_93_1(v40);
          sub_1D4F03EEC(v42, v41 + 1, 1);
          v36 = v106[0];
        }

        *(v36 + 16) = v41 + 1;
        (*(v12 + 32))(v36 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v41, v16, v10);
        v37 += 40;
        --v35;
      }

      while (v35);
      v21 = v99[0];
      v33 = v103;
      v34 = v104;
    }

    v43 = OUTLINED_FUNCTION_47_12();
    v44(v43);
    v45 = v99[1];
    sub_1D560D8E8();
    OUTLINED_FUNCTION_1_169();
    sub_1D54282B8(v46, v47, MEMORY[0x1E6974F90]);
    v48 = OUTLINED_FUNCTION_12_92(v45);
    v6 = *(v33 + 8);
    (v6)(v45, v21);
    if (v48)
    {
      v51 = OUTLINED_FUNCTION_47_42();
      (v6)(v51);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6620, &qword_1D562ECD0);
      OUTLINED_FUNCTION_8_3(v52, &protocol witness table for MusicLibraryRequest<A>);
      OUTLINED_FUNCTION_147();
      sub_1D5613D28();
    }

    else
    {
      sub_1D560D928();
      OUTLINED_FUNCTION_12_92(v45);
      v49 = OUTLINED_FUNCTION_31_52();
      (v6)(v49);
      sub_1D560D878();
      OUTLINED_FUNCTION_12_92(v45);
      v50 = OUTLINED_FUNCTION_31_52();
      (v6)(v50);
      if (qword_1EDD53D48 != -1)
      {
        OUTLINED_FUNCTION_20_10(&qword_1EDD53D48);
      }

      v63 = __swift_project_value_buffer(v21, qword_1EDD53D50);
      if (OUTLINED_FUNCTION_12_92(v63))
      {
        v64 = OUTLINED_FUNCTION_47_42();
        (v6)(v64);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6610, &qword_1D561D168);
        OUTLINED_FUNCTION_8_3(v65, &protocol witness table for MusicLibraryRequest<A>);
        v66 = OUTLINED_FUNCTION_147();
        type metadata accessor for MusicMovie(v66);
        OUTLINED_FUNCTION_24_65();
        v69 = &protocol conformance descriptor for MusicMovie;
      }

      else
      {
        sub_1D560D898();
        OUTLINED_FUNCTION_12_92(v45);
        v70 = OUTLINED_FUNCTION_31_52();
        (v6)(v70);
        if (v48)
        {
          goto LABEL_44;
        }

        sub_1D560D848();
        OUTLINED_FUNCTION_12_92(v45);
        v71 = OUTLINED_FUNCTION_31_52();
        (v6)(v71);
        if (qword_1EC7E9740 != -1)
        {
          OUTLINED_FUNCTION_37_44(&qword_1EC7E9740);
        }

        v72 = __swift_project_value_buffer(v21, qword_1EC7F7CF0);
        if (OUTLINED_FUNCTION_12_92(v72))
        {
          goto LABEL_44;
        }

        if (qword_1EDD53C38 != -1)
        {
          OUTLINED_FUNCTION_25_7(&qword_1EDD53C38);
        }

        v73 = __swift_project_value_buffer(v21, qword_1EDD53C40);
        if (OUTLINED_FUNCTION_12_92(v73))
        {
          v74 = OUTLINED_FUNCTION_47_42();
          (v6)(v74);
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
          OUTLINED_FUNCTION_8_3(v75, &protocol witness table for MusicLibraryRequest<A>);
          v76 = OUTLINED_FUNCTION_147();
          type metadata accessor for TVEpisode(v76);
          OUTLINED_FUNCTION_23_66();
          v69 = &protocol conformance descriptor for TVEpisode;
        }

        else
        {
          if (qword_1EC7E8F18 != -1)
          {
            OUTLINED_FUNCTION_21_25(&qword_1EC7E8F18);
          }

          v77 = __swift_project_value_buffer(v21, qword_1EC7F08A0);
          if (OUTLINED_FUNCTION_12_92(v77))
          {
            v78 = OUTLINED_FUNCTION_47_42();
            (v6)(v78);
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65F0, &qword_1D56381D0);
            OUTLINED_FUNCTION_8_3(v79, &protocol witness table for MusicLibraryRequest<A>);
            v80 = OUTLINED_FUNCTION_147();
            type metadata accessor for UploadedAudio(v80);
            OUTLINED_FUNCTION_22_68();
            v69 = &protocol conformance descriptor for UploadedAudio;
          }

          else
          {
            if (qword_1EDD53CE8 != -1)
            {
              OUTLINED_FUNCTION_19_29(&qword_1EDD53CE8);
            }

            v81 = __swift_project_value_buffer(v21, qword_1EDD53CF0);
            if ((OUTLINED_FUNCTION_12_92(v81) & 1) == 0)
            {
              OUTLINED_FUNCTION_30();
              sub_1D5615B68();
              OUTLINED_FUNCTION_16_6();
              OUTLINED_FUNCTION_33_3();
              MEMORY[0x1DA6EAC70](0xD00000000000003CLL);
              OUTLINED_FUNCTION_1_169();
              sub_1D54282B8(v96, v97, MEMORY[0x1E6974F98]);
              v98 = sub_1D56160F8();
              MEMORY[0x1DA6EAC70](v98);

              MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
              OUTLINED_FUNCTION_6_3();
              v99[0] = 235;
              while (1)
              {
                OUTLINED_FUNCTION_16_90("Fatal error", v88, v89, v92, v93, "MusicKitInternal/MusicPlaybackIntent.swift");
                __break(1u);
LABEL_44:
                v94 = OUTLINED_FUNCTION_47_42();
                (v6)(v94);
                OUTLINED_FUNCTION_9_115();
                v99[0] = 227;
                v92 = v95 + 96;
LABEL_42:
                v93 = v90 | 0x8000000000000000;
              }
            }

            v82 = OUTLINED_FUNCTION_47_42();
            (v6)(v82);
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65E0, &qword_1D5663EB0);
            OUTLINED_FUNCTION_8_3(v83, &protocol witness table for MusicLibraryRequest<A>);
            v84 = OUTLINED_FUNCTION_147();
            type metadata accessor for UploadedVideo(v84);
            OUTLINED_FUNCTION_21_74();
            v69 = &protocol conformance descriptor for UploadedVideo;
          }
        }
      }

      sub_1D54282B8(v67, v68, v69);
    }

    sub_1D560DD68();
    sub_1D4E62938(v107, v106);
    sub_1D4F43D5C(v101, v105, &unk_1EC7F65C0, &qword_1D562E6B0);
    if (v105[3])
    {
      v53 = v105[4];
      v54 = OUTLINED_FUNCTION_10_110(v105);
      v55 = *(v53 + 8);
      v56 = v100;
      OUTLINED_FUNCTION_44_39(v54, v55);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v10);
      __swift_destroy_boxed_opaque_existential_1(v105);
    }

    else
    {
      sub_1D4E7661C(v105, &unk_1EC7F65C0, &qword_1D562E6B0);
      v56 = v100;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v10);
    }

    sub_1D5424200();

    sub_1D4E7661C(v56, &unk_1EC7EEC20, &unk_1D5623F70);
    __swift_destroy_boxed_opaque_existential_1(v106);
    (v6)(v34, v21);
    __swift_destroy_boxed_opaque_existential_1(v107);
  }

  else
  {
    sub_1D5427328();
    (*(v33 + 8))(v34, v21);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5426EF0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v19 = sub_1D56131C8();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D5613158();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D560D838();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E62938(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v21, v24);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D560EC98();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D56132C8();
    v13 = sub_1D5159818();
    (*(v7 + 8))(v9, v17);
    v14 = v19;
    (*(v4 + 104))(v6, *MEMORY[0x1E6976970], v19);
    v15 = sub_1D4F42FA4(v13, v6);
    (*(v4 + 8))(v6, v14);
    (*(v10 + 8))(v12, v18);
    *v20 = v15;
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1D4E7661C(v21, &unk_1EC7ED400, &qword_1D5620CF0);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000045, 0x80000001D568DE80);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](11817, 0xE200000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id sub_1D54272C8(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStoreSectionedCollection:a1 startIdentifierSet:a2];

  swift_unknownObjectRelease();
  return v3;
}

void sub_1D5427328()
{
  OUTLINED_FUNCTION_47();
  v143 = v2;
  v4 = v3;
  v144 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v150 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v153 = v14;
  OUTLINED_FUNCTION_70_0();
  v152 = sub_1D560F148();
  OUTLINED_FUNCTION_4();
  v147 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v149 = v17;
  OUTLINED_FUNCTION_70_0();
  v18 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v151 = v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v140 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v140 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_0();
  v32 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v145 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v37);
  v154 = v4;
  sub_1D4ECCD9C(v4, v159);
  if (!v160)
  {
    sub_1D4E7661C(v159, &unk_1EC7F65C0, &qword_1D562E6B0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v32);
    goto LABEL_48;
  }

  v1 = v161;
  __swift_project_boxed_opaque_existential_1(v159, v160);
  sub_1D560EC98();
  sub_1D560D828();
  v40 = *(v20 + 8);
  v38 = v20 + 8;
  v39 = v40;
  v40(v29, v18);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v32);
  __swift_destroy_boxed_opaque_existential_1(v159);
  if (__swift_getEnumTagSinglePayload(v0, 1, v32) == 1)
  {
LABEL_48:
    sub_1D4E7661C(v0, &qword_1EC7F6DF0, &qword_1D561D1E0);
    OUTLINED_FUNCTION_9_115();
    v140[0] = 252;
    v133 = v132 + 11;
    goto LABEL_49;
  }

  v44 = *(v145 + 32);
  v142 = v32;
  v44(v146, v0, v32);
  v45 = *(v154 + 16);
  if (v45)
  {
    v46 = v154 + 32;
    v148 = v147 + 32;
    v147 += 8;
    v47 = MEMORY[0x1E69E7CC0];
    v154 = v18;
    while (1)
    {
      sub_1D4E62938(v46, v159);
      OUTLINED_FUNCTION_43_40();
      sub_1D560EC98();
      v48 = sub_1D560D808();
      v50 = v49;
      v39(v27, v18);
      if (v50)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_43_40();
      sub_1D560EC98();
      v51 = v153;
      sub_1D560D7A8();
      v52 = OUTLINED_FUNCTION_47_12();
      (v39)(v52);
      v53 = v152;
      if (__swift_getEnumTagSinglePayload(v51, 1, v152) != 1)
      {
        break;
      }

      sub_1D4E7661C(v51, &unk_1EC7F1970, &qword_1D561F4A0);
      OUTLINED_FUNCTION_43_40();
      sub_1D560EC98();
      v54 = v150;
      sub_1D560D5C8();
      v55 = OUTLINED_FUNCTION_47_12();
      (v39)(v55);
      v56 = sub_1D560D4C8();
      if (__swift_getEnumTagSinglePayload(v54, 1, v56) != 1)
      {
        v48 = sub_1D560D4B8();
        v50 = v63;
        OUTLINED_FUNCTION_24_0();
        v61 = OUTLINED_FUNCTION_47_12();
        goto LABEL_11;
      }

      sub_1D4E7661C(v54, &unk_1EC7EBF20, &unk_1D561F530);
      __swift_destroy_boxed_opaque_existential_1(v159);
LABEL_17:
      v46 += 40;
      --v45;
      v18 = v154;
      if (!v45)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_195();
    v57 = v149;
    v58(v149, v51, v53);
    v48 = sub_1D560F138();
    v50 = v59;
    OUTLINED_FUNCTION_195();
    v61 = v57;
    v62 = v53;
LABEL_11:
    v60(v61, v62);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v159);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = OUTLINED_FUNCTION_1_13();
      sub_1D4F0062C(v67, v68, v69, v47);
      v47 = v70;
    }

    v65 = *(v47 + 16);
    v64 = *(v47 + 24);
    if (v65 >= v64 >> 1)
    {
      v71 = OUTLINED_FUNCTION_93_1(v64);
      sub_1D4F0062C(v71, v65 + 1, 1, v47);
      v47 = v72;
    }

    *(v47 + 16) = v65 + 1;
    v66 = v47 + 16 * v65;
    *(v66 + 32) = v48;
    *(v66 + 40) = v50;
    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_167_0();
  v74 = v141;
  v75 = v142;
  (*(v73 + 16))(v141, v146, v142);
  v76 = v140[1];
  sub_1D560D8E8();
  OUTLINED_FUNCTION_1_169();
  sub_1D54282B8(v77, v78, MEMORY[0x1E6974F90]);
  v79 = OUTLINED_FUNCTION_11_112(v76);
  v1 = *(v38 + 8);
  v80 = OUTLINED_FUNCTION_132_1();
  v1(v80);
  if (v79 & 1) != 0 || (sub_1D560D928(), v81 = OUTLINED_FUNCTION_11_112(v76), v82 = OUTLINED_FUNCTION_132_1(), v1(v82), (v81) || (sub_1D560D878(), v83 = OUTLINED_FUNCTION_11_112(v76), v84 = OUTLINED_FUNCTION_132_1(), v1(v84), (v83))
  {
    v85 = OUTLINED_FUNCTION_70();
    v1(v85);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6620, &qword_1D562ECD0);
    OUTLINED_FUNCTION_8_3(v86, &protocol witness table for MusicLibraryRequest<A>);
    OUTLINED_FUNCTION_46_7();
    sub_1D5613D28();
    sub_1D560DD68();
  }

  else
  {
    if (qword_1EDD53D48 != -1)
    {
      OUTLINED_FUNCTION_20_10(&qword_1EDD53D48);
    }

    v93 = __swift_project_value_buffer(v75, qword_1EDD53D50);
    if (OUTLINED_FUNCTION_11_112(v93))
    {
      v94 = OUTLINED_FUNCTION_70();
      v1(v94);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6610, &qword_1D561D168);
      OUTLINED_FUNCTION_8_3(v95, &protocol witness table for MusicLibraryRequest<A>);
      v96 = OUTLINED_FUNCTION_46_7();
      type metadata accessor for MusicMovie(v96);
      OUTLINED_FUNCTION_24_65();
      v99 = sub_1D54282B8(v97, v98, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_51_34(v99);
    }

    else
    {
      sub_1D560D898();
      v100 = OUTLINED_FUNCTION_11_112(v76);
      v101 = OUTLINED_FUNCTION_132_1();
      v1(v101);
      if (v100)
      {
        goto LABEL_51;
      }

      sub_1D560D848();
      v102 = OUTLINED_FUNCTION_11_112(v76);
      v103 = OUTLINED_FUNCTION_132_1();
      v1(v103);
      if (v102)
      {
        goto LABEL_51;
      }

      if (qword_1EC7E9740 != -1)
      {
        OUTLINED_FUNCTION_37_44(&qword_1EC7E9740);
      }

      v104 = __swift_project_value_buffer(v75, qword_1EC7F7CF0);
      if (OUTLINED_FUNCTION_11_112(v104))
      {
        goto LABEL_51;
      }

      if (qword_1EDD53C38 != -1)
      {
        OUTLINED_FUNCTION_25_7(&qword_1EDD53C38);
      }

      v105 = __swift_project_value_buffer(v75, qword_1EDD53C40);
      if (OUTLINED_FUNCTION_11_112(v105))
      {
        v106 = OUTLINED_FUNCTION_70();
        v1(v106);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
        OUTLINED_FUNCTION_8_3(v107, &protocol witness table for MusicLibraryRequest<A>);
        v108 = OUTLINED_FUNCTION_46_7();
        type metadata accessor for TVEpisode(v108);
        OUTLINED_FUNCTION_23_66();
        v111 = sub_1D54282B8(v109, v110, &protocol conformance descriptor for TVEpisode);
        OUTLINED_FUNCTION_51_34(v111);
      }

      else
      {
        if (qword_1EC7E8F18 != -1)
        {
          OUTLINED_FUNCTION_21_25(&qword_1EC7E8F18);
        }

        v112 = __swift_project_value_buffer(v75, qword_1EC7F08A0);
        if (OUTLINED_FUNCTION_11_112(v112))
        {
          v113 = OUTLINED_FUNCTION_70();
          v1(v113);
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65F0, &qword_1D56381D0);
          OUTLINED_FUNCTION_8_3(v114, &protocol witness table for MusicLibraryRequest<A>);
          v115 = OUTLINED_FUNCTION_46_7();
          type metadata accessor for UploadedAudio(v115);
          OUTLINED_FUNCTION_22_68();
          v118 = sub_1D54282B8(v116, v117, &protocol conformance descriptor for UploadedAudio);
          OUTLINED_FUNCTION_51_34(v118);
        }

        else
        {
          if (qword_1EDD53CE8 != -1)
          {
            OUTLINED_FUNCTION_19_29(&qword_1EDD53CE8);
          }

          v119 = __swift_project_value_buffer(v75, qword_1EDD53CF0);
          if ((OUTLINED_FUNCTION_11_112(v119) & 1) == 0)
          {
            OUTLINED_FUNCTION_30();
            sub_1D5615B68();
            OUTLINED_FUNCTION_16_6();
            OUTLINED_FUNCTION_33_3();
            MEMORY[0x1DA6EAC70](0xD00000000000003CLL);
            OUTLINED_FUNCTION_1_169();
            sub_1D54282B8(v137, v138, MEMORY[0x1E6974F98]);
            v139 = sub_1D56160F8();
            MEMORY[0x1DA6EAC70](v139);

            MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
            OUTLINED_FUNCTION_6_3();
            v140[0] = 292;
            while (1)
            {
              OUTLINED_FUNCTION_16_90("Fatal error", v129, v130, v133, v134, "MusicKitInternal/MusicPlaybackIntent.swift");
              __break(1u);
LABEL_51:
              v135 = OUTLINED_FUNCTION_70();
              v1(v135);
              OUTLINED_FUNCTION_9_115();
              v140[0] = 278;
              v133 = v136 + 96;
LABEL_49:
              v134 = v131 | 0x8000000000000000;
            }
          }

          v120 = OUTLINED_FUNCTION_70();
          v1(v120);
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65E0, &qword_1D5663EB0);
          OUTLINED_FUNCTION_8_3(v121, &protocol witness table for MusicLibraryRequest<A>);
          v122 = OUTLINED_FUNCTION_46_7();
          type metadata accessor for UploadedVideo(v122);
          OUTLINED_FUNCTION_21_74();
          v125 = sub_1D54282B8(v123, v124, &protocol conformance descriptor for UploadedVideo);
          OUTLINED_FUNCTION_51_34(v125);
        }
      }
    }
  }

  swift_getKeyPath();
  MEMORY[0x1DA6E3B00]();

  sub_1D4E62938(v159, v158);
  sub_1D4F43D5C(v143, v155, &unk_1EC7F65C0, &qword_1D562E6B0);
  if (v156)
  {
    v74 = v157;
    __swift_project_boxed_opaque_existential_1(v155, v156);
    OUTLINED_FUNCTION_58_35();
    sub_1D560EC98();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v18);
    __swift_destroy_boxed_opaque_existential_1(v155);
  }

  else
  {
    sub_1D4E7661C(v155, &unk_1EC7F65C0, &qword_1D562E6B0);
    OUTLINED_FUNCTION_58_35();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v18);
  }

  sub_1D5424200();
  sub_1D4E7661C(v74, &unk_1EC7EEC20, &unk_1D5623F70);
  __swift_destroy_boxed_opaque_existential_1(v158);
  (v1)(v146, v75);
  __swift_destroy_boxed_opaque_existential_1(v159);
  OUTLINED_FUNCTION_46();
}

id MusicPlaybackIntent.rawPlaybackIntent.getter()
{
  v1 = [*v0 rawPlaybackIntent];

  return v1;
}

uint64_t type metadata accessor for MusicPlaybackIntent(uint64_t a1)
{
  result = qword_1EDD5BF40;
  if (!qword_1EDD5BF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D542810C(uint64_t a1)
{
  sub_1D512F270();
  if (v1 <= 0x3F)
  {
    sub_1D5428190(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5428190(uint64_t a1)
{
  if (!qword_1EDD5B118)
  {
    type metadata accessor for MusicPlaybackIntentDonation(255);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5B118);
    }
  }
}

id sub_1D54281E8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1D5616158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF50, &unk_1D561F550);
  v10 = sub_1D5615158();

  v11 = [v5 initWithLegacyLibraryRequest:v9 allowedIdentifiers:v10 startIdentifierSet:a3 onlyLibraryContent:a4 & 1];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1D54282B8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_37_44(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_34(uint64_t a1)
{

  return sub_1D560DD68();
}

uint64_t OUTLINED_FUNCTION_65_30()
{

  return sub_1D4E62938(v0 - 136, v0 - 224);
}

uint64_t OUTLINED_FUNCTION_71_24()
{

  return type metadata accessor for MusicPlaybackIntentDonation(0);
}

id OUTLINED_FUNCTION_72_27(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t type metadata accessor for StorePlatformRadioShow(uint64_t a1)
{
  result = qword_1EDD557E8;
  if (!qword_1EDD557E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54284CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v50 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_71_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6648, &unk_1D56640A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v54 = type metadata accessor for StorePlatformRadioShow(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v22 = v21;
  v23 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D542A824();
  v52 = v19;
  v24 = v53;
  sub_1D5616398();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v48 = v10;
  v25 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  LOBYTE(v56) = 0;
  sub_1D4F886BC();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_16_69();
  sub_1D5615F78();
  sub_1D4FD23EC(v2, v22, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v58 = 1;
  sub_1D50C44B0(&qword_1EDD528F8);
  sub_1D5615F78();
  v26 = v54;
  *(v22 + *(v54 + 20)) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  v58 = 2;
  v27 = sub_1D514057C(&qword_1EDD52908);
  OUTLINED_FUNCTION_7_92(v27, &v58);
  *(v22 + v26[6]) = v56;
  v58 = 3;
  sub_1D4F89C9C();
  OUTLINED_FUNCTION_16_69();
  sub_1D5615FD8();
  v28 = v57;
  v29 = (v22 + v26[7]);
  *v29 = v56;
  v29[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  LOBYTE(v56) = 4;
  sub_1D4F88A24();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_7_92(v30, v31);
  sub_1D4FD23EC(v14, v22 + v26[8], &qword_1EC7EC960, &unk_1D56334C0);
  LOBYTE(v56) = 5;
  OUTLINED_FUNCTION_16_69();
  v32 = sub_1D5615F38();
  LODWORD(v53) = 1;
  v33 = (v22 + v26[9]);
  *v33 = v32;
  v33[1] = v34;
  LOBYTE(v56) = 6;
  OUTLINED_FUNCTION_16_69();
  v35 = sub_1D5615F38();
  v36 = (v22 + v26[10]);
  *v36 = v35;
  v36[1] = v37;
  type metadata accessor for StorePlatformUber(0);
  LOBYTE(v56) = 7;
  OUTLINED_FUNCTION_10_111();
  sub_1D542AA80(v38);
  OUTLINED_FUNCTION_31_1();
  v39 = v48;
  OUTLINED_FUNCTION_7_92(v40, v41);
  sub_1D4FD23EC(v39, v22 + v26[11], &qword_1EC7EFBD0, &qword_1D5634650);
  sub_1D560C0A8();
  LOBYTE(v56) = 8;
  OUTLINED_FUNCTION_0_226();
  sub_1D542AA80(v42);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_7_92(v43, v44);
  v45 = OUTLINED_FUNCTION_4_93();
  v46(v45);
  sub_1D4FD23EC(v25, v22 + v26[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D542A878(v22, v49);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_1D542A8DC(v22, type metadata accessor for StorePlatformRadioShow);
}

BOOL sub_1D5428D08(uint64_t a1, uint64_t a2)
{
  v135 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v131 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v129 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v130 = v10;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v134 = v12;
  v138 = type metadata accessor for StorePlatformUber(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v132 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v136 = v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v139 = v19;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v142 = v20;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v140 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v141 = v25;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v144 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v129 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_71_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v129 - v39;
  v41 = *(v38 + 56);
  v146 = a1;
  sub_1D4F1C460(a1, &v129 - v39, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F1C460(a2, &v40[v41], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v40, 1, v28);
  if (v42)
  {
    OUTLINED_FUNCTION_57(&v40[v41], 1, v28);
    if (v42)
    {
      sub_1D4E50004(v40, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_15;
    }

LABEL_9:
    v43 = &qword_1EC7EC330;
    v44 = &qword_1D56222C0;
LABEL_10:
    v45 = v40;
LABEL_11:
    sub_1D4E50004(v45, v43, v44);
    return 0;
  }

  sub_1D4F1C460(v40, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v40[v41], 1, v28);
  if (v42)
  {
    (*(v30 + 8))(v2, v28);
    goto LABEL_9;
  }

  (*(v30 + 32))(v33, &v40[v41], v28);
  sub_1D542A980(&qword_1EC7EBEB8);
  v47 = sub_1D5614D18();
  v48 = *(v30 + 8);
  v48(v33, v28);
  v48(v2, v28);
  sub_1D4E50004(v40, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v49 = type metadata accessor for StorePlatformRadioShow(0);
  v50 = v49[5];
  v51 = v146;
  v52 = a2;
  v53 = *(a2 + v50);
  if (*(v146 + v50))
  {
    if (!v53)
    {
      return 0;
    }

    sub_1D4F28F1C();
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v56 = v49[6];
  v57 = *(a2 + v56);
  if (*(v51 + v56))
  {
    if (!v57)
    {
      return 0;
    }

    sub_1D4F29174();
    v59 = v58;

    if ((v59 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v60 = v49[7];
  v61 = *(v51 + v60);
  v62 = *(v51 + v60 + 8);
  v63 = (a2 + v60);
  v64 = v61 == *v63 && v62 == v63[1];
  if (!v64 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v65 = v144;
  v66 = *(v143 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v67, v68, v69, v70);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v71, v72, v73, v74);
  v75 = v145;
  OUTLINED_FUNCTION_57(v65, 1, v145);
  if (v42)
  {
    OUTLINED_FUNCTION_57(v65 + v66, 1, v75);
    if (v42)
    {
      sub_1D4E50004(v65, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_40;
    }

LABEL_38:
    v43 = &qword_1EC7EC968;
    v44 = &unk_1D5622290;
    v45 = v65;
    goto LABEL_11;
  }

  v76 = v141;
  sub_1D4F1C460(v65, v141, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v65 + v66, 1, v75);
  if (v77)
  {
    (*(v142 + 8))(v76, v75);
    goto LABEL_38;
  }

  v78 = v142;
  v79 = v65 + v66;
  v80 = v140;
  (*(v142 + 32))(v140, v79, v75);
  sub_1D542AA00(&qword_1EC7EC988);
  v81 = sub_1D5614D18();
  v82 = *(v78 + 8);
  v82(v80, v75);
  v82(v76, v75);
  sub_1D4E50004(v65, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  OUTLINED_FUNCTION_25_15();
  if (v83)
  {
    if (!v84)
    {
      return 0;
    }

    v87 = *v85 == *v86 && v83 == v84;
    if (!v87 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_15();
  if (v88)
  {
    if (!v89)
    {
      return 0;
    }

    v92 = *v90 == *v91 && v88 == v89;
    if (!v92 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  v93 = *(v137 + 48);
  v94 = v139;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v95, v96, v97, v98);
  v99 = v94;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v100, v101, v102, v103);
  v104 = v138;
  OUTLINED_FUNCTION_57(v94, 1, v138);
  if (v42)
  {
    OUTLINED_FUNCTION_57(v94 + v93, 1, v104);
    if (v42)
    {
      sub_1D4E50004(v94, &qword_1EC7EFBD0, &qword_1D5634650);
      goto LABEL_68;
    }

LABEL_66:
    v43 = &qword_1EC7EFDD8;
    v44 = &unk_1D5639570;
    v45 = v99;
    goto LABEL_11;
  }

  v105 = v94;
  v106 = v136;
  sub_1D4F1C460(v105, v136, &qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_57(v99 + v93, 1, v104);
  if (v107)
  {
    OUTLINED_FUNCTION_13_90();
    sub_1D542A8DC(v106, v108);
    goto LABEL_66;
  }

  v109 = v99 + v93;
  v110 = v132;
  sub_1D5119188(v109, v132);
  v111 = sub_1D54D5E40(v106, v110);
  sub_1D542A8DC(v110, type metadata accessor for StorePlatformUber);
  sub_1D542A8DC(v106, type metadata accessor for StorePlatformUber);
  sub_1D4E50004(v99, &qword_1EC7EFBD0, &qword_1D5634650);
  if (!v111)
  {
    return 0;
  }

LABEL_68:
  v112 = v49[12];
  v113 = *(v133 + 48);
  v114 = v134;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v115, v116, v117, v118);
  v119 = v52 + v112;
  v40 = v114;
  sub_1D4F1C460(v119, v114 + v113, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v120 = v135;
  OUTLINED_FUNCTION_57(v114, 1, v135);
  if (v42)
  {
    OUTLINED_FUNCTION_57(v114 + v113, 1, v120);
    if (v42)
    {
      sub_1D4E50004(v114, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_76;
  }

  v121 = v130;
  sub_1D4F1C460(v114, v130, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v114 + v113, 1, v120);
  if (v122)
  {
    (*(v131 + 8))(v121, v120);
LABEL_76:
    v43 = &qword_1EC7E9FB0;
    v44 = &qword_1D562C590;
    goto LABEL_10;
  }

  v123 = v131;
  v124 = &v40[v113];
  v125 = v129;
  (*(v131 + 32))(v129, v124, v120);
  OUTLINED_FUNCTION_0_226();
  sub_1D542AA80(v126);
  v127 = sub_1D5614D18();
  v128 = *(v123 + 8);
  v128(v125, v120);
  v128(v121, v120);
  sub_1D4E50004(v40, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v127 & 1) != 0;
}

uint64_t sub_1D5429874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74736F48776F6873 && a2 == 0xEC000000656D614ELL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1919246965 && a2 == 0xE400000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 7107189 && a2 == 0xE300000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1D5616168();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1D5429B44(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x6F4E73656E757469;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x74736F48776F6873;
      break;
    case 7:
      result = 1919246965;
      break;
    case 8:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5429C3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6658, &qword_1D56640B0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542A824();
  sub_1D56163D8();
  LOBYTE(v40[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v11 = sub_1D4F7CD24();
  OUTLINED_FUNCTION_4_3(v3, v40, v12, v13, v11);
  if (!v2)
  {
    v14 = type metadata accessor for StorePlatformRadioShow(0);
    v40[0] = *(v3 + v14[5]);
    v41 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v15 = sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_4_3(v40, &v41, v16, v17, v15);
    v40[0] = *(v3 + v14[6]);
    v41 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v18 = sub_1D514057C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_4_3(v40, &v41, v19, v20, v18);
    v21 = (v3 + v14[7]);
    v23 = *v21;
    v22 = v21[1];
    v40[0] = v23;
    v40[1] = v22;
    v41 = 3;
    sub_1D4F89BA0();
    sub_1D56160C8();
    v24 = v14[8];
    LOBYTE(v40[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    v25 = sub_1D4F7D044();
    OUTLINED_FUNCTION_4_3(v3 + v24, v40, v26, v27, v25);
    OUTLINED_FUNCTION_29_31(5);
    OUTLINED_FUNCTION_29_31(6);
    v28 = v14[11];
    LOBYTE(v40[0]) = 7;
    type metadata accessor for StorePlatformUber(0);
    OUTLINED_FUNCTION_10_111();
    v30 = sub_1D542AA80(v29);
    OUTLINED_FUNCTION_4_3(v3 + v28, v40, v31, v32, v30);
    v33 = v14[12];
    LOBYTE(v40[0]) = 8;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_226();
    v35 = sub_1D542AA80(v34);
    OUTLINED_FUNCTION_4_3(v3 + v33, v40, v36, v37, v35);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D5429FF0(uint64_t a1)
{
  v3 = v1;
  v71 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v66 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v65 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v70 = v9;
  v69 = type metadata accessor for StorePlatformUber(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v64 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v67 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v62 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v61 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_71_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v23 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v28 = OUTLINED_FUNCTION_22(v27);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v63 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  sub_1D4F1C460(v1, &v60 - v31, &qword_1EC7EB5B8, &unk_1D56206A0);
  v32 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v32, v33, v21);
  v68 = v23;
  if (v48)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v34 = OUTLINED_FUNCTION_22_50();
    v35(v34);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    sub_1D542A980(v36);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v23 + 8))(v26, v21);
  }

  v37 = type metadata accessor for StorePlatformRadioShow(0);
  if (*(v1 + v37[5]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v37[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D5614E28();
  sub_1D4F1C460(v1 + v37[8], v2, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v2, 1, v15);
  if (v48)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v39 = v61;
    v38 = v62;
    (*(v62 + 32))(v61, v2, v15);
    OUTLINED_FUNCTION_27();
    sub_1D542AA00(&qword_1EC7ECA38);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v38 + 8))(v39, v15);
  }

  v40 = v68;
  if (*(v1 + v37[9] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v37[10] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v41 = v71;
  v42 = v67;
  sub_1D4F1C460(v3 + v37[11], v67, &qword_1EC7EFBD0, &qword_1D5634650);
  v43 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v43, v44, v69);
  if (v48)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v45 = v64;
    sub_1D5119188(v42, v64);
    OUTLINED_FUNCTION_27();
    sub_1D4F1C460(v45, v63, &qword_1EC7EB5B8, &unk_1D56206A0);
    v46 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v46, v47, v21);
    if (v48)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v49 = OUTLINED_FUNCTION_22_50();
      v50(v49);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_1_8();
      sub_1D542A980(v51);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v40 + 8))(v26, v21);
    }

    OUTLINED_FUNCTION_13_90();
    sub_1D542A8DC(v45, v52);
  }

  v53 = v70;
  sub_1D4F1C460(v3 + v37[12], v70, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v54 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v54, v55, v41);
  if (v48)
  {
    return OUTLINED_FUNCTION_36();
  }

  v57 = v65;
  v56 = v66;
  (*(v66 + 32))(v65, v53, v41);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_226();
  sub_1D542AA80(v58);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v56 + 8))(v57, v41);
}

uint64_t sub_1D542A6C4()
{
  sub_1D56162D8();
  sub_1D5429FF0(v1);
  return sub_1D5616328();
}

uint64_t sub_1D542A70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5429874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D542A734(uint64_t a1)
{
  v2 = sub_1D542A824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D542A770(uint64_t a1)
{
  v2 = sub_1D542A824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D542A7E8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5429FF0(v2);
  return sub_1D5616328();
}

unint64_t sub_1D542A824()
{
  result = qword_1EC7F6650;
  if (!qword_1EC7F6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6650);
  }

  return result;
}

uint64_t sub_1D542A878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformRadioShow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542A8DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D542A934()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C640);
  __swift_project_value_buffer(v0, qword_1EC87C640);
  return sub_1D560FE78();
}

unint64_t sub_1D542A980(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D542AA80(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D542AA00(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D542AA80(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D542AA80(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformRadioShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D542ABA4()
{
  result = qword_1EC7F6660;
  if (!qword_1EC7F6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6660);
  }

  return result;
}

unint64_t sub_1D542ABFC()
{
  result = qword_1EC7F6668;
  if (!qword_1EC7F6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6668);
  }

  return result;
}

unint64_t sub_1D542AC54()
{
  result = qword_1EC7F6670;
  if (!qword_1EC7F6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6670);
  }

  return result;
}

uint64_t sub_1D542ACA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v76 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v62 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v64 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_59_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v68 = v19;
  v69 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v65 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  v72 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v75 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v74 = v27 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v77 = &v62 - v30;
  v31 = *(a1 + 16);
  v32 = (a1 + 32);
  v33 = v31;
  v34 = (a1 + 32);
  while (1)
  {
    if (!v33)
    {
      v36 = 2;
      goto LABEL_9;
    }

    if ((*v34 & 1) == 0)
    {
      break;
    }

    v35 = sub_1D5616168();
    OUTLINED_FUNCTION_5_129();
    ++v34;
    --v33;
    if (v35)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_5_129();
LABEL_8:
  v36 = 1;
LABEL_9:
  v70 = v36;
  while (1)
  {
    if (!v31)
    {
      v38 = 2;
      goto LABEL_17;
    }

    if (*v32 == 1)
    {
      break;
    }

    v37 = sub_1D5616168();
    OUTLINED_FUNCTION_5_129();
    ++v32;
    --v31;
    if (v37)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_5_129();
LABEL_16:
  v38 = 1;
LABEL_17:
  v39 = (v71 + *(type metadata accessor for MusicSuggestedSongsEntry(0) + 20));
  v40 = *v39;
  v41 = v39[1];
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v67 = v40;
  }

  else
  {
    v67 = 0;
    v41 = 0;
  }

  sub_1D5613838();
  sub_1D560EC98();
  sub_1D560FFA8();
  v43 = v76;
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v76);
  sub_1D560FE48();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v43);
  sub_1D560D4D8();
  sub_1D4E50004(v14, &qword_1EC7EA358, &unk_1D561DF50);
  v44 = v77;
  sub_1D4E50004(v17, &qword_1EC7EA358, &unk_1D561DF50);
  v45 = v69;
  v46 = *(v68 + 8);
  v46(v24, v69);
  sub_1D560EC98();
  LOBYTE(v43) = sub_1D560D7E8();
  v47 = v24;
  v48 = v45;
  v46(v47, v45);
  v49 = v72;
  if (v43)
  {
    LODWORD(v68) = v38;
    v50 = v65;
    sub_1D560EC98();
    v51 = v66;
    sub_1D560D7A8();
    v46(v50, v48);
    v52 = sub_1D560F148();
    if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
    {
      sub_1D4E50004(v51, &unk_1EC7F1970, &qword_1D561F4A0);
    }

    else
    {
      sub_1D560F138();
      (*(*(v52 - 8) + 8))(v51, v52);
      v53 = v64;
      sub_1D5612468();
      v54 = v63;
      sub_1D560FDD8();
      v55 = v62;
      v56 = *(v62 + 8);
      v57 = v76;
      v56(v53, v76);
      (*(v55 + 16))(v53, v54, v57);
      sub_1D560FDE8();
      v58 = v74;
      sub_1D5612438();
      v56(v54, v57);
      v44 = v77;
      v59 = v75;
      (*(v75 + 8))(v77, v49);
      (*(v59 + 32))(v44, v58, v49);
    }

    LOBYTE(v38) = v68;
  }

  v60 = v75;
  (*(v75 + 16))(v74, v44, v49);
  v78 = v67;
  v79 = v41;
  v80 = v70;
  v81 = v38;
  sub_1D5612E68();
  return (*(v60 + 8))(v44, v49);
}

uint64_t MusicSuggestedSongsEntry.init<A>(song:moduleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  (*(v12 + 16))(a5, a1, v9);
  sub_1D56150C8();
  (*(*(a3 - 8) + 8))(a2, a3);
  (*(v11 + 8))(a1, v9);
  result = type metadata accessor for MusicSuggestedSongsEntry(0);
  v14 = (a5 + *(result + 20));
  *v14 = v15;
  v14[1] = v16;
  return result;
}

uint64_t type metadata accessor for MusicSuggestedSongsEntry(uint64_t a1)
{
  result = qword_1EC7F66A0;
  if (!qword_1EC7F66A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSuggestedSongsEntry.song.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5613838();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MusicSuggestedSongsEntry.rawModuleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicSuggestedSongsEntry(0) + 20));

  return v1;
}

MusicKitInternal::MusicSuggestedSongsEntry::UserInteraction_optional __swiftcall MusicSuggestedSongsEntry.UserInteraction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

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

uint64_t MusicSuggestedSongsEntry.UserInteraction.rawValue.getter()
{
  if (*v0)
  {
    return 0x6577656976657270;
  }

  else
  {
    return 0x6573736572706D69;
  }
}

uint64_t sub_1D542B648@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSuggestedSongsEntry.UserInteraction.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE900000000000064;
  return result;
}

uint64_t static MusicSuggestedSongsEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D56137A8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MusicSuggestedSongsEntry(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1D5616168();
}

uint64_t sub_1D542B7CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C75646F4D776172 && a2 == 0xEB00000000444965)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D542B898(char a1)
{
  if (a1)
  {
    return 0x6C75646F4D776172;
  }

  else
  {
    return 1735290739;
  }
}

uint64_t sub_1D542B8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D542B7CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D542B900(uint64_t a1)
{
  v2 = sub_1D542BB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D542B93C(uint64_t a1)
{
  v2 = sub_1D542BB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSuggestedSongsEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6678, &qword_1D56641D0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542BB18();
  sub_1D56163D8();
  v12[15] = 0;
  sub_1D5613838();
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v9, v10, MEMORY[0x1E6976BF0]);
  sub_1D56160C8();
  if (!v1)
  {
    type metadata accessor for MusicSuggestedSongsEntry(0);
    v12[14] = 1;
    sub_1D5616088();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1D542BB18()
{
  result = qword_1EC7F6680;
  if (!qword_1EC7F6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6680);
  }

  return result;
}

uint64_t MusicSuggestedSongsEntry.hash(into:)(uint64_t a1)
{
  sub_1D5613838();
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v1, v2, MEMORY[0x1E6976BF8]);
  sub_1D5614CB8();
  type metadata accessor for MusicSuggestedSongsEntry(0);

  return sub_1D5614E28();
}

uint64_t MusicSuggestedSongsEntry.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5613838();
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v0, v1, MEMORY[0x1E6976BF8]);
  sub_1D5614CB8();
  type metadata accessor for MusicSuggestedSongsEntry(0);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t MusicSuggestedSongsEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v30 = v5;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6688, &qword_1D56641D8);
  OUTLINED_FUNCTION_4();
  v29 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for MusicSuggestedSongsEntry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542BB18();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v13;
  v14 = v30;
  v34 = 0;
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v15, v16, MEMORY[0x1E6976C08]);
  v17 = v31;
  sub_1D5615FD8();
  (*(v14 + 32))(v27, v7, v17);
  v33 = 1;
  v18 = sub_1D5615F98();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_3_175();
  v22(v21);
  v24 = v27;
  v23 = v28;
  v25 = &v27[*(v10 + 20)];
  *v25 = v18;
  v25[1] = v20;
  sub_1D542C048(v24, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D542C0AC(v24);
}

uint64_t sub_1D542BFB4(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5613838();
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v2, v3, MEMORY[0x1E6976BF8]);
  sub_1D5614CB8();
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D542C048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedSongsEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542C0AC(uint64_t a1)
{
  v2 = type metadata accessor for MusicSuggestedSongsEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D542C10C()
{
  result = qword_1EC7F6690;
  if (!qword_1EC7F6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6690);
  }

  return result;
}

uint64_t sub_1D542C1A8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D542C218(uint64_t a1)
{
  result = sub_1D5613838();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_1D542C29C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D542C37C()
{
  result = qword_1EC7F66B0;
  if (!qword_1EC7F66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F66B0);
  }

  return result;
}

unint64_t sub_1D542C3D4()
{
  result = qword_1EC7F66B8;
  if (!qword_1EC7F66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F66B8);
  }

  return result;
}