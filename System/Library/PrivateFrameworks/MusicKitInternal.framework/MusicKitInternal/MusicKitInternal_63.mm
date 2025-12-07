uint64_t sub_1D5444674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v73 = a3;
  v74 = a2;
  v72 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v60 - v18;
  v19 = type metadata accessor for SocialProfilePropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v66 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v66);
  v24 = v19[10];
  v25 = sub_1D560C0A8();
  v69 = v24;
  __swift_storeEnumTagSinglePayload(v23 + v24, 1, 1, v25);
  if (qword_1EDD53D08 != -1)
  {
    swift_once();
  }

  v68 = v25;
  v70 = v9;
  v71 = v12;
  v26 = sub_1D560D9A8();
  v27 = __swift_project_value_buffer(v26, qword_1EDD53D10);
  if (qword_1EC7E8F68 != -1)
  {
    swift_once();
  }

  v28 = sub_1D5610088();
  v29 = __swift_project_value_buffer(v28, qword_1EC87C240);
  v30 = type metadata accessor for StorePlatformSocialProfile(0);
  sub_1D54301F4(v29, v27, *(a1 + v30[6]), *(a1 + v30[6] + 8), v23 + v19[12]);
  v31 = sub_1D560FDE8();
  v64 = v32;
  v65 = v31;
  sub_1D5614A88();
  v63 = OUTLINED_FUNCTION_11_114();
  v62 = OUTLINED_FUNCTION_11_114();
  v61 = OUTLINED_FUNCTION_11_114();
  v33 = OUTLINED_FUNCTION_11_114();
  *(v23 + v19[6]) = 2;
  if (qword_1EDD54CF8 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDD76B58;
  if (qword_1EDD76B58 >> 62)
  {
    sub_1D560CDE8();

    v59 = sub_1D5615E18();

    v34 = v59;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v23 + v19[11]) = v34;
  (*(*(v28 - 8) + 16))(v23 + v19[13], v29, v28);
  v35 = (v23 + v19[14]);
  v36 = v64;
  *v35 = v65;
  v35[1] = v36;
  v37 = v62;
  *(v23 + v19[15]) = v63;
  *(v23 + v19[16]) = v37;
  *(v23 + v19[17]) = v61;
  *(v23 + v19[18]) = v33;
  v38 = v67;
  sub_1D4FB8150();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v39);
  v41 = v75;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v38, &qword_1EC7EB5B8, &unk_1D56206A0);
    v42 = 1;
  }

  else
  {
    sub_1D5610758();
    v41 = v75;
    OUTLINED_FUNCTION_24_0();
    (*(v43 + 8))(v38, v39);
    v42 = 0;
  }

  v44 = v68;
  __swift_storeEnumTagSinglePayload(v41, v42, 1, v66);
  v45 = (v23 + v19[5]);
  v46 = v19[7];
  v47 = v19[8];
  v48 = (v23 + v19[9]);
  sub_1D50ADCCC();
  v49 = (a1 + v30[5]);
  v50 = v49[1];
  *v45 = *v49;
  v45[1] = v50;
  *(v23 + v46) = *(a1 + v30[7]);
  *(v23 + v47) = *(a1 + v30[8]);
  v51 = (a1 + v30[9]);
  v52 = v51[1];
  *v48 = *v51;
  v48[1] = v52;
  v53 = v70;
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v53, 1, v44) == 1)
  {
    sub_1D4FB8150();
    v54 = __swift_getEnumTagSinglePayload(v53, 1, v44);

    if (v54 != 1)
    {
      sub_1D4E50004(v53, &unk_1EC7E9CA8, &unk_1D561D1D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_0();
    v56 = v71;
    (*(v55 + 32))(v71, v53, v44);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v44);
  }

  sub_1D50ADCCC();
  v76[3] = v19;
  v76[4] = sub_1D5446EDC(&qword_1EDD54CF0, type metadata accessor for SocialProfilePropertyProvider, &unk_1D5633BA0);
  __swift_allocate_boxed_opaque_existential_0(v76);
  sub_1D5446E2C();
  SocialProfile.init(propertyProvider:)(v76, v72);

  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  (*(v57 + 8))(v74);
  sub_1D5446E84(a1, type metadata accessor for StorePlatformSocialProfile);
  return sub_1D5446E84(v23, type metadata accessor for SocialProfilePropertyProvider);
}

uint64_t sub_1D5444DDC(void *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  a3(0);
  sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v5, type metadata accessor for SocialProfile, v6);

  return sub_1D560EC28();
}

uint64_t sub_1D5444EB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t SocialProfile.init(_:)@<X0>(uint64_t a2@<X8>)
{
  v61[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for StorePlatformSocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = sub_1D560CD48();
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v56 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v56 - v24;
  v26 = type metadata accessor for SocialProfile(0);
  v58 = v25;
  v59 = v26;
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
  v27 = objc_opt_self();
  v28 = sub_1D5614BA8();
  v61[0] = 0;
  v29 = [v27 dataWithJSONObject:v28 options:0 error:v61];

  v30 = v61[0];
  if (v29)
  {
    v56 = v6;
    v57 = a2;
    v31 = sub_1D560C198();
    v33 = v32;

    sub_1D560B9C8();
    swift_allocObject();
    sub_1D560B9B8();
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    sub_1D560B988();
    sub_1D5446EDC(&qword_1EC7F69B8, type metadata accessor for StorePlatformSocialProfile, &unk_1D563C578);
    sub_1D560B948();

    v50 = v56;
    sub_1D5446E2C();
    sub_1D560B978();
    v51 = sub_1D560B958();
    sub_1D5444674(v50, v14, v51, v23);

    sub_1D4E55E1C(v31, v33);
    sub_1D5446E84(v9, type metadata accessor for StorePlatformSocialProfile);
    v52 = v58;
    sub_1D4E50004(v58, &unk_1EC7ED370, &unk_1D5624FE0);
    v53 = v59;
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v59);
    sub_1D50AE800(v23, v52);
    a2 = v57;
  }

  else
  {
    v34 = v30;
    v35 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D560C758();
    __swift_project_value_buffer(v36, qword_1EDD76DC8);

    v37 = v35;
    v38 = sub_1D560C738();
    v39 = sub_1D56156C8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61[0] = v41;
      *v40 = 136446466;
      v42 = sub_1D5614BC8();
      v44 = v43;

      v45 = sub_1D4E6835C(v42, v44, v61);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      v60 = v35;
      v46 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      v47 = sub_1D5614DB8();
      v49 = sub_1D4E6835C(v47, v48, v61);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_1D4E3F000, v38, v39, "Failed to initialize SocialProfile with dictionary: %{public}s. Error = %s.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v41, -1, -1);
      MEMORY[0x1DA6ED200](v40, -1, -1);
    }

    else
    {
    }

    v52 = v58;
    v53 = v59;
  }

  sub_1D50AE800(v52, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v53) == 1)
  {
    sub_1D4E50004(v19, &unk_1EC7ED370, &unk_1D5624FE0);
    v54 = 1;
  }

  else
  {
    sub_1D5060D74(v19, a2);
    v54 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v54, 1, v53);
}

uint64_t SocialProfile.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfile(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SocialProfile.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for SocialProfile(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_6_136();
  sub_1D5446EDC(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t SocialProfile.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for SocialProfile(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_6_136();
  sub_1D5446EDC(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D54456F4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D5446EDC(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5445798@<X0>(uint64_t *a1@<X8>)
{
  result = SocialProfile.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SocialProfile.subscript.getter(uint64_t a1)
{
  return sub_1D5445800();
}

{
  return sub_1D5445800();
}

uint64_t sub_1D5445800()
{
  OUTLINED_FUNCTION_2_175();
  sub_1D5446EDC(v1, v0, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_12_94(&qword_1EDD57518);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t SocialProfile.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_2_175();
  sub_1D5446EDC(v2, v1, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_12_94(&qword_1EDD57518);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D54459F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  v11 = sub_1D5446EDC(&qword_1EDD5DC58, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D5445B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  v13 = sub_1D5446EDC(&qword_1EDD5DC58, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D5445C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  v13 = sub_1D5446EDC(&qword_1EDD5DC58, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D5445DAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  sub_1D5446EDC(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76898 = v0;
  return result;
}

uint64_t sub_1D5445E74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768B8 = v0;
  return result;
}

uint64_t sub_1D5445EF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76890 = v0;
  return result;
}

uint64_t sub_1D5445F6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768C0 = v0;
  return result;
}

uint64_t sub_1D5446004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  v6 = sub_1D560D188();

  *a5 = v6;
  return result;
}

uint64_t sub_1D5446090()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_124();
  sub_1D5446EDC(v1, v2, MEMORY[0x1E6968FD0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768B0 = v0;
  return result;
}

uint64_t sub_1D544611C()
{
  v0 = sub_1D5610A18();
  __swift_allocate_value_buffer(v0, qword_1EC87C658);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D5610A28();
}

uint64_t static SocialProfile.catalogFilterID(for:)@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1D56159B8();
  v9 = OUTLINED_FUNCTION_35_60(v3, v4, v5, MEMORY[0x1E69E6938], v6, v7, v8);

  if (v9)
  {
    return sub_1D5610A08();
  }

  KeyPath = swift_getKeyPath();
  v16 = OUTLINED_FUNCTION_35_60(KeyPath, v11, v12, MEMORY[0x1E69E6938], v13, v14, v15);

  if (v16)
  {
    if (qword_1EC7E9678 != -1)
    {
      swift_once();
    }

    v17 = sub_1D5610A18();
    __swift_project_value_buffer(v17, qword_1EC87C658);
    OUTLINED_FUNCTION_24_0();
    return (*(v18 + 16))(a2);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5446354@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D54463B0(uint64_t a1, uint64_t a2)
{
  sub_1D5446EDC(&qword_1EC7EE028, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);

  return sub_1D5610C58();
}

uint64_t SocialProfile.init(from:)(void *a1)
{
  type metadata accessor for SocialProfile(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_175();
  sub_1D5446EDC(v3, v4, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_8_125();
  sub_1D5446EDC(v5, v1, MEMORY[0x1E69762C8]);
  OUTLINED_FUNCTION_13_92(&qword_1EDD53100);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SocialProfile.encode(to:)(uint64_t a1)
{
  type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_1_175();
  sub_1D5446EDC(v2, v3, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_8_125();
  sub_1D5446EDC(v4, v1, MEMORY[0x1E69762C8]);
  OUTLINED_FUNCTION_13_92(&qword_1EDD53100);
  return sub_1D5612688();
}

uint64_t SocialProfile.description.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_23_67();
  v6 = v1;
  v2 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v2);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  if (qword_1EDD53F98 != -1)
  {
    OUTLINED_FUNCTION_17_84(&qword_1EDD53F98);
  }

  sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v3, type metadata accessor for SocialProfile, v4);
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  if (qword_1EDD53FA8 != -1)
  {
    OUTLINED_FUNCTION_14_87(&qword_1EDD53FA8);
  }

  OUTLINED_FUNCTION_10_113(qword_1EDD768A8, MEMORY[0x1E69E6158]);
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x203A656D616E202CLL, 0xE900000000000022);

  if (qword_1EDD53FC0 != -1)
  {
    OUTLINED_FUNCTION_10_50(&qword_1EDD53FC0);
  }

  OUTLINED_FUNCTION_10_113(qword_1EDD768B8, MEMORY[0x1E69E6370]);
  if (qword_1EDD53F88 != -1)
  {
    OUTLINED_FUNCTION_9_49(&qword_1EDD53F88);
  }

  OUTLINED_FUNCTION_10_113(qword_1EDD76890, MEMORY[0x1E69E6370]);
  if (qword_1EDD53FD0 != -1)
  {
    OUTLINED_FUNCTION_7_9(&qword_1EDD53FD0);
  }

  OUTLINED_FUNCTION_10_113(qword_1EDD768C0, MEMORY[0x1E69E6370]);
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v6;
}

uint64_t sub_1D5446980()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD0], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F69A8 = v4;
  return result;
}

uint64_t sub_1D5446ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v2 + 104))(v4 + v3, *MEMORY[0x1E69751F0], v0);
  qword_1EC7F69B0 = v4;
  return result;
}

uint64_t sub_1D5446BE4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD57528);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_1_175();
  sub_1D5446EDC(v3, v4, &protocol conformance descriptor for SocialProfile);
  return sub_1D560D988();
}

uint64_t sub_1D5446C90()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53D10);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD57520 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD57528);
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D5446E2C()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D5446E84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D5446EDC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5446F4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v15 = *a1;
  v14 = a1[1];
  sub_1D5447FDC(v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D4E6C9CC(v6, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v16 = 1;
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
    v18[0] = v15;
    v18[1] = v14;
    sub_1D5447ABC(v18, a2);
    (*(v9 + 8))(v13, v7);
    v16 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v16, 1, v7);
}

void sub_1D54470E4(uint64_t a1, void *a2)
{
  v101 = a1;
  v105 = *MEMORY[0x1E69E9840];
  v100 = sub_1D560BEE8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v89 - v10;
  v12 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v93 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v89 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v89 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v89 - v24;
  v94 = a2;
  sub_1D5447FDC(v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1D4E6C9CC(v11, &unk_1EC7E9CA8, &unk_1D561D1D0);
    if (qword_1EC7E8DD8 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_3;
  }

  v97 = v12;
  v98 = v14;
  (*(v14 + 32))(v25, v11, v12);
  OUTLINED_FUNCTION_3_179();
  v103 = v31;
  v104 = v30;
  v32 = v100;
  (*(v4 + 104))(v8, *MEMORY[0x1E6968F58], v100);
  sub_1D4F53278();
  v91 = v25;
  v92 = v23;
  sub_1D560C098();
  (*(v4 + 8))(v8, v32);
  v33 = 0;
  v34 = v102;
  v35 = *(v101 + 16);
  v36 = v101 + 40;
  v37 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v38 = (v36 + 16 * v33);
  v39 = v97;
  while (1)
  {
    if (v35 == v33)
    {
      if (!*(v37 + 16))
      {

        if (qword_1EC7E8DD8 != -1)
        {
          OUTLINED_FUNCTION_0_234();
          swift_once();
        }

        v79 = sub_1D560C758();
        __swift_project_value_buffer(v79, qword_1EC87C0F8);
        v80 = sub_1D560C738();
        v81 = sub_1D56156E8();
        v82 = os_log_type_enabled(v80, v81);
        v83 = v91;
        if (v82)
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_1D4E3F000, v80, v81, "deleteUnauthenticatedLibraryContainers: no explicit library identifiers provided.", v84, 2u);
          OUTLINED_FUNCTION_122();
        }

        v85 = *(v98 + 8);
        v85(v92, v39);
        v85(v83, v39);
        return;
      }

      v96 = v37;
      v49 = [objc_opt_self() defaultManager];
      v50 = v92;
      v51 = sub_1D560BF68();
      v103 = 0;
      v52 = [v49 contentsOfDirectoryAtURL:v51 includingPropertiesForKeys:0 options:0 error:&v103];

      v53 = v103;
      if (!v52)
      {
        v86 = v103;

        sub_1D560BE98();

        swift_willThrow();
        v87 = *(v98 + 8);
        v87(v50, v39);
        v87(v91, v39);
        return;
      }

      v102 = v34;
      v54 = sub_1D5615168();
      v55 = v53;

      v100 = *(v54 + 16);
      if (!v100)
      {

        v64 = *(v98 + 8);
LABEL_42:
        v64(v50, v39);
        v64(v91, v39);
        return;
      }

      v57 = 0;
      v58 = v98;
      v99 = v54 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v101 = v98 + 16;
      v59 = (v98 + 8);
      *&v56 = 136446210;
      v89 = v56;
      v95 = (v98 + 8);
      while (1)
      {
        if (v57 >= *(v54 + 16))
        {
          goto LABEL_46;
        }

        v60 = *(v58 + 16);
        v60(v20, v99 + *(v58 + 72) * v57, v39);
        if ((sub_1D560BF38() & 1) == 0)
        {
          goto LABEL_25;
        }

        v103 = sub_1D560BF48();
        v104 = v61;
        MEMORY[0x1EEE9AC00](v103);
        *(&v89 - 2) = &v103;
        v62 = v102;
        v63 = sub_1D4F25A04();

        v102 = v62;
        if (v63)
        {
          break;
        }

        if (qword_1EC7E8DD8 != -1)
        {
          OUTLINED_FUNCTION_0_234();
          swift_once();
        }

        v65 = sub_1D560C758();
        __swift_project_value_buffer(v65, qword_1EC87C0F8);
        v66 = v93;
        v60(v93, v20, v39);
        v67 = sub_1D560C738();
        v68 = sub_1D56156E8();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v103 = v90;
          *v69 = v89;
          v70 = sub_1D560BFF8();
          v72 = v71;
          v73 = v66;
          v64 = *v95;
          (*v95)(v73, v97);
          v74 = sub_1D4E6835C(v70, v72, &v103);
          v39 = v97;

          *(v69 + 4) = v74;
          _os_log_impl(&dword_1D4E3F000, v67, v68, "deleteUnauthenticatedLibraryContainers: deleting %{public}s.", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v90);
          OUTLINED_FUNCTION_122();
          OUTLINED_FUNCTION_122();

          v59 = v95;
        }

        else
        {

          v75 = v66;
          v59 = v95;
          v64 = *v95;
          (*v95)(v75, v39);
        }

        v76 = sub_1D560BF68();
        v103 = 0;
        v77 = [v94 removeItemAtURL:v76 error:&v103];

        v78 = v103;
        if ((v77 & 1) == 0)
        {
          v88 = v78;

          sub_1D560BE98();

          swift_willThrow();
          v64(v20, v39);
          v64(v92, v39);
          v64(v91, v39);
          return;
        }

        v58 = v98;
LABEL_33:
        ++v57;
        v64(v20, v39);
        if (v100 == v57)
        {

          v50 = v92;
          goto LABEL_42;
        }
      }

      v58 = v98;
      v59 = v95;
LABEL_25:
      v64 = *v59;
      goto LABEL_33;
    }

    if (v33 >= v35)
    {
      break;
    }

    v40 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_45;
    }

    v42 = *v38;
    v38 += 2;
    v41 = v42;
    ++v33;
    if (v42)
    {
      v43 = v34;
      v44 = *(v38 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4EFF8E4();
        v37 = v47;
      }

      v45 = *(v37 + 16);
      if (v45 >= *(v37 + 24) >> 1)
      {
        sub_1D4EFF8E4();
        v37 = v48;
      }

      *(v37 + 16) = v45 + 1;
      v46 = v37 + 16 * v45;
      *(v46 + 32) = v44;
      *(v46 + 40) = v41;
      v33 = v40;
      v34 = v43;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  OUTLINED_FUNCTION_0_234();
  swift_once();
LABEL_3:
  v26 = sub_1D560C758();
  __swift_project_value_buffer(v26, qword_1EC87C0F8);
  v27 = sub_1D560C738();
  v28 = sub_1D56156C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D4E3F000, v27, v28, "deleteUnauthenticatedLibraryContainers: platformSpecificContainerURL is unavailable.", v29, 2u);
    OUTLINED_FUNCTION_122();
  }
}

uint64_t sub_1D5447ABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1D560BEE8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v20 = v11;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v19 = a1[1];
  OUTLINED_FUNCTION_3_179();
  v15 = *MEMORY[0x1E6968F58];
  v16 = *(v5 + 104);
  v16(v9, v15, v3);
  sub_1D4F53278();
  sub_1D560C088();
  v17 = *(v5 + 8);
  v17(v9, v3);
  if (!v19)
  {
    return (*(v20 + 32))(a2, v14, v21);
  }

  v16(v9, v15, v3);
  sub_1D560C088();
  v17(v9, v3);
  return (*(v20 + 8))(v14, v21);
}

uint64_t static NSFileManager.MusicKit_LibraryContainerizationPolicy.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1D5616168();
}

uint64_t NSFileManager.MusicKit_LibraryContainerizationPolicy.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1DA6EC0D0](0);
  }

  MEMORY[0x1DA6EC0D0](1);

  return sub_1D5614E28();
}

uint64_t NSFileManager.MusicKit_LibraryContainerizationPolicy.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D56162D8();
  if (v1)
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D5614E28();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  return sub_1D5616328();
}

uint64_t sub_1D5447E50(uint64_t a1)
{
  v4 = *v1;
  sub_1D56162D8();
  NSFileManager.MusicKit_LibraryContainerizationPolicy.hash(into:)(v3);
  return sub_1D5616328();
}

unint64_t sub_1D5447E9C()
{
  result = qword_1EC7F69C0;
  if (!qword_1EC7F69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F69C0);
  }

  return result;
}

uint64_t sub_1D5447EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5447F40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D5447F94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D5447FAC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1D5447FDC(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1D560C0A8();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  v23[0] = 0;
  v8 = [v2 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:v23];
  v9 = v23[0];
  if (v8)
  {
    v10 = v8;
    sub_1D560BFC8();
    v11 = v9;

    sub_1D4E6C9CC(a1, &unk_1EC7E9CA8, &unk_1D561D1D0);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    sub_1D4F5A3D0(v6, a1);
  }

  else
  {
    v12 = v23[0];
    v13 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EC7E8DD8 != -1)
    {
      swift_once();
    }

    v14 = sub_1D560C758();
    __swift_project_value_buffer(v14, qword_1EC87C0F8);
    v15 = v13;
    v16 = sub_1D560C738();
    v17 = sub_1D56156C8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D4E3F000, v16, v17, "Failed to get application support directory URL: %{public}@.", v18, 0xCu);
      sub_1D4E6C9CC(v19, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v19, -1, -1);
      MEMORY[0x1DA6ED200](v18, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t CreditArtistPropertyProvider.name.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t type metadata accessor for CreditArtistPropertyProvider(uint64_t a1)
{
  result = qword_1EC7F69F8;
  if (!qword_1EC7F69F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CreditArtistPropertyProvider.name.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for CreditArtistPropertyProvider(0) + 20));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

double CreditArtistPropertyProvider.roleNames.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);

  return result;
}

uint64_t CreditArtistPropertyProvider.roleNames.setter()
{
  v2 = *(OUTLINED_FUNCTION_17_85() + 24);

  *(v1 + v2) = v0;
  return result;
}

uint64_t CreditArtistPropertyProvider.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B40, &qword_1D5642560);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D568E230);
    v46 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    v43 = *(&v44 + 1);
    v42 = v44;
    goto LABEL_32;
  }

  v15 = v14;
  v16 = qword_1EC7E9058;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_9_118(&qword_1EC7E9058);
  }

  *&v44 = qword_1EC87C2A0;
  v46 = v15;
  sub_1D4EC5794(&qword_1EC7F69C8, &qword_1EC7F1B40, &qword_1D5642560);
  if (sub_1D5614D18())
  {
    sub_1D4F39AB0(v2, v13, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v17 = sub_1D56140F8();
    OUTLINED_FUNCTION_10(v13);
    if (!v18)
    {
      *(&v45 + 1) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
      (*(*(v17 - 8) + 32))(boxed_opaque_existential_0, v13, v17);
LABEL_14:

      goto LABEL_15;
    }

    v19 = &qword_1EC7E9CA0;
    v20 = &unk_1D561A0C0;
    v21 = v13;
    goto LABEL_8;
  }

  v23 = qword_1EC7E9060;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_8_126(&qword_1EC7E9060);
  }

  v24 = OUTLINED_FUNCTION_1_2(qword_1EC87C2A8);

  if (v24)
  {
    v25 = (v2 + *(type metadata accessor for CreditArtistPropertyProvider(0) + 20));
    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;

      v28 = MEMORY[0x1E69E6158];
    }

    else
    {
      v28 = 0;
      v27 = 0;
    }

    *a2 = v27;
    a2[1] = v26;
    a2[2] = 0;
    a2[3] = v28;
  }

  else
  {
    v31 = qword_1EC7E9068;

    if (v31 != -1)
    {
      OUTLINED_FUNCTION_7_125(&qword_1EC7E9068);
    }

    v32 = OUTLINED_FUNCTION_1_2(qword_1EC87C2B0);

    if ((v32 & 1) == 0)
    {
      v35 = qword_1EC7E9070;

      if (v35 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EC7E9070);
      }

      v36 = OUTLINED_FUNCTION_1_2(qword_1EC7F1AF0);

      if ((v36 & 1) == 0)
      {
        while (1)
        {
          *&v44 = 0;
          *(&v44 + 1) = 0xE000000000000000;
          sub_1D5615B68();
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
          v46 = a1;
          sub_1D560CDE8();
          sub_1D5615D48();
          OUTLINED_FUNCTION_33_0();
          v43 = *(&v44 + 1);
          v42 = v44;
LABEL_32:
          OUTLINED_FUNCTION_3_78("Fatal error", v40, v41, v42, v43, "MusicKitInternal/CreditArtistPropertyProvider.swift");
          __break(1u);
        }
      }

      v37 = type metadata accessor for CreditArtistPropertyProvider(0);
      sub_1D4F39AB0(v3 + *(v37 + 28), v9, &off_1EC7EB5B0, &unk_1D5632170);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
      OUTLINED_FUNCTION_10(v9);
      if (!v18)
      {
        *(&v45 + 1) = v38;
        v39 = __swift_allocate_boxed_opaque_existential_0(&v44);
        (*(*(v38 - 8) + 32))(v39, v9, v38);
        goto LABEL_14;
      }

      v19 = &off_1EC7EB5B0;
      v20 = &unk_1D5632170;
      v21 = v9;
LABEL_8:
      result = sub_1D4E50004(v21, v19, v20);
      v44 = 0u;
      v45 = 0u;
LABEL_15:
      v30 = v45;
      *a2 = v44;
      *(a2 + 1) = v30;
      return result;
    }

    v33 = *(v2 + *(type metadata accessor for CreditArtistPropertyProvider(0) + 24));
    if (v33)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    }

    else
    {
      v34 = 0;
    }

    *a2 = v33;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = v34;
  }

  return result;
}

uint64_t sub_1D5448AB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D4F39AB0(a1, &v4, &qword_1EC7E9F98, &qword_1D561C420);

  return CreditArtistPropertyProvider.subscript.setter();
}

uint64_t CreditArtistPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_206();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B40, &qword_1D5642560);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastClass())
  {
    v1 = qword_1EC7E9070;
    swift_retain_n();
    if (v1 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EC7E9070);
    }

    sub_1D4EC5794(&qword_1EC7F69C8, &qword_1EC7F1B40, &qword_1D5642560);
    v2 = sub_1D5614D18();

    if (v2)
    {
      swift_getKeyPath();
      sub_1D544AA80(&qword_1EC7F69D0, type metadata accessor for CreditArtistPropertyProvider, &protocol conformance descriptor for CreditArtistPropertyProvider);
      sub_1D5612238();

      return sub_1D4E50004(v0, &qword_1EC7E9F98, &qword_1D561C420);
    }

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D568E230);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_3_78("Fatal error", v4, v5, 0, 0xE000000000000000, "MusicKitInternal/CreditArtistPropertyProvider.swift");
  __break(1u);
  return result;
}

void (*CreditArtistPropertyProvider.subscript.modify())(void **a1, char a2)
{
  OUTLINED_FUNCTION_206();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  CreditArtistPropertyProvider.subscript.getter(v0, v3);
  return sub_1D5448DEC;
}

void sub_1D5448DEC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_30_63();

    CreditArtistPropertyProvider.subscript.setter();
    v3 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v3, v4, &qword_1D561C420);
  }

  else
  {

    CreditArtistPropertyProvider.subscript.setter();
  }

  free(v2);
}

uint64_t CreditArtistPropertyProvider.merge<A>(_:with:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v5 = OUTLINED_FUNCTION_22(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F69D8, &qword_1D5665BC0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for CreditArtistPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F69E0, &unk_1D5665BC8);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D568E230);
    v36 = a1;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v32 = 59;
LABEL_14:
    v33 = v32;
    result = OUTLINED_FUNCTION_3_78("Fatal error", v28, v29, v30, v31, "MusicKitInternal/CreditArtistPropertyProvider.swift");
    __break(1u);
    return result;
  }

  v21 = v20;
  sub_1D4E628D4(a2, &v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_1D4E50004(v14, &qword_1EC7F69D8, &qword_1D5665BC0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D568E260);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v32 = 62;
    goto LABEL_14;
  }

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  sub_1D544938C(v14, v19);
  v22 = qword_1EC7E9070;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EC7E9070);
  }

  v35 = qword_1EC7F1AF0;
  v36 = v21;
  sub_1D4EC5794(&qword_1EC7F69E8, &qword_1EC7F69E0, &unk_1D5665BC8);
  v23 = sub_1D5614D18();

  if ((v23 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000029, 0x80000001D568E2A0);
    v36 = v21;
    sub_1D5615D48();
    OUTLINED_FUNCTION_28();
    v32 = 69;
    goto LABEL_14;
  }

  sub_1D4F39AB0(v19 + *(v15 + 28), v8, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4F1C404(v19);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_57(v8, 1, v24);
  v25 = v34;
  if (v26)
  {
    sub_1D4F39AB0(v34 + *(v15 + 28), v10, &off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_57(v8, 1, v24);
    if (!v26)
    {
      sub_1D4E50004(v8, &off_1EC7EB5B0, &unk_1D5632170);
    }
  }

  else
  {
    (*(*(v24 - 8) + 32))(v10, v8, v24);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v24);
  }

  return sub_1D4E68940(v10, v25 + *(v15 + 28), &off_1EC7EB5B0, &unk_1D5632170);
}

uint64_t sub_1D544938C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreditArtistPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54493F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5622FA0;
  if (qword_1EC7E9058 != -1)
  {
    OUTLINED_FUNCTION_9_118(&qword_1EC7E9058);
  }

  *(v0 + 32) = qword_1EC87C2A0;
  v1 = qword_1EC7E9060;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_8_126(&qword_1EC7E9060);
  }

  *(v0 + 40) = qword_1EC87C2A8;
  v2 = qword_1EC7E9068;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_7_125(&qword_1EC7E9068);
  }

  *(v0 + 48) = qword_1EC87C2B0;
  v3 = qword_1EC7E9070;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EC7E9070);
  }

  *(v0 + 56) = qword_1EC7F1AF0;
  qword_1EC87C670 = v0;
}

double CreditArtistPropertyProvider.knownProperties.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);

  return result;
}

uint64_t CreditArtistPropertyProvider.identifierSet.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);
  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_104();

  return v1(v0);
}

uint64_t CreditArtistPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_17_85() + 36);
  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t CreditArtistPropertyProvider.type.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);
  sub_1D5610088();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_104();

  return v1(v0);
}

uint64_t CreditArtistPropertyProvider.type.setter()
{
  v2 = *(OUTLINED_FUNCTION_17_85() + 40);
  sub_1D5610088();
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t CreditArtistPropertyProvider.href.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t CreditArtistPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for CreditArtistPropertyProvider(0) + 44));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

double CreditArtistPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);

  return result;
}

double CreditArtistPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);

  return result;
}

double CreditArtistPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);

  return result;
}

double CreditArtistPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for CreditArtistPropertyProvider(0);

  return result;
}

uint64_t static CreditArtistPropertyProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4();
  v78 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v76 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v77 = v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v80 = v11;
  v12 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v75 - v26;
  v28 = *(v25 + 56);
  v82 = a1;
  sub_1D4F39AB0(a1, &v75 - v26, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v29 = a2;
  sub_1D4F39AB0(a2, &v27[v28], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v27);
  if (v30)
  {
    OUTLINED_FUNCTION_10(&v27[v28]);
    if (v30)
    {
      sub_1D4E50004(v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_14;
    }

LABEL_9:
    v33 = &qword_1EC7E9FB8;
    v34 = &unk_1D561B9C0;
    v35 = v27;
LABEL_10:
    sub_1D4E50004(v35, v33, v34);
    goto LABEL_11;
  }

  sub_1D4F39AB0(v27, v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(&v27[v28]);
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_71();
    v32(v31);
    goto LABEL_9;
  }

  (*(v14 + 32))(v18, &v27[v28], v12);
  OUTLINED_FUNCTION_4_139();
  sub_1D544AA80(v38, v39, MEMORY[0x1E6976F80]);
  v40 = sub_1D5614D18();
  v41 = *(v14 + 8);
  v41(v18, v12);
  v42 = OUTLINED_FUNCTION_71();
  (v41)(v42);
  sub_1D4E50004(v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v43 = type metadata accessor for CreditArtistPropertyProvider(0);
  v44 = v43[5];
  v45 = v82;
  v46 = (v82 + v44);
  v47 = *(v82 + v44 + 8);
  v48 = v29;
  v49 = (v29 + v44);
  v50 = v49[1];
  if (v47)
  {
    if (!v50)
    {
      goto LABEL_11;
    }

    v51 = *v46 == *v49 && v47 == v50;
    if (!v51 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v50)
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_26_32(v43[6]))
  {
    if (!v52)
    {
      goto LABEL_11;
    }

    sub_1D4EF81E0();
    if ((v53 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v52)
  {
    goto LABEL_11;
  }

  v54 = v43[7];
  v55 = v80;
  v56 = *(v79 + 48);
  sub_1D4F39AB0(v45 + v54, v80, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4F39AB0(v48 + v54, v55 + v56, &off_1EC7EB5B0, &unk_1D5632170);
  v57 = v81;
  OUTLINED_FUNCTION_57(v55, 1, v81);
  if (!v30)
  {
    v58 = v77;
    sub_1D4F39AB0(v55, v77, &off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_57(v55 + v56, 1, v57);
    if (!v59)
    {
      v60 = v78;
      v61 = v55 + v56;
      v62 = v76;
      (*(v78 + 32))(v76, v61, v57);
      sub_1D544A768(&qword_1EC7EF660, &qword_1EC7EF668, MEMORY[0x1E6976F38], MEMORY[0x1E6975000]);
      v63 = sub_1D5614D18();
      v64 = *(v60 + 8);
      v64(v62, v57);
      v64(v58, v57);
      sub_1D4E50004(v55, &off_1EC7EB5B0, &unk_1D5632170);
      if ((v63 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    (*(v78 + 8))(v58, v57);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_57(v55 + v56, 1, v57);
  if (!v30)
  {
LABEL_36:
    v33 = &qword_1EC7EF608;
    v34 = &unk_1D5632420;
    v35 = v55;
    goto LABEL_10;
  }

  sub_1D4E50004(v55, &off_1EC7EB5B0, &unk_1D5632170);
LABEL_38:
  OUTLINED_FUNCTION_26_32(v43[8]);
  sub_1D4EF6F7C();
  if ((v65 & 1) == 0 || (sub_1D560D6E8() & 1) == 0 || (sub_1D4F3B22C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v66 = v43[11];
  v67 = (v45 + v66);
  v68 = *(v45 + v66 + 8);
  v69 = (v48 + v66);
  v70 = v69[1];
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_11;
    }

    v71 = *v67 == *v69 && v68 == v70;
    if (!v71 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v70)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26_32(v43[12]);
  sub_1D4F286E0();
  if (v72)
  {
    OUTLINED_FUNCTION_26_32(v43[13]);
    sub_1D4F286E0();
    if (v73)
    {
      OUTLINED_FUNCTION_26_32(v43[14]);
      sub_1D4F286E0();
      if (v74)
      {
        OUTLINED_FUNCTION_26_32(v43[15]);
        sub_1D4F286E0();
        return v36 & 1;
      }
    }
  }

LABEL_11:
  v36 = 0;
  return v36 & 1;
}

void CreditArtistPropertyProvider.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4();
  v31 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v30 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  sub_1D4F39AB0(v2, &v30 - v20, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v21, 1, v11);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v13 + 32))(v17, v21, v11);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_139();
    sub_1D544AA80(v23, v24, MEMORY[0x1E6976F78]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v13 + 8))(v17, v11);
  }

  v25 = type metadata accessor for CreditArtistPropertyProvider(0);
  if (*(v2 + v25[5] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v25[6]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v2 + v25[7], v10, &off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_57(v10, 1, v3);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v27 = v30;
    v26 = v31;
    (*(v31 + 32))(v30, v10, v3);
    OUTLINED_FUNCTION_27();
    sub_1D544A768(&qword_1EC7EF6C0, &qword_1EC7EC7E8, MEMORY[0x1E6976F30], MEMORY[0x1E6974FF8]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v26 + 8))(v27, v3);
  }

  v28 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v28, v29);
  sub_1D560D838();
  sub_1D544AA80(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  sub_1D5610088();
  sub_1D544AA80(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  if (*(v2 + v25[11] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
}

uint64_t CreditArtistPropertyProvider.hashValue.getter()
{
  sub_1D56162D8();
  CreditArtistPropertyProvider.hash(into:)(v1);
  return sub_1D5616328();
}

void (*sub_1D544A464(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  CreditArtistPropertyProvider.subscript.getter(a2, v5);
  return sub_1D5448DEC;
}

uint64_t sub_1D544A4E0(uint64_t a1)
{
  sub_1D56162D8();
  CreditArtistPropertyProvider.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D544A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D544AA80(&qword_1EC7F69D0, type metadata accessor for CreditArtistPropertyProvider, &protocol conformance descriptor for CreditArtistPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D544A5D4(uint64_t a1)
{
  v2 = sub_1D544AA80(&qword_1EC7F69D0, type metadata accessor for CreditArtistPropertyProvider, &protocol conformance descriptor for CreditArtistPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D544A650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D544AA80(&qword_1EC7F69F0, type metadata accessor for CreditArtistPropertyProvider, &protocol conformance descriptor for CreditArtistPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D544A6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D544AA80(&qword_1EC7F6A08, type metadata accessor for CreditArtistPropertyProvider, &protocol conformance descriptor for CreditArtistPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D544A768(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA448, &unk_1D561D110);
    sub_1D544AA80(a2, MEMORY[0x1E6976F28], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D544A8BC(uint64_t a1)
{
  sub_1D4F1C90C(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4F18AF4();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_1D4F1C90C(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
      if (v9 > 0x3F)
      {
        return v6;
      }

      v6 = sub_1D560D838();
      if (v10 > 0x3F)
      {
        return v6;
      }

      v6 = sub_1D5610088();
      if (v11 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1D4E5CF94(319);
        v2 = v12;
        if (v13 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1D544AA80(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicPlayer.ItemState.__allocating_init(_:container:player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_61();
  MusicPlayer.ItemState.init(_:container:player:)(v5, v6, a3);
  return v4;
}

uint64_t sub_1D544AB1C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v99 = a3;
  v5 = sub_1D560D258();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v89 - v13;
  v15 = a2[1];
  v16 = a2[2];
  v96 = *a2;
  v97 = v16;
  v98 = a2[3];
  v94 = a2[4];
  v95 = *(a2 + 1);
  v17 = OUTLINED_FUNCTION_86_0();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  OUTLINED_FUNCTION_82();
  result = sub_1D5612EF8();
  if ((result & 1) == 0)
  {
    v31 = 9;
LABEL_39:
    *v99 = v31;
    return result;
  }

  v92 = v15;
  v91 = v11;
  v93 = v5;
  v105[0] = 1;
  if (qword_1EDD544A0 != -1)
  {
    OUTLINED_FUNCTION_0_235(&qword_1EDD544A0);
  }

  v20 = sub_1D560C758();
  v21 = __swift_project_value_buffer(v20, qword_1EDD76AD8);
  v22 = sub_1D560C738();
  v23 = sub_1D56156E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_142();
    v90 = v7;
    v25 = v24;
    v26 = v21;
    v27 = OUTLINED_FUNCTION_138_0();
    v103 = v27;
    *v25 = 136446210;
    v28 = sub_1D544FCA0();
    v30 = sub_1D4E6835C(v28, v29, &v103);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1D4E3F000, v22, v23, "%{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v21 = v26;
    OUTLINED_FUNCTION_122();
    v7 = v90;
    OUTLINED_FUNCTION_122();
  }

  v32 = OUTLINED_FUNCTION_86_0();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  OUTLINED_FUNCTION_10_114();
  sub_1D5612F18();
  v34 = (*(v7 + 88))(v14, v93);
  if (v34 == *MEMORY[0x1E6974E38])
  {
    v35 = v97;
    LOBYTE(v103) = v96;
    OUTLINED_FUNCTION_48_38();
    BYTE2(v103) = v35;
    BYTE3(v103) = v98;
    BYTE4(v103) = v94;
    v104 = v95;
    if (sub_1D544FE48(a1, &v103))
    {
LABEL_9:
      LOBYTE(v36) = 2;
LABEL_34:
      v105[0] = v36;
      goto LABEL_35;
    }

    v49 = OUTLINED_FUNCTION_2_176();
    if (sub_1D544FE9C(v49, v50))
    {
      goto LABEL_30;
    }

    v51 = OUTLINED_FUNCTION_2_176();
    if ((sub_1D544FF50(v51, v52) & 1) == 0)
    {
      v53 = OUTLINED_FUNCTION_2_176();
      if ((sub_1D5450108(v53, v54) & 1) == 0)
      {
        v55 = OUTLINED_FUNCTION_2_176();
        if (sub_1D5450344(v55, v56))
        {
LABEL_24:
          LOBYTE(v36) = 7;
          goto LABEL_34;
        }

        v79 = OUTLINED_FUNCTION_62_37();
        sub_1D5450654(v79, v80);
        v36 = v103;
        if (v103 == 11)
        {
          v81 = OUTLINED_FUNCTION_62_37();
          sub_1D5450780(v81, v82);
          v36 = v103;
        }

        goto LABEL_42;
      }

LABEL_30:
      LOBYTE(v36) = 3;
      goto LABEL_34;
    }

LABEL_33:
    LOBYTE(v36) = 5;
    goto LABEL_34;
  }

  v37 = v98;
  if (v34 == *MEMORY[0x1E6974E48])
  {
    OUTLINED_FUNCTION_53_32();
    BYTE2(v103) = v97;
    BYTE3(v103) = v37;
    v38 = OUTLINED_FUNCTION_5_136();
    if (sub_1D544FF50(v38, v39))
    {
      OUTLINED_FUNCTION_6_137();
      if ((sub_1D5612FB8() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_137();
        if ((sub_1D5612F48() & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_32:
        v105[0] = 10;
        goto LABEL_38;
      }
    }

    OUTLINED_FUNCTION_6_137();
    if ((sub_1D5612FB8() & 1) != 0 || (v40 = OUTLINED_FUNCTION_62_37(), sub_1D5450858(v40, v41), v36 = v103, v103 == 11))
    {
      OUTLINED_FUNCTION_53_32();
      v42 = v98;
      BYTE2(v103) = v97;
      BYTE3(v103) = v98;
      v43 = OUTLINED_FUNCTION_5_136();
      if (sub_1D5450344(v43, v44))
      {
        OUTLINED_FUNCTION_6_137();
        v42 = v98;
        if ((sub_1D5612FB8() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_137();
          v42 = v98;
          if ((sub_1D5612F48() & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      v46 = v96;
      v45 = v97;
      LOBYTE(v103) = v96;
      OUTLINED_FUNCTION_48_38();
      BYTE2(v103) = v45;
      BYTE3(v103) = v42;
      v47 = OUTLINED_FUNCTION_5_136();
      if (sub_1D544FE48(v47, v48))
      {
        goto LABEL_9;
      }

      LOBYTE(v103) = v46;
      BYTE1(v103) = v22;
      BYTE2(v103) = v45;
      BYTE3(v103) = v42;
LABEL_29:
      v63 = OUTLINED_FUNCTION_5_136();
      if (sub_1D544FE9C(v63, v64))
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    goto LABEL_42;
  }

  if (v34 == *MEMORY[0x1E6974E40])
  {
    v57 = OUTLINED_FUNCTION_62_37();
    sub_1D5450858(v57, v58);
    v36 = v103;
    if (v103 == 11)
    {
      v60 = v96;
      v59 = v97;
      LOBYTE(v103) = v96;
      OUTLINED_FUNCTION_48_38();
      BYTE2(v103) = v59;
      BYTE3(v103) = v37;
      v61 = OUTLINED_FUNCTION_5_136();
      if (sub_1D544FE48(v61, v62))
      {
        goto LABEL_9;
      }

      LOBYTE(v103) = v60;
      BYTE1(v103) = v22;
      BYTE2(v103) = v59;
      BYTE3(v103) = v37;
      goto LABEL_29;
    }

LABEL_42:
    v105[0] = v36;
    if (v36 != 10)
    {
LABEL_35:
      sub_1D4E628D4(a1, &v103);
      sub_1D4E628D4(a1, v102);
      v65 = v21;
      v66 = sub_1D560C738();
      v67 = sub_1D56156E8();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = OUTLINED_FUNCTION_138_0();
        v101 = swift_slowAlloc();
        *v68 = 136446722;
        v100[0] = v36;
        v69 = sub_1D5614DB8();
        sub_1D4E6835C(v69, v70, &v101);
        OUTLINED_FUNCTION_82();

        *(v68 + 4) = v65;
        *(v68 + 12) = 2082;
        sub_1D4E628D4(&v103, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
        v71 = sub_1D5614DB8();
        v73 = v72;
        __swift_destroy_boxed_opaque_existential_1(&v103);
        v74 = sub_1D4E6835C(v71, v73, &v101);

        *(v68 + 14) = v74;
        *(v68 + 22) = 2082;
        __swift_project_boxed_opaque_existential_1(v102, v102[3]);
        OUTLINED_FUNCTION_10_114();
        sub_1D5612F18();
        v75 = sub_1D5614DB8();
        v77 = v76;
        __swift_destroy_boxed_opaque_existential_1(v102);
        v78 = sub_1D4E6835C(v75, v77, &v101);

        *(v68 + 24) = v78;
        _os_log_impl(&dword_1D4E3F000, v66, v67, "Playability status is %{public}s for item: %{public}s for playableItemKind %{public}s.", v68, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v103);
        __swift_destroy_boxed_opaque_existential_1(v102);
      }
    }

LABEL_38:
    result = swift_beginAccess();
    v31 = v105[0];
    goto LABEL_39;
  }

  v103 = 0;
  v104 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D5686E50);
  v83 = OUTLINED_FUNCTION_86_0();
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v85 = v91;
  OUTLINED_FUNCTION_10_114();
  sub_1D5612F18();
  v86 = v93;
  sub_1D5615D48();
  (*(v7 + 8))(v85, v86);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000019);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = OUTLINED_FUNCTION_148_6("Fatal error", v87, v88, v103, v104, "MusicKitInternal/MusicPlayerItemState.swift");
  __break(1u);
  return result;
}

uint64_t *MusicPlayer.ItemState.init(_:container:player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v184 = a3;
  v185 = a2;
  v189 = a1;
  v186 = *v3;
  v5 = v186;
  v183 = v186;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_48(&v162 - v7);
  v181 = sub_1D560DB08();
  OUTLINED_FUNCTION_4();
  v171 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48(&v162 - v11);
  v169 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v167 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v15 - v14);
  v188 = sub_1D560E728();
  OUTLINED_FUNCTION_4();
  v179 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v182 = v19 - v18;
  v20 = *(v5 + 80);
  OUTLINED_FUNCTION_1_0();
  v187 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v162 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_4();
  v34 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v162 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  OUTLINED_FUNCTION_4();
  v40 = v39;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v162 - v42;
  v44 = qword_1EDD5D728;
  LOBYTE(v193) = 4;
  v176 = *(v186 + 88);
  sub_1D544C6E4(&v193);
  v45 = v43;
  v46 = v20;
  (*(v40 + 32))(v4 + v44, v45, v38);
  v47 = v187;
  v48 = qword_1EDD5D738;
  sub_1D544C718(0);
  (*(v34 + 32))(v4 + v48, v37, v32);
  OUTLINED_FUNCTION_36_57();
  *(v4 + *(v49 + 144)) = 0;
  OUTLINED_FUNCTION_36_57();
  *(v4 + *(v50 + 152)) = 0;
  v52 = (v47 + 16);
  v51 = *(v47 + 16);
  (v51)(v31, v189, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1480, &qword_1D5640260);
  v53 = swift_dynamicCast();
  v54 = &qword_1EDD54000;
  v177 = (v47 + 16);
  v186 = v51;
  if (v53)
  {
    __swift_destroy_boxed_opaque_existential_1(&v193);
    v55 = v166;
    v163 = v20;
    sub_1D560EC98();
    sub_1D560D588();
    (*(v167 + 8))(v55, v169);
    v56 = v171;
    v57 = *(v171 + 104);
    v58 = v178;
    v57(v178, *MEMORY[0x1E6975040], v181);
    sub_1D5451664(&qword_1EDD5D748, MEMORY[0x1E6975358], MEMORY[0x1E6975360]);
    v59 = sub_1D5614FC8();
    if (v59 == 2)
    {
      MEMORY[0x1EEE9AC00](v59);
      sub_1D4F257A8();
    }

    v60 = v59;
    v61 = *(v56 + 8);
    v62 = v181;
    v61(v58, v181);
    if (v60)
    {
      goto LABEL_8;
    }

    v63 = v165;
    v57(v165, *MEMORY[0x1E6975030], v62);
    v64 = sub_1D5614FC8();
    if (v64 == 2)
    {
      MEMORY[0x1EEE9AC00](v64);
      sub_1D4F257A8();
    }

    v65 = v64;
    v61(v63, v181);
    if (v65)
    {
LABEL_8:
      v66 = OUTLINED_FUNCTION_16_91();
      v67(v66);
      v46 = v163;
      v51 = v186;
      v47 = v187;
      v52 = v177;
      v54 = &qword_1EDD54000;
    }

    else
    {
      v54 = &qword_1EDD54000;
      if (qword_1EDD544A0 != -1)
      {
        OUTLINED_FUNCTION_0_235(&qword_1EDD544A0);
      }

      v144 = sub_1D560C758();
      __swift_project_value_buffer(v144, qword_1EDD76AD8);
      v145 = v164;
      v146 = v163;
      v52 = v177;
      v51 = v186;
      (v186)(v164, v189, v163);
      v147 = sub_1D560C738();
      v148 = sub_1D56156C8();
      if (OUTLINED_FUNCTION_68_28(v148))
      {
        v149 = OUTLINED_FUNCTION_142();
        v150 = OUTLINED_FUNCTION_138_0();
        v193 = v150;
        *v149 = 136446210;
        (v186)(v175, v145, v146);
        v151 = sub_1D5614DB8();
        v153 = v152;
        (*(v187 + 8))(v145, v146);
        v154 = sub_1D4E6835C(v151, v153, &v193);
        v52 = v177;

        *(v149 + 4) = v154;
        v51 = v186;
        _os_log_impl(&dword_1D4E3F000, v147, v148, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v150);
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();

        v155 = OUTLINED_FUNCTION_16_91();
        v156(v155);
        v46 = v146;
        v47 = v187;
      }

      else
      {

        v157 = v187;
        (*(v187 + 8))(v145, v146);
        v158 = OUTLINED_FUNCTION_16_91();
        v159(v158);
        v46 = v146;
        v47 = v157;
      }
    }
  }

  (v51)(v180, v189, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  OUTLINED_FUNCTION_64_29();
  v68 = swift_dynamicCast();
  v69 = v172;
  if (v68)
  {
    sub_1D4E48324(v191, &v193);
    OUTLINED_FUNCTION_36_57();
    (v51)(v4 + *(v70 + 120), v189, v46);
    OUTLINED_FUNCTION_36_57();
    sub_1D4EC76A8(v185, v4 + *(v71 + 128));
    InternalMusicPlayer.queue(for:)(&unk_1F50A3B78);
    OUTLINED_FUNCTION_36_57();
    *(v4 + *(v72 + 136)) = v73;
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    v74 = qword_1EDD55F60;
    swift_getKeyPath();
    swift_getKeyPath();
    v171 = v74;
    OUTLINED_FUNCTION_86_0();
    sub_1D560C8F8();

    LODWORD(v182) = LOBYTE(v191[0]);
    LODWORD(v181) = BYTE1(v191[0]);
    LODWORD(v180) = BYTE2(v191[0]);
    LODWORD(v179) = BYTE3(v191[0]);
    LODWORD(v178) = BYTE4(v191[0]);
    v188 = *(&v191[0] + 1);
    if (v54[148] != -1)
    {
      OUTLINED_FUNCTION_0_235(&qword_1EDD544A0);
    }

    v75 = sub_1D560C758();
    v76 = __swift_project_value_buffer(v75, qword_1EDD76AD8);
    v77 = v170;
    OUTLINED_FUNCTION_64_29();
    (v51)();
    OUTLINED_FUNCTION_64_29();
    (v51)();
    sub_1D4E628D4(&v193, v191);
    v169 = v76;
    v78 = sub_1D560C738();
    v79 = sub_1D56156E8();
    if (os_log_type_enabled(v78, v79))
    {
      v51 = OUTLINED_FUNCTION_138_0();
      v167 = swift_slowAlloc();
      v190 = v167;
      *v51 = 136446722;
      OUTLINED_FUNCTION_45_5();
      swift_getDynamicType();
      v80 = sub_1D5616458();
      v165 = v78;
      v81 = v80;
      v82 = v77;
      v83 = v69;
      v85 = v84;
      LODWORD(v166) = v79;
      v52 = *(v47 + 8);
      v52(v82, v46);
      v86 = sub_1D4E6835C(v81, v85, &v190);

      *(v51 + 4) = v86;
      *(v51 + 12) = 2082;
      (v186)(v175, v83, v46);
      v87 = sub_1D5614DB8();
      v89 = v88;
      v90 = OUTLINED_FUNCTION_45_5();
      v172 = v52;
      (v52)(v90);
      v91 = sub_1D4E6835C(v87, v89, &v190);

      *(v51 + 14) = v91;
      *(v51 + 22) = 2082;
      v92 = sub_1D544C748(v191);
      v94 = v93;
      __swift_destroy_boxed_opaque_existential_1(v191);
      v95 = sub_1D4E6835C(v92, v94, &v190);

      *(v51 + 24) = v95;
      v96 = v165;
      _os_log_impl(&dword_1D4E3F000, v165, v166, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v51, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v191);
      v97 = *(v47 + 8);
      (v97)(v69, v46);
      v98 = OUTLINED_FUNCTION_45_5();
      v172 = v97;
      v97(v98);
    }

    v99 = v173;
    v100 = OUTLINED_FUNCTION_14_88();
    sub_1D544AB1C(v100, v101, v102);
    v103 = v190;
    if (v190 == 10)
    {
      v104 = OUTLINED_FUNCTION_43_41();
      (v51)(v104);
      v105 = sub_1D560C738();
      v106 = sub_1D56156E8();
      if (OUTLINED_FUNCTION_68_28(v106))
      {
        v107 = OUTLINED_FUNCTION_142();
        v108 = OUTLINED_FUNCTION_138_0();
        *&v191[0] = v108;
        v109 = OUTLINED_FUNCTION_37_45(4.8751e-34);
        v110(v109);
        sub_1D5614DB8();
        v111 = OUTLINED_FUNCTION_21_75();
        v112(v111);
        v113 = sub_1D4E6835C(v52, v99, v191);

        *(v107 + 4) = v113;
        _os_log_impl(&dword_1D4E3F000, v105, v106, "Initial item state for item, %{public}s, returned playable.", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v108);
LABEL_22:
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();

LABEL_24:
        v127 = v176;
        OUTLINED_FUNCTION_54_0(v4 + qword_1EDD5D730, v191);
        LOBYTE(v190) = v103;
        sub_1D544D094(&v190);
        swift_endAccess();
        v128 = OUTLINED_FUNCTION_14_88();
        sub_1D544D0DC(v128, v129, v130);
        sub_1D544D478(&v190);
        OUTLINED_FUNCTION_36_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
        sub_1D4E62A60(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100, MEMORY[0x1E6975F78]);
        *&v191[0] = sub_1D560C938();
        v131 = OUTLINED_FUNCTION_57_36();
        swift_weakInit();
        v132 = swift_allocObject();
        v132[2] = v46;
        v132[3] = v127;
        v132[4] = v131;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
        sub_1D4E62A60(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0, MEMORY[0x1E695BED8]);
        v133 = sub_1D560C948();

        OUTLINED_FUNCTION_36_57();
        *(v4 + *(v134 + 152)) = v133;

        type metadata accessor for UserStateViewModel(0);
        sub_1D5451664(&qword_1EDD55F50, type metadata accessor for UserStateViewModel, &protocol conformance descriptor for UserStateViewModel);
        *&v191[0] = sub_1D560C838();
        v135 = OUTLINED_FUNCTION_57_36();
        swift_weakInit();
        v136 = swift_allocObject();
        v136[2] = v46;
        v136[3] = v127;
        v136[4] = v135;
        sub_1D560C898();
        v137 = sub_1D560C948();

        OUTLINED_FUNCTION_36_57();
        *(v4 + *(v138 + 144)) = v137;

        v139 = sub_1D5615458();
        v140 = v174;
        __swift_storeEnumTagSinglePayload(v174, 1, 1, v139);
        v141 = OUTLINED_FUNCTION_57_36();
        swift_weakInit();

        v142 = swift_allocObject();
        v142[2] = 0;
        v142[3] = 0;
        v142[4] = v46;
        v142[5] = v127;
        v142[6] = v141;
        sub_1D51ECB60(0, 0, v140, &unk_1D5665DF8, v142);

        sub_1D4E765C8(v185, &qword_1EC7EEC40, &unk_1D561C070);
        (*(v187 + 8))(v189, v46);
        __swift_destroy_boxed_opaque_existential_1(&v193);
        return v4;
      }
    }

    else
    {
      v114 = v168;
      v115 = OUTLINED_FUNCTION_43_41();
      (v51)(v115);
      v105 = sub_1D560C738();
      v116 = sub_1D56156E8();
      if (OUTLINED_FUNCTION_68_28(v116))
      {
        v117 = swift_slowAlloc();
        *&v191[0] = swift_slowAlloc();
        v118 = OUTLINED_FUNCTION_37_45(4.8752e-34);
        v119(v118);
        sub_1D5614DB8();
        v120 = OUTLINED_FUNCTION_21_75();
        v121(v120);
        v122 = sub_1D4E6835C(v52, v114, v191);

        *(v117 + 4) = v122;
        *(v117 + 12) = 2082;
        LOBYTE(v190) = v103;
        v123 = sub_1D5614DB8();
        v125 = sub_1D4E6835C(v123, v124, v191);

        *(v117 + 14) = v125;
        _os_log_impl(&dword_1D4E3F000, v105, v116, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v117, 0x16u);
        swift_arrayDestroy();
        goto LABEL_22;
      }
    }

    v186 = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v126 = OUTLINED_FUNCTION_45_5();
    (v172)(v126);
    goto LABEL_24;
  }

  v192 = 0;
  memset(v191, 0, sizeof(v191));
  sub_1D4E765C8(v191, &qword_1EC7F3B00, &qword_1D5650210);
  v193 = 0;
  v194 = 0xE000000000000000;
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD00000000000006ALL);
  sub_1D5616138();
  result = OUTLINED_FUNCTION_148_6("Fatal error", v160, v161, v193, v194, "MusicKitInternal/MusicPlayerItemState.swift");
  __break(1u);
  return result;
}

unint64_t sub_1D544C748(void *a1)
{
  v2 = sub_1D560D258();
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D560D238();
  v6 = *(v5 - 8);
  v64 = v5;
  v65 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_1D5615B68();

  v71 = 0xD000000000000024;
  v72 = 0x80000001D5686BE0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D5612F98();
  v9 = (v8 & 1) == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v10, v11);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD000000000000024;
  v70 = 0x80000001D5686C10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D5612F88();
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v14, v15);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD00000000000002ALL;
  v70 = 0x80000001D5686C40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D5612FB8();
  v17 = (v16 & 1) == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v18, v19);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD000000000000017;
  v70 = 0x80000001D5686C70;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = MEMORY[0x1DA6E8D10](v20, v21);
  v23 = (v22 & 1) == 0;
  if (v22)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v24, v25);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD00000000000001BLL;
  v70 = 0x80000001D5686C90;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = sub_1D5612F38();
  v27 = (v26 & 1) == 0;
  if (v26)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v28, v29);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD00000000000001ELL;
  v70 = 0x80000001D5686CB0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = sub_1D5612F58();
  v31 = (v30 & 1) == 0;
  if (v30)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v31)
  {
    v33 = 0xE500000000000000;
  }

  else
  {
    v33 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v32, v33);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D5686CD0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = sub_1D5612FC8();
  v35 = (v34 & 1) == 0;
  if (v34)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v36, v37);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD000000000000023;
  v70 = 0x80000001D5686D10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = sub_1D5612F78();
  v39 = (v38 & 1) == 0;
  if (v38)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v39)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v40, v41);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD000000000000021;
  v70 = 0x80000001D5686D40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = sub_1D5612F68();
  v43 = (v42 & 1) == 0;
  if (v42)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v44, v45);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD00000000000001DLL;
  v70 = 0x80000001D5686D70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = sub_1D5612F48();
  v47 = (v46 & 1) == 0;
  if (v46)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v48, v49);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D5686D90);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v50 = v63;
  sub_1D5612F08();
  v51 = v64;
  sub_1D5615D48();
  (*(v65 + 8))(v50, v51);
  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D5686DB0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v66;
  sub_1D5612F18();
  v53 = v67;
  sub_1D5615D48();
  (*(v68 + 8))(v52, v53);
  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD000000000000026;
  v70 = 0x80000001D5686DD0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = sub_1D5612FA8();
  v55 = (v54 & 1) == 0;
  if (v54)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v55)
  {
    v57 = 0xE500000000000000;
  }

  else
  {
    v57 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v56, v57);

  MEMORY[0x1DA6EAC70](v69, v70);

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D5615B68();

  v69 = 0xD000000000000015;
  v70 = 0x80000001D5686E00;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v58 = sub_1D5612EF8();
  v59 = (v58 & 1) == 0;
  if (v58)
  {
    v60 = 1702195828;
  }

  else
  {
    v60 = 0x65736C6166;
  }

  if (v59)
  {
    v61 = 0xE500000000000000;
  }

  else
  {
    v61 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v60, v61);

  MEMORY[0x1DA6EAC70](v69, v70);

  return v71;
}

uint64_t sub_1D544D0DC@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v46 = a3;
  v5 = sub_1D560D238();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = sub_1D560D258();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = *a2;
  v42 = a2[1];
  v43 = v18;
  v19 = a2[2];
  v40 = a2[3];
  v41 = v19;
  v39 = a2[4];
  v38 = *(a2 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F18();
  (*(v12 + 104))(v15, *MEMORY[0x1E6974E38], v11);
  v20 = sub_1D560D248();
  v21 = *(v12 + 8);
  v21(v15, v11);
  result = (v21)(v17, v11);
  if (v20 & 1) != 0 && (__swift_project_boxed_opaque_existential_1(a1, a1[3]), sub_1D5612F08(), v24 = v44, v23 = v45, (*(v44 + 104))(v8, *MEMORY[0x1E6974E18], v45), v25 = sub_1D560D228(), v26 = *(v24 + 8), v26(v8, v23), result = (v26)(v10, v23), (v25))
  {
    v28 = v42;
    v27 = v43;
    v47 = v43;
    v48 = v42;
    v30 = v40;
    v29 = v41;
    v49 = v41;
    v50 = v40;
    v31 = v39;
    v51 = v39;
    v32 = v38;
    v52 = v38;
    result = sub_1D544FE48(a1, &v47);
    if (result)
    {
      v33 = 0;
    }

    else
    {
      v47 = v27;
      v48 = v28;
      v49 = v29;
      v50 = v30;
      v51 = v31;
      v52 = v32;
      result = sub_1D544FE9C(a1, &v47);
      if (result)
      {
        v33 = 1;
      }

      else
      {
        v47 = v27;
        v48 = v28;
        v49 = v29;
        v50 = v30;
        v51 = v31;
        v52 = v32;
        v34 = sub_1D5450344(a1, &v47);
        v35 = (v34 & 1) == 0;
        if (v34)
        {
          v36 = MEMORY[0x1E69ADEF8];
        }

        else
        {
          v36 = MEMORY[0x1E69ADEA8];
        }

        if (v35)
        {
          v37 = 2;
        }

        else
        {
          v37 = 3;
        }

        result = sub_1D51AABEC(v36);
        if (result)
        {
          v33 = v37;
        }

        else
        {
          v33 = 5;
        }
      }
    }
  }

  else
  {
    v33 = 4;
  }

  *v46 = v33;
  return result;
}

uint64_t sub_1D544D48C(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D544D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D560C988();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D560C9B8();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v12 = sub_1D5615738();
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  aBlock[4] = sub_1D5451658;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4E735E0;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);

  sub_1D560C9A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5451664(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D4E62A60(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
  sub_1D56159E8();
  MEMORY[0x1DA6EB530](0, v11, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1D544D888(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D544F970();
  }

  return result;
}

uint64_t sub_1D544D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = v10;
  sub_1D51ECB60(0, 0, v8, &unk_1D5665FD8, v11);
}

uint64_t sub_1D544DA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D544DA40, 0, 0);
}

uint64_t sub_1D544DA40()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_128();
    sub_1D560C8F8();

    OUTLINED_FUNCTION_19_78();
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1D544DB90;

    return sub_1D544F180();
  }

  else
  {
    OUTLINED_FUNCTION_22_70(*(v0 + 72));

    return v4();
  }
}

uint64_t sub_1D544DB90()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_63_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D544DCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D544DCD4, 0, 0);
}

uint64_t sub_1D544DCD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = sub_1D56153B8();
    OUTLINED_FUNCTION_82();
    v3 = sub_1D5615338();

    return MEMORY[0x1EEE6DFA0](sub_1D544DDA8, v3, v2);
  }

  else
  {
    OUTLINED_FUNCTION_22_70(*(v0 + 40));

    return v4();
  }
}

uint64_t sub_1D544DDA8()
{
  OUTLINED_FUNCTION_60();

  sub_1D544F970();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_1D544DE1C()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D544DE80();
  *v0 = v1;
}

void sub_1D544DE94()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v3 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v3);
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D544DF60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A18, &qword_1D5665EB8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A10, &qword_1D5665EB0);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_15_8();
  return v6(v5);
}

void sub_1D544E12C()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D544E190();
  *v0 = v1;
}

void sub_1D544E1A4()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_107_1();
}

void sub_1D544E244()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v3 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v3);
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D544E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = OUTLINED_FUNCTION_61();
  v12(v11);
  return a7(v10);
}

uint64_t sub_1D544E3D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A20, &qword_1D5665EC0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_15_8();
  return v6(v5);
}

void sub_1D544E59C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1D544E664()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D544E6B8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D544E6B8()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_64_29();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D544E75C(char a1)
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

void sub_1D544E808()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v3 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v3);
  OUTLINED_FUNCTION_107_1();
}

void sub_1D544E8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_54_0(v20 + *v27, &a10);
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v24);
  sub_1D560C8C8();
  swift_endAccess();
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D544E93C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE0, &qword_1D5665F20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_15_8();
  return v6(v5);
}

uint64_t sub_1D544EBC8()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = *(v1 + 80);
  v7[5] = *(v1 + 88);
  v7[6] = v6;
  sub_1D51ECB60(0, 0, v4, &unk_1D5665FC8, v7);
}

uint64_t sub_1D544ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D544ED14, 0, 0);
}

uint64_t sub_1D544ED14()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_128();
    sub_1D560C8F8();

    OUTLINED_FUNCTION_19_78();
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1D544EE64;

    return sub_1D544F180();
  }

  else
  {
    OUTLINED_FUNCTION_22_70(*(v0 + 72));

    return v4();
  }
}

uint64_t sub_1D544EE64()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_63_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D544EF94@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_46_3();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0();
  return (*(v5 + 16))(a1, v1 + v4);
}

void sub_1D544F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_54_0(v20 + *(v23 + 120), &a10);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_64_29();
  v24();
  swift_endAccess();
  sub_1D544EBC8();
  v25 = OUTLINED_FUNCTION_15_8();
  v26(v25);
  OUTLINED_FUNCTION_107_1();
}

uint64_t (*sub_1D544F0E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_54_0(v1 + *(v3 + 120), a1);
  return sub_1D544F14C;
}

uint64_t sub_1D544F14C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D544EBC8();
  }

  return result;
}

uint64_t sub_1D544F180()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 136) = v0;
  OUTLINED_FUNCTION_58_0();
  *(v1 + 144) = v4;
  *(v1 + 152) = *(*v0 + 80);
  OUTLINED_FUNCTION_1_0();
  *(v1 + 160) = v5;
  *(v1 + 168) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v1 + 202) = *v3;
  *(v1 + 203) = *(v3 + 1);
  *(v1 + 204) = *(v3 + 2);
  *(v1 + 205) = *(v3 + 3);
  v7 = *(v3 + 8);
  *(v1 + 176) = v6;
  *(v1 + 184) = v7;
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D544F290()
{
  v19 = v0;
  sub_1D544EF94(*(v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  OUTLINED_FUNCTION_64_29();
  if (swift_dynamicCast())
  {
    sub_1D4E48324((v0 + 56), v0 + 16);
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_0_235(&qword_1EDD544A0);
    }

    v1 = sub_1D560C758();
    __swift_project_value_buffer(v1, qword_1EDD76AD8);
    sub_1D4E628D4(v0 + 16, v0 + 96);
    v2 = sub_1D560C738();
    v3 = sub_1D56156E8();
    if (OUTLINED_FUNCTION_68_28(v3))
    {
      v4 = OUTLINED_FUNCTION_142();
      v5 = OUTLINED_FUNCTION_138_0();
      v18 = v5;
      *v4 = 136446210;
      v6 = sub_1D544C748((v0 + 96));
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      v9 = sub_1D4E6835C(v6, v8, &v18);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_1D4E3F000, v2, v3, "Updated playability information: %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    }

    OUTLINED_FUNCTION_42_46();
    sub_1D544AB1C((v0 + 16), &v18, (v0 + 200));
    OUTLINED_FUNCTION_42_46();
    sub_1D544D0DC((v0 + 16), &v18, (v0 + 201));
    sub_1D56153C8();
    *(v0 + 192) = sub_1D56153B8();
    OUTLINED_FUNCTION_82();
    v17 = sub_1D5615338();

    return MEMORY[0x1EEE6DFA0](sub_1D544F5A8, v17, v16);
  }

  else
  {
    v10 = *(v0 + 168);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1D4E765C8(v0 + 56, &qword_1EC7F3B00, &qword_1D5650210);
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000006ALL);
    sub_1D544EF94(v10);
    OUTLINED_FUNCTION_128();
    sub_1D5616138();
    v11 = OUTLINED_FUNCTION_128();
    v12(v11);
    return OUTLINED_FUNCTION_148_6("Fatal error", v13, v14, 0, 0xE000000000000000, "MusicKitInternal/MusicPlayerItemState.swift");
  }
}

uint64_t sub_1D544F5A8()
{
  OUTLINED_FUNCTION_60();

  sub_1D544F684();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D544F614()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D544F684()
{
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_11();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v25[-v2];
  v4 = *v1;
  v6 = *v5;
  if (v4 == 10)
  {
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_0_235(&qword_1EDD544A0);
    }

    v7 = sub_1D560C758();
    __swift_project_value_buffer(v7, qword_1EDD76AD8);
    OUTLINED_FUNCTION_82();

    v8 = sub_1D560C738();
    v9 = sub_1D56156E8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_142();
      v11 = OUTLINED_FUNCTION_138_0();
      v26 = v11;
      *v10 = 136446210;
      sub_1D544EF94(v3);
      OUTLINED_FUNCTION_61();
      v12 = sub_1D5614DB8();
      v14 = sub_1D4E6835C(v12, v13, &v26);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D4E3F000, v8, v9, "Updated item state for item, %{public}s, returned playable.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_122();
LABEL_10:
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_0_235(&qword_1EDD544A0);
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76AD8);
    OUTLINED_FUNCTION_82();

    v8 = sub_1D560C738();
    v16 = sub_1D56156E8();

    if (os_log_type_enabled(v8, v16))
    {
      v17 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v17 = 136446466;
      sub_1D544EF94(v3);
      OUTLINED_FUNCTION_61();
      v18 = sub_1D5614DB8();
      v20 = sub_1D4E6835C(v18, v19, &v26);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v25[7] = v4;
      v21 = sub_1D5614DB8();
      v23 = sub_1D4E6835C(v21, v22, &v26);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_1D4E3F000, v8, v16, "Updated item state for item, %{public}s, returned unplayable with reason %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      goto LABEL_10;
    }
  }

  LOBYTE(v26) = v4;
  sub_1D544D0C8(&v26);
  LOBYTE(v26) = v6;
  return sub_1D544D478(&v26);
}

uint64_t sub_1D544F970()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_59_0();
  v3 = v1 - v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1D544EF94(v12 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v12, &v14);
    v6 = sub_1D544FBC8(&v14) & 1;
    if (v6 != (sub_1D544E6B8() & 1))
    {
      sub_1D544E75C(v6);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D4E765C8(v12, &qword_1EC7F3B00, &qword_1D5650210);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000006ALL);
    sub_1D544EF94(v3);
    OUTLINED_FUNCTION_61();
    sub_1D5616138();
    v8 = OUTLINED_FUNCTION_61();
    v9(v8);
    result = OUTLINED_FUNCTION_148_6("Fatal error", v10, v11, v14, v15, "MusicKitInternal/MusicPlayerItemState.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_1D544FBC8(uint64_t a1)
{
  sub_1D4E628D4(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v4, v7);
    sub_1D5267BA4();
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_1D4E765C8(v4, &qword_1EC7EEC40, &unk_1D561C070);
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_1D544FCA0()
{
  v0 = [objc_opt_self() sharedMonitor];
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0x726F7774656E200ALL, 0xEF203A657079546BLL);
  [v0 networkType];
  type metadata accessor for ICEnvironmentNetworkType();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  sub_1D5615B68();

  v1 = [v0 isNetworkConstrained];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v3, v4);

  MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D5686EC0);

  return 0xD000000000000020;
}

uint64_t sub_1D544FE48(void *a1, uint64_t a2)
{
  v2 = *(a2 + 3);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return MEMORY[0x1DA6E8D10](v3, v4) & (v2 == 2);
}

uint64_t sub_1D544FE9C(void *a1, char *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if (MEMORY[0x1DA6E8D10](v4, v5) & 1) == 0 || (v3)
  {
    return 0;
  }

  sub_1D5612AE8();
  sub_1D5612AD8();
  v6 = sub_1D5612AB8();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v6)
  {
    v7 = sub_1D5612F38();
  }

  else
  {
    v7 = sub_1D5612FA8();
  }

  return v7 & 1;
}

uint64_t sub_1D544FF50(void *a1, uint64_t a2)
{
  v4 = sub_1D560D258();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 2);
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = ([v9 capabilities] & 1) == 0;
  }

  else
  {
    v10 = 1;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F18();
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E6974E38])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1D5612FC8())
    {
      if ((v8 & 1) == 0)
      {
        return v10;
      }

      return 0;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (v8 & 1 | ((sub_1D5612F78() & 1) == 0))
    {
      return 0;
    }
  }

  else
  {
    v10 = v8 ^ 1u;
    (*(v5 + 8))(v7, v4);
  }

  return v10;
}

uint64_t sub_1D5450108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560EEA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  v11 = *(a2 + 1);
  sub_1D4E628D4(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  if (!swift_dynamicCast())
  {
    sub_1D4E628D4(a1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(v14, v17);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      sub_1D560D078();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      if (swift_dynamicCast())
      {
        (*(v5 + 8))(v8, v4);
        v12 = v11 ^ 1u;
        __swift_destroy_boxed_opaque_existential_1(v17);
        return v12;
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      sub_1D4E765C8(v14, &qword_1EC7EC520, &unk_1D5621050);
    }

    return 0;
  }

  (*(v5 + 8))(v10, v4);
  return v11 ^ 1u;
}

uint64_t sub_1D5450344(void *a1, uint64_t a2)
{
  v4 = sub_1D560D258();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = *(a2 + 8);
  if (v11)
  {
    v12 = ([v11 capabilities] & 1) == 0;
  }

  else
  {
    v12 = 1;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F18();
  v13 = (*(v5 + 88))(v10, v4);
  if (v13 == *MEMORY[0x1E6974E38])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if ((sub_1D5612F58() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v12 &= sub_1D5612F98();
      return v12 & 1;
    }

    goto LABEL_9;
  }

  if (v13 == *MEMORY[0x1E6974E48])
  {
    return v12 & 1;
  }

  if (v13 == *MEMORY[0x1E6974E40])
  {
LABEL_9:
    v12 = 0;
    return v12 & 1;
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D5686E50);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F18();
  sub_1D5615D48();
  (*(v5 + 8))(v8, v4);
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5686E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

void sub_1D5450654(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() sharedMonitor];
  v5 = [v4 networkType];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D5612F58())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = sub_1D5612FC8();
    v7 = 10;
    if ((v6 & 1) != 0 && !v5)
    {
      sub_1D4ECC7A8(0, &qword_1EC7F1428, 0x1E69E4498);
      v8 = sub_1D5372774();
      v9 = [v8 hasOfflinePlaybackKeys];

      if (v9)
      {
        v7 = 10;
      }

      else
      {
        v7 = 11;
      }
    }
  }

  else
  {
    v7 = 11;
  }

  *a2 = v7;
}

uint64_t sub_1D5450780@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D5612F78() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_1D5612F68()))
  {
    result = sub_1D5450858(a1, &v6);
    v5 = v6;
    if (v6 == 11)
    {
      v5 = 10;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_1D5612F88();
    if (result)
    {
      v5 = 8;
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D5450858@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() sharedMonitor];
  v5 = [v4 networkType];

  result = ICEnvironmentNetworkTypeIsCellular();
  if (result && (result = sub_1D54508F4(a1), (result & 1) == 0))
  {
    v7 = 4;
  }

  else if (v5)
  {
    v7 = 11;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

BOOL sub_1D54508F4(void *a1)
{
  v2 = sub_1D560D238();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = [v10 preferredMusicLowBandwidthResolution];

  v12 = [v9 standardUserDefaults];
  v13 = [v12 preferredVideoLowBandwidthResolution];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F08();
  (*(v3 + 104))(v6, *MEMORY[0x1E6974E20], v2);
  LOBYTE(a1) = sub_1D560D228();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  if (a1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  return v15 != 0;
}

char *MusicPlayer.ItemState.deinit()
{
  v1 = *v0;
  v2 = qword_1EDD5D730;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A10, &qword_1D5665EB0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(&v0[v2]);
  v4 = qword_1EDD5D728;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  OUTLINED_FUNCTION_4_0();
  (*(v5 + 8))(&v0[v4]);
  v6 = qword_1EDD5D738;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_4_0();
  (*(v7 + 8))(&v0[v6]);
  OUTLINED_FUNCTION_58_0();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v8 + 120)]);
  OUTLINED_FUNCTION_58_0();
  sub_1D4E765C8(&v0[*(v9 + 128)], &qword_1EC7EEC40, &unk_1D561C070);
  OUTLINED_FUNCTION_58_0();

  OUTLINED_FUNCTION_58_0();

  OUTLINED_FUNCTION_58_0();

  return v0;
}

uint64_t MusicPlayer.ItemState.__deallocating_deinit()
{
  MusicPlayer.ItemState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5450CD4@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for MusicPlayer.ItemState(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = sub_1D560C838();
  *a3 = result;
  return result;
}

uint64_t MusicPlayer.state<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_59_31(v7);
  v9(v8);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (qword_1EDD5E6F8 != -1)
  {
    OUTLINED_FUNCTION_27_67(&qword_1EDD5E6F8);
  }

  type metadata accessor for MusicPlayer.ItemState(0, a2, a3, v10);
  v11 = qword_1EDD5E700;

  return MusicPlayer.ItemState.__allocating_init(_:container:player:)(v3, v13, v11);
}

uint64_t MusicPlayer.state<A, B>(for:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_59_31(v12);
  v14(v13);
  v15 = *(a6 + 8);
  v20[3] = a4;
  v20[4] = v15;
  __swift_allocate_boxed_opaque_existential_0(v20);
  OUTLINED_FUNCTION_24_0();
  (*(v16 + 16))();
  if (qword_1EDD5E6F8 != -1)
  {
    OUTLINED_FUNCTION_27_67(&qword_1EDD5E6F8);
  }

  type metadata accessor for MusicPlayer.ItemState(0, a3, a5, v17);
  v18 = qword_1EDD5E700;

  return MusicPlayer.ItemState.__allocating_init(_:container:player:)(v6, v20, v18);
}

uint64_t sub_1D5450F70()
{
  OUTLINED_FUNCTION_23_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_126(v1);

  return sub_1D544DCB4(v3, v4, v5, v6);
}

void sub_1D5451020(uint64_t a1)
{
  sub_1D4F6888C(319, &qword_1EDD5D860, &type metadata for MusicPlayer.PlayabilityStatus);
  if (v1 <= 0x3F)
  {
    sub_1D4F6888C(319, &qword_1EDD5D858, &type metadata for MusicPlayer.PreviewCapabilityStatus);
    if (v2 <= 0x3F)
    {
      sub_1D4F6888C(319, &qword_1EDD5D848, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1D5451528()
{
  OUTLINED_FUNCTION_23_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_126(v1);

  return sub_1D544ECF4(v3, v4, v5, v6);
}

uint64_t sub_1D54515C0()
{
  OUTLINED_FUNCTION_23_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_126(v1);

  return sub_1D544DA20(v3, v4, v5, v6);
}

uint64_t sub_1D5451664(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_57_36()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_68_28(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void MusicLibraryPlaylistViewModel.__allocating_init<A>(_:entries:author:library:onChange:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_38_44();
  OUTLINED_FUNCTION_35_61();
  MusicLibraryPlaylistViewModel.init<A>(_:entries:author:library:onChange:)();
  OUTLINED_FUNCTION_46();
}

void MusicLibraryPlaylistViewModel.init<A>(_:entries:author:library:onChange:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v154 = v3;
  v5 = v4;
  v172 = v6;
  v173 = v7;
  v9 = v8;
  v175 = v11;
  v176 = v10;
  v178 = v12;
  v163 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v155 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v164 = v144 - v18;
  OUTLINED_FUNCTION_70_0();
  v177 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v174 = v19;
  OUTLINED_FUNCTION_11();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v144 - v22;
  v168 = v5;
  v149 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v152 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v153 = v26;
  OUTLINED_FUNCTION_70_0();
  v27 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v169 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v156 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  v166 = v144 - v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  v157 = v34;
  OUTLINED_FUNCTION_70_0();
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v161 = v36;
  v162 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v160 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  v159 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v165 = v42;
  OUTLINED_FUNCTION_23();
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = v144 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = v144 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4();
  v51 = v50;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_115();
  v53 = sub_1D5614828();
  v54 = MEMORY[0x1E69E7CC0];
  v144[1] = v53;
  sub_1D560D9F8();
  v150 = v51;
  v55 = *(v51 + 32);
  v145 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  v148 = v1;
  v151 = v49;
  v147 = v51 + 32;
  v146 = v55;
  v55(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries, v1, v49);
  v56 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist;
  OUTLINED_FUNCTION_33();
  v170 = v27;
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v27);
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__sessionID[0]);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__isUnderlyingEditControllerReady) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory) = v54;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs) = v54;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__lastKnownServerRevisionID);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndo) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedo) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes) = 0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A40, &qword_1D5665FE8);
  OUTLINED_FUNCTION_2_19(v60);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entriesPublisher) = sub_1D560C858();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A50, &qword_1D5665FF0);
  OUTLINED_FUNCTION_2_19(v61);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndoPublisher) = sub_1D560C858();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedoPublisher) = sub_1D560C858();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A58, &qword_1D5665FF8);
  OUTLINED_FUNCTION_2_19(v62);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__namePublisher) = sub_1D560C858();
  sub_1D560C4F8();
  sub_1D4F39AB0(v178, v48, &unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D4E50004(v2 + v56, &unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D4F39A1C(v48, v2 + v56, &unk_1EC7F1990, &unk_1D561CEF0);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_library) = v9;
  v63 = (v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  v65 = v172;
  v64 = v173;
  *v63 = v172;
  v63[1] = v64;

  sub_1D4EA73A4(v65, v64);
  v167 = v9;
  v66 = sub_1D560EFB8();
  if (!v66)
  {
    goto LABEL_29;
  }

  v67 = v66;
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  if (!v68)
  {
    swift_unknownObjectRelease();
LABEL_29:
    OUTLINED_FUNCTION_53_9();
    v144[0] = 43;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_19_79(v139, v140, v141, 74, v142, v143);
    __break(1u);
    return;
  }

  v69 = v68;
  v171 = v67;
  sub_1D4F39AB0(v178, v46, &unk_1EC7F1990, &unk_1D561CEF0);
  v70 = v170;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v170);
  v72 = MEMORY[0x1E6976988];
  v158 = v69;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v46, &unk_1EC7F1990, &unk_1D561CEF0);
    v157 = 0;
  }

  else
  {
    v73 = v161;
    v74 = v162;
    v75 = v23;
    v76 = v159;
    (*(v161 + 104))(v159, *MEMORY[0x1E6976988], v162);
    v77 = v160;
    (*(v73 + 16))(v160, v76, v74);
    v78 = v169;
    v79 = v157;
    (*(v169 + 16))(v157, v46, v70);
    sub_1D4ECAE6C(v79, v77);
    v157 = v80;
    v81 = v76;
    v23 = v75;
    v82 = v74;
    v72 = MEMORY[0x1E6976988];
    (*(v73 + 8))(v81, v82);
    (*(v78 + 8))(v46, v70);
  }

  v83 = v174;
  (*(v174 + 16))(v23, v176, v177);
  OUTLINED_FUNCTION_57(v23, 1, v168);
  if (v84)
  {
    (*(v83 + 8))(v23, v177);
  }

  else
  {
    v85 = v149;
    v86 = v153;
    v87 = v168;
    (*(v149 + 32))(v153, v23, v168);
    (*(v85 + 16))(v152, v86, v87);
    v88 = v148;
    sub_1D560DAD8();
    (*(v85 + 8))(v86, v87);
    v89 = v145;
    v90 = v151;
    (*(v150 + 8))(v2 + v145, v151);
    v146(v2 + v89, v88, v90);
  }

  v91 = v83;
  v92 = v164;
  sub_1D4F39AB0(v175, v164, &unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_57(v92, 1, v163);
  if (v84)
  {
    sub_1D4E50004(v92, &unk_1EC7ED370, &unk_1D5624FE0);
    v98 = 0;
  }

  else
  {
    v93 = v161;
    v94 = v162;
    v95 = v70;
    v96 = v159;
    (*(v161 + 104))(v159, *v72, v162);
    (*(v93 + 16))(v160, v96, v94);
    sub_1D545D45C(v92, v155, type metadata accessor for SocialProfile);
    sub_1D4ECAE94();
    v98 = v97;
    v99 = v96;
    v70 = v95;
    (*(v93 + 8))(v99, v94);
    v100 = OUTLINED_FUNCTION_99();
    v91 = v174;
    sub_1D545D4B8(v100, v101);
  }

  v102 = v158;
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  v103 = v157;
  v104 = v157;
  swift_unknownObjectRetain();
  v105 = sub_1D545D1EC(v103, 0, v98, v102);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) = v105;
  v106 = v105;
  v107 = sub_1D4F636B4();
  v109 = v108;
  v110 = [objc_opt_self() currentDeviceInfo];
  v111 = [v110 isInternalBuild];

  if (v111)
  {
    _s11EventStreamCMa();
    swift_allocObject();
    OUTLINED_FUNCTION_183();

    sub_1D53A4848(v107, v109);
    v112 = sub_1D53A5670(v178);
    sub_1D53A48AC(v112, v113);
    v70 = v170;

    sub_1D5452B18();
  }

  v170 = v107;
  v114 = v165;
  sub_1D4F39AB0(v178, v165, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_57(v114, 1, v70);
  v115 = v169;
  if (v84)
  {
    sub_1D4E50004(v114, &unk_1EC7F1990, &unk_1D561CEF0);
    if (qword_1EC7E8DF0 != -1)
    {
      OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
    }

    v116 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v116, qword_1EC87C140);

    v117 = sub_1D560C738();
    v118 = sub_1D56156E8();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = OUTLINED_FUNCTION_142();
      v120 = v104;
      v121 = swift_slowAlloc();
      v179 = v121;
      v122 = OUTLINED_FUNCTION_112_14(4.8751e-34);

      *(v119 + 4) = v122;
      OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v123, v124, "%{public}s Initialized underlying playlist edit view model to create new playlist.");
      __swift_destroy_boxed_opaque_existential_1(v121);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_114_0();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1D4EA7420(v172, v173);

    sub_1D4E50004(v175, &unk_1EC7ED370, &unk_1D5624FE0);
    (*(v91 + 8))(v176, v177);
    sub_1D4E50004(v178, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    v164 = v106;
    v168 = v104;
    v125 = v166;
    v126 = OUTLINED_FUNCTION_123_2();
    v127(v126);
    if (qword_1EC7E8DF0 != -1)
    {
      OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
    }

    v128 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v128, qword_1EC87C140);
    v129 = v156;
    (*(v115 + 16))(v156, v125, v70);

    v130 = sub_1D560C738();
    v131 = sub_1D56156E8();

    if (os_log_type_enabled(v130, v131))
    {
      OUTLINED_FUNCTION_144();
      v165 = OUTLINED_FUNCTION_34_61();
      v179 = v165;
      OUTLINED_FUNCTION_112_14(4.8752e-34);
      OUTLINED_FUNCTION_183();

      *(v70 + 4) = v114;
      OUTLINED_FUNCTION_60_29();
      sub_1D4E41400(&qword_1EC7EC2B0, MEMORY[0x1E69773E0]);
      v132 = sub_1D56160F8();
      v134 = v133;
      v135 = *(v115 + 8);
      v135(v129, v70);
      sub_1D4E6835C(v132, v134, &v179);
      OUTLINED_FUNCTION_183();

      *(v70 + 14) = v132;
      _os_log_impl(&dword_1D4E3F000, v130, v131, "%{public}s Initialized underlying playlist edit view model with playlist: %{public}s", v70, 0x16u);
      OUTLINED_FUNCTION_87_19(v136, v137, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_37_46();
      OUTLINED_FUNCTION_114_0();
      swift_unknownObjectRelease();

      sub_1D4EA7420(v172, v173);

      sub_1D4E50004(v175, &unk_1EC7ED370, &unk_1D5624FE0);
      (*(v174 + 8))(v176, v177);
      sub_1D4E50004(v178, &unk_1EC7F1990, &unk_1D561CEF0);
      v135(v166, v70);
    }

    else
    {
      swift_unknownObjectRelease();

      sub_1D4EA7420(v172, v173);

      sub_1D4E50004(v175, &unk_1EC7ED370, &unk_1D5624FE0);
      (*(v174 + 8))(v176, v177);
      sub_1D4E50004(v178, &unk_1EC7F1990, &unk_1D561CEF0);
      v138 = *(v115 + 8);
      v138(v129, v70);
      v138(v166, v70);
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5452744(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_59_32(v2, v3, v4, v5, v6, v7, v8, v9, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_14();
  return (*(v10 + 8))(a1);
}

uint64_t sub_1D5452830()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_59_32(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1D5452900(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1D545D148();
}

uint64_t sub_1D5452A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  sub_1D545D148();

  return a4(a1);
}

uint64_t sub_1D5452AA4(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_59_32(v2, v3, v4, v5, v6, v7, v8, v9, v11);

  return sub_1D4E50004(a1, &unk_1EC7F1990, &unk_1D561CEF0);
}

uint64_t sub_1D5452B18()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_59_32(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

void MusicLibraryPlaylistViewModel.__allocating_init<A>(seeds:author:library:onChange:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_38_44();
  OUTLINED_FUNCTION_35_61();
  MusicLibraryPlaylistViewModel.init<A>(seeds:author:library:onChange:)();
  OUTLINED_FUNCTION_46();
}

void MusicLibraryPlaylistViewModel.init<A>(seeds:author:library:onChange:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v101 = v2;
  v102 = v3;
  v103 = v4;
  v104 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v105 = v12;
  v98 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v96 = v15 - v14;
  OUTLINED_FUNCTION_70_0();
  v97 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v95 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v94 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v93 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v92 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v92 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4();
  v31 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_28_3();
  sub_1D5614828();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D560D9F8();
  v92[13] = v31;
  v34 = *(v31 + 32);
  v92[12] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  v106 = v29;
  v34(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries, v0, v29);
  v35 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist;
  v36 = sub_1D5614898();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__sessionID[0]);
  v92[11] = v40;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__isUnderlyingEditControllerReady) = 0;
  v92[9] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory) = v33;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset) = 0;
  v92[7] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs) = v33;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__lastKnownServerRevisionID);
  v92[8] = v41;
  v92[10] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndo) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedo) = 0;
  v92[6] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes) = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A40, &qword_1D5665FE8);
  OUTLINED_FUNCTION_2_19(v42);
  v43 = sub_1D560C858();
  OUTLINED_FUNCTION_107_13(v43, OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entriesPublisher);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A50, &qword_1D5665FF0);
  OUTLINED_FUNCTION_2_19(v44);
  v45 = sub_1D560C858();
  OUTLINED_FUNCTION_107_13(v45, OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndoPublisher);
  swift_allocObject();
  v46 = sub_1D560C858();
  OUTLINED_FUNCTION_107_13(v46, OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedoPublisher);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A58, &qword_1D5665FF8);
  OUTLINED_FUNCTION_2_19(v47);
  v48 = sub_1D560C858();
  OUTLINED_FUNCTION_107_13(v48, OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__namePublisher);
  v92[2] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel___observationRegistrar;
  sub_1D560C4F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v36);
  sub_1D4E50004(v0 + v35, &unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D4F39A1C(v28, v0 + v35, &unk_1EC7F1990, &unk_1D561CEF0);
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_library) = v11;
  v52 = (v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  *v52 = v9;
  v52[1] = v7;
  v107 = v104;
  v108 = v101;
  v109 = v102;

  v99 = v9;
  v100 = v7;
  sub_1D4EA73A4(v9, v7);
  sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  v53 = sub_1D5615028();
  v106 = sub_1D560EFB8();
  if (!v106)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (!v54)
  {
    swift_unknownObjectRelease();
LABEL_15:
    OUTLINED_FUNCTION_53_9();
    v92[0] = 86;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_19_79(v87, v88, v89, 74, v90, v91);
    __break(1u);
    return;
  }

  v55 = v54;
  sub_1D4F39AB0(v103, v24, &unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_57(v24, 1, v98);
  if (v56)
  {
    sub_1D4E50004(v24, &unk_1EC7ED370, &unk_1D5624FE0);
    v63 = 0;
  }

  else
  {
    v57 = *MEMORY[0x1E6976988];
    v98 = v11;
    v58 = v95;
    v59 = v53;
    v60 = v93;
    v61 = v97;
    (*(v95 + 104))(v93, v57, v97);
    (*(v58 + 16))(v94, v60, v61);
    sub_1D545D45C(v24, v96, type metadata accessor for SocialProfile);
    sub_1D4ECAE94();
    v63 = v62;
    v64 = v60;
    v53 = v59;
    (*(v58 + 8))(v64, v61);
    v65 = OUTLINED_FUNCTION_45_3();
    sub_1D545D4B8(v65, v66);
  }

  v67 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  swift_unknownObjectRetain();
  v68 = sub_1D545D25C(v53, v55, v63);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) = v68;
  v69 = v68;
  sub_1D4F636B4();
  v70 = [objc_opt_self() currentDeviceInfo];
  v71 = [v70 isInternalBuild];

  if (v71)
  {
    _s11EventStreamCMa();
    swift_allocObject();
    OUTLINED_FUNCTION_183();

    v72 = OUTLINED_FUNCTION_15_2();
    sub_1D53A4848(v72, v73);
    v74 = sub_1D53A5874(v105, v104, v101);
    sub_1D53A48AC(v74, v75);

    sub_1D5452B18();
  }

  if (qword_1EC7E8DF0 != -1)
  {
    OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
  }

  v76 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v76, qword_1EC87C140);

  v77 = sub_1D560C738();
  v78 = sub_1D56156E8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = OUTLINED_FUNCTION_142();
    v80 = swift_slowAlloc();
    v110 = v80;
    *v79 = 136446210;
    v81 = OUTLINED_FUNCTION_15_2();
    v84 = sub_1D4E6835C(v81, v82, v83);

    *(v79 + 4) = v84;
    OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v85, v86, "%{public}s Initialized underlying playlist edit view model with seeds.");
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_114_0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1D4EA7420(v99, v100);

  sub_1D4E50004(v103, &unk_1EC7ED370, &unk_1D5624FE0);
  (*(*(v104 - 8) + 8))(v105);
  OUTLINED_FUNCTION_46();
}

void sub_1D54535B8(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v40 = a4;
  v5 = sub_1D56131C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v34 = v10;
  v16 = *(v10 + 16);
  v16(&v32 - v17, a1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v35, v37);
    v18 = v38;
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v6 + 104))(v8, *MEMORY[0x1E6976988], v5);
    v20 = sub_1D5159364(v8, v18, v19);
    (*(v6 + 8))(v8, v5);
    *v40 = v20;
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v21 = v40;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1D4E50004(v35, &unk_1EC7ED400, &qword_1D5620CF0);
    if (qword_1EC7E8DF0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D560C758();
    __swift_project_value_buffer(v22, qword_1EC87C140);
    v16(v15, a1, AssociatedTypeWitness);
    v23 = sub_1D560C738();
    v24 = sub_1D56156C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136446210;
      v16(v33, v15, AssociatedTypeWitness);
      v27 = sub_1D5614DB8();
      v29 = v28;
      (*(v34 + 8))(v15, AssociatedTypeWitness);
      v30 = sub_1D4E6835C(v27, v29, v37);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D4E3F000, v23, v24, "%{public}s which is MusicPlaylistAddable does not conform to UnderlyingLegacyModelObjectConvertible.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v31 = v26;
      v21 = v40;
      MEMORY[0x1DA6ED200](v31, -1, -1);
      MEMORY[0x1DA6ED200](v25, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v15, AssociatedTypeWitness);
    }

    *v21 = 0;
  }
}

uint64_t MusicLibraryPlaylistViewModel.deinit()
{
  v1 = v0;
  if (sub_1D54550D4())
  {
    sub_1D53A48AC(3u, &unk_1F50A4E90);
  }

  v2 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v1 + v2);
  sub_1D4E50004(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist, &unk_1EC7F1990, &unk_1D561CEF0);

  sub_1D4EA7420(*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler), *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8));

  v4 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel___observationRegistrar;
  sub_1D560C508();
  OUTLINED_FUNCTION_14();
  (*(v5 + 8))(v1 + v4);
  return v1;
}

uint64_t MusicLibraryPlaylistViewModel.__deallocating_deinit()
{
  MusicLibraryPlaylistViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5453C18(uint64_t (**a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v77 = sub_1D560D838();
  v72 = *(v77 - 8);
  v4 = MEMORY[0x1EEE9AC00](v77);
  v76 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v64 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6AA0, &qword_1D5666370);
  MEMORY[0x1EEE9AC00](v87);
  v8 = (&v64 - v7);
  v86 = sub_1D5614828();
  v68 = *(v86 - 8);
  v9 = MEMORY[0x1EEE9AC00](v86);
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6AA8, &qword_1D5666378);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6AB0, &qword_1D5666380);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v64 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6AB8, &qword_1D5666388);
  MEMORY[0x1EEE9AC00](v73);
  v81 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v64 - v24;
  v26 = sub_1D545EB20(&unk_1EDD53B80);
  sub_1D5615608();
  sub_1D5615648();
  v82 = a1;
  v27 = sub_1D5615638();
  v28 = v2;
  sub_1D54547EC(v25);
  sub_1D5615608();
  sub_1D5615648();
  v84 = v26;
  v29 = sub_1D5615638();
  v30 = v23;
  v31 = v23 + 8;
  v32 = *(v23 + 8);
  v32(v25, v22);
  if (v27 != v29)
  {
    sub_1D54571D0();
    sub_1D54547EC(v25);
    sub_1D560C848();

    return (v32)(v25, v22);
  }

  v78 = v32;
  v79 = v28;
  v80 = v31;
  v33 = v67;
  (*(v30 + 16))(v67, v82, v22);
  (*(v30 + 32))(v25, v33, v22);
  sub_1D545EB20(&qword_1EDD53B90);
  v34 = v81;
  sub_1D5614F98();
  v64 = *(v73 + 36);
  *&v34[v64] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v73 = 0;
  v36 = *(v35 + 36);
  v65 = (v68 + 16);
  v82 = (v68 + 32);
  v67 = (v72 + 1);
  v72 = (v68 + 8);
  v37 = v25;
  v38 = v34;
  v68 = v36;
  v71 = v8;
  v70 = v18;
  v69 = v25;
  while (1)
  {
    sub_1D5615648();
    if (*(v38 + v36) == v88[0])
    {
      v39 = 1;
      goto LABEL_7;
    }

    v40 = sub_1D5615688();
    v41 = v66;
    v42 = v86;
    (*v65)(v66);
    v40(v88, 0);
    sub_1D5615658();
    v43 = *(v87 + 48);
    v44 = v73;
    *v8 = v73;
    result = (*v82)(v8 + v43, v41, v42);
    if (__OFADD__(v44, 1))
    {
      break;
    }

    v73 = v44 + 1;
    *(v38 + v64) = v44 + 1;
    sub_1D4F39A1C(v8, v83, &qword_1EC7F6AA0, &qword_1D5666370);
    v39 = 0;
LABEL_7:
    v46 = v83;
    v47 = v87;
    __swift_storeEnumTagSinglePayload(v83, v39, 1, v87);
    sub_1D4F39A1C(v46, v18, &qword_1EC7F6AA8, &qword_1D5666378);
    if (__swift_getEnumTagSinglePayload(v18, 1, v47) == 1)
    {
      return sub_1D4E50004(v38, &qword_1EC7F6AB8, &qword_1D5666388);
    }

    v48 = *v18;
    (*v82)(v85, &v18[*(v87 + 48)], v86);
    v49 = v78;
    if (v48 < 0 || (sub_1D54547EC(v37), sub_1D5615608(), sub_1D5615648(), v50 = sub_1D5615638(), v49(v37, v22), v48 >= v50))
    {
      (*v72)(v85, v86);
      v38 = v81;
LABEL_14:
      sub_1D4E50004(v38, &qword_1EC7F6AB8, &qword_1D5666388);
      sub_1D54571D0();
      sub_1D54547EC(v37);
      sub_1D560C848();

      return (v78)(v37, v22);
    }

    sub_1D54547EC(v37);
    v51 = v74;
    sub_1D560DAE8();
    v49(v37, v22);
    v52 = v75;
    v53 = v86;
    sub_1D560EC98();
    v54 = v76;
    v55 = v22;
    v56 = v85;
    sub_1D560EC98();
    v57 = sub_1D560D528();
    v58 = *v67;
    v59 = v54;
    v60 = v77;
    (*v67)(v59, v77);
    v58(v52, v60);
    v61 = *v72;
    (*v72)(v51, v53);
    v62 = v56;
    v22 = v55;
    v18 = v70;
    v63 = v53;
    v37 = v69;
    v61(v62, v63);
    v8 = v71;
    v38 = v81;
    v36 = v68;
    if ((v57 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54545A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v3);
  swift_beginAccess();
  (*(v5 + 24))(v1 + v9, a1, v3);
  swift_endAccess();
  sub_1D5453C18(v8);
  v10 = *(v5 + 8);
  v10(a1, v3);
  v11 = OUTLINED_FUNCTION_61();
  return (v10)(v11);
}

uint64_t sub_1D5454718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1D5452744(v4);
}

uint64_t sub_1D54547EC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v11 = v1;
  OUTLINED_FUNCTION_0_236();
  v5 = sub_1D4E41400(v3, v4);
  OUTLINED_FUNCTION_28_64(v5, v6);

  v7 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  OUTLINED_FUNCTION_72_5(v11 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_14();
  return (*(v9 + 16))(a1, v11 + v7);
}

uint64_t sub_1D54548BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a2);
  return sub_1D54545A4(v5);
}

uint64_t sub_1D54549E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v6 = sub_1D4E41400(v4, v5);
  OUTLINED_FUNCTION_16_3(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1D560C4C8();

  v14 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist;
  OUTLINED_FUNCTION_72_5(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist, v15);
  return sub_1D4F39AB0(v2 + v14, a1, &unk_1EC7F1990, &unk_1D561CEF0);
}

uint64_t sub_1D5454A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D4F39AB0(a2, &v9 - v5, &unk_1EC7F1990, &unk_1D561CEF0);
  v7 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist;
  swift_beginAccess();
  sub_1D4FE1E30(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t MusicLibraryPlaylistViewModel.changeHandler.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  sub_1D4EA73A4(v0, v1);
  return OUTLINED_FUNCTION_71();
}

uint64_t sub_1D5454BBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5454C00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1D5454C48()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v3 = sub_1D4E41400(v1, v2);
  OUTLINED_FUNCTION_16_3(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1D560C4C8();

  OUTLINED_FUNCTION_72_5(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory, v11);

  return result;
}

uint64_t sub_1D5454D10(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1D5454D80()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v3 = sub_1D4E41400(v1, v2);
  OUTLINED_FUNCTION_16_3(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1D560C4C8();

  return *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset);
}

double sub_1D5454E10()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v3 = sub_1D4E41400(v1, v2);
  OUTLINED_FUNCTION_16_3(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1D560C4C8();

  return result;
}

uint64_t sub_1D5454ED0(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs) = a2;
}

uint64_t sub_1D5454F28(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v3 = sub_1D4E41400(v1, v2);
  OUTLINED_FUNCTION_28_64(v3, v4);

  return OUTLINED_FUNCTION_71();
}

uint64_t sub_1D5454FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_61();
  return a5(v6);
}

uint64_t sub_1D545501C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1D545D148();
}

uint64_t sub_1D5455090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a1 + *a4);
  *v4 = a2;
  v4[1] = a3;
}

uint64_t sub_1D54550D4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v3 = sub_1D4E41400(v1, v2);
  OUTLINED_FUNCTION_16_3(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1D560C4C8();
}

uint64_t sub_1D5455194(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream) = a2;
}

void sub_1D54551E4()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_1D54551D8();
  if (!v10)
  {
    if (!v2)
    {
LABEL_16:
      OUTLINED_FUNCTION_46();
      return;
    }

LABEL_12:
    v13 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v14 = sub_1D5614D38();

    [v13 setPlaylistName_];

    sub_1D5457398();
    v15 = [v13 name];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D5614D68();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v36 = v17;
    v37 = v19;
    sub_1D560C848();

    v35 = 0x8000000000000028;
    v20 = swift_unknownObjectRetain();
    sub_1D51B12F0(v20, &v35, &v36);
    v22 = v36;
    v21 = v37;
    v24 = v38;
    v23 = v39;
    sub_1D5615458();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_40_13();
    v29 = swift_allocObject();
    swift_weakInit();
    sub_1D56153C8();

    sub_1D4FEEE2C(v23);

    sub_1D4FEEE2C(v23);

    sub_1D4FEEE2C(v23);
    v30 = sub_1D56153B8();
    v31 = swift_allocObject();
    v32 = MEMORY[0x1E69E85E0];
    v31[2] = v30;
    v31[3] = v32;
    v31[4] = v29;
    v31[5] = v22;
    v31[6] = v21;
    v31[7] = v23;
    v31[8] = v22;
    v31[9] = v21;
    v31[10] = v24;
    v31[11] = v23;

    sub_1D51EC8B4(0, 0, v8, &unk_1D5666088, v31);

    swift_unknownObjectRelease();
    sub_1D4FEEE48(v23);

    sub_1D4FEEE48(v23);

    goto LABEL_16;
  }

  if (!v2)
  {

    goto LABEL_12;
  }

  if (v9 != v4 || v10 != v2)
  {
    OUTLINED_FUNCTION_101_14();
    v12 = sub_1D5616168();

    if (v12)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_18:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54554F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  sub_1D56153C8();
  *(v8 + 104) = sub_1D56153B8();
  v10 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54555A8, v10, v9);
}

uint64_t sub_1D5455860(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D54551D8();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D54558D4(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D54558BC();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D5455930(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_61();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_61();
    return a3(v6);
  }
}

uint64_t sub_1D54559A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_131_1();
  sub_1D4F39AB0(v12, v13, v14, a6);
  return a7(v7);
}

void sub_1D5455A40()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9();
  v6 = sub_1D560E728();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D560D9A8();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_59_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  v26 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) parentPlaylist];
  if (v26)
  {
    v57 = v26;
    v55 = [v26 legacyIdentifierSet];
    sub_1D560D968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v27 = sub_1D560DB08();
    v56 = v3;
    v28 = v27;
    OUTLINED_FUNCTION_4();
    v53 = v15;
    v54 = v16;
    v30 = v29;
    v32 = *(v31 + 72);
    v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D5621D90;
    v35 = v34 + v33;
    v36 = *MEMORY[0x1E6975040];
    v52 = v22;
    v37 = *(v30 + 104);
    v37(v35, v36, v28);
    v37(v35 + v32, *MEMORY[0x1E6975030], v28);
    sub_1D560E718();
    sub_1D560D9E8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    sub_1D4F40E88(v55, v53, v10, v1, v25);
    v42 = v54;
    (*(v18 + 16))(v52, v25, v54);
    v43 = v57;
    v44 = [v57 underlyingObject];
    OUTLINED_FUNCTION_104_19();
    v45 = v56;
    sub_1D56144C8();

    (*(v18 + 8))(v25, v42);
    v46 = sub_1D5614898();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D5614898();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }
}

void sub_1D5455DD8()
{
  OUTLINED_FUNCTION_47();
  v31 = v0;
  v2 = v1;
  v3 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v29 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v6 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v30 = *(v31 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v31 = v2;
  sub_1D4F39AB0(v2, &v28 - v18, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_57(v19, 1, v3);
  if (v20)
  {
    sub_1D4E50004(v19, &unk_1EC7F1990, &unk_1D561CEF0);
    v25 = 0;
  }

  else
  {
    (*(v8 + 104))(v15, *MEMORY[0x1E6976988], v6);
    v21 = OUTLINED_FUNCTION_45_3();
    v22(v21);
    v23 = v29;
    (*(v29 + 16))(v0, v19, v3);
    sub_1D4ECAE6C(v0, v12);
    v25 = v24;
    v26 = OUTLINED_FUNCTION_99();
    v27(v26);
    (*(v23 + 8))(v19, v3);
  }

  [v30 setParentPlaylist_];

  sub_1D4E50004(v31, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_46();
}

void (*sub_1D5456070(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_125_3(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = __swift_coroFrameAllocStub(v4);
  sub_1D5455A40();
  return sub_1D5456104;
}

void sub_1D545612C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_115();
  v6 = sub_1D560E728();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v61 = v9 - v8;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v62 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_59_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v26 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) parentPlaylist];
  if (v26)
  {
    v27 = v26;
    v58 = v17;
    v59 = v1;
    v60 = v3;
    v57 = [v26 legacyIdentifierSet];
    if (qword_1EDD53CC0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v10, qword_1EDD53CC8);
    (*(v12 + 16))(v16, v28, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v29 = sub_1D560DB08();
    OUTLINED_FUNCTION_4();
    v31 = v30;
    v33 = *(v32 + 72);
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D5621D90;
    v36 = v35 + v34;
    v37 = *(v31 + 104);
    v37(v36, *MEMORY[0x1E6975040], v29);
    v37(v36 + v33, *MEMORY[0x1E6975030], v29);
    v38 = v61;
    sub_1D560E718();
    sub_1D560D9E8();
    v39 = v59;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    sub_1D4F40E88(v57, v16, v38, v39, v25);
    v44 = v62;
    v45 = OUTLINED_FUNCTION_15_2();
    v46 = v58;
    v47(v45);
    v48 = [v27 underlyingObject];
    OUTLINED_FUNCTION_104_19();
    Playlist.Folder.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v22, v49, &v63, v60);

    (*(v44 + 8))(v25, v46);
    type metadata accessor for Playlist.Folder(0);
    v50 = OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    type metadata accessor for Playlist.Folder(0);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  }
}

void sub_1D545653C()
{
  OUTLINED_FUNCTION_47();
  v22 = v0;
  v2 = v1;
  v3 = type metadata accessor for Playlist.Folder(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v5 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v21 = *(v22 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v22 = v2;
  sub_1D4F39AB0(v2, &v21 - v14, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_57(v15, 1, v3);
  if (v16)
  {
    sub_1D4E50004(v15, &qword_1EC7F1980, &qword_1D5642040);
    v20 = 0;
  }

  else
  {
    (*(v7 + 104))(v11, *MEMORY[0x1E6976988], v5);
    v17 = OUTLINED_FUNCTION_15_2();
    v18(v17);
    sub_1D545D45C(v15, v0, type metadata accessor for Playlist.Folder);
    sub_1D4ECBA10();
    v20 = v19;
    (*(v7 + 8))(v11, v5);
    sub_1D545D4B8(v15, type metadata accessor for Playlist.Folder);
  }

  [v21 setParentPlaylist_];

  sub_1D4E50004(v22, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_46();
}

void (*sub_1D54567A4(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_125_3(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = __swift_coroFrameAllocStub(v4);
  sub_1D545612C();
  return sub_1D5456838;
}

void sub_1D5456860(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2)
  {
    sub_1D4F39AB0(*(a1 + 16), v6, a4, a5);
    a3(v6);
    v9 = OUTLINED_FUNCTION_70();
    sub_1D4E50004(v9, v10, a5);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v7);

  free(v6);
}

id (*sub_1D5456944(void *a1))(void **a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  *a1 = v3;
  OUTLINED_FUNCTION_115_0([v3 addInsertedTracksToLibrary]);
  return sub_1D4FD732C;
}

void sub_1D545699C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D5456A0C(v1);
}

id sub_1D54569CC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) userImage];

  return v1;
}

void sub_1D5456A0C(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) setUserImage_];
}

uint64_t sub_1D5456A5C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  a1[1] = v3;
  *a1 = [v3 userImage];
  return OUTLINED_FUNCTION_88_5();
}

void (*sub_1D5456AD4(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D5456ABC();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D5456B14;
}

void sub_1D5456B54(char a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  if (a1 == 2)
  {
    v5 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v5 = sub_1D5615828();
  }

  v6 = v5;
  [v4 *a2];
}

void (*sub_1D5456BF4(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D5456B3C();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D5456C34;
}

uint64_t sub_1D5456C68(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) *a1];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

void (*sub_1D5456CD8(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D5456C5C();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D5456D18;
}

uint64_t sub_1D5456D40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5456D98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D5456DAC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v6 = sub_1D4E41400(v4, v5);
  OUTLINED_FUNCTION_28_64(v6, v7);

  return *(v2 + *a2);
}

uint64_t sub_1D5456E2C(void (*a1)(void), uint64_t (*a2)(void))
{
  a1();
  a2();
  sub_1D560C848();
}

uint64_t sub_1D5456E8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5456EE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D5456F04(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) *a1];
  if (v2)
  {
    v3 = v2;
    sub_1D5614D68();
  }

  return OUTLINED_FUNCTION_71();
}

void sub_1D5456F7C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  if (a2)
  {
    v6 = sub_1D5614D38();
  }

  else
  {
    v6 = 0;
  }

  [v5 *a3];
}

uint64_t sub_1D5456FFC(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D5456EF8();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

double sub_1D5457084(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_72_5(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes, a2);

  return result;
}

uint64_t sub_1D54570C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1D5457178@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D54571D0();
  *a2 = result;
  return result;
}

uint64_t sub_1D54571E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D545723C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5457250(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v4 = sub_1D4E41400(v2, v3);
  OUTLINED_FUNCTION_28_64(v4, v5);
}

uint64_t sub_1D54572D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D545732C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5457340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5457398();
  *a1 = result;
  return result;
}

uint64_t sub_1D54573AC()
{
  OUTLINED_FUNCTION_60();
  v1[18] = v0;
  v2 = sub_1D560C998();
  v1[19] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[20] = v3;
  v1[21] = OUTLINED_FUNCTION_127();
  v4 = sub_1D56131C8();
  v1[22] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[23] = v5;
  v1[24] = OUTLINED_FUNCTION_167();
  v1[25] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[26] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[27] = v7;
  v1[28] = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v8);
  v1[29] = OUTLINED_FUNCTION_127();
  v9 = sub_1D5614898();
  v1[30] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[31] = v10;
  v1[32] = OUTLINED_FUNCTION_167();
  v1[33] = swift_task_alloc();
  sub_1D56153C8();
  v1[34] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[35] = v11;
  v1[36] = v12;
  v13 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D54575AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_1EC7E8DF0 != -1)
  {
    OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
  }

  v29 = v28[18];
  v30 = sub_1D560C758();
  v28[37] = OUTLINED_FUNCTION_62_4(v30, qword_1EC87C140);

  v31 = sub_1D560C738();
  v32 = sub_1D56156E8();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_142();
    v76 = OUTLINED_FUNCTION_37_0();
    *v29 = 136446210;
    v33 = sub_1D4F636B4();
    v41 = OUTLINED_FUNCTION_88_18(v33, v34, v35, v36, v37, v38, v39, v40, v71, v72);

    *(v29 + 4) = v41;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v42, v43, "%{public}s Begin editing on playlist edit view model.");
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v45 = v28[29];
  v44 = v28[30];
  sub_1D54549E4(v45);
  OUTLINED_FUNCTION_57(v45, 1, v44);
  if (v46)
  {
    sub_1D4E50004(v28[29], &unk_1EC7F1990, &unk_1D561CEF0);
LABEL_10:
    v52 = *(v28[18] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v28[2] = v28;
    OUTLINED_FUNCTION_25_62();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_24_66(v53);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_23_69();
    [v52 beginEditingWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v28 + 2);
  }

  v47 = v28[28];
  v48 = v28[26];
  v49 = v28[27];
  (*(v28[31] + 32))(v28[33], v28[29], v28[30]);
  sub_1D54547EC(v47);
  v50 = sub_1D4F23528();
  v51 = *(v49 + 8);
  v28[38] = v51;
  v28[39] = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51(v47, v48);
  if (v50)
  {
    (*(v28[31] + 8))(v28[33], v28[30]);
    goto LABEL_10;
  }

  v54 = v28[32];
  v56 = v28[24];
  v55 = v28[25];
  v57 = v28[22];
  v58 = v28[23];
  v59 = v28[20];
  v75 = v28[21];
  v73 = v28[28];
  v74 = v28[19];
  (*(v58 + 104))(v55, *MEMORY[0x1E6976988], v57);
  v60 = OUTLINED_FUNCTION_45_3();
  v61(v60);
  v62 = OUTLINED_FUNCTION_71();
  v63(v62);
  sub_1D4ECAE6C(v54, v56);
  v28[40] = v64;
  (*(v58 + 8))(v55, v57);
  sub_1D54547EC(v73);
  (*(v59 + 104))(v75, *MEMORY[0x1E69E7F88], v74);
  v65 = swift_task_alloc();
  v28[41] = v65;
  v66 = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  v28[42] = v66;
  v67 = sub_1D545EB20(&qword_1EDD53B90);
  *v65 = v28;
  v65[1] = sub_1D54579E4;
  v68 = v28[26];
  v69 = v28[21];

  return MEMORY[0x1EEDD2260](100, v69, 4, sub_1D545813C, 0, v68, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D54579E4()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = v1[38];
  v5 = v1[28];
  v6 = v1[26];
  v7 = v1[21];
  v8 = v1[20];
  v9 = v1[19];
  v10 = *v0;
  OUTLINED_FUNCTION_24_1();
  *v11 = v10;
  *(v13 + 344) = v12;

  (*(v8 + 8))(v7, v9);
  v4(v5, v6);
  v14 = v1[36];
  v15 = v1[35];

  return MEMORY[0x1EEE6DFA0](sub_1D5457BCC, v15, v14);
}

uint64_t sub_1D5457BCC()
{
  OUTLINED_FUNCTION_75_0();
  v1 = v0[40];
  v2 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  [v2 appendSection_];
  OUTLINED_FUNCTION_99();
  v3 = sub_1D5615158();

  [v2 appendItems_];

  v4 = sub_1D560C738();
  v5 = sub_1D56156E8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "Setting initial tracklist on underlying playlist edit controller.", v6, 2u);
    OUTLINED_FUNCTION_122();
  }

  v7 = v0[40];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[31];
  v11 = v0[18];

  [*(v11 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) setInitialTrackList_];
  (*(v10 + 8))(v8, v9);
  v12 = *(v0[18] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v0[2] = v0;
  OUTLINED_FUNCTION_25_62();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v0[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_23_69();
  [v12 beginEditingWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D5457DD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 288);
  v7 = *(v6 + 280);
  if (v8)
  {
    v9 = sub_1D5458070;
  }

  else
  {
    v9 = sub_1D5457EF0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D5457EF0()
{
  OUTLINED_FUNCTION_75_0();
  v13 = v0;
  v1 = *(v0 + 144);

  sub_1D54527DC(1);

  v2 = sub_1D560C738();
  v3 = sub_1D56156E8();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_142();
    v4 = OUTLINED_FUNCTION_37_0();
    v12 = v4;
    *v1 = 136446210;
    v5 = sub_1D4F636B4();
    v7 = sub_1D4E6835C(v5, v6, &v12);

    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v8, v9, "%{public}s Completed begin editing on playlist edit view model.");
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  sub_1D545CE40();

  OUTLINED_FUNCTION_22_1();

  return v10();
}

uint64_t sub_1D5458070()
{
  OUTLINED_FUNCTION_75_0();

  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D545813C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D5614828();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v9 + 104))(&v18 - v13, *MEMORY[0x1E6976988], v8);
  (*(v9 + 16))(v12, v14, v8);
  (*(v5 + 16))(v7, a1, v4);
  sub_1D4ECAE44(v7, v12);
  v16 = v15;
  result = (*(v9 + 8))(v14, v8);
  *a2 = v16;
  return result;
}

uint64_t sub_1D5458324()
{
  OUTLINED_FUNCTION_60();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  sub_1D56153C8();
  v1[7] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[8] = v5;
  v1[9] = v6;
  v7 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54583A8()
{
  OUTLINED_FUNCTION_80();
  v2 = v1[4];
  sub_1D504A3C8(v2, v2);
  OUTLINED_FUNCTION_56_36();
  OUTLINED_FUNCTION_83_22(v3);
  v4 = sub_1D5615198();
  v6 = OUTLINED_FUNCTION_70_25(v4, v5);
  v7(v6);
  v8 = sub_1D5047750(v0, v2);
  v1[10] = v8;
  v1[2] = v8;
  v9 = swift_task_alloc();
  v1[11] = v9;
  sub_1D56152D8();
  OUTLINED_FUNCTION_27_68();
  *v9 = v1;
  v9[1] = sub_1D54584DC;

  return sub_1D54586B8();
}

uint64_t sub_1D54584DC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[12] = v0;

  v7 = v3[8];
  v8 = v3[9];
  if (v0)
  {
    v9 = sub_1D545865C;
  }

  else
  {
    v9 = sub_1D5458604;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D5458604()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D545865C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54586B8()
{
  OUTLINED_FUNCTION_60();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  sub_1D56153C8();
  v1[25] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[26] = v7;
  v1[27] = v8;
  v9 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5458A08()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 216);
  v7 = *(v6 + 208);
  if (v8)
  {
    v9 = sub_1D5458E2C;
  }

  else
  {
    v9 = sub_1D5458B24;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D5458B24()
{
  v32 = v0;
  v1 = v0[29];
  v2 = v0[24];

  v27 = 0x8000000000000000;
  v3 = swift_unknownObjectRetain();
  sub_1D51B12F0(v3, &v27, &v28);
  v5 = v28;
  v4 = v29;
  v7 = v30;
  v6 = v31;
  v30 = v31;

  sub_1D4FEEE2C(v6);
  sub_1D545CFA0(&v28);
  v8 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  if (v8)
  {
    v9 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
    v10 = v0[28];
    v11 = v0[24];
    v28 = v5;
    v29 = v4;
    v30 = v7;
    v31 = v6;

    v12 = OUTLINED_FUNCTION_123_2();
    sub_1D4EA73A4(v12, v13);
    v26 = v9;
    v8(&v28, sub_1D545EC18, v11);

    sub_1D4FEEE2C(v6);
    v14 = sub_1D560C738();
    v15 = sub_1D56156E8();

    sub_1D4FEEE48(v6);
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_144();
      v27 = OUTLINED_FUNCTION_34_61();
      *v10 = 136446466;
      v16 = sub_1D4F636B4();
      sub_1D4E6835C(v16, v17, &v27);
      OUTLINED_FUNCTION_115_11();
      *(v10 + 4) = v11;
      OUTLINED_FUNCTION_60_29();
      v28 = v5;
      v29 = v4;
      v30 = v7;
      v31 = v6;
      v18 = sub_1D51B1128(0);
      sub_1D4E6835C(v18, v19, &v27);
      OUTLINED_FUNCTION_115_11();
      *(v10 + 14) = v11;
      _os_log_impl(&dword_1D4E3F000, v14, v15, "%{public}s Invoked delta handler for append with revision: %{public}s", v10, 0x16u);
      OUTLINED_FUNCTION_87_19(v20, v21, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_37_46();
      OUTLINED_FUNCTION_114_0();
    }

    if (sub_1D54550D4())
    {
      v28 = v5;
      v29 = v4;
      v30 = v7;
      v31 = v6;
      v22 = sub_1D53A5948(&v28);
      sub_1D53A48AC(v22, v23);
      swift_unknownObjectRelease();
      sub_1D4EA7420(v8, v26);

      OUTLINED_FUNCTION_57_37();
      sub_1D4FEEE48(v6);

      goto LABEL_9;
    }

    swift_unknownObjectRelease();
    sub_1D4EA7420(v8, v26);
  }

  else
  {
    sub_1D545CE40();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_57_37();
  sub_1D4FEEE48(v6);
LABEL_9:
  OUTLINED_FUNCTION_22_1();

  return v24();
}

uint64_t sub_1D5458E2C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 232);

  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5458E9C()
{
  OUTLINED_FUNCTION_60();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  sub_1D56153C8();
  v1[8] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[9] = v6;
  v1[10] = v7;
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5458F24()
{
  OUTLINED_FUNCTION_80();
  v2 = v1[5];
  sub_1D504A3C8(v2, v2);
  OUTLINED_FUNCTION_56_36();
  OUTLINED_FUNCTION_83_22(v3);
  v4 = sub_1D5615198();
  v6 = OUTLINED_FUNCTION_70_25(v4, v5);
  v7(v6);
  v8 = sub_1D5047750(v0, v2);
  v1[11] = v8;
  v1[2] = v8;
  v9 = swift_task_alloc();
  v1[12] = v9;
  sub_1D56152D8();
  OUTLINED_FUNCTION_27_68();
  *v9 = v1;
  v9[1] = sub_1D545905C;

  return sub_1D5459238();
}

uint64_t sub_1D545905C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[13] = v0;

  v7 = v3[9];
  v8 = v3[10];
  if (v0)
  {
    v9 = sub_1D54591DC;
  }

  else
  {
    v9 = sub_1D5459184;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D5459184()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D54591DC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5459238()
{
  OUTLINED_FUNCTION_60();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[20] = v5;
  v1[21] = v6;
  v1[19] = v7;
  v8 = sub_1D5614828();
  v1[26] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[27] = v9;
  v1[28] = OUTLINED_FUNCTION_127();
  v10 = sub_1D56131C8();
  v1[29] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[30] = v11;
  v1[31] = OUTLINED_FUNCTION_167();
  v1[32] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v12);
  v1[33] = OUTLINED_FUNCTION_127();
  sub_1D56153C8();
  v1[34] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[35] = v13;
  v1[36] = v14;
  v15 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D5459394()
{
  if (sub_1D5454C34())
  {
    v1 = v0 + 144;
    v2 = *(v0 + 264);
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v5 = swift_task_alloc();
    v43 = *(v0 + 184);
    *(v5 + 16) = *(v0 + 168);
    *(v5 + 32) = v43;
    v6 = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_113_4(v6, v7, v8, v9, v10, v11, v12, v13, v41, v42, v43);
    v14 = OUTLINED_FUNCTION_88_5();
    sub_1D4FD9450(v14, v15, v16, v6, v17, v18, v19, v20);

    v21 = *(v4 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v22 = sub_1D5615158();
    *(v0 + 296) = v22;

    v23 = OUTLINED_FUNCTION_45_3();
    sub_1D4F39AB0(v23, v24, v25, v26);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
    v28 = *(v0 + 264);
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(*(v0 + 264), &unk_1EC7F2BE0, &qword_1D56250F0);
      v29 = 0;
    }

    else
    {
      v31 = *(v0 + 248);
      v32 = *(v0 + 256);
      v33 = *(v0 + 232);
      v34 = *(v0 + 240);
      v44 = v21;
      v35 = *(v0 + 216);
      v36 = *(v0 + 224);
      v37 = *(v0 + 208);
      (*(v34 + 104))(v32, *MEMORY[0x1E6976988], v33);
      (*(v34 + 16))(v31, v32, v33);
      (*(v35 + 16))(v36, v28, v37);
      sub_1D4ECAE44(v36, v31);
      v29 = v38;
      (*(v34 + 8))(v32, v33);
      v1 = v0 + 144;
      (*(v35 + 8))(v28, v37);
      v21 = v44;
    }

    *(v0 + 304) = v29;
    *(v0 + 16) = v0;
    *(v0 + 56) = v1;
    *(v0 + 24) = sub_1D54596D8;
    v39 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A78, &unk_1D56661B0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_26_72();
    *(v0 + 104) = v40;
    *(v0 + 112) = v39;
    [v21 insertObjects:v22 afterEntry:v29 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_3_180();
  }
}

uint64_t sub_1D54596D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 288);
  v7 = *(v6 + 280);
  if (v8)
  {
    v9 = sub_1D5459B24;
  }

  else
  {
    v9 = sub_1D54597F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D5459B24()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);

  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D5459BD4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_94_20();
  v11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v16, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v5 + 104))(v9, *MEMORY[0x1E6976988], v3);
    v14 = sub_1D5159364(v9, v12, v13);
    (*(v5 + 8))(v9, v3);
    *a2 = v14;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1D4E50004(v16, &unk_1EC7ED400, &qword_1D5620CF0);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_45_3();
    sub_1D5616138();
    MEMORY[0x1DA6EAC70](0xD00000000000005BLL, 0x80000001D5680D50);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D5459E64()
{
  OUTLINED_FUNCTION_47();
  v62 = v1;
  v63 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v56 - v5);
  OUTLINED_FUNCTION_70_0();
  v6 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  if (sub_1D5454C34())
  {
    v64 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v65 = v0;
    v23 = v15[13];
    v60 = *MEMORY[0x1E6976988];
    v59 = v23;
    v23(v22);
    v58 = v15[2];
    v58(v19, v22, v13);
    v61 = v8;
    v57 = *(v8 + 16);
    v57(v12, v62, v6);
    sub_1D4ECAE44(v12, v19);
    v62 = v24;
    v56 = v15[1];
    (v56)(v22, v13);
    v25 = v6;
    v26 = v66;
    sub_1D4F39AB0(v63, v66, &unk_1EC7F2BE0, &qword_1D56250F0);
    OUTLINED_FUNCTION_57(v26, 1, v25);
    if (v27)
    {
      sub_1D4E50004(v66, &unk_1EC7F2BE0, &qword_1D56250F0);
      v29 = 0;
    }

    else
    {
      v59(v22, v60, v13);
      v58(v19, v22, v13);
      v57(v12, v66, v25);
      sub_1D4ECAE44(v12, v19);
      v29 = v28;
      (v56)(v22, v13);
      v30 = OUTLINED_FUNCTION_71();
      v31(v30);
    }

    v32 = v62;
    v33 = [v64 movePlaylistEntry:v62 afterEntry:v29];

    v67 = 0x8000000000000010;
    v34 = swift_unknownObjectRetain();
    sub_1D51B12F0(v34, &v67, &v68);
    v36 = v68;
    v35 = v69;
    v38 = v70;
    v37 = v71;
    v70 = v71;

    sub_1D4FEEE2C(v37);
    v39 = v65;
    sub_1D545CFA0(&v68);
    if (*(v39 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler))
    {
      v66 = *(v39 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
      v40 = qword_1EC7E8DF0;
      v64 = *(v39 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);

      if (v40 != -1)
      {
        OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
      }

      v41 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v41, qword_1EC87C140);
      v42 = v65;

      sub_1D4FEEE2C(v37);
      v43 = sub_1D560C738();
      v44 = sub_1D56156E8();

      sub_1D4FEEE48(v37);
      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_144();
        v63 = v36;
        v45 = OUTLINED_FUNCTION_34_61();
        v62 = v33;
        v67 = v45;
        *v36 = 136446466;
        v46 = sub_1D4F636B4();
        sub_1D4E6835C(v46, v47, &v67);
        OUTLINED_FUNCTION_124_10();
        *(v36 + 4) = v13;
        OUTLINED_FUNCTION_60_29();
        v68 = v63;
        v69 = v35;
        v70 = v38;
        v71 = v37;
        v48 = sub_1D51B1128(0);
        sub_1D4E6835C(v48, v49, &v67);
        OUTLINED_FUNCTION_124_10();
        *(v36 + 14) = v13;
        OUTLINED_FUNCTION_51_35(&dword_1D4E3F000, v50, v51, "%{public}s Invoked delta handler for move for revision: %{public}s.");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        v36 = v63;
        OUTLINED_FUNCTION_122();
      }

      if (sub_1D54550D4())
      {
        v68 = v36;
        v69 = v35;
        v70 = v38;
        v71 = v37;
        v52 = sub_1D53A5948(&v68);
        sub_1D53A48AC(v52, v53);
      }

      v68 = v36;
      v69 = v35;
      v70 = v38;
      v71 = v37;

      v54 = v64;
      v55 = v66;
      (v66)(&v68, sub_1D545D560, v42);
      swift_unknownObjectRelease();
      sub_1D4EA7420(v55, v54);

      sub_1D4FEEE48(v37);
    }

    else
    {
      sub_1D545CE40();

      swift_unknownObjectRelease();
      sub_1D4FEEE48(v37);
    }

    sub_1D4FEEE48(v37);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v56 = 474;
    OUTLINED_FUNCTION_3_180();
    __break(1u);
  }
}

uint64_t sub_1D545A47C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD88, &qword_1D561DB70);
  v2 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D561C050;
  (*(v4 + 16))(v6 + v5, a1, v2);
  sub_1D545A568();
  swift_setDeallocating();
  return sub_1D4EFF29C();
}

void sub_1D545A568()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v75 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v77 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v74 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v64 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v73 = v10 - v9;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v76 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v80 = v17;
  OUTLINED_FUNCTION_70_0();
  v60 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v22 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v25 = v24;
  if (sub_1D5454C34())
  {
    v26 = *(v4 + 16);
    if (v26)
    {
      v83 = MEMORY[0x1E69E7CC0];
      v79 = v26;
      sub_1D5615CB8();
      v27 = v19 + 16;
      v70 = *(v19 + 16);
      v28 = v4 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v69 = *(v27 + 56);
      v68 = *MEMORY[0x1E6976988];
      v66 = (v13 + 16);
      v67 = (v13 + 104);
      v65 = (v64 + 8);
      v63 = (v27 - 8);
      v62 = (v77 + 8);
      v61 = (v13 + 8);
      v71 = v11;
      v72 = v1;
      do
      {
        v70(v25, v28, v60);
        (*v67)(v80, v68, v11);
        (*v66)(v76, v80, v11);
        v29 = OUTLINED_FUNCTION_258();
        (v70)(v29);
        sub_1D56132E8();
        sub_1D56132C8();
        v30 = sub_1D5159818();
        (*v65)(v73, v74);
        sub_1D560EC98();
        v78 = *v63;
        (*v63)(v22, v60);
        v31 = sub_1D4F42FA4(v30, v76);
        (*v62)(v1, v75);
        v32 = objc_allocWithZone(MEMORY[0x1E6977640]);
        v33 = sub_1D5614BA8();

        v11 = v71;
        [v32 initWithIdentifierSet:v31 modelObjectType:v30 storageDictionary:v33];
        swift_unknownObjectRelease();

        v34 = *v61;
        (*v61)(v76, v71);
        v34(v80, v71);
        v78(v25, v60);
        sub_1D5615C88();
        sub_1D5615CC8();
        OUTLINED_FUNCTION_99();
        v1 = v72;
        sub_1D5615CD8();
        sub_1D5615C98();
        v28 += v69;
        --v79;
      }

      while (v79);
    }

    v35 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_143_5();
    v36 = sub_1D5615158();

    v37 = [v35 removePlaylistEntries_];

    v82 = 0x8000000000000018;
    v38 = swift_unknownObjectRetain();
    sub_1D51B12F0(v38, &v82, &v83);
    v39 = v83;
    v40 = v84;
    v42 = v85;
    v41 = v86;
    v85 = v86;

    sub_1D4FEEE2C(v41);
    sub_1D545CFA0(&v83);
    v43 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
    if (v43)
    {
      v81 = v39;
      v83 = v39;
      v84 = v40;
      v85 = v42;
      v86 = v41;
      v44 = OUTLINED_FUNCTION_258();
      sub_1D4EA73A4(v44, v45);

      v43(&v83, sub_1D545EC18, v2);

      if (qword_1EC7E8DF0 != -1)
      {
        OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
      }

      v46 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v46, qword_1EC87C140);

      sub_1D4FEEE2C(v41);
      v47 = sub_1D560C738();
      v48 = sub_1D56156E8();

      sub_1D4FEEE48(v41);
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_144();
        v82 = swift_slowAlloc();
        *v49 = 136446466;
        v50 = sub_1D4F636B4();
        sub_1D4E6835C(v50, v51, &v82);
        OUTLINED_FUNCTION_124_10();
        *(v49 + 4) = v37;
        *(v49 + 12) = 2082;
        v83 = v81;
        v84 = v40;
        v85 = v42;
        v86 = v41;
        v52 = sub_1D51B1128(0);
        sub_1D4E6835C(v52, v53, &v82);
        OUTLINED_FUNCTION_124_10();
        *(v49 + 14) = v37;
        _os_log_impl(&dword_1D4E3F000, v47, v48, "%{public}s Invoked delta handler for remove with revision: %{public}s", v49, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      if (sub_1D54550D4())
      {
        v83 = v81;
        v84 = v40;
        v85 = v42;
        v86 = v41;
        v54 = sub_1D53A5948(&v83);
        sub_1D53A48AC(v54, v55);
        swift_unknownObjectRelease();
        v56 = OUTLINED_FUNCTION_258();
        sub_1D4EA7420(v56, v57);

        sub_1D4FEEE48(v41);

        sub_1D4FEEE48(v41);

LABEL_15:
        OUTLINED_FUNCTION_46();
        return;
      }

      swift_unknownObjectRelease();
      v58 = OUTLINED_FUNCTION_258();
      sub_1D4EA7420(v58, v59);
    }

    else
    {
      sub_1D545CE40();

      swift_unknownObjectRelease();
    }

    sub_1D4FEEE48(v41);

    sub_1D4FEEE48(v41);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_53_9();
  OUTLINED_FUNCTION_3_180();
  __break(1u);
}

unint64_t sub_1D545AE18()
{
  v1 = v0;
  if ((sub_1D5454C34() & 1) == 0)
  {
    OUTLINED_FUNCTION_95_1();
    result = OUTLINED_FUNCTION_3_180();
    __break(1u);
    return result;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) removeAllPlaylistEntries];
  v53 = 0x8000000000000020;
  v3 = swift_unknownObjectRetain();
  sub_1D51B12F0(v3, &v53, &v54);
  v5 = v54;
  v4 = v55;
  v7 = v56;
  v6 = v57;
  v56 = v57;

  sub_1D4FEEE2C(v6);
  sub_1D545CFA0(&v54);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
    v54 = v5;
    v55 = v4;
    v56 = v7;
    v57 = v6;
    v10 = OUTLINED_FUNCTION_123_2();
    sub_1D4EA73A4(v10, v11);

    v49 = v9;
    v8(&v54, sub_1D545EC18, v1);

    if (qword_1EC7E8DF0 != -1)
    {
      OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
    }

    v51 = v5;
    v12 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v12, qword_1EC87C140);

    sub_1D4FEEE2C(v6);
    v13 = sub_1D560C738();
    v14 = sub_1D56156E8();

    sub_1D4FEEE48(v6);
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_144();
      v46 = OUTLINED_FUNCTION_34_61();
      v53 = v46;
      *v2 = 136446466;
      v15 = sub_1D4F636B4();
      v23 = OUTLINED_FUNCTION_89_20(v15, v16, v17, v18, v19, v20, v21, v22, v40, v42, v44, v46, v2, v9, v5);

      *(v2 + 4) = v23;
      OUTLINED_FUNCTION_60_29();
      v54 = v52;
      v55 = v4;
      v56 = v7;
      v57 = v6;
      v24 = sub_1D51B1128(0);
      v32 = OUTLINED_FUNCTION_89_20(v24, v25, v26, v27, v28, v29, v30, v31, v41, v43, v45, v47, v48, v50, v52);

      *(v2 + 14) = v32;
      OUTLINED_FUNCTION_51_35(&dword_1D4E3F000, v33, v34, "%{public}s Invoked delta handler for remove with revision: %{public}s");
      OUTLINED_FUNCTION_87_19(v35, v36, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_37_46();
      OUTLINED_FUNCTION_122();
    }

    if (sub_1D54550D4())
    {
      v54 = v51;
      v55 = v4;
      v56 = v7;
      v57 = v6;
      v37 = sub_1D53A5948(&v54);
      sub_1D53A48AC(v37, v38);
      swift_unknownObjectRelease();
      sub_1D4EA7420(v8, v49);

      OUTLINED_FUNCTION_57_37();
      sub_1D4FEEE48(v6);
    }

    swift_unknownObjectRelease();
    sub_1D4EA7420(v8, v49);
  }

  else
  {
    sub_1D545CE40();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_57_37();

  return sub_1D4FEEE48(v6);
}

uint64_t sub_1D545B198()
{
  OUTLINED_FUNCTION_60();
  v1[19] = v0;
  sub_1D56153C8();
  v1[20] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[21] = v2;
  v1[22] = v3;
  v4 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D545B218()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[19] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D545B314;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A78, &unk_1D56661B0);
  OUTLINED_FUNCTION_25_6(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_20_88();
  [v1 undoPreviousTransactionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D545B314()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 176);
  v7 = *(v6 + 168);
  if (v8)
  {
    v9 = sub_1D545EC1C;
  }

  else
  {
    v9 = sub_1D545B430;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

void sub_1D545B430()
{
  v75 = v0;
  v5 = v0[18];
  sub_1D5454C48();
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = sub_1D5454D80();
    sub_1D5454C48();
    v10 = *(v9 + 16);

    if (v8 < v10)
    {
      sub_1D5454C48();
      v12 = *(v11 + 16);

      --v12;
      v13 = sub_1D5454D80();
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        sub_1D5454C48();
        if ((v15 & 0x8000000000000000) == 0)
        {
          if (v15 < *(v16 + 16))
          {
            v17 = v0[19];
            v18 = v16 + 24 * v15;
            v4 = *(v18 + 40);
            v3 = *(v18 + 48);

            sub_1D4FEEE2C(v3);

            KeyPath = swift_getKeyPath();
            v2 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel___observationRegistrar;
            v0[10] = v17;
            OUTLINED_FUNCTION_0_236();
            sub_1D4E41400(v19, v20);
            OUTLINED_FUNCTION_131_1();
            sub_1D560C4C8();

            v0[10] = v17;
            swift_getKeyPath();
            OUTLINED_FUNCTION_72_28();
            sub_1D560C4E8();

            v21 = *(v17 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset);
            v14 = __OFADD__(v21, 1);
            v22 = v21 + 1;
            if (!v14)
            {
              v23 = v0[19];
              *(v17 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset) = v22;
              v0[10] = v23;
              swift_getKeyPath();
              OUTLINED_FUNCTION_72_28();
              sub_1D560C4D8();

              v24 = [v5 musicKit_transactionDetails_referenceIdentifier];
              if (!v24)
              {
                OUTLINED_FUNCTION_95_1();
                OUTLINED_FUNCTION_11_28();
                OUTLINED_FUNCTION_19_79(v45, v46, v47, 66, v48, v49);
                return;
              }

              v25 = v24;

              v26 = sub_1D5614D68();
              v28 = v27;

              sub_1D5454E10();
              v30 = v29;
              v31 = *(v29 + 16);
              v32 = 16 * v31;
              do
              {
                if (!v31)
                {

                  goto LABEL_23;
                }

                v33 = v31;
                v34 = v32;
                v35 = v30 + v32;
                if (*(v35 + 16) == v26 && *(v35 + 24) == v28)
                {
                  break;
                }

                v37 = sub_1D5616168();
                v32 = v34 - 16;
                v31 = v33 - 1;
              }

              while ((v37 & 1) == 0);

              if (v33 < 2)
              {
                v41 = 0;
                v42 = 0;
              }

              else
              {
                sub_1D5454E10();
                if ((v33 - 2) >= *(v38 + 16))
                {
                  __break(1u);
                  return;
                }

                v39 = *(v38 + v34);
                v40 = *(v38 + v34 + 8);

                v41 = v39;
                v42 = v40;
              }

              sub_1D5454FFC(v41, v42);
LABEL_23:
              v50 = v0[19];
              KeyPath = *(v50 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
              if (!KeyPath)
              {
                sub_1D545CE40();
                goto LABEL_32;
              }

              v51 = *(v50 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
              OUTLINED_FUNCTION_40_13();
              v52 = swift_allocObject();
              *(v52 + 16) = v3;
              v70 = v52;
              sub_1D4EA73A4(KeyPath, v51);
              swift_unknownObjectRetain();
              v68 = v3;
              sub_1D4FEEE2C(v3);
              sub_1D51B12F0(v5, &v70, &v71);
              v4 = v72;
              v3 = v73;
              v2 = v74;
              v69 = v71;

              v67 = v51;
              KeyPath(&v71, sub_1D545EC18, v50);

              if (qword_1EC7E8DF0 != -1)
              {
                goto LABEL_40;
              }

              goto LABEL_25;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
LABEL_25:
            v53 = sub_1D560C758();
            OUTLINED_FUNCTION_62_4(v53, qword_1EC87C140);

            sub_1D4FEEE2C(v2);
            v54 = sub_1D560C738();
            v55 = sub_1D56156E8();

            sub_1D4FEEE48(v2);
            if (os_log_type_enabled(v54, v55))
            {
              v56 = OUTLINED_FUNCTION_144();
              v70 = swift_slowAlloc();
              *v56 = 136446466;
              v57 = sub_1D4F636B4();
              sub_1D4E6835C(v57, v58, &v70);
              OUTLINED_FUNCTION_86_22();
              *(v56 + 4) = KeyPath;
              *(v56 + 12) = 2082;
              v71 = v69;
              v72 = v4;
              v73 = v3;
              v74 = v2;
              v59 = sub_1D51B1128(0);
              sub_1D4E6835C(v59, v60, &v70);
              OUTLINED_FUNCTION_86_22();
              *(v56 + 14) = KeyPath;
              OUTLINED_FUNCTION_113_13(&dword_1D4E3F000, v61, v62, "%{public}s Invoked delta handler for undo with revision: %{public}s.");
              OUTLINED_FUNCTION_87_19(v63, v64, MEMORY[0x1E69E7CA0] + 8);
              OUTLINED_FUNCTION_37_46();
              OUTLINED_FUNCTION_122();
            }

            if (sub_1D54550D4())
            {
              v71 = v69;
              v72 = v4;
              v73 = v3;
              v74 = v2;
              v65 = sub_1D53A5948(&v71);
              sub_1D53A48AC(v65, v66);
              sub_1D4EA7420(KeyPath, v67);

              sub_1D4FEEE48(v2);
            }

            else
            {
              sub_1D4EA7420(KeyPath, v67);

              sub_1D4FEEE48(v2);
            }

            v3 = v68;
LABEL_32:

            sub_1D4FEEE48(v3);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_22_1();
            goto LABEL_33;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_38;
    }
  }

  sub_1D545D564();
  swift_allocError();
  *v43 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_55();
LABEL_33:

  v44();
}

void *sub_1D545BA58(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    OUTLINED_FUNCTION_143_5();

    return sub_1D4F23514();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1D4F23510();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D545BAE8()
{
  OUTLINED_FUNCTION_60();
  v1[19] = v0;
  sub_1D56153C8();
  v1[20] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[21] = v2;
  v1[22] = v3;
  v4 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D545BB68()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[19] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D545BC64;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A78, &unk_1D56661B0);
  OUTLINED_FUNCTION_25_6(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_20_88();
  [v1 redoNextTransactionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D545BC64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 176);
  v7 = *(v6 + 168);
  if (v8)
  {
    v9 = sub_1D545C388;
  }

  else
  {
    v9 = sub_1D545BD80;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D545BD80()
{
  v87 = v0;

  v80 = v0[18];
  if (sub_1D5454D80() < 1 || (v5 = sub_1D5454D80(), sub_1D5454C48(), v7 = *(v6 + 16), , v7 < v5))
  {
    sub_1D545D564();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_55();
    goto LABEL_30;
  }

  sub_1D5454E10();
  v11 = v10;
  v12 = *(v10 + 16);
  v13 = 16 * v12;
  v14 = &selRef_musicKit_changeDetails_type;
  while (1)
  {
    if (!v12)
    {

      goto LABEL_17;
    }

    v4 = v12;
    v3 = v13;
    if (v12 > *(v11 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = *(v11 + v13 + 16);
    v15 = *(v11 + v13 + 24);

    v2 = [v80 musicKit_transactionDetails_identifier];
    v17 = sub_1D5614D68();
    KeyPath = v18;

    if (v16 == v17 && v15 == KeyPath)
    {
      break;
    }

    v20 = sub_1D5616168();

    v13 = v3 - 16;
    v12 = v4 - 1;
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  sub_1D5454E10();
  if (v4 > *(v21 + 16))
  {
    goto LABEL_38;
  }

  v22 = *(v21 + v3 + 16);
  v23 = *(v21 + v3 + 24);

  sub_1D5454FFC(v22, v23);
LABEL_17:
  v24 = v0[19];
  KeyPath = swift_getKeyPath();
  v14 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel___observationRegistrar;
  v0[10] = v24;
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v25, v26);
  OUTLINED_FUNCTION_131_1();
  sub_1D560C4C8();

  v0[10] = v24;
  swift_getKeyPath();
  sub_1D560C4E8();

  v27 = *(v24 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    goto LABEL_34;
  }

  v30 = v0[19];
  *(v24 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset) = v29;
  v0[10] = v30;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_131_1();
  sub_1D560C4D8();

  sub_1D5454C48();
  v32 = *(v31 + 16);

  v33 = sub_1D5454D80();
  v14 = v32 - 1 - v33;
  if (__OFSUB__(v32 - 1, v33))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1D5454C48();
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v14 >= *(v34 + 16))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    OUTLINED_FUNCTION_1_176(&qword_1EC7E8DF0);
    goto LABEL_23;
  }

  v35 = v0[19];
  v36 = v34 + 24 * v14;
  KeyPath = *(v36 + 40);
  v14 = *(v36 + 48);

  sub_1D4FEEE2C(v14);

  v37 = v35 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler;
  v38 = *(v35 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  v39 = v0[19];
  if (!v38)
  {
    sub_1D545CE40();
    goto LABEL_29;
  }

  v40 = *(v37 + 8);
  OUTLINED_FUNCTION_40_13();
  v41 = swift_allocObject();
  *(v41 + 16) = v14;
  v82 = v41 | 0x4000000000000000;
  sub_1D4EA73A4(v38, v40);
  swift_unknownObjectRetain();
  sub_1D4FEEE2C(v14);
  sub_1D51B12F0(v80, &v82, &v83);
  v4 = v84;
  v3 = v85;
  v2 = v86;
  v78 = v83;

  v74 = v40;
  v76 = v38;
  v38(&v83, sub_1D545EC18, v39);

  if (qword_1EC7E8DF0 != -1)
  {
    goto LABEL_39;
  }

LABEL_23:
  v42 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v42, qword_1EC87C140);

  sub_1D4FEEE2C(v2);
  v43 = sub_1D560C738();
  v44 = sub_1D56156E8();

  sub_1D4FEEE48(v2);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_144();
    v71 = swift_slowAlloc();
    v82 = v71;
    *v45 = 136446466;
    v46 = sub_1D4F636B4();
    OUTLINED_FUNCTION_89_20(v46, v47, v48, v49, v50, v51, v52, v53, v69, v71, v73, v74, v76, v78, v80);
    OUTLINED_FUNCTION_86_22();
    *(v45 + 4) = KeyPath;
    *(v45 + 12) = 2082;
    v83 = v79;
    v84 = v4;
    v85 = v3;
    v86 = v2;
    v54 = sub_1D51B1128(0);
    OUTLINED_FUNCTION_89_20(v54, v55, v56, v57, v58, v59, v60, v61, v70, v72, KeyPath, v75, v77, v79, v81);
    OUTLINED_FUNCTION_86_22();
    *(v45 + 14) = KeyPath;
    OUTLINED_FUNCTION_113_13(&dword_1D4E3F000, v62, v63, "%{public}s Invoked delta handler for redo with revision: %{public}s.");
    OUTLINED_FUNCTION_87_19(v64, v65, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_37_46();
    OUTLINED_FUNCTION_122();
  }

  if (sub_1D54550D4())
  {
    v83 = v78;
    v84 = v4;
    v85 = v3;
    v86 = v2;
    v66 = sub_1D53A5948(&v83);
    sub_1D53A48AC(v66, v67);
    sub_1D4EA7420(v76, v74);

    sub_1D4FEEE48(v2);
  }

  else
  {
    sub_1D4EA7420(v76, v74);

    sub_1D4FEEE48(v2);
  }

LABEL_29:

  sub_1D4FEEE48(v14);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_22_1();
LABEL_30:

  return v9();
}

uint64_t sub_1D545C388()
{
  OUTLINED_FUNCTION_80();

  swift_willThrow();
  swift_willThrow();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D545C400()
{
  OUTLINED_FUNCTION_60();
  v1[24] = v2;
  v1[25] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v3);
  v1[26] = OUTLINED_FUNCTION_127();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v4);
  v1[27] = OUTLINED_FUNCTION_127();
  v5 = sub_1D560E728();
  OUTLINED_FUNCTION_22(v5);
  v1[28] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560D9A8();
  OUTLINED_FUNCTION_22(v6);
  v1[29] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560D838();
  v1[30] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_167();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D545C550, 0, 0);
}

uint64_t sub_1D545C550()
{
  if (sub_1D5454C34())
  {
    if (sub_1D54550D4())
    {
      sub_1D53A48AC(2u, &unk_1F50A4EC0);
    }

    v1 = *(v0[25] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1D545C6D4;
    v2 = swift_continuation_init();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED410, &qword_1D5625108);
    OUTLINED_FUNCTION_24_66(v3);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    v0[12] = sub_1D4F40510;
    v0[13] = &block_descriptor_74;
    v0[14] = v2;
    [v1 commitWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_3_180();
  }
}

uint64_t sub_1D545C6D4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
    v5 = sub_1D545CAF4;
  }

  else
  {
    v5 = sub_1D545C7D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D545C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_342();
  OUTLINED_FUNCTION_335();
  v21 = *(v20 + 248);
  v57 = *(v20 + 264);
  v58 = *(v20 + 240);
  v54 = *(v20 + 232);
  v56 = *(v20 + 224);
  v22 = *(v20 + 216);
  v60 = *(v20 + 208);
  v61 = *(v20 + 200);
  v62 = *(v20 + 256);
  v23 = *(v20 + 184);
  v55 = [v23 legacyIdentifierSet];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v24 = sub_1D560DB08();
  OUTLINED_FUNCTION_4();
  v26 = v25;
  v28 = *(v27 + 72);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D5621D90;
  v31 = v30 + v29;
  v32 = *(v26 + 104);
  v32(v31, *MEMORY[0x1E6975040], v24);
  v32(v31 + v28, *MEMORY[0x1E6975030], v24);
  sub_1D560E718();
  sub_1D560D9E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_1D4F40E88(v55, v54, v56, v22, v57);
  (*(v21 + 16))(v62, v57, v58);
  v59 = [v23 underlyingObject];
  sub_1D54549E4(v60);
  sub_1D5614898();
  v37 = OUTLINED_FUNCTION_82();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v61);
  v39 = *(v20 + 208);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(*(v20 + 208), &unk_1EC7F1990, &unk_1D561CEF0);
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 176) = 0;
  }

  else
  {
    v40 = MEMORY[0x1E69773A0];
    *(v20 + 168) = v61;
    *(v20 + 176) = v40;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 144));
    (*(*(v61 - 8) + 32))(boxed_opaque_existential_0, v39, v61);
  }

  v42 = *(v20 + 264);
  v44 = *(v20 + 240);
  v43 = *(v20 + 248);
  sub_1D56144C8();
  sub_1D5454C14(0, 0);
  sub_1D54527DC(0);

  (*(v43 + 8))(v42, v44);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_341();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, v55, v56, v57, v59, v60, v61, v23, a18, a19, a20);
}

uint64_t sub_1D545CAF4()
{
  OUTLINED_FUNCTION_160();
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v0();
}

void sub_1D545CBA4()
{
  OUTLINED_FUNCTION_47();
  v22 = sub_1D5613558();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1D560E728();
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A90, &qword_1D56662E8);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A98, &qword_1D56662F0);
  *v0 = 0;
  (*(v11 + 104))(v0, *MEMORY[0x1E69769E0], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v13 = sub_1D560DB08();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  v17 = *(v16 + 72);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D5621D90;
  v20 = v19 + v18;
  v21 = *(v15 + 104);
  v21(v20, *MEMORY[0x1E6975040], v13);
  v21(v20 + v17, *MEMORY[0x1E6975030], v13);
  sub_1D560E718();
  (*(v2 + 104))(v6, *MEMORY[0x1E6976A60], v22);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_101_14();
  sub_1D5613208();
  sub_1D560DAC8();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D545CE40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v12 = [v11 currentTrackList];
  sub_1D545CBA4();
  v13 = OUTLINED_FUNCTION_61();
  v14(v13);
  sub_1D5452744(v7);
  sub_1D54528C0([v11 isUndoAvailable]);
  sub_1D54528E0([v11 isRedoAvailable]);

  return (*(v3 + 8))(v10, v1);
}

uint64_t sub_1D545CFA0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (sub_1D5454D80() >= 1)
  {
    sub_1D5454C48();
    v6 = v5;
    v7 = sub_1D5454D80();
    sub_1D516A93C(v7, v6);
    sub_1D54527FC(v8);
  }

  sub_1D5452830();
  swift_getKeyPath();

  sub_1D4FEEE2C(v4);
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v9, v10);
  OUTLINED_FUNCTION_94_20();
  sub_1D560C4C8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_94_20();
  sub_1D560C4E8();

  v11 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory;
  swift_beginAccess();
  sub_1D4EFF64C();
  v12 = *(*(v1 + v11) + 16);
  sub_1D4EFF884(v12);
  v13 = *(v1 + v11);
  *(v13 + 16) = v12 + 1;
  v14 = (v13 + 24 * v12);
  v14[4] = v3;
  v14[5] = v2;
  v14[6] = v4;
  *(v1 + v11) = v13;
  swift_endAccess();
  swift_getKeyPath();
  sub_1D560C4D8();
}

uint64_t sub_1D545D148()
{
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v0, v1);
  OUTLINED_FUNCTION_101_14();
  return sub_1D560C4B8();
}

id sub_1D545D1EC(void *a1, void *a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_101_14();
  v10 = [v8 v9];

  return v10;
}

id sub_1D545D25C(uint64_t a1, void *a2, void *a3)
{
  sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  v6 = sub_1D5615158();

  v7 = [v3 initWithInitialItemList:v6 library:a2 authorProfile:a3];

  return v7;
}

uint64_t type metadata accessor for MusicLibraryPlaylistViewModel(uint64_t a1)
{
  result = qword_1EDD5ABA8;
  if (!qword_1EDD5ABA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D545D360(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_43_1(v10);
  *v11 = v12;
  v11[1] = sub_1D4F69064;

  return sub_1D54554F4(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D545D45C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D545D4B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D545D564()
{
  result = qword_1EC7F6A80;
  if (!qword_1EC7F6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6A80);
  }

  return result;
}

void sub_1D545D5C0(uint64_t a1)
{
  sub_1D545E884(319);
  if (v1 <= 0x3F)
  {
    sub_1D545E8E4(319);
    if (v2 <= 0x3F)
    {
      sub_1D560C508();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.beginEditing()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v5 = (*(v0 + 1248) + **(v0 + 1248));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_12(v2);

  return v5();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58_0();
  v11 = (*(v6 + 1256) + **(v6 + 1256));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_26_12(v8);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.append<A, B>(_:)()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_58_0();
  v6 = (*(v0 + 1264) + **(v0 + 1264));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_12(v2);
  v4 = OUTLINED_FUNCTION_45_3();

  return v6(v4);
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.insert<A>(_:after:)()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_58_0();
  v6 = (*(v0 + 1272) + **(v0 + 1272));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_12(v2);
  v4 = OUTLINED_FUNCTION_15_2();

  return v6(v4);
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.insert<A, B>(_:after:)()
{
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_58_0();
  v5 = (*(v0 + 1280) + **(v0 + 1280));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_12(v2);
  OUTLINED_FUNCTION_94_20();

  return v5();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.remove(_:)()
{
  return (*(*v0 + 1296))();
}

{
  return (*(*v0 + 1304))();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.undo()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v5 = (*(v0 + 1320) + **(v0 + 1320));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_12(v2);

  return v5();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.redo()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v5 = (*(v0 + 1328) + **(v0 + 1328));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_12(v2);

  return v5();
}

uint64_t dispatch thunk of MusicLibraryPlaylistViewModel.save()()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  OUTLINED_FUNCTION_58_0();
  v7 = (*(v2 + 1336) + **(v2 + 1336));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v4[1] = sub_1D4F69338;

  return v7(v1);
}

void sub_1D545E884(uint64_t a1)
{
  if (!qword_1EDD53B78)
  {
    sub_1D5614828();
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53B78);
    }
  }
}

void sub_1D545E8E4(uint64_t a1)
{
  if (!qword_1EDD52A70)
  {
    sub_1D5614898();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD52A70);
    }
  }
}

uint64_t sub_1D545EB20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F6A30, &qword_1D561C4C0);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_20_88()
{
  v1[12] = sub_1D545EC20;
  v1[13] = v0;
  v1[14] = v2;
}

void OUTLINED_FUNCTION_23_69()
{
  v1[12] = sub_1D4FE2404;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_25_62()
{
  *(v0 + 24) = sub_1D5457DD4;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_28_64(uint64_t a1, uint64_t a2, ...)
{

  return sub_1D560C4C8();
}

uint64_t OUTLINED_FUNCTION_34_61()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_37_46()
{

  JUMPOUT(0x1DA6ED200);
}

void OUTLINED_FUNCTION_51_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_57_37()
{
  sub_1D4FEEE48(v0);
}

uint64_t OUTLINED_FUNCTION_87_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_89_20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_1D4E6835C(a1, a2, va);
}

void OUTLINED_FUNCTION_113_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_115_11()
{
}

unint64_t sub_1D545EDFC()
{
  result = qword_1EC7F6AC0;
  if (!qword_1EC7F6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AC0);
  }

  return result;
}

void __swiftcall MigratedArtist.init(id:name:)(MusicKitInternal::MigratedArtist *__return_ptr retstr, Swift::String id, Swift::String name)
{
  retstr->artworkImageFilePath.value._countAndFlagsBits = 0;
  retstr->artworkImageFilePath.value._object = 0;
  retstr->id = id;
  retstr->name = name;
}

uint64_t MigratedArtist.artworkImageFilePath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static MigratedArtist.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (sub_1D5616168() & 1) != 0)
  {
    v11 = v2 == v6 && v4 == v7;
    if (v11 || (sub_1D5616168() & 1) != 0)
    {
      if (v5)
      {
        if (v8)
        {
          if (v3 == v9 && v5 == v8)
          {
            return 1;
          }

          OUTLINED_FUNCTION_71();
          if (sub_1D5616168())
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MigratedArtist.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1D5614E28();
  sub_1D5614E28();
  if (!v2)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t MigratedArtist.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D5614E28();
  }

  return sub_1D5616328();
}

uint64_t sub_1D545F160(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v1[2];
  sub_1D56162D8();
  MigratedArtist.hash(into:)(v5);
  return sub_1D5616328();
}

uint64_t sub_1D545F1B8@<X0>(uint64_t *a1@<X8>)
{
  result = MigratedArtist.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MigratedArtist.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_0_237();
  OUTLINED_FUNCTION_2_177();
  MEMORY[0x1DA6EAC70]();
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70]();

  OUTLINED_FUNCTION_2_177();
  MEMORY[0x1DA6EAC70](v1, v2);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70]();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v4;
}

uint64_t MigratedArtist.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  OUTLINED_FUNCTION_0_237();
  OUTLINED_FUNCTION_2_177();
  MEMORY[0x1DA6EAC70]();
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70]();

  OUTLINED_FUNCTION_2_177();
  MEMORY[0x1DA6EAC70](v1, v2);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70]();

  if (v4)
  {
    sub_1D5615B68();

    MEMORY[0x1DA6EAC70](v3, v4);
    OUTLINED_FUNCTION_1_5();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D568C210);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v6;
}

unint64_t sub_1D545F3E8()
{
  result = qword_1EC7F6AC8;
  if (!qword_1EC7F6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AC8);
  }

  return result;
}

void __swiftcall PlaybackPosition.init(rawStorageDictionary:)(MusicKitInternal::PlaybackPosition_optional *__return_ptr retstr, Swift::OpaquePointer rawStorageDictionary)
{
  sub_1D545F650();
  v3 = sub_1D5614C68();

  v8 = sub_1D4ED0A3C(0, v3);
  if (v45)
  {
    OUTLINED_FUNCTION_0_238(v4, v5, v6, MEMORY[0x1E69E63B0], v7, v8);
    OUTLINED_FUNCTION_2_178();
    if (v10)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    sub_1D50B8C70(v44);
    v11 = 0.0;
  }

  v16 = sub_1D4ED0A3C(1, v3);
  if (v45)
  {
    v17 = OUTLINED_FUNCTION_0_238(v12, v13, v14, MEMORY[0x1E69E6370], v15, v16) & v43;
  }

  else
  {
    sub_1D50B8C70(v44);
    v17 = 0;
  }

  v22 = sub_1D4ED0A3C(2, v3);
  if (v45)
  {
    if ((OUTLINED_FUNCTION_0_238(v18, v19, v20, MEMORY[0x1E69E6370], v21, v22) & v43) != 0)
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_1D50B8C70(v44);
    v23 = 0;
  }

  v28 = sub_1D4ED0A3C(3, v3);
  if (v45)
  {
    OUTLINED_FUNCTION_0_238(v24, v25, v26, MEMORY[0x1E69E6530], v27, v28);
    OUTLINED_FUNCTION_2_178();
    if (v10)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }
  }

  else
  {
    sub_1D50B8C70(v44);
    v30 = 0;
  }

  v35 = sub_1D4ED0A3C(4, v3);
  if (v45)
  {
    OUTLINED_FUNCTION_0_238(v31, v32, v33, MEMORY[0x1E69E63B0], v34, v35);
    OUTLINED_FUNCTION_2_178();
    if (v10)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v36;
    }
  }

  else
  {
    sub_1D50B8C70(v44);
    v37 = 0.0;
  }

  sub_1D4ED0A3C(5, v3);

  if (v45)
  {
    OUTLINED_FUNCTION_0_238(v38, v39, v40, MEMORY[0x1E69E63B0], v41);
    OUTLINED_FUNCTION_2_178();
    if (v10)
    {
      v42 = 0.0;
    }
  }

  else
  {
    sub_1D50B8C70(v44);
    v42 = 0.0;
  }

  retstr->value.bookmarkTime = v11;
  *&retstr->value.hasBeenPlayed = v23 | v17;
  retstr->value.playCount = v30;
  retstr->value.startTime = v37;
  retstr->value.stopTime = v42;
}

unint64_t sub_1D545F650()
{
  result = qword_1EDD56BA8;
  if (!qword_1EDD56BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56BA8);
  }

  return result;
}

uint64_t PlaybackPosition.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  sub_1D4ECC7E8();
  v132 = sub_1D5614BD8();
  v7 = MEMORY[0x1E69E63B0];
  v129 = MEMORY[0x1E69E63B0];
  v15 = OUTLINED_FUNCTION_1_177(v132, v8, v9, v10, v11, v12, v13, v14, v99, v1);
  sub_1D4EC8DB8(v15, 0, v16, v17, v18, v19, v20, v21, v100, v111, v117, v123, v129, v132, v139, v145, v151, v157, v163, v169, v175, v181);
  v22 = MEMORY[0x1E69E6370];
  v130 = MEMORY[0x1E69E6370];
  v31 = OUTLINED_FUNCTION_1_177(v23, v24, v25, v26, v27, v28, v29, v30, v101, v2);
  sub_1D4EC8DB8(v31, 1, v32, v33, v34, v35, v36, v37, v102, v112, v118, v124, v130, v133, v140, v146, v152, v158, v164, v170, v176, v182);
  v46 = OUTLINED_FUNCTION_1_177(v38, v39, v40, v41, v42, v43, v44, v45, v103, v3);
  sub_1D4EC8DB8(v46, 2, v47, v48, v49, v50, v51, v52, v104, v113, v119, v125, v22, v134, v141, v147, v153, v159, v165, v171, v177, v183);
  v131 = MEMORY[0x1E69E6530];
  v61 = OUTLINED_FUNCTION_1_177(v53, v54, v55, v56, v57, v58, v59, v60, v105, v4);
  sub_1D4EC8DB8(v61, 3, v62, v63, v64, v65, v66, v67, v106, v114, v120, v126, v131, v135, v142, v148, v154, v160, v166, v172, v178, v184);
  v76 = OUTLINED_FUNCTION_1_177(v68, v69, v70, v71, v72, v73, v74, v75, v107, v6);
  sub_1D4EC8DB8(v76, 4, v77, v78, v79, v80, v81, v82, v108, v115, v121, v127, v7, v136, v143, v149, v155, v161, v167, v173, v179, v185);
  v91 = OUTLINED_FUNCTION_1_177(v83, v84, v85, v86, v87, v88, v89, v90, v109, v5);
  sub_1D4EC8DB8(v91, 5, v92, v93, v94, v95, v96, v97, v110, v116, v122, v128, v7, v137, v144, v150, v156, v162, v168, v174, v180, v186);
  return v138;
}

uint64_t PlaybackPosition.LegacyModelPlaybackPositionPropertyKey.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_1D5615EF8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

unint64_t PlaybackPosition.LegacyModelPlaybackPositionPropertyKey.rawValue.getter()
{
  result = 0xD00000000000002BLL;
  switch(*v0)
  {
    case 1:
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD000000000000039;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D545F8E8@<X0>(unint64_t *a1@<X8>)
{
  result = PlaybackPosition.LegacyModelPlaybackPositionPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PlaybackPosition.legacyModelAttributeType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976598];
  v3 = sub_1D56126B8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_1D545F988()
{
  result = qword_1EDD56B98;
  if (!qword_1EDD56B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56B98);
  }

  return result;
}

unint64_t sub_1D545F9E4()
{
  result = qword_1EDD56B90;
  if (!qword_1EDD56B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56B90);
  }

  return result;
}

uint64_t sub_1D545FA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D545FB8C();

  return MEMORY[0x1EEDD1388](a1, a2, a3, v6);
}

_BYTE *_s38LegacyModelPlaybackPositionPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}