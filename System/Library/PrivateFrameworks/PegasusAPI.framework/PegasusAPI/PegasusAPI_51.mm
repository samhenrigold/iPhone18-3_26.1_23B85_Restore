uint64_t Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_71();
  v6 = sub_1B8CD2BE8(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B91F77E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC89D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91F7860(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC88D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91F78D0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC88D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams.Coordinate);

  return sub_1B964C5D0();
}

uint64_t sub_1B91F7968()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8648);
  __swift_project_value_buffer(v0, qword_1EBAC8648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B9656D00;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "item_source";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "item_destination";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "language";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "show_directions";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "show_traffic";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "direction_type";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "search_items";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_search_along_route";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "is_chain_result_set";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "should_suppress_navigation";
  *(v25 + 1) = 26;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "region_of_interest_radius_in_miles";
  *(v27 + 1) = 34;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "avoid_tolls";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "avoid_highways";
  *(v31 + 1) = 14;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "waypoints";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B91F7E38()
{
  OUTLINED_FUNCTION_33_13();
  result = sub_1B91F7EC8();
  qword_1EBAC8660 = result;
  return result;
}

uint64_t sub_1B91F7EC8()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemSource;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemDestination, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__language);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showDirections) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showTraffic) = 0;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__directionType;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__searchItems;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isSearchAlongRoute) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isChainResultSet) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__shouldSuppressNavigation) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidTolls) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidHighways) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints) = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t sub_1B91F7FF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8778, &qword_1B96A62A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8770, &qword_1B96A62A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemSource;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemDestination, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__language);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v39 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showDirections;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showDirections) = 0;
  v40 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showTraffic;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showTraffic) = 0;
  v9 = v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__directionType;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__searchItems;
  v41 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__searchItems;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v42 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isSearchAlongRoute;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isSearchAlongRoute) = 0;
  v43 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isChainResultSet;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isChainResultSet) = 0;
  v44 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__shouldSuppressNavigation;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__shouldSuppressNavigation) = 0;
  v46 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles) = 0;
  v47 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidTolls;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidTolls) = 0;
  v48 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidHighways;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidHighways) = 0;
  v49 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v12 = (a1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__language);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  swift_beginAccess();
  *v8 = v14;
  v8[1] = v13;

  v15 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showDirections;
  swift_beginAccess();
  LOBYTE(v15) = *(a1 + v15);
  v16 = v39;
  swift_beginAccess();
  *(v1 + v16) = v15;
  v17 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showTraffic;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + v17);
  v18 = v40;
  swift_beginAccess();
  *(v1 + v18) = v17;
  v19 = (a1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__directionType);
  swift_beginAccess();
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  swift_beginAccess();
  *v9 = v20;
  *(v9 + 8) = v19;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isSearchAlongRoute;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + v21);
  v22 = v42;
  swift_beginAccess();
  *(v1 + v22) = v21;
  v23 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isChainResultSet;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v43;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__shouldSuppressNavigation;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + v25);
  v26 = v44;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles;
  swift_beginAccess();
  v28 = *(a1 + v27);
  v29 = v46;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidTolls;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v47;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidHighways;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + v32);
  v33 = v48;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints;
  swift_beginAccess();
  v35 = *(a1 + v34);

  v36 = v49;
  swift_beginAccess();
  *(v1 + v36) = v35;

  return v1;
}

uint64_t sub_1B91F862C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemSource, &qword_1EBAC8770, &qword_1B96A62A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemDestination, &qword_1EBAC8770, &qword_1B96A62A0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__searchItems, &qword_1EBAC8778, &qword_1B96A62A8);

  return v0;
}

uint64_t sub_1B91F86D8()
{
  v0 = sub_1B91F862C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.decodeMessage<A>(decoder:)()
{
  v1 = OUTLINED_FUNCTION_118_1();
  v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams._StorageClass(0);
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v0 + v2) = sub_1B91F7FF8(v3);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B91F87B4(v4, v5, v6, v7);
}

uint64_t sub_1B91F87B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_1B91F89E8();
        break;
      case 3:
        sub_1B91F8A98(a2, a1);
        break;
      case 4:
      case 5:
      case 8:
      case 9:
      case 10:
      case 12:
      case 13:
        sub_1B91F8D28();
        break;
      case 6:
        sub_1B91F8B24(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B91F8BC0(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B91F8C9C(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B91F8D94(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91F89E8()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  OUTLINED_FUNCTION_8_33();
  sub_1B8CD2BE8(v0, v1, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);
  OUTLINED_FUNCTION_153_1();
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91F8A98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B91F8B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B920007C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91F8BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams(0);
  sub_1B8CD2BE8(&qword_1EBAC8950, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91F8C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C510();
  return swift_endAccess();
}

uint64_t sub_1B91F8D28()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_12();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B91F8D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  sub_1B8CD2BE8(&qword_1EBAC87B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91F8EB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91F8F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v44 = a3;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8778, &qword_1B96A62A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = v37 - v6;
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams(0);
  MEMORY[0x1EEE9AC00](v38);
  v37[1] = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8770, &qword_1B96A62A0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v37 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v39 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  v41 = a1;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC8770, &qword_1B96A62A0);
    v17 = v43;
  }

  else
  {
    sub_1B91FA3D0();
    sub_1B8CD2BE8(&qword_1EBAC87B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);
    v18 = v43;
    sub_1B964C740();
    v17 = v18;
    if (v18)
    {
      return sub_1B91FA498();
    }

    sub_1B91FA498();
  }

  v19 = v41;
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    sub_1B8D9207C(v11, &qword_1EBAC8770, &qword_1B96A62A0);
    goto LABEL_10;
  }

  sub_1B91FA3D0();
  sub_1B8CD2BE8(&qword_1EBAC87B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);
  sub_1B964C740();
  if (v17)
  {
    return sub_1B91FA498();
  }

  sub_1B91FA498();
LABEL_10:
  v21 = (v19 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__language);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v40;
  if (!v24 || (, sub_1B964C700(), result = , !v17))
  {
    v26 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showDirections;
    swift_beginAccess();
    if (*(v19 + v26) != 1 || (result = sub_1B964C670(), !v17))
    {
      v27 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showTraffic;
      swift_beginAccess();
      if (*(v19 + v27) != 1 || (result = sub_1B964C670(), !v17))
      {
        v28 = v19 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__directionType;
        swift_beginAccess();
        if (!*v28 || (v29 = *(v28 + 8), v45 = *v28, v46 = v29, sub_1B920007C(), result = sub_1B964C680(), !v17))
        {
          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v25, 1, v38) == 1)
          {
            sub_1B8D9207C(v25, &qword_1EBAC8778, &qword_1B96A62A8);
          }

          else
          {
            sub_1B91FA3D0();
            sub_1B8CD2BE8(&qword_1EBAC8950, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams);
            sub_1B964C740();
            result = sub_1B91FA498();
            if (v17)
            {
              return result;
            }
          }

          v30 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isSearchAlongRoute;
          swift_beginAccess();
          if (*(v19 + v30) != 1 || (result = sub_1B964C670(), !v17))
          {
            v31 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isChainResultSet;
            swift_beginAccess();
            if (*(v19 + v31) != 1 || (result = sub_1B964C670(), !v17))
            {
              v32 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__shouldSuppressNavigation;
              swift_beginAccess();
              if (*(v19 + v32) != 1 || (result = sub_1B964C670(), !v17))
              {
                v33 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles;
                swift_beginAccess();
                if (*(v19 + v33) == 0.0 || (result = sub_1B964C6F0(), !v17))
                {
                  v34 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidTolls;
                  swift_beginAccess();
                  if (*(v19 + v34) != 1 || (result = sub_1B964C670(), !v17))
                  {
                    v35 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidHighways;
                    swift_beginAccess();
                    if (*(v19 + v35) != 1 || (result = sub_1B964C670(), !v17))
                    {
                      v36 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints;
                      result = swift_beginAccess();
                      if (*(*(v19 + v36) + 16))
                      {
                        sub_1B8CD2BE8(&qword_1EBAC87B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);

                        sub_1B964C730();
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

  return result;
}

uint64_t sub_1B91F97F4(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v78 = (v5 - v4);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC89F8, &qword_1B96A7D80);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8778, &qword_1B96A62A8);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v79 = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v77 - v12;
  v90 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v85 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8A00, &qword_1B96A7D88);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44_0();
  v88 = v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8770, &qword_1B96A62A0);
  v23 = OUTLINED_FUNCTION_183(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44_0();
  v84 = v24;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  v87 = &v77 - v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v77 - v28;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v77 - v30;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemSource, v119);
  v32 = a1;
  sub_1B8D92024();
  v33 = v91;
  OUTLINED_FUNCTION_521(v91 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemSource, v118);
  v86 = v16;
  v34 = *(v16 + 48);
  sub_1B8D92024();
  v35 = v33;
  sub_1B8D92024();
  OUTLINED_FUNCTION_110(v21, 1);
  if (v37)
  {

    sub_1B8D9207C(v31, &qword_1EBAC8770, &qword_1B96A62A0);
    OUTLINED_FUNCTION_110(&v21[v34], 1);
    v36 = v32;
    if (v37)
    {
      sub_1B8D9207C(v21, &qword_1EBAC8770, &qword_1B96A62A0);
      goto LABEL_11;
    }

LABEL_9:
    v38 = &qword_1EBAC8A00;
    v39 = &qword_1B96A7D88;
    v40 = v21;
LABEL_20:
    sub_1B8D9207C(v40, v38, v39);
    goto LABEL_21;
  }

  v36 = v32;
  sub_1B8D92024();
  OUTLINED_FUNCTION_110(&v21[v34], 1);
  if (v37)
  {

    sub_1B8D9207C(v31, &qword_1EBAC8770, &qword_1B96A62A0);
    OUTLINED_FUNCTION_77_8();
    sub_1B91FA498();
    goto LABEL_9;
  }

  sub_1B91FA3D0();

  static Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.== infix(_:_:)();
  v42 = v41;
  sub_1B91FA498();
  sub_1B8D9207C(v31, &qword_1EBAC8770, &qword_1B96A62A0);
  sub_1B91FA498();
  sub_1B8D9207C(v21, &qword_1EBAC8770, &qword_1B96A62A0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemDestination, v117);
  v43 = v87;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v33 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__itemDestination, v116);
  v44 = *(v86 + 48);
  v45 = v88;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_110(v45, 1);
  if (v37)
  {
    sub_1B8D9207C(v43, &qword_1EBAC8770, &qword_1B96A62A0);
    OUTLINED_FUNCTION_57(v45 + v44);
    if (v37)
    {
      sub_1B8D9207C(v45, &qword_1EBAC8770, &qword_1B96A62A0);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v45 + v44);
  if (v46)
  {
    sub_1B8D9207C(v43, &qword_1EBAC8770, &qword_1B96A62A0);
    OUTLINED_FUNCTION_77_8();
    sub_1B91FA498();
LABEL_19:
    v38 = &qword_1EBAC8A00;
    v39 = &qword_1B96A7D88;
    v40 = v45;
    goto LABEL_20;
  }

  sub_1B91FA3D0();
  static Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.== infix(_:_:)();
  v50 = v49;
  sub_1B91FA498();
  sub_1B8D9207C(v43, &qword_1EBAC8770, &qword_1B96A62A0);
  OUTLINED_FUNCTION_461();
  sub_1B91FA498();
  sub_1B8D9207C(v45, &qword_1EBAC8770, &qword_1B96A62A0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v51 = (v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__language);
  OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__language, v115);
  v52 = *v51;
  v53 = v51[1];
  v54 = (v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__language);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__language, v114);
  v55 = v52 == *v54 && v53 == v54[1];
  if (!v55 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showDirections, &v113);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showDirections, &v112);
  OUTLINED_FUNCTION_855();
  if (!v37)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showTraffic, &v111);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__showTraffic, &v110);
  OUTLINED_FUNCTION_855();
  if (!v37)
  {
    goto LABEL_21;
  }

  v56 = v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__directionType;
  OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__directionType, &v109);
  v57 = *v56;
  v58 = *(v56 + 8);
  v59 = (v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__directionType);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__directionType, &v108);
  if (!sub_1B8D92198(v57, v58, *v59))
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__searchItems, &v107);
  v60 = v81;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__searchItems, &v106);
  v61 = *(v80 + 48);
  v62 = v83;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v62, 1, v82) == 1)
  {
    sub_1B8D9207C(v60, &qword_1EBAC8778, &qword_1B96A62A8);
    OUTLINED_FUNCTION_57(v62 + v61);
    if (!v37)
    {
      goto LABEL_53;
    }

    sub_1B8D9207C(v62, &qword_1EBAC8778, &qword_1B96A62A8);
  }

  else
  {
    v71 = v79;
    sub_1B8D92024();
    OUTLINED_FUNCTION_57(v62 + v61);
    if (v37)
    {
      sub_1B8D9207C(v60, &qword_1EBAC8778, &qword_1B96A62A8);
      sub_1B91FA498();
LABEL_53:
      v38 = &qword_1EBAC89F8;
      v39 = &qword_1B96A7D80;
      v40 = v62;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_10_29();
    v72 = v78;
    sub_1B91FA3D0();
    sub_1B8D63B18(*v71, *v72);
    if ((v73 & 1) == 0 || v71[1] != v72[1])
    {
      sub_1B8D9207C(v60, &qword_1EBAC8778, &qword_1B96A62A8);
      sub_1B91FA498();
      sub_1B91FA498();
      v40 = v62;
      v38 = &qword_1EBAC8778;
      v39 = &qword_1B96A62A8;
      goto LABEL_20;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_71();
    sub_1B8CD2BE8(v74, v75, MEMORY[0x1E69AAC10]);
    v76 = sub_1B964C850();
    sub_1B8D9207C(v60, &qword_1EBAC8778, &qword_1B96A62A8);
    sub_1B91FA498();
    sub_1B91FA498();
    sub_1B8D9207C(v62, &qword_1EBAC8778, &qword_1B96A62A8);
    if ((v76 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isSearchAlongRoute, &v105);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isSearchAlongRoute, &v104);
  OUTLINED_FUNCTION_855();
  if (v37)
  {
    OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isChainResultSet, &v103);
    OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__isChainResultSet, &v102);
    OUTLINED_FUNCTION_855();
    if (v37)
    {
      OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__shouldSuppressNavigation, &v101);
      OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__shouldSuppressNavigation, &v100);
      OUTLINED_FUNCTION_855();
      if (v37)
      {
        v63 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles;
        OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles, &v99);
        v64 = *(v36 + v63);
        v65 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles;
        OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__regionOfInterestRadiusInMiles, &v98);
        if (v64 == *(v35 + v65))
        {
          OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidTolls, &v97);
          OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidTolls, &v96);
          OUTLINED_FUNCTION_855();
          if (v37)
          {
            OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidHighways, &v95);
            OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__avoidHighways, &v94);
            OUTLINED_FUNCTION_855();
            if (v37)
            {
              v66 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints;
              OUTLINED_FUNCTION_521(v36 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints, &v93);
              v67 = *(v36 + v66);
              v68 = OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints;
              OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI52Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParamsP33_1A8030B40100AE04F922106B4CC325FE13_StorageClass__waypoints, &v92);
              v69 = *(v35 + v68);

              sub_1B8D63B18(v67, v69);
              v47 = v70;

              return v47 & 1;
            }
          }
        }
      }
    }
  }

LABEL_21:

  v47 = 0;
  return v47 & 1;
}

uint64_t sub_1B91FA3D0()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B91FA444()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B91FA498()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1B91FA52C()
{
  result = qword_1EBAC8780;
  if (!qword_1EBAC8780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, &type metadata for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, v0, v1);
    atomic_store(result, &qword_1EBAC8780);
  }

  return result;
}

uint64_t sub_1B91FA61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC89D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FA69C(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC84F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FA70C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC84F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams);

  return sub_1B964C5D0();
}

uint64_t sub_1B91FA78C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8668);
  __swift_project_value_buffer(v0, qword_1EBAC8668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DIRECTION_TYPE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DIRECTION_TYPE_CAR";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DIRECTION_TYPE_TRANSIT";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DIRECTION_TYPE_WALKING";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DIRECTION_TYPE_CYCLING";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91FAA48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8680);
  __swift_project_value_buffer(v0, qword_1EBAC8680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "place_data";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ext_session_guid";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ext_session_guid_created_timestamp";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C470();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v1 = OUTLINED_FUNCTION_616();
  if (sub_1B8D99EA8(v1, v2) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B91FAE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC89C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FAED0(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC8518, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FAF40(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC8518, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams);

  return sub_1B964C5D0();
}

uint64_t sub_1B91FAFD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8698);
  __swift_project_value_buffer(v0, qword_1EBAC8698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "search_region_center";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "objects";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "response_view_id";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MapItemSnippet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B91FD748();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91FB28C(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B91FB28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  sub_1B8CD2BE8(&qword_1EBAC8788, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_MapItemSnippet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_110_5();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet(0);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAB9018, &unk_1B96A6290);
  }

  else
  {
    OUTLINED_FUNCTION_79_8();
    sub_1B91FA3D0();
    OUTLINED_FUNCTION_24_20();
    sub_1B8CD2BE8(v10, v11, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    result = sub_1B91FA498();
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0), OUTLINED_FUNCTION_8_33(), sub_1B8CD2BE8(v13, v14, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_153_1(), result = sub_1B964C730(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v15)
    {
      return sub_1B964C290();
    }

    OUTLINED_FUNCTION_153_1();
    result = sub_1B964C700();
    if (!v4)
    {
      return sub_1B964C290();
    }
  }

  return result;
}

void static Apple_Parsec_Siri_V2alpha_MapItemSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9020, &unk_1B964D810) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet(0);
  v10 = *(v8 + 56);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v0);
  if (!v11)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v10);
    if (!v11)
    {
      OUTLINED_FUNCTION_1_60();
      sub_1B91FA3D0();
      OUTLINED_FUNCTION_853();
      if (v14 || (, , OUTLINED_FUNCTION_616(), v15 = sub_1B91F6CF8(), , , v15))
      {
        v16 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_71();
        sub_1B8CD2BE8(v17, v18, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_147_6();
        OUTLINED_FUNCTION_23_14();
        sub_1B91FA498();
        OUTLINED_FUNCTION_686();
        sub_1B91FA498();
        sub_1B8D9207C(v0, &qword_1EBAB9018, &unk_1B96A6290);
        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_26_19();
      sub_1B91FA498();
      sub_1B91FA498();
      v12 = &qword_1EBAB9018;
      v13 = &unk_1B96A6290;
LABEL_10:
      sub_1B8D9207C(v0, v12, v13);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_25_15();
    sub_1B91FA498();
LABEL_9:
    v12 = &qword_1EBAB9020;
    v13 = &unk_1B964D810;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v0 + v10);
  if (!v11)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBAB9018, &unk_1B96A6290);
LABEL_14:
  sub_1B8D63B18(*v4, *v2);
  if (v19)
  {
    v20 = v4[1] == v2[1] && v4[2] == v2[2];
    if (v20 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_71();
      sub_1B8CD2BE8(v21, v22, MEMORY[0x1E69AAC10]);
      sub_1B964C850();
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91FB950(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC89C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FB9D0(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC8908, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FBA40(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC8908, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B91FBAD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC86B0);
  __swift_project_value_buffer(v0, qword_1EBAC86B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phone_number";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B91FBE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC89B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FBED8(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC84F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FBF48(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC84F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams);

  return sub_1B964C5D0();
}

uint64_t sub_1B91FBFE0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC86C8);
  __swift_project_value_buffer(v0, qword_1EBAC86C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "detail_type";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "spoken_name";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "place_data";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "direction_role";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91FC390(v3, v4, v5, v6);
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91FC444(v7, v8, v9, v10);
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 6:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B91FC4AC(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91FC390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  sub_1B8CD2BE8(&qword_1EBAC8788, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_110_5();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAB9018, &unk_1B96A6290);
  }

  else
  {
    OUTLINED_FUNCTION_79_8();
    sub_1B91FA3D0();
    OUTLINED_FUNCTION_24_20();
    sub_1B8CD2BE8(v10, v11, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    result = sub_1B91FA498();
    if (v4)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v13 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v4))
  {
    if (!v3[2] || (sub_1B91FE294(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v4))
    {
      OUTLINED_FUNCTION_1();
      if (!v14 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v4))
      {
        if (sub_1B8D99EA8(v3[6], v3[7]) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v4))
        {
          if (!v3[8])
          {
            return OUTLINED_FUNCTION_8_1();
          }

          sub_1B91FE2E8();
          OUTLINED_FUNCTION_79_0();
          result = sub_1B964C680();
          if (!v4)
          {
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

void static Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9020, &unk_1B964D810) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  v8 = *(v6 + 56);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v9)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v8);
    if (!v9)
    {
      OUTLINED_FUNCTION_1_60();
      sub_1B91FA3D0();
      OUTLINED_FUNCTION_853();
      if (v12 || (, , OUTLINED_FUNCTION_616(), v13 = sub_1B91F6CF8(), , , v13))
      {
        v14 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_71();
        sub_1B8CD2BE8(v15, v16, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_147_6();
        OUTLINED_FUNCTION_23_14();
        sub_1B91FA498();
        OUTLINED_FUNCTION_686();
        sub_1B91FA498();
        sub_1B8D9207C(v2, &qword_1EBAB9018, &unk_1B96A6290);
        if ((v14 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_26_19();
      sub_1B91FA498();
      sub_1B91FA498();
      v10 = &qword_1EBAB9018;
      v11 = &unk_1B96A6290;
LABEL_10:
      sub_1B8D9207C(v2, v10, v11);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_25_15();
    sub_1B91FA498();
LABEL_9:
    v10 = &qword_1EBAB9020;
    v11 = &unk_1B964D810;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v2 + v8);
  if (!v9)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9018, &unk_1B96A6290);
LABEL_15:
  v17 = *v1 == *v0 && *(v1 + 8) == v0[1];
  if (v17 || (sub_1B964C9F0()) && sub_1B8D92198(*(v1 + 16), *(v1 + 24), v0[2]))
  {
    v18 = *(v1 + 32) == v0[4] && *(v1 + 40) == v0[5];
    if (v18 || (sub_1B964C9F0()) && (MEMORY[0x1BFADC060](*(v1 + 48), *(v1 + 56), v0[6], v0[7]) & 1) != 0 && sub_1B8D92198(*(v1 + 64), *(v1 + 72), v0[8]))
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_71();
      v21 = sub_1B8CD2BE8(v19, v20, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_199_0(v21);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91FCBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC89B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FCC2C(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC87B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FCC9C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC87B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);

  return sub_1B964C5D0();
}

uint64_t sub_1B91FCD1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC86E0);
  __swift_project_value_buffer(v0, qword_1EBAC86E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DETAIL_TYPE_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CURRENT_LOCATION";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BUSINESS_ITEM";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PERSON_ITEM";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ADDRESS_ITEM";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "HOME_ITEM";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PARKING_LOCATION";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91FD03C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC86F8);
  __swift_project_value_buffer(v0, qword_1EBAC86F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ROLE_UNKNOWN";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ROLE_FROM";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ROLE_TO";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_182();
    result = sub_1B964C3C0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1B91FD370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC89A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FD3F0(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC8500, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FD460(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC8500, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS);

  return sub_1B964C5D0();
}

uint64_t sub_1B91FD4F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8728);
  __swift_project_value_buffer(v0, qword_1EBAC8728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain_objects";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selected_item_index";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B91FD748();
    }
  }

  return result;
}

uint64_t sub_1B91FD748()
{
  OUTLINED_FUNCTION_147_1();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0);
  OUTLINED_FUNCTION_8_33();
  sub_1B8CD2BE8(v0, v1, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams);
  OUTLINED_FUNCTION_153_1();
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(0), OUTLINED_FUNCTION_8_33(), sub_1B8CD2BE8(v3, v4, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6D0(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D63B18(*v2, *v3);
  if ((v4 & 1) == 0 || *(v1 + 8) != *(v0 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_71();
  v7 = sub_1B8CD2BE8(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B91FD9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC89A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FDA4C(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC8950, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FDABC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC8950, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams);

  return sub_1B964C5D0();
}

uint64_t sub_1B91FDB54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8740);
  __swift_project_value_buffer(v0, qword_1EBAC8740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "item_index";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6D0(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B91FDE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC8998, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FDEC0(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC8508, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FDF30(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC8508, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams);

  return sub_1B964C5D0();
}

uint64_t sub_1B91FDFD4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_288();
  __swift_project_value_buffer(v4, v5);
  return sub_1B964C770();
}

uint64_t sub_1B91FE084(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2BE8(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91FE128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2BE8(&qword_1EBAC8990, type metadata accessor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91FE1A8(uint64_t a1)
{
  v2 = sub_1B8CD2BE8(&qword_1EBAC8510, type metadata accessor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91FE218(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2BE8(&qword_1EBAC8510, type metadata accessor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams);

  return sub_1B964C5D0();
}

unint64_t sub_1B91FE294()
{
  result = qword_1EBAC87D0;
  if (!qword_1EBAC87D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType, &type metadata for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType, v0, v1);
    atomic_store(result, &qword_1EBAC87D0);
  }

  return result;
}

unint64_t sub_1B91FE2E8()
{
  result = qword_1EBAC87D8;
  if (!qword_1EBAC87D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role, &type metadata for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role, v0, v1);
    atomic_store(result, &qword_1EBAC87D8);
  }

  return result;
}

unint64_t sub_1B91FE380()
{
  result = qword_1EBAC8808;
  if (!qword_1EBAC8808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, &type metadata for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, v0, v1);
    atomic_store(result, &qword_1EBAC8808);
  }

  return result;
}

unint64_t sub_1B91FE3D8()
{
  result = qword_1EBAC8810;
  if (!qword_1EBAC8810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, &type metadata for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, v0, v1);
    atomic_store(result, &qword_1EBAC8810);
  }

  return result;
}

unint64_t sub_1B91FE430()
{
  result = qword_1EBAC8818;
  if (!qword_1EBAC8818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, &type metadata for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, v0, v1);
    atomic_store(result, &qword_1EBAC8818);
  }

  return result;
}

unint64_t sub_1B91FE4B8()
{
  result = qword_1EBAC8830;
  if (!qword_1EBAC8830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType, &type metadata for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType, v0, v1);
    atomic_store(result, &qword_1EBAC8830);
  }

  return result;
}

unint64_t sub_1B91FE510()
{
  result = qword_1EBAC8838;
  if (!qword_1EBAC8838)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType, &type metadata for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType, v0, v1);
    atomic_store(result, &qword_1EBAC8838);
  }

  return result;
}

unint64_t sub_1B91FE568()
{
  result = qword_1EBAC8840;
  if (!qword_1EBAC8840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType, &type metadata for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType, v0, v1);
    atomic_store(result, &qword_1EBAC8840);
  }

  return result;
}

unint64_t sub_1B91FE5F0()
{
  result = qword_1EBAC8858;
  if (!qword_1EBAC8858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType, &type metadata for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType, v0, v1);
    atomic_store(result, &qword_1EBAC8858);
  }

  return result;
}

unint64_t sub_1B91FE648()
{
  result = qword_1EBAC8860;
  if (!qword_1EBAC8860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType, &type metadata for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType, v0, v1);
    atomic_store(result, &qword_1EBAC8860);
  }

  return result;
}

unint64_t sub_1B91FE6A0()
{
  result = qword_1EBAC8868;
  if (!qword_1EBAC8868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType, &type metadata for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType, v0, v1);
    atomic_store(result, &qword_1EBAC8868);
  }

  return result;
}

unint64_t sub_1B91FE6F8()
{
  result = qword_1EBAC8870;
  if (!qword_1EBAC8870)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role, &type metadata for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role, v0, v1);
    atomic_store(result, &qword_1EBAC8870);
  }

  return result;
}

unint64_t sub_1B91FE750()
{
  result = qword_1EBAC8878;
  if (!qword_1EBAC8878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role, &type metadata for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role, v0, v1);
    atomic_store(result, &qword_1EBAC8878);
  }

  return result;
}

unint64_t sub_1B91FE7A8()
{
  result = qword_1EBAC8880;
  if (!qword_1EBAC8880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role, &type metadata for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role, v0, v1);
    atomic_store(result, &qword_1EBAC8880);
  }

  return result;
}

void sub_1B91FF604(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B91FFA98(319, &qword_1ED9EB878, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_108Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_81_0();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_1B91FF824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B91FF8E0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91FF994(uint64_t a1)
{
  sub_1B91FFA98(319, &qword_1ED9CF5B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B91FFA98(319, &qword_1ED9EB878, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B91FFA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B91FFB30()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91FFBC4(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B91FFA98(319, &qword_1ED9EB878, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91FFD1C(uint64_t a1)
{
  sub_1B91FFA98(319, &qword_1ED9CF5B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B91FFE00(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B91FFEA4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91FFF10(uint64_t a1)
{
  sub_1B91FFA98(319, &qword_1ED9D0ED8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B91FFA98(319, &qword_1ED9CFDD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B920007C()
{
  result = qword_1EBAC89F0;
  if (!qword_1EBAC89F0)
  {
    result = swift_getWitnessTable("IN~5T%\t", &type metadata for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType, v0, v1);
    atomic_store(result, &qword_1EBAC89F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_44(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_44(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_36(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams(0);
  *(a1 + 80) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_13()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_11()
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  __swift_getEnumTagSinglePayload(v2, 1, v3);

  return sub_1B8D9207C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_74_13(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_81_8()
{

  return sub_1B91FA3D0();
}

uint64_t OUTLINED_FUNCTION_101_5()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_110_5()
{

  return type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
}

void OUTLINED_FUNCTION_126_2()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_130_4()
{

  return type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams._StorageClass();
}

uint64_t OUTLINED_FUNCTION_132_6(uint64_t a1, __n128 a2)
{
  v3[3] = a2;
  v3[4].n128_u64[0] = 0;
  v3[4].n128_u8[8] = v2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_138_4()
{

  return sub_1B91FA3D0();
}

uint64_t OUTLINED_FUNCTION_147_6()
{

  return sub_1B964C850();
}

unint64_t Apple_Parsec_Siri_V2alpha_SiriResponseMode.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B92005F8@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_SiriResponseMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B920062C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9200C48();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_SiriResponseMode.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC8A08 = a1;
}

uint64_t sub_1B9200774@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriResponseMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B920079C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8A10);
  __swift_project_value_buffer(v0, qword_1EBAC8A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SIRI_RESPONSE_MODE_UNKNOWN";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_RESPONSE_MODE_DISPLAY_FORWARD";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SIRI_RESPONSE_MODE_VOICE_ONLY";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SIRI_RESPONSE_MODE_VOICE_FORWARD";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SIRI_RESPONSE_MODE_DISPLAY_ONLY";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_SiriResponseMode._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB79F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC8A10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9200AC8()
{
  result = qword_1EBAC8A28;
  if (!qword_1EBAC8A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriResponseMode, &type metadata for Apple_Parsec_Siri_V2alpha_SiriResponseMode, v0, v1);
    atomic_store(result, &qword_1EBAC8A28);
  }

  return result;
}

unint64_t sub_1B9200B20()
{
  result = qword_1EBAC8A30;
  if (!qword_1EBAC8A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriResponseMode, &type metadata for Apple_Parsec_Siri_V2alpha_SiriResponseMode, v0, v1);
    atomic_store(result, &qword_1EBAC8A30);
  }

  return result;
}

unint64_t sub_1B9200B78()
{
  result = qword_1EBAC8A38;
  if (!qword_1EBAC8A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriResponseMode, &type metadata for Apple_Parsec_Siri_V2alpha_SiriResponseMode, v0, v1);
    atomic_store(result, &qword_1EBAC8A38);
  }

  return result;
}

unint64_t sub_1B9200BD0()
{
  result = qword_1EBAC8A40;
  if (!qword_1EBAC8A40)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC8A48, &qword_1B96A7E78);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC8A40);
  }

  return result;
}

unint64_t sub_1B9200C48()
{
  result = qword_1EBAC8A50;
  if (!qword_1EBAC8A50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriResponseMode, &type metadata for Apple_Parsec_Siri_V2alpha_SiriResponseMode, v0, v1);
    atomic_store(result, &qword_1EBAC8A50);
  }

  return result;
}

void Apple_Parsec_Siri_V2alpha_MultiUserContext.userIdentificationClassification.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.userIdentificationClassification.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.sharedUserID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.sharedUserID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_MultiUserContext.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(v0);
  return nullsub_1;
}

uint64_t sub_1B9200F14@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9200F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9201878();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9201080@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(v0);
  return nullsub_1;
}

void Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 3:
      a2 = 1;
      break;
    case 5:
      a2 = 2;
      break;
    case 6:
      a2 = 3;
      break;
    case 7:
      a2 = 4;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96A85C8[result];
  }

  return result;
}

uint64_t sub_1B92012B4@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92012E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9202274();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B920143C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9201480()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8A68);
  __swift_project_value_buffer(v0, qword_1EBAC8A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_identification_classification";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_post_disambiguation";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "shared_user_id";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_288();
        sub_1B920173C(v5, v6, v2, v1);
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_29_23();
  if (!v3 || (v14 = v3, v4 = sub_1B9201878(), result = OUTLINED_FUNCTION_3_45(v4, v5, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, v4, v6, v7, v8, v9, v14), (v0 = v1) == 0))
  {
    if (*(v2 + 9) != 1 || (v1 = v0, result = sub_1B964C670(), !v0))
    {
      v11 = OUTLINED_FUNCTION_4_37();
      if (!v13 || (result = OUTLINED_FUNCTION_3(v11, v12, 3), !v1))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

unint64_t sub_1B9201878()
{
  result = qword_1EBAC8AC8;
  if (!qword_1EBAC8AC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, v0, v1);
    atomic_store(result, &qword_1EBAC8AC8);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_MultiUserContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v2 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v2 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v2 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v2)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v2 != v3)
  {
    return 0;
  }

LABEL_6:
  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_72();
  v8 = sub_1B8CD2C30(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B9201A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C30(&qword_1EBAC8B70, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9201B18(uint64_t a1)
{
  v2 = sub_1B8CD2C30(&qword_1EBAC8B40, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9201B88(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2C30(&qword_1EBAC8B40, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9201C08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8A80);
  __swift_project_value_buffer(v0, qword_1EBAC8A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "USER_IDENTITY_CLASSIFICATION_UNKNOWN";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONFIDENT";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KNOWN";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UNSURE_1";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "UNSURE_N";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "UNKNOWN_USER";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9201F08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8A98);
  __swift_project_value_buffer(v0, qword_1EBAC8A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_identification_type";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_288();
      sub_1B9202168(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_29_23();
  if (!v1 || (v12 = v1, v2 = sub_1B9202274(), result = OUTLINED_FUNCTION_3_45(v2, v3, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, v2, v4, v5, v6, v7, v12), !v0))
  {
    v9 = OUTLINED_FUNCTION_4_37();
    if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 2), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

unint64_t sub_1B9202274()
{
  result = qword_1EBAC8AD8;
  if (!qword_1EBAC8AD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, v0, v1);
    atomic_store(result, &qword_1EBAC8AD8);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1B96A85C8[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    switch(v3)
    {
      case 1:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_8;
      case 2:
        if (v2 != 5)
        {
          return 0;
        }

        goto LABEL_8;
      case 3:
        if (v2 != 6)
        {
          return 0;
        }

        goto LABEL_8;
      case 4:
        if (v2 != 7)
        {
          return 0;
        }

        goto LABEL_8;
      default:
        if (!v2)
        {
          goto LABEL_8;
        }

        return 0;
    }
  }

  if (v2 == v3)
  {
LABEL_8:
    v4 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v4 || (sub_1B964C9F0() & 1) != 0)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_72();
      v7 = sub_1B8CD2C30(v5, v6, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v7) & 1;
    }
  }

  return 0;
}

uint64_t sub_1B920242C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2C30(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9202510(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C30(&qword_1EBAC8B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext, "A.~5,\v\t");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9202590(uint64_t a1)
{
  v2 = sub_1B8CD2C30(&qword_1EBAC8B58, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9202600(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2C30(&qword_1EBAC8B58, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9202680()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8AB0);
  __swift_project_value_buffer(v0, qword_1EBAC8AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "USER_IDENTIFICATION_TYPE_UNKNOWN";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "ASK_ONLY";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "NONE";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "PERSONAL_NONE";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "REQUIRE";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B9202928()
{
  result = qword_1EBAC8AE8;
  if (!qword_1EBAC8AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, v0, v1);
    atomic_store(result, &qword_1EBAC8AE8);
  }

  return result;
}

unint64_t sub_1B9202980()
{
  result = qword_1EBAC8AF0;
  if (!qword_1EBAC8AF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, v0, v1);
    atomic_store(result, &qword_1EBAC8AF0);
  }

  return result;
}

unint64_t sub_1B92029D8()
{
  result = qword_1EBAC8AF8;
  if (!qword_1EBAC8AF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification, v0, v1);
    atomic_store(result, &qword_1EBAC8AF8);
  }

  return result;
}

unint64_t sub_1B9202A60()
{
  result = qword_1EBAC8B10;
  if (!qword_1EBAC8B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, v0, v1);
    atomic_store(result, &qword_1EBAC8B10);
  }

  return result;
}

unint64_t sub_1B9202AB8()
{
  result = qword_1EBAC8B18;
  if (!qword_1EBAC8B18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, v0, v1);
    atomic_store(result, &qword_1EBAC8B18);
  }

  return result;
}

unint64_t sub_1B9202B10()
{
  result = qword_1EBAC8B20;
  if (!qword_1EBAC8B20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, &type metadata for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType, v0, v1);
    atomic_store(result, &qword_1EBAC8B20);
  }

  return result;
}

uint64_t sub_1B9202E00(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9202ECC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1B964C680();
}

uint64_t OUTLINED_FUNCTION_5_32()
{
  v1 = *(v0 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void Apple_Parsec_Siri_V2alpha_SuggestionIntent.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 1000:
      a2 = 1;
      break;
    case 1001:
      a2 = 2;
      break;
    case 1002:
      a2 = 3;
      break;
    case 1003:
    case 1004:
    case 1005:
    case 1006:
    case 1007:
    case 1008:
    case 1009:
      break;
    case 1010:
      a2 = 4;
      break;
    case 1011:
      a2 = 5;
      break;
    case 1012:
      a2 = 6;
      break;
    case 1013:
      a2 = 7;
      break;
    case 1014:
      a2 = 8;
      break;
    case 1015:
      a2 = 9;
      break;
    default:
      switch(a2)
      {
        case 3000:
          a2 = 11;
          break;
        case 3001:
          a2 = 12;
          break;
        case 3002:
          a2 = 13;
          break;
        case 3003:
          a2 = 14;
          break;
        case 3004:
          a2 = 15;
          break;
        default:
          if (a2)
          {
            if (a2 == 2000)
            {
              a2 = 10;
            }

            else if (a2 == 4000)
            {
              a2 = 16;
            }
          }

          break;
      }

      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_SuggestionIntent.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96A9550[result];
  }

  return result;
}

uint64_t sub_1B9203164@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_SuggestionIntent.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9203198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92060B8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9203298@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SuggestionIntent.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.alternateQuerySuggestion.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C30, &qword_1B96A85F0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v5);
  OUTLINED_FUNCTION_115(*(v6 + 28));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC8C30, &qword_1B96A85F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_182();
    return sub_1B9203930();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.alternateQuerySuggestion.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC8C30, &qword_1B96A85F0);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.alternateQuerySuggestion.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC8C30, &qword_1B96A85F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.relatedQuestionSuggestion.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v5);
  OUTLINED_FUNCTION_115(*(v6 + 32));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC8C38, &qword_1B96A85F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_46();
    OUTLINED_FUNCTION_182();
    return sub_1B9203930();
  }

  return result;
}

uint64_t sub_1B92037B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9203AD4();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.relatedQuestionSuggestion.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_3_46();
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B92038C8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9203930()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.relatedQuestionSuggestion.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC8C38, &qword_1B96A85F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_46();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9203AD4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B9203B2C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

BOOL Apple_Parsec_Siri_V2alpha_ServerSuggestion.hasRelatedQuestionSuggestion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v3);
  OUTLINED_FUNCTION_115(*(v4 + 32));
  sub_1B8D92024();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  v6 = __swift_getEnumTagSinglePayload(v0, 1, v5) != 1;
  v7 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v7, v8, &qword_1B96A85F8);
  return v6;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ServerSuggestion.clearRelatedQuestionSuggestion()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAC8C38, &qword_1B96A85F8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.speak.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B9203EA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1B9203F5C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.init()()
{
  OUTLINED_FUNCTION_92_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.utterance.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  v16 = OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_42_11(v16);
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.utterance.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v3);
  OUTLINED_FUNCTION_115(*(SuggestionCandidate + 28));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_92_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    OUTLINED_FUNCTION_182();
    return sub_1B9203930();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.utterance.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v1);
  sub_1B8D9207C(v0 + *(SuggestionCandidate + 28), &qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_1_61();
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.utterance.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v14);
  OUTLINED_FUNCTION_64_0(*(SuggestionCandidate + 28));
  v16 = OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_42_11(v16);
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

BOOL sub_1B92045A4()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v1(0);
  sub_1B8D92024();
  v7 = v0(0);
  v8 = __swift_getEnumTagSinglePayload(v2, 1, v7) != 1;
  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v9, v10, v11);
  return v8;
}

uint64_t sub_1B920469C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B92047FC@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9204830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9209A34();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v2 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B9204974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion.candidates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B9204A08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1B9204A9C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9204B68(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = a1(v5);
  OUTLINED_FUNCTION_115(*(v6 + 24));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B9203930();
  }

  return result;
}

uint64_t sub_1B9204C9C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_1_61();
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.utterance.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  v16 = OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_42_11(v16);
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9204E1C()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = **v4;
  if (v10)
  {
    sub_1B9203AD4();
    sub_1B8D9207C(v9 + v5, v3, v2);
    sub_1B9203930();
    OUTLINED_FUNCTION_187_1();
    OUTLINED_FUNCTION_177_1();
    sub_1B9203B2C();
  }

  else
  {
    sub_1B8D9207C(v9 + v5, v0, v1);
    sub_1B9203930();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v11);
}

BOOL sub_1B9204F14(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_79();
  a1(0);
  sub_1B8D92024();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_1B8D9207C(v1, &qword_1EBAB9008, &qword_1B96A8600);
  return v6;
}

uint64_t sub_1B9204FFC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBAB9008, &qword_1B96A8600);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B92051F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4518);
  __swift_project_value_buffer(v0, qword_1EBAB4518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 0;
  *v4 = "SUGGESTION_INTENT_UNSPECIFIED";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 1000;
  *v8 = "SUGGESTION_INTENT_WEATHER_CURRENT_WEATHER";
  *(v8 + 8) = 41;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 1001;
  *v10 = "SUGGESTION_INTENT_WEATHER_WITH_LOCATION";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 1002;
  *v12 = "SUGGESTION_INTENT_WEATHER_THIS_WEEKEND";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 1010;
  *v14 = "SUGGESTION_INTENT_WEATHER_TEMPERATURE";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 1011;
  *v16 = "SUGGESTION_INTENT_WEATHER_WILL_RAIN";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 1012;
  *v18 = "SUGGESTION_INTENT_WEATHER_WILL_RAIN_STOP";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 1013;
  *v20 = "SUGGESTION_INTENT_WEATHER_AIR_QUALITY";
  *(v20 + 1) = 37;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 1014;
  *v22 = "SUGGESTION_INTENT_WEATHER_VISIBILITY";
  *(v22 + 1) = 36;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 1015;
  *v24 = "SUGGESTION_INTENT_WEATHER_WIND_CHILL";
  *(v24 + 1) = 36;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 2000;
  *v26 = "SUGGESTION_INTENT_CLOCK_WITH_LOCATION";
  *(v26 + 1) = 37;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 3000;
  *v28 = "SUGGESTION_INTENT_MATH_RESULT";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 3001;
  *v30 = "SUGGESTION_INTENT_MATH_DECIMAL_TO_FRACTION";
  *(v30 + 1) = 42;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 3002;
  *v32 = "SUGGESTION_INTENT_MATH_TIP_CALCULATION";
  *(v32 + 1) = 38;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 3003;
  *v34 = "SUGGESTION_INTENT_MATH_PYTHAGOREAN_THEOREM";
  *(v34 + 1) = 42;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 3004;
  *v36 = "SUGGESTION_INTENT_MATH_ARITHMETIC";
  *(v36 + 1) = 33;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 4000;
  *v38 = "SUGGESTION_INTENT_KG_SIMPLE_MATH_CONCEPT";
  *(v38 + 1) = 40;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B92057A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4540);
  __swift_project_value_buffer(v0, qword_1EBAB4540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "current_intent";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "candidates";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "alternate_query_suggestion";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "related_question_suggestion";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 11:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9205BF8(v11, v12, v13, v14);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9205AA4(v3, v4, v5, v6);
        break;
      case 10:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9205B44(v7, v8, v9, v10);
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8D15DE0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9205AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
  sub_1B920610C(&qword_1EBAC8C40, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);
  return sub_1B964C570();
}

uint64_t sub_1B9205B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  sub_1B920610C(&qword_1EBAC8C50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);
  return sub_1B964C580();
}

uint64_t sub_1B9205BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  sub_1B920610C(&qword_1EBAC8C48, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion, "Q!~5");
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_ServerSuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v18 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v20 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C30, &qword_1B96A85F0);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  Suggestion = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  if (!*v2 || (OUTLINED_FUNCTION_58_9(*v2), sub_1B92060B8(), v1 = v0, sub_1B964C680(), !v0))
  {
    v19 = v6;
    if (!*(v2[2] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0), sub_1B920610C(&qword_1EBAC8C40, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate), OUTLINED_FUNCTION_57_10(), sub_1B964C730(), !v1))
    {
      v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v13, 1, Suggestion) == 1)
      {
        sub_1B8D9207C(v13, &qword_1EBAC8C30, &qword_1B96A85F0);
      }

      else
      {
        v18 = v16;
        sub_1B9203930();
        sub_1B920610C(&qword_1EBAC8C50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);
        OUTLINED_FUNCTION_57_10();
        sub_1B964C740();
        sub_1B9203B2C();
        if (v1)
        {
          goto LABEL_12;
        }
      }

      v17 = v21;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v17, 1, v19) == 1)
      {
        sub_1B8D9207C(v17, &qword_1EBAC8C38, &qword_1B96A85F8);
LABEL_11:
        sub_1B964C290();
        goto LABEL_12;
      }

      sub_1B9203930();
      sub_1B920610C(&qword_1EBAC8C48, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion, "Q!~5");
      OUTLINED_FUNCTION_57_10();
      sub_1B964C740();
      sub_1B9203B2C();
      if (!v1)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

unint64_t sub_1B92060B8()
{
  result = qword_1ED9CA100;
  if (!qword_1ED9CA100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SuggestionIntent, &type metadata for Apple_Parsec_Siri_V2alpha_SuggestionIntent, v0, v1);
    atomic_store(result, &qword_1ED9CA100);
  }

  return result;
}

uint64_t sub_1B920610C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void static Apple_Parsec_Siri_V2alpha_ServerSuggestion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_231_1();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C58, &qword_1B96A8608);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C30, &qword_1B96A85F0);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_79();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C60, &unk_1B96A8610);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_159();
  if (!OUTLINED_FUNCTION_85_5())
  {
    goto LABEL_27;
  }

  sub_1B8D6A6A4(*(v1 + 16), *(v0 + 16));
  if ((v23 & 1) == 0)
  {
    goto LABEL_27;
  }

  v43 = v10;
  v44 = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  v24 = *(v21 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v5);
  if (v31)
  {
    OUTLINED_FUNCTION_37_0(v5 + v24);
    v25 = v44;
    if (v31)
    {
      sub_1B8D9207C(v5, &qword_1EBAC8C30, &qword_1B96A85F0);
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v5 + v24);
  if (v31)
  {
    sub_1B9203B2C();
LABEL_16:
    v32 = &qword_1EBAC8C60;
    v33 = &unk_1B96A8610;
LABEL_17:
    v34 = v5;
LABEL_26:
    sub_1B8D9207C(v34, v32, v33);
LABEL_27:
    v30 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_4_38();
  sub_1B9203930();
  sub_1B8D6A254(*v3, *v18);
  if ((v35 & 1) == 0)
  {
    sub_1B9203B2C();
    sub_1B9203B2C();
    v32 = &qword_1EBAC8C30;
    v33 = &qword_1B96A85F0;
    goto LABEL_17;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  sub_1B920610C(v36, v37, MEMORY[0x1E69AAC10]);
  v38 = sub_1B964C850();
  sub_1B9203B2C();
  sub_1B9203B2C();
  sub_1B8D9207C(v5, &qword_1EBAC8C30, &qword_1B96A85F0);
  v25 = v44;
  if ((v38 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  v26 = *(v45 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v25, 1, v46) == 1)
  {
    OUTLINED_FUNCTION_37_0(v25 + v26);
    if (!v31)
    {
      goto LABEL_24;
    }

    sub_1B8D9207C(v25, &qword_1EBAC8C38, &qword_1B96A85F8);
  }

  else
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v25 + v26);
    if (v31)
    {
      sub_1B9203B2C();
LABEL_24:
      v32 = &qword_1EBAC8C58;
      v33 = &qword_1B96A8608;
LABEL_25:
      v34 = v25;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_3_46();
    sub_1B9203930();
    sub_1B8D62AF8(*v4, *v43);
    if ((v39 & 1) == 0)
    {
      sub_1B9203B2C();
      sub_1B9203B2C();
      v32 = &qword_1EBAC8C38;
      v33 = &qword_1B96A85F8;
      goto LABEL_25;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_73();
    sub_1B920610C(v40, v41, MEMORY[0x1E69AAC10]);
    v42 = sub_1B964C850();
    sub_1B9203B2C();
    sub_1B9203B2C();
    sub_1B8D9207C(v25, &qword_1EBAC8C38, &qword_1B96A85F8);
    if ((v42 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  v29 = sub_1B920610C(v27, v28, MEMORY[0x1E69AAC10]);
  v30 = OUTLINED_FUNCTION_199_0(v29);
LABEL_28:
  OUTLINED_FUNCTION_264(v30);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92067B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D90, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9206838(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAB4530, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92068A8(uint64_t a1, uint64_t a2)
{
  sub_1B920610C(&qword_1EBAB4530, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B9206934()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8B88);
  __swift_project_value_buffer(v0, qword_1EBAC8B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "print";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speak";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  v7 = sub_1B920610C(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B9206D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9206DEC(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9206E5C(uint64_t a1, uint64_t a2)
{
  sub_1B920610C(&qword_1EBAC8C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);

  return sub_1B964C5D0();
}

uint64_t sub_1B9206EE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8BA0);
  __swift_project_value_buffer(v0, qword_1EBAC8BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9208BA4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8D15DE0();
    }
  }

  return result;
}

void Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_159();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  if (!*v1 || (OUTLINED_FUNCTION_58_9(*v1), sub_1B92060B8(), sub_1B964C680(), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_6:
      sub_1B964C290();
      goto LABEL_7;
    }

    sub_1B9203930();
    OUTLINED_FUNCTION_2_45();
    sub_1B920610C(v7, v8, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);
    sub_1B964C740();
    sub_1B9203B2C();
    if (!v0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_112();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  if (!OUTLINED_FUNCTION_85_5())
  {
    goto LABEL_12;
  }

  v25[1] = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
  v12 = *(v8 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v11);
  if (v13)
  {
    OUTLINED_FUNCTION_37_0(&v11[v12]);
    if (v13)
    {
      sub_1B8D9207C(v11, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_25:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_73();
      v24 = sub_1B920610C(v22, v23, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_199_0(v24);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v11[v12]);
  if (v13)
  {
    OUTLINED_FUNCTION_13_25();
    sub_1B9203B2C();
LABEL_10:
    v14 = &qword_1EBAB9010;
    v15 = &unk_1B964D800;
LABEL_11:
    sub_1B8D9207C(v11, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_61();
  sub_1B9203930();
  v17 = *v0 == *v5 && v0[1] == v5[1];
  if (!v17 && (sub_1B964C9F0() & 1) == 0 || (v0[2] == v5[2] ? (v18 = v0[3] == v5[3]) : (v18 = 0), !v18 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_14_23();
    sub_1B9203B2C();
    sub_1B9203B2C();
    v14 = &qword_1EBAB9008;
    v15 = &qword_1B96A8600;
    goto LABEL_11;
  }

  v19 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  sub_1B920610C(v20, v21, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_11_34();
  sub_1B9203B2C();
  sub_1B9203B2C();
  sub_1B8D9207C(v11, &qword_1EBAB9008, &qword_1B96A8600);
  if (v19)
  {
    goto LABEL_25;
  }

LABEL_12:
  v16 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v16);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92076F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D80, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9207770(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C40, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92077E0(uint64_t a1, uint64_t a2)
{
  sub_1B920610C(&qword_1EBAC8C40, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);

  return sub_1B964C5D0();
}

uint64_t sub_1B9207878()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8BB8);
  __swift_project_value_buffer(v0, qword_1EBAC8BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "source";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9207BD8(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9207B24(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9207B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  sub_1B920610C(&qword_1EBAC8C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_159();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0);
  OUTLINED_FUNCTION_82_5();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
  }

  else
  {
    OUTLINED_FUNCTION_30_23();
    sub_1B9203930();
    OUTLINED_FUNCTION_2_45();
    sub_1B920610C(v9, v10, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);
    OUTLINED_FUNCTION_80_3();
    sub_1B964C740();
    sub_1B9203B2C();
    if (v0)
    {
      goto LABEL_9;
    }
  }

  if (!*v1 || (OUTLINED_FUNCTION_58_9(*v1), sub_1B9209A34(), sub_1B964C680(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v11 || (sub_1B964C700(), !v0))
    {
      sub_1B964C290();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v30 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_79();
  v30[1] = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0);
  v14 = *(v12 + 56);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v15)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_1_61();
      sub_1B9203930();
      v19 = *v11 == *v7 && v11[1] == v7[1];
      if (v19 || (sub_1B964C9F0() & 1) != 0)
      {
        v20 = v11[2] == v7[2] && v11[3] == v7[3];
        if (v20 || (sub_1B964C9F0() & 1) != 0)
        {
          v21 = sub_1B964C2B0();
          OUTLINED_FUNCTION_0_73();
          sub_1B920610C(v22, v23, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
          OUTLINED_FUNCTION_11_34();
          sub_1B9203B2C();
          OUTLINED_FUNCTION_686();
          sub_1B9203B2C();
          sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
          if ((v21 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_14_23();
      sub_1B9203B2C();
      sub_1B9203B2C();
      v16 = &qword_1EBAB9008;
      v17 = &qword_1B96A8600;
LABEL_10:
      sub_1B8D9207C(v2, v16, v17);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_13_25();
    sub_1B9203B2C();
LABEL_9:
    v16 = &qword_1EBAB9010;
    v17 = &unk_1B964D800;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v2 + v14);
  if (!v15)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_24:
  v24 = *v1;
  v25 = *v0;
  if (*(v1 + 8))
  {
    v24 = *v1 != 0;
  }

  if (*(v0 + 8) == 1)
  {
    if (v25)
    {
      if (v24 != 1)
      {
        goto LABEL_11;
      }
    }

    else if (v24)
    {
      goto LABEL_11;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_11;
  }

  v26 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v26 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_73();
    v29 = sub_1B920610C(v27, v28, MEMORY[0x1E69AAC10]);
    v18 = OUTLINED_FUNCTION_199_0(v29);
    goto LABEL_12;
  }

LABEL_11:
  v18 = 0;
LABEL_12:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9208238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92082B8(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9208328(uint64_t a1, uint64_t a2)
{
  sub_1B920610C(&qword_1EBAC8C98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate);

  return sub_1B964C5D0();
}

uint64_t sub_1B92083A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8BD0);
  __swift_project_value_buffer(v0, qword_1EBAC8BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CANDIDATE_TYPE_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CANDIDATE_TYPE_ASR";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0), v2 = sub_1B920610C(&qword_1EBAC8C98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate), result = OUTLINED_FUNCTION_48_10(v2), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B92087B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D70, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9208834(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92088A4(uint64_t a1, uint64_t a2)
{
  sub_1B920610C(&qword_1EBAC8C50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B920893C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8C00);
  __swift_project_value_buffer(v0, qword_1EBAC8C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9208BA4();
    }
  }

  return result;
}

uint64_t sub_1B9208BA4()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_2_45();
  sub_1B920610C(v1, v2, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_159();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(0);
  OUTLINED_FUNCTION_82_5();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
  }

  else
  {
    OUTLINED_FUNCTION_30_23();
    sub_1B9203930();
    OUTLINED_FUNCTION_2_45();
    sub_1B920610C(v9, v10, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);
    OUTLINED_FUNCTION_80_3();
    sub_1B964C740();
    sub_1B9203B2C();
    if (v0)
    {
      goto LABEL_7;
    }
  }

  if (*v1 == 0.0 || (sub_1B964C6B0(), !v0))
  {
    OUTLINED_FUNCTION_186();
    sub_1B964C290();
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(v14);
  v15 = *(v12 + 56);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v0);
  if (!v16)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v15);
    if (!v16)
    {
      OUTLINED_FUNCTION_1_61();
      sub_1B9203930();
      v20 = *v1 == *v9 && v1[1] == v9[1];
      if (v20 || (sub_1B964C9F0() & 1) != 0)
      {
        v21 = v1[2] == v9[2] && v1[3] == v9[3];
        if (v21 || (sub_1B964C9F0() & 1) != 0)
        {
          v22 = sub_1B964C2B0();
          OUTLINED_FUNCTION_0_73();
          sub_1B920610C(v23, v24, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
          OUTLINED_FUNCTION_11_34();
          sub_1B9203B2C();
          sub_1B9203B2C();
          sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
          if ((v22 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_14_23();
      sub_1B9203B2C();
      sub_1B9203B2C();
      v17 = &qword_1EBAB9008;
      v18 = &qword_1B96A8600;
LABEL_10:
      sub_1B8D9207C(v0, v17, v18);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_13_25();
    sub_1B9203B2C();
LABEL_9:
    v17 = &qword_1EBAB9010;
    v18 = &unk_1B964D800;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v0 + v15);
  if (!v16)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_23:
  if (*v5 == *v3)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_73();
    sub_1B920610C(v25, v26, MEMORY[0x1E69AAC10]);
    v19 = sub_1B964C850();
    goto LABEL_25;
  }

LABEL_11:
  v19 = 0;
LABEL_25:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92091B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D68, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9209234(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8CB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92092A4(uint64_t a1, uint64_t a2)
{
  sub_1B920610C(&qword_1EBAC8CB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate);

  return sub_1B964C5D0();
}

uint64_t sub_1B920933C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B964D050;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "candidates";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  (*(v9 + 104))(v7, v8);
  return sub_1B964C760();
}

void sub_1B920951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (1)
  {
    v8 = sub_1B964C3C0();
    if (v7 || (v9 & 1) != 0)
    {
      break;
    }

    if (v8 == 1)
    {
      sub_1B92095B4();
    }
  }
}

void sub_1B92095B4()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6(0);
  sub_1B920610C(v5, v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(0), v2 = sub_1B920610C(&qword_1EBAC8CB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate), result = OUTLINED_FUNCTION_48_10(v2), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9209714(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  v10 = sub_1B920610C(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B92097EC()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B920610C(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92098C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D60, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9209944(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C48, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion, "Q!~5");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92099B4(uint64_t a1, uint64_t a2)
{
  sub_1B920610C(&qword_1EBAC8C48, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion, "Q!~5");

  return sub_1B964C5D0();
}

unint64_t sub_1B9209A34()
{
  result = qword_1EBAC8C88;
  if (!qword_1EBAC8C88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType, &type metadata for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType, v0, v1);
    atomic_store(result, &qword_1EBAC8C88);
  }

  return result;
}

unint64_t sub_1B9209A8C()
{
  result = qword_1ED9CA0F8;
  if (!qword_1ED9CA0F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SuggestionIntent, &type metadata for Apple_Parsec_Siri_V2alpha_SuggestionIntent, v0, v1);
    atomic_store(result, &qword_1ED9CA0F8);
  }

  return result;
}

unint64_t sub_1B9209AE4()
{
  result = qword_1ED9CA0E8;
  if (!qword_1ED9CA0E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SuggestionIntent, &type metadata for Apple_Parsec_Siri_V2alpha_SuggestionIntent, v0, v1);
    atomic_store(result, &qword_1ED9CA0E8);
  }

  return result;
}

unint64_t sub_1B9209B3C()
{
  result = qword_1ED9CA0F0;
  if (!qword_1ED9CA0F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SuggestionIntent, &type metadata for Apple_Parsec_Siri_V2alpha_SuggestionIntent, v0, v1);
    atomic_store(result, &qword_1ED9CA0F0);
  }

  return result;
}

unint64_t sub_1B9209BC4()
{
  result = qword_1EBAC8CD0;
  if (!qword_1EBAC8CD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType, &type metadata for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType, v0, v1);
    atomic_store(result, &qword_1EBAC8CD0);
  }

  return result;
}

unint64_t sub_1B9209C1C()
{
  result = qword_1EBAC8CD8;
  if (!qword_1EBAC8CD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType, &type metadata for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType, v0, v1);
    atomic_store(result, &qword_1EBAC8CD8);
  }

  return result;
}

unint64_t sub_1B9209C74()
{
  result = qword_1EBAC8CE0;
  if (!qword_1EBAC8CE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType, &type metadata for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType, v0, v1);
    atomic_store(result, &qword_1EBAC8CE0);
  }

  return result;
}

void sub_1B920A510(uint64_t a1)
{
  sub_1B920A664(319, &qword_1ED9D3988, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B920A664(319, qword_1ED9D52E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B920A664(319, qword_1ED9D4F58, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B920A664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B920A74C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B920A664(319, &qword_1ED9D4ED8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_31Tm_0(uint64_t a1, int a2, uint64_t a3)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == a2)
  {
    v6 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
    OUTLINED_FUNCTION_266();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

uint64_t __swift_store_extra_inhabitant_index_32Tm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(a4 + 20);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
    v11 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

void sub_1B920A9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C2B0();
  if (v4 <= 0x3F)
  {
    sub_1B920A664(319, &qword_1ED9D4ED8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_56Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_1B920AB60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B920A664(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_42_11(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_48_10(uint64_t a1)
{

  return sub_1B964C730();
}

void OUTLINED_FUNCTION_58_9(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *(v2 - 96) = a1;
  *(v2 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_82_5()
{

  return sub_1B8D92024();
}

BOOL OUTLINED_FUNCTION_85_5()
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *v0;
  v6 = *(v0 + 8);

  return sub_1B8D58018(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_86_7()
{

  return sub_1B9203930();
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B920AE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920D9A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920AF18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B920AF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920D9F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920B02C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B920B094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920F484();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920B174@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioState.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B920B1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920F4D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920B2A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioEntitySource.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B920B2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920F52C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920B3D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.xpAbCookie.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.eligibleOffers.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.itfeCookie.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(v2) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_AmpUserState.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 80) = 0;
  *(v1 + 88) = v3;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.source.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  sub_1B920BC40(v1 + *(v7 + 44), v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (!v11)
  {
    return sub_1B920BCD0(v6, a1);
  }

  OUTLINED_FUNCTION_27_12();
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = v12;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v13, v14, v8);
  if (!v11)
  {
    return sub_1B8D9207C(v6, &qword_1EBAC8DD8, &qword_1B96A95E0);
  }

  return result;
}

uint64_t sub_1B920BAD8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B920BF80(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v2) + 44);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC8DD8, &qword_1B96A95E0);
  sub_1B920BCD0(v0, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.init()@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_27_12();
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = v3;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B920BC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B920BCD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0) + 44);
  *(v3 + 10) = v11;
  sub_1B920BC40(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    *(v10 + 56) = 1;
    v10[8] = 0;
    v10[9] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC8DD8, &qword_1B96A95E0);
    }
  }

  else
  {
    sub_1B920BCD0(v6, v10);
  }

  return sub_1B920BEA0;
}

void sub_1B920BEA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B920BF80((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBAC8DD8, &qword_1B96A95E0);
    sub_1B920BCD0(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B920BFE4(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAC8DD8, &qword_1B96A95E0);
    sub_1B920BCD0(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B920BF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B920BFE4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.hasAudioQueueStateItem.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  sub_1B920BC40(v0 + *(v5 + 44), v4);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_1B8D9207C(v4, &qword_1EBAC8DD8, &qword_1B96A95E0);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.clearAudioQueueStateItem()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0) + 44);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC8DD8, &qword_1B96A95E0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.currentListeningToContainer.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v2) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = sub_1B964C7B0();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 44);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);

  return __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.artist.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(v2) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(v0);
  return nullsub_1;
}

uint64_t sub_1B920C570()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4068);
  __swift_project_value_buffer(v0, qword_1EBAB4068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AMP_SUBSCRIPTION_STATUS_UNKNOWN";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AMP_SUBSCRIPTION_STATUS_ACTIVE";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920C760()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8DC0);
  __swift_project_value_buffer(v0, qword_1EBAC8DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ITUNES_MATCH_SUBSCRIPTION_STATUS_UNKNOWN";
  *(v6 + 8) = 40;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ITUNES_MATCH_SUBSCRIPTION_STATUS_ACTIVE";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920C950()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4AC8);
  __swift_project_value_buffer(v0, qword_1EBAB4AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_STATE_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_STATE_PLAYING";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_STATE_PAUSED";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_STATE_STOPPED";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_STATE_INTERRUPTED";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_STATE_MUTED";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920CC34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB44B8);
  __swift_project_value_buffer(v0, qword_1EBAB44B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_ENTITY_SOURCE_UNSPECIFIED";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_ENTITY_SOURCE_LOCALE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_ENTITY_SOURCE_RADIO";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_ENTITY_SOURCE_LOCAL";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920CE98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3E98);
  __swift_project_value_buffer(v0, qword_1EBAB3E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_QUEUE_STATE_ITEM_TYPE_UNSPECIFIED";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_QUEUE_STATE_ITEM_TYPE_ADVERTISEMENT";
  *(v10 + 8) = 41;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_QUEUE_STATE_ITEM_TYPE_AUDIOBOOK";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_QUEUE_STATE_ITEM_TYPE_EPISODE";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_QUEUE_STATE_ITEM_TYPE_MUSIC_MOVIE";
  *(v16 + 1) = 39;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_QUEUE_STATE_ITEM_TYPE_PODCAST";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_QUEUE_STATE_ITEM_TYPE_SONG";
  *(v20 + 1) = 32;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920D1D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB47D8);
  __swift_project_value_buffer(v0, qword_1EBAB47D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B96511C0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "amp_subscription_status";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "user_token";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "shared_user_id";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "itunes_subscription_status";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_user_history_modifiable";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "xp_ab_cookie";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_default_user";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "eligible_offers";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "is_subscribed_to_glide";
  *(v23 + 1) = 22;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "itfe_cookie";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "token_error_code";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B920D6E0(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
      case 6:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B920D748(v7, v8, v9, v10);
        break;
      case 5:
      case 7:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (sub_1B920D9A0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 2), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 3), !v1))
      {
        if (!*(v2 + 48) || (sub_1B920D9F4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          if (*(v2 + 57) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 6), !v1))
            {
              if (*(v2 + 80) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
              {
                if (!*(*(v2 + 88) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
                {
                  if (*(v2 + 96) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 10), !v1))
                    {
                      if (!*(v2 + 120) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                      {
                        type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(0);
                        OUTLINED_FUNCTION_12();
                        return sub_1B964C290();
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

  return result;
}

unint64_t sub_1B920D9A0()
{
  result = qword_1EBAB4058;
  if (!qword_1EBAB4058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, &type metadata for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, v0, v1);
    atomic_store(result, &qword_1EBAB4058);
  }

  return result;
}

unint64_t sub_1B920D9F4()
{
  result = qword_1EBAC8DE0;
  if (!qword_1EBAC8DE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, &type metadata for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, v0, v1);
    atomic_store(result, &qword_1EBAC8DE0);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AmpUserState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 48);
  v11 = *(v0 + 48);
  if (*(v1 + 56))
  {
    v10 = v10 != 0;
  }

  if (*(v0 + 56) == 1)
  {
    if (v11)
    {
      if (v10 != 1)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }
  }

  else if (v10 != v11)
  {
    return 0;
  }

  if (*(v1 + 57) == *(v0 + 57))
  {
    v12 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
    if (v12 || (sub_1B964C9F0()) && *(v1 + 80) == *(v0 + 80) && (sub_1B8D6123C(*(v1 + 88), *(v0 + 88)) & 1) != 0 && *(v1 + 96) == *(v0 + 96))
    {
      v13 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
      if (v13 || (sub_1B964C9F0()) && *(v1 + 120) == *(v0 + 120))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(0);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_47();
        v16 = sub_1B8CD2C78(v14, v15, MEMORY[0x1E69AAC10]);
        return OUTLINED_FUNCTION_634(v16) & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B920DCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C78(&qword_1EBAC8E98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AmpUserState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B920DD38(uint64_t a1)
{
  v2 = sub_1B8CD2C78(&qword_1EBAB47C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AmpUserState);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B920DDA8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2C78(&qword_1EBAB47C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AmpUserState);

  return sub_1B964C5D0();
}

uint64_t sub_1B920DE34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB42A8);
  __swift_project_value_buffer(v0, qword_1EBAB42A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "state";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "application_identifier";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "now_playing_queue_index";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "now_playing_queue_count";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "audio_queue_state_item";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "current_listening_to_container";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B920E234(v3, v4, v5, v6);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B920E29C(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 6:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B920E304(v11, v12, v13, v14);
        break;
      case 7:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B9065268(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B920E304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  sub_1B8CD2C78(&qword_1EBAB4268, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v1 || (v12 = *(v3 + 8), v18 = *v1, v19 = v12, sub_1B920F484(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
  {
    if (!*(v3 + 16) || (v14 = *(v3 + 24), v18 = *(v3 + 16), v19 = v14, sub_1B920F4D8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 3), (v0 = v2) == 0))
      {
        if (!*(v3 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), (v0 = v2) == 0))
        {
          if (!*(v3 + 52) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), (v0 = v2) == 0))
          {
            v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
            sub_1B920BC40(v3 + *(v20 + 44), v7);
            if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
            {
              sub_1B8D9207C(v7, &qword_1EBAC8DD8, &qword_1B96A95E0);
            }

            else
            {
              sub_1B920BCD0(v7, v11);
              sub_1B8CD2C78(&qword_1EBAB4268, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);
              OUTLINED_FUNCTION_687();
              sub_1B964C740();
              v0 = v2;
              result = sub_1B920BFE4(v11);
              if (v2)
              {
                return result;
              }
            }

            if (!*(*(v3 + 56) + 16) || (sub_1B964C280(), result = sub_1B964C5F0(), !v0))
            {
              OUTLINED_FUNCTION_12();
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DF0, &qword_1B96A95E8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = *v1;
  v15 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v15)
    {
      case 1:
        if (v14 != 1)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      case 2:
        if (v14 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      case 3:
        if (v14 != 3)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      case 4:
        if (v14 != 4)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      case 5:
        if (v14 != 5)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      default:
        if (!v14)
        {
          goto LABEL_6;
        }

        goto LABEL_46;
    }
  }

  if (v14 != v15)
  {
    goto LABEL_46;
  }

LABEL_6:
  v16 = v1[2];
  v17 = v0[2];
  if (*(v0 + 24) == 1)
  {
    switch(v17)
    {
      case 1:
        if (v16 != 1)
        {
          goto LABEL_46;
        }

        goto LABEL_11;
      case 2:
        if (v16 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_11;
      case 3:
        if (v16 != 3)
        {
          goto LABEL_46;
        }

        goto LABEL_11;
      default:
        if (!v16)
        {
          goto LABEL_11;
        }

        goto LABEL_46;
    }
  }

  if (v16 != v17)
  {
LABEL_46:
    v29 = 0;
    return v29 & 1;
  }

LABEL_11:
  OUTLINED_FUNCTION_40_5();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 12) != *(v0 + 12) || *(v1 + 13) != *(v0 + 13))
  {
    goto LABEL_46;
  }

  v21 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0) + 44);
  v22 = *(v10 + 48);
  sub_1B920BC40(v1 + v21, v13);
  sub_1B920BC40(v0 + v21, &v13[v22]);
  OUTLINED_FUNCTION_178(v13, 1, v2);
  if (v20)
  {
    OUTLINED_FUNCTION_178(&v13[v22], 1, v2);
    if (v20)
    {
      sub_1B8D9207C(v13, &qword_1EBAC8DD8, &qword_1B96A95E0);
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  sub_1B920BC40(v13, v9);
  OUTLINED_FUNCTION_178(&v13[v22], 1, v2);
  if (v23)
  {
    sub_1B920BFE4(v9);
LABEL_42:
    sub_1B8D9207C(v13, &qword_1EBAC8DF0, &qword_1B96A95E8);
    goto LABEL_46;
  }

  sub_1B920BCD0(&v13[v22], v5);
  v24 = static Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.== infix(_:_:)();
  sub_1B920BFE4(v5);
  sub_1B920BFE4(v9);
  sub_1B8D9207C(v13, &qword_1EBAC8DD8, &qword_1B96A95E0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_44:
  sub_1B8DB02F8(v1[7], v0[7]);
  if ((v25 & 1) == 0)
  {
    goto LABEL_46;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_47();
  v28 = sub_1B8CD2C78(v26, v27, MEMORY[0x1E69AAC10]);
  v29 = OUTLINED_FUNCTION_634(v28);
  return v29 & 1;
}

uint64_t sub_1B920EAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C78(&qword_1EBAC8E90, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B920EB28(uint64_t a1)
{
  v2 = sub_1B8CD2C78(&qword_1EBAB4298, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B920EB98(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2C78(&qword_1EBAB4298, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B920EC24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4278);
  __swift_project_value_buffer(v0, qword_1EBAB4278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "artist";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "audio_queue_state_item_type";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "album";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B920EF6C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        if (!*(v1 + 48) || (sub_1B920F52C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 5), !v0))
          {
            type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
            OUTLINED_FUNCTION_12();
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 16) == v0[2] && *(v1 + 24) == v0[3];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v7 = v3 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1B8D92198(*(v1 + 48), *(v1 + 56), v0[6]))
  {
    return 0;
  }

  v8 = *(v1 + 64) == v0[8] && *(v1 + 72) == v0[9];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_47();
  v11 = sub_1B8CD2C78(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B920F230(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2C78(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B920F314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C78(&qword_1EBAC8E88, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B920F394(uint64_t a1)
{
  v2 = sub_1B8CD2C78(&qword_1EBAB4268, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B920F404(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2C78(&qword_1EBAB4268, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);

  return sub_1B964C5D0();
}

unint64_t sub_1B920F484()
{
  result = qword_1EBAB4AB8;
  if (!qword_1EBAB4AB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioState, &type metadata for Apple_Parsec_Siri_V2alpha_AudioState, v0, v1);
    atomic_store(result, &qword_1EBAB4AB8);
  }

  return result;
}

unint64_t sub_1B920F4D8()
{
  result = qword_1EBAB44A8;
  if (!qword_1EBAB44A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioEntitySource, &type metadata for Apple_Parsec_Siri_V2alpha_AudioEntitySource, v0, v1);
    atomic_store(result, &qword_1EBAB44A8);
  }

  return result;
}

unint64_t sub_1B920F52C()
{
  result = qword_1EBAB3E88;
  if (!qword_1EBAB3E88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType, v0, v1);
    atomic_store(result, &qword_1EBAB3E88);
  }

  return result;
}

unint64_t sub_1B920F584()
{
  result = qword_1EBAB4050;
  if (!qword_1EBAB4050)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, &type metadata for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, v0, v1);
    atomic_store(result, &qword_1EBAB4050);
  }

  return result;
}

unint64_t sub_1B920F5DC()
{
  result = qword_1EBAB4040;
  if (!qword_1EBAB4040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, &type metadata for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, v0, v1);
    atomic_store(result, &qword_1EBAB4040);
  }

  return result;
}

unint64_t sub_1B920F634()
{
  result = qword_1EBAB4048;
  if (!qword_1EBAB4048)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, &type metadata for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, v0, v1);
    atomic_store(result, &qword_1EBAB4048);
  }

  return result;
}

unint64_t sub_1B920F6BC()
{
  result = qword_1EBAC8E18;
  if (!qword_1EBAC8E18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, &type metadata for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, v0, v1);
    atomic_store(result, &qword_1EBAC8E18);
  }

  return result;
}

unint64_t sub_1B920F714()
{
  result = qword_1EBAC8E20;
  if (!qword_1EBAC8E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, &type metadata for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, v0, v1);
    atomic_store(result, &qword_1EBAC8E20);
  }

  return result;
}

unint64_t sub_1B920F76C()
{
  result = qword_1EBAC8E28;
  if (!qword_1EBAC8E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, &type metadata for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, v0, v1);
    atomic_store(result, &qword_1EBAC8E28);
  }

  return result;
}

unint64_t sub_1B920F7F4()
{
  result = qword_1EBAB4AB0;
  if (!qword_1EBAB4AB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioState, &type metadata for Apple_Parsec_Siri_V2alpha_AudioState, v0, v1);
    atomic_store(result, &qword_1EBAB4AB0);
  }

  return result;
}

unint64_t sub_1B920F84C()
{
  result = qword_1EBAB4AA0;
  if (!qword_1EBAB4AA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioState, &type metadata for Apple_Parsec_Siri_V2alpha_AudioState, v0, v1);
    atomic_store(result, &qword_1EBAB4AA0);
  }

  return result;
}

unint64_t sub_1B920F8A4()
{
  result = qword_1EBAB4AA8;
  if (!qword_1EBAB4AA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioState, &type metadata for Apple_Parsec_Siri_V2alpha_AudioState, v0, v1);
    atomic_store(result, &qword_1EBAB4AA8);
  }

  return result;
}

unint64_t sub_1B920F92C()
{
  result = qword_1EBAB44A0;
  if (!qword_1EBAB44A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioEntitySource, &type metadata for Apple_Parsec_Siri_V2alpha_AudioEntitySource, v0, v1);
    atomic_store(result, &qword_1EBAB44A0);
  }

  return result;
}

unint64_t sub_1B920F984()
{
  result = qword_1EBAB4490;
  if (!qword_1EBAB4490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioEntitySource, &type metadata for Apple_Parsec_Siri_V2alpha_AudioEntitySource, v0, v1);
    atomic_store(result, &qword_1EBAB4490);
  }

  return result;
}

unint64_t sub_1B920F9DC()
{
  result = qword_1EBAB4498;
  if (!qword_1EBAB4498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioEntitySource, &type metadata for Apple_Parsec_Siri_V2alpha_AudioEntitySource, v0, v1);
    atomic_store(result, &qword_1EBAB4498);
  }

  return result;
}

unint64_t sub_1B920FA64()
{
  result = qword_1EBAB3E80;
  if (!qword_1EBAB3E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType, v0, v1);
    atomic_store(result, &qword_1EBAB3E80);
  }

  return result;
}

unint64_t sub_1B920FABC()
{
  result = qword_1EBAB3E70;
  if (!qword_1EBAB3E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType, v0, v1);
    atomic_store(result, &qword_1EBAB3E70);
  }

  return result;
}

unint64_t sub_1B920FB14()
{
  result = qword_1EBAB3E78;
  if (!qword_1EBAB3E78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType, v0, v1);
    atomic_store(result, &qword_1EBAB3E78);
  }

  return result;
}

void sub_1B920FF70(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B921006C(uint64_t a1)
{
  sub_1B901FE74();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B921013C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B921013C(uint64_t a1)
{
  if (!qword_1ED9EBD28)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9EBD28);
    }
  }
}

uint64_t sub_1B92101BC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_27_12()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.notes.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.notes.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0);
  sub_1B92104F8(v1 + *(v6 + 24), v2);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v8 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v8, v9, v7) != 1)
  {
    return sub_1B9210568(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(v7 + 20);
  if (qword_1EBAB7978 != -1)
  {
    OUTLINED_FUNCTION_3_44(&qword_1EBAB7978);
  }

  *(a1 + v10) = qword_1EBAC8618;
  v11 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v7);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB9018, &unk_1B96A6290);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(uint64_t a1)
{
  result = qword_1EBAC8ED8;
  if (!qword_1EBAC8ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B92104F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9210568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B92105CC(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9210948(a1, v4);
  return Apple_Parsec_Siri_V2alpha_ParkingLocation.location.setter(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9018, &unk_1B96A6290);
  sub_1B9210568(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Siri_V2alpha_ParkingLocation.location.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0) + 24);
  *(v3 + 10) = v11;
  sub_1B92104F8(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1EBAB7978 != -1)
    {
      OUTLINED_FUNCTION_3_44(&qword_1EBAB7978);
    }

    *&v10[v12] = qword_1EBAC8618;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9018, &unk_1B96A6290);
    }
  }

  else
  {
    sub_1B9210568(v6, v10);
  }

  return sub_1B9210868;
}

void sub_1B9210868(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B9210948((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBAB9018, &unk_1B96A6290);
    sub_1B9210568(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B92109AC(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAB9018, &unk_1B96A6290);
    sub_1B9210568(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B9210948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B92109AC(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Parsec_Siri_V2alpha_ParkingLocation.hasLocation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0);
  sub_1B92104F8(v0 + *(v4 + 24), v1);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v5 = OUTLINED_FUNCTION_493();
  v8 = __swift_getEnumTagSinglePayload(v5, v6, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBAB9018, &unk_1B96A6290);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ParkingLocation.clearLocation()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0) + 24);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB9018, &unk_1B96A6290);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t sub_1B9210CDC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8EA0);
  __swift_project_value_buffer(v0, qword_1EBAC8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notes";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_ParkingLocation._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7A60 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC8EA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1B9210FD4(a1, v5, a2, a3);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9210FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  sub_1B9211A34(&qword_1EBAC8788, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = sub_1B964C700(), !v4))
  {
    v19[1] = a1;
    v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0);
    sub_1B92104F8(v5 + *(v18 + 24), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBAB9018, &unk_1B96A6290);
    }

    else
    {
      sub_1B9210568(v10, v14);
      sub_1B9211A34(&qword_1EBAC8788, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
      sub_1B964C740();
      result = sub_1B92109AC(v14);
      if (v4)
      {
        return result;
      }
    }

    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ParkingLocation.== infix(_:_:)(void *a1, void *a2)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9020, &unk_1B964D810);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88();
  v15 = *a1 == *a2 && a1[1] == a2[1];
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0) + 24);
  v17 = *(v13 + 48);
  sub_1B92104F8(a1 + v16, v2);
  sub_1B92104F8(a2 + v16, v2 + v17);
  v18 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v18, v19, v5) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v2 + v17, 1, v5) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9018, &unk_1B96A6290);
LABEL_17:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_62();
      sub_1B9211A34(v27, v28, MEMORY[0x1E69AAC10]);
      v22 = sub_1B964C850();
      return v22 & 1;
    }

    goto LABEL_11;
  }

  sub_1B92104F8(v2, v12);
  if (__swift_getEnumTagSinglePayload(v2 + v17, 1, v5) == 1)
  {
    sub_1B92109AC(v12);
LABEL_11:
    v20 = &qword_1EBAB9020;
    v21 = &unk_1B964D810;
LABEL_12:
    sub_1B8D9207C(v2, v20, v21);
    goto LABEL_13;
  }

  sub_1B9210568(v2 + v17, v8);
  if (*&v12[*(v5 + 20)] != *&v8[*(v5 + 20)])
  {

    v23 = sub_1B91F6CF8();

    if (!v23)
    {
      sub_1B92109AC(v8);
      sub_1B92109AC(v12);
      v20 = &qword_1EBAB9018;
      v21 = &unk_1B96A6290;
      goto LABEL_12;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_62();
  sub_1B9211A34(v24, v25, MEMORY[0x1E69AAC10]);
  v26 = sub_1B964C850();
  sub_1B92109AC(v8);
  sub_1B92109AC(v12);
  sub_1B8D9207C(v2, &qword_1EBAB9018, &unk_1B96A6290);
  if (v26)
  {
    goto LABEL_17;
  }

LABEL_13:
  v22 = 0;
  return v22 & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation(0);
  sub_1B9211A34(&qword_1EBAC8EB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocation);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9211690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9211A34(&qword_1EBAC8EE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9211710(uint64_t a1)
{
  v2 = sub_1B9211A34(&qword_1EBAC8EC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9211780(uint64_t a1, uint64_t a2)
{
  sub_1B9211A34(&qword_1EBAC8EC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocation);

  return sub_1B964C5D0();
}

void sub_1B9211948(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B92119DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92119DC(uint64_t a1)
{
  if (!qword_1ED9EB878)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9EB878);
    }
  }
}

uint64_t sub_1B9211A34(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.originalWaypointRoute.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.originalWaypointRoute.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.sessionState.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.sessionState.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.routeID.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.routeID.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.etaFilter.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.etaFilter.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.evChargingMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.evChargingMetadata.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo(uint64_t a1)
{
  result = qword_1EBAC8F28;
  if (!qword_1EBAC8F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  a1[1] = xmmword_1B9652FE0;
  a1[2] = xmmword_1B9652FE0;
  a1[3] = xmmword_1B9652FE0;
  a1[4] = xmmword_1B9652FE0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9211F04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8EF0);
  __swift_project_value_buffer(v0, qword_1EBAC8EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "original_waypoint_route";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "session_state";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "route_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "eta_filter";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ev_charging_metadata";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_RouteInfo._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7A68 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC8EF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_616();
  if (sub_1B8D99EA8(v2, v3) || (v4 = OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(v4, v5, 1), !v1))
  {
    v7 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v7, v8) || (v9 = OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(v9, v10, 2), !v1))
    {
      v11 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v11, v12) || (v13 = OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(v13, v14, 3), !v1))
      {
        v15 = OUTLINED_FUNCTION_616();
        if (sub_1B8D99EA8(v15, v16) || (v17 = OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(v17, v18, 4), !v1))
        {
          v19 = OUTLINED_FUNCTION_616();
          if (sub_1B8D99EA8(v19, v20) || (v21 = OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(v21, v22, 5), !v1))
          {
            type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo(0);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_RouteInfo.== infix(_:_:)(void *a1, void *a2)
{
  if ((MEMORY[0x1BFADC060](*a1, a1[1], *a2, a2[1]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[4], a1[5], a2[4], a2[5]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[6], a1[7], a2[6], a2[7]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[8], a1[9], a2[8], a2[9]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo(0);
  sub_1B964C2B0();
  sub_1B8CD2CC0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo(0);
  sub_1B8CD2CC0(&qword_1EBAC8F08, type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RouteInfo);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92125D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2CC0(&qword_1EBAC8F38, type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RouteInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9212658(uint64_t a1)
{
  v2 = sub_1B8CD2CC0(&qword_1EBAC8F18, type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RouteInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92126C8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2CC0(&qword_1EBAC8F18, type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RouteInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9212890(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_74(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B964C6A0();
}

uint64_t sub_1B9212978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9284470();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9212A58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriEnvironment.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_RestrictionCategory.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 6:
      a2 = 5;
      break;
    case 7:
      a2 = 6;
      break;
    case 8:
      a2 = 7;
      break;
    case 9:
      a2 = 8;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_RestrictionCategory.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96B24D0[result];
  }

  return result;
}

uint64_t sub_1B9212B10@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_RestrictionCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9212B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927ACC4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9212C3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RestrictionCategory.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9212C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927AD18();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9212D6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RestrictionReason.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_RequestType.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 4:
      a2 = 3;
      break;
    case 5:
      a2 = 4;
      break;
    case 6:
      a2 = 5;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_RequestType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96B24A0[result];
  }

  return result;
}

uint64_t sub_1B9212E18@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_RequestType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9212E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B928441C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9212F48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RequestType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9212F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92843C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B921305C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ResponseType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B92130AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927ADC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B921318C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_UIItemType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B92131C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9284374();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92132A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_DialogIntent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B92132E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927AE68();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92133C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AppEntityType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ConversationContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_DeviceState.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC93F0, &qword_1B96AA6B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_3();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC93F0, &qword_1B96AA6B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_219_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  OUTLINED_FUNCTION_248_2(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_114_0();
    *(v10 + 32) = 0;
    *(v10 + 40) = v16;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    *(v10 + 72) = v16;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC93F0, &qword_1B96AA6B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasDeviceState.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearDeviceState()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC93F0, &qword_1B96AA6B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriInteractionType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isNavigationMode.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9213BA4(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v5(v4);
  OUTLINED_FUNCTION_77_0();
  v6 = *a2;
  OUTLINED_FUNCTION_10_4(v2 + v6, v7);
  return *(v2 + v6);
}

void sub_1B9213C34()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  OUTLINED_FUNCTION_134_2();
  v7 = v6;
  v9 = v8(0);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v0 + v3);
  if ((v10 & 1) == 0)
  {
    v2(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v1(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  v14 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v14, v15);
  *(v11 + v5) = v7 & 1;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.treatRandomAsFirst.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9213D54()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  OUTLINED_FUNCTION_134_2();
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 72);
  v8 = *(*v4 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 80);
    v12 = *(v5 + 72);
    v1(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = v0(v13);
    *(v12 + v11) = v10;
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v10 + v3) = v8;
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.dialogState.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.assistantID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.person.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_590_0(v10);
    a1[8] = 0;
    a1[9] = v11;
    a1[10] = MEMORY[0x1E69E7CC0];
    a1[11] = 0;
    a1[12] = v11;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC93F8, &qword_1B96AA6B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_199_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t sub_1B92141A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_167_3();
  v10 = v9(0);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9239DFC();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.person.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC93F8, &qword_1B96AA6B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_199_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.person.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  OUTLINED_FUNCTION_248_2(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_593_1(v16);
    v10[8] = 0;
    v10[9] = v17;
    v10[10] = MEMORY[0x1E69E7CC0];
    v10[11] = 0;
    v10[12] = v17;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC93F8, &qword_1B96AA6B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_199_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9214484()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B9239DFC();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B9239E50();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasPerson.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearPerson()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC93F8, &qword_1B96AA6B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B92146A8(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_178_1();
  v4 = v3(v2);
  OUTLINED_FUNCTION_6_2(v4);

  return OUTLINED_FUNCTION_288();
}

void sub_1B9214788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23;
  v34 = OUTLINED_FUNCTION_112();
  v36 = *(v35(v34) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v23 + v36);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v39 = OUTLINED_FUNCTION_40_0();
    v38 = v30(v39);
    *(v33 + v36) = v38;
  }

  v40 = (v38 + *v28);
  OUTLINED_FUNCTION_18(v40, &a10);
  *v40 = v24;
  v40[1] = v22;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.interactionID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9214900(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v5(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v2 + *a2, v6);
}

void sub_1B92149C0()
{
  OUTLINED_FUNCTION_184_0();
  v6 = v5;
  OUTLINED_FUNCTION_134_2();
  v7 = OUTLINED_FUNCTION_313();
  v9 = v8(v7);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v1 + v4);
  if ((v10 & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  v14 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v14, v15);
  *(v11 + v6) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.multiUserContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9400, &qword_1B96AA6C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_198_3();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.multiUserContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9400, &qword_1B96AA6C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9239418(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_198_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.multiUserContext.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  OUTLINED_FUNCTION_248_2(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9400, &qword_1B96AA6C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_198_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}