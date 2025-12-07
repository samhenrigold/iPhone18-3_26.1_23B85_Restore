BOOL static MusicUserProfileResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v2 || (sub_1D5616168() & 1) != 0)
  {
    type metadata accessor for UserProfile(0);
    if (sub_1D5611A78())
    {
      return 1;
    }
  }

  return result;
}

uint64_t MusicUserProfileResponse.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for UserProfile(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_181();
  sub_1D54CC048(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t MusicUserProfileResponse.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for UserProfile(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_181();
  sub_1D54CC048(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D54CB86C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for UserProfile(0);
  sub_1D5611AB8();
  sub_1D54CC048(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicUserProfileResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for StorePlatformUserProfileResponse(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23[-1] - v13;
  sub_1D4E628D4(a1, v23);
  sub_1D52AAA04(v23, v14);
  if (!v2)
  {
    sub_1D54CC0E4(v14, v12);
    v15 = OUTLINED_FUNCTION_71();
    __swift_project_boxed_opaque_existential_1(v15, v16);
    OUTLINED_FUNCTION_7_131();
    sub_1D5616378();
    v17 = OUTLINED_FUNCTION_71();
    __swift_project_boxed_opaque_existential_1(v17, v18);
    OUTLINED_FUNCTION_7_131();
    v19 = sub_1D5616368();
    sub_1D54C963C(v12, v8, v19, a2);
    OUTLINED_FUNCTION_2_182();
    sub_1D54CC090(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicUserProfileResponse.encode(to:)(void *a1)
{
  v3 = sub_1D560CD48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = type metadata accessor for StorePlatformUserProfileResponse(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  OUTLINED_FUNCTION_7_131();
  sub_1D56163C8();
  sub_1D54CA9BC(v11);
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  (*(v4 + 8))(v7, v3);
  sub_1D52AA854(a1);
  OUTLINED_FUNCTION_2_182();
  return sub_1D54CC090(v11, v15);
}

uint64_t MusicUserProfileResponse.description.getter()
{
  OUTLINED_FUNCTION_5_139();
  v4 = v1;
  sub_1D5615B68();

  v2 = UserProfile.description.getter();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](v0, 0x80000001D568F120);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v4;
}

uint64_t MusicUserProfileResponse.debugDescription.getter()
{
  OUTLINED_FUNCTION_5_139();
  v7 = v1;
  sub_1D5615B68();

  v6 = v0;
  UserProfile.debugDescription.getter();
  sub_1D4F53278();
  v2 = sub_1D5615968();
  v4 = v3;

  MEMORY[0x1DA6EAC70](v2, v4);

  MEMORY[0x1DA6EAC70](v6, 0x80000001D568F120);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v7;
}

uint64_t type metadata accessor for MusicUserProfileResponse(uint64_t a1)
{
  result = qword_1EDD5B548;
  if (!qword_1EDD5B548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54CBEF8(uint64_t a1)
{
  result = type metadata accessor for UserProfile(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D54CBF64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_36();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v4;
}

uint64_t sub_1D54CBFAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_3_36();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D54CC000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_36();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v4;
}

uint64_t sub_1D54CC048(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D54CC090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D54CC0E4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_3_36();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

unint64_t sub_1D54CC138()
{
  result = qword_1EC7F7400;
  if (!qword_1EC7F7400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F73F8, &qword_1D56693E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7400);
  }

  return result;
}

uint64_t sub_1D54CC19C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_36();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v4;
}

uint64_t Curator.siriRepresentation.getter@<X0>(void *a1@<X8>)
{
  v79 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v77 = v4;
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v76 = v6 - v5;
  v68 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v75 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v70 = v10 - v9;
  v71 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v69 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v67 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v16 = OUTLINED_FUNCTION_22(v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v62 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_0();
  v64 = v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v65 = &v62 - v29;
  v30 = sub_1D56141F8();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  v74 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = *(v32 + 16);
  v37(v35 - v34, v1, v30);
  v38 = sub_1D56141D8();
  v72 = v39;
  v73 = v38;
  sub_1D56141E8();
  v40 = sub_1D56106B8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v40);
  sub_1D56141C8();
  v41 = OUTLINED_FUNCTION_5_43();
  v42 = v68;
  __swift_storeEnumTagSinglePayload(v41, v43, v44, v68);
  v81 = v30;
  v82 = MEMORY[0x1E6977030];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80);
  v63 = v36;
  v37(boxed_opaque_existential_0, v36, v30);
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v46 = v67;
  sub_1D5612AF8();
  v47 = v70;
  sub_1D5611A98();
  (*(v69 + 8))(v46, v71);
  sub_1D560FDD8();
  (*(v75 + 8))(v47, v42);
  sub_1D4E7661C(v21, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v42);
  v48 = v19;
  v62 = v21;
  sub_1D4ED3A14(v19, v21, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v80);
  v49 = v76;
  sub_1D560EC98();
  sub_1D4ED3750(v21, v19, &qword_1EC7EA358, &unk_1D561DF50);
  v50 = type metadata accessor for MusicSiriRepresentation(0);
  v51 = v79;
  v52 = v65;
  sub_1D4ED3750(v65, v79 + v50[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v53 = v64;
  sub_1D4ED3750(v64, v51 + v50[9], &qword_1EC7EC478, &unk_1D56299D0);
  v54 = v66;
  sub_1D4ED3750(v66, v51 + v50[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v80[0]) = 3;
  sub_1D50391CC();
  v56 = v55;
  v58 = v57;
  sub_1D4E7661C(v48, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v77 + 8))(v49, v78);
  sub_1D4E7661C(v62, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v54, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E7661C(v53, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E7661C(v52, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = (*(v74 + 8))(v63, v30);
  v60 = v79;
  *v79 = v56;
  v60[1] = v58;
  *(v60 + 16) = 3;
  v61 = v72;
  v60[3] = v73;
  v60[4] = v61;
  v60[5] = 0;
  v60[6] = 0;
  return result;
}

uint64_t Curator.catalogID.getter()
{
  v0 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1D56141F8();
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v2 + 8))(v6, v0);
  v11 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1D4E7661C(v10, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v12 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0();
    (*(v13 + 8))(v10, v11);
  }

  return v12;
}

uint64_t Curator.editorialArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_6_5();
  v11 = OUTLINED_FUNCTION_5_43();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  result = sub_1D5614178();
  if (result)
  {
    sub_1D4ED06C8(0xD000000000000011, 0x80000001D567FAA0, result, v3);

    sub_1D4ED3750(v3, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
    {
      OUTLINED_FUNCTION_47_0(v3);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_47_0(v2);
      v16 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v3, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0();
      (*(v17 + 8))(v2, v15);
      v16 = 0;
    }

    __swift_storeEnumTagSinglePayload(v1, v16, 1, v10);
    return sub_1D4ED3A14(v1, a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

uint64_t Curator.logoArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_6_5();
  v11 = OUTLINED_FUNCTION_5_43();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  result = sub_1D5614178();
  if (result)
  {
    sub_1D4ED06C8(0x676F4C646E617262, 0xE90000000000006FLL, result, v3);

    sub_1D4ED3750(v3, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
    {
      OUTLINED_FUNCTION_47_0(v3);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_47_0(v2);
      v16 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v3, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0();
      (*(v17 + 8))(v2, v15);
      v16 = 0;
    }

    __swift_storeEnumTagSinglePayload(v1, v16, 1, v10);
    return sub_1D4ED3A14(v1, a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

uint64_t sub_1D54CCE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7418, &qword_1D5669430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  *(swift_allocObject() + 16) = xmmword_1D561C050;
  sub_1D560FE78();
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D54CD0A4();
  v0 = sub_1D560D138();

  qword_1EC7F7408 = v0;
  return result;
}

uint64_t sub_1D54CCFA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7418, &qword_1D5669430);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D54CD0A4();
  v0 = sub_1D560D138();

  qword_1EC7F7410 = v0;
  return result;
}

unint64_t sub_1D54CD0A4()
{
  result = qword_1EDD52DE8;
  if (!qword_1EDD52DE8)
  {
    sub_1D56140F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52DE8);
  }

  return result;
}

uint64_t sub_1D54CD18C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7438, &qword_1D5669598);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = *(v5 + 16);
  v15(&v24 - v13, a2, v3);
  (*(v11 + 104))(v14, *MEMORY[0x1E69750A0], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7440, &unk_1D56695A0);
  swift_allocObject();

  sub_1D560F188();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6620, &qword_1D562ECD0);
  v16 = sub_1D560DBF8();
  v18 = v17;
  MEMORY[0x1DA6EAF30]();
  sub_1D4E6C078(*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D56151F8();
  v16(v26, 0);
  v19 = sub_1D560DC18();
  v21 = v20;
  sub_1D4EFF488();
  v22 = *(*v21 + 16);
  sub_1D4EFF6F0();
  v15(v8, v25, v3);
  sub_1D54CE068(v22, v8, v21);
  v19(v26, 0);
}

uint64_t sub_1D54CD41C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7428, &qword_1D5669588);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  sub_1D52077E8(a2, &v18[-v8]);
  (*(v7 + 104))(v9, *MEMORY[0x1E69750A0], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7430, &qword_1D5669590);
  swift_allocObject();

  sub_1D560F188();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8C0, &unk_1D56606D0);
  v10 = sub_1D560DBF8();
  v12 = v11;
  MEMORY[0x1DA6EAF30]();
  sub_1D4E6C078(*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D56151F8();
  v10(v18, 0);
  v13 = sub_1D560DC18();
  v15 = v14;
  sub_1D4EFF488();
  v16 = *(*v15 + 16);
  sub_1D4EFF6F0();
  sub_1D52077E8(a2, v5);
  sub_1D54CE110(v16, v5, v15);
  v13(v18, 0);
}

uint64_t sub_1D54CD670(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D54CD6C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C770;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7420, &unk_1D5669508);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  qword_1EC87C6A8 = v0;
  return result;
}

id sub_1D54CD798()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6977610]);

  return [v0 init];
}

uint64_t sub_1D54CD7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8B8, &unk_1D561D100);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8C0, &unk_1D56606D0);
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54CD90C, 0, 0);
}

uint64_t sub_1D54CD90C()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB550, &unk_1D561E4F0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    sub_1D5615B68();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x79747265706F7250, 0xE900000000000020);
    v0[6] = v1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568F180);
    return sub_1D5615E08();
  }

  v3 = v2;
  v4 = qword_1EC7E90F0;

  if (v4 != -1)
  {
    swift_once();
  }

  v0[7] = qword_1EC7F1DE8;
  v0[8] = v3;
  sub_1D54CE004();
  if ((sub_1D5614D18() & 1) == 0)
  {
    v10 = v0[11];
    sub_1D5615B68();
    v0[5] = 0xE000000000000000;
    v0[4] = 0;
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D568F1A0);
    v0[9] = v10;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    return sub_1D5615E08();
  }

  v5 = v0[14];
  sub_1D5613AF8();
  sub_1D560DD68();
  sub_1D560CB98();
  sub_1D560DC98();
  KeyPath = swift_getKeyPath();
  sub_1D54CD41C(KeyPath, v5);

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1D54CDC30;
  v8 = v0[17];
  v9 = v0[18];

  return MEMORY[0x1EEDCEAC0](v8, v9);
}

uint64_t sub_1D54CDC30()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D540DA10;
  }

  else
  {
    v2 = sub_1D54CDD44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D54CDD44()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[10];
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v7[4] = &protocol witness table for MusicItemCollection<A>;
  __swift_allocate_boxed_opaque_existential_0(v7);
  sub_1D560DE38();

  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D54CDE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return sub_1D54CD7D0(a1, a2, a3, a4);
}

uint64_t sub_1D54CDF50(void *a1)
{
  a1[1] = sub_1D54CE1C0(&qword_1EC7F4270, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  a1[2] = sub_1D54CE1C0(&qword_1EC7EA8E8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  result = sub_1D54CE1C0(&qword_1EDD54810, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  a1[3] = result;
  return result;
}

unint64_t sub_1D54CE004()
{
  result = qword_1EC7EB558;
  if (!qword_1EC7EB558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB550, &unk_1D561E4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB558);
  }

  return result;
}

uint64_t sub_1D54CE068(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1D5614898();
  v11 = v6;
  v12 = MEMORY[0x1E69773A0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
  (*(*(v6 - 8) + 32))(boxed_opaque_existential_0, a2, v6);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_1D4F69344(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_1D54CE110(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = type metadata accessor for Composer(0);
  v11 = sub_1D54CE1C0(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
  sub_1D54CE208(a2, boxed_opaque_existential_0);
  v7 = *a3;
  *(v7 + 16) = a1 + 1;
  return sub_1D4F69344(&v9, v7 + 40 * a1 + 32);
}

uint64_t sub_1D54CE1C0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D54CE208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Composer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54CE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = OUTLINED_FUNCTION_52_35(a1, a2, a3);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_0();
  sub_1D54D3AA8(a2, v20, &qword_1EC7E9F98);
  if (v21)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = swift_dynamicCast() ^ 1;
    v16 = v6;
    v17 = 1;
    v18 = v14;
  }

  else
  {
    sub_1D4E50004(v20, &qword_1EC7E9F98, &qword_1D561C420);
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    OUTLINED_FUNCTION_33();
  }

  __swift_storeEnumTagSinglePayload(v16, v15, v17, v18);
  return swift_setAtWritableKeyPath();
}

void sub_1D54CE38C()
{
  OUTLINED_FUNCTION_47();
  v36 = v2;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v38 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_122_3();
  type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v39 = v17;
  OUTLINED_FUNCTION_23();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - v22;
  v40 = v0;
  v24 = swift_readAtKeyPath();
  sub_1D54D3AA8(v25, v23, v7);
  v24(&v41, 0);
  sub_1D54D3AA8(v38, v1, &qword_1EC7ECC80);
  OUTLINED_FUNCTION_10(v1);
  if (v30)
  {
    v26 = &qword_1EC7ECC80;
    v27 = &unk_1D5622EA0;
    v28 = v1;
LABEL_7:
    sub_1D4E50004(v28, v26, v27);
    goto LABEL_8;
  }

  sub_1D54D39F4(v1, v14, type metadata accessor for CuratorRelationshipProvider);
  swift_getAtKeyPath();
  sub_1D54D3A50(v14, type metadata accessor for CuratorRelationshipProvider);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  OUTLINED_FUNCTION_10(v21);
  if (v30)
  {
    v28 = v21;
    v26 = v7;
    v27 = v5;
    goto LABEL_7;
  }

  sub_1D4E50004(v23, v7, v5);
  OUTLINED_FUNCTION_43_8();
  (*(v31 + 32))(v23, v21, v29);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v29);
LABEL_8:
  sub_1D54D3AA8(v23, v39, v7);
  swift_setAtWritableKeyPath();
  sub_1D4E50004(v23, v7, v5);
  OUTLINED_FUNCTION_46();
}

void sub_1D54CE6B0()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38_2();
  v18 = type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  sub_1D5069360(v11, v2);
  OUTLINED_FUNCTION_57(v2, 1, v18);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }

  else
  {
    sub_1D54D39F4(v2, v1, type metadata accessor for CuratorRelationshipProvider);
  }

  sub_1D54CE26C(v15, v13, v10, v8, v6, v4);
  OUTLINED_FUNCTION_31_55();
  sub_1D54D39F4(v1, v11, v37);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v18);
  OUTLINED_FUNCTION_46();
}

void sub_1D54CE890()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v24[1] = v7;
  v8 = type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
  sub_1D5069360(v4, v14);
  OUTLINED_FUNCTION_57(v14, 1, v8);
  if (v20)
  {
    sub_1D4E50004(v16, &qword_1EC7ECC80, &unk_1D5622EA0);
    sub_1D54D3AA8(v6, v16, &qword_1EC7ECC80);
  }

  else
  {
    v24[0] = v3;
    sub_1D54D39F4(v14, v1, type metadata accessor for CuratorRelationshipProvider);
    sub_1D54CE38C();
    sub_1D4E50004(v16, &qword_1EC7ECC80, &unk_1D5622EA0);
    sub_1D54D39F4(v1, v16, type metadata accessor for CuratorRelationshipProvider);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v8);
  }

  sub_1D5069360(v16, v4);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54CEA74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  _s15InternalStorageVMa_0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

void sub_1D54CEB6C()
{
  OUTLINED_FUNCTION_47();
  v118 = v1;
  v119 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v112 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v116 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v115 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v117 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v114 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v110 - v22;
  OUTLINED_FUNCTION_23();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v110 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v110 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v110 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v111 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v110 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_38_2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_47_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000027, 0x80000001D568F240);
    v122 = v5;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v109 = 45;
    goto LABEL_69;
  }

  v43 = v42;
  v44 = qword_1EDD5D808;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_15_89(&qword_1EDD5D808);
  }

  *&v120 = qword_1EDD5D810;
  v122 = v43;
  sub_1D4EC5794(&unk_1EDD5D7C8, &qword_1EC7EED48, &qword_1D56697E0);
  OUTLINED_FUNCTION_24_2();
  if ((sub_1D5614D18() & 1) == 0)
  {
    v49 = qword_1EDD5D820;

    if (v49 != -1)
    {
      OUTLINED_FUNCTION_14_91(&qword_1EDD5D820);
    }

    OUTLINED_FUNCTION_6_144(qword_1EDD5D828);
    OUTLINED_FUNCTION_63();
    if (v49)
    {
      v50 = _s15InternalStorageVMa_0(0);
      v51 = OUTLINED_FUNCTION_61_4(*(v50 + 20));
      sub_1D54D3AA8(v51, v2, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
      OUTLINED_FUNCTION_1(v2);
      if (v78)
      {

        v46 = &qword_1EC7EC8D0;
        v47 = &unk_1D5623AD0;
        v48 = v2;
        goto LABEL_63;
      }

LABEL_64:
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_15_1();
      v54 = *(v102 + 32);
      goto LABEL_65;
    }

    v55 = qword_1EDD5D838;

    if (v55 != -1)
    {
      OUTLINED_FUNCTION_13_94(&qword_1EDD5D838);
    }

    OUTLINED_FUNCTION_6_144(qword_1EDD76DA8);
    OUTLINED_FUNCTION_63();
    if (v55)
    {
      v56 = _s15InternalStorageVMa_0(0);
      v57 = OUTLINED_FUNCTION_61_4(*(v56 + 24));
      sub_1D54D3AA8(v57, v37, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
      OUTLINED_FUNCTION_1(v37);
      if (v78)
      {

        v46 = &qword_1EC7EA778;
        v47 = &qword_1D5622E60;
        v48 = v37;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    v59 = qword_1EDD5D7F8;

    if (v59 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_6_144(qword_1EDD76DA0);
    OUTLINED_FUNCTION_63();
    if (v59)
    {
      v60 = _s15InternalStorageVMa_0(0);
      v61 = OUTLINED_FUNCTION_61_4(*(v60 + 28));
      sub_1D54D3AA8(v61, v31, v62);
      type metadata accessor for CuratorRelationshipProvider(0);
      OUTLINED_FUNCTION_1(v31);
      if (!v78)
      {
        OUTLINED_FUNCTION_72_3();
        OUTLINED_FUNCTION_31_55();
        sub_1D54D39F4(v31, v69, v70);
LABEL_66:

        goto LABEL_67;
      }

      v46 = &qword_1EC7ECC80;
      v47 = &unk_1D5622EA0;
      v48 = v31;
      goto LABEL_63;
    }

    v63 = sub_1D560D1F8();
    OUTLINED_FUNCTION_54_37(v63);
    v64 = OUTLINED_FUNCTION_7_132();

    if (v64)
    {
      v65 = _s15InternalStorageVMa_0(0);
      v66 = OUTLINED_FUNCTION_61_4(*(v65 + 28));
      sub_1D54D3AA8(v66, v29, v67);
      v68 = type metadata accessor for CuratorRelationshipProvider(0);
      OUTLINED_FUNCTION_57(v29, 1, v68);
      if (v78)
      {

        v46 = &qword_1EC7ECC80;
        v47 = &unk_1D5622EA0;
        v48 = v29;
        goto LABEL_63;
      }

      v76 = v117;
      sub_1D54D3AA8(v29, v117, &qword_1EC7EA790);
      OUTLINED_FUNCTION_1_182();
      sub_1D54D3A50(v29, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
      OUTLINED_FUNCTION_1(v76);
      if (!v78)
      {
        goto LABEL_64;
      }

      v46 = &qword_1EC7EA790;
      v47 = &unk_1D561FB10;
LABEL_62:
      v48 = v76;
      goto LABEL_63;
    }

    v71 = qword_1EDD5D7E8;

    if (v71 != -1)
    {
      OUTLINED_FUNCTION_12_99(&qword_1EDD5D7E8);
    }

    OUTLINED_FUNCTION_6_144(qword_1EDD5D7F0);
    OUTLINED_FUNCTION_63();
    if (v71)
    {
      v72 = _s15InternalStorageVMa_0(0);
      v73 = OUTLINED_FUNCTION_61_4(*(v72 + 28));
      sub_1D54D3AA8(v73, v26, v74);
      v75 = type metadata accessor for CuratorRelationshipProvider(0);
      OUTLINED_FUNCTION_1(v26);
      if (!v78)
      {
        v76 = v115;
        sub_1D54D3AA8(&v26[*(v75 + 20)], v115, &qword_1EC7EA788);
        OUTLINED_FUNCTION_1_182();
        sub_1D54D3A50(v26, v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
        OUTLINED_FUNCTION_1(v76);
        if (!v84)
        {
          goto LABEL_64;
        }

        v46 = &qword_1EC7EA788;
        v47 = &unk_1D56223A0;
        goto LABEL_62;
      }
    }

    else
    {
      v79 = qword_1EDD5D7D8;

      if (v79 != -1)
      {
        OUTLINED_FUNCTION_11_117(&qword_1EDD5D7D8);
      }

      OUTLINED_FUNCTION_6_144(qword_1EDD5D7E0);
      OUTLINED_FUNCTION_63();
      if (v79)
      {
        v80 = _s15InternalStorageVMa_0(0);
        v81 = OUTLINED_FUNCTION_61_4(*(v80 + 32));
        v76 = v116;
        sub_1D54D3AA8(v81, v116, v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
        OUTLINED_FUNCTION_1(v76);
        if (!v78)
        {
          goto LABEL_64;
        }

        v46 = &qword_1EC7ECF38;
        v47 = &qword_1D562E650;
        goto LABEL_62;
      }

      v85 = sub_1D560D218();
      OUTLINED_FUNCTION_54_37(v85);
      v86 = OUTLINED_FUNCTION_7_132();

      if ((v86 & 1) == 0)
      {
        v92 = qword_1EDD54380;

        if (v92 != -1)
        {
          OUTLINED_FUNCTION_10_117(&qword_1EDD54380);
        }

        OUTLINED_FUNCTION_6_144(qword_1EDD54388);
        OUTLINED_FUNCTION_63();
        if ((v92 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_30();
            sub_1D5615B68();
            OUTLINED_FUNCTION_16_6();
            MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
            v122 = v5;
            sub_1D560CDE8();
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_28();
            v109 = 70;
LABEL_69:
            v110 = v109;
            OUTLINED_FUNCTION_38_46("Fatal error", v105, v106, v107, v108, "MusicKitInternal/PlaylistPropertyProvider+Internal.swift");
            __break(1u);
          }
        }

        v93 = _s15InternalStorageVMa_0(0);
        v94 = OUTLINED_FUNCTION_61_4(*(v93 + 28));
        v76 = v114;
        sub_1D54D3AA8(v94, v114, v95);
        v96 = type metadata accessor for CuratorRelationshipProvider(0);
        OUTLINED_FUNCTION_1(v76);
        if (v78)
        {

          v46 = &qword_1EC7ECC80;
          v47 = &unk_1D5622EA0;
        }

        else
        {
          v97 = v76 + *(v96 + 28);
          v98 = v111;
          sub_1D54D3AA8(v97, v111, &qword_1EC7EA778);
          OUTLINED_FUNCTION_1_182();
          v99 = v76;
          v76 = v98;
          sub_1D54D3A50(v99, v100);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
          OUTLINED_FUNCTION_1(v98);
          if (!v101)
          {
            goto LABEL_64;
          }

          v46 = &qword_1EC7EA778;
          v47 = &qword_1D5622E60;
        }

        goto LABEL_62;
      }

      v87 = _s15InternalStorageVMa_0(0);
      v88 = OUTLINED_FUNCTION_61_4(*(v87 + 28));
      v26 = v113;
      sub_1D54D3AA8(v88, v113, v89);
      v90 = type metadata accessor for CuratorRelationshipProvider(0);
      OUTLINED_FUNCTION_1(v26);
      if (!v78)
      {
        v76 = v112;
        sub_1D54D3AA8(&v26[*(v90 + 24)], v112, &qword_1EC7EA780);
        OUTLINED_FUNCTION_1_182();
        sub_1D54D3A50(v26, v91);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
        OUTLINED_FUNCTION_1(v76);
        if (!v78)
        {
          goto LABEL_64;
        }

        v46 = &qword_1EC7EA780;
        v47 = &unk_1D561FB20;
        goto LABEL_62;
      }
    }

    v46 = &qword_1EC7ECC80;
    v47 = &unk_1D5622EA0;
    v48 = v26;
    goto LABEL_63;
  }

  sub_1D54D3AA8(v118, v0, &qword_1EC7ECF58);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_10(v0);
  if (!v78)
  {
    *(&v121 + 1) = v45;
    __swift_allocate_boxed_opaque_existential_0(&v120);
    OUTLINED_FUNCTION_43_8();
    v54 = *(v53 + 32);
LABEL_65:
    v54();
    goto LABEL_66;
  }

  v46 = &qword_1EC7ECF58;
  v47 = &qword_1D5623AF0;
  v48 = v0;
LABEL_63:
  sub_1D4E50004(v48, v46, v47);
  v120 = 0u;
  v121 = 0u;
LABEL_67:
  v103 = v121;
  v104 = v119;
  *v119 = v120;
  v104[1] = v103;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54CF7A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  OUTLINED_FUNCTION_71();
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000027, 0x80000001D568F240);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_28;
  }

  v4 = qword_1EDD5D820;
  swift_retain_n();
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_14_91(&qword_1EDD5D820);
  }

  v5 = sub_1D4EC5794(&unk_1EDD5D7C8, &qword_1EC7EED48, &qword_1D56697E0);
  OUTLINED_FUNCTION_39_0(v5, v6, v7);
  OUTLINED_FUNCTION_77_0();
  if (v2)
  {
    goto LABEL_11;
  }

  v8 = qword_1EDD5D808;

  if (v8 != -1)
  {
    v9 = OUTLINED_FUNCTION_15_89(&qword_1EDD5D808);
  }

  OUTLINED_FUNCTION_39_0(v9, v10, v11);
  OUTLINED_FUNCTION_77_0();
  if (v8)
  {
    goto LABEL_11;
  }

  v12 = qword_1EDD5D838;

  if (v12 != -1)
  {
    v13 = OUTLINED_FUNCTION_13_94(&qword_1EDD5D838);
  }

  OUTLINED_FUNCTION_39_0(v13, v14, v15);
  OUTLINED_FUNCTION_77_0();
  if (v12)
  {
    goto LABEL_11;
  }

  v38 = sub_1D560D1F8();
  v19 = OUTLINED_FUNCTION_39_0(v38, v17, v18);

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = qword_1EDD5D7E8;

  if (v20 != -1)
  {
    v21 = OUTLINED_FUNCTION_12_99(&qword_1EDD5D7E8);
  }

  OUTLINED_FUNCTION_39_0(v21, v22, v23);
  OUTLINED_FUNCTION_77_0();
  if (v20)
  {
LABEL_18:
    swift_getKeyPath();
    OUTLINED_FUNCTION_59_34();
    sub_1D54CE6B0();
    goto LABEL_12;
  }

  v24 = qword_1EDD5D7D8;

  if (v24 != -1)
  {
    v25 = OUTLINED_FUNCTION_11_117(&qword_1EDD5D7D8);
  }

  OUTLINED_FUNCTION_39_0(v25, v26, v27);
  OUTLINED_FUNCTION_77_0();
  if ((v24 & 1) == 0)
  {

    v39 = sub_1D560D218();
    v30 = OUTLINED_FUNCTION_39_0(v39, v28, v29);

    if ((v30 & 1) == 0)
    {
      v31 = qword_1EDD54380;

      if (v31 != -1)
      {
        v32 = OUTLINED_FUNCTION_10_117(&qword_1EDD54380);
      }

      v35 = OUTLINED_FUNCTION_39_0(v32, v33, v34);

      if ((v35 & 1) == 0)
      {
        while (1)
        {
          sub_1D5615B68();
          MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
          sub_1D560CDE8();
          sub_1D5615D48();
          OUTLINED_FUNCTION_33_0();
LABEL_28:
          OUTLINED_FUNCTION_38_46("Fatal error", v36, v37, 0, 0xE000000000000000, "MusicKitInternal/PlaylistPropertyProvider+Internal.swift");
          __break(1u);
        }
      }
    }

    goto LABEL_18;
  }

LABEL_11:
  swift_getKeyPath();
  sub_1D54D4480(&qword_1EDD5F208, _s15InternalStorageVMa_0, &unk_1D56696C0);
  sub_1D5613108();
LABEL_12:

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

void sub_1D54CFCE4()
{
  OUTLINED_FUNCTION_47();
  v105 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v99 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v101 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v98 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v103 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v98 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v22 = OUTLINED_FUNCTION_22(v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v98 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7450, &unk_1D5669740);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - v30;
  v32 = _s15InternalStorageVMa_0(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_58_37();
    v107 = v5;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v94 = 104;
    goto LABEL_52;
  }

  v1 = v37;
  sub_1D4E628D4(v3, v106);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49F0, &qword_1D5669750);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v32);
    sub_1D4E50004(v31, &qword_1EC7F7450, &unk_1D5669740);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_58_37();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v94 = 107;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v32);
  sub_1D54D39F4(v31, v36, _s15InternalStorageVMa_0);
  v41 = qword_1EDD5D820;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_14_91(&qword_1EDD5D820);
  }

  v106[0] = qword_1EDD5D828;
  v107 = v1;
  sub_1D4EC5794(&qword_1EDD54390, &qword_1EC7ECEA8, &qword_1D563A170);
  OUTLINED_FUNCTION_24_2();
  v42 = sub_1D5614D18();

  if (v42)
  {

    sub_1D54D3AA8(v36 + v32[5], v25, &qword_1EC7EC8D0);
    OUTLINED_FUNCTION_0_244();
    sub_1D54D3A50(v36, v43);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    OUTLINED_FUNCTION_10(v25);
    if (v45)
    {
      v54 = v105;
      sub_1D54D3AA8(v105 + v32[5], v27, &qword_1EC7EC8D0);
      OUTLINED_FUNCTION_10(v25);
      if (!v45)
      {
        sub_1D4E50004(v25, &qword_1EC7EC8D0, &unk_1D5623AD0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_8();
      (*(v50 + 32))(v27, v25, v44);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v44);
      v54 = v105;
    }

    v55 = &qword_1EC7EC8D0;
    v56 = v54 + v32[5];
    v57 = v27;
    goto LABEL_30;
  }

  v46 = qword_1EDD5D808;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_15_89(&qword_1EDD5D808);
  }

  OUTLINED_FUNCTION_5_140(qword_1EDD5D810);
  OUTLINED_FUNCTION_78_1();
  if (v46)
  {

    v47 = v103;
    sub_1D54D3AA8(v36, v103, &qword_1EC7ECF58);
    OUTLINED_FUNCTION_0_244();
    sub_1D54D3A50(v36, v48);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    OUTLINED_FUNCTION_1(v47);
    if (v45)
    {
      v63 = v104;
      v67 = v105;
      sub_1D54D3AA8(v105, v104, &qword_1EC7ECF58);
      OUTLINED_FUNCTION_1(v47);
      if (!v45)
      {
        sub_1D4E50004(v47, &qword_1EC7ECF58, &qword_1D5623AF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_1();
      v63 = v104;
      (*(v62 + 32))(v104, v47, v49);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v49);
      v67 = v105;
    }

    v55 = &qword_1EC7ECF58;
    v57 = v63;
    v56 = v67;
    goto LABEL_30;
  }

  v58 = qword_1EDD5D838;

  if (v58 != -1)
  {
    OUTLINED_FUNCTION_13_94(&qword_1EDD5D838);
  }

  OUTLINED_FUNCTION_5_140(qword_1EDD76DA8);
  OUTLINED_FUNCTION_78_1();
  if ((v58 & 1) == 0)
  {

    v68 = sub_1D560D1F8();
    OUTLINED_FUNCTION_54_37(v68);
    v107 = v1;
    OUTLINED_FUNCTION_24_2();
    v69 = sub_1D5614D18();

    if ((v69 & 1) == 0)
    {
      v77 = qword_1EDD5D7E8;

      if (v77 != -1)
      {
        OUTLINED_FUNCTION_12_99(&qword_1EDD5D7E8);
      }

      OUTLINED_FUNCTION_5_140(qword_1EDD5D7F0);
      OUTLINED_FUNCTION_78_1();
      if ((v77 & 1) == 0)
      {
        v79 = qword_1EDD5D7D8;

        if (v79 != -1)
        {
          OUTLINED_FUNCTION_11_117(&qword_1EDD5D7D8);
        }

        OUTLINED_FUNCTION_5_140(qword_1EDD5D7E0);
        OUTLINED_FUNCTION_78_1();
        if (v79)
        {

          v80 = v99;
          sub_1D54D3AA8(v36 + v32[8], v99, &qword_1EC7ECF38);
          OUTLINED_FUNCTION_0_244();
          sub_1D54D3A50(v36, v81);
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
          OUTLINED_FUNCTION_1(v80);
          if (v45)
          {
            v75 = v105;
            v71 = v100;
            sub_1D54D3AA8(v105 + v32[8], v100, &qword_1EC7ECF38);
            OUTLINED_FUNCTION_1(v80);
            if (!v45)
            {
              sub_1D4E50004(v80, &qword_1EC7ECF38, &qword_1D562E650);
            }
          }

          else
          {
            OUTLINED_FUNCTION_15_1();
            v71 = v100;
            (*(v85 + 32))(v100, v80, v82);
            OUTLINED_FUNCTION_64_0();
            __swift_storeEnumTagSinglePayload(v86, v87, v88, v82);
            v75 = v105;
          }

          v76 = v32[8];
          v55 = &qword_1EC7ECF38;
          goto LABEL_29;
        }

        v83 = sub_1D560D218();
        OUTLINED_FUNCTION_54_37(v83);
        v107 = v1;
        OUTLINED_FUNCTION_24_2();
        v84 = sub_1D5614D18();

        if ((v84 & 1) == 0)
        {
          v89 = qword_1EDD54380;

          if (v89 != -1)
          {
            OUTLINED_FUNCTION_10_117(&qword_1EDD54380);
          }

          OUTLINED_FUNCTION_5_140(qword_1EDD54388);
          OUTLINED_FUNCTION_78_1();
          if ((v89 & 1) == 0)
          {
            while (1)
            {
              OUTLINED_FUNCTION_30();
              sub_1D5615B68();
              OUTLINED_FUNCTION_16_6();
              MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D5685BE0);
              v107 = v1;
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
              OUTLINED_FUNCTION_28();
              v94 = 128;
LABEL_52:
              v98 = v94;
              OUTLINED_FUNCTION_38_46("Fatal error", v90, v91, v92, v93, "MusicKitInternal/PlaylistPropertyProvider+Internal.swift");
              __break(1u);
            }
          }
        }
      }
    }

    swift_getKeyPath();
    OUTLINED_FUNCTION_53_34();
    sub_1D54CE890();

    OUTLINED_FUNCTION_0_244();
    sub_1D54D3A50(v36, v78);
    goto LABEL_31;
  }

  v59 = v101;
  sub_1D54D3AA8(v36 + v32[6], v101, &qword_1EC7EA778);
  OUTLINED_FUNCTION_0_244();
  sub_1D54D3A50(v36, v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_1(v59);
  if (v45)
  {
    v75 = v105;
    v71 = v102;
    sub_1D54D3AA8(v105 + v32[6], v102, &qword_1EC7EA778);
    OUTLINED_FUNCTION_1(v59);
    if (!v45)
    {
      sub_1D4E50004(v59, &qword_1EC7EA778, &qword_1D5622E60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_1();
    v71 = v102;
    (*(v70 + 32))(v102, v59, v61);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v61);
    v75 = v105;
  }

  v76 = v32[6];
  v55 = &qword_1EC7EA778;
LABEL_29:
  v56 = v75 + v76;
  v57 = v71;
LABEL_30:
  sub_1D54D3CBC(v57, v56, v55);
LABEL_31:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54D08B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5621E90;
  if (qword_1EDD5D808 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EDD5D810;
  v1 = qword_1EDD5D820;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1EDD5D828;
  v2 = qword_1EDD5D838;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_1EDD76DA8;
  v3 = qword_1EDD5D7F8;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_1EDD76DA0;
  v4 = qword_1EDD5D7E8;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_1EDD5D7F0;
  v5 = qword_1EDD5D7D8;

  if (v5 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = qword_1EDD5D7E0;
  v6 = qword_1EDD54380;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_1EDD54388;
  qword_1EC87C6B8 = v0;
}

uint64_t sub_1D54D0AD0()
{
  if (qword_1EC7E96D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC87C6B8;
  if (qword_1EC87C6B8 >> 62)
  {
    sub_1D560CDE8();

    v2 = sub_1D5615E18();

    return v2;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
    return v0;
  }
}

void sub_1D54D0B90()
{
  OUTLINED_FUNCTION_47();
  v145 = v3;
  v146 = v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_4();
  v126 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v124 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v125 = v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F74C0, &qword_1D5669878);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v129 = v12;
  v134 = type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v127 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v131 = v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF600, &unk_1D5640880);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v135 = v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  v137 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v132 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v136 = v26;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB678, &qword_1D56783A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v140 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_4();
  v143 = v30;
  v144 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v138 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v142 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF550, &qword_1D5669880);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_38_2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_4();
  v40 = v39;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_16_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_47_5();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F74C8, &qword_1D5669888);
  OUTLINED_FUNCTION_22(v44);
  OUTLINED_FUNCTION_11();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v124 - v47;
  v49 = *(v46 + 56);
  sub_1D54D3AA8(v145, &v124 - v47, &qword_1EC7ECF58);
  sub_1D54D3AA8(v146, &v48[v49], &qword_1EC7ECF58);
  OUTLINED_FUNCTION_10(v48);
  if (v50)
  {
    OUTLINED_FUNCTION_10(&v48[v49]);
    if (v50)
    {
      sub_1D4E50004(v48, &qword_1EC7ECF58, &qword_1D5623AF0);
      goto LABEL_12;
    }

LABEL_9:
    v53 = &qword_1EC7F74C8;
    v54 = &qword_1D5669888;
LABEL_10:
    v55 = v48;
LABEL_31:
    sub_1D4E50004(v55, v53, v54);
    goto LABEL_32;
  }

  sub_1D54D3AA8(v48, v0, &qword_1EC7ECF58);
  OUTLINED_FUNCTION_10(&v48[v49]);
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_71();
    v52(v51);
    goto LABEL_9;
  }

  (*(v40 + 32))(v1, &v48[v49], v38);
  sub_1D54D41B0();
  v56 = sub_1D5614D18();
  v57 = *(v40 + 8);
  v57(v1, v38);
  v58 = OUTLINED_FUNCTION_71();
  (v57)(v58);
  sub_1D4E50004(v48, &qword_1EC7ECF58, &qword_1D5623AF0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  v59 = _s15InternalStorageVMa_0(0);
  v60 = *(v36 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D54D3AA8(v61, v62, v63);
  v64 = v146;
  OUTLINED_FUNCTION_8_1();
  sub_1D54D3AA8(v65, v66, v67);
  v68 = v144;
  OUTLINED_FUNCTION_57(v2, 1, v144);
  if (v50)
  {
    OUTLINED_FUNCTION_43_0(v2 + v60);
    if (v50)
    {
      sub_1D4E50004(v2, &qword_1EC7EC8D0, &unk_1D5623AD0);
      goto LABEL_22;
    }

LABEL_20:
    v53 = &qword_1EC7EF550;
    v54 = &qword_1D5669880;
    v55 = v2;
    goto LABEL_31;
  }

  v69 = v142;
  sub_1D54D3AA8(v2, v142, &qword_1EC7EC8D0);
  OUTLINED_FUNCTION_43_0(v2 + v60);
  if (v70)
  {
    (*(v143 + 8))(v69, v68);
    goto LABEL_20;
  }

  (*(v143 + 32))(v138, v2 + v60, v68);
  v71 = sub_1D54D40FC();
  OUTLINED_FUNCTION_10_16(v69, v72, v73, v71);
  v74 = OUTLINED_FUNCTION_128_0();
  (unk_1D5623AD0)(v74);
  (unk_1D5623AD0)(v69, v68);
  sub_1D4E50004(v2, &qword_1EC7EC8D0, &unk_1D5623AD0);
  if ((&qword_1EC7EC8D0 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  v75 = v140;
  v76 = *(v139 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D54D3AA8(v77, v78, v79);
  OUTLINED_FUNCTION_8_1();
  sub_1D54D3AA8(v80, v81, v82);
  v83 = v141;
  OUTLINED_FUNCTION_57(v75, 1, v141);
  if (v50)
  {
    OUTLINED_FUNCTION_43_0(v75 + v76);
    if (v50)
    {
      sub_1D4E50004(v75, &qword_1EC7EA778, &qword_1D5622E60);
      goto LABEL_34;
    }

LABEL_30:
    v53 = &qword_1EC7EB678;
    v54 = &qword_1D56783A0;
    v55 = v75;
    goto LABEL_31;
  }

  v84 = v59;
  v85 = v136;
  sub_1D54D3AA8(v75, v136, &qword_1EC7EA778);
  OUTLINED_FUNCTION_43_0(v75 + v76);
  if (v86)
  {
    (*(v137 + 8))(v85, v83);
    goto LABEL_30;
  }

  (*(v137 + 32))(v132, v75 + v76, v83);
  v87 = sub_1D4F21860();
  OUTLINED_FUNCTION_10_16(v85, v88, v89, v87);
  v90 = OUTLINED_FUNCTION_128_0();
  (qword_1D5622E60)(v90);
  (qword_1D5622E60)(v85, v83);
  sub_1D4E50004(v75, &qword_1EC7EA778, &qword_1D5622E60);
  v59 = v84;
  if ((&qword_1EC7EA778 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v91 = *(v133 + 48);
  v92 = v135;
  OUTLINED_FUNCTION_8_1();
  sub_1D54D3AA8(v93, v94, v95);
  v48 = v92;
  OUTLINED_FUNCTION_8_1();
  sub_1D54D3AA8(v96, v97, v98);
  OUTLINED_FUNCTION_57(v92, 1, v134);
  if (v50)
  {
    OUTLINED_FUNCTION_1(v92 + v91);
    if (v50)
    {
      sub_1D4E50004(v92, &qword_1EC7ECC80, &unk_1D5622EA0);
LABEL_44:
      v106 = *(v59 + 32);
      v107 = *(v128 + 48);
      v108 = v129;
      OUTLINED_FUNCTION_8_1();
      sub_1D54D3AA8(v109, v110, v111);
      v112 = v64 + v106;
      v113 = v108;
      sub_1D54D3AA8(v112, v108 + v107, &qword_1EC7ECF38);
      v114 = v130;
      OUTLINED_FUNCTION_57(v108, 1, v130);
      if (v50)
      {
        OUTLINED_FUNCTION_43_0(v108 + v107);
        if (v50)
        {
          sub_1D4E50004(v108, &qword_1EC7ECF38, &qword_1D562E650);
          goto LABEL_32;
        }
      }

      else
      {
        v115 = v125;
        sub_1D54D3AA8(v108, v125, &qword_1EC7ECF38);
        OUTLINED_FUNCTION_43_0(v108 + v107);
        if (!v116)
        {
          v117 = v126;
          v118 = v113 + v107;
          v119 = v124;
          (*(v126 + 32))(v124, v118, v114);
          v120 = sub_1D54D4048();
          OUTLINED_FUNCTION_10_16(v115, v121, v122, v120);
          v123 = *(v117 + 8);
          v123(v119, v114);
          v123(v115, v114);
          sub_1D4E50004(v113, &qword_1EC7ECF38, &qword_1D562E650);
          goto LABEL_32;
        }

        (*(v126 + 8))(v115, v114);
      }

      v53 = &qword_1EC7F74C0;
      v54 = &qword_1D5669878;
      v55 = v108;
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v99 = v92;
  v100 = v131;
  sub_1D54D3AA8(v99, v131, &qword_1EC7ECC80);
  OUTLINED_FUNCTION_1(&v48[v91]);
  if (v101)
  {
    OUTLINED_FUNCTION_1_182();
    sub_1D54D3A50(v100, v102);
LABEL_42:
    v53 = &qword_1EC7EF600;
    v54 = &unk_1D5640880;
    goto LABEL_10;
  }

  v103 = &v48[v91];
  v104 = v127;
  sub_1D54D39F4(v103, v127, type metadata accessor for CuratorRelationshipProvider);
  v105 = sub_1D4F4AA50(v100, v104);
  sub_1D54D3A50(v104, type metadata accessor for CuratorRelationshipProvider);
  sub_1D54D3A50(v100, type metadata accessor for CuratorRelationshipProvider);
  sub_1D4E50004(v48, &qword_1EC7ECC80, &unk_1D5622EA0);
  if (v105)
  {
    goto LABEL_44;
  }

LABEL_32:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54D1724(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x726F62616C6C6F63 && a2 == 0xEE00736E6F697461;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F62616C6C6F63 && a2 == 0xED000073726F7461;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75626972746E6F63 && a2 == 0xEC00000073726F74;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001D568F270 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73746E65726170 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1D54D18E0(char a1)
{
  result = 0x726F62616C6C6F63;
  switch(a1)
  {
    case 2:
      result = 0x75626972746E6F63;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0x73746E65726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54D1990(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7480, &qword_1D5669870);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54D3B00();
  sub_1D56163D8();
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  v11 = sub_1D54D3E2C();
  OUTLINED_FUNCTION_5_54(v3, &v39, v12, v13, v11);
  if (!v2)
  {
    v14 = _s15InternalStorageVMa_0(0);
    v15 = v14[5];
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    v16 = sub_1D54D3EE0();
    OUTLINED_FUNCTION_5_54(v3 + v15, &v38, v17, v18, v16);
    v19 = v14[6];
    v37 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    v20 = sub_1D4F4D860();
    OUTLINED_FUNCTION_5_54(v3 + v19, &v37, v21, v22, v20);
    v23 = v14[7];
    v36 = 3;
    type metadata accessor for CuratorRelationshipProvider(0);
    OUTLINED_FUNCTION_30_66();
    v26 = sub_1D54D4480(v24, v25, &unk_1D561FBB8);
    OUTLINED_FUNCTION_5_54(v3 + v23, &v36, v27, v28, v26);
    v29 = v14[8];
    v35 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    v30 = sub_1D54D3F94();
    OUTLINED_FUNCTION_5_54(v3 + v29, &v35, v31, v32, v30);
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1D54D1BF0()
{
  OUTLINED_FUNCTION_47();
  v54 = v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_4();
  v53 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v52 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v57 = v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  v51 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v50 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v55 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_4();
  v49 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v48 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_4();
  v24 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_47_5();
  sub_1D54D3AA8(v1, v0, &qword_1EC7ECF58);
  OUTLINED_FUNCTION_57(v0, 1, v22);
  if (v30)
  {
    sub_1D56162F8();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_57_38();
    v32(v31, v0, v22);
    sub_1D56162F8();
    sub_1D54D4264();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v24 + 8))(v27, v22);
  }

  v33 = _s15InternalStorageVMa_0(0);
  v34 = v1;
  sub_1D54D3AA8(v1 + v33[5], v2, &qword_1EC7EC8D0);
  OUTLINED_FUNCTION_57(v2, 1, v16);
  if (v30)
  {
    sub_1D56162F8();
  }

  else
  {
    v36 = v48;
    v35 = v49;
    v37 = OUTLINED_FUNCTION_57_38();
    v38(v37, v2, v16);
    sub_1D56162F8();
    sub_1D54D4318();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v35 + 8))(v36, v16);
  }

  v39 = v58;
  v40 = v55;
  v41 = v56;
  sub_1D54D3AA8(v34 + v33[6], v55, &qword_1EC7EA778);
  OUTLINED_FUNCTION_43_0(v40);
  if (v30)
  {
    sub_1D56162F8();
  }

  else
  {
    v43 = v50;
    v42 = v51;
    (*(v51 + 32))(v50, v40, v41);
    sub_1D56162F8();
    sub_1D4F219C8();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v42 + 8))(v43, v41);
  }

  sub_1D4F84DAC();
  v44 = v57;
  sub_1D54D3AA8(v34 + v33[8], v57, &qword_1EC7ECF38);
  OUTLINED_FUNCTION_57(v44, 1, v39);
  if (v30)
  {
    sub_1D56162F8();
  }

  else
  {
    v46 = v52;
    v45 = v53;
    (*(v53 + 32))(v52, v44, v39);
    sub_1D56162F8();
    sub_1D54D43CC();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v45 + 8))(v46, v39);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D54D2188()
{
  OUTLINED_FUNCTION_47();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_4();
  v51 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v50 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v54 = v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  v49 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v48 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v52 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_4();
  v47 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v46 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_4();
  v23 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_38_2();
  sub_1D56162D8();
  v29 = v0;
  sub_1D54D3AA8(v0, v2, &qword_1EC7ECF58);
  OUTLINED_FUNCTION_1(v2);
  if (v30)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    (*(v23 + 32))(v26, v2, v21);
    OUTLINED_FUNCTION_19_14();
    sub_1D54D4264();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v23 + 8))(v26, v21);
  }

  v31 = _s15InternalStorageVMa_0(0);
  sub_1D54D3AA8(v0 + v31[5], v1, &qword_1EC7EC8D0);
  OUTLINED_FUNCTION_57(v1, 1, v15);
  if (v30)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v33 = v46;
    v32 = v47;
    v34 = OUTLINED_FUNCTION_57_38();
    v35(v34, v1, v15);
    OUTLINED_FUNCTION_19_14();
    sub_1D54D4318();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v32 + 8))(v33, v15);
  }

  v36 = v52;
  sub_1D54D3AA8(v29 + v31[6], v52, &qword_1EC7EA778);
  v37 = v53;
  OUTLINED_FUNCTION_57(v36, 1, v53);
  if (v30)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v39 = v48;
    v38 = v49;
    v40 = OUTLINED_FUNCTION_57_38();
    v41(v40, v36, v37);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F219C8();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v38 + 8))(v39, v37);
  }

  sub_1D4F84DAC();
  v42 = v54;
  sub_1D54D3AA8(v29 + v31[8], v54, &qword_1EC7ECF38);
  v43 = v55;
  OUTLINED_FUNCTION_57(v42, 1, v55);
  if (v30)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v45 = v50;
    v44 = v51;
    (*(v51 + 32))(v50, v42, v43);
    OUTLINED_FUNCTION_19_14();
    sub_1D54D43CC();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v44 + 8))(v45, v43);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54D26E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v55 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v57 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v62 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v60 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v61 = v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7458, &qword_1D5669868);
  OUTLINED_FUNCTION_4();
  v59 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_122_3();
  v21 = _s15InternalStorageVMa_0(0);
  v22 = (v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v58 = v22[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = v22[8];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v56 = v34;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = v22[9];
  v40 = type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  v44 = v22[10];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54D3B00();
  sub_1D5616398();
  if (v64)
  {
    v51 = v25;
  }

  else
  {
    sub_1D54D3B54();
    sub_1D5615F78();
    v51 = v25;
    sub_1D54D3CBC(v61, v25, &qword_1EC7ECF58);
    sub_1D54D3C08();
    sub_1D5615F78();
    sub_1D54D3CBC(v60, v25 + v58, &qword_1EC7EC8D0);
    sub_1D4F4D52C();
    sub_1D5615F78();
    sub_1D54D3CBC(v62, v25 + v56, &qword_1EC7EA778);
    OUTLINED_FUNCTION_30_66();
    sub_1D54D4480(v52, v53, &unk_1D561FBE0);
    sub_1D5615F78();
    sub_1D54D3CBC(v57, v25 + v39, &qword_1EC7ECC80);
    sub_1D54D3D14();
    sub_1D5615F78();
    (*(v59 + 8))(v2, v63);
    sub_1D54D3CBC(v55, v25 + v44, &qword_1EC7ECF38);
    sub_1D54D3DC8(v25, a2);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_0_244();
  return sub_1D54D3A50(v51, v49);
}

uint64_t sub_1D54D2CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54D1724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54D2CFC(uint64_t a1)
{
  v2 = sub_1D54D3B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54D2D38(uint64_t a1)
{
  v2 = sub_1D54D3B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void (*sub_1D54D2D80(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D54CEB6C();
  return sub_1D54D2DEC;
}

void sub_1D54D2DEC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D54D3AA8(*a1, v2 + 32, &qword_1EC7E9F98);

    sub_1D54CF7A8(v2 + 32, v3);
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    sub_1D54CF7A8(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D54D2EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D54D4480(&qword_1EDD53088, _s15InternalStorageVMa_0, &unk_1D5669648);

  return MEMORY[0x1EEDD14D0](a1, a3, a2, a4, v8);
}

uint64_t sub_1D54D2F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D54D4480(&qword_1EC7F7448, _s15InternalStorageVMa_0, &unk_1D5669608);

  return MEMORY[0x1EEDD14C8](a1, a2, a3, v6);
}

uint64_t sub_1D54D300C(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  v40 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v34 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v37 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v34 - v19;
  sub_1D56162D8();
  v21 = v2;
  sub_1D54D3AA8(v2, v20, &qword_1EC7ECF58);
  if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v15 + 32))(v17, v20, v14);
    sub_1D56162F8();
    sub_1D54D4264();
    sub_1D5614CB8();
    (*(v15 + 8))(v17, v14);
  }

  v22 = v44;
  sub_1D54D3AA8(v2 + *(v44 + 20), v13, &qword_1EC7EC8D0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v9) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v23 = v35;
    v24 = v36;
    (*(v36 + 32))(v35, v13, v9);
    sub_1D56162F8();
    sub_1D54D4318();
    sub_1D5614CB8();
    (*(v24 + 8))(v23, v9);
  }

  v25 = v45;
  v26 = v41;
  sub_1D54D3AA8(v21 + *(v22 + 24), v41, &qword_1EC7EA778);
  v27 = v42;
  if (__swift_getEnumTagSinglePayload(v26, 1, v42) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v29 = v37;
    v28 = v38;
    (*(v38 + 32))(v37, v26, v27);
    sub_1D56162F8();
    sub_1D4F219C8();
    sub_1D5614CB8();
    (*(v28 + 8))(v29, v27);
  }

  sub_1D4F84DAC();
  v30 = v43;
  sub_1D54D3AA8(v21 + *(v22 + 32), v43, &qword_1EC7ECF38);
  if (__swift_getEnumTagSinglePayload(v30, 1, v25) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v32 = v39;
    v31 = v40;
    (*(v40 + 32))(v39, v30, v25);
    sub_1D56162F8();
    sub_1D54D43CC();
    sub_1D5614CB8();
    (*(v31 + 8))(v32, v25);
  }

  return sub_1D5616328();
}

void (*sub_1D54D3678(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D5612728();
  return sub_1D5360FF8;
}

uint64_t _s15InternalStorageVMa_0(uint64_t a1)
{
  result = qword_1EDD5F1F8;
  if (!qword_1EDD5F1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D54D3748(uint64_t a1)
{
  sub_1D54D38CC(319, &qword_1EDD5F328, &qword_1EC7EA5B0);
  if (v1 <= 0x3F)
  {
    sub_1D54D38CC(319, qword_1EDD5F330, &qword_1EC7EC8E0);
    if (v2 <= 0x3F)
    {
      sub_1D54D38CC(319, &qword_1EDD5D788, &qword_1EC7EA5B8);
      if (v3 <= 0x3F)
      {
        sub_1D54D3874(319);
        if (v4 <= 0x3F)
        {
          sub_1D54D38CC(319, &qword_1EDD5D770, &unk_1EC7F19C0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D54D3874(uint64_t a1)
{
  if (!qword_1EDD5DAA8[0])
  {
    type metadata accessor for CuratorRelationshipProvider(255);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, qword_1EDD5DAA8);
    }
  }
}

void sub_1D54D38CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_52_35(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_1D56158D8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D54D39F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D54D3A50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D54D3AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_52_35(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_14();
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return a2;
}

unint64_t sub_1D54D3B00()
{
  result = qword_1EC7F7460;
  if (!qword_1EC7F7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7460);
  }

  return result;
}

unint64_t sub_1D54D3B54()
{
  result = qword_1EC7F7468;
  if (!qword_1EC7F7468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    sub_1D54D4480(qword_1EDD5D1C0, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7468);
  }

  return result;
}

unint64_t sub_1D54D3C08()
{
  result = qword_1EC7F7470;
  if (!qword_1EC7F7470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    sub_1D54D4480(&qword_1EDD5D1F0, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7470);
  }

  return result;
}

uint64_t sub_1D54D3CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_52_35(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_14();
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return a2;
}

unint64_t sub_1D54D3D14()
{
  result = qword_1EC7F7478;
  if (!qword_1EC7F7478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    sub_1D54D4480(qword_1EDD5D190, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7478);
  }

  return result;
}

uint64_t sub_1D54D3DC8(uint64_t a1, uint64_t a2)
{
  v4 = _s15InternalStorageVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D54D3E2C()
{
  result = qword_1EC7F7488;
  if (!qword_1EC7F7488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    sub_1D54D4480(&qword_1EC7F7490, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7488);
  }

  return result;
}

unint64_t sub_1D54D3EE0()
{
  result = qword_1EC7F7498;
  if (!qword_1EC7F7498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    sub_1D54D4480(&qword_1EC7F74A0, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7498);
  }

  return result;
}

unint64_t sub_1D54D3F94()
{
  result = qword_1EC7F74B0;
  if (!qword_1EC7F74B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    sub_1D54D4480(&qword_1EC7F74B8, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F74B0);
  }

  return result;
}

unint64_t sub_1D54D4048()
{
  result = qword_1EC7F74D0;
  if (!qword_1EC7F74D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    sub_1D54D4480(&qword_1EC7EF200, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F74D0);
  }

  return result;
}

unint64_t sub_1D54D40FC()
{
  result = qword_1EC7EF558;
  if (!qword_1EC7EF558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    sub_1D54D4480(&qword_1EC7EF560, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF558);
  }

  return result;
}

unint64_t sub_1D54D41B0()
{
  result = qword_1EDD53BA8;
  if (!qword_1EDD53BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    sub_1D54D4480(&qword_1EDD52D28, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53BA8);
  }

  return result;
}

unint64_t sub_1D54D4264()
{
  result = qword_1EC7F74D8;
  if (!qword_1EC7F74D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    sub_1D54D4480(&qword_1EC7F74E0, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F74D8);
  }

  return result;
}

unint64_t sub_1D54D4318()
{
  result = qword_1EC7EF568;
  if (!qword_1EC7EF568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    sub_1D54D4480(&qword_1EC7EF570, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF568);
  }

  return result;
}

unint64_t sub_1D54D43CC()
{
  result = qword_1EC7F74E8;
  if (!qword_1EC7F74E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    sub_1D54D4480(&qword_1EC7F74F0, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F74E8);
  }

  return result;
}

uint64_t sub_1D54D4480(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s15InternalStorageV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D54D45A8()
{
  result = qword_1EC7F74F8;
  if (!qword_1EC7F74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F74F8);
  }

  return result;
}

unint64_t sub_1D54D4600()
{
  result = qword_1EC7F7500;
  if (!qword_1EC7F7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7500);
  }

  return result;
}

unint64_t sub_1D54D4658()
{
  result = qword_1EC7F7508;
  if (!qword_1EC7F7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7508);
  }

  return result;
}

uint64_t MusicPlayerPath.init(route:playerID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  if (a3)
  {

    swift_unknownObjectRetain_n();

    v10 = sub_1D5614D38();
  }

  else
  {

    swift_unknownObjectRetain_n();
    v10 = 0;
  }

  v11 = [objc_opt_self() systemMusicPathWithRoute:v9 playerID:v10];

  swift_unknownObjectRelease_n();

  *a4 = v8;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = a2;
  a4[4] = a3;
  a4[5] = v11;
  return result;
}

void MusicPlayerPath.route.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  sub_1D4E5EEC0(v2, v3, v4);
}

uint64_t MusicPlayerPath.playerID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MusicPlayerPath.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0]([v1 hash]);
  return sub_1D5616328();
}

uint64_t Genre.siriRepresentation.getter@<X0>(void *a1@<X8>)
{
  v80 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v78 = v4;
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v77 = v6 - v5;
  v69 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v76 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v71 = v10 - v9;
  v72 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v70 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v68 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v63 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_16_0();
  v65 = v2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v66 = &v63 - v30;
  v31 = sub_1D5613C48();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  v75 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  v38 = *(v33 + 16);
  v38(v36 - v35, v1, v31);
  v39 = sub_1D5613C28();
  v73 = v40;
  v74 = v39;
  _s8MusicKit5GenreV0aB8InternalE7artworkAA7ArtworkVSgvg_0();
  v41 = sub_1D56106B8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v41);
  _s8MusicKit5GenreV0aB8InternalE3url10Foundation3URLVSgvg_0();
  v42 = OUTLINED_FUNCTION_5_43();
  v43 = v69;
  __swift_storeEnumTagSinglePayload(v42, v44, v45, v69);
  v82 = v31;
  v83 = MEMORY[0x1E6976DB8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v81);
  v64 = v37;
  v38(boxed_opaque_existential_0, v37, v31);
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v47 = v68;
  sub_1D5612AF8();
  v48 = v71;
  sub_1D5611A98();
  (*(v70 + 8))(v47, v72);
  sub_1D560FDD8();
  (*(v76 + 8))(v48, v43);
  sub_1D4E7661C(v22, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v43);
  v49 = v19;
  v63 = v22;
  sub_1D4ED3A14(v19, v22, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v50 = v77;
  sub_1D560EC98();
  sub_1D4ED3750(v22, v19, &qword_1EC7EA358, &unk_1D561DF50);
  v51 = type metadata accessor for MusicSiriRepresentation(0);
  v52 = v80;
  v53 = v66;
  sub_1D4ED3750(v66, v80 + v51[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v54 = v65;
  sub_1D4ED3750(v65, v52 + v51[9], &qword_1EC7EC478, &unk_1D56299D0);
  v55 = v67;
  sub_1D4ED3750(v67, v52 + v51[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v81[0]) = 5;
  sub_1D50391CC();
  v57 = v56;
  v59 = v58;
  sub_1D4E7661C(v49, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v78 + 8))(v50, v79);
  sub_1D4E7661C(v63, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v55, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E7661C(v54, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E7661C(v53, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = (*(v75 + 8))(v64, v31);
  v61 = v80;
  *v80 = v57;
  v61[1] = v59;
  *(v61 + 16) = 5;
  v62 = v73;
  v61[3] = v74;
  v61[4] = v62;
  v61[5] = 0;
  v61[6] = 0;
  return result;
}

uint64_t Genre.catalogID.getter()
{
  v0 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1D5613C48();
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v2 + 8))(v6, v0);
  v11 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1D4E7661C(v10, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v12 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0();
    (*(v13 + 8))(v10, v11);
  }

  return v12;
}

uint64_t Genre.editorialArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_6_5();
  v11 = OUTLINED_FUNCTION_5_43();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  result = sub_1D5613BB8();
  if (result)
  {
    sub_1D4ED06C8(0xD000000000000011, 0x80000001D567FAA0, result, v3);

    sub_1D4ED3750(v3, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
    {
      OUTLINED_FUNCTION_47_0(v3);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_47_0(v2);
      v16 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v3, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0();
      (*(v17 + 8))(v2, v15);
      v16 = 0;
    }

    __swift_storeEnumTagSinglePayload(v1, v16, 1, v10);
    return sub_1D4ED3A14(v1, a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

uint64_t Genre.kind.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1D5613B98();
  sub_1D5611A98();
  (*(v16 + 8))(v20, v14);
  (*(v5 + 16))(v1, v13, v3);
  sub_1D560FE78();
  sub_1D4E5E55C(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
  v21 = OUTLINED_FUNCTION_9_120();
  v22 = *(v5 + 8);
  v22(v9, v3);
  if (v21)
  {
    v22(v1, v3);
    result = (v22)(v13, v3);
  }

  else
  {
    sub_1D560FFC8();
    v24 = OUTLINED_FUNCTION_9_120();
    v22(v9, v3);
    v22(v1, v3);
    result = (v22)(v13, v3);
    if ((v24 & 1) == 0)
    {
      v25 = 1;
      goto LABEL_6;
    }
  }

  v25 = (v21 & 1) == 0;
LABEL_6:
  *a1 = v25;
  return result;
}

uint64_t Genre.logoArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_6_5();
  v11 = OUTLINED_FUNCTION_5_43();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  result = sub_1D5613BB8();
  if (result)
  {
    sub_1D4ED06C8(0x676F4C646E617262, 0xE90000000000006FLL, result, v3);

    sub_1D4ED3750(v3, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
    {
      OUTLINED_FUNCTION_47_0(v3);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_47_0(v2);
      v16 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v3, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0();
      (*(v17 + 8))(v2, v15);
      v16 = 0;
    }

    __swift_storeEnumTagSinglePayload(v1, v16, 1, v10);
    return sub_1D4ED3A14(v1, a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

uint64_t sub_1D54D57F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7540, &qword_1D5669B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  *(swift_allocObject() + 16) = xmmword_1D561C050;
  sub_1D560FE78();
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4E5E55C(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  v4 = sub_1D560D138();

  *a3 = v4;
  return result;
}

uint64_t sub_1D54D59B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7540, &qword_1D5669B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  *(swift_allocObject() + 16) = xmmword_1D561C050;
  sub_1D560FFC8();
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  v0 = sub_1D560D138();

  qword_1EC7F7520 = v0;
  return result;
}

uint64_t sub_1D54D5B40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7540, &qword_1D5669B30);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4E5E55C(qword_1EDD52A80, MEMORY[0x1E69773E0], MEMORY[0x1E6977400]);
  v0 = sub_1D560D0F8();

  qword_1EC7F7528 = v0;
  return result;
}

uint64_t sub_1D54D5C88(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FE78();
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for StorePlatformUber(uint64_t a1)
{
  result = qword_1EDD56988;
  if (!qword_1EDD56988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1D54D5E40(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_0();
  v18 = *(v17 + 56);
  sub_1D4F55DC8(a1, v2);
  sub_1D4F55DC8(a2, v2 + v18);
  OUTLINED_FUNCTION_10(v2);
  if (!v19)
  {
    sub_1D4F55DC8(v2, v14);
    OUTLINED_FUNCTION_10(v2 + v18);
    if (!v19)
    {
      (*(v7 + 32))(v10, v2 + v18, v5);
      sub_1D54D6A38(&qword_1EC7EBEB8, &qword_1EC7EBDD0, MEMORY[0x1E6975980], MEMORY[0x1E6975DB8]);
      v21 = sub_1D5614D18();
      v22 = *(v7 + 8);
      v22(v10, v5);
      v22(v14, v5);
      sub_1D4E6C9CC(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
      return (v21 & 1) != 0;
    }

    (*(v7 + 8))(v14, v5);
LABEL_9:
    sub_1D4E6C9CC(v2, &qword_1EC7EC330, &qword_1D56222C0);
    return 0;
  }

  OUTLINED_FUNCTION_10(v2 + v18);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1D4E6C9CC(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  return 1;
}

uint64_t sub_1D54D60D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7560, &qword_1D5669CC8);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54D6AD4();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D54D6B70(&qword_1EC7EC350, MEMORY[0x1E6975DA8]);
  sub_1D5616068();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1D54D6230(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1D4F55DC8(v1, &v15 - v9);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v5 + 32))(v2, v10, v3);
  sub_1D56162F8();
  OUTLINED_FUNCTION_1_8();
  sub_1D54D6A38(v12, v13, v14, MEMORY[0x1E6975DB0]);
  sub_1D5614CB8();
  return (*(v5 + 8))(v2, v3);
}

uint64_t sub_1D54D63C4()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1D56162D8();
  sub_1D4F55DC8(v2, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v1, v10, v3);
    sub_1D56162F8();
    OUTLINED_FUNCTION_1_8();
    sub_1D54D6A38(v11, v12, v13, MEMORY[0x1E6975DB0]);
    sub_1D5614CB8();
    (*(v5 + 8))(v1, v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D54D6574@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7550, &qword_1D5669CC0);
  OUTLINED_FUNCTION_4();
  v21 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for StorePlatformUber(0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54D6AD4();
  sub_1D5616398();
  if (!v2)
  {
    v17 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D54D6B70(&qword_1EDD531B8, MEMORY[0x1E6975DC0]);
    sub_1D5615F78();
    (*(v21 + 8))(v12, v8);
    sub_1D4F55E8C(v7, v16);
    sub_1D5119188(v16, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D54D67A0(uint64_t a1)
{
  v2 = sub_1D54D6AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54D67DC(uint64_t a1)
{
  v2 = sub_1D54D6AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54D6854(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D56162D8();
  sub_1D4F55DC8(v2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D56162F8();
    sub_1D54D6A38(&qword_1EC7EBE78, &qword_1EC7EBDC8, MEMORY[0x1E6975978], MEMORY[0x1E6975DB0]);
    sub_1D5614CB8();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D54D6A38(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D54D6B28(a2, MEMORY[0x1E6975968], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D54D6AD4()
{
  result = qword_1EC7F7558;
  if (!qword_1EC7F7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7558);
  }

  return result;
}

uint64_t sub_1D54D6B28(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D54D6B70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v4 = MEMORY[0x1E6975968];
    sub_1D54D6B28(&qword_1EDD533A8, MEMORY[0x1E6975968], MEMORY[0x1E6975988]);
    sub_1D54D6B28(&qword_1EDD533B0, v4, MEMORY[0x1E6975970]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformUber.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D54D6CF4()
{
  result = qword_1EC7F7568;
  if (!qword_1EC7F7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7568);
  }

  return result;
}

unint64_t sub_1D54D6D4C()
{
  result = qword_1EC7F7570;
  if (!qword_1EC7F7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7570);
  }

  return result;
}

unint64_t sub_1D54D6DA4()
{
  result = qword_1EC7F7578;
  if (!qword_1EC7F7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7578);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformRecordLabel(uint64_t a1)
{
  result = qword_1EDD55618;
  if (!qword_1EDD55618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D54D6E78(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  if (v1 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531C0, &qword_1EC7EC970, &qword_1D5631060);
    if (v2 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
      if (v3 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
        if (v4 <= 0x3F)
        {
          sub_1D4F18AF4();
          if (v5 <= 0x3F)
          {
            sub_1D52A3F24(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
            if (v6 <= 0x3F)
            {
              sub_1D52A3F24(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
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

BOOL sub_1D54D705C(uint64_t a1, uint64_t a2)
{
  v126 = a2;
  v115 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v111 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v109 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v110 = v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v114 = v11;
  v118 = type metadata accessor for StorePlatformUber(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v112 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v116 = v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v119 = v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  v122 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v120 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v121 = v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v109 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v109 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_71_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v109 - v39;
  v41 = *(v38 + 56);
  v125 = a1;
  sub_1D4F1C460(a1, &v109 - v39, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F1C460(v126, &v40[v41], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v40, 1, v28);
  if (v42)
  {
    OUTLINED_FUNCTION_57(&v40[v41], 1, v28);
    if (v42)
    {
      sub_1D4E50004(v40, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_12;
    }

LABEL_9:
    v43 = &qword_1EC7EC330;
    v44 = &qword_1D56222C0;
LABEL_10:
    v45 = v40;
LABEL_21:
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
  sub_1D54D9358(&qword_1EC7EBEB8);
  OUTLINED_FUNCTION_85();
  v46 = sub_1D5614D18();
  v47 = *(v30 + 8);
  v47(v33, v28);
  v47(v2, v28);
  sub_1D4E50004(v40, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v48 = type metadata accessor for StorePlatformRecordLabel(0);
  v49 = v48[5];
  v50 = *(v123 + 48);
  v51 = v125;
  sub_1D4F1C460(v125 + v49, v27, &qword_1EC7EC978, &unk_1D56222A0);
  v52 = v126;
  sub_1D4F1C460(v126 + v49, &v27[v50], &qword_1EC7EC978, &unk_1D56222A0);
  v53 = v124;
  OUTLINED_FUNCTION_57(v27, 1, v124);
  if (v42)
  {
    OUTLINED_FUNCTION_57(&v27[v50], 1, v53);
    if (v42)
    {
      sub_1D4E50004(v27, &qword_1EC7EC978, &unk_1D56222A0);
      goto LABEL_25;
    }

LABEL_20:
    v43 = &qword_1EC7EC980;
    v44 = &qword_1D5628710;
    v45 = v27;
    goto LABEL_21;
  }

  v54 = v121;
  sub_1D4F1C460(v27, v121, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(&v27[v50], 1, v53);
  if (v55)
  {
    (*(v122 + 8))(v54, v53);
    goto LABEL_20;
  }

  v57 = v122;
  (*(v122 + 32))(v120, &v27[v50], v53);
  sub_1D54D93D8(&qword_1EC7EC998);
  v58 = sub_1D5614D18();
  v59 = *(v57 + 8);
  v60 = OUTLINED_FUNCTION_85();
  v59(v60);
  (v59)(v54, v53);
  sub_1D4E50004(v27, &qword_1EC7EC978, &unk_1D56222A0);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v61 = v48[6];
  v62 = *(v52 + v61);
  if (*(v51 + v61))
  {
    if (!v62)
    {
      return 0;
    }

    sub_1D4F28F1C();
    v64 = v63;

    if ((v64 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  v65 = v48[7];
  v66 = *(v52 + v65);
  if (*(v51 + v65))
  {
    if (!v66)
    {
      return 0;
    }

    sub_1D4F29174();
    v68 = v67;

    if ((v68 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v69 = v48[8];
  v70 = *(v51 + v69);
  v71 = *(v51 + v69 + 8);
  v72 = (v52 + v69);
  v73 = v70 == *v72 && v71 == v72[1];
  if (!v73 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v74 = v48[9];
  v75 = (v51 + v74);
  v76 = *(v51 + v74 + 8);
  v77 = (v52 + v74);
  v78 = v77[1];
  if (v76)
  {
    if (!v78)
    {
      return 0;
    }

    v79 = *v75 == *v77 && v76 == v78;
    if (!v79 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v78)
  {
    return 0;
  }

  v80 = v48[10];
  v81 = *(v117 + 48);
  v82 = v119;
  sub_1D4F1C460(v51 + v80, v119, &qword_1EC7EFBD0, &qword_1D5634650);
  v83 = v52 + v80;
  v84 = v82;
  sub_1D4F1C460(v83, v82 + v81, &qword_1EC7EFBD0, &qword_1D5634650);
  v85 = v118;
  OUTLINED_FUNCTION_57(v82, 1, v118);
  if (v42)
  {
    OUTLINED_FUNCTION_57(v82 + v81, 1, v85);
    if (v42)
    {
      sub_1D4E50004(v82, &qword_1EC7EFBD0, &qword_1D5634650);
      goto LABEL_59;
    }

LABEL_57:
    v43 = &qword_1EC7EFDD8;
    v44 = &unk_1D5639570;
    v45 = v84;
    goto LABEL_21;
  }

  v86 = v82;
  v87 = v116;
  sub_1D4F1C460(v86, v116, &qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_57(v84 + v81, 1, v85);
  if (v88)
  {
    OUTLINED_FUNCTION_8_130();
    sub_1D54D9300(v87, v89);
    goto LABEL_57;
  }

  v90 = v84 + v81;
  v91 = v112;
  sub_1D5119188(v90, v112);
  v92 = OUTLINED_FUNCTION_85();
  v94 = sub_1D54D5E40(v92, v93);
  sub_1D54D9300(v91, type metadata accessor for StorePlatformUber);
  sub_1D54D9300(v87, type metadata accessor for StorePlatformUber);
  sub_1D4E50004(v84, &qword_1EC7EFBD0, &qword_1D5634650);
  if (!v94)
  {
    return 0;
  }

LABEL_59:
  v95 = v48[11];
  v96 = *(v113 + 48);
  v97 = v51 + v95;
  v98 = v114;
  sub_1D4F1C460(v97, v114, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v99 = v52 + v95;
  v40 = v98;
  sub_1D4F1C460(v99, v98 + v96, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v100 = v115;
  OUTLINED_FUNCTION_57(v98, 1, v115);
  if (v42)
  {
    OUTLINED_FUNCTION_57(v98 + v96, 1, v100);
    if (v42)
    {
      sub_1D4E50004(v98, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_67;
  }

  v101 = v110;
  sub_1D4F1C460(v98, v110, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v98 + v96, 1, v100);
  if (v102)
  {
    (*(v111 + 8))(v101, v100);
LABEL_67:
    v43 = &qword_1EC7E9FB0;
    v44 = &qword_1D562C590;
    goto LABEL_10;
  }

  v103 = v111;
  v104 = &v40[v96];
  v105 = v109;
  (*(v111 + 32))(v109, v104, v100);
  OUTLINED_FUNCTION_0_245();
  sub_1D54D94A4(v106);
  OUTLINED_FUNCTION_85();
  v107 = sub_1D5614D18();
  v108 = *(v103 + 8);
  v108(v105, v100);
  v108(v101, v100);
  sub_1D4E50004(v40, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v107 & 1) != 0;
}

uint64_t sub_1D54D7B9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 25705 && a2 == 0xE200000000000000;
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
              v11 = a1 == 1919246965 && a2 == 0xE400000000000000;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 7107189 && a2 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1D5616168();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D54D7E28(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 1919246965;
      break;
    case 7:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54D7F00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7598, &qword_1D5669FD8);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54D9248();
  sub_1D56163D8();
  LOBYTE(v40[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v11 = sub_1D4F7CD24();
  OUTLINED_FUNCTION_4_3(v3, v40, v12, v13, v11);
  if (!v2)
  {
    v14 = type metadata accessor for StorePlatformRecordLabel(0);
    v15 = v14[5];
    LOBYTE(v40[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    v16 = sub_1D4F7CF5C();
    OUTLINED_FUNCTION_4_3(v3 + v15, v40, v17, v18, v16);
    v40[0] = *(v3 + v14[6]);
    v41 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v19 = sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_4_3(v40, &v41, v20, v21, v19);
    v40[0] = *(v3 + v14[7]);
    v41 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v22 = sub_1D514057C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_4_3(v40, &v41, v23, v24, v22);
    v25 = (v3 + v14[8]);
    v27 = *v25;
    v26 = v25[1];
    v40[0] = v27;
    v40[1] = v26;
    v41 = 4;
    sub_1D4F89BA0();
    sub_1D56160C8();
    LOBYTE(v40[0]) = 5;
    sub_1D5616028();
    v28 = v14[10];
    LOBYTE(v40[0]) = 6;
    type metadata accessor for StorePlatformUber(0);
    OUTLINED_FUNCTION_9_121();
    v30 = sub_1D54D94A4(v29);
    OUTLINED_FUNCTION_4_3(v3 + v28, v40, v31, v32, v30);
    v33 = v14[11];
    LOBYTE(v40[0]) = 7;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_245();
    v35 = sub_1D54D94A4(v34);
    OUTLINED_FUNCTION_4_3(v3 + v33, v40, v36, v37, v35);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D54D82AC(uint64_t a1)
{
  v3 = v1;
  v71 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v65 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v64 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v70 = v9;
  v68 = type metadata accessor for StorePlatformUber(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v69 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v66 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  v62 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v61 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
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
  v67 = v23;
  if (v47)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v34 = OUTLINED_FUNCTION_22_50();
    v35(v34);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    sub_1D54D9358(v36);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v23 + 8))(v26, v21);
  }

  v37 = type metadata accessor for StorePlatformRecordLabel(0);
  sub_1D4F1C460(v1 + v37[5], v2, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(v2, 1, v15);
  if (v47)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v39 = v61;
    v38 = v62;
    (*(v62 + 32))(v61, v2, v15);
    OUTLINED_FUNCTION_27();
    sub_1D54D93D8(&qword_1EC7ECA28);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v38 + 8))(v39, v15);
  }

  if (*(v1 + v37[6]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v37[7]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D5614E28();
  if (*(v1 + v37[9] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v40 = v69;
  v41 = v66;
  v42 = v67;
  sub_1D4F1C460(v3 + v37[10], v66, &qword_1EC7EFBD0, &qword_1D5634650);
  v43 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v43, v44, v68);
  if (v47)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D5119188(v41, v40);
    OUTLINED_FUNCTION_27();
    sub_1D4F1C460(v40, v63, &qword_1EC7EB5B8, &unk_1D56206A0);
    v45 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v45, v46, v21);
    if (v47)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v48 = OUTLINED_FUNCTION_22_50();
      v49(v48);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_1_8();
      sub_1D54D9358(v50);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v42 + 8))(v26, v21);
    }

    OUTLINED_FUNCTION_8_130();
    sub_1D54D9300(v40, v51);
  }

  v52 = v70;
  sub_1D4F1C460(v3 + v37[11], v70, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v53 = OUTLINED_FUNCTION_35_1();
  v54 = v71;
  OUTLINED_FUNCTION_57(v53, v55, v71);
  if (v47)
  {
    return OUTLINED_FUNCTION_36();
  }

  v57 = v64;
  v56 = v65;
  (*(v65 + 32))(v64, v52, v54);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_245();
  sub_1D54D94A4(v58);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v56 + 8))(v57, v54);
}

uint64_t sub_1D54D895C()
{
  sub_1D56162D8();
  sub_1D54D82AC(v1);
  return sub_1D5616328();
}

uint64_t sub_1D54D899C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v45 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_71_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7588, &unk_1D5669FC8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v50 = type metadata accessor for StorePlatformRecordLabel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v22 = v21;
  v23 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D54D9248();
  v47 = v19;
  v24 = v48;
  sub_1D5616398();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  LOBYTE(v51) = 0;
  sub_1D4F886BC();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_14_92(v25, v26);
  sub_1D4FD23EC(v2, v22, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  LOBYTE(v51) = 1;
  sub_1D4F888C0();
  OUTLINED_FUNCTION_31_1();
  sub_1D5615F78();
  v27 = v50;
  sub_1D4FD23EC(v14, v22 + *(v50 + 20), &qword_1EC7EC978, &unk_1D56222A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v53 = 2;
  sub_1D50C44B0(&qword_1EDD528F8);
  OUTLINED_FUNCTION_15_90();
  *(v22 + v27[6]) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  v53 = 3;
  sub_1D514057C(&qword_1EDD52908);
  OUTLINED_FUNCTION_15_90();
  *(v22 + v27[7]) = v51;
  v53 = 4;
  sub_1D4F89C9C();
  sub_1D5615FD8();
  v28 = v52;
  v29 = (v22 + v27[8]);
  *v29 = v51;
  v29[1] = v28;
  LOBYTE(v51) = 5;
  v30 = sub_1D5615F38();
  v31 = (v22 + v27[9]);
  *v31 = v30;
  v31[1] = v32;
  v33 = type metadata accessor for StorePlatformUber(0);
  LOBYTE(v51) = 6;
  OUTLINED_FUNCTION_9_121();
  sub_1D54D94A4(v34);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_14_92(v33, v35);
  sub_1D4FD23EC(v10, v22 + v27[10], &qword_1EC7EFBD0, &qword_1D5634650);
  v36 = sub_1D560C0A8();
  LOBYTE(v51) = 7;
  OUTLINED_FUNCTION_0_245();
  sub_1D54D94A4(v37);
  OUTLINED_FUNCTION_31_1();
  v38 = v45;
  OUTLINED_FUNCTION_14_92(v36, v39);
  v40 = OUTLINED_FUNCTION_6_145();
  v41(v40);
  sub_1D4FD23EC(v38, v22 + v27[11], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D54D929C(v22, v44);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_1D54D9300(v22, type metadata accessor for StorePlatformRecordLabel);
}

uint64_t sub_1D54D9130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54D7B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54D9158(uint64_t a1)
{
  v2 = sub_1D54D9248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54D9194(uint64_t a1)
{
  v2 = sub_1D54D9248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54D920C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D54D82AC(v2);
  return sub_1D5616328();
}

unint64_t sub_1D54D9248()
{
  result = qword_1EC7F7590;
  if (!qword_1EC7F7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7590);
  }

  return result;
}

uint64_t sub_1D54D929C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformRecordLabel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54D9300(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D54D9358(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D54D94A4(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D54D93D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D54D94A4(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D54D9458()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C6C0);
  __swift_project_value_buffer(v0, qword_1EC87C6C0);
  return sub_1D560FE58();
}

unint64_t sub_1D54D94A4(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for StorePlatformRecordLabel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54D95C8()
{
  result = qword_1EC7F75A0;
  if (!qword_1EC7F75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75A0);
  }

  return result;
}

unint64_t sub_1D54D9620()
{
  result = qword_1EC7F75A8;
  if (!qword_1EC7F75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75A8);
  }

  return result;
}

unint64_t sub_1D54D9678()
{
  result = qword_1EC7F75B0;
  if (!qword_1EC7F75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75B0);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformPlaylist(uint64_t a1)
{
  result = qword_1EDD55990;
  if (!qword_1EDD55990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54D974C(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7EFD68, &qword_1EC7EFD70, ":Q\a");
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EC7F75B8, &qword_1EC7F75C0, qword_1D566A128);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EC7F02B8, &qword_1EC7F02C0, qword_1D565CE10);
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_1D54D9A90(319, &qword_1EDD53188, MEMORY[0x1E6975E48]);
        if (v11 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
        if (v12 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
        if (v13 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
          v2 = v14;
          if (v15 <= 0x3F)
          {
            sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
            v2 = v16;
            if (v17 <= 0x3F)
            {
              sub_1D54D9A90(319, &qword_1EDD53328, MEMORY[0x1E6975CB0]);
              v2 = v18;
              if (v19 <= 0x3F)
              {
                sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
                v2 = v20;
                if (v21 <= 0x3F)
                {
                  sub_1D54D9A90(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
                  v2 = v22;
                  if (v23 <= 0x3F)
                  {
                    sub_1D54D9A90(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
                    v2 = v24;
                    if (v25 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v2;
}

void sub_1D54D9A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D54D9B2C(uint64_t a1, uint64_t a2)
{
  v243 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v239 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v245 = v12;
  v13 = OUTLINED_FUNCTION_70_0();
  v247 = type metadata accessor for StorePlatformUber(v13);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v18);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v248 = v20;
  OUTLINED_FUNCTION_70_0();
  v253 = sub_1D56104C8();
  OUTLINED_FUNCTION_4();
  v249 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v250 = v26;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7618, &unk_1D566A228);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v254 = v28;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v255 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v252 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v257 = v34;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v259 = v36;
  OUTLINED_FUNCTION_70_0();
  v265 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v262 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v260 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v261 = v42;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v264 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v47 = v46;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v237 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v237 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v55);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_19_0();
  v58 = *(v57 + 56);
  v266 = a1;
  sub_1D4F1C460(a1, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  v267 = a2;
  sub_1D4F1C460(a2, v2 + v58, &qword_1EC7EB5B8, &unk_1D56206A0);
  v59 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v59, v60, v45);
  if (v61)
  {
    OUTLINED_FUNCTION_57(v2 + v58, 1, v45);
    if (v61)
    {
      sub_1D4E50004(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_14;
    }

LABEL_9:
    v62 = &qword_1EC7EC330;
    v63 = &qword_1D56222C0;
    v64 = v2;
    goto LABEL_10;
  }

  sub_1D4F1C460(v2, v54, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v2 + v58, 1, v45);
  if (v61)
  {
    (*(v47 + 8))(v54, v45);
    goto LABEL_9;
  }

  (*(v47 + 32))(v50, v2 + v58, v45);
  sub_1D4F39858();
  v66 = sub_1D5614D18();
  v67 = *(v47 + 8);
  v67(v50, v45);
  v67(v54, v45);
  sub_1D4E50004(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v68 = type metadata accessor for StorePlatformPlaylist(0);
  v69 = v68[5];
  v71 = v266;
  v70 = v267;
  v72 = *(v266 + v69);
  v73 = *(v267 + v69);
  if (v72)
  {
    if (!v73)
    {
      return 0;
    }

    sub_1D4EF9D14(v72, v73, v74);
    v76 = v75;

    if ((v76 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v73)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_50();
  if (v79)
  {
    if (!v77)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v78);
    v82 = v61 && v80 == v81;
    if (!v82 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v83 = v68[7];
  v84 = *(v70 + v83);
  if (*(v71 + v83))
  {
    if (!v84)
    {
      return 0;
    }

    sub_1D4F2CBDC();
    v86 = v85;

    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  v87 = v68[8];
  v88 = *(v70 + v87);
  if (*(v71 + v87))
  {
    if (!v88 || (sub_1D4F0B2E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v88)
  {
    return 0;
  }

  v89 = v68[9];
  v90 = v264;
  v91 = *(v263 + 48);
  sub_1D4F1C460(v71 + v89, v264, &qword_1EC7EAC98, &unk_1D561DA80);
  sub_1D4F1C460(v70 + v89, v90 + v91, &qword_1EC7EAC98, &unk_1D561DA80);
  v92 = v265;
  OUTLINED_FUNCTION_57(v90, 1, v265);
  if (v61)
  {
    OUTLINED_FUNCTION_57(v90 + v91, 1, v92);
    if (v61)
    {
      sub_1D4E50004(v90, &qword_1EC7EAC98, &unk_1D561DA80);
      goto LABEL_48;
    }

LABEL_46:
    v62 = &qword_1EC7EF648;
    v63 = &unk_1D5632470;
    v64 = v90;
    goto LABEL_10;
  }

  v93 = v261;
  sub_1D4F1C460(v90, v261, &qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_57(v90 + v91, 1, v92);
  if (v94)
  {
    (*(v262 + 8))(v93, v92);
    goto LABEL_46;
  }

  v95 = v262;
  v96 = v90 + v91;
  v97 = v260;
  (*(v262 + 32))(v260, v96, v92);
  OUTLINED_FUNCTION_6_146();
  sub_1D54DD574(v98);
  v99 = sub_1D5614D18();
  v100 = *(v95 + 8);
  v100(v97, v92);
  v100(v93, v92);
  sub_1D4E50004(v90, &qword_1EC7EAC98, &unk_1D561DA80);
  if ((v99 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v101 = v68[10];
  v102 = *(v70 + v101);
  if (*(v71 + v101))
  {
    if (!v102)
    {
      return 0;
    }

    sub_1D4F28F1C();
    v104 = v103;

    if ((v104 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v102)
  {
    return 0;
  }

  v105 = v68[11];
  v106 = *(v70 + v105);
  if (*(v71 + v105))
  {
    if (!v106)
    {
      return 0;
    }

    sub_1D4F29174();
    v108 = v107;

    if ((v108 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v106)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_50();
  if (v111)
  {
    if (!v109)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v110);
    v114 = v61 && v112 == v113;
    if (!v114 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v109)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_50();
  if (v117)
  {
    if (!v115)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v116);
    v120 = v61 && v118 == v119;
    if (!v120 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v115)
  {
    return 0;
  }

  v121 = *(v256 + 48);
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v122, v123, v124, v125);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v126, v127, v128, v129);
  v130 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v130, v131, v258);
  if (v61)
  {
    v132 = OUTLINED_FUNCTION_57_2(v259);
    OUTLINED_FUNCTION_57(v132, v133, v134);
    if (v61)
    {
      sub_1D4E50004(v259, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_86;
    }

LABEL_84:
    v62 = &qword_1EC7EC968;
    v63 = &unk_1D5622290;
    v64 = v259;
    goto LABEL_10;
  }

  v135 = v259;
  sub_1D4F1C460(v259, v257, &qword_1EC7EC960, &unk_1D56334C0);
  v136 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v136, v137, v258);
  if (v138)
  {
    (*(v255 + 8))(v257, v258);
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_81();
  v139 = v259;
  v140 = v259 + v121;
  v141 = v258;
  v142(v252, v140, v258);
  v143 = sub_1D4F7BF60();
  v144 = v257;
  OUTLINED_FUNCTION_157_0(v143, v145, v146, v143);
  v147 = OUTLINED_FUNCTION_51();
  (unk_1D56334C0)(v147);
  (unk_1D56334C0)(v144, v141);
  sub_1D4E50004(v139, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v135 & 1) == 0)
  {
    return 0;
  }

LABEL_86:
  v148 = v68[15];
  v149 = *(v266 + v148);
  v150 = *(v266 + v148 + 8);
  v151 = (v267 + v148);
  v152 = v149 == *v151 && v150 == v151[1];
  if (!v152 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v153 = v68[16];
  v154 = *(v266 + v153);
  v155 = *(v267 + v153);
  if (v154 == 2)
  {
    if (v155 != 2)
    {
      return 0;
    }

LABEL_96:
    v156 = *(v251 + 48);
    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_8_1();
    sub_1D4F1C460(v157, v158, v159, v160);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F1C460(v161, v162, v163, v164);
    v165 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v165, v166, v253);
    if (v61)
    {
      v167 = OUTLINED_FUNCTION_57_2(v254);
      OUTLINED_FUNCTION_57(v167, v168, v169);
      if (v61)
      {
        sub_1D4E50004(v254, &qword_1EC7EFC30, &qword_1D56346D8);
LABEL_106:
        v184 = v68[18];
        v185 = *(v267 + v184);
        if (*(v266 + v184))
        {
          if (!v185)
          {
            return 0;
          }

          sub_1D4EF81E0();
          if ((v186 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v185)
        {
          return 0;
        }

        v187 = *(v242 + 48);
        OUTLINED_FUNCTION_97_3();
        OUTLINED_FUNCTION_8_1();
        sub_1D4F1C460(v188, v189, v190, v191);
        OUTLINED_FUNCTION_8_1();
        sub_1D4F1C460(v192, v193, v194, v195);
        v196 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_57(v196, v197, v247);
        if (v61)
        {
          v198 = OUTLINED_FUNCTION_57_2(v248);
          OUTLINED_FUNCTION_57(v198, v199, v200);
          if (v61)
          {
            sub_1D4E50004(v248, &qword_1EC7EFBD0, &qword_1D5634650);
            goto LABEL_121;
          }
        }

        else
        {
          sub_1D4F1C460(v248, v244, &qword_1EC7EFBD0, &qword_1D5634650);
          v201 = OUTLINED_FUNCTION_72_1();
          OUTLINED_FUNCTION_57(v201, v202, v247);
          if (!v203)
          {
            v205 = v248;
            v206 = v248 + v187;
            v207 = v238;
            sub_1D5119188(v206, v238);
            v208 = v244;
            v209 = sub_1D54D5E40(v244, v207);
            sub_1D54DD4D0(v207, type metadata accessor for StorePlatformUber);
            sub_1D54DD4D0(v208, type metadata accessor for StorePlatformUber);
            sub_1D4E50004(v205, &qword_1EC7EFBD0, &qword_1D5634650);
            if (!v209)
            {
              return 0;
            }

LABEL_121:
            v210 = *(v240 + 48);
            OUTLINED_FUNCTION_97_3();
            OUTLINED_FUNCTION_8_1();
            sub_1D4F1C460(v211, v212, v213, v214);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F1C460(v215, v216, v217, v218);
            v219 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_57(v219, v220, v243);
            if (v61)
            {
              v221 = OUTLINED_FUNCTION_57_2(v245);
              OUTLINED_FUNCTION_57(v221, v222, v243);
              if (!v61)
              {
                goto LABEL_128;
              }

              sub_1D4E50004(v245, &unk_1EC7E9CA8, &unk_1D561D1D0);
            }

            else
            {
              v223 = v245;
              sub_1D4F1C460(v245, v241, &unk_1EC7E9CA8, &unk_1D561D1D0);
              v224 = OUTLINED_FUNCTION_72_1();
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v224, v225, v243);
              if (EnumTagSinglePayload == 1)
              {
                (*(v239 + 8))(v241, v243);
LABEL_128:
                v62 = &qword_1EC7E9FB0;
                v63 = &qword_1D562C590;
                v64 = v245;
                goto LABEL_10;
              }

              OUTLINED_FUNCTION_81();
              v227 = v245;
              v228 = v245 + v210;
              v229 = v243;
              v230(v237, v228, v243);
              OUTLINED_FUNCTION_5_141();
              v232 = sub_1D54DD574(v231);
              v233 = v241;
              OUTLINED_FUNCTION_157_0(v232, v234, v235, v232);
              v236 = OUTLINED_FUNCTION_51();
              (unk_1D561D1D0)(v236);
              (unk_1D561D1D0)(v233, v229);
              sub_1D4E50004(v227, &unk_1EC7E9CA8, &unk_1D561D1D0);
              if ((v223 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }

          OUTLINED_FUNCTION_24_69();
          sub_1D54DD4D0(v244, v204);
        }

        v62 = &qword_1EC7EFDD8;
        v63 = &unk_1D5639570;
        v64 = v248;
LABEL_10:
        sub_1D4E50004(v64, v62, v63);
        return 0;
      }
    }

    else
    {
      v170 = v254;
      sub_1D4F1C460(v254, v250, &qword_1EC7EFC30, &qword_1D56346D8);
      v171 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_57(v171, v172, v253);
      if (!v173)
      {
        OUTLINED_FUNCTION_81();
        v174 = v254;
        v175 = v254 + v156;
        v176 = v253;
        v177(v246, v175, v253);
        OUTLINED_FUNCTION_7_133();
        v179 = sub_1D54DD574(v178);
        v180 = v250;
        OUTLINED_FUNCTION_157_0(v179, v181, v182, v179);
        v183 = OUTLINED_FUNCTION_51();
        (qword_1D56346D8)(v183);
        (qword_1D56346D8)(v180, v176);
        sub_1D4E50004(v174, &qword_1EC7EFC30, &qword_1D56346D8);
        if ((v170 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_106;
      }

      (*(v249 + 8))(v250, v253);
    }

    v62 = &qword_1EC7F7618;
    v63 = &unk_1D566A228;
    v64 = v254;
    goto LABEL_10;
  }

  result = 0;
  if (v155 != 2 && ((v155 ^ v154) & 1) == 0)
  {
    goto LABEL_96;
  }

  return result;
}

uint64_t sub_1D54DAC6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E726F7461727563 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6572646C696863 && a2 == 0xEB00000000736449;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001D568F290 == a2;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 25705 && a2 == 0xE200000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x74726168437369 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E694B6B63617274 && a2 == 0xEA00000000007364;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1919246965 && a2 == 0xE400000000000000;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1D5616168();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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

unint64_t sub_1D54DB198(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6172546F69647561;
      break;
    case 2:
      result = 0x4E726F7461727563;
      break;
    case 3:
      result = 0x6E6572646C696863;
      break;
    case 4:
      result = 0x6E6572646C696863;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x6F4E73656E757469;
      break;
    case 11:
      result = 25705;
      break;
    case 12:
      result = 0x74726168437369;
      break;
    case 13:
      result = 0x7473696C79616C70;
      break;
    case 14:
      result = 0x6E694B6B63617274;
      break;
    case 15:
      result = 1919246965;
      break;
    case 16:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54DB370(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F75F8, &qword_1D566A220);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54DD2A0();
  sub_1D56163D8();
  LOBYTE(v49[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v10 = sub_1D4F7CD24();
  OUTLINED_FUNCTION_21_0(v4, v49, v11, v12, v10);
  if (!v2)
  {
    v13 = type metadata accessor for StorePlatformPlaylist(0);
    OUTLINED_FUNCTION_36_59(v13[5]);
    v50 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD70, ":Q\a");
    v14 = sub_1D50F86AC();
    OUTLINED_FUNCTION_11_1(v14);
    LOBYTE(v49[0]) = 2;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_36_59(v13[7]);
    v50 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F75C0, qword_1D566A128);
    v15 = sub_1D54DD414();
    OUTLINED_FUNCTION_11_1(v15);
    OUTLINED_FUNCTION_36_59(v13[8]);
    v50 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02C0, qword_1D565CE10);
    v16 = sub_1D53B2C78(&qword_1EC7F0310);
    OUTLINED_FUNCTION_11_1(v16);
    v17 = v13[9];
    OUTLINED_FUNCTION_45_44(5);
    sub_1D5610978();
    OUTLINED_FUNCTION_6_146();
    v19 = sub_1D54DD574(v18);
    OUTLINED_FUNCTION_21_0(v4 + v17, v49, v20, v21, v19);
    OUTLINED_FUNCTION_36_59(v13[10]);
    v50 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v22 = sub_1D53B2CEC(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_11_1(v22);
    OUTLINED_FUNCTION_36_59(v13[11]);
    v50 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v23 = sub_1D500E55C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_11_1(v23);
    LOBYTE(v49[0]) = 8;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    LOBYTE(v49[0]) = 9;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v24 = v13[14];
    LOBYTE(v49[0]) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    v25 = sub_1D4F7D044();
    OUTLINED_FUNCTION_21_0(v4 + v24, v49, v26, v27, v25);
    v28 = (v4 + v13[15]);
    v30 = *v28;
    v29 = v28[1];
    v49[0] = v30;
    v49[1] = v29;
    v50 = 11;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    LOBYTE(v49[0]) = 12;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v31 = v13[17];
    OUTLINED_FUNCTION_45_44(13);
    sub_1D56104C8();
    OUTLINED_FUNCTION_7_133();
    v33 = sub_1D54DD574(v32);
    OUTLINED_FUNCTION_21_0(v4 + v31, v49, v34, v35, v33);
    OUTLINED_FUNCTION_36_59(v13[18]);
    v50 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v36 = sub_1D4F88BF4(&qword_1EC7ECA00);
    OUTLINED_FUNCTION_11_1(v36);
    v37 = v13[19];
    v38 = OUTLINED_FUNCTION_45_44(15);
    type metadata accessor for StorePlatformUber(v38);
    OUTLINED_FUNCTION_23_73();
    v40 = sub_1D54DD574(v39);
    OUTLINED_FUNCTION_21_0(v4 + v37, v49, v41, v42, v40);
    v43 = v13[20];
    OUTLINED_FUNCTION_45_44(16);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_5_141();
    v45 = sub_1D54DD574(v44);
    OUTLINED_FUNCTION_21_0(v4 + v43, v49, v46, v47, v45);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1D54DB938(uint64_t a1)
{
  v2 = v1;
  v116 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v105 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v104 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v115 = v9;
  v10 = OUTLINED_FUNCTION_70_0();
  v113 = type metadata accessor for StorePlatformUber(v10);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v114 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v112 = v15;
  OUTLINED_FUNCTION_70_0();
  v111 = sub_1D56104C8();
  OUTLINED_FUNCTION_4();
  v103 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v102 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v108 = v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v100 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v99 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v106 = v27;
  OUTLINED_FUNCTION_70_0();
  v28 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v98 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v97 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v96 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v38 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v96 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v43 = OUTLINED_FUNCTION_22(v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v101 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  sub_1D4F1C460(v1, &v96 - v46, &qword_1EC7EB5B8, &unk_1D56206A0);
  v47 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v47, v48, v36);
  v109 = v41;
  v110 = v38;
  if (v84)
  {
    v51 = v36;
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v49 = OUTLINED_FUNCTION_26_73();
    v50(v49);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_28_65();
    sub_1D5614CB8();
    v51 = v36;
    (*(v38 + 8))(v41, v36);
  }

  v52 = type metadata accessor for StorePlatformPlaylist(0);
  v53 = *(v1 + v52[5]);
  if (v53)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F08560(a1, v53, v54);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v52[6] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v52[7]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F36098();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v52[8]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0B2F0();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F1C460(v1 + v52[9], v35, &qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_57(v35, 1, v28);
  if (v84)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v56 = v97;
    v55 = v98;
    OUTLINED_FUNCTION_81();
    v57(v56, v35, v28);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6_146();
    sub_1D54DD574(v58);
    sub_1D5614CB8();
    (*(v55 + 8))(v56, v28);
  }

  if (*(v1 + v52[10]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v52[11]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v52[12] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v52[13] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v59 = v114;
  sub_1D4F1C460(v1 + v52[14], v106, &qword_1EC7EC960, &unk_1D56334C0);
  v60 = OUTLINED_FUNCTION_35_1();
  v61 = v107;
  OUTLINED_FUNCTION_57(v60, v62, v107);
  if (v84)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v64 = v99;
    v63 = v100;
    v65 = OUTLINED_FUNCTION_26_73();
    v66(v65);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_28_65();
    sub_1D5614CB8();
    (*(v63 + 8))(v64, v61);
  }

  sub_1D5614E28();
  if (*(v1 + v52[16]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  sub_1D4F1C460(v1 + v52[17], v108, &qword_1EC7EFC30, &qword_1D56346D8);
  v67 = OUTLINED_FUNCTION_35_1();
  v68 = v111;
  OUTLINED_FUNCTION_57(v67, v69, v111);
  if (v84)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v71 = v102;
    v70 = v103;
    v72 = OUTLINED_FUNCTION_26_73();
    v73(v72);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_7_133();
    sub_1D54DD574(v74);
    OUTLINED_FUNCTION_28_65();
    sub_1D5614CB8();
    (*(v70 + 8))(v71, v68);
  }

  v75 = v51;
  v77 = v109;
  v76 = v110;
  if (*(v1 + v52[18]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v78 = v116;
  v79 = v112;
  sub_1D4F1C460(v2 + v52[19], v112, &qword_1EC7EFBD0, &qword_1D5634650);
  v80 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v80, v81, v113);
  if (v84)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D5119188(v79, v59);
    OUTLINED_FUNCTION_27();
    sub_1D4F1C460(v59, v101, &qword_1EC7EB5B8, &unk_1D56206A0);
    v82 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v82, v83, v75);
    if (v84)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v85 = OUTLINED_FUNCTION_26_73();
      v86(v85);
      OUTLINED_FUNCTION_27();
      sub_1D4F395F4();
      OUTLINED_FUNCTION_28_65();
      sub_1D5614CB8();
      (*(v76 + 8))(v77, v75);
    }

    OUTLINED_FUNCTION_24_69();
    sub_1D54DD4D0(v59, v87);
  }

  v88 = v115;
  sub_1D4F1C460(v2 + v52[20], v115, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v89 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v89, v90, v78);
  if (v84)
  {
    return OUTLINED_FUNCTION_36();
  }

  v92 = v104;
  v91 = v105;
  OUTLINED_FUNCTION_81();
  v93(v92, v88, v78);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_5_141();
  sub_1D54DD574(v94);
  sub_1D5614CB8();
  return (*(v91 + 8))(v92, v78);
}

uint64_t sub_1D54DC32C()
{
  sub_1D56162D8();
  sub_1D54DB938(v1);
  return sub_1D5616328();
}

uint64_t sub_1D54DC36C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v91 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v90 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F75D0, &unk_1D566A210);
  OUTLINED_FUNCTION_4();
  v27 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19_0();
  v96 = type metadata accessor for StorePlatformPlaylist(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v98 = v30;
  v31 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D54DD2A0();
  v93 = v2;
  v32 = v97;
  sub_1D5616398();
  if (v32)
  {
    v97 = v32;
    v36 = 0;
    LODWORD(v37) = 0;
    LODWORD(v25) = 0;
    LODWORD(v38) = 0;
    v39 = 0;
    v40 = 0;
    LODWORD(v88) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    LODWORD(v92) = 0;
    LODWORD(v93) = 0;
  }

  else
  {
    v33 = v21;
    v94 = v17;
    v88 = v13;
    v37 = v90;
    v38 = v91;
    v39 = v27;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v99) = 0;
    sub_1D4F886BC();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_50_37(v34, v35);
    v45 = v98;
    sub_1D4FD23EC(v25, v98, &qword_1EC7EB5B8, &unk_1D56206A0);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD70, ":Q\a");
    v101 = 1;
    sub_1D50F8534();
    OUTLINED_FUNCTION_50_37(v46, &v101);
    v47 = v96;
    *(v45 + v96[5]) = v99;
    OUTLINED_FUNCTION_30_67(2);
    v48 = sub_1D5615F38();
    v49 = (v45 + v47[6]);
    *v49 = v48;
    v49[1] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F75C0, qword_1D566A128);
    v101 = 3;
    sub_1D54DD2F4();
    OUTLINED_FUNCTION_10_118();
    sub_1D5615F78();
    *(v45 + v47[7]) = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02C0, qword_1D565CE10);
    v101 = 4;
    sub_1D53B2C78(&qword_1EC7F02F0);
    OUTLINED_FUNCTION_10_118();
    sub_1D5615F78();
    *(v45 + v47[8]) = v99;
    sub_1D5610978();
    LOBYTE(v99) = 5;
    OUTLINED_FUNCTION_6_146();
    sub_1D54DD574(v51);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_13_95();
    sub_1D5615F78();
    sub_1D4FD23EC(v33, v45 + v47[9], &qword_1EC7EAC98, &unk_1D561DA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v101 = 6;
    sub_1D53B2CEC(&qword_1EDD528F8);
    OUTLINED_FUNCTION_10_118();
    sub_1D5615F78();
    *(v45 + v47[10]) = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v101 = 7;
    sub_1D500E55C(&qword_1EDD52908);
    OUTLINED_FUNCTION_10_118();
    sub_1D5615F78();
    *(v98 + v47[11]) = v99;
    OUTLINED_FUNCTION_30_67(8);
    v52 = sub_1D5615F38();
    v97 = 0;
    v53 = (v98 + v47[12]);
    *v53 = v52;
    v53[1] = v54;
    OUTLINED_FUNCTION_30_67(9);
    v55 = sub_1D5615F38();
    v97 = 0;
    v57 = (v98 + v96[13]);
    *v57 = v55;
    v57[1] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(v99) = 10;
    sub_1D4F88A24();
    OUTLINED_FUNCTION_31_1();
    v40 = v93;
    v58 = v97;
    sub_1D5615F78();
    v97 = v58;
    if (v58)
    {
      v59 = OUTLINED_FUNCTION_21_78();
      v60(v59);
      LODWORD(v92) = 0;
      LODWORD(v93) = 0;
      v36 = 1;
      OUTLINED_FUNCTION_0_246();
      LODWORD(v90) = v61;
      LODWORD(v91) = v61;
    }

    else
    {
      sub_1D4FD23EC(v94, v98 + v96[14], &qword_1EC7EC960, &unk_1D56334C0);
      v101 = 11;
      sub_1D4F89C9C();
      v40 = v93;
      v62 = v97;
      sub_1D5615FD8();
      v97 = v62;
      if (!v62)
      {
        v66 = v100;
        v67 = (v98 + v96[15]);
        *v67 = v99;
        v67[1] = v66;
        OUTLINED_FUNCTION_30_67(12);
        v68 = sub_1D5615F48();
        v97 = 0;
        *(v98 + v96[16]) = v68;
        v40 = sub_1D56104C8();
        LOBYTE(v99) = 13;
        OUTLINED_FUNCTION_7_133();
        sub_1D54DD574(v69);
        OUTLINED_FUNCTION_31_1();
        OUTLINED_FUNCTION_13_95();
        v70 = v97;
        sub_1D5615F78();
        LODWORD(v94) = v70 == 0;
        v97 = v70;
        if (v70 || (sub_1D4FD23EC(v88, v98 + v96[17], &qword_1EC7EFC30, &qword_1D56346D8), v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780), v101 = 14, sub_1D4F88BF4(&qword_1EDD52778), OUTLINED_FUNCTION_10_118(), v71 = v97, sub_1D5615F78(), (v97 = v71) != 0))
        {
          v72 = OUTLINED_FUNCTION_21_78();
          v73(v72);
          v44 = 0;
          LODWORD(v89) = 0;
        }

        else
        {
          *(v98 + v96[18]) = v99;
          v40 = type metadata accessor for StorePlatformUber(0);
          LOBYTE(v99) = 15;
          OUTLINED_FUNCTION_23_73();
          sub_1D54DD574(v76);
          OUTLINED_FUNCTION_31_1();
          OUTLINED_FUNCTION_13_95();
          v77 = v97;
          sub_1D5615F78();
          v97 = v77;
          if (v77)
          {
            v78 = OUTLINED_FUNCTION_21_78();
            v79(v78);
            LODWORD(v89) = 0;
            v44 = 1;
          }

          else
          {
            sub_1D4FD23EC(v37, v98 + v96[19], &qword_1EC7EFBD0, &qword_1D5634650);
            v40 = sub_1D560C0A8();
            LOBYTE(v99) = 16;
            OUTLINED_FUNCTION_5_141();
            sub_1D54DD574(v80);
            OUTLINED_FUNCTION_31_1();
            OUTLINED_FUNCTION_13_95();
            v81 = v97;
            sub_1D5615F78();
            v97 = v81;
            if (!v81)
            {
              v84 = OUTLINED_FUNCTION_21_78();
              v85(v84);
              v86 = v98;
              sub_1D4FD23EC(v38, v98 + v96[20], &unk_1EC7E9CA8, &unk_1D561D1D0);
              sub_1D54DD3B0(v86, v89);
              __swift_destroy_boxed_opaque_existential_1(v95);
              return sub_1D54DD4D0(v86, type metadata accessor for StorePlatformPlaylist);
            }

            v82 = OUTLINED_FUNCTION_21_78();
            v83(v82);
            v44 = 1;
            LODWORD(v89) = 1;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v95);
        OUTLINED_FUNCTION_0_246();
        OUTLINED_FUNCTION_40_53(v74);
        LODWORD(v93) = v75;
        v41 = v96;
        v42 = v98;
LABEL_6:
        result = sub_1D4E50004(v42, &qword_1EC7EB5B8, &unk_1D56206A0);
        if (v37)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }

      v63 = OUTLINED_FUNCTION_21_78();
      v64(v63);
      LODWORD(v93) = 0;
      v36 = 1;
      OUTLINED_FUNCTION_0_246();
      OUTLINED_FUNCTION_40_53(v65);
    }
  }

  v41 = v96;
  v42 = v98;
  result = __swift_destroy_boxed_opaque_existential_1(v95);
  if (v36)
  {
    LODWORD(v94) = 0;
    v44 = 0;
    LODWORD(v89) = 0;
    goto LABEL_6;
  }

  LODWORD(v89) = 0;
  v44 = 0;
  LODWORD(v94) = 0;
  if (v37)
  {
LABEL_7:

    if ((v25 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v25)
  {
LABEL_8:
    if (v38)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = OUTLINED_FUNCTION_46_4();
  if (v38)
  {
LABEL_9:

    if ((v39 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_23:
  if (v39)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (!v40)
  {
    if (!v88)
    {
      goto LABEL_27;
    }

LABEL_12:

    if (v90)
    {
      goto LABEL_28;
    }

LABEL_13:
    if (!v91)
    {
      goto LABEL_29;
    }

LABEL_14:
    result = OUTLINED_FUNCTION_46_4();
    if (v92)
    {
      goto LABEL_30;
    }

LABEL_15:
    if (!v93)
    {
      goto LABEL_31;
    }

LABEL_16:
    result = OUTLINED_FUNCTION_46_4();
    if (v94)
    {
      goto LABEL_32;
    }

LABEL_17:
    if (!v44)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if (v88)
  {
    goto LABEL_12;
  }

LABEL_27:
  if (!v90)
  {
    goto LABEL_13;
  }

LABEL_28:
  result = OUTLINED_FUNCTION_46_4();
  if (v91)
  {
    goto LABEL_14;
  }

LABEL_29:
  if (!v92)
  {
    goto LABEL_15;
  }

LABEL_30:
  result = sub_1D4E50004(v42 + v41[14], &qword_1EC7EC960, &unk_1D56334C0);
  if (v93)
  {
    goto LABEL_16;
  }

LABEL_31:
  if (!v94)
  {
    goto LABEL_17;
  }

LABEL_32:
  result = sub_1D4E50004(v42 + v41[17], &qword_1EC7EFC30, &qword_1D56346D8);
  if ((v44 & 1) == 0)
  {
LABEL_33:
    if (!v89)
    {
      return result;
    }

    return sub_1D4E50004(v42 + v41[19], &qword_1EC7EFBD0, &qword_1D5634650);
  }

LABEL_18:

  if ((v89 & 1) == 0)
  {
    return result;
  }

  return sub_1D4E50004(v42 + v41[19], &qword_1EC7EFBD0, &qword_1D5634650);
}

uint64_t sub_1D54DD160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54DAC6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54DD188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D54DB190();
  *a1 = result;
  return result;
}

uint64_t sub_1D54DD1B0(uint64_t a1)
{
  v2 = sub_1D54DD2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54DD1EC(uint64_t a1)
{
  v2 = sub_1D54DD2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54DD264(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D54DB938(v2);
  return sub_1D5616328();
}

unint64_t sub_1D54DD2A0()
{
  result = qword_1EC7F75D8;
  if (!qword_1EC7F75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75D8);
  }

  return result;
}

unint64_t sub_1D54DD2F4()
{
  result = qword_1EC7F75E0;
  if (!qword_1EC7F75E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F75C0, qword_1D566A128);
    sub_1D54DD574(&unk_1EC7F75E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75E0);
  }

  return result;
}

uint64_t sub_1D54DD3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformPlaylist(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D54DD414()
{
  result = qword_1EC7F7600;
  if (!qword_1EC7F7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F75C0, qword_1D566A128);
    sub_1D54DD574(&unk_1EC7F7608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7600);
  }

  return result;
}

uint64_t sub_1D54DD4D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D54DD528()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C6D8);
  __swift_project_value_buffer(v0, qword_1EC87C6D8);
  return sub_1D5610038();
}

unint64_t sub_1D54DD574(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for StorePlatformPlaylist.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorePlatformPlaylist.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54DD720()
{
  result = qword_1EC7F7630;
  if (!qword_1EC7F7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7630);
  }

  return result;
}

unint64_t sub_1D54DD778()
{
  result = qword_1EC7F7638;
  if (!qword_1EC7F7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7638);
  }

  return result;
}

unint64_t sub_1D54DD7D0()
{
  result = qword_1EC7F7640;
  if (!qword_1EC7F7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7640);
  }

  return result;
}

uint64_t sub_1D54DD85C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v60 = a1;
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v57 = v5;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v56 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v55 - v10;
  v61 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v59 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = *(v26 + 16);
  v55[1] = v3;
  v31(v30, v3, v24);
  v32 = (*(v26 + 88))(v30, v24);
  if (v32 == *MEMORY[0x1E6976E18])
  {
    (*(v26 + 96))(v30, v24);
    (*(v19 + 32))(v23, v30, v17);
    sub_1D560EC98();
    sub_1D560FFA8();
    v33 = sub_1D5610088();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
    sub_1D560FE48();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
    sub_1D560D4D8();
    sub_1D4E6C9CC(v2, &qword_1EC7EA358, &unk_1D561DF50);
    sub_1D4E6C9CC(v11, &qword_1EC7EA358, &unk_1D561DF50);
    (*(v59 + 8))(v16, v61);
    return (*(v19 + 8))(v23, v17);
  }

  else
  {
    v41 = v59;
    if (v32 == *MEMORY[0x1E6976DF8])
    {
      (*(v26 + 96))(v30, v24);
      v42 = v56;
      v43 = v57;
      v44 = v58;
      (*(v57 + 32))(v56, v30, v58);
      sub_1D560EC98();
      sub_1D560FE38();
      v45 = sub_1D5610088();
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
      sub_1D560FDF8();
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v45);
      sub_1D560D4D8();
      sub_1D4E6C9CC(v2, &qword_1EC7EA358, &unk_1D561DF50);
      sub_1D4E6C9CC(v11, &qword_1EC7EA358, &unk_1D561DF50);
      (*(v41 + 8))(v16, v61);
      return (*(v43 + 8))(v42, v44);
    }

    else
    {
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000004CLL, 0x80000001D568F330);
      sub_1D54DE8F4();
      v52 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v52);

      result = OUTLINED_FUNCTION_1_78("Fatal error", v53, v54, v62, v63, "MusicKitInternal/Track+Internal.swift");
      __break(1u);
    }
  }

  return result;
}

uint64_t Track.catalogID.getter()
{
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  sub_1D5613D28();
  sub_1D560EC98();
  sub_1D560D7A8();
  v4 = OUTLINED_FUNCTION_61();
  v5(v4);
  v6 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    sub_1D4E6C9CC(v3, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v7 = sub_1D560F138();
    (*(*(v6 - 8) + 8))(v3, v6);
  }

  return v7;
}

uint64_t Track.shouldShowComposer.getter()
{
  v1 = v0;
  v2 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  (*(v11 + 16))(v14 - v13, v1, v9);
  v16 = OUTLINED_FUNCTION_61();
  if (v17(v16) == *MEMORY[0x1E6976E18])
  {
    v18 = OUTLINED_FUNCTION_61();
    v19(v18);
    (*(v4 + 32))(v8, v15, v2);
    v20 = _s8MusicKit4SongV0aB8InternalE18shouldShowComposerSbvg_0();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_61();
    v22(v21);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t Track.userRating.getter()
{
  v1 = v0;
  v2 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  (*(v18 + 16))(v21 - v20, v1, v16);
  v23 = OUTLINED_FUNCTION_45_3();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x1E6976E18])
  {
    v26 = OUTLINED_FUNCTION_45_3();
    v27(v26);
    (*(v11 + 32))(v15, v22, v9);
    v28 = sub_1D56135C8();
    (*(v11 + 8))(v15, v9);
  }

  else if (v25 == *MEMORY[0x1E6976DF8])
  {
    v29 = OUTLINED_FUNCTION_45_3();
    v30(v29);
    (*(v4 + 32))(v8, v22, v2);
    v28 = sub_1D560ECD8();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    v31 = OUTLINED_FUNCTION_45_3();
    v32(v31);
    return 0;
  }

  return v28;
}

uint64_t Track.favoriteStatus.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1D56128E8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1D5613CA8();
  (*(v5 + 16))(v1, v9, v3);
  v10 = (*(v5 + 88))(v1, v3);
  if (v10 == *MEMORY[0x1E69765E8])
  {
    v11 = 0;
LABEL_7:
    v12 = OUTLINED_FUNCTION_61();
    result = v13(v12);
    *a1 = v11;
    return result;
  }

  if (v10 == *MEMORY[0x1E69765F8])
  {
    v11 = 1;
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x1E69765F0])
  {
    v11 = 2;
    goto LABEL_7;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t Track.siriRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  (*(v18 + 16))(v21 - v20, v1, v16);
  v23 = (*(v18 + 88))(v22, v16);
  if (v23 == *MEMORY[0x1E6976E18])
  {
    (*(v18 + 96))(v22, v16);
    (*(v11 + 32))(v15, v22, v9);
    Song.siriRepresentation.getter();
    v24 = OUTLINED_FUNCTION_45_3();
    return v25(v24);
  }

  else if (v23 == *MEMORY[0x1E6976DF8])
  {
    (*(v18 + 96))(v22, v16);
    (*(v4 + 32))(v8, v22, v2);
    MusicVideo.siriRepresentation.getter(a1);
    return (*(v4 + 8))(v8, v2);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000048, 0x80000001D568F2E0);
    sub_1D54DE8F4();
    v27 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v27);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = OUTLINED_FUNCTION_1_78("Fatal error", v28, v29, 0, 0xE000000000000000, "MusicKitInternal/Track+Internal.swift");
    __break(1u);
  }

  return result;
}

unint64_t sub_1D54DE8F4()
{
  result = qword_1EC7EA708;
  if (!qword_1EC7EA708)
  {
    sub_1D5613D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA708);
  }

  return result;
}

uint64_t sub_1D54DE9B4(void *a1)
{
  sub_1D5616338();
  result = sub_1D56158D8();
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

uint64_t sub_1D54DEA70()
{
  v1 = *(*v0 + 112);
  sub_1D5616338();
  v2 = sub_1D56158D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D54DEB50()
{
  sub_1D54DEA70();

  return MEMORY[0x1EEE6DEF0](v0);
}

sqlite3_stmt *sub_1D54DEB94@<X0>(_BYTE *a1@<X8>, sqlite3_stmt *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D54DEC30(a2, a3);
  if (!v3)
  {
    *a1 = result & 1;
  }

  return result;
}

sqlite3_stmt *sub_1D54DEBDC(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(result, a2);
    return sub_1D560C1F8();
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54DEC30(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return (sqlite3_column_int64(result, a2) != 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54DEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(*(AssociatedConformanceWitness + 16) + 8))(a1, a2, AssociatedTypeWitness);
  if (!v4)
  {
    return (*(a4 + 56))(v11, a3, a4);
  }

  return result;
}

sqlite3_stmt *sub_1D54DEE40@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54DEBC4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1D54DEE6C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 32) = sub_1D5614D68();
  *(inited + 40) = v5;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  return sub_1D5614BD8();
}

uint64_t sub_1D54DEF18(uint64_t a1)
{
  v2 = sub_1D54DEFB4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D54DEF54(uint64_t a1)
{
  v2 = sub_1D54DEFB4();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1D54DEFB4()
{
  result = qword_1EC7F7648;
  if (!qword_1EC7F7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7648);
  }

  return result;
}

uint64_t sub_1D54DF008()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v4 = v3;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D54DF0B4;

  return sub_1D54DF868(v4, v2);
}

uint64_t sub_1D54DF0B4()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v5[6] = v3;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v12 = (v5[3] + *v5[3]);
    v11 = swift_task_alloc();
    v5[7] = v11;
    *v11 = v7;
    v11[1] = sub_1D54DF280;

    return v12();
  }
}

uint64_t sub_1D54DF280()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1D54DF4FC, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[9] = v8;
    *v8 = v5;
    v8[1] = sub_1D54DF3D8;

    return sub_1D54DFEC4();
  }
}

uint64_t sub_1D54DF3D8()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1D54DF5CC;
  }

  else
  {
    v6 = sub_1D54DF570;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D54DF4FC()
{
  OUTLINED_FUNCTION_60();
  v0[11] = v0[8];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_187(v1);

  return sub_1D54E0170();
}

uint64_t sub_1D54DF570()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54DF5CC()
{
  OUTLINED_FUNCTION_60();
  v0[11] = v0[10];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_187(v1);

  return sub_1D54E0170();
}

uint64_t sub_1D54DF640()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    v9 = sub_1D54DF7C4;
  }

  else
  {
    v9 = sub_1D54DF754;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, 0);
}

uint64_t sub_1D54DF754()
{
  OUTLINED_FUNCTION_80();
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54DF7C4()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  sub_1D52AF5B8();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D54DF868(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54DF888, v2);
}

void sub_1D54DF888()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_isDeserialized) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
    if (v2)
    {
      v0[10] = v2;
      _s11TransactionCMa();
      swift_allocObject();

      swift_retain_n();

      v3 = swift_task_alloc();
      v0[11] = v3;
      *v3 = v0;
      v4 = OUTLINED_FUNCTION_1_184(v3);

      sub_1D54E0334(v4, v5, v6, v7, v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    _s10ConnectionCMa();
    swift_allocObject();

    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_1D54DFA0C;

    sub_1D54E5260();
  }
}

uint64_t sub_1D54DFA0C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v5 + 56);
    *(v5 + 72) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1D54DFB44, v11, 0);
  }
}

uint64_t sub_1D54DFB44()
{
  OUTLINED_FUNCTION_91();
  v0[10] = v0[9];
  _s11TransactionCMa();
  swift_allocObject();

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_184(v1);

  return sub_1D54E0334(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D54DFBFC()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 96) = v0;

  v7 = *(v4 + 56);
  if (v0)
  {
    v8 = sub_1D54DFDF4;
  }

  else
  {
    *(v5 + 104) = v3;
    v8 = sub_1D54DFD2C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D54DFD2C()
{
  OUTLINED_FUNCTION_91();
  swift_beginAccess();

  sub_1D52C886C();
  swift_endAccess();

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_1D54DFDF4()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54DFE50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1D54E0990(a1);
  swift_endAccess();
}

uint64_t sub_1D54DFEE0()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 16);
  if (*(v1 + 136))
  {
    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    OUTLINED_FUNCTION_12_100();
    sub_1D54E0934();
    swift_allocError();
    *v2 = v6;
    v2[1] = v7;
    swift_willThrow();
    OUTLINED_FUNCTION_55();

    return v3();
  }

  else
  {
    v5 = *(v1 + 128);
    *(v0 + 24) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D54DFFF0, v5, 0);
  }
}

uint64_t sub_1D54DFFF0()
{
  OUTLINED_FUNCTION_80();
  sub_1D54E4FE8(v0[3]);
  v0[4] = 0;
  v1 = v0[2];

  return MEMORY[0x1EEE6DFA0](sub_1D54E0088, v1, 0);
}

uint64_t sub_1D54E0088()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 16);
  *(v1 + 136) = 1;
  v2 = *(v1 + 144);

  v2(v1);

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54E0114()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54E018C()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 16);
  if (*(v1 + 136))
  {
    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    OUTLINED_FUNCTION_12_100();
    sub_1D54E0934();
    swift_allocError();
    *v2 = v6;
    v2[1] = v7;
    swift_willThrow();
    OUTLINED_FUNCTION_55();

    return v3();
  }

  else
  {
    v5 = *(v1 + 128);
    *(v0 + 24) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D54E029C, v5, 0);
  }
}

uint64_t sub_1D54E029C()
{
  OUTLINED_FUNCTION_80();
  sub_1D54E5008(v0[3]);
  v0[4] = 0;
  v1 = v0[2];

  return MEMORY[0x1EEE6DFA0](sub_1D54E0DF4, v1, 0);
}

uint64_t sub_1D54E0334(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 80) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = *v6;
  return OUTLINED_FUNCTION_12_6(sub_1D54E0384, 0);
}

uint64_t sub_1D54E0384()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  swift_defaultActor_initialize();
  v1[15] = v2;
  v1[16] = v4;
  v1[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D54E0410, v4, 0);
}

uint64_t sub_1D54E0410()
{
  OUTLINED_FUNCTION_80();
  sub_1D54E4EC8(*(v0 + 16), *(v0 + 80));
  *(v0 + 72) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D54E049C, 0, 0);
}

uint64_t sub_1D54E049C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  *(v1 + 136) = 0;
  *(v1 + 144) = v2;
  return OUTLINED_FUNCTION_12_6(sub_1D54E04C0, v1);
}

uint64_t sub_1D54E04C0()
{
  OUTLINED_FUNCTION_60();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1D54E0524()
{
  OUTLINED_FUNCTION_80();

  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54E05C8(sqlite3 *a1, char a2)
{
  OUTLINED_FUNCTION_2_137();
  sub_1D5615B68();

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  MEMORY[0x1DA6EAC70](v4, v5);

  MEMORY[0x1DA6EAC70](0x4341534E41525420, 0xEC0000004E4F4954);
  v6 = sub_1D5614DE8();

  v7 = sqlite3_exec(a1, (v6 + 32), 0, 0, 0);

  return v7;
}

uint64_t sub_1D54E0700()
{
  if (*(v0 + 136) == 1)
  {

    swift_defaultActor_destroy();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E0748()
{
  sub_1D54E0700();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D54E07C4()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v0);
  return sub_1D5616328();
}

uint64_t sub_1D54E0878(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D54E0798();
  return sub_1D5616328();
}

unint64_t sub_1D54E08E0()
{
  result = qword_1EDD585D0;
  if (!qword_1EDD585D0)
  {
    _s11TransactionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD585D0);
  }

  return result;
}

unint64_t sub_1D54E0934()
{
  result = qword_1EC7F7650;
  if (!qword_1EC7F7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7650);
  }

  return result;
}

unint64_t sub_1D54E0990(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1D56162D8();
    MEMORY[0x1DA6EC0D0](a1);
    v7 = sub_1D5616328();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v9) == a1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D54B1690();
          v11 = v13;
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_1D54E0BC4(v9);
        *v1 = v13;
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1D5615AD8();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1D54E0AE4(v4, a1);

  return v6;
}

unint64_t sub_1D54E0AE4(uint64_t a1, uint64_t a2)
{

  v4 = sub_1D5615A98();
  v5 = swift_unknownObjectRetain();
  v9 = sub_1D52C94A4(v5, v4);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a2);
  for (i = sub_1D5616328(); ; i = result + 1)
  {
    result = i & ~(-1 << *(v9 + 32));
    if (((*(v9 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      break;
    }

    v8 = *(*(v9 + 48) + 8 * result);
    if (v8 == a2)
    {
      sub_1D54E0BC4(result);
      *v2 = v9;
      return v8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D54E0BC4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D5615A08();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](v10);
        v11 = sub_1D5616328() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D54E0D6C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D54E0DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D54E0E3C(sqlite3_stmt *a1, uint64_t a2)
{
  sub_1D560C208();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_bind_double(a1, a2, v4);
    return;
  }

  __break(1u);
}

sqlite3_stmt *sub_1D54E0EA0(sqlite3_stmt *result, uint64_t a2, char a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(result, a2, a3 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54E0EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  result = (*(a4 + 64))(a3, a4);
  if (!v4)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1D54E10FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t sub_1D54E1140(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1DA6EC0D0](1);

    return sub_1D5614E28();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0, a2, a3);
    return MEMORY[0x1DA6EC0D0](a2);
  }
}

uint64_t sub_1D54E11B8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D56162D8();
  if (a3)
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D5614E28();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    MEMORY[0x1DA6EC0D0](a1);
  }

  return sub_1D5616328();
}

uint64_t sub_1D54E1258(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D56162D8();
  sub_1D54E1140(v6, v2, v3, v4);
  return sub_1D5616328();
}

unint64_t sub_1D54E12FC()
{
  result = qword_1EC7F7658[0];
  if (!qword_1EC7F7658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F7658);
  }

  return result;
}

uint64_t sub_1D54E1350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D54E13F0(a1, a2, MEMORY[0x1E6968010], MEMORY[0x1E6968008]);
  *a3 = result;
  return result;
}

uint64_t sub_1D54E13A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D54E13F0(a1, a2, MEMORY[0x1E6967F70], MEMORY[0x1E6967F68]);
  *a3 = result;
  return result;
}

uint64_t sub_1D54E13F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  (a3)(0, a2);
  swift_allocObject();
  return a4();
}

uint64_t sub_1D54E1434(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_0_247();
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E1494(v3, v4, a2, WitnessTable);
}

uint64_t sub_1D54E1494(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 72))(&v8, a3, a4);
  sub_1D560B948();
  sub_1D4E55E1C(a1, a2);
}

uint64_t sub_1D54E1544@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_247();
  WitnessTable = swift_getWitnessTable();
  result = sub_1D54E1598(a1, WitnessTable);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1D54E1598(uint64_t a1, uint64_t a2)
{
  (*(a2 + 64))(&v4);
  v2 = sub_1D560B9D8();

  return v2;
}

uint64_t sub_1D54E1628(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D54E1668(a1);
  return v2;
}

uint64_t sub_1D54E174C()
{
  sub_1D54E16DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D54E184C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  *(v4 + 32) = 0x746E656D656C65;
  *(v4 + 40) = 0xE700000000000000;
  *(v4 + 48) = (*(*(a2 + 24) + 32))(a1);
  return v4;
}

uint64_t sub_1D54E18E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v8 || (sub_1D5616168() & 1) != 0)
  {
    a5[3] = MEMORY[0x1E6969080];
    a5[4] = &off_1F50C0750;
    *a5 = a3;
    a5[1] = a4;

    return sub_1D4F48DE4(a3, a4);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D5616168() & 1) != 0)
  {
    a4[3] = &type metadata for SQLDynamicValue;
    a4[4] = &off_1F50BF758;
    *a4 = a3;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1B5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v4 || (result = sub_1D5616168(), (result & 1) != 0))
  {
    *(a3 + 24) = &type metadata for SQLNull;
    *(a3 + 32) = &off_1F50C07B8;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D54E1C74(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_1_185();
  v9 = v9 && v7 == 0xE700000000000000;
  if (v9 || (OUTLINED_FUNCTION_5_143(v6, v7, v8) & 1) != 0)
  {
    a3[3] = MEMORY[0x1E69E6158];
    a3[4] = &off_1F50C0588;
    *a3 = a1;
    a3[1] = a2;
  }

  else
  {
    OUTLINED_FUNCTION_6_147();
    OUTLINED_FUNCTION_4_144();
    sub_1D5615D48();
    OUTLINED_FUNCTION_3_188();
    OUTLINED_FUNCTION_0_248();
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D54E1D58@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_1D5616168(), (result & 1) != 0))
  {
    *(a4 + 24) = MEMORY[0x1E69E6370];
    *(a4 + 32) = &off_1F50BFE60;
    *a4 = a3 & 1;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1E7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_1D5616168(), (result & 1) != 0))
  {
    *(a3 + 24) = MEMORY[0x1E69E63B0];
    *(a3 + 32) = &off_1F50C0310;
    *a3 = a4;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1FA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_1D5616168(), (result & 1) != 0))
  {
    *(a3 + 24) = MEMORY[0x1E69E6448];
    *(a3 + 32) = &off_1F50C0400;
    *a3 = a4;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D54E20E0(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_1_185();
  v11 = v11 && v9 == 0xE700000000000000;
  if (v11 || (OUTLINED_FUNCTION_5_143(v8, v9, v10) & 1) != 0)
  {
    a4[3] = a2;
    a4[4] = a3;
    *a4 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_6_147();
    OUTLINED_FUNCTION_4_144();
    sub_1D5615D48();
    OUTLINED_FUNCTION_3_188();
    OUTLINED_FUNCTION_0_248();
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D54E21A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_1_185();
  v10 = v10 && v8 == 0xE700000000000000;
  if (v10 || (OUTLINED_FUNCTION_5_143(v7, v8, v9) & 1) != 0)
  {
    a3[3] = a1;
    a3[4] = *(*(a2 + 24) + 16);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    v12 = *(*(a1 - 8) + 16);

    return v12(boxed_opaque_existential_0, v3, a1);
  }

  else
  {
    OUTLINED_FUNCTION_6_147();
    OUTLINED_FUNCTION_4_144();
    sub_1D5615D48();
    OUTLINED_FUNCTION_3_188();
    OUTLINED_FUNCTION_0_248();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v9(a1, a2, AssociatedTypeWitness, a6);
}

uint64_t sub_1D54E23A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E22B0(a1, WitnessTable, v3);
}

uint64_t sub_1D54E23F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E230C(a1, a2, a3, a4, WitnessTable, v9);
}

uint64_t sub_1D54E2488(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D54E24C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E22B0(a1, WitnessTable, v3);
}

uint64_t sub_1D54E2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E230C(a1, a2, a3, a4, WitnessTable, v9);
}

uint64_t sub_1D54E25A4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D54E25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D5621D90;
  *(v9 + 32) = 7955819;
  *(v9 + 40) = 0xE300000000000000;
  *(v9 + 48) = (*(a3 + 32))(a1, a3);
  *(v9 + 56) = 0x65756C6176;
  *(v9 + 64) = 0xE500000000000000;
  *(v9 + 72) = (*(a5 + 32))(a2, a5);
  return v9;
}

uint64_t sub_1D54E26B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9)
{
  v37 = a7;
  v38 = a4;
  v39 = a2;
  v40 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = *(a5 - 8);
  (*(v20 + 16))(&v37 - v18, a3, a5);
  v21 = *(a6 - 8);
  (*(v21 + 16))(&v19[*(TupleTypeMetadata2 + 48)], v38, a6);
  v38 = a1;
  v23 = a1 == 7955819;
  v22 = v39;
  v23 = v23 && v39 == 0xE300000000000000;
  if (v23 || (sub_1D5616168() & 1) != 0)
  {
    v24 = OUTLINED_FUNCTION_5_24();
    v25(v24);
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = *(v37 + 16);
    v28 = v40;
    v40[3] = a5;
    v28[4] = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
    (*(v20 + 32))(boxed_opaque_existential_0, v17, a5);
    (*(v14 + 8))(v19, TupleTypeMetadata2);
    return (*(v21 + 8))(&v17[v26], a6);
  }

  else
  {
    v31 = v38 == 0x65756C6176 && v22 == 0xE500000000000000;
    if (v31 || (sub_1D5616168() & 1) != 0)
    {
      v32 = OUTLINED_FUNCTION_5_24();
      v33(v32);
      v39 = *(TupleTypeMetadata2 + 48);
      v34 = *(a9 + 16);
      v35 = v40;
      v40[3] = a6;
      v35[4] = v34;
      v36 = __swift_allocate_boxed_opaque_existential_0(v35);
      (*(v21 + 32))(v36, &v17[v39], a6);
      (*(v14 + 8))(v19, TupleTypeMetadata2);
      return (*(v20 + 8))(v17, a5);
    }

    else
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
      v41 = v38;
      v42 = v22;
      sub_1D5615D48();
      OUTLINED_FUNCTION_0_248();
      result = sub_1D5615E08();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D54E2A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *(a5 - 16);
  v10 = *(a5 - 8);
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1D54E26B8(a1, a2, a3, a3 + *(TupleTypeMetadata2 + 48), v12, v13, v10, a6, v11);
}

uint64_t sub_1D54E2B14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D54E2B50(uint64_t a1)
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

uint64_t sub_1D54E2E04(uint64_t a1)
{
  OUTLINED_FUNCTION_2_184();
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E184C(a1, WitnessTable);
}

uint64_t sub_1D54E2E44@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_2_184();
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E21A4(a1, WitnessTable, a2);
}

void sub_1D54E2F00(uint64_t a1)
{
  sub_1D5615E48();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1D56158D8();
    if (v2 <= 0x3F)
    {
      sub_1D54E35E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D54E2FDC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8;
  if (v12 < a2)
  {
    v16 = ((v14 + *(*(result - 8) + 64) + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v16 <= 3)
    {
      v17 = ((a2 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
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

    switch(v19)
    {
      case 1:
        v20 = a1[v16];
        if (a1[v16])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 2:
        v20 = *&a1[v16];
        if (*&a1[v16])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v20 = *&a1[v16];
        if (!v20)
        {
          goto LABEL_31;
        }

LABEL_27:
        v21 = (v20 - 1) << (8 * v16);
        if (v16 <= 3)
        {
          v22 = *a1;
        }

        else
        {
          v21 = 0;
          v22 = *a1;
        }

        return v12 + (v22 | v21) + 1;
      default:
LABEL_31:
        if (v12)
        {
          break;
        }

        return 0;
    }
  }

  if (v7 >= v11)
  {

    return __swift_getEnumTagSinglePayload(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v15] & ~v13, v10, result);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1D54E3260(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = *(v12 + 80);
  if (v13)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  v19 = ((v18 + ((v16 + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 < a3)
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v15 < a2)
  {
    v22 = ~v15 + a2;
    bzero(a1, v19);
    if (v19 <= 3)
    {
      v23 = (v22 >> 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v19 > 3)
    {
      *a1 = v22;
    }

    else
    {
      *a1 = v22;
    }

    switch(v11)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }

    return;
  }

  switch(v11)
  {
    case 1:
      a1[v19] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 2:
      *&a1[v19] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 3:
LABEL_63:
      __break(1u);
      return;
    case 4:
      *&a1[v19] = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 < v14)
      {
        a1 = (&a1[v16 + v17] & ~v17);
        if (v14 < a2)
        {
          if (v18 <= 3)
          {
            v24 = ~(-1 << (8 * v18));
          }

          else
          {
            v24 = -1;
          }

          if (v18)
          {
            v25 = v24 & (~v14 + a2);
            if (v18 <= 3)
            {
              v26 = v18;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v18);
            switch(v26)
            {
              case 2:
                *a1 = v25;
                break;
              case 3:
                *a1 = v25;
                a1[2] = BYTE2(v25);
                break;
              case 4:
                goto LABEL_50;
              default:
                *a1 = v25;
                break;
            }
          }

          return;
        }

        v27 = (a2 + 1);
        v28 = a1;
        goto LABEL_57;
      }

      if (v9 >= a2)
      {
        v28 = a1;
        v27 = a2;
        v13 = v9;
        v10 = AssociatedTypeWitness;
LABEL_57:

        __swift_storeEnumTagSinglePayload(v28, v27, v13, v10);
        return;
      }

      if (v16)
      {
        v25 = ~v9 + a2;
        bzero(a1, v16);
LABEL_50:
        *a1 = v25;
      }

      return;
  }
}