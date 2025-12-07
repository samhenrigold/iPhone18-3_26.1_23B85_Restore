uint64_t sub_21B0C7218()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_21B0C94B0(0xD000000000000024, 0x800000021B141850);
  if (!result)
  {
    result = OUTLINED_FUNCTION_10_12("Fatal error", 11, 2, 0xD000000000000039, 0x800000021B141880, "SearchOnDeviceAnalytics/RegisteredRecipeEnvironment.swift", v2, v3, 17);
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0C72E8()
{
  v0 = sub_21B111DE4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  sub_21B111D64();
  v7 = sub_21B111DC4();
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_21B0C73D8(unsigned int *a1)
{
  v4 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  v8 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName;
  (*(v6 + 104))(v2, *a1, v4);
  LOBYTE(a1) = sub_21AFACAE4(v1 + v8, v2);
  (*(v6 + 8))(v2, v4);
  return a1 & 1;
}

void sub_21B0C74C0(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for SODAAssetProvider(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  v7 = sub_21B111E34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__recipeLocationProvider;
  swift_beginAccess();
  sub_21AF99A84(v1 + v14, &v27, &unk_27CD47240, &unk_21B12B2D0);
  if (v28)
  {
    sub_21AF81D68(&v27, &v29);
    sub_21AF81D68(&v29, a1);
  }

  else
  {
    sub_21AF99BE0(&v27, &unk_27CD47240, &unk_21B12B2D0);
    v15 = sub_21B0C7784();
    v24 = v16;
    v25 = v15;
    sub_21B111D54();
    v17 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_config);
    a1[3] = v5;
    a1[4] = &off_282C930E0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v18 = [objc_opt_self() sharedManager];
    *(v2 + 3) = sub_21AF9406C(0, &qword_27CD47260, 0x277D779F8);
    *(v2 + 4) = &off_282C92FB8;
    *v2 = v18;
    *(v2 + 5) = v25;
    *(v2 + 6) = v24;
    (*(v9 + 16))(&v2[v5[6]], v13, v7);
    v19 = sub_21B111E04();
    v20 = &v2[v5[7]];
    *v20 = v19;
    v20[1] = v21;
    if (v17)
    {
      swift_getObjectType();
      v22 = sub_21AFCD620();
    }

    else
    {
      v22 = 0;
    }

    (*(v9 + 8))(v13, v7);
    v2[v5[8]] = v22 & 1;
    sub_21B0C9774(v2, boxed_opaque_existential_1);
    v30 = v5;
    v31 = &off_282C930E0;
    v23 = __swift_allocate_boxed_opaque_existential_1(&v29);
    sub_21B0C97D8(boxed_opaque_existential_1, v23);
    swift_beginAccess();
    sub_21B0C983C(&v29, v3 + v14);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B0C7784()
{
  v1 = (v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__activityMonitor);
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__activityMonitor))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__activityMonitor);
  }

  else
  {
    type metadata accessor for SODAActivityMonitor();
    v2 = swift_allocObject();
    type metadata accessor for ActivityMonitor();
    swift_allocObject();
    *(v2 + 16) = sub_21B0B522C();
    v3 = sub_21AFD0228();
    *v1 = v2;
    v1[1] = v3;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_21B0C7834(uint64_t a1)
{
  v2 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  MEMORY[0x21CEE9770](0x6174537478656E2ELL, 0xEA00000000007472);
  return v2;
}

uint64_t sub_21B0C7890()
{
  sub_21B112904();
  v0 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();

  MEMORY[0x21CEE9770](0xD000000000000019, 0x800000021B141830);
  return v0;
}

uint64_t sub_21B0C7920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  v12 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_cutoffTime;
  sub_21B110F74();
  sub_21B110F44();
  v21 = v20;
  (*(v14 + 8))(v18, v12);
  *(v7 + v19) = v21;
  *(v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_ignoreMaximumLookbackTime) = 0;
  v22 = v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__recipeLocationProvider;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = (v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__activityMonitor);
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName;
  v25 = sub_21B111DA4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v7 + v24, a1, v25);
  if (a5)
  {
    v27 = a5;
  }

  else
  {
    sub_21AF9406C(0, &qword_27CD437B8, 0x277CBEBD0);
    v27 = sub_21B0C7218();
  }

  *(v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults) = v27;
  *v23 = a2;
  v23[1] = a3;
  v28 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_21B0C92D4(a4, v22);
  swift_endAccess();
  v29 = static ConfigPlistLoader.loadConfig(fileManager:userDefaults:)(a6, a5);

  swift_unknownObjectRelease();
  sub_21AF99BE0(a4, &unk_27CD47240, &unk_21B12B2D0);
  (*(v26 + 8))(a1, v25);
  *(v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_config) = v29;
  *(v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_fileManager) = a6;
  return v7;
}

uint64_t sub_21B0C7BE0(uint64_t (*a1)(void))
{
  v2 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults);
  a1();
  v3 = sub_21B1123D4();

  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_21B112864();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21AF99BE0(v9, &unk_27CD47250, &qword_21B12A130);
    return 0;
  }
}

void sub_21B0C7D00(uint64_t a1, char a2, void (*a3)(uint64_t, __n128), __n128 a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults);
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    a1 = sub_21B112674();
    v7 = a1;
  }

  a3(a1, a4);
  v8 = sub_21B1123D4();

  [v6 setValue:v7 forKey:v8];
  swift_unknownObjectRelease();
}

uint64_t sub_21B0C7DA4@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_21B111DE4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = sub_21B111E34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  sub_21B0C74C0(v32);
  __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  sub_21B111D54();
  v15 = sub_21B111E14();
  v28 = v16;
  v29 = v15;
  (*(v10 + 8))(v14, v8);
  sub_21B111D64();
  v17 = sub_21B111DB4();
  v19 = v18;
  (*(v3 + 8))(v7, v1);
  v20 = sub_21B111D34();
  v22 = v21;
  v23 = sub_21B111D24();
  v25 = v24;
  v31[3] = &type metadata for RecipeAssetSpecifier;
  v31[4] = &off_282C96F80;
  v26 = swift_allocObject();
  v31[0] = v26;
  v26[2] = v29;
  v26[3] = v28;
  v26[4] = v17;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v22;
  v26[8] = v23;
  v26[9] = v25;
  v26[10] = v23;
  v26[11] = v25;

  sub_21AFC5C84(v31, a1);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_21B0C7FD4()
{
  v1 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName, v1);
  v8 = (*(v3 + 88))(v7, v1);
  if (v8 == *MEMORY[0x277D39E10])
  {
    v9 = &unk_282C8D8D0;
    return sub_21AF9EBB0(v9);
  }

  if (v8 == *MEMORY[0x277D39E08])
  {
    v9 = &unk_282C8D8F8;
    return sub_21AF9EBB0(v9);
  }

  if (v8 == *MEMORY[0x277D39DF8])
  {
    v9 = &unk_282C8D920;
    return sub_21AF9EBB0(v9);
  }

  if (v8 == *MEMORY[0x277D39E00])
  {
    v9 = &unk_282C8D948;
    return sub_21AF9EBB0(v9);
  }

  OUTLINED_FUNCTION_9_13();
  OUTLINED_FUNCTION_0_21();
  result = sub_21B1129C4(v11, v12, v13, v14, v15, v16, 44, 2, 186);
  __break(1u);
  return result;
}

void sub_21B0C815C(uint64_t a1@<X8>)
{
  v3 = sub_21B110CA4();
  OUTLINED_FUNCTION_1();
  v37 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v38 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults);
  v25 = sub_21B1123D4();
  LODWORD(v24) = [v24 BOOLForKey_];

  if (!v24)
  {
    sub_21B1112C4();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X3, X16 }
  }

  sub_21B111A34();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v9);
  sub_21AF99A84(v23, v18, &qword_27CD43750, &qword_21B117A30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v9);
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v18, &qword_27CD43750, &qword_21B117A30);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v9);
    v29 = [objc_opt_self() defaultManager];
    v30 = [v29 temporaryDirectory];

    sub_21B110D34();
    sub_21AF99BE0(v23, &qword_27CD43750, &qword_21B117A30);
    v31 = __swift_getEnumTagSinglePayload(v21, 1, v9);
    v32 = v38;
    if (v31 != 1)
    {
      sub_21AF99BE0(v21, &qword_27CD43750, &qword_21B117A30);
    }
  }

  else
  {
    v39 = 0x6F4C657069636572;
    v40 = 0xEA00000000007367;
    v33 = v37;
    (*(v37 + 104))(v8, *MEMORY[0x277CC91D8], v3);
    sub_21AFC921C();
    sub_21B110D84();
    (*(v33 + 8))(v8, v3);
    sub_21AF99BE0(v23, &qword_27CD43750, &qword_21B117A30);
    v32 = v38;
    (*(v38 + 8))(v18, v9);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v9);
    (*(v32 + 32))(v14, v21, v9);
  }

  (*(v32 + 32))(a1, v14, v9);
  v34 = *MEMORY[0x277D3DF68];
  sub_21B1112C4();
  OUTLINED_FUNCTION_4_1();
  (*(v35 + 104))(a1, v34);
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B0C8640()
{
  v1 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName, v1);
  v8 = (*(v3 + 88))(v7, v1);
  if (v8 == *MEMORY[0x277D39E10])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D39E08])
  {
    goto LABEL_6;
  }

  if (v8 == *MEMORY[0x277D39DF8])
  {
LABEL_2:
    v9 = 1;
    return v9 & 1;
  }

  if (v8 == *MEMORY[0x277D39E00])
  {
LABEL_6:
    v9 = sub_21B0C8798();
    return v9 & 1;
  }

  OUTLINED_FUNCTION_9_13();
  OUTLINED_FUNCTION_0_21();
  result = OUTLINED_FUNCTION_10_12(v11, v12, v13, v14, v15, v16, v17, v18, 146);
  __break(1u);
  return result;
}

uint64_t sub_21B0C8798()
{
  v1 = v0;
  v48 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  sub_21B0C8B1C(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_21AF99BE0(v10, &qword_27CD42C28, &unk_21B113F30);
    OUTLINED_FUNCTION_9_13();
    v47 = 156;
    OUTLINED_FUNCTION_0_21();
    result = OUTLINED_FUNCTION_10_12(v39, v40, v41, v42, v43, v44, v45, v46, v47);
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v19, v10, v11);
    (*(v13 + 16))(v17, v19, v11);
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v20 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults);
    v21 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_fileManager);
    type metadata accessor for RegisteredRecipeEnvironment(0);
    swift_allocObject();
    v22 = v20;
    sub_21B0C7920(v17, 0, 0, v49, v20, v21);
    v23 = sub_21B0C7B98();
    LOBYTE(v21) = v24;

    v25 = sub_21B0C7B98();
    v27 = sub_21AFC9A34(v23, v21 & 1, v25, v26 & 1);
    if (v28)
    {
      (*(v13 + 8))(v19, v11);
      return 0;
    }

    else
    {
      v30 = *&v27;
      sub_21B110F74();
      sub_21B110F44();
      v32 = v31;
      (*(v3 + 8))(v7, v48);
      v33 = sub_21B0C7BC8();
      sub_21AFC9BB4(v33, v34 & 1, *&v32, v30);
      v36 = v35.n128_f64[0];
      sub_21B0C7CE8(v32, 0, v35);
      sub_21B0C96FC(COERCE_DOUBLE(1), 1.0);
      v38 = v37;
      (*(v13 + 8))(v19, v11);
      return v38 <= v36;
    }
  }

  return result;
}

uint64_t sub_21B0C8B1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  (*(v7 + 16))(v2, v3, v5);
  v9 = (*(v7 + 88))(v2, v5);
  if (v9 == *MEMORY[0x277D39E10])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D39E08])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D39DF8])
  {
LABEL_2:
    v10 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v10, 1, v5);
  }

  if (v9 == *MEMORY[0x277D39E00])
  {
LABEL_6:
    (*(v7 + 104))(a1);
    v10 = 0;
    return __swift_storeEnumTagSinglePayload(a1, v10, 1, v5);
  }

  OUTLINED_FUNCTION_9_13();
  OUTLINED_FUNCTION_0_21();
  result = OUTLINED_FUNCTION_10_12(v12, v13, v14, v15, v16, v17, v18, v19, 203);
  __break(1u);
  return result;
}

void sub_21B0C8CA0()
{
  v1 = sub_21B111DE4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = sub_21B111E34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  v12 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = sub_21B111D74();
  v20 = *(v19 + 16);
  if (v20)
  {
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v43 = *(v21 + 56);
    v44 = v22;
    v41 = (v3 + 8);
    v42 = (v10 + 8);
    v45 = v12;
    v40 = (v21 - 8);
    do
    {
      v48 = v20;
      v44(v18, v23, v12);
      sub_21B111D54();
      v24 = sub_21B111E14();
      v46 = v25;
      v47 = v24;
      (*v42)(v0, v8);
      sub_21B111D64();
      v26 = v8;
      v27 = sub_21B111DB4();
      v28 = v0;
      v30 = v29;
      (*v41)(v7, v1);
      v31 = v18;
      v32 = v7;
      v33 = sub_21B111D34();
      v34 = v1;
      v36 = v35;
      v37 = sub_21B111D24();
      v49[0] = v47;
      v49[1] = v46;
      v49[2] = v27;
      v49[3] = v30;
      v8 = v26;
      v0 = v28;
      v12 = v45;
      v49[4] = v33;
      v49[5] = v36;
      v7 = v32;
      v1 = v34;
      v18 = v31;
      v49[6] = v37;
      v49[7] = v38;
      v49[8] = v37;
      v49[9] = v38;

      sub_21B0C98AC(v49);
      sub_21B0CA094(v49);
      (*v40)(v31, v45);
      v23 += v43;
      v20 = v48 - 1;
    }

    while (v48 != 1);

    OUTLINED_FUNCTION_77();
  }

  else
  {
    OUTLINED_FUNCTION_77();
  }
}

uint64_t sub_21B0C8F9C()
{
  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName;
  sub_21B111DA4();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);

  swift_unknownObjectRelease();
  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__recipeLocationProvider, &unk_27CD47240, &unk_21B12B2D0);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21B0C9054()
{
  sub_21B0C8F9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RegisteredRecipeEnvironment(uint64_t a1)
{
  result = qword_27CD47230;
  if (!qword_27CD47230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0C9100(uint64_t a1)
{
  result = sub_21B111DA4();
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

void (*sub_21B0C921C(uint64_t a1))(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = v1;
  *a1 = sub_21B0C7B98();
  *(a1 + 8) = v3 & 1;
  return sub_21B0C926C;
}

uint64_t sub_21B0C92D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47240, &unk_21B12B2D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21B0C9344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_21B1123D4();

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47280, &qword_21B12A150);
    v11 = sub_21B1122E4();

    if (a4)
    {
LABEL_3:
      v12 = sub_21B1122E4();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = sub_21B110F84();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v13) != 1)
  {
    v14 = sub_21B110F14();
    (*(*(v13 - 8) + 8))(a5, v13);
  }

  v15 = [v6 initWithName:v10 assetSets:v11 usageAliases:v12 expires:v14];

  return v15;
}

id sub_21B0C94B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_21B1123D4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_21B0C9514(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21B0C960C;

  return v6(a1);
}

uint64_t sub_21B0C960C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_6_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_21B0C96FC(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_21B0B33E8(0x20000000000001uLL);
  }
}

uint64_t sub_21B0C9774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SODAAssetProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C97D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SODAAssetProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C983C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47240, &unk_21B12B2D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C98AC(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47268, &qword_21B12A138);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v59 - v5;
  v60 = sub_21B110F84();
  v62 = *(v60 - 8);
  v7 = MEMORY[0x28223BE20](v60);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v67[3] = &type metadata for RecipeAssetSpecifier;
  v67[4] = &off_282C96F80;
  v10 = swift_allocObject();
  v67[0] = v10;
  memcpy((v10 + 16), a1, 0x50uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47278, &qword_21B12A148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D90;
  strcpy((inited + 32), "com.apple.odla");
  *(inited + 47) = -18;
  memcpy(__dst, (v10 + 16), sizeof(__dst));
  v12 = __dst[2];
  v13 = __dst[3];
  v15 = __dst[4];
  v14 = __dst[5];
  sub_21B0CA0E8(a1, v68);
  *(inited + 48) = sub_21B0E3CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47280, &qword_21B12A150);
  v16 = sub_21B112334();
  sub_21B110F64();
  sub_21B110EE4();
  v68[0] = 0x2D73657069636572;
  v68[1] = 0xE800000000000000;
  v17 = v13;
  v18 = v60;
  MEMORY[0x21CEE9770](v12, v17);
  MEMORY[0x21CEE9770](45, 0xE100000000000000);
  MEMORY[0x21CEE9770](v15, v14);
  v19 = v68[0];
  v20 = v68[1];
  v21 = *(v62 + 16);
  v61 = v9;
  v21(v6, v9, v18);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
  v22 = objc_allocWithZone(MEMORY[0x277D77A08]);
  v23 = sub_21B0C9344(v19, v20, v16, 0, v6);
  if (v23)
  {
    v24 = v23;
    if (qword_2811FAAD8 != -1)
    {
      swift_once();
    }

    v25 = sub_21B1122D4();
    __swift_project_value_buffer(v25, qword_2811FAB28);
    sub_21AF92198(v67, &v65);
    v26 = sub_21B1122B4();
    v27 = sub_21B1126F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64[0] = v29;
      *v28 = 136315138;
      v30 = __swift_project_boxed_opaque_existential_0(&v65, v66);
      memcpy(v68, v30, sizeof(v68));
      v31 = sub_21B0E3C60();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(&v65);
      v34 = sub_21AFCEC24(v31, v33, v64);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_21AF80000, v26, v27, "Subscribing to known assetSpecifierID: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x21CEEA9A0](v29, -1, -1);
      MEMORY[0x21CEEA9A0](v28, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v65);
    }

    v54 = sub_21B112654();
    v55 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v54);
    sub_21AF92198(v67, &v65);
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    sub_21AF81D68(&v65, (v56 + 4));
    v56[9] = v24;
    v57 = v24;
    sub_21B0C6F34(0, 0, v55, &unk_21B12A158, v56);

    (*(v62 + 8))(v61, v18);
  }

  else
  {
    v35 = v18;
    if (qword_2811FAAD8 != -1)
    {
      swift_once();
    }

    v36 = sub_21B1122D4();
    __swift_project_value_buffer(v36, qword_2811FAB28);
    sub_21AF92198(v67, &v65);
    sub_21AF92198(v67, v64);
    v37 = sub_21B1122B4();
    v38 = sub_21B112704();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v63 = v40;
      *v39 = 136315650;
      v41 = __swift_project_boxed_opaque_existential_0(&v65, v66);
      v43 = v41[2];
      v42 = v41[3];
      v44 = v41[4];
      v45 = v41[5];
      v68[0] = 0x2D73657069636572;
      v68[1] = 0xE800000000000000;
      MEMORY[0x21CEE9770](v43, v42);
      MEMORY[0x21CEE9770](45, 0xE100000000000000);
      MEMORY[0x21CEE9770](v44, v45);
      v46 = v68[0];
      v47 = v68[1];
      __swift_destroy_boxed_opaque_existential_0(&v65);
      v48 = sub_21AFCEC24(v46, v47, &v63);

      *(v39 + 4) = v48;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_21AFCEC24(0x6C7070612E6D6F63, 0xEE00616C646F2E65, &v63);
      *(v39 + 22) = 2080;
      v49 = __swift_project_boxed_opaque_existential_0(v64, v64[3]);
      memcpy(v68, v49, sizeof(v68));
      sub_21B0E3CF0();
      v50 = sub_21B112314();
      v52 = v51;

      __swift_destroy_boxed_opaque_existential_0(v64);
      v53 = sub_21AFCEC24(v50, v52, &v63);

      *(v39 + 24) = v53;
      _os_log_impl(&dword_21AF80000, v37, v38, "Failed to initialize UAFAssetSetSubscription for subscription name %s, assetSetName: %s, usageTypes: %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEEA9A0](v40, -1, -1);
      MEMORY[0x21CEEA9A0](v39, -1, -1);

      (*(v62 + 8))(v61, v35);
    }

    else
    {

      (*(v62 + 8))(v61, v35);
      __swift_destroy_boxed_opaque_existential_0(&v65);
      __swift_destroy_boxed_opaque_existential_0(v64);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t sub_21B0CA144(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[9];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_24(v6);
  *v7 = v8;
  v7[1] = sub_21B0CA1FC;

  return sub_21AFC8478(a1, v3, v4, (v1 + 4), v5);
}

uint64_t sub_21B0CA1FC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_6_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21B0CA2E8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_24(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_23(v1);

  return v4(v3);
}

uint64_t sub_21B0CA380()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_24(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_23(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_21B1129C4(a1, a2, a3, a4, a5, a6, 57, 2, a9);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.init(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v35 = a1;
  v38 = a2;
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  MEMORY[0x28223BE20](v4);
  v34[0] = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B110D94();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = MEMORY[0x277D84F90];
  sub_21B111EB4();
  v13 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  OUTLINED_FUNCTION_1_21(v13);
  v14 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  OUTLINED_FUNCTION_1_21(v14);
  type metadata accessor for UploadBlock();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_21B1123D4();
  v18 = sub_21B1123D4();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_21B110D34();

    (*(v7 + 32))(v12, v10, v6);
    sub_21B110B84();
    swift_allocObject();
    sub_21B110B74();
    v20 = v34[1];
    v21 = sub_21B110DC4();
    if (!v20)
    {
      v26 = v21;
      v27 = v22;
      sub_21AFC5618();
      sub_21B110B64();
      v28 = OUTLINED_FUNCTION_0_22();
      v29(v28);
      sub_21AF99728(v26, v27);

      v37 = v36;
      v30 = v35;
      v31 = v38;
      sub_21AF99818(v35, v38);
      sub_21AF99728(0, 0xC000000000000000);
      sub_21AF99818(v30, v31);
      sub_21AF99728(v30, v31);
      v36.type._countAndFlagsBits = v30;
      v36.type._object = v31;
      v36.name._countAndFlagsBits = 0;
      v32 = v34[0];
      sub_21B0CA8D8(&v37, v34[0]);
      sub_21B0CAA60(&v37);
      sub_21AF99728(v30, v31);
      sub_21AF99728(v36.type._countAndFlagsBits, v36.type._object);
      sub_21B0CA87C(a3);
      return sub_21B0CAAB4(v32, a3);
    }

    v23 = OUTLINED_FUNCTION_0_22();
    v24(v23);
  }

  else
  {
    sub_21AFC53EC();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  sub_21B0CA87C(a3);
  return sub_21AF99728(v35, v38);
}

uint64_t sub_21B0CA87C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SwiftAvro::AvroRecordSchema *sub_21B0CA8D8@<X0>(SwiftAvro::AvroRecordSchema *result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v5 = *(v2 + 16);
  v6 = __OFADD__(v5, 10);
  v7 = v5 + 10;
  if (v6)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v23 = a2;
  *(v4 + 16) = v7;
  sub_21AFC5454(result, &v16);
  AvroRecord.init(schema:)(&v17, v8);
  rawValue = v8->fields._rawValue;
  v10 = rawValue[2];
  if (!v10)
  {
LABEL_8:
    v22 = v17;
    sub_21B0CAB18();
    v15 = &v22;
    return sub_21AFC5398(v15);
  }

  v11 = rawValue + 6;
  while (1)
  {
    v13 = *(v11 - 2);
    v12 = *(v11 - 1);
    v14 = *v11;

    ByteBuffer.readAvroValue(_:)(v14, v18);
    if (v19 != 255)
    {
      break;
    }

LABEL_7:
    v11 += 3;

    if (!--v10)
    {
      goto LABEL_8;
    }
  }

  v20[0] = v18[0];
  v20[1] = v18[1];
  v20[2] = v18[2];
  v20[3] = v18[3];
  v21 = v19;
  AvroRecord.set(_:forField:)(v20, v13, v12);
  if (!v3)
  {
    sub_21B0CACC8(v18);
    goto LABEL_7;
  }

  sub_21B0CACC8(v18);

  v16 = v17;
  v15 = &v16;
  return sub_21AFC5398(v15);
}

uint64_t sub_21B0CAAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0CAB18()
{
  v0 = sub_21B111F04();
  MEMORY[0x28223BE20](v0 - 8);
  AvroRecord.subscript.getter();
  if (v7 == 255)
  {
    sub_21B0CAD30();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }

  else
  {
    v8 = v6[0];
    v9 = v6[1];
    v10 = v6[2];
    v11 = v6[3];
    v12 = v7;
    AvroValue.getPrimitive<A>()(MEMORY[0x277CC9318], v4);
    if (*(&v4[0] + 1) >> 60 == 15)
    {
      sub_21B0CAD30();
      swift_allocError();
      *v1 = 1;
      swift_willThrow();
    }

    else
    {
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      sub_21B111EF4();
      sub_21AFC5504();
      sub_21B1120E4();
    }

    return sub_21B0CACC8(v6);
  }
}

uint64_t sub_21B0CACC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47288, &unk_21B12A180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B0CAD30()
{
  result = qword_27CD47290;
  if (!qword_27CD47290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranslationUtilError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0CAE64()
{
  result = qword_27CD47298;
  if (!qword_27CD47298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47298);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
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
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21B0CB0E0(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_4_24(a1);
  MEMORY[0x21CEEA150](qword_21B12A3D0[v1]);
  return sub_21B112F14();
}

uint64_t sub_21B0CB7CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_4_24(a1);
  v5 = a3(v4);
  OUTLINED_FUNCTION_7_14(v5, v6);
  return sub_21B112F14();
}

uint64_t sub_21B0CB858(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_4_24(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_3_22(v4, v5, v6);

  return sub_21B112F14();
}

uint64_t sub_21B0CB8A8(char a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](qword_21B12A568[a1]);
  return sub_21B112F14();
}

uint64_t sub_21B0CB8FC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4_24(a1);
  OUTLINED_FUNCTION_0_23(v1);
  return sub_21B112F14();
}

uint64_t sub_21B0CB940(uint64_t a1)
{
  OUTLINED_FUNCTION_4_24(a1);
  MEMORY[0x21CEEA150](a1);
  return sub_21B112F14();
}

uint64_t sub_21B0CB980(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_4_24(a1);
  sub_21B0CB9C0(v3, v1);
  return sub_21B112F14();
}

uint64_t sub_21B0CB9C0(uint64_t a1, char a2)
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBAE0(uint64_t a1, char a2)
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBBC0(uint64_t a1, char a2)
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBC28(uint64_t a1, char a2)
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBCA4(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_6_18();
      break;
    default:
      break;
  }

  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBDC8(uint64_t a1, char a2)
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBE30(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_22();
  }

  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBEB0(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_6_18();
      break;
    default:
      break;
  }

  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CC164(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_24(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x5F747865746E6F63;
    }

    else
    {
      v5 = 0x64616F6C796170;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_22();
  }

  OUTLINED_FUNCTION_5_25(v3, v5, v4);

  return sub_21B112F14();
}

uint64_t sub_21B0CC1E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_24(a1, a2);
  if (v2)
  {
    v5 = 0x64616F6C796170;
  }

  else
  {
    v5 = 0x6469776F72;
  }

  OUTLINED_FUNCTION_5_25(v3, v5, v4);

  return sub_21B112F14();
}

uint64_t sub_21B0CC26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_21B112EC4();
  v5 = a3(a2);
  OUTLINED_FUNCTION_3_22(v5, v6, v7);

  return sub_21B112F14();
}

uint64_t sub_21B0CC2C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_24(a1, a2);
  if (v2)
  {
    v5 = 0x6867696C746F7073;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  OUTLINED_FUNCTION_5_25(v3, v5, v4);

  return sub_21B112F14();
}

uint64_t sub_21B0CC340(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_24(a1, a2);
  if (v2)
  {
    v5 = 0x736D756E65;
  }

  else
  {
    v5 = 0x73616D65686373;
  }

  OUTLINED_FUNCTION_5_25(v3, v5, v4);

  return sub_21B112F14();
}

uint64_t sub_21B0CC3AC(uint64_t a1)
{
  v1 = sub_21B112EC4();
  OUTLINED_FUNCTION_0_23(v1);
  return sub_21B112F14();
}

uint64_t sub_21B0CC3E4(uint64_t a1, char a2)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](qword_21B12A3D0[a2]);
  return sub_21B112F14();
}

uint64_t sub_21B0CC434(uint64_t a1, char a2)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](qword_21B12A568[a2]);
  return sub_21B112F14();
}

uint64_t sub_21B0CC488(uint64_t a1, uint64_t a2)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a2);
  return sub_21B112F14();
}

uint64_t sub_21B0CCA8C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_21B112EC4();
  v6 = a4(v5);
  OUTLINED_FUNCTION_7_14(v6, v7);
  return sub_21B112F14();
}

uint64_t sub_21B0CCAE0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_24(a1, a2);
  if (v2)
  {
    v5 = 1801807223;
  }

  else
  {
    v5 = 7954788;
  }

  OUTLINED_FUNCTION_5_25(v3, v5, v4);

  return sub_21B112F14();
}

uint64_t sub_21B0CCB40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_24(a1, a2);
  sub_21B0CB9C0(v4, v2);
  return sub_21B112F14();
}

uint64_t sub_21B0CCB7C(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_21B0CD19C(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_21B0CD240@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0CCB7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B0CD26C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0CD188(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21B0CD2E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21B0CD19C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21B0CD328()
{
  result = qword_27CD472A0;
  if (!qword_27CD472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472A0);
  }

  return result;
}

unint64_t sub_21B0CD380()
{
  result = qword_27CD472A8;
  if (!qword_27CD472A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1, ...)
{

  return _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

void *OUTLINED_FUNCTION_2_24(uint64_t a1, uint64_t a2, ...)
{

  return sub_21B112EC4();
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

void *OUTLINED_FUNCTION_4_24(uint64_t a1, ...)
{

  return sub_21B112EC4();
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t OUTLINED_FUNCTION_7_14(uint64_t a1, uint64_t a2, ...)
{

  return sub_21B112374();
}

uint64_t type metadata accessor for LegacyMessageManifest(uint64_t a1)
{
  result = qword_27CD472B0;
  if (!qword_27CD472B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0CD52C(uint64_t a1)
{
  result = sub_21B111954();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_21B0CD598(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  return v2 != 0;
}

BOOL sub_21B0CD5EC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0CD598(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_21B0CD65C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0CD598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0CD688(uint64_t a1)
{
  v2 = sub_21B0CDBB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0CD6C4(uint64_t a1)
{
  v2 = sub_21B0CDBB4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21B0CD700@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = type metadata accessor for LegacyFieldManifest(0);
  OUTLINED_FUNCTION_1();
  v62 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v61 = v6 - v5;
  v7 = sub_21B111954();
  OUTLINED_FUNCTION_1();
  v63 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD472C0, &qword_21B12A9A0);
  OUTLINED_FUNCTION_1();
  v60 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for LegacyMessageManifest(0);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0CDBB4();
  v22 = v64;
  sub_21B112F34();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v64 = v21;
  v56 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD472D0, &unk_21B12A9A8);
  sub_21B0CDC08();
  sub_21B112A84();
  v23 = v17;
  v25 = v65;
  v54 = v7;
  v55 = a1;
  v52 = v23;
  v53 = v13;
  v51 = 0;
  if (!v65)
  {
    v25 = sub_21B112334();
  }

  v27 = v63;
  v26 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47168, &unk_21B129850);
  result = sub_21B1129F4();
  v28 = result;
  v29 = 0;
  v30 = v25 + 64;
  v31 = 1 << *(v25 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v25 + 64);
  v34 = (v31 + 63) >> 6;
  v57 = result + 8;
  v58 = v25;
  while (1)
  {
    v35 = v61;
    if (!v33)
    {
      break;
    }

    v36 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
LABEL_16:
    v41 = v36 | (v29 << 6);
    v42 = (*(v58 + 48) + 16 * v41);
    v43 = *v42;
    v44 = v42[1];
    sub_21B0CDCEC(*(v58 + 56) + *(v62 + 72) * v41, v61);
    *(v57 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v45 = (v28[6] + 16 * v41);
    *v45 = v43;
    v45[1] = v44;
    v46 = v28[7];
    v47 = sub_21B111874();
    result = (*(*(v47 - 8) + 32))(v46 + *(*(v47 - 8) + 72) * v41, v35, v47);
    v48 = v28[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_20;
    }

    v28[2] = v50;

    v27 = v63;
    v26 = v64;
  }

  v37 = v29;
  v38 = v56;
  v39 = v60;
  while (1)
  {
    v29 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v29 >= v34)
    {

      sub_21B111934();
      (*(v39 + 8))(v52, v53);
      (*(v27 + 32))(v26, v38, v54);
      sub_21B0CDD50(v26, v59);
      return __swift_destroy_boxed_opaque_existential_0(v55);
    }

    v40 = *(v30 + 8 * v29);
    ++v37;
    if (v40)
    {
      v36 = __clz(__rbit64(v40));
      v33 = (v40 - 1) & v40;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_21B0CDBB4()
{
  result = qword_27CD472C8;
  if (!qword_27CD472C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472C8);
  }

  return result;
}

unint64_t sub_21B0CDC08()
{
  result = qword_27CD472D8;
  if (!qword_27CD472D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD472D0, &unk_21B12A9A8);
    sub_21B0CDC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472D8);
  }

  return result;
}

unint64_t sub_21B0CDC94()
{
  result = qword_27CD472E0;
  if (!qword_27CD472E0)
  {
    type metadata accessor for LegacyFieldManifest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472E0);
  }

  return result;
}

uint64_t sub_21B0CDCEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyFieldManifest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0CDD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyMessageManifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LegacyMessageManifest.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0CDE64()
{
  result = qword_27CD472E8;
  if (!qword_27CD472E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472E8);
  }

  return result;
}

unint64_t sub_21B0CDEBC()
{
  result = qword_27CD472F0;
  if (!qword_27CD472F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472F0);
  }

  return result;
}

unint64_t sub_21B0CDF14()
{
  result = qword_27CD472F8;
  if (!qword_27CD472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472F8);
  }

  return result;
}

uint64_t type metadata accessor for LegacyEnumManifest(uint64_t a1)
{
  result = qword_27CD47300;
  if (!qword_27CD47300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0CDFDC(uint64_t a1)
{
  result = sub_21B111834();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0CE048(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21B112D04();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21B0CE0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0CE048(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21B0CE0FC(uint64_t a1)
{
  v2 = sub_21B0CE3D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0CE138(uint64_t a1)
{
  v2 = sub_21B0CE3D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B0CE174@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47310, &qword_21B12AB50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = type metadata accessor for LegacyEnumManifest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0CE3D0();
  sub_21B112F34();
  if (!v2)
  {
    v11 = v5;
    v12 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47320, &qword_21B12AB58);
    sub_21B0CE424();
    sub_21B112A84();
    if (!v16)
    {
      sub_21B112334();
    }

    sub_21B0CE4A8(MEMORY[0x277D84F90]);
    sub_21B111824();
    (*(v11 + 8))(v7, v4);
    sub_21B0CE5B4(v10, v12);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21B0CE3D0()
{
  result = qword_27CD47318;
  if (!qword_27CD47318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47318);
  }

  return result;
}

unint64_t sub_21B0CE424()
{
  result = qword_27CD47328;
  if (!qword_27CD47328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47320, &qword_21B12AB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47328);
  }

  return result;
}

unint64_t sub_21B0CE4A8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = MEMORY[0x277D84F98];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47330, &qword_21B12AB60);
  v2 = sub_21B112A14();
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_9:

    return v2;
  }

  v4 = (a1 + 48);
  while (1)
  {
    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v7 = *v4;
    result = sub_21B0CE618(v6);
    if (v9)
    {
      break;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v2[6] + 8 * result) = v6;
    v10 = (v2[7] + 16 * result);
    *v10 = v5;
    v10[1] = v7;
    v11 = v2[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      goto LABEL_11;
    }

    v4 += 3;
    v2[2] = v13;
    sub_21AF99818(v5, v7);
    if (!--v3)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21B0CE5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyEnumManifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B0CE618(uint64_t a1)
{
  v2 = sub_21B112EB4();

  return sub_21B0CE65C(a1, v2);
}

unint64_t sub_21B0CE65C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

_BYTE *storeEnumTagSinglePayload for LegacyEnumManifest.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0CE76C()
{
  result = qword_27CD47338;
  if (!qword_27CD47338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47338);
  }

  return result;
}

unint64_t sub_21B0CE7C4()
{
  result = qword_27CD47340;
  if (!qword_27CD47340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47340);
  }

  return result;
}

unint64_t sub_21B0CE81C()
{
  result = qword_27CD47348;
  if (!qword_27CD47348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47348);
  }

  return result;
}

uint64_t sub_21B0CE870@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  sub_21B110CA4();
  OUTLINED_FUNCTION_1();
  v34 = v3;
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_4_25();
  type metadata accessor for SessionSchemaProvider(v22);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v25 = [v24 resourceURL];

  if (v25)
  {
    sub_21B110D34();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v26, 1, v14);
  sub_21AFA6428(v10, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_21B0D074C(v13);
    sub_21B0D07B4();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    strcpy(v36, "feedback.dsc");
    HIBYTE(v36[6]) = 0;
    v36[7] = -5120;
    v29 = v34;
    v28 = v35;
    (*(v34 + 104))(v6, *MEMORY[0x277CC91D8], v35);
    sub_21AFC921C();
    sub_21B110D84();
    (*(v29 + 8))(v6, v28);
    v30 = *(v16 + 8);
    v30(v13, v14);
    (*(v16 + 32))(v1, v20, v14);
    v31 = v37;
    sub_21B110DC4();
    if (!v31)
    {
      sub_21B1118B4();
    }

    v32 = OUTLINED_FUNCTION_3_23();
    return (v30)(v32);
  }
}

uint64_t sub_21B0CEBD0(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 56);
  for (i = (v3 + 63) >> 6; v5; v2 |= *(*(result + 48) + (v8 | (v7 << 6))) < 2u)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= i)
    {
      return v2 & 1;
    }

    v5 = *(result + 56 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0CEC74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21B0CFF28();
  v4 = MEMORY[0x21CEE9920](v2, &type metadata for SODADataSource, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_21B0CFF7C(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t SODADataSource.hashValue.getter()
{
  v1 = *v0;
  sub_21B112EC4();
  MEMORY[0x21CEEA150](v1);
  return sub_21B112F14();
}

unint64_t sub_21B0CEDAC()
{
  result = qword_27CD47350;
  if (!qword_27CD47350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47350);
  }

  return result;
}

unint64_t sub_21B0CEE04()
{
  result = qword_27CD47358;
  if (!qword_27CD47358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47360, &qword_21B12ACD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SODADataSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21B0CEF58()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v2 = byte_282C8D970[v0 + 32];
    if (v2 <= 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AFCC57C(0, *(v1 + 16) + 1, 1);
      }

      v4 = *(v1 + 16);
      v3 = *(v1 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_21AFCC57C((v3 > 1), v4 + 1, 1);
      }

      *(v1 + 16) = v4 + 1;
      *(v1 + v4 + 32) = v2;
    }

    ++v0;
  }

  while (v0 != 3);

  return sub_21B0CEC74(v1);
}

uint64_t sub_21B0CF044(uint64_t a1, char *a2, char *a3)
{
  v66 = a3;
  v67 = a2;
  v62 = a1;
  v59 = sub_21B111924();
  OUTLINED_FUNCTION_1();
  v61 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v58 = v6 - v7;
  v9 = MEMORY[0x28223BE20](v8);
  v63 = &v56 - v10;
  MEMORY[0x28223BE20](v9);
  v57 = &v56 - v11;
  sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v64 = v12;
  v65 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v60 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_25();
  v17 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v56 - v25;
  v27 = sub_21B111BA4();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_1();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = &v56 - v35;
  sub_21B0D0808(v66, v26);
  (*(v19 + 104))(v23, *MEMORY[0x277D39DD8], v17);
  v37 = v67;
  v38 = v68;
  result = sub_21B111B44();
  if (!v38)
  {
    v66 = v33;
    v67 = v29;
    v68 = v27;
    sub_21B111B94();
    sub_21B110D44();
    v40 = v65 + 8;
    v41 = *(v65 + 8);
    v41(v3, v64);
    v42 = sub_21B1123D4();

    v43 = [v37 fileExistsAtPath_];

    if (v43)
    {
      v65 = v40;
      v44 = v61;
      v45 = v59;
      (*(v61 + 16))(v63, v62, v59);
      v46 = v60;
      v66 = v36;
      sub_21B111B94();
      sub_21B110DC4();
      v41(v46, v64);
      sub_21B1118B4();
      v50 = v67;
      v51 = v63;
      sub_21B111904();
      v52 = (v50 + 8);
      v53 = *(v44 + 8);
      v54 = v62;
      v53(v62, v45);
      v55 = OUTLINED_FUNCTION_3_23();
      (v53)(v55);
      v53(v51, v45);
      (*v52)(v66, v68);
      return (*(v44 + 32))(v54, v57, v45);
    }

    else
    {
      v47 = v66;
      v48 = (v67 + 16);
      v49 = v68;
      (*(v67 + 2))(v66, v36, v68);
      type metadata accessor for DataWarehouseControllerV2();
      swift_allocObject();
      sub_21B0C4B9C(v47);

      return (*(v48 - 1))(v36, v49);
    }
  }

  return result;
}

uint64_t sub_21B0CF5F8(uint64_t (*a1)(uint64_t, id), void *a2, uint64_t a3)
{
  v59 = a3;
  v60 = a2;
  v57 = a1;
  sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v55 = v4;
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v54 = v6 - v5;
  v7 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v53 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v58 = &v53 - v14;
  v15 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v53 - v23;
  v25 = sub_21B111BA4();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  sub_21B0D0808(v59, v24);
  (*(v17 + 104))(v21, *MEMORY[0x277D39DD8], v15);
  v32 = v60;
  v33 = v63;
  result = sub_21B111B44();
  if (!v33)
  {
    v63 = v27;
    v35 = v25;
    v59 = v12;
    v60 = v7;
    v36 = v53;
    sub_21B1110F4();
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_21B112904();

    v61 = 0xD000000000000011;
    v62 = 0x800000021B1418C0;
    v37 = v54;
    sub_21B111B54();
    sub_21AFC9108();
    v38 = v56;
    v39 = sub_21B112B84();
    MEMORY[0x21CEE9770](v39);

    (*(v55 + 8))(v37, v38);
    MEMORY[0x21CEE9770](0x2053412027, 0xE500000000000000);
    v40 = sub_21B111B64();
    MEMORY[0x21CEE9770](v40);

    sub_21B1116F4();
    v56 = v31;

    sub_21B111794();
    v41 = *(v36 + 8);
    v42 = v60;
    v41(v58, v60);
    v58 = sub_21B1110F4();
    type metadata accessor for MetricStore(0);
    v43 = v56;
    v44 = sub_21B111B64();
    sub_21AF97A48(v43, v44, v45, v46, v47, v48, v49, v50, v53, v54);
    v57 = v41;

    v51 = v59;
    sub_21B1116F4();

    sub_21B111794();
    v57(v51, v42);
    OUTLINED_FUNCTION_5_26();
    return v52(v56, v35);
  }

  return result;
}

uint64_t sub_21B0CFB70()
{
  v0 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v6 = (v4 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = sub_21B111D74();
  v27 = MEMORY[0x277D84FA0];
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v2 + 16);
    v12 = v2 + 16;
    v13 = v14;
    v15 = *(v12 + 64);
    v21[1] = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v26 = *(v12 + 56);
    v25 = *MEMORY[0x277D39E10];
    v24 = *MEMORY[0x277D39E08];
    v23 = *MEMORY[0x277D39DF8];
    v22 = *MEMORY[0x277D39E00];
    while (1)
    {
      v13(v9, v16, v0);
      v13(v6, v9, v0);
      v17 = (*(v12 + 72))(v6, v0);
      v18 = &unk_282C8D8D0;
      if (v17 != v25)
      {
        v18 = &unk_282C8D8F8;
        if (v17 != v24)
        {
          v18 = &unk_282C8D920;
          if (v17 != v23)
          {
            v18 = &unk_282C8D948;
            if (v17 != v22)
            {
              break;
            }
          }
        }
      }

      v19 = sub_21AF9EBB0(v18);
      sub_21B0CFDE8(v19);
      (*(v12 - 8))(v9, v0);
      v16 += v26;
      if (!--v11)
      {

        return v27;
      }
    }

    result = sub_21B1129C4("Fatal error", 11, 2, 0, 0xE000000000000000, "SearchOnDeviceAnalytics/SODADataSource.swift", 44, 2, 186);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_21B0CFDE8(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_21B0CFF7C(&v10, *(*(a1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21B0CFEC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21B12AC80;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_21B0CFF28()
{
  result = qword_27CD47368;
  if (!qword_27CD47368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47368);
  }

  return result;
}

BOOL sub_21B0CFF7C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a2);
  v6 = sub_21B112F14();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_21B0D02B8(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

void sub_21B0D006C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F70, &qword_21B1149F8);
  v4 = sub_21B1128C4();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_21B0CFEC4(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_21B112EC4();
    MEMORY[0x21CEEA150](v16);
    v17 = sub_21B112F14();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_21B0D02B8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21B0D006C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_21B0D0530(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_21B112EC4();
      MEMORY[0x21CEEA150](v5);
      v13 = sub_21B112F14();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_21B0D03F0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_21B112E44();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_21B0D03F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F70, &qword_21B1149F8);
  v2 = *v0;
  v3 = sub_21B1128B4();
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

void sub_21B0D0530(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F70, &qword_21B1149F8);
  v4 = sub_21B1128C4();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_21B112EC4();
        MEMORY[0x21CEEA150](v15);
        v16 = sub_21B112F14();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

uint64_t sub_21B0D074C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B0D07B4()
{
  result = qword_27CD47370;
  if (!qword_27CD47370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47370);
  }

  return result;
}

uint64_t sub_21B0D0808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SODADataSourceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0D0928()
{
  result = qword_27CD47378;
  if (!qword_27CD47378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47378);
  }

  return result;
}

uint64_t sub_21B0D09A8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB0, &qword_21B114A20);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_21AF99BE0(a1, &qword_27CD42FB0, &qword_21B114A20);
    sub_21B0D2D18(a2, v9);
    OUTLINED_FUNCTION_1_23();
    sub_21B0D3050(a2, v15);
    return sub_21AF99BE0(v9, &qword_27CD42FB0, &qword_21B114A20);
  }

  else
  {
    sub_21B0D2F84(a1, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_21B0ECAA4();
    *v3 = v19;
    OUTLINED_FUNCTION_1_23();
    return sub_21B0D3050(a2, v17);
  }
}

void *sub_21B0D0B24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_21B0D5594(*(a1 + 16), 0);
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_31_5();
  sub_21B0BFB80(&v9, v3 + v5, v2, a1);
  v7 = v6;
  sub_21AF9C4BC(v9);
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_21B0D0BE4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_10_13(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21B0D2EB0(v4, 1, sub_21B0D4B3C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_26_4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21B0D0CC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_13(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_21B0D2EB0(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_21B0D0DCC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_10_13(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21B0D2EB0(v4, 1, sub_21B0D538C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_26_4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F8, &unk_21B12AF60);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21B0D0EA0(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v3 = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v3);
  v81 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB0, &qword_21B114A20);
  OUTLINED_FUNCTION_25(v14);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v15);
  v89 = &v77 - v16;
  v94 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v88 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  v79 = &v77 - v20;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  v23 = (&v77 - v22);
  v87 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v86 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_35_4();
  v92 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  v85 = v30;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  v91 = &v77 - v32;
  v78 = sub_21B111514();
  OUTLINED_FUNCTION_1();
  v77 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_5_7();
  sub_21B111534();
  v93 = v37;
  result = sub_21B1114F4();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v39 = 0;
      v82 = (v28 + 8);
      v83 = (v28 + 16);
      v97 = MEMORY[0x277D84F98];
      v40 = MEMORY[0x277D84F90];
      v42 = v91;
      v41 = v92;
      v80 = v23;
      v96 = v2;
      v84 = result;
      do
      {
        v95 = v39;
        v43 = v42;
        sub_21B111524();
        v44 = v85;
        (*v83)(v85, v43, v41);
        v45 = v90;

        sub_21AFA65F0(v44, v45, v2);
        sub_21B0D163C();
        v98 = v46;
        *v23 = v40;
        v47 = v94;
        sub_21B111EB4();
        v48 = *(v47 + 24);
        v49 = v87;
        __swift_storeEnumTagSinglePayload(v23 + v48, 1, 1, v87);
        v50 = v2;
        v51 = v86;
        sub_21B0D2F28(v50, v86);
        sub_21AF99BE0(v23 + v48, &qword_27CD42FB8, &qword_21B114A28);
        v52 = v51;
        v53 = v98;
        sub_21B0D2F84(v52, v23 + v48);
        __swift_storeEnumTagSinglePayload(v23 + v48, 0, 1, v49);
        v54 = *(v53 + 16);
        if (v54)
        {
          v99 = v40;
          sub_21AFCC504(0, v54, 0);
          v55 = v99;
          OUTLINED_FUNCTION_31_5();
          v57 = v53 + v56;
          v59 = *(v58 + 72);
          do
          {
            OUTLINED_FUNCTION_2_25();
            sub_21B0D2F28(v57, v7);
            v60 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
            __swift_storeEnumTagSinglePayload(v13, 1, 1, v60);
            sub_21B111EB4();
            sub_21AF99BE0(v13, &qword_27CD42F90, &unk_21B115FC0);
            OUTLINED_FUNCTION_13_7();
            v61 = OUTLINED_FUNCTION_25_3();
            sub_21B0D2F84(v61, v62);
            swift_storeEnumTagMultiPayload();
            __swift_storeEnumTagSinglePayload(v13, 0, 1, v60);
            v99 = v55;
            v64 = *(v55 + 16);
            v63 = *(v55 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_21AFCC504(v63 > 1, v64 + 1, 1);
              v55 = v99;
            }

            *(v55 + 16) = v64 + 1;
            OUTLINED_FUNCTION_31_5();
            sub_21B0D2F84(v13, v55 + v65 + *(v9 + 72) * v64);
            v57 += v59;
            --v54;
          }

          while (v54);

          v66 = v89;
          v47 = v94;
          v23 = v80;
        }

        else
        {

          v55 = v40;
          v66 = v89;
        }

        *v23 = v55;
        v2 = v96;
        sub_21B0DF1B4(v96, v97, v66);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v47);
        v68 = v95;
        if (EnumTagSinglePayload == 1)
        {
          sub_21AF99BE0(v66, &qword_27CD42FB0, &qword_21B114A20);
          OUTLINED_FUNCTION_15_8();
          sub_21B0D2F28(v23, v88);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_24_5();
          sub_21B0ECAA4();
          v97 = v99;
        }

        else
        {
          v69 = v79;
          sub_21B0D2F84(v66, v79);

          sub_21B0D0CC8(v70);
          OUTLINED_FUNCTION_15_8();
          sub_21B0D2F28(v69, v88);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_24_5();
          sub_21B0ECAA4();
          v97 = v99;
          OUTLINED_FUNCTION_14_9();
          v71 = v69;
          v2 = v96;
          sub_21B0D3050(v71, v72);
        }

        v39 = v68 + 1;
        OUTLINED_FUNCTION_1_23();
        sub_21B0D3050(v2, v73);
        v42 = v91;
        v41 = v92;
        (*v82)(v91, v92);
        OUTLINED_FUNCTION_14_9();
        sub_21B0D3050(v23, v74);
        v40 = MEMORY[0x277D84F90];
      }

      while (v39 != v84);
    }

    else
    {
      v97 = MEMORY[0x277D84F98];
    }

    v76 = sub_21B0D0B24(v75);
    (*(v77 + 8))(v93, v78);

    return v76;
  }

  return result;
}

void sub_21B0D163C()
{
  OUTLINED_FUNCTION_45();
  v1 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v178 - v9;
  MEMORY[0x28223BE20](v8);
  v192 = v178 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FC0, &qword_21B114A30);
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v15 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v200 = (v178 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v19 = OUTLINED_FUNCTION_25(v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = OUTLINED_FUNCTION_35_4();
  v24 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v23);
  v184 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_9_1();
  v187 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  v189 = v178 - v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  v30 = v178 - v29;
  *v30 = 0;
  v30[8] = 1;
  *(v30 + 2) = 0;
  *(v30 + 12) = -258;
  *(v30 + 7) = 0;
  v188 = v178 - v29;
  sub_21B111EB4();
  v194 = sub_21B111294();
  sub_21B0DF074(0x697461636F766E69, 0xEF657079745F6E6FLL, v194, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_21AF99BE0(v0, &qword_27CD42C48, &qword_21B1141C0);
  }

  else
  {
    sub_21B111314();
    v31 = (*(v3 + 8))(v0, v1);
    if (OUTLINED_FUNCTION_36_4(v31, v32, v33, MEMORY[0x277D837D0]))
    {
      sub_21B0D2638(*(&v201[0] + 1), &v203);
      v34 = v204;
      v35 = v188;
      *(v188 + 16) = v203;
      *(v35 + 24) = v34;
    }
  }

  v36 = v15;
  OUTLINED_FUNCTION_5_7();
  sub_21B0DF074(0xD000000000000010, v37, v194, v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v1);
  v193 = v3;
  v185 = v7;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD42C48, &qword_21B1141C0);
  }

  else
  {
    sub_21B111314();
    v40 = OUTLINED_FUNCTION_25_3();
    v42 = v41(v40);
    if (OUTLINED_FUNCTION_36_4(v42, v43, v44, MEMORY[0x277D839B0]))
    {
      *(v188 + 25) = v201[0];
    }
  }

  v45 = v200;
  v46 = 0;
  v48 = v194 + 64;
  v47 = *(v194 + 64);
  v49 = 1 << *(v194 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v47;
  v52 = (v49 + 63) >> 6;
  v199 = (v193 + 32);
  v197 = v193 + 8;
  v190 = MEMORY[0x277D84F90];
  *&v39 = 136315394;
  v181 = v39;
  v191 = v10;
  v195 = v52;
  v196 = v194 + 64;
  v198 = (v193 + 16);
  if ((v50 & v47) != 0)
  {
    while (1)
    {
      v53 = v36;
      v54 = v46;
LABEL_17:
      v55 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v56 = v55 | (v54 << 6);
      v57 = (*(v194 + 48) + 16 * v56);
      v58 = *v57;
      v59 = v57[1];
      v60 = v193;
      v61 = v192;
      (*(v193 + 16))(v192, *(v194 + 56) + *(v193 + 72) * v56, v1);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
      v63 = *(v62 + 48);
      *v53 = v58;
      *(v53 + 1) = v59;
      v64 = *(v60 + 32);
      v65 = v61;
      v36 = v53;
      v66 = v1;
      v64(&v53[v63], v65, v1);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v62);

      v10 = v191;
      v45 = v200;
LABEL_18:
      sub_21B0D2FE0(v36, v45);
      v67 = OUTLINED_FUNCTION_25_3();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
      if (__swift_getEnumTagSinglePayload(v45, 1, v69) == 1)
      {
        OUTLINED_FUNCTION_12_10();
        sub_21B0D3050(v188, v177);

        return;
      }

      v70 = v36;
      v71 = *v45;
      v72 = v45[1];
      (*v199)(v10, v45 + *(v69 + 48), v66);
      sub_21AFB4EF8(v71, v72, &v203);
      v73 = v203;
      v1 = v66;
      v74 = v204;
      if (Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter())
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      v75(v10, v1);

      v36 = v70;
      v45 = v200;
      v48 = v196;
LABEL_21:
      v52 = v195;
      if (!v51)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_2_25();
    v77 = v189;
    sub_21B0D2F28(v188, v189);
    *v77 = v73;
    *(v77 + 8) = v74;
    sub_21B111314();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47380, &qword_21B12AE38);
    if (!swift_dynamicCast())
    {
      v202 = 0;
      memset(v201, 0, sizeof(v201));
      sub_21AF99BE0(v201, &qword_27CD47388, &unk_21B12AE40);
      v186 = v70;
      if (qword_2811FAAD8 != -1)
      {
        swift_once();
      }

      v125 = sub_21B1122D4();
      __swift_project_value_buffer(v125, qword_2811FAB28);
      v183 = *v198;
      v183(v185, v10, v1);

      v126 = sub_21B1122B4();
      v127 = sub_21B112704();

      v128 = os_log_type_enabled(v126, v127);
      v48 = v196;
      if (v128)
      {
        v129 = swift_slowAlloc();
        v180 = v126;
        LODWORD(v179) = v127;
        v130 = v129;
        v182 = swift_slowAlloc();
        v203 = v182;
        *v130 = v181;
        v131 = sub_21AFCEC24(v71, v72, &v203);

        *(v130 + 4) = v131;
        *(v130 + 12) = 2080;
        v132 = v185;
        v183(v192, v185, v1);
        OUTLINED_FUNCTION_25_3();
        v133 = sub_21B112454();
        v135 = v134;
        OUTLINED_FUNCTION_33_5();
        v136(v132, v1);
        v137 = sub_21AFCEC24(v133, v135, &v203);

        *(v130 + 14) = v137;
        v138 = v180;
        _os_log_impl(&dword_21AF80000, v180, v179, "Metric %s had non-integer value %s.", v130, 0x16u);
        v139 = v182;
        swift_arrayDestroy();
        MEMORY[0x21CEEA9A0](v139, -1, -1);
        MEMORY[0x21CEEA9A0](v130, -1, -1);
      }

      else
      {

        OUTLINED_FUNCTION_33_5();
        v140(v185, v1);
      }

      v45 = v200;
      v141 = v189;
      v36 = v186;
      goto LABEL_46;
    }

    sub_21AF81D68(v201, &v203);
    v79 = v205;
    v78 = v206;
    v80 = __swift_project_boxed_opaque_existential_0(&v203, v205);
    v178[3] = v178;
    v81 = *(v79 - 8);
    MEMORY[0x28223BE20](v80);
    v179 = v82;
    isa = v81[2].isa;
    v183 = (v178 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
    isa();
    v84 = *(v78 + 8);
    v186 = v79;
    v85 = sub_21B112854();
    v36 = v70;
    v180 = v81;
    v182 = v84;
    if (v85)
    {
      OUTLINED_FUNCTION_28_2();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_18_5(AssociatedTypeWitness, v87, v88, v89, v90, v91, v92, v93, v178[0]);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_6_3();
      MEMORY[0x28223BE20](v94);
      swift_getAssociatedConformanceWitness();
      v95 = sub_21B112E34();
      OUTLINED_FUNCTION_34_5(v95, v96, v97, v98, v99, v100, v101, v102, v178[0]);
      MEMORY[0x28223BE20](v103);
      sub_21B112CD4();
      OUTLINED_FUNCTION_19_5();
      v104 = sub_21B1123B4();
      v105 = OUTLINED_FUNCTION_27_5();
      v106 = v81;
      v81 = v180;
      v107(v105, v106);
      OUTLINED_FUNCTION_17_8();
      if ((v104 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v108 = v183;
    v109 = sub_21B112844();
    v48 = v196;
    v110 = v81;
    if (v109 <= 31)
    {
      goto LABEL_45;
    }

    LODWORD(v201[0]) = -1;
    OUTLINED_FUNCTION_28_2();
    v110 = v111;
    v112 = v108;
    v108 = sub_21B112854();
    v113 = sub_21B112844();
    if (v108)
    {
      if (v113 > 32)
      {
        OUTLINED_FUNCTION_18_5(v113, v114, v115, v116, v117, v118, v119, v120, v178[0]);
        MEMORY[0x28223BE20](v121);
        OUTLINED_FUNCTION_11_8();
        v122 = sub_21B0D30A8();
        OUTLINED_FUNCTION_22_4(v201, MEMORY[0x277D84CC0], v122);
        OUTLINED_FUNCTION_29_5();
        LODWORD(v179) = sub_21B1123A4();
        v123 = OUTLINED_FUNCTION_20_5();
        v124(v123, v112);
        OUTLINED_FUNCTION_17_8();
        goto LABEL_39;
      }

      v108 = *(*(v182 + 24) + 16);
      OUTLINED_FUNCTION_28_2();
      v148 = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_18_5(v148, v149, v150, v151, v152, v153, v154, v155, v178[0]);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_6_3();
      MEMORY[0x28223BE20](v156);
      v110 = v108;
      swift_getAssociatedConformanceWitness();
      v157 = sub_21B112E34();
      OUTLINED_FUNCTION_34_5(v157, v158, v159, v160, v161, v162, v163, v164, v178[0]);
      MEMORY[0x28223BE20](v165);
      OUTLINED_FUNCTION_11_8();
      v48 = v196;
      sub_21B112CD4();
      OUTLINED_FUNCTION_19_5();
      v166 = sub_21B112394();
      v167 = OUTLINED_FUNCTION_20_5();
      v168(v167, v81);
      OUTLINED_FUNCTION_17_8();
      if ((v166 & 1) == 0)
      {
LABEL_45:
        OUTLINED_FUNCTION_28_2();
        v169 = sub_21B112834();
        (v110[1].isa)(v108, v81);
        v170 = v189;
        *(v189 + 28) = v169;
        v141 = v170;
        __swift_destroy_boxed_opaque_existential_0(&v203);
        v45 = v200;
LABEL_46:
        OUTLINED_FUNCTION_2_25();
        sub_21B0D2F28(v141, v187);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21B0D4C00();
          v190 = v175;
        }

        v171 = *(v190 + 16);
        if (v171 >= *(v190 + 24) >> 1)
        {
          sub_21B0D4C00();
          v190 = v176;
        }

        OUTLINED_FUNCTION_12_10();
        sub_21B0D3050(v189, v172);
        OUTLINED_FUNCTION_33_5();
        v173(v10, v1);
        *(v190 + 16) = v171 + 1;
        OUTLINED_FUNCTION_31_5();
        OUTLINED_FUNCTION_13_7();
        sub_21B0D2F84(v187, v174);
        goto LABEL_21;
      }
    }

    else
    {
      v110 = v180;
      if (v113 >= 33)
      {
        OUTLINED_FUNCTION_18_5(v113, v114, v115, v116, v117, v118, v119, v120, v178[0]);
        MEMORY[0x28223BE20](v142);
        OUTLINED_FUNCTION_11_8();
        v143 = sub_21B0D30A8();
        OUTLINED_FUNCTION_22_4(v201, MEMORY[0x277D84CC0], v143);
        OUTLINED_FUNCTION_29_5();
        v145 = *(v144 - 256);
        LODWORD(v179) = sub_21B1123A4();
        v146 = OUTLINED_FUNCTION_27_5();
        v108 = v145;
        v147(v146, v112);
        OUTLINED_FUNCTION_17_8();
        v110 = v180;
LABEL_39:
        if (v179)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }

      v108 = v183;
    }

    sub_21B112834();
    goto LABEL_45;
  }

LABEL_13:
  while (1)
  {
    v54 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v54 >= v52)
    {
      v66 = v1;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v76);
      v51 = 0;
      goto LABEL_18;
    }

    v51 = *(v48 + 8 * v54);
    ++v46;
    if (v51)
    {
      v53 = v36;
      v46 = v54;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_21B0D2638@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_5_7();
  v6 = v4 == 0xD000000000000016 && v5 == a1;
  if (v6 || (v7 = v4, (OUTLINED_FUNCTION_4_9(0xD000000000000016) & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_7();
    v11 = v7 == 0xD000000000000018 && v10 == a1;
    if (v11 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
    {

      v9 = 7;
    }

    else
    {
      OUTLINED_FUNCTION_5_7();
      v13 = v7 == 0xD000000000000013 && v12 == a1;
      if (v13 || (OUTLINED_FUNCTION_4_9(0xD000000000000013) & 1) != 0)
      {

        v9 = 27;
      }

      else
      {
        OUTLINED_FUNCTION_5_7();
        v15 = v7 == 0xD000000000000019 && v14 == a1;
        if (v15 || (OUTLINED_FUNCTION_4_9(0xD000000000000019) & 1) != 0)
        {

          v9 = 4;
        }

        else
        {
          OUTLINED_FUNCTION_5_7();
          v17 = v7 == 0xD000000000000014 && v16 == a1;
          if (v17 || (OUTLINED_FUNCTION_4_9(0xD000000000000014) & 1) != 0)
          {

            v9 = 11;
          }

          else
          {
            OUTLINED_FUNCTION_5_7();
            v19 = v7 == 0xD00000000000001DLL && v18 == a1;
            if (v19 || (OUTLINED_FUNCTION_4_9(0xD00000000000001DLL) & 1) != 0)
            {

              v9 = 14;
            }

            else
            {
              OUTLINED_FUNCTION_5_7();
              v21 = v7 == 0xD000000000000021 && v20 == a1;
              if (v21 || (OUTLINED_FUNCTION_4_9(0xD000000000000021) & 1) != 0)
              {

                v9 = 26;
              }

              else
              {
                OUTLINED_FUNCTION_0_24();
                v24 = v23 + 7;
                v25 = v7 == v23 + 7 && v22 == a1;
                if (v25 || (OUTLINED_FUNCTION_4_9(v23 + 7) & 1) != 0)
                {

                  v9 = 21;
                }

                else
                {
                  OUTLINED_FUNCTION_5_7();
                  v27 = v7 == v24 && v26 == a1;
                  if (v27 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v28 + 7) & 1) != 0))
                  {

                    v9 = 30;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_24();
                    v31 = v7 == v30 + 2 && v29 == a1;
                    if (v31 || (OUTLINED_FUNCTION_4_9(v30 + 2) & 1) != 0)
                    {

                      v9 = 28;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_5_7();
                      v33 = v7 == v24 && v32 == a1;
                      if (v33 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v34 + 7) & 1) != 0))
                      {

                        v9 = 5;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_5_7();
                        v36 = v7 == 0xD000000000000019 && v35 == a1;
                        if (v36 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v37 + 1) & 1) != 0))
                        {

                          v9 = 3;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0_24();
                          v40 = v7 == v39 + 4 && v38 == a1;
                          if (v40 || (OUTLINED_FUNCTION_4_9(v39 + 4) & 1) != 0)
                          {

                            v9 = 15;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_0_24();
                            v43 = v7 == v42 && v41 == a1;
                            if (v43 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                            {

                              v9 = 16;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_5_7();
                              v45 = v7 == v24 && v44 == a1;
                              if (v45 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v46 + 7) & 1) != 0))
                              {

                                v9 = 6;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_0_24();
                                v49 = v7 == v48 - 3 && v47 == a1;
                                if (v49 || (OUTLINED_FUNCTION_4_9(v48 - 3) & 1) != 0)
                                {

                                  v9 = 8;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_0_24();
                                  v52 = v7 == v51 && v50 == a1;
                                  if (v52 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                  {

                                    v9 = 10;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_5_7();
                                    v54 = v7 == 0xD000000000000021 && v53 == a1;
                                    if (v54 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v55 + 9) & 1) != 0))
                                    {

                                      v9 = 23;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_0_24();
                                      v58 = v7 == v57 - 6 && v56 == a1;
                                      if (v58 || (OUTLINED_FUNCTION_4_9(v57 - 6) & 1) != 0)
                                      {

                                        v9 = 13;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_0_24();
                                        v61 = v7 == v60 + 6 && v59 == a1;
                                        if (v61 || (OUTLINED_FUNCTION_4_9(v60 + 6) & 1) != 0)
                                        {

                                          v9 = 24;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_5_7();
                                          v63 = v7 == 0xD000000000000021 && v62 == a1;
                                          if (v63 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v64 + 9) & 1) != 0))
                                          {

                                            v9 = 22;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_0_24();
                                            v67 = v7 == v66 + 17 && v65 == a1;
                                            if (v67 || (OUTLINED_FUNCTION_4_9(v66 + 17) & 1) != 0)
                                            {

                                              v9 = 29;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_5_7();
                                              v69 = v7 == 0xD00000000000001DLL && v68 == a1;
                                              if (v69 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v70 + 5) & 1) != 0))
                                              {

                                                v9 = 20;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_0_24();
                                                v73 = v7 == v72 && v71 == a1;
                                                if (v73 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                                {

                                                  v9 = 1;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_0_24();
                                                  v76 = v7 == v75 && v74 == a1;
                                                  if (v76 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                                  {

                                                    v9 = 18;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_5_7();
                                                    v78 = v7 == 0xD000000000000019 && v77 == a1;
                                                    if (v78 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v79 + 1) & 1) != 0))
                                                    {

                                                      v9 = 19;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_5_7();
                                                      v81 = v7 == 0xD000000000000016 && v80 == a1;
                                                      if (v81 || (OUTLINED_FUNCTION_4_9(0xD000000000000016) & 1) != 0)
                                                      {

                                                        v9 = 17;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_0_24();
                                                        v84 = v7 == v83 && v82 == a1;
                                                        if (v84 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                                        {

                                                          v9 = 12;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_5_7();
                                                          v86 = v7 == 0xD000000000000019 && v85 == a1;
                                                          if (v86 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9(v87 + 1) & 1) != 0))
                                                          {

                                                            v9 = 9;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_0_24();
                                                            v90 = v7 == v89 && v88 == a1;
                                                            if (v90 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                                            {

                                                              v9 = 2;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_0_24();
                                                              if (v7 == v92 + 3 && v91 == a1)
                                                              {

                                                                v9 = 25;
                                                              }

                                                              else
                                                              {
                                                                v94 = OUTLINED_FUNCTION_4_9(v92 + 3);

                                                                v9 = 25;
                                                                if ((v94 & 1) == 0)
                                                                {
                                                                  v9 = 0;
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

  *a2 = v9;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_21B0D2D18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B0B5BC0(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477E0, &qword_21B12BD50);
    sub_21B112994();
    v7 = *(v15 + 48);
    v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
    sub_21B0D3050(v7 + *(*(v8 - 8) + 72) * v6, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
    v9 = *(v15 + 56);
    v10 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    sub_21B0D2F84(v9 + *(*(v10 - 8) + 72) * v6, a2);
    sub_21AFA40CC();
    sub_21B1129B4();
    *v2 = v15;
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_21B0D2EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_21B0D2F28(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_45();
  v5(v4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_21B0D2F84(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_45();
  v5(v4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_21B0D2FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FC0, &qword_21B114A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0D3050(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21B0D30A8()
{
  result = qword_27CD47390;
  if (!qword_27CD47390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47390);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 328);
  v6 = *(v3 - 360);

  return MEMORY[0x2821FCC68](a1, a2, a3, v5, v6);
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_21B0D3354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement;
  v13 = sub_21B111164();
  __swift_storeEnumTagSinglePayload(v3 + v12, 1, 1, v13);
  *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex) = -1;
  *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_reversed) = 0;

  sub_21B110F74();
  sub_21B110F44();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v11, v6);
  type metadata accessor for SessionFilesEnumerator(0);
  swift_allocObject();
  *(v3 + 16) = sub_21B0C2D40(a1, v15);
  v17 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_sessionSchema;
  v18 = sub_21B111894();
  OUTLINED_FUNCTION_80();
  v20 = v19;
  (*(v19 + 16))(v3 + v17, a2, v18);
  sub_21B110ED4();
  sub_21B110F44();
  v22 = v21;

  (*(v20 + 8))(a2, v18);
  result = (v16)(v11, v6);
  v24 = *(*(v3 + 16) + 24);
  if (v22 > v24)
  {
    __break(1u);
  }

  else
  {
    v25 = (v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_timeRange);
    *v25 = v22;
    v25[1] = v24;
    return v3;
  }

  return result;
}

void sub_21B0D358C(char a1, double a2, double a3)
{
  v4 = (v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_timeRange);
  *v4 = a2;
  v4[1] = a3;
  *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_reversed) = a1;
  sub_21B0C2DF0(a1, a2, a3);
}

void sub_21B0D35CC()
{
  v1 = v0;
  v99 = *MEMORY[0x277D85DE8];
  v2 = sub_21B1119B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v89 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B111164();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v91 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v79 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v79 - v17;
  v87 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements;
  *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements) = MEMORY[0x277D84F90];

  v88 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex;
  *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex) = 0;
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v5);
  v19 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement;
  swift_beginAccess();
  v85 = v19;
  v86 = v18;
  sub_21B0C3570(v18, v1 + v19);
  swift_endAccess();
  v20 = *(v1 + 16);
  v21 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
  swift_beginAccess();
  sub_21B0C3500(v20 + v21, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_21AF99BE0(v16, &qword_27CD471C8, &unk_21B12AEF0);
    return;
  }

  v81 = v3;
  v92 = v7;
  v24 = v7[4];
  v22 = v7 + 4;
  v23 = v24;
  v24(v12, v16, v5);
  v93 = v12;
  v25 = sub_21B111134();
  v27 = v26;
  v28 = v94;
  v29 = sub_21B111884();
  if (v28)
  {
    sub_21AF99728(v25, v27);
    v94 = v28;
    goto LABEL_27;
  }

  v30 = v29;
  v82 = v23;
  v83 = v22;
  sub_21AF99728(v25, v27);
  v31 = sub_21B1119A4();
  v94 = 0;
  v32 = v31;
  v79[1] = v30;
  v79[0] = v1;
  v33 = 0;
  v90 = *(v31 + 16);
  v80 = MEMORY[0x277D84F90];
  v84 = v5;
  v34 = v81;
  v35 = v89;
  while (1)
  {
    if (v90 == v33)
    {

      v96 = v80;

      v45 = v94;
      sub_21B0D4AA8(&v96);
      v94 = v45;
      if (v45)
      {

        __break(1u);
        return;
      }

      v46 = v96;
      v48 = v92;
      v47 = v93;
      v49 = v79[0];
      v90 = v96[2];
      if (v90)
      {
        v50 = v96[5];
        v51 = v96[6];
        v89 = v96[4];
        v81 = v50;
        v80 = v51;
        if (v89)
        {
          sub_21AF99818(v50, v51);
          v96 = MEMORY[0x277D84F90];
          sub_21AFCC9B0(0, v90, 0);
          v52 = 0;
          v53 = v96;
          v54 = v46 + 6;
          do
          {
            if (v52 >= v46[2])
            {
              goto LABEL_50;
            }

            v55 = *(v54 - 2);
            v56 = v55 - v89;
            if (v55 < v89)
            {
              goto LABEL_51;
            }

            v57 = *(v54 - 1);
            v58 = *v54;
            sub_21AF99818(v57, *v54);
            v96 = v53;
            v60 = v53[2];
            v59 = v53[3];
            if (v60 >= v59 >> 1)
            {
              sub_21AFCC9B0(v59 > 1, v60 + 1, 1);
              v53 = v96;
            }

            ++v52;
            v53[2] = v60 + 1;
            v61 = &v53[3 * v60];
            v61[4] = v56;
            v61[5] = v57;
            v61[6] = v58;
            v54 += 3;
            v5 = v84;
            v48 = v92;
          }

          while (v90 != v52);

          v62 = v53;
          v47 = v93;
          v49 = v79[0];
        }

        else
        {
          sub_21AF99818(v50, v51);
          v62 = v46;
        }

        v63 = v62[2];
        if (v63)
        {
          v96 = MEMORY[0x277D84F90];
          sub_21AFCC958(0, v63, 0);
          v64 = 0;
          v65 = v96;
          v66 = v62 + 6;
          v92 = v62;
          v90 = v63;
          do
          {
            if (v64 >= v62[2])
            {
              goto LABEL_52;
            }

            v67 = *(v66 - 2);
            sub_21AF99818(*(v66 - 1), *v66);
            sub_21B111154();
            info = 0;
            if (mach_timebase_info(&info))
            {
              v68 = v91;
            }

            else
            {
              v68 = v91;
              if (!is_mul_ok(v67, info.numer))
              {
                goto LABEL_53;
              }
            }

            sub_21B111144();
            v96 = v65;
            v70 = v65[2];
            v69 = v65[3];
            if (v70 >= v69 >> 1)
            {
              sub_21AFCC958(v69 > 1, v70 + 1, 1);
              v68 = v91;
              v65 = v96;
            }

            ++v64;
            v65[2] = v70 + 1;
            OUTLINED_FUNCTION_31_5();
            v72 = v65 + v71 + v48[9] * v70;
            v5 = v84;
            v82(v72, v68, v84);
            v66 += 3;
            v62 = v92;
          }

          while (v90 != v64);

          v47 = v93;
          v49 = v79[0];
        }

        else
        {

          v65 = MEMORY[0x277D84F90];
        }

        v73 = v87;
        *(v49 + v87) = v65;

        if (*(v49 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_reversed))
        {
          v74 = *(*(v49 + v73) + 16) - 1;
        }

        else
        {
          v74 = 0;
        }

        *(v49 + v88) = v74;
        v75 = *(v49 + v73);
        v76 = *(v75 + 16);
        if (v76)
        {
          if (v74 >= v76)
          {
            goto LABEL_54;
          }

          v77 = v86;
          (v48[2])(v86, v75 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v74, v5);
          OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_21_4();
          __swift_storeEnumTagSinglePayload(v77, 0, 1, v5);
          v78 = v85;
          swift_beginAccess();
          sub_21B0C3570(v77, v49 + v78);
          swift_endAccess();
        }

        else
        {
          OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_21_4();
        }
      }

      else
      {
        OUTLINED_FUNCTION_23_5();
      }

      (v48[1])(v47, v5);
      return;
    }

    if (v33 >= *(v32 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    OUTLINED_FUNCTION_31_5();
    sub_21B0D4A28(v32 + v36 + *(v34 + 72) * v33, v35);
    v37 = v94;
    sub_21B0D3EF8(v35, &v96);
    v94 = v37;
    if (v37)
    {
      break;
    }

    sub_21AFA8978(v35);
    v38 = v97;
    v39 = v98;
    v40 = v96;
    if (v98 >> 60 == 15)
    {
      sub_21B0D4A8C(v96, v97, v98);
      ++v33;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_21B0D5274(0, v80[2] + 1, 1, v80);
      }

      v42 = v80[2];
      v41 = v80[3];
      if (v42 >= v41 >> 1)
      {
        v80 = sub_21B0D5274((v41 > 1), v42 + 1, 1, v80);
      }

      ++v33;
      v43 = v80;
      v80[2] = v42 + 1;
      v44 = &v43[3 * v42];
      v44[4] = v40;
      v44[5] = v38;
      v44[6] = v39;
      v5 = v84;
    }
  }

  sub_21AFA8978(v35);

  OUTLINED_FUNCTION_23_5();

LABEL_27:
  (v92[1])(v93, v5);
}

void sub_21B0D3EF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43048, &unk_21B117C90);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD437E8, &qword_21B117C88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v41 - v7;
  v9 = sub_21B1119B4();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v42 = v41 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v41 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v41 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v41 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (v41 - v24);
  sub_21B0D4A28(a1, v41 - v24);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_21AFA8978(v25);
    sub_21B0D6360();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    return;
  }

  v26 = *v25;
  sub_21B111994();
  if (v2)
  {

    return;
  }

  v41[1] = v26;
  v28 = sub_21B1117E4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v28) == 1)
  {

    sub_21AF99BE0(v8, &qword_27CD437E8, &qword_21B117C88);
    v29 = v44;
    *v44 = 0;
    v29[1] = 0;
    v29[2] = 0xF000000000000000;
    return;
  }

  sub_21B1117D4();
  (*(*(v28 - 8) + 8))(v8, v28);
  sub_21AFD2EFC(v20, v23);
  sub_21B0D4A28(v23, v17);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_21AFA8978(v17);
    sub_21B0D6360();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();

    goto LABEL_10;
  }

  v30 = v43;
  sub_21B111974();
  if (__swift_getEnumTagSinglePayload(v30, 1, v9) != 1)
  {
    v36 = v42;
    sub_21AFD2EFC(v30, v42);
    sub_21B0D4A28(v36, v12);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v37 = *v12;
      v38 = v36;
      v32 = sub_21B111964();
      v34 = v39;

      sub_21AFA8978(v38);
      sub_21AFA8978(v23);
      v35 = v44;
      *v44 = v37;
      goto LABEL_15;
    }

    sub_21AFA8978(v12);
    sub_21B0D6360();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();

    sub_21AFA8978(v36);
LABEL_10:
    sub_21AFA8978(v23);
    return;
  }

  sub_21AF99BE0(v30, &qword_27CD43048, &unk_21B117C90);
  v32 = sub_21B111964();
  v34 = v33;

  sub_21AFA8978(v23);
  v35 = v44;
  *v44 = 0;
LABEL_15:
  v35[1] = v32;
  v35[2] = v34;
}

void sub_21B0D440C()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  if (sub_21B0D4658())
  {
    v7 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex);
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements);
      if (v7 < *(v8 + 16))
      {
        v9 = sub_21B111164();
        OUTLINED_FUNCTION_4_1();
        (*(v10 + 16))(v6, v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7, v9);
        __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
        v11 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement;
        swift_beginAccess();
        sub_21B0C3570(v6, v3 + v11);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
  }

  else
  {
    do
    {
      sub_21B0C30EC();
      if (v2)
      {
        break;
      }

      sub_21B0D35CC();
      v2 = 0;
    }

    while ((sub_21B0D46BC() & 1) != 0);
  }
}

void sub_21B0D459C()
{
  sub_21B0C3094();
  while (!v0)
  {
    v0 = 0;
    sub_21B0D35CC();
    if ((sub_21B0D46BC() & 1) == 0)
    {
      break;
    }

    sub_21B0C30EC();
  }
}

void sub_21B0D460C()
{
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_reversed))
  {
    v1 = -1;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex);
  v3 = __OFADD__(v2, v1);
  v4 = v2 + v1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex) = v4;
    sub_21B0D440C();
  }
}

uint64_t sub_21B0D4684()
{
  if (sub_21B0D4658())
  {
    return 1;
  }

  else
  {
    return sub_21B0C3138() & 1;
  }
}

uint64_t sub_21B0D46BC()
{
  if (sub_21B0D4658())
  {
    return 0;
  }

  else
  {
    return sub_21B0C3138() & 1;
  }
}

uint64_t sub_21B0D46F4()
{

  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement, &qword_27CD471C8, &unk_21B12AEF0);

  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_sessionSchema;
  sub_21B111894();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_21B0D4784()
{
  sub_21B0D46F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FeedbackFilesEnumerator(uint64_t a1)
{
  result = qword_27CD47398;
  if (!qword_27CD47398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0D4830(uint64_t a1)
{
  sub_21B0C33B8(319);
  if (v1 <= 0x3F)
  {
    sub_21B111894();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21B0D4938@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement;
  swift_beginAccess();
  return sub_21B0C3500(v3 + v4, a1);
}

uint64_t sub_21B0D4A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B1119B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0D4A8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_21AF99728(a2, a3);
  }

  return result;
}

uint64_t sub_21B0D4AA8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D634C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_21B0D57E8(v6);
  *a1 = v2;
  return result;
}

void sub_21B0D4B3C()
{
  OUTLINED_FUNCTION_16_7();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_7(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C8, &unk_21B117870);
      v7 = OUTLINED_FUNCTION_17_9();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_13_5();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC250(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21B0D4C00()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_18();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_15();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_22_5(v2, v5, &qword_27CD473D0, &unk_21B12AF28);
  v8 = OUTLINED_FUNCTION_106();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v8);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_19(v9);
    sub_21AFCC270(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_27();
  }
}

void sub_21B0D4CC8()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_18();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_15();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_22_5(v2, v5, &qword_27CD436D0, &qword_21B117880);
  v8 = OUTLINED_FUNCTION_106();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(v8);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_19(v9);
    sub_21AFCC288(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_27();
  }
}

void sub_21B0D4D90()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_18();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_15();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_22_5(v2, v5, &qword_27CD473D8, &qword_21B12AF38);
  v8 = OUTLINED_FUNCTION_106();
  type metadata accessor for FileArray.Container(v8);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_19(v9);
    sub_21AFCC2A0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_27();
  }
}

void sub_21B0D4E58()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_18();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_15();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_22_5(v2, v5, &qword_27CD473F8, &unk_21B12AF70);
  OUTLINED_FUNCTION_106();
  sub_21B1113A4();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_19(v8);
    sub_21AFCC2D0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_27();
  }
}

void sub_21B0D4F48(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_7();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_17_9();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_13_5();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21B0D5020()
{
  OUTLINED_FUNCTION_16_7();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_7(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473E0, &qword_21B12AF40);
      v7 = OUTLINED_FUNCTION_17_9();
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_16_9(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC2E8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v7 + 32), (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21B0D50D8()
{
  OUTLINED_FUNCTION_16_7();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_7(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473B8, &qword_21B12AF08);
      v7 = OUTLINED_FUNCTION_17_9();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_13_5();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC250(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473C0, &unk_21B12AF10);
    OUTLINED_FUNCTION_12_11(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21B0D519C()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_21B0D56E0(*(v0 + 16), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    sub_21AFCC320();
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_21B0D5274(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B0, &qword_21B117858);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_21AFCC3E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B8, &unk_21B117860);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21B0D538C()
{
  OUTLINED_FUNCTION_16_7();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_7(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F0, &unk_21B1178A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC408(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F8, &unk_21B12AF60);
    OUTLINED_FUNCTION_12_11(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21B0D546C()
{
  OUTLINED_FUNCTION_16_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_7(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473E8, &qword_21B12AF48);
      v6 = OUTLINED_FUNCTION_17_9();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_16_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC2E8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473F0, &unk_21B12AF50);
    OUTLINED_FUNCTION_12_11(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_21B0D552C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C8, &unk_21B117870);
  v4 = OUTLINED_FUNCTION_17_9();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13_5();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_21B0D55E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21B0D56E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470C0, &unk_21B129090);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0D57E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B112B74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B8, &unk_21B117860);
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21B0D5970(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B0D58EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B0D58EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        *(v9 + 24) = *v9;
        *(v9 + 40) = *(v9 + 16);
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21B0D5970(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B0D4F48(0, v8[2] + 1, 1, v8, &qword_27CD473A8, &qword_21B12AF00, sub_21AFCC250);
        v8 = v82;
      }

      v39 = v8[2];
      v38 = v8[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_21B0D4F48(v38 > 1, v39 + 1, 1, v8, &qword_27CD473A8, &qword_21B12AF00, sub_21AFCC250);
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_21B0D6000((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_21B0D5EC8(&v89, *a1, a3);
LABEL_89:
}

uint64_t sub_21B0D5EC8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v18 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21B0D61A8(v18, v6, v7, v8);
    v18 = result;
  }

  v15 = v4;
  *v4 = v18;
  v9 = (v18 + 16);
  for (i = *(v18 + 16); ; *v9 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v15 = v18;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v18 + 16 * i);
    v11 = *v4;
    v12 = &v9[2 * i];
    v13 = v12[1];
    sub_21B0D6000((*a3 + 24 * *v4), (*a3 + 24 * *v12), *a3 + 24 * v13, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v13 < v11)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_12;
    }

    *v4 = v11;
    v4[1] = v13;
    v14 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_13;
    }

    i = *v9 - 1;
    result = memmove(v12, v12 + 2, 16 * v14);
  }

  *v15 = v18;
  __break(1u);
  return result;
}

uint64_t sub_21B0D6000(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_21AFCC3E0(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_21AFCC3E0(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

char *sub_21B0D61C0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_21B0D61EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473A8, &qword_21B12AF00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_21B0D6360()
{
  result = qword_27CD473B0;
  if (!qword_27CD473B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD473B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeedbackFilesEnumeratorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21B0D6494()
{
  result = qword_27CD47400;
  if (!qword_27CD47400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47400);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_11(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_9(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);

  return sub_21AF99728(v2, v3);
}

void *OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21B0D55E4(v5, a2, a3, a4, v4);
}

double OUTLINED_FUNCTION_23_5()
{

  return result;
}

uint64_t type metadata accessor for LegacySchemaManifest(uint64_t a1)
{
  result = qword_27CD47408;
  if (!qword_27CD47408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0D668C(uint64_t a1)
{
  result = sub_21B111924();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0D66F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B0D674C(char a1)
{
  if (a1)
  {
    return 0x736D756E65;
  }

  else
  {
    return 0x73616D65686373;
  }
}

uint64_t sub_21B0D67A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0D66F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21B0D67D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0D674C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0D6808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0D66F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0D683C(uint64_t a1)
{
  v2 = sub_21B0D6F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0D6878(uint64_t a1)
{
  v2 = sub_21B0D6F58();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21B0D68B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  type metadata accessor for LegacyEnumManifest(0);
  OUTLINED_FUNCTION_1();
  v83 = v3;
  v84 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v88 = v6 - v5;
  v81 = type metadata accessor for LegacyMessageManifest(0);
  OUTLINED_FUNCTION_1();
  v86 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v85 = v10 - v9;
  v11 = sub_21B111924();
  OUTLINED_FUNCTION_1();
  v82 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47418, &qword_21B12B090);
  OUTLINED_FUNCTION_1();
  v87 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = v72 - v20;
  v22 = type metadata accessor for LegacySchemaManifest(0);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0D6F58();
  v27 = v89;
  sub_21B112F34();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v89 = v25;
    v77 = v16;
    v78 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47428, &qword_21B12B098);
    v90 = 0;
    v28 = sub_21B0D6FAC();
    OUTLINED_FUNCTION_4_26(v28);
    v79 = v91;
    if (!v91)
    {
      v79 = sub_21B112334();
    }

    v29 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47440, &qword_21B12B0A0);
    v90 = 1;
    v30 = sub_21B0D7068();
    OUTLINED_FUNCTION_4_26(v30);
    v81 = v91;
    v76 = a1;
    v72[1] = 0;
    v73 = v17;
    if (!v91)
    {
      v81 = sub_21B112334();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47458, &qword_21B12B0A8);
    v31 = v79;
    v83 = sub_21B1129F4();
    v32 = 0;
    v33 = v31 + 64;
    OUTLINED_FUNCTION_1_24();
    v74 = v21;
    v75 = v34;
    while (1)
    {
      v35 = v85;
      if (!v17)
      {
        break;
      }

      OUTLINED_FUNCTION_5_28();
LABEL_16:
      v39 = v36 | (v32 << 6);
      v40 = (*(v79 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      sub_21B0D716C(*(v79 + 56) + *(v37 + 72) * v39, v35, type metadata accessor for LegacyMessageManifest);
      *(v75 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v43 = v83;
      v44 = (*(v83 + 48) + 16 * v39);
      *v44 = v42;
      v44[1] = v41;
      v45 = *(v43 + 56);
      sub_21B111954();
      OUTLINED_FUNCTION_163();
      (*(v46 + 32))(v45 + *(v46 + 72) * v39, v35);
      v47 = *(v43 + 16);
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_31;
      }

      *(v43 + 16) = v49;

      v29 = v89;
      v21 = v74;
    }

    v38 = v32;
    while (1)
    {
      v32 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v32 >= v26)
      {
        break;
      }

      ++v38;
      if (*(v33 + 8 * v32))
      {
        OUTLINED_FUNCTION_6_20();
        goto LABEL_16;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47460, &qword_21B12B0B0);
    v50 = v81;
    sub_21B1129F4();
    v51 = 0;
    v52 = v50 + 64;
    OUTLINED_FUNCTION_1_24();
    v85 = v54;
    v86 = v53;
    v55 = v76;
LABEL_20:
    v58 = v51;
    v60 = v77;
    v59 = v78;
    v61 = v82;
    while (1)
    {
      v51 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v51 >= v26)
      {

        sub_21B1118D4();
        (*(v87 + 8))(v21, v73);
        (*(v61 + 32))(v29, v60, v59);
        sub_21B0D71C8(v29, v80);
        __swift_destroy_boxed_opaque_existential_0(v55);
        return;
      }

      ++v58;
      if (*(v52 + 8 * v51))
      {
        OUTLINED_FUNCTION_6_20();
        while (1)
        {
          v62 = v57 | (v51 << 6);
          v63 = (*(v81 + 48) + 16 * v62);
          v65 = *v63;
          v64 = v63[1];
          sub_21B0D716C(*(v81 + 56) + *(v84 + 72) * v62, v56, type metadata accessor for LegacyEnumManifest);
          v66 = v86;
          *(v85 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
          v67 = (v66[6] + 16 * v62);
          *v67 = v65;
          v67[1] = v64;
          v68 = v66[7];
          sub_21B111834();
          OUTLINED_FUNCTION_163();
          (*(v69 + 32))(v68 + *(v69 + 72) * v62, v88);
          v70 = v66[2];
          v48 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v48)
          {
            goto LABEL_32;
          }

          v86[2] = v71;

          v55 = v76;
          v29 = v89;
          if (!v60)
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_5_28();
        }
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

unint64_t sub_21B0D6F58()
{
  result = qword_27CD47420;
  if (!qword_27CD47420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47420);
  }

  return result;
}

unint64_t sub_21B0D6FAC()
{
  result = qword_27CD47430;
  if (!qword_27CD47430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47428, &qword_21B12B098);
    sub_21B0D7124(&qword_27CD47438, type metadata accessor for LegacyMessageManifest, &unk_21B12A978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47430);
  }

  return result;
}

unint64_t sub_21B0D7068()
{
  result = qword_27CD47448;
  if (!qword_27CD47448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47440, &qword_21B12B0A0);
    sub_21B0D7124(&qword_27CD47450, type metadata accessor for LegacyEnumManifest, &unk_21B12AB24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47448);
  }

  return result;
}

uint64_t sub_21B0D7124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21B0D716C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_163();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21B0D71C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySchemaManifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LegacySchemaManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0D730C()
{
  result = qword_27CD47468;
  if (!qword_27CD47468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47468);
  }

  return result;
}

unint64_t sub_21B0D7364()
{
  result = qword_27CD47470;
  if (!qword_27CD47470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47470);
  }

  return result;
}

unint64_t sub_21B0D73BC()
{
  result = qword_27CD47478;
  if (!qword_27CD47478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47478);
  }

  return result;
}

void *OUTLINED_FUNCTION_4_26(uint64_t a1)
{

  return sub_21B112A84();
}

uint64_t type metadata accessor for SODAAsset(uint64_t a1)
{
  result = qword_27CD47480;
  if (!qword_27CD47480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0D7508(uint64_t a1)
{
  result = sub_21B110D94();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0D758C()
{
  result = sub_21B0D75B4(5);
  byte_27CD6E890 = result & 1;
  return result;
}

uint64_t sub_21B0D75B4(char a1)
{
  sub_21B0D7640(a1);
  v1 = sub_21B1123D4();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t sub_21B0D7640(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0D7778()
{
  if (qword_27CD42A18 != -1)
  {
    swift_once();
  }

  return byte_27CD6E890;
}

uint64_t sub_21B0D77C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v72 = a4;
  v70 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v67 - v8;
  v86 = sub_21B111DA4();
  v74 = *(v86 - 8);
  v9 = MEMORY[0x28223BE20](v86);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471F0, &unk_21B129F00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  v15 = sub_21B111DE4();
  v76 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v77 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - v18;
  *&v81 = a1;
  *(&v81 + 1) = a2;
  v20 = *(v4 + 24);
  v84 = *(v4 + 16);
  v85 = v20;
  sub_21AF9F500();
  sub_21B1126C4();
  v81 = v78;
  v82 = v79;
  v83 = v80;
  v84 = 46;
  v85 = 0xE100000000000000;
  sub_21B0D821C();
  sub_21AFC921C();
  v21 = sub_21B1127E4();

  if (*(v21 + 16) < 3uLL)
  {

    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    sub_21B112904();

    *&v78 = 0xD000000000000022;
    *(&v78 + 1) = 0x800000021B141A00;
    MEMORY[0x21CEE9770](a1, a2);
    v42 = *(&v78 + 1);
    v39 = v78;
    sub_21AF9F6BC();
    swift_allocError();
    *v43 = v39;
    *(v43 + 8) = v42;
    *(v43 + 16) = 0;
    goto LABEL_6;
  }

  v68 = a1;
  v69 = a2;
  result = sub_21B112464();
  v24 = v23;
  v25 = *(v21 + 16);
  if (v25 >= 2)
  {
    v26 = result;
    v67 = v19;
    v27 = v15;
    v28 = sub_21B0D8270(2uLL, v25, v21);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    *&v78 = v28;
    *(&v78 + 1) = v30;
    v79 = v32;
    v80 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47498, &qword_21B12B2C8);
    sub_21B0D82DC();
    v35 = sub_21B112384();
    v37 = v36;
    v38 = v27;
    swift_unknownObjectRelease();

    sub_21B111DD4();
    if (__swift_getEnumTagSinglePayload(v14, 1, v27) != 1)
    {

      v44 = v76;
      v45 = v67;
      (*(v76 + 32))(v67, v14, v38);
      v46 = v77;
      (*(v44 + 16))(v77, v45, v38);

      v47 = v75;
      sub_21B0C3668(v35, v37, v46, v75);
      v48 = v86;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v86);
      v50 = v68;
      if (EnumTagSinglePayload == 1)
      {
        sub_21AFA8918(v47, &qword_27CD42C28, &unk_21B113F30);
        *&v78 = 0;
        *(&v78 + 1) = 0xE000000000000000;
        sub_21B112904();

        *&v78 = 0xD000000000000014;
        *(&v78 + 1) = 0x800000021B141A60;
        MEMORY[0x21CEE9770](v35, v37);

        MEMORY[0x21CEE9770](0x73617420726F6620, 0xEA0000000000206BLL);
        MEMORY[0x21CEE9770](v50, v69);
        v51 = *(&v78 + 1);
        v39 = v78;
        sub_21AF9F6BC();
        swift_allocError();
        *v52 = v39;
        *(v52 + 8) = v51;
        *(v52 + 16) = 3;
        swift_willThrow();
        (*(v44 + 8))(v45, v38);
      }

      else
      {

        v53 = v74;
        v54 = v47;
        v55 = v73;
        (*(v74 + 32))(v73, v54, v48);
        sub_21B111D64();
        v56 = v77;
        v57 = sub_21AFACA9C(v45, v77);
        v76 = *(v44 + 8);
        (v76)(v56, v38);
        v58 = v48;
        v59 = v69;
        if (v57)
        {
          v60 = v71;
          (*(v53 + 16))(v71, v55, v58);
          sub_21B0D8340(v70, &v78);
          v61 = [objc_opt_self() defaultManager];
          type metadata accessor for RegisteredRecipeEnvironment(0);
          swift_allocObject();
          v62 = v72;
          v63 = v72;
          v39 = sub_21B0C7920(v60, 0, 0, &v78, v62, v61);
          (*(v53 + 8))(v55, v86);
          (v76)(v45, v38);
        }

        else
        {
          *&v78 = 0;
          *(&v78 + 1) = 0xE000000000000000;
          sub_21B112904();
          MEMORY[0x21CEE9770](0xD000000000000049, 0x800000021B141A80);
          MEMORY[0x21CEE9770](v50, v59);
          MEMORY[0x21CEE9770](0xD000000000000013, 0x800000021B141AD0);
          sub_21B111D64();
          sub_21B112954();
          v64 = v76;
          (v76)(v56, v38);
          MEMORY[0x21CEE9770](0x766C6F736572202CLL, 0xEC000000203A6465);
          sub_21B112954();
          v65 = *(&v78 + 1);
          v39 = v78;
          sub_21AF9F6BC();
          swift_allocError();
          *v66 = v39;
          *(v66 + 8) = v65;
          *(v66 + 16) = 3;
          swift_willThrow();
          (*(v53 + 8))(v55, v86);
          v64(v45, v38);
        }
      }

      return v39;
    }

    sub_21AFA8918(v14, &qword_27CD471F0, &unk_21B129F00);
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    sub_21B112904();

    *&v78 = 0xD000000000000021;
    *(&v78 + 1) = 0x800000021B141A30;
    MEMORY[0x21CEE9770](v68, v69);
    MEMORY[0x21CEE9770](8250, 0xE200000000000000);
    MEMORY[0x21CEE9770](v26, v24);

    MEMORY[0x21CEE9770](46, 0xE100000000000000);
    v40 = *(&v78 + 1);
    v39 = v78;
    sub_21AF9F6BC();
    swift_allocError();
    *v41 = v39;
    *(v41 + 8) = v40;
    *(v41 + 16) = 3;
LABEL_6:
    swift_willThrow();
    return v39;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0D8100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = *(a3 + 16);
  *(v4 + 32) = *a3;
  *(v4 + 48) = v5;
  *(v4 + 64) = *(a3 + 32);
  *(v4 + 72) = a4;
  return v4;
}

uint64_t sub_21B0D813C()
{

  sub_21AFA8918(v0 + 32, &unk_27CD47240, &unk_21B12B2D0);

  return v0;
}

uint64_t sub_21B0D817C()
{
  sub_21B0D813C();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_21B0D81D4()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_21B0D821C()
{
  result = qword_27CD47490;
  if (!qword_27CD47490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47490);
  }

  return result;
}

unint64_t sub_21B0D8270(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_21B0D82DC()
{
  result = qword_27CD474A0;
  if (!qword_27CD474A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47498, &qword_21B12B2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474A0);
  }

  return result;
}

uint64_t sub_21B0D8340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47240, &unk_21B12B2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0D8408@<X0>(uint64_t a1@<X8>)
{
  result = sub_21AFC45C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21B0D8468()
{
  v1 = qword_27CD6E898;
  sub_21B111E64();
  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_21B0D84C4(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    sub_21B0EB1EC(a1);
  }

  v2 = sub_21B0D852C(a1);
  v3 = qword_27CD6E898;
  sub_21B111E64();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(v2 + v3);
  return v2;
}

uint64_t sub_21B0D852C(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    sub_21B0EB1EC(a1);
  }

  v2 = sub_21B0EA62C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_21B0D85B4(uint64_t a1)
{
  v1 = sub_21B0D84C4(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan(uint64_t a1)
{
  result = qword_27CD474A8;
  if (!qword_27CD474A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0D8654(uint64_t a1)
{
  result = sub_21B111E64();
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

double sub_21B0D86EC(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = sub_21B112704();
  sub_21B112264("LEAKED RESOURCE NETWORK SPAN: {{{", 33, 2, &dword_21AF80000, v2, v3, MEMORY[0x277D84F90]);
  sub_21B0D88AC(v4);
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v5 = swift_allocObject();
  *(&v17 + 1) = 2;
  *(v5 + 16) = xmmword_21B113D90;
  v6 = sub_21B111E44();
  v8 = v7;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21AF93F18();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_21B112264("Client type: %s", 1);

  sub_21B112704();
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  v12 = sub_21B111E44();
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_21B112264("Identifier: %s", v17);

  v14 = sub_21B112704();
  v15 = MEMORY[0x277D84F90];

  return sub_21B112264("}}}", 3, 2, &dword_21AF80000, v2, v14, v15);
}

double sub_21B0D88AC(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 96);
  v4 = sub_21B112704();
  sub_21B112264("LEAKED NETWORK SPAN: {{{", 24, 2, &dword_21AF80000, v3, v4, MEMORY[0x277D84F90]);
  sub_21B0E7C28();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21B113D90;
  v6 = *(v2 + *(*v2 + 464) + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD474E0, &qword_21B12B468);
  v7 = sub_21B112454();
  v9 = v8;
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21AF93F18();
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_21B112264("Network task: %s", v45);

  sub_21B112704();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21B113D90;
  ObjectType = swift_getObjectType();
  v52 = v6;
  v12 = v6;
  v13 = *(v6 + 16);
  v13(ObjectType, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
  v14 = sub_21B112454();
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = v10;
  v54 = v10;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  v55 = v3;
  sub_21B112264("Response: %s", ObjectType);

  v53 = sub_21B0EB4A0();
  if (v18)
  {
    sub_21B112704();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21B113D90;
    v13(v47, v52);
    v20 = sub_21B112454();
    v21 = MEMORY[0x277D837D0];
    v22 = v10;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = v10;
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    v24 = v3;
    sub_21B112264("Unsupported response: %s", v47);
    v25 = v21;
  }

  else
  {
    v26 = v16;
    v27 = v17;
    v28 = HIDWORD(v17);
    sub_21B112704();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D83B88];
    *(v29 + 16) = xmmword_21B113D90;
    v31 = MEMORY[0x277D83C10];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v26;
    v24 = v55;
    sub_21B112264("Status: %d", v47);

    sub_21B112704();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D84CC0];
    *(v32 + 16) = xmmword_21B113D90;
    v34 = MEMORY[0x277D84D30];
    *(v32 + 56) = v33;
    *(v32 + 64) = v34;
    *(v32 + 32) = v28;
    sub_21B112264("Uploaded: %llu bytes", v49);

    sub_21B112704();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21B113D90;
    *(v35 + 56) = v33;
    *(v35 + 64) = v34;
    *(v35 + 32) = v27;
    sub_21B112264("Downloaded: %llu bytes", v50);

    sub_21B112704();
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D839F8];
    *(v36 + 16) = xmmword_21B113D90;
    v38 = MEMORY[0x277D83A80];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    *(v36 + 32) = v53;
    sub_21B112264("Runtime: %f seconds", v51);
    v25 = MEMORY[0x277D837D0];
    v22 = v54;
  }

  sub_21B112704();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21B113D90;
  v40 = *(v2 + *(*v2 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD475E0, qword_21B12B478);
  v41 = sub_21B112454();
  *(v39 + 56) = v25;
  *(v39 + 64) = v22;
  *(v39 + 32) = v41;
  *(v39 + 40) = v42;
  sub_21B112264("Error: %s", v48);

  v43 = sub_21B112704();
  return sub_21B112264("}}}", 3, 2, &dword_21AF80000, v24, v43, MEMORY[0x277D84F90]);
}

uint64_t sub_21B0D8DFC(uint64_t a1, unint64_t a2, double a3)
{
  sub_21B0D9740(a1, a2, a3);
  sub_21B111E54();
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_21B0EC85C(v6, 0x726574706F6461, 0xE700000000000000);
  sub_21B0ED1F8();

  return sub_21B0D8EEC(a1, a2, a3);
}

uint64_t sub_21B0D8EEC(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B113D80;
  v8 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x277D84CC0];
  v10 = MEMORY[0x277D84D30];
  *(v7 + 96) = MEMORY[0x277D84CC0];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x277D839F8];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x277D83A80];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_21B0ED1F4();
}

unint64_t sub_21B0D8FF0()
{
  result = qword_27CD474B8;
  if (!qword_27CD474B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474B8);
  }

  return result;
}

unint64_t sub_21B0D9044(uint64_t a1)
{
  *(a1 + 8) = sub_21B0D9074();
  result = sub_21B0D90C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21B0D9074()
{
  result = qword_27CD474C0;
  if (!qword_27CD474C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474C0);
  }

  return result;
}

unint64_t sub_21B0D90C8()
{
  result = qword_27CD474C8;
  if (!qword_27CD474C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474C8);
  }

  return result;
}

unint64_t sub_21B0D9120()
{
  result = qword_27CD474D0;
  if (!qword_27CD474D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474D0);
  }

  return result;
}

unint64_t sub_21B0D9174(uint64_t a1)
{
  result = sub_21B0D919C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B0D919C()
{
  result = qword_27CD474D8;
  if (!qword_27CD474D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474D8);
  }

  return result;
}

uint64_t sub_21B0D91F0()
{
  OUTLINED_FUNCTION_3_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_21B0D99B0();
  }

  v2 = sub_21B0B4600();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_8();
  swift_unknownObjectRelease();
  return v2;
}

double sub_21B0D9280()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v3 = *(v0 + *(v2 + 128));
  v4 = sub_21B112704();
  sub_21B112264("LEAKED NETWORK SPAN: {{{", 24, 2, &dword_21AF80000, v3, v4, MEMORY[0x277D84F90]);
  sub_21B0B35B8();
  sub_21B112704();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v6 = OUTLINED_FUNCTION_7_16(v5);
  *(v6 + 16) = xmmword_21B113D90;
  v7 = *(v1 + *(*v1 + 464) + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD474E0, &qword_21B12B468);
  v8 = sub_21B112454();
  v10 = v9;
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_21AF93F18();
  *(v6 + 64) = v11;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_21B112264("Network task: %s", v119);

  sub_21B112704();
  v146 = v5;
  v12 = OUTLINED_FUNCTION_7_16(v5);
  OUTLINED_FUNCTION_3_26(v12, v13, v14, v15, v16, v17, v18, v19, v20, v120, v129, v135, v141, v146, v152, v21);
  ObjectType = swift_getObjectType();
  v130 = v7;
  v22 = v7;
  v23 = *(v7 + 16);
  v23(ObjectType, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
  v24 = sub_21B112454();
  v12[3].n128_u64[1] = MEMORY[0x277D837D0];
  v12[4].n128_u64[0] = v11;
  v12[2].n128_u64[0] = v24;
  v12[2].n128_u64[1] = v25;
  v153 = v3;
  sub_21B112264("Response: %s", ObjectType);

  v136 = sub_21B0D9B48();
  if (v28)
  {
    sub_21B112704();
    v29 = v147;
    v30 = OUTLINED_FUNCTION_7_16(v147);
    v40 = OUTLINED_FUNCTION_3_26(v30, v31, v32, v33, v34, v35, v36, v37, v38, v122, v130, v136, v11, v147, v153, v39);
    (v23)(v123, v131, v40);
    v41 = sub_21B112454();
    v42 = MEMORY[0x277D837D0];
    v43 = v142;
    v30[3].n128_u64[1] = MEMORY[0x277D837D0];
    v30[4].n128_u64[0] = v142;
    v30[2].n128_u64[0] = v41;
    v30[2].n128_u64[1] = v44;
    sub_21B112264("Unsupported response: %s", v123);
    v45 = v42;
  }

  else
  {
    v46 = v26;
    v47 = v27;
    v48 = HIDWORD(v27);
    sub_21B112704();
    v49 = v147;
    v50 = OUTLINED_FUNCTION_7_16(v147);
    OUTLINED_FUNCTION_3_26(v50, v51, v52, v53, v54, v55, v56, v57, v58, v122, v130, v136, v11, v147, v153, v59);
    v60 = MEMORY[0x277D83C10];
    v61[7] = v62;
    v61[8] = v60;
    v61[4] = v46;
    sub_21B112264("Status: %d", v125);

    sub_21B112704();
    v63 = OUTLINED_FUNCTION_5_29();
    v64 = MEMORY[0x277D84CC0];
    OUTLINED_FUNCTION_3_26(v63, v65, v66, v67, v68, v69, v70, v71, v72, v126, v132, v138, v143, v149, v155, v73);
    v74 = MEMORY[0x277D84D30];
    *(v75 + 56) = v64;
    *(v75 + 64) = v74;
    *(v75 + 32) = v48;
    v29 = v49;
    OUTLINED_FUNCTION_1_25("Uploaded: %llu bytes");
    sub_21B112264(v76);

    sub_21B112704();
    v77 = OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_3_26(v77, v78, v79, v80, v81, v82, v83, v84, v85, v127, v133, v139, v144, v150, v156, v86);
    *(v87 + 56) = v64;
    *(v87 + 64) = v74;
    *(v87 + 32) = v47;
    OUTLINED_FUNCTION_1_25("Downloaded: %llu bytes");
    sub_21B112264(v88);

    sub_21B112704();
    v89 = OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_3_26(v89, v90, v91, v92, v93, v94, v95, v96, v97, v128, v134, v140, v145, v151, v157, v98);
    v99 = MEMORY[0x277D83A80];
    v100[7] = v101;
    v100[8] = v99;
    v100[4] = v137;
    OUTLINED_FUNCTION_1_25("Runtime: %f seconds");
    sub_21B112264(v102);
    v45 = MEMORY[0x277D837D0];
    v43 = v142;
  }

  sub_21B112704();
  v103 = OUTLINED_FUNCTION_7_16(v29);
  OUTLINED_FUNCTION_3_26(v103, v104, v105, v106, v107, v108, v109, v110, v111, v124, v131, v137, v142, v148, v154, v112);
  v113 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD475E0, qword_21B12B478);
  v114 = sub_21B112454();
  v103[3].n128_u64[1] = v45;
  v103[4].n128_u64[0] = v43;
  v103[2].n128_u64[0] = v114;
  v103[2].n128_u64[1] = v115;
  OUTLINED_FUNCTION_9_16("Error: %s");
  sub_21B112264(v116);

  sub_21B112704();
  OUTLINED_FUNCTION_9_16("}}}");
  return sub_21B112264(v117);
}

uint64_t sub_21B0D9740(uint64_t a1, unint64_t a2, double a3)
{
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D80;
  *(inited + 32) = 0x635F737574617473;
  *(inited + 40) = 0xEB0000000065646FLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x656D69746E7572;
  *(inited + 64) = 0xE700000000000000;
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  OUTLINED_FUNCTION_32_0();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v9;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  strcpy((inited + 104), "uploaded_bytes");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  sub_21AFCD0E8();
  return sub_21B112334();
}

uint64_t sub_21B0D98C0(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B113D80;
  v8 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x277D84CC0];
  v10 = MEMORY[0x277D84D30];
  *(v7 + 96) = MEMORY[0x277D84CC0];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x277D839F8];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x277D83A80];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_21B0B455C();
}

void sub_21B0D99B0()
{
  OUTLINED_FUNCTION_3_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_21B0D9B48();
    if (v2)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v4 = OUTLINED_FUNCTION_7_16(v3);
      *(v4 + 16) = xmmword_21B113D90;
      OUTLINED_FUNCTION_8();
      v6 = *(v0 + *(v5 + 464) + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
      v8 = sub_21B112454();
      v10 = v9;
      *(v4 + 56) = MEMORY[0x277D837D0];
      *(v4 + 64) = sub_21AF93F18();
      *(v4 + 32) = v8;
      *(v4 + 40) = v10;
      OUTLINED_FUNCTION_9_16("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s");
      sub_21B0B455C();
    }

    else
    {
      OUTLINED_FUNCTION_8();
      (*(v11 + 568))(v12, v13);
    }

    sub_21B0B3B00();
  }
}

double sub_21B0D9B08(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_21B0B3F38(sub_21B0DA2B0, v3);
}

uint64_t sub_21B0D9B48()
{
  OUTLINED_FUNCTION_3_4();
  v2 = *(v0 + *(v1 + 464) + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v5 = v4(ObjectType, v2);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

LABEL_7:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
    v19 = OUTLINED_FUNCTION_7_16(v18);
    *(v19 + 16) = xmmword_21B113D90;
    v58[0] = v4(ObjectType, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
    v20 = sub_21B112454();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_21AF93F18();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    OUTLINED_FUNCTION_9_16("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s");
    sub_21B0B455C();

    sub_21B0B3B00();
    *&result = 0.0;
    return result;
  }

  [v7 statusCode];
  if (!(*(v2 + 8))(ObjectType, v2))
  {

    *&result = 0.0;
    return result;
  }

  OUTLINED_FUNCTION_32_0();
  v59 = 0xD000000000000021;
  v60 = v8;
  v9 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v9, v10, v11, v12, v13);
  v14 = sub_21B0B6350(v58);
  if (v61)
  {
    OUTLINED_FUNCTION_0_25(v14, v15, v16, MEMORY[0x277D84CC0], v17);
  }

  else
  {
    sub_21B0DA0C4(&v59);
  }

  OUTLINED_FUNCTION_32_0();
  v59 = 0xD00000000000001DLL;
  v60 = v24;
  v25 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v25, v26, v27, v28, v29);
  v30 = sub_21B0B6350(v58);
  if (v61)
  {
    OUTLINED_FUNCTION_0_25(v30, v31, v32, MEMORY[0x277D84CC0], v33);
  }

  else
  {
    sub_21B0DA0C4(&v59);
  }

  OUTLINED_FUNCTION_32_0();
  v34 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v34, v35, v36, v37, v38);
  v39 = sub_21B0B6350(v58);
  if (v61)
  {
    if (OUTLINED_FUNCTION_0_25(v39, v40, v41, MEMORY[0x277D839F8], v42))
    {
      v57 = -2.31584178e77;
      goto LABEL_19;
    }
  }

  else
  {
    sub_21B0DA0C4(&v59);
  }

  OUTLINED_FUNCTION_32_0();
  v43 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v43, v44, v45, v46, v47);
  sub_21B0B6350(v58);
  if (!v61)
  {
    sub_21B0DA0C4(&v59);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_25;
  }

LABEL_19:
  OUTLINED_FUNCTION_32_0();
  v48 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v48, v49, v50, v51, v52);

  v53 = sub_21B0B6350(v58);
  if (v61)
  {
    if (OUTLINED_FUNCTION_0_25(v53, v54, v55, MEMORY[0x277D839F8], v56))
    {
      *&result = -2.31584178e77 - v57;
      return result;
    }
  }

  else
  {
    sub_21B0DA0C4(&v59);
  }

LABEL_25:
  *&result = 0.0;
  return result;
}

id sub_21B0D9FB8()
{
  v1 = [v0 response];

  return v1;
}

uint64_t sub_21B0D9FF0()
{
  OUTLINED_FUNCTION_3_4();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_3_4();

  return swift_unknownObjectRelease();
}

uint64_t sub_21B0DA058()
{
  v0 = sub_21B0D91F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21B0DA0C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47250, &qword_21B12A130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B0DA12C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(a1 + *(*a1 + 480)))
  {
    swift_unknownObjectRetain();
    if (nw_activity_is_activated())
    {
      nw_activity_complete_with_reason();
    }

    else
    {
      sub_21B1126E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD475F0, &qword_21B12BD00);
      v4 = sub_21B112454();
      v6 = v5;
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 64) = sub_21AF93F18();
      *(v3 + 32) = v4;
      *(v3 + 40) = v6;
      sub_21B112264("Ending NetworkSpan before nw_activity (%s) was activated", v8);
    }

    a1 = swift_unknownObjectRelease();
  }

  return a2(a1);
}

uint64_t sub_21B0DA2BC(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21B112304();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_21B0DF010(&v8, v5, &v9);
}

__n128 OUTLINED_FUNCTION_3_26(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_21B0DA3C8()
{
  v0 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B111214();
  sub_21B110CC4();

  sub_21B110CF4();
  v9 = *(v2 + 8);
  v9(v6, v0);
  v10 = sub_21B110CD4();
  v9(v8, v0);
  return v10;
}

uint64_t sub_21B0DA50C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v8 = OUTLINED_FUNCTION_5_30(v0, v1, v2, v3, v4, v5, v6, v7, v18);
  OUTLINED_FUNCTION_3_21(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v29[1] == 1)
  {
    return 0;
  }

  v16 = v29[0];

  sub_21AF99BE0(v29, &qword_27CD46E18, &qword_21B1283D0);
  return v16;
}

uint64_t sub_21B0DA598()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v8 = OUTLINED_FUNCTION_5_30(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  OUTLINED_FUNCTION_3_21(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  OUTLINED_FUNCTION_5_19();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v30[33];
    sub_21AF99BE0(v30, &qword_27CD46E18, &qword_21B1283D0);
  }

  return v17 & 1;
}

uint64_t sub_21B0DA610()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v8 = OUTLINED_FUNCTION_5_30(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  OUTLINED_FUNCTION_3_21(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  OUTLINED_FUNCTION_5_19();
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v30[57];
    sub_21AF99BE0(v30, &qword_27CD46E18, &qword_21B1283D0);
  }

  return v17 & 1;
}

uint64_t sub_21B0DA688()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v8 = OUTLINED_FUNCTION_5_30(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  OUTLINED_FUNCTION_3_21(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  OUTLINED_FUNCTION_5_19();
  if (v16)
  {
    return 0;
  }

  v17 = v31;

  sub_21AF99BE0(v30, &qword_27CD46E18, &qword_21B1283D0);
  return v17;
}

uint64_t sub_21B0DA710()
{
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime + 8) == 1)
  {
    return PoirotUserTaskParameters<>.startTime.getter();
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime);
  }
}

uint64_t sub_21B0DA764(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_21B0DA780()
{
  v0 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111F4();
  v7 = OUTLINED_FUNCTION_4_27();
  memcpy(v7, v8, v9);
  if (v15 == 1 || (v10 = v17, v11 = v16, sub_21AF99BE0(v14, &qword_27CD46E18, &qword_21B1283D0), (v10 & 1) != 0))
  {
    sub_21B110F74();
    sub_21B110F44();
    v11 = v12;
    (*(v2 + 8))(v6, v0);
  }

  return v11;
}

uint64_t sub_21B0DA8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_21B110CA4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111F4();
  v12 = OUTLINED_FUNCTION_4_27();
  memcpy(v12, v13, v14);
  if (v23 == 1 || (v15 = v24, , sub_21AF99BE0(v22, &qword_27CD46E18, &qword_21B1283D0), !v15))
  {
    v19 = sub_21B110D94();
    v17 = a1;
    v18 = 1;
  }

  else
  {
    (*(v7 + 104))(v11, *MEMORY[0x277CC91C0], v5);
    v16 = sub_21B110D94();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
    sub_21B110D64();
    v17 = a1;
    v18 = 0;
    v19 = v16;
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
}