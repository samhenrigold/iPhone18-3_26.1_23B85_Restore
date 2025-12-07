uint64_t MusicCreditsSectionPropertyProvider.creditArtists.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_15_67() + 24);

  return sub_1D5237C90(v0, v2);
}

uint64_t sub_1D5237C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicCreditsSectionPropertyProvider.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8B0, &qword_1D562CF58);
  OUTLINED_FUNCTION_71();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D5688990);
    v32 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    v29 = *(&v30 + 1);
    v28 = v30;
    goto LABEL_24;
  }

  v11 = v10;
  v12 = qword_1EC7E8C20;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_3_112(&qword_1EC7E8C20);
  }

  *&v30 = qword_1EC87C048;
  v32 = v11;
  sub_1D4EC5794(&qword_1EC7F2460, &qword_1EC7EE8B0, &qword_1D562CF58);
  if (OUTLINED_FUNCTION_6_81())
  {
    v13 = v2[1];
    if (!v13)
    {
      v17 = 0;
      v14 = 0;
      goto LABEL_22;
    }

    v14 = *v3;
LABEL_12:

    v17 = MEMORY[0x1E69E6158];
LABEL_22:

    *a2 = v14;
    a2[1] = v13;
    a2[2] = 0;
    a2[3] = v17;
    return result;
  }

  v15 = qword_1EC7E8C28;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_2_111(&qword_1EC7E8C28);
  }

  *&v30 = qword_1EC87C050;
  v32 = v11;
  v16 = OUTLINED_FUNCTION_6_81();

  if (v16)
  {
    v13 = v2[3];
    if (!v13)
    {
      v14 = 0;
      v17 = 0;
      goto LABEL_22;
    }

    v14 = v3[2];
    goto LABEL_12;
  }

  v18 = qword_1EC7E8C30;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_0_144(&qword_1EC7E8C30);
  }

  *&v30 = qword_1EC7EE800;
  v32 = v11;
  v19 = OUTLINED_FUNCTION_6_81();

  if ((v19 & 1) == 0)
  {
    while (1)
    {
      *&v30 = 0;
      *(&v30 + 1) = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
      v32 = a1;
      sub_1D560CDE8();
      sub_1D5615D48();
      OUTLINED_FUNCTION_33_0();
      v29 = *(&v30 + 1);
      v28 = v30;
LABEL_24:
      OUTLINED_FUNCTION_5_85("Fatal error", v26, v27, v28, v29, "MusicKitInternal/MusicCreditsSectionPropertyProvider.swift");
      __break(1u);
    }
  }

  v20 = type metadata accessor for MusicCreditsSectionPropertyProvider(0);
  sub_1D4E69970(v3 + *(v20 + 24), v9, &qword_1EC7EE880, &qword_1D562CC60);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  OUTLINED_FUNCTION_10(v9);
  if (v22)
  {

    result = sub_1D4E50004(v9, &qword_1EC7EE880, &qword_1D562CC60);
    v30 = 0u;
    v31 = 0u;
  }

  else
  {
    *(&v31 + 1) = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
    (*(*(v21 - 8) + 32))(boxed_opaque_existential_0, v9, v21);
  }

  v25 = v31;
  *a2 = v30;
  *(a2 + 1) = v25;
  return result;
}

uint64_t sub_1D523811C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D4E69970(a1, &v4, &qword_1EC7E9F98, &qword_1D561C420);

  return MusicCreditsSectionPropertyProvider.subscript.setter();
}

uint64_t MusicCreditsSectionPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_206();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8B0, &qword_1D562CF58);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastClass())
  {
    v1 = qword_1EC7E8C30;
    swift_retain_n();
    if (v1 != -1)
    {
      OUTLINED_FUNCTION_0_144(&qword_1EC7E8C30);
    }

    sub_1D4EC5794(&qword_1EC7F2460, &qword_1EC7EE8B0, &qword_1D562CF58);
    v2 = sub_1D5614D18();

    if (v2)
    {
      swift_getKeyPath();
      sub_1D5239CE8(&qword_1EC7F2468, type metadata accessor for MusicCreditsSectionPropertyProvider, &protocol conformance descriptor for MusicCreditsSectionPropertyProvider);
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
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D5688990);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_5_85("Fatal error", v4, v5, 0, 0xE000000000000000, "MusicKitInternal/MusicCreditsSectionPropertyProvider.swift");
  __break(1u);
  return result;
}

void (*MusicCreditsSectionPropertyProvider.subscript.modify())(void **a1, char a2)
{
  OUTLINED_FUNCTION_206();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  MusicCreditsSectionPropertyProvider.subscript.getter(v0, v3);
  return sub_1D5238458;
}

void sub_1D5238458(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_20_57();

    MusicCreditsSectionPropertyProvider.subscript.setter();
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    MusicCreditsSectionPropertyProvider.subscript.setter();
  }

  free(v2);
}

uint64_t MusicCreditsSectionPropertyProvider.merge<A>(_:with:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  v5 = OUTLINED_FUNCTION_22(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2470, &qword_1D5648260);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for MusicCreditsSectionPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2478, &unk_1D5648268);
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D5688990);
    v35 = a1;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v31 = 56;
LABEL_14:
    v32 = v31;
    result = OUTLINED_FUNCTION_5_85("Fatal error", v27, v28, v29, v30, "MusicKitInternal/MusicCreditsSectionPropertyProvider.swift");
    __break(1u);
    return result;
  }

  v20 = v19;
  sub_1D4E628D4(a2, &v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_1D4E50004(v14, &qword_1EC7F2470, &qword_1D5648260);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D56889C0);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v31 = 59;
    goto LABEL_14;
  }

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  sub_1D52389FC(v14, v18);
  v21 = qword_1EC7E8C30;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_0_144(&qword_1EC7E8C30);
  }

  v34 = qword_1EC7EE800;
  v35 = v20;
  sub_1D4EC5794(&qword_1EC7F2480, &qword_1EC7F2478, &unk_1D5648268);
  v22 = sub_1D5614D18();

  if ((v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D5688A00);
    v35 = v20;
    sub_1D5615D48();
    OUTLINED_FUNCTION_28();
    v31 = 66;
    goto LABEL_14;
  }

  sub_1D4E69970(&v18[*(v15 + 24)], v8, &qword_1EC7EE880, &qword_1D562CC60);
  sub_1D5238A60(v18);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v23);
  v25 = v33;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E69970(v33 + *(v15 + 24), v10, &qword_1EC7EE880, &qword_1D562CC60);
    if (__swift_getEnumTagSinglePayload(v8, 1, v23) != 1)
    {
      sub_1D4E50004(v8, &qword_1EC7EE880, &qword_1D562CC60);
    }
  }

  else
  {
    (*(*(v23 - 8) + 32))(v10, v8, v23);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v23);
  }

  return sub_1D5237C90(v10, v25 + *(v15 + 24));
}

uint64_t sub_1D52389FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCreditsSectionPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5238A60(uint64_t a1)
{
  v2 = type metadata accessor for MusicCreditsSectionPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5238ABC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  if (qword_1EC7E8C20 != -1)
  {
    OUTLINED_FUNCTION_3_112(&qword_1EC7E8C20);
  }

  *(v0 + 32) = qword_1EC87C048;
  v1 = qword_1EC7E8C28;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_2_111(&qword_1EC7E8C28);
  }

  *(v0 + 40) = qword_1EC87C050;
  v2 = qword_1EC7E8C30;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_0_144(&qword_1EC7E8C30);
  }

  *(v0 + 48) = qword_1EC7EE800;
  qword_1EC87C4A8 = v0;
}

double MusicCreditsSectionPropertyProvider.knownProperties.getter()
{
  type metadata accessor for MusicCreditsSectionPropertyProvider(0);

  return result;
}

uint64_t MusicCreditsSectionPropertyProvider.identifierSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCreditsSectionPropertyProvider(0) + 32);
  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicCreditsSectionPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_15_67() + 32);
  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t MusicCreditsSectionPropertyProvider.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCreditsSectionPropertyProvider(0) + 36);
  sub_1D5610088();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicCreditsSectionPropertyProvider.type.setter()
{
  v2 = *(OUTLINED_FUNCTION_15_67() + 36);
  sub_1D5610088();
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t MusicCreditsSectionPropertyProvider.href.getter()
{
  type metadata accessor for MusicCreditsSectionPropertyProvider(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicCreditsSectionPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for MusicCreditsSectionPropertyProvider(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

double MusicCreditsSectionPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for MusicCreditsSectionPropertyProvider(0);

  return result;
}

double MusicCreditsSectionPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for MusicCreditsSectionPropertyProvider(0);

  return result;
}

double MusicCreditsSectionPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for MusicCreditsSectionPropertyProvider(0);

  return result;
}

double MusicCreditsSectionPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for MusicCreditsSectionPropertyProvider(0);

  return result;
}

uint64_t static MusicCreditsSectionPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_206();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2488, &qword_1D5648278);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = v1[1];
  v17 = v0[1];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_45;
    }

    v18 = *v1 == *v0 && v16 == v17;
    if (!v18 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v17)
  {
    goto LABEL_45;
  }

  v19 = v1[3];
  v20 = v0[3];
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_45;
    }

    v21 = v1[2] == v0[2] && v19 == v20;
    if (!v21 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v20)
  {
    goto LABEL_45;
  }

  v42 = v4;
  v41 = type metadata accessor for MusicCreditsSectionPropertyProvider(0);
  v22 = *(v41 + 24);
  v23 = *(v12 + 48);
  sub_1D4E69970(v1 + v22, v15, &qword_1EC7EE880, &qword_1D562CC60);
  sub_1D4E69970(v0 + v22, &v15[v23], &qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_10(v15);
  if (v18)
  {
    OUTLINED_FUNCTION_10(&v15[v23]);
    if (v18)
    {
      sub_1D4E50004(v15, &qword_1EC7EE880, &qword_1D562CC60);
      goto LABEL_29;
    }

LABEL_27:
    sub_1D4E50004(v15, &qword_1EC7F2488, &qword_1D5648278);
    goto LABEL_45;
  }

  sub_1D4E69970(v15, v11, &qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_10(&v15[v23]);
  if (v24)
  {
    (*(v42 + 8))(v11, v2);
    goto LABEL_27;
  }

  v25 = v42;
  (*(v42 + 32))(v7, &v15[v23], v2);
  sub_1D52396E4(&qword_1EC7F2490, &qword_1EC7F1B38, &protocol conformance descriptor for CreditArtist, MEMORY[0x1E6975000]);
  v26 = sub_1D5614D18();
  v27 = *(v25 + 8);
  v27(v7, v2);
  v27(v11, v2);
  sub_1D4E50004(v15, &qword_1EC7EE880, &qword_1D562CC60);
  if ((v26 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_29:
  v28 = v41;
  OUTLINED_FUNCTION_14_61(*(v41 + 28));
  sub_1D4EF6F7C();
  if ((v29 & 1) == 0 || (sub_1D560D6E8() & 1) == 0 || (sub_1D4F3B22C() & 1) == 0)
  {
    goto LABEL_45;
  }

  v30 = v28[10];
  v31 = (v1 + v30);
  v32 = *(v1 + v30 + 8);
  v33 = (v0 + v30);
  v34 = v33[1];
  if (!v32)
  {
    if (!v34)
    {
      goto LABEL_41;
    }

LABEL_45:
    v39 = 0;
    return v39 & 1;
  }

  if (!v34)
  {
    goto LABEL_45;
  }

  v35 = *v31 == *v33 && v32 == v34;
  if (!v35 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  OUTLINED_FUNCTION_14_61(v28[11]);
  sub_1D4F286E0();
  if ((v36 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_14_61(v28[12]);
  sub_1D4F286E0();
  if ((v37 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_14_61(v28[13]);
  sub_1D4F286E0();
  if ((v38 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_14_61(v28[14]);
  sub_1D4F286E0();
  return v39 & 1;
}

void MusicCreditsSectionPropertyProvider.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v12 = type metadata accessor for MusicCreditsSectionPropertyProvider(0);
  sub_1D4E69970(v1 + *(v12 + 24), v11, &qword_1EC7EE880, &qword_1D562CC60);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v2);
    OUTLINED_FUNCTION_27();
    sub_1D52396E4(&qword_1EC7F2498, &qword_1EC7F24A0, &protocol conformance descriptor for CreditArtist, MEMORY[0x1E6974FF8]);
    sub_1D5614CB8();
    (*(v4 + 8))(v7, v2);
  }

  v13 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v13, v14);
  sub_1D560D838();
  v15 = sub_1D5239CE8(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_22_2(v15);
  sub_1D5610088();
  v16 = sub_1D5239CE8(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_22_2(v16);
  if (*(v1 + *(v12 + 40) + 8))
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

uint64_t sub_1D52396E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE858, &qword_1D562CC50);
    sub_1D5239CE8(a2, type metadata accessor for CreditArtist, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MusicCreditsSectionPropertyProvider.hashValue.getter()
{
  sub_1D56162D8();
  MusicCreditsSectionPropertyProvider.hash(into:)(v1);
  return sub_1D5616328();
}

void (*sub_1D52397C8(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  MusicCreditsSectionPropertyProvider.subscript.getter(a2, v5);
  return sub_1D5238458;
}

uint64_t sub_1D5239844(uint64_t a1)
{
  sub_1D56162D8();
  MusicCreditsSectionPropertyProvider.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D5239880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5239CE8(&qword_1EC7F2468, type metadata accessor for MusicCreditsSectionPropertyProvider, &protocol conformance descriptor for MusicCreditsSectionPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D5239938(uint64_t a1)
{
  v2 = sub_1D5239CE8(&qword_1EC7F2468, type metadata accessor for MusicCreditsSectionPropertyProvider, &protocol conformance descriptor for MusicCreditsSectionPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D52399B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5239CE8(&qword_1EC7F24B0, type metadata accessor for MusicCreditsSectionPropertyProvider, &protocol conformance descriptor for MusicCreditsSectionPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5239A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5239CE8(&qword_1EC7F24D0, type metadata accessor for MusicCreditsSectionPropertyProvider, &protocol conformance descriptor for MusicCreditsSectionPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D5239B84(uint64_t a1)
{
  sub_1D4F18AF4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D5239C84(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4F4E49C(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    v4 = sub_1D560D838();
    if (v7 > 0x3F)
    {
      return v4;
    }

    v4 = sub_1D5610088();
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E5CF94(319);
      v2 = v9;
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1D5239C84(uint64_t a1)
{
  if (!qword_1EC7F24C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE858, &qword_1D562CC50);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F24C8);
    }
  }
}

uint64_t sub_1D5239CE8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_57()
{

  return sub_1D4E69970(v0, v0 + 32, v1, v2);
}

uint64_t SpatialOffset.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA6EC100](*&v3);
}

uint64_t SpatialOffset.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D56162D8();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA6EC100](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6EC100](*&v4);
  return sub_1D5616328();
}

void SpatialOffset.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v4 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v22 = v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v24 = a1;
  sub_1D4E628D4(a1, v23);
  sub_1D56119D8();
  OUTLINED_FUNCTION_2_112(&qword_1EC7F24D8);
  OUTLINED_FUNCTION_0_145(&qword_1EC7F24E0);
  sub_1D5610768();
  if (v2)
  {
    v23[0] = v2;
    v18 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v19 = v22;
      (*(v22 + 32))(v9, v11, v4);
      sub_1D5615C18();
      swift_allocError();
      v20 = v24;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v20);
      (*(v19 + 8))(v9, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {
    sub_1D5415478(v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
    (*(v14 + 8))(v17, v12);
    *v21 = *v23;
  }
}

uint64_t sub_1D523A174(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D56119D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SpatialOffset.encode(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  v9 = *v1;
  SpatialOffset.convertToCloudSpatialOffsetAttribute()();
  OUTLINED_FUNCTION_2_112(&qword_1EC7F24D8);
  OUTLINED_FUNCTION_0_145(&qword_1EC7F24E0);
  sub_1D5610778();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1D523A2D8()
{
  result = qword_1EC7F24E8;
  if (!qword_1EC7F24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F24E8);
  }

  return result;
}

uint64_t MusicSiriRepresentation.init(for:title:authorName:artwork:contentRating:url:isLibraryAdded:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10)
{
  v75 = a8;
  v76 = a7;
  v77 = a6;
  v69 = a2;
  v70 = a4;
  v74 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v23 = OUTLINED_FUNCTION_22(v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v63 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v63 - v31;
  v33 = sub_1D560D838();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v63 - v38;
  sub_1D523AA6C(a1, v32);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {

    sub_1D4E50004(v32, &unk_1EC7EEC20, &unk_1D5623F70);
  }

  else
  {
    v68 = a3;
    (*(v34 + 32))(v39, v32, v33);
    sub_1D523B320(a1, &v79);
    if (v79 != 19)
    {
      v67 = v79;
      LODWORD(v64) = a10;
      (*(v34 + 16))(v37, v39, v33);
      v47 = *(type metadata accessor for MusicItemTypedIdentifier(0) + 28);
      v65 = a1;
      sub_1D4F1C460(&a1[v47], v26, &qword_1EC7EA358, &unk_1D561DF50);
      v48 = sub_1D5610088();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v48);
      v66 = a5;
      if (EnumTagSinglePayload == 1)
      {
        sub_1D4E50004(v26, &qword_1EC7EA358, &unk_1D561DF50);
        v50 = 1;
      }

      else
      {
        sub_1D560FDD8();
        (*(*(v48 - 8) + 8))(v26, v48);
        v50 = 0;
      }

      __swift_storeEnumTagSinglePayload(v28, v50, 1, v48);
      v51 = v77;
      sub_1D4F1C460(v77, v71, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v52 = v76;
      sub_1D4F1C460(v76, v72, &qword_1EC7EC478, &unk_1D56299D0);
      v53 = v75;
      sub_1D4F1C460(v75, v73, &unk_1EC7E9CA8, &unk_1D561D1D0);
      v78 = v67;
      sub_1D50391CC();
      v63 = v55;
      v64 = v54;
      sub_1D4E50004(v53, &unk_1EC7E9CA8, &unk_1D561D1D0);
      sub_1D4E50004(v52, &qword_1EC7EC478, &unk_1D56299D0);
      sub_1D4E50004(v51, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D523B2C4(v65);
      sub_1D4E50004(v28, &qword_1EC7EA358, &unk_1D561DF50);
      v56 = *(v34 + 8);
      v56(v37, v33);
      v56(v39, v33);
      v57 = v74;
      v58 = v63;
      *v74 = v64;
      v57[1] = v58;
      *(v57 + 16) = v67;
      v59 = v68;
      v57[3] = v69;
      v57[4] = v59;
      v60 = v66;
      v57[5] = v70;
      v57[6] = v60;
      v61 = type metadata accessor for MusicSiriRepresentation(0);
      sub_1D4FD23EC(v71, v57 + v61[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4FD23EC(v72, v57 + v61[9], &qword_1EC7EC478, &unk_1D56299D0);
      sub_1D4FD23EC(v73, v57 + v61[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
      v45 = v57;
      v46 = 0;
      v44 = v61;
      return __swift_storeEnumTagSinglePayload(v45, v46, 1, v44);
    }

    (*(v34 + 8))(v39, v33);
  }

  if (qword_1EC7E90D8 != -1)
  {
    swift_once();
  }

  v40 = sub_1D560C758();
  __swift_project_value_buffer(v40, qword_1EC87C330);
  v41 = sub_1D560C738();
  v42 = sub_1D56156E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1D4E3F000, v41, v42, "Returning nil for MusicSiriRepresentation due to failure of extracting identifierSet or kind.", v43, 2u);
    MEMORY[0x1DA6ED200](v43, -1, -1);
  }

  sub_1D4E50004(v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v76, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v77, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D523B2C4(a1);
  v44 = type metadata accessor for MusicSiriRepresentation(0);
  v45 = v74;
  v46 = 1;
  return __swift_storeEnumTagSinglePayload(v45, v46, 1, v44);
}

uint64_t sub_1D523AA6C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for MusicItemTypedIdentifier(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - v6;
  v60 = sub_1D560F148();
  v56 = *(v60 - 8);
  v8 = MEMORY[0x1EEE9AC00](v60);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v52 - v10;
  v11 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D9A8();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D560D838();
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - v20;
  v22 = sub_1D5610088();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v3;
  v26 = *(v3 + 28);
  sub_1D4F1C460(&a1[v26], v21, &qword_1EC7EA358, &unk_1D561DF50);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1D4E50004(v21, &qword_1EC7EA358, &unk_1D561DF50);
    if (qword_1EC7E90D8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D560C758();
    __swift_project_value_buffer(v27, qword_1EC87C330);
    sub_1D523C690(a1, v7);
    v28 = sub_1D560C738();
    v29 = sub_1D56156C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v67 = v31;
      *v30 = 136446210;
      sub_1D523C690(v7, v53);
      v32 = sub_1D5614DB8();
      v34 = v33;
      sub_1D523B2C4(v7);
      v35 = sub_1D4E6835C(v32, v34, &v67);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1D4E3F000, v28, v29, "Unable to find valid resource type from typedIdentifier %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1DA6ED200](v31, -1, -1);
      MEMORY[0x1DA6ED200](v30, -1, -1);
    }

    else
    {

      sub_1D523B2C4(v7);
    }

    v42 = 1;
    v44 = v65;
    v43 = v66;
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    v36 = v23;
    if (sub_1D560FE08())
    {
      (*(v57 + 16))(v59, &a1[*(v64 + 24)], v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v37 = sub_1D560DB08();
      v38 = *(v37 - 8);
      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D561C050;
      (*(v38 + 104))(v40 + v39, *MEMORY[0x1E6975058], v37);

      sub_1D560E718();
      v41 = v61;
      sub_1D560D7F8();
    }

    else
    {
      sub_1D4F1C460(&a1[v26], v19, &qword_1EC7EA358, &unk_1D561DF50);

      v45 = v55;
      sub_1D560F128();
      v53 = v23;
      v46 = v56;
      (*(v56 + 16))(v54, v45, v60);
      (*(v57 + 16))(v59, &a1[*(v64 + 24)], v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v47 = sub_1D560DB08();
      v48 = *(v47 - 8);
      v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1D561C050;
      (*(v48 + 104))(v50 + v49, *MEMORY[0x1E6975058], v47);
      sub_1D560E718();
      v41 = v61;
      sub_1D560D798();
      (*(v46 + 8))(v45, v60);
      v36 = v53;
    }

    (*(v36 + 8))(v25, v22);
    v44 = v65;
    v43 = v66;
    (*(v62 + 32))(v66, v41, v65);
    v42 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v43, v42, 1, v44);
}

uint64_t sub_1D523B2C4(uint64_t a1)
{
  v2 = type metadata accessor for MusicItemTypedIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D523B320(uint64_t a1@<X0>, char *a2@<X8>)
{
  v123 = a2;
  v3 = type metadata accessor for MusicItemTypedIdentifier(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v117 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v117 - v10;
  v12 = sub_1D5610088();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v119 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v118 = &v117 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v121 = &v117 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v122 = &v117 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v117 - v22;
  sub_1D4F1C460(a1 + *(v3 + 28), v11, &qword_1EC7EA358, &unk_1D561DF50);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1D4E50004(v11, &qword_1EC7EA358, &unk_1D561DF50);
    if (qword_1EC7E90D8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D560C758();
    __swift_project_value_buffer(v24, qword_1EC87C330);
    sub_1D523C690(a1, v8);
    v25 = sub_1D560C738();
    v26 = sub_1D56156C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v124 = v28;
      *v27 = 136446210;
      sub_1D523C690(v8, v6);
      v29 = sub_1D5614DB8();
      v31 = v30;
      sub_1D523B2C4(v8);
      v32 = sub_1D4E6835C(v29, v31, &v124);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1D4E3F000, v25, v26, "Unable to find valid resource type from typedIdentifier %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1DA6ED200](v28, -1, -1);
      MEMORY[0x1DA6ED200](v27, -1, -1);
    }

    else
    {

      sub_1D523B2C4(v8);
    }

    goto LABEL_10;
  }

  (*(v13 + 32))(v23, v11, v12);
  v33 = *(v13 + 16);
  v34 = v122;
  v120 = v23;
  v33(v122, v23, v12);
  v35 = v121;
  sub_1D560FFB8();
  sub_1D4E5E518(&qword_1EDD53350, MEMORY[0x1E6975BE0]);
  v36 = sub_1D5614D18();
  v37 = *(v13 + 8);
  v37(v35, v12);
  if ((v36 & 1) == 0)
  {
    sub_1D560FEA8();
    v38 = sub_1D5614D18();
    v37(v35, v12);
    if ((v38 & 1) == 0)
    {
      sub_1D560FE78();
      v40 = sub_1D5614D18();
      v37(v35, v12);
      if (v40)
      {
        v41 = v12;
        v37(v34, v12);
        if (qword_1EC7E90D8 != -1)
        {
          swift_once();
        }

        v42 = sub_1D560C758();
        __swift_project_value_buffer(v42, qword_1EC87C330);
        v43 = sub_1D560C738();
        v44 = sub_1D56156E8();
        v45 = os_log_type_enabled(v43, v44);
        v46 = v120;
        if (v45)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1D4E3F000, v43, v44, "Unable to accurately transform appleCurator resource type. Defaulting to curator kind.", v47, 2u);
          MEMORY[0x1DA6ED200](v47, -1, -1);
        }

        v48 = v46;
        v49 = v41;
        goto LABEL_18;
      }

      sub_1D560FFD8();
      v50 = sub_1D5614D18();
      v37(v35, v12);
      if (v50 & 1) != 0 || (sub_1D560FEE8(), v51 = sub_1D5614D18(), v37(v35, v12), (v51))
      {
        v37(v34, v12);
        v37(v120, v12);
        v39 = 1;
        goto LABEL_11;
      }

      sub_1D5610028();
      v52 = sub_1D5614D18();
      v37(v35, v12);
      if (v52)
      {
        v37(v34, v12);
        v37(v120, v12);
        v39 = 2;
        goto LABEL_11;
      }

      sub_1D560FFF8();
      v53 = sub_1D5614D18();
      v37(v35, v12);
      if (v53)
      {
        v37(v34, v12);
        v48 = v120;
        v49 = v12;
LABEL_18:
        v37(v48, v49);
        v39 = 3;
        goto LABEL_11;
      }

      sub_1D560FED8();
      v54 = sub_1D5614D18();
      v37(v35, v12);
      if (v54)
      {
        v37(v34, v12);
        v37(v120, v12);
        v39 = 4;
        goto LABEL_11;
      }

      sub_1D560FFC8();
      v55 = sub_1D5614D18();
      v37(v35, v12);
      if (v55)
      {
        v37(v34, v12);
        v37(v120, v12);
        v39 = 5;
        goto LABEL_11;
      }

      sub_1D560FE28();
      v56 = sub_1D5614D18();
      v37(v35, v12);
      if (v56)
      {
        v37(v34, v12);
        v37(v120, v12);
        v39 = 6;
        goto LABEL_11;
      }

      sub_1D560FE38();
      v57 = sub_1D5614D18();
      v37(v35, v12);
      if (v57 & 1) != 0 || (sub_1D560FDF8(), v58 = sub_1D5614D18(), v37(v35, v12), (v58))
      {
        v37(v34, v12);
        v37(v120, v12);
        v39 = 7;
        goto LABEL_11;
      }

      sub_1D5610038();
      v59 = sub_1D5614D18();
      v37(v35, v12);
      if (v59 & 1) != 0 || (sub_1D560FF58(), v60 = sub_1D5614D18(), v37(v35, v12), (v60))
      {
        v37(v34, v12);
        v37(v120, v12);
        v39 = 8;
        goto LABEL_11;
      }

      sub_1D560FF08();
      v61 = sub_1D5614D18();
      v62 = v35;
      v63 = v12;
      v37(v62, v12);
      if (v61)
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 9;
        goto LABEL_11;
      }

      v64 = v121;
      sub_1D560FE58();
      v65 = sub_1D5614D18();
      v37(v64, v12);
      if (v65)
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 11;
        goto LABEL_11;
      }

      v66 = v121;
      sub_1D560FFA8();
      v67 = sub_1D5614D18();
      v37(v66, v12);
      if (v67 & 1) != 0 || (v68 = v121, sub_1D560FE48(), v69 = sub_1D5614D18(), v37(v68, v12), (v69))
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 12;
        goto LABEL_11;
      }

      v70 = v121;
      sub_1D5610008();
      v71 = sub_1D5614D18();
      v37(v70, v12);
      if (v71)
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 13;
        goto LABEL_11;
      }

      v72 = v121;
      sub_1D5610078();
      v73 = sub_1D5614D18();
      v37(v72, v12);
      if (v73)
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 14;
        goto LABEL_11;
      }

      v74 = v121;
      sub_1D5610068();
      v75 = sub_1D5614D18();
      v37(v74, v12);
      if (v75)
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 15;
        goto LABEL_11;
      }

      v76 = v121;
      sub_1D560FFE8();
      v77 = sub_1D5614D18();
      v37(v76, v12);
      if (v77)
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 16;
        goto LABEL_11;
      }

      v78 = v121;
      sub_1D560FF28();
      v79 = sub_1D5614D18();
      v37(v78, v12);
      if (v79)
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 17;
        goto LABEL_11;
      }

      v80 = v121;
      sub_1D560FF38();
      v81 = sub_1D5614D18();
      v37(v80, v12);
      if (v81)
      {
        v37(v122, v12);
        v37(v120, v12);
        v39 = 18;
        goto LABEL_11;
      }

      v82 = v121;
      sub_1D560FEC8();
      v83 = sub_1D5614D18();
      v37(v82, v12);
      if (v83 & 1) != 0 || (v84 = v121, sub_1D560FE88(), v85 = sub_1D5614D18(), v37(v84, v12), (v85) || (v86 = v121, sub_1D560FF48(), v87 = sub_1D5614D18(), v37(v86, v12), (v87) || (v88 = v121, sub_1D560FE98(), v89 = sub_1D5614D18(), v37(v88, v12), (v89) || (v90 = v121, sub_1D560FF68(), v91 = sub_1D5614D18(), v37(v90, v12), (v91) || (v92 = v121, sub_1D560FF98(), v93 = sub_1D5614D18(), v37(v92, v12), (v93) || (v94 = v121, sub_1D560FF78(), v95 = sub_1D5614D18(), v37(v94, v12), (v95) || (v96 = v121, sub_1D560FF88(), v97 = sub_1D5614D18(), v37(v96, v12), (v97) || (v98 = v121, sub_1D560FF18(), v99 = sub_1D5614D18(), v37(v98, v12), (v99) || (v100 = v121, sub_1D560FEB8(), v101 = sub_1D5614D18(), v37(v100, v12), (v101))
      {
        v37(v122, v12);
      }

      else
      {
        v113 = v121;
        sub_1D560FE68();
        v114 = v122;
        v115 = sub_1D5614D18();
        v37(v113, v12);
        v37(v114, v12);
        if ((v115 & 1) == 0)
        {
          if (qword_1EC7E90D8 != -1)
          {
            swift_once();
          }

          v116 = sub_1D560C758();
          __swift_project_value_buffer(v116, qword_1EC87C330);
          v33(v119, v120, v12);
          v103 = sub_1D560C738();
          v104 = sub_1D56156C8();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v124 = v106;
            *v105 = 136446210;
            sub_1D4E5E518(&qword_1EDD53338, MEMORY[0x1E6975BF8]);
            v107 = v119;
            goto LABEL_72;
          }

          v112 = v119;
LABEL_74:
          v37(v112, v12);
          goto LABEL_75;
        }
      }

      if (qword_1EC7E90D8 != -1)
      {
        swift_once();
      }

      v102 = sub_1D560C758();
      __swift_project_value_buffer(v102, qword_1EC87C330);
      v33(v118, v120, v12);
      v103 = sub_1D560C738();
      v104 = sub_1D56156C8();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v124 = v106;
        *v105 = 136446210;
        sub_1D4E5E518(&qword_1EDD53338, MEMORY[0x1E6975BF8]);
        v107 = v118;
LABEL_72:
        v108 = sub_1D56160F8();
        v110 = v109;
        v37(v107, v63);
        v111 = sub_1D4E6835C(v108, v110, &v124);

        *(v105 + 4) = v111;
        _os_log_impl(&dword_1D4E3F000, v103, v104, "Resources of type %{public}s cannot be represented using MusicSiriRepresentation. Returning nil.", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v106);
        MEMORY[0x1DA6ED200](v106, -1, -1);
        MEMORY[0x1DA6ED200](v105, -1, -1);

LABEL_75:
        v37(v120, v63);
LABEL_10:
        v39 = 19;
        goto LABEL_11;
      }

      v112 = v118;
      goto LABEL_74;
    }
  }

  v37(v34, v12);
  v37(v120, v12);
  v39 = 0;
LABEL_11:
  *v123 = v39;
}

uint64_t sub_1D523C690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItemTypedIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D523C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = sub_1D560D4C8();
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D560F148();
  v7 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = _s14IdentifierKindOMa(0);
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F8, &qword_1D5648578);
  v12 = MEMORY[0x1EEE9AC00](v72);
  v71 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v52 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2500, &unk_1D5648580);
  v15 = MEMORY[0x1EEE9AC00](v69);
  v76 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v68 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v52 - v19;
  v20 = *(a3 + 16);
  v77 = MEMORY[0x1E69E7CC0];
  sub_1D4F03CA4(0, v20, 0);
  v21 = v77;
  v67 = v20;
  if (v20)
  {
    v63 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
    v23 = v7;
    v24 = 0;
    v25 = *(v22 - 8);
    v61 = a3 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v62 = v25;
    v56 = (v5 + 32);
    v55 = (v5 + 8);
    v66 = *(a2 + 16);
    v54 = (v23 + 32);
    v53 = (v23 + 8);
    v64 = v11;
    v65 = v9;
    while (v66 != v24)
    {
      v74 = v21;
      v26 = v72;
      v27 = *(v72 + 48);
      v28 = v63 + *(v9 + 72) * v24;
      v29 = v70;
      sub_1D5241930(v28, v70);
      sub_1D4F1C460(v61 + *(v62 + 72) * v24, v29 + v27, &unk_1EC7F1970, &qword_1D561F4A0);
      v30 = v71;
      sub_1D4FD23EC(v29, v71, &qword_1EC7F24F8, &qword_1D5648578);
      v31 = *(v26 + 48);
      v32 = v69;
      v33 = *(v69 + 48);
      v34 = v75;
      sub_1D5241994(v30, v75);
      sub_1D4FD23EC(v30 + v31, v34 + v33, &unk_1EC7F1970, &qword_1D561F4A0);
      v35 = v68;
      sub_1D4F1C460(v34, v68, &qword_1EC7F2500, &unk_1D5648580);
      v36 = *(v32 + 48);
      v37 = v76;
      sub_1D5241994(v35, v76);
      sub_1D4FD23EC(v35 + v36, v37 + v36, &unk_1EC7F1970, &qword_1D561F4A0);
      sub_1D5241930(v37, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v21 = v74;
        if (EnumCaseMultiPayload == 1)
        {
          v40 = *v11;
          v39 = v11[1];
        }

        else
        {
          v45 = v59;
          v46 = v11;
          v47 = v60;
          (*v56)(v59, v46, v60);
          v40 = sub_1D560D4B8();
          v39 = v48;
          (*v55)(v45, v47);
        }
      }

      else
      {
        v41 = v57;
        v42 = v11;
        v43 = v58;
        (*v54)(v57, v42, v58);
        v40 = sub_1D560F138();
        v39 = v44;
        (*v53)(v41, v43);
        v21 = v74;
      }

      sub_1D4E50004(v76, &qword_1EC7F2500, &unk_1D5648580);
      sub_1D4E50004(v75, &qword_1EC7F2500, &unk_1D5648580);
      v77 = v21;
      v50 = *(v21 + 16);
      v49 = *(v21 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D4F03CA4(v49 > 1, v50 + 1, 1);
        v21 = v77;
      }

      ++v24;
      *(v21 + 16) = v50 + 1;
      v51 = v21 + 16 * v50;
      *(v51 + 32) = v40;
      *(v51 + 40) = v39;
      v11 = v64;
      v9 = v65;
      if (v67 == v24)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t INPlayMediaIntent.extractCorrespondingSongCatalogIDs()()
{
  v1[10] = v0;
  v2 = sub_1D5613838();
  v1[11] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[12] = v3;
  v1[13] = OUTLINED_FUNCTION_167();
  v1[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v1[15] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F0, &unk_1D5648560);
  v1[18] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[19] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE508, &unk_1D562B330);
  v1[20] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE510, &qword_1D5648570);
  v1[23] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[24] = v10;
  v1[25] = OUTLINED_FUNCTION_127();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F8, &qword_1D5648578);
  v1[26] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[27] = OUTLINED_FUNCTION_167();
  v1[28] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2500, &unk_1D5648580);
  v1[29] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[30] = OUTLINED_FUNCTION_167();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v13);
  v1[37] = OUTLINED_FUNCTION_167();
  v1[38] = swift_task_alloc();
  v14 = sub_1D560D4C8();
  v1[39] = v14;
  OUTLINED_FUNCTION_69(v14);
  v1[40] = v15;
  v1[41] = OUTLINED_FUNCTION_167();
  v1[42] = swift_task_alloc();
  v16 = _s14IdentifierKindOMa(0);
  v1[43] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[44] = v17;
  v1[45] = OUTLINED_FUNCTION_167();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2508, &qword_1D5648590);
  OUTLINED_FUNCTION_22(v18);
  v1[50] = OUTLINED_FUNCTION_127();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_69(v19);
  v1[51] = v20;
  v1[52] = OUTLINED_FUNCTION_167();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v21 = sub_1D560F148();
  v1[57] = v21;
  OUTLINED_FUNCTION_69(v21);
  v1[58] = v22;
  v1[59] = OUTLINED_FUNCTION_167();
  v1[60] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v23);
  v1[61] = OUTLINED_FUNCTION_127();
  v24 = sub_1D560D838();
  v1[62] = v24;
  OUTLINED_FUNCTION_69(v24);
  v1[63] = v25;
  v1[64] = OUTLINED_FUNCTION_167();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D523D274, 0, 0);
}

uint64_t sub_1D523D274()
{
  v147 = sub_1D54233C8(v0[10]);
  if (v147)
  {
    sub_1D523FD40(MEMORY[0x1E69E7CC0]);
    v2 = v1;
    v4 = v3;
    v0[6] = v5;
    v0[7] = v1;
    v0[8] = v3;
    v6 = sub_1D4E62628(v147);
    v150 = v0;
    v145 = v6;
    if (v6)
    {
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v147 & 0xC000000000000001;
        v141 = (v0[63] + 32);
        v10 = v0[58];
        v132 = (v10 + 16);
        v134 = (v10 + 32);
        v11 = v0[40];
        v129 = v0[49];
        v126 = (v11 + 32);
        v124 = (v11 + 16);
        v12 = &selRef_initWithType_itemIdentifier_;
        while (1)
        {
          if (v9)
          {
            v13 = MEMORY[0x1DA6EB9B0](v8, v147);
          }

          else
          {
            v13 = *(v147 + 8 * v8 + 32);
          }

          v14 = v13;
          if ([v13 v12[321]] == 1)
          {
            v15 = v0[61];
            v16 = v14;
            sub_1D5422730(v14, v15);
            if (OUTLINED_FUNCTION_12_63() != 1)
            {
              v142 = v16;
              (*v141)(v0[67], v0[61], v0[62]);
              sub_1D560D7A8();
              v18 = OUTLINED_FUNCTION_12_63();
              v19 = v0[67];
              if (v18 != 1)
              {
                v136 = v0[62];
                v28 = v0[60];
                v29 = v0[57];
                v30 = v0[55];
                v31 = v0[50];
                v32 = v150[49];
                (*v134)(v28, v0[56], v29);
                v33 = *v132;
                (*v132)(v30, v28, v29);
                __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
                v33(v32, v28, v29);
                swift_storeEnumTagMultiPayload();
                sub_1D523F018(v30, v32, v31);

                v0 = v150;
                sub_1D52418D4(v32);
                sub_1D4E50004(v30, &unk_1EC7F1970, &qword_1D561F4A0);
                sub_1D4E50004(v31, &qword_1EC7F2508, &qword_1D5648590);
                OUTLINED_FUNCTION_8_77();
                v34 = v28;
                v9 = v147 & 0xC000000000000001;
                v35(v34, v29);
LABEL_16:
                OUTLINED_FUNCTION_203();
                v36(v19, v136);
LABEL_17:
                v12 = &selRef_initWithType_itemIdentifier_;
                goto LABEL_18;
              }

              sub_1D4E50004(v0[56], &unk_1EC7F1970, &qword_1D561F4A0);
              v20 = sub_1D560D808();
              v19 = v0[67];
              if (v21)
              {
                v22 = v20;
                v23 = v21;
                v136 = v0[62];
                v24 = v150[55];
                v25 = v150[50];
                v26 = v150[49];
                __swift_storeEnumTagSinglePayload(v24, 1, 1, v0[57]);
                *v26 = v22;
                *(v129 + 8) = v23;
                swift_storeEnumTagMultiPayload();
                sub_1D523F018(v24, v26, v25);

                sub_1D52418D4(v26);
                v0 = v150;
                sub_1D4E50004(v24, &unk_1EC7F1970, &qword_1D561F4A0);
                v27 = v25;
                v9 = v147 & 0xC000000000000001;
                sub_1D4E50004(v27, &qword_1EC7F2508, &qword_1D5648590);
                goto LABEL_16;
              }

              v38 = v0[38];
              v37 = v0[39];
              sub_1D560D5C8();
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v37);
              v40 = v0[38];
              if (EnumTagSinglePayload == 1)
              {
                OUTLINED_FUNCTION_203();
                v41();

                sub_1D4E50004(v40, &unk_1EC7EBF20, &unk_1D561F530);
                goto LABEL_17;
              }

              (*v126)(v0[42], v0[38], v0[39]);
              v42 = sub_1D560D488();
              v44 = v43;
              sub_1D560F0D8();
              _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
              v45 = _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0();
              v47 = v46;

              if (v42 == v45 && v44 == v47)
              {
              }

              else
              {
                v49 = sub_1D5616168();

                if ((v49 & 1) == 0)
                {
                  v0 = v150;
                  v50 = v150[67];
                  v51 = v150[62];
                  v52 = v150[42];
                  v53 = v150[39];

                  OUTLINED_FUNCTION_11_79();
                  v54(v52, v53);
                  OUTLINED_FUNCTION_203();
                  v56 = v50;
                  v57 = v51;
LABEL_30:
                  v55(v56, v57);
                  v9 = v147 & 0xC000000000000001;
                  goto LABEL_17;
                }
              }

              v0 = v150;
              v137 = v150[67];
              v58 = v150[62];
              v59 = v150[55];
              v61 = v150[49];
              v60 = v150[50];
              v62 = v150[42];
              v63 = v150[39];
              __swift_storeEnumTagSinglePayload(v59, 1, 1, v150[57]);
              (*v124)(v61, v62, v63);
              swift_storeEnumTagMultiPayload();
              sub_1D523F018(v59, v61, v60);

              sub_1D52418D4(v61);
              sub_1D4E50004(v59, &unk_1EC7F1970, &qword_1D561F4A0);
              sub_1D4E50004(v60, &qword_1EC7F2508, &qword_1D5648590);
              OUTLINED_FUNCTION_11_79();
              v64(v62, v63);
              OUTLINED_FUNCTION_203();
              v56 = v137;
              v57 = v58;
              goto LABEL_30;
            }

            v17 = v0[61];

            sub_1D4E50004(v17, &unk_1EC7EEC20, &unk_1D5623F70);
          }

          else
          {
          }

LABEL_18:
          if (v145 == ++v8)
          {

            v2 = v0[7];
            v4 = v0[8];
            goto LABEL_33;
          }
        }
      }

      goto LABEL_70;
    }

LABEL_33:
    v0[69] = v2;
    v0[68] = v4;
    sub_1D523FD40(MEMORY[0x1E69E7CC0]);
    v67 = v66;
    v151 = v6;
    v152 = v7;
    v130 = *(v4 + 16);
    v131 = v2;
    if (v130)
    {
      v68 = 0;
      v122 = v0[36];
      v148 = v0[26];
      v128 = v0[44];
      v125 = v4;
      v127 = v2 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
      v123 = v0[51];
      v119 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v121 = v4 + v119;
      v135 = v0[29];
      v120 = *(v135 + 48);
      while (v68 < *(v2 + 16))
      {
        v69 = v0[28];
        v70 = *(v148 + 48);
        v6 = sub_1D5241930(v127 + *(v128 + 72) * v68, v69);
        if (v68 >= *(v4 + 16))
        {
          goto LABEL_69;
        }

        v146 = v67;
        v140 = v0[48];
        v71 = v150[36];
        v72 = v150[35];
        v73 = v150[34];
        v138 = v150[33];
        v139 = v150[32];
        v74 = v150[31];
        v143 = v68;
        v133 = *(v123 + 72);
        v75 = v121 + v133 * v68;
        v76 = v150[28];
        v77 = v150[27];
        sub_1D4F1C460(v75, v69 + v70, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4FD23EC(v76, v77, &qword_1EC7F24F8, &qword_1D5648578);
        v78 = *(v148 + 48);
        sub_1D5241994(v77, v71);
        sub_1D4FD23EC(v77 + v78, v122 + v120, &unk_1EC7F1970, &qword_1D561F4A0);
        v79 = *(v135 + 48);
        sub_1D5241994(v71, v72);
        sub_1D4FD23EC(v122 + v120, v72 + v79, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4F1C460(v72, v73, &qword_1EC7F2500, &unk_1D5648580);
        v80 = *(v135 + 48);
        sub_1D5241930(v73, v138);
        sub_1D4F1C460(v73 + v80, v138 + *(v135 + 48), &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4F1C460(v138, v139, &qword_1EC7F2500, &unk_1D5648580);
        v81 = *(v135 + 48);
        sub_1D5241994(v139, v74);
        sub_1D4FD23EC(v139 + v81, v74 + v81, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D5241930(v74, v140);
        LODWORD(v72) = swift_getEnumCaseMultiPayload();
        sub_1D52418D4(v140);
        sub_1D4E50004(v74, &qword_1EC7F2500, &unk_1D5648580);
        sub_1D4E50004(v138, &qword_1EC7F2500, &unk_1D5648580);
        v0 = v150;
        sub_1D4E50004(v73 + v80, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D52418D4(v73);
        if (v72)
        {
          sub_1D5240510(v150[35]);
          v82 = OUTLINED_FUNCTION_128();
          sub_1D4F1C460(v82, v83, &qword_1EC7F2500, &unk_1D5648580);
          v67 = v146;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D4F0469C(0, *(v146 + 16) + 1, 1);
            v67 = v146;
          }

          v2 = v131;
          v85 = *(v67 + 16);
          v84 = *(v67 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_1D4F0469C(v84 > 1, v85 + 1, 1);
            v67 = v146;
          }

          v86 = v150[30];
          v87 = *(v135 + 48);
          sub_1D4E50004(v150[35], &qword_1EC7F2500, &unk_1D5648580);
          *(v67 + 16) = v85 + 1;
          sub_1D4FD23EC(v86 + v87, v67 + v119 + v85 * v133, &unk_1EC7F1970, &qword_1D561F4A0);
          v6 = sub_1D52418D4(v86);
        }

        else
        {
          v6 = sub_1D4E50004(v150[35], &qword_1EC7F2500, &unk_1D5648580);
          v2 = v131;
          v67 = v146;
        }

        v68 = v143 + 1;
        v4 = v125;
        if (v130 == v143 + 1)
        {
          v89 = v151;
          v88 = v152;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      return MEMORY[0x1EEDCEAC0](v6, v7);
    }

    v89 = v6;
    v88 = v7;
LABEL_47:
    v0[72] = v67;
    v0[71] = v89;
    v0[70] = v88;
    if (*(v67 + 16))
    {
      sub_1D560DD68();
      v90 = OUTLINED_FUNCTION_159();
      sub_1D523C6F4(v90, v91, v67);
      swift_getKeyPath();
      MEMORY[0x1DA6E3B00]();

      v92 = swift_task_alloc();
      v0[73] = v92;
      *v92 = v0;
      v92[1] = sub_1D523E1B0;
      v6 = v0[22];
      v7 = v0[23];

      return MEMORY[0x1EEDCEAC0](v6, v7);
    }

    v93 = v0[6];
    v94 = v0[8];

    v95 = sub_1D52402E8(v93, v2, v94);

    v96 = *(v95 + 16);
    if (v96)
    {
      OUTLINED_FUNCTION_9_78();
      v98 = v95 + v97;
      v100 = *(v99 + 72);
      v149 = MEMORY[0x1E69E7CC0];
      v144 = v100;
      do
      {
        v101 = v0[57];
        v102 = v0[52];
        v103 = v0[53];
        sub_1D4F1C460(v98, v103, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4F1C460(v103, v102, &unk_1EC7F1970, &qword_1D561F4A0);
        if (__swift_getEnumTagSinglePayload(v102, 1, v101) == 1)
        {
          v104 = v0[52];
          sub_1D4E50004(v0[53], &unk_1EC7F1970, &qword_1D561F4A0);
          sub_1D4E50004(v104, &unk_1EC7F1970, &qword_1D561F4A0);
        }

        else
        {
          v105 = v0[53];
          v106 = sub_1D560F138();
          v108 = v107;
          sub_1D4E50004(v105, &unk_1EC7F1970, &qword_1D561F4A0);
          v109 = OUTLINED_FUNCTION_159();
          v110(v109);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v111 = v149;
          }

          else
          {
            sub_1D4F0062C(0, *(v149 + 16) + 1, 1, v149);
            v111 = v115;
          }

          v113 = *(v111 + 16);
          v112 = *(v111 + 24);
          if (v113 >= v112 >> 1)
          {
            sub_1D4F0062C(v112 > 1, v113 + 1, 1, v111);
            v111 = v116;
          }

          *(v111 + 16) = v113 + 1;
          v149 = v111;
          v114 = v111 + 16 * v113;
          *(v114 + 32) = v106;
          *(v114 + 40) = v108;
          v0 = v150;
          v100 = v144;
        }

        v98 += v100;
        --v96;
      }

      while (v96);
    }

    else
    {

      v149 = MEMORY[0x1E69E7CC0];
    }

    v65 = v149;
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_1_113();

  v117 = v0[1];

  return v117(v65);
}

uint64_t sub_1D523E1B0()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_1D523ED84;
  }

  else
  {
    v2 = sub_1D523E2C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D523E2C4()
{
  v117 = v0[63];
  v1 = v0[58];
  v102 = v0[47];
  v106 = v0[46];
  v2 = v0[40];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[12];
  sub_1D560DE38();
  (*(v7 + 16))(v3, v4, v6);
  v9 = *(v5 + 36);
  v10 = v3;
  sub_1D5241870();
  v110 = v9;
  sub_1D5615608();
  (*(v7 + 8))(v4, v6);
  v108 = (v8 + 32);
  v109 = (v8 + 16);
  v103 = (v2 + 16);
  v104 = (v1 + 16);
  v105 = (v2 + 32);
  v107 = (v1 + 32);
  v101 = (v2 + 8);
  v111 = (v117 + 8);
  v112 = v3;
  while (1)
  {
    sub_1D5615648();
    if (*(v10 + v110) == v0[9])
    {
      break;
    }

    v11 = v0[66];
    v115 = v0[62];
    v118 = v0[57];
    v113 = v0[54];
    v12 = v0[14];
    v13 = v0[13];
    v14 = v0[11];
    v15 = sub_1D5615688();
    (*v109)(v12);
    v15(v0 + 2, 0);
    v10 = v112;
    sub_1D5615658();
    (*v108)(v13, v12, v14);
    sub_1D560EC98();
    sub_1D560D7A8();
    v16 = *v111;
    (*v111)(v11, v115);
    if (__swift_getEnumTagSinglePayload(v113, 1, v118) == 1)
    {
      v17 = v0[54];
      OUTLINED_FUNCTION_8_77();
      v18();
      sub_1D4E50004(v17, &unk_1EC7F1970, &qword_1D561F4A0);
    }

    else
    {
      v19 = v0[65];
      (*v107)(v0[59], v0[54], v0[57]);
      sub_1D560EC98();
      v20 = sub_1D560D808();
      v22 = v21;
      v23 = OUTLINED_FUNCTION_128();
      v16(v23);
      if (v22)
      {
        v24 = v0[6];
        v25 = v0[7];
        *v0[46] = v20;
        *(v106 + 8) = v22;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_68();
        v26 = *(v25 + 16);
        v27 = v0[46];

        if (v24)
        {

          sub_1D5240E38(v27, v25 + v19, v26, (v24 + 16), v24 + 32);
        }

        else
        {
          sub_1D5240794(v27, v25 + v19, v26);
        }

        v29 = v28;
        v30 = v0[46];

        sub_1D52418D4(v30);
        if ((v29 & 1) == 0)
        {
          *v0[47] = v20;
          *(v102 + 8) = v22;
          swift_storeEnumTagMultiPayload();
          goto LABEL_20;
        }

        v10 = v112;
      }

      sub_1D560EC98();
      sub_1D560D5C8();
      v31 = OUTLINED_FUNCTION_128();
      v16(v31);
      if (OUTLINED_FUNCTION_12_63() == 1)
      {
        v32 = v0[37];
        OUTLINED_FUNCTION_11_79();
        v33();
        OUTLINED_FUNCTION_8_77();
        v34 = OUTLINED_FUNCTION_128();
        v35(v34);
        sub_1D4E50004(v32, &unk_1EC7EBF20, &unk_1D561F530);
      }

      else
      {
        v36 = v0[45];
        v37 = v0[41];
        v38 = v0[39];
        v39 = *v105;
        (*v105)(v37, v0[37], v38);
        v41 = v0[6];
        v40 = v0[7];
        (*v103)(v36, v37, v38);
        OUTLINED_FUNCTION_128();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_68();
        v42 = *(v40 + 16);
        v43 = v0[45];

        if (v41)
        {

          sub_1D5240E38(v43, v40 + v36, v42, (v41 + 16), v41 + 32);
        }

        else
        {
          sub_1D5240794(v43, v40 + v36, v42);
        }

        v45 = v44;
        v46 = v0[45];

        sub_1D52418D4(v46);
        if (v45)
        {
          v47 = v0[13];
          v48 = v0[11];
          (*v101)(v0[41], v0[39]);
          OUTLINED_FUNCTION_11_79();
          v49 = OUTLINED_FUNCTION_159();
          v50(v49);
          OUTLINED_FUNCTION_8_77();
          v52 = v47;
          v53 = v48;
          goto LABEL_21;
        }

        v39(v0[47], v0[41], v0[39]);
        OUTLINED_FUNCTION_159();
        swift_storeEnumTagMultiPayload();
LABEL_20:
        v54 = v0[57];
        v55 = v0[55];
        v56 = v0[50];
        v57 = v0[47];
        v58 = v0[13];
        v59 = v0[11];
        (*v104)(v55, v0[59], v54);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
        sub_1D523F018(v55, v57, v56);
        sub_1D4E50004(v55, &unk_1EC7F1970, &qword_1D561F4A0);
        sub_1D4E50004(v56, &qword_1EC7F2508, &qword_1D5648590);
        sub_1D52418D4(v57);
        OUTLINED_FUNCTION_11_79();
        v60 = OUTLINED_FUNCTION_128();
        v61(v60);
        OUTLINED_FUNCTION_8_77();
        v52 = v58;
        v53 = v59;
LABEL_21:
        v51(v52, v53);
        v10 = v112;
      }
    }
  }

  v62 = v0[22];
  v63 = v0[20];
  v64 = v0[21];
  sub_1D4E50004(v0[19], &qword_1EC7F24F0, &unk_1D5648560);
  (*(v64 + 8))(v62, v63);
  v65 = OUTLINED_FUNCTION_159();
  v66(v65);
  v68 = v0[6];
  v67 = v0[7];
  v69 = v0[8];

  v70 = sub_1D52402E8(v68, v67, v69);

  v71 = *(v70 + 16);
  if (v71)
  {
    OUTLINED_FUNCTION_9_78();
    v73 = v70 + v72;
    v75 = *(v74 + 72);
    v114 = (v76 + 8);
    v77 = MEMORY[0x1E69E7CC0];
    v78 = &unk_1EC7F1970;
    v79 = &qword_1D561F4A0;
    v116 = v75;
    do
    {
      v80 = v0[57];
      v82 = v0[52];
      v81 = v0[53];
      sub_1D4F1C460(v73, v81, v78, v79);
      sub_1D4F1C460(v81, v82, v78, v79);
      if (__swift_getEnumTagSinglePayload(v82, 1, v80) == 1)
      {
        v83 = v0[52];
        sub_1D4E50004(v0[53], v78, v79);
        sub_1D4E50004(v83, v78, v79);
      }

      else
      {
        v84 = v0[57];
        v85 = v79;
        v86 = v78;
        v87 = v77;
        v88 = v0[52];
        v89 = v0[53];
        v119 = sub_1D560F138();
        v91 = v90;
        v92 = v89;
        v77 = v87;
        v78 = v86;
        v79 = v85;
        sub_1D4E50004(v92, v78, v85);
        (*v114)(v88, v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4F0062C(0, *(v77 + 16) + 1, 1, v77);
          v77 = v96;
        }

        v94 = *(v77 + 16);
        v93 = *(v77 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_1D4F0062C(v93 > 1, v94 + 1, 1, v77);
          v77 = v97;
        }

        *(v77 + 16) = v94 + 1;
        v95 = v77 + 16 * v94;
        v75 = v116;
        *(v95 + 32) = v119;
        *(v95 + 40) = v91;
      }

      v73 += v75;
      --v71;
    }

    while (v71);

    v98 = v77;
  }

  else
  {

    v98 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_1_113();
  OUTLINED_FUNCTION_10_78();

  v99 = v0[1];

  return v99(v98);
}

uint64_t sub_1D523ED84()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  OUTLINED_FUNCTION_10_78();

  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

void sub_1D523F018(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24[-v9];
  v11 = v3[1];
  v25 = *v3;
  v26 = v11;
  v27 = a2;
  v12 = sub_1D523FA54(sub_1D5241B04, v24, v11);
  if (v13)
  {
    sub_1D54FBF10();
    sub_1D4F1C460(a1, v10, &unk_1EC7F1970, &qword_1D561F4A0);
    v16 = v3[2];
    v14 = v3 + 2;
    v15 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D4F0469C(0, *(v15 + 16) + 1, 1);
      v15 = *v14;
    }

    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D4F0469C(v18 > 1, v19 + 1, 1);
      v15 = *v14;
    }

    *(v15 + 16) = v19 + 1;
    sub_1D4FD23EC(v10, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, &unk_1EC7F1970, &qword_1D561F4A0);
    *v14 = v15;
    v20 = 1;
    goto LABEL_12;
  }

  v21 = v12;
  v22 = v3[2];
  sub_1D5240448(v12, v22, a3);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD84();
    v22 = v23;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *(v22 + 16))
  {
    sub_1D5241B28(a1, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21);
    v20 = 0;
    v3[2] = v22;
LABEL_12:
    __swift_storeEnumTagSinglePayload(a3, v20, 1, v7);
    return;
  }

  __break(1u);
}

uint64_t sub_1D523F24C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D5611248();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D523F294(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_1D560D4C8();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D560F148();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s14IdentifierKindOMa(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v35 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2528, &qword_1D5648638);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v35 - v20;
  v22 = (&v35 + *(v19 + 56) - v20);
  sub_1D5241930(a1, &v35 - v20);
  sub_1D5241930(v38, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v37;
    sub_1D5241930(v21, v17);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v28 + 8))(v17, v6);
LABEL_16:
      sub_1D4E50004(v21, &qword_1EC7F2528, &qword_1D5648638);
      goto LABEL_17;
    }

    (*(v28 + 32))(v8, v22, v6);
    v31 = sub_1D560F0E8();
    v33 = *(v28 + 8);
    v33(v8, v6);
    v33(v17, v6);
LABEL_19:
    sub_1D52418D4(v21);
    return v31 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D5241930(v21, v12);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v35 + 8))(v12, v36);
      goto LABEL_16;
    }

    v30 = v35;
    v29 = v36;
    (*(v35 + 32))(v5, v22, v36);
    v31 = sub_1D560D498();
    v32 = *(v30 + 8);
    v32(v5, v29);
    v32(v12, v29);
    goto LABEL_19;
  }

  sub_1D5241930(v21, v15);
  v25 = *v15;
  v24 = v15[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_16;
  }

  if (v25 == *v22 && v24 == v22[1])
  {

    goto LABEL_21;
  }

  v27 = sub_1D5616168();

  if (v27)
  {
LABEL_21:
    sub_1D52418D4(v21);
    v31 = 1;
    return v31 & 1;
  }

  sub_1D52418D4(v21);
LABEL_17:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1D523F6D4(uint64_t a1)
{
  v2 = sub_1D560D4C8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D560F148();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  _s14IdentifierKindOMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  sub_1D5241930(v1, v18 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_159();
      sub_1D5614E28();
    }

    else
    {
      (*(v4 + 32))(v8, v19, v2);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D5241ABC(&qword_1EC7EBF70, MEMORY[0x1E6974F48], MEMORY[0x1E6974F50]);
      sub_1D5614CB8();
      return (*(v4 + 8))(v8, v2);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v19, v9);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5241ABC(&qword_1EC7EBF78, MEMORY[0x1E69755E8], MEMORY[0x1E69755F0]);
    sub_1D5614CB8();
    return (*(v11 + 8))(v15, v9);
  }
}

uint64_t sub_1D523F97C()
{
  sub_1D56162D8();
  sub_1D523F6D4(v1);
  return sub_1D5616328();
}

uint64_t sub_1D523F9C8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D523F6D4(v2);
  return sub_1D5616328();
}

void *sub_1D523FA04(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1D523FA54(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(_s14IdentifierKindOMa(0) - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D523FAF8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1D524161C(v3, 0, sub_1D4EFF398, sub_1D54FC158, sub_1D54FE644);
  sub_1D4F03BB4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v20 = *(a1 + 16);
  v21 = a1;
  v19 = a1 + 32;
  while (1)
  {
    if (v4 == v20)
    {

      return 0;
    }

    if (v4 >= *(v21 + 16))
    {
      break;
    }

    v6 = v19 + 40 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = (v22 + 40);
    v13 = *(v22 + 16) + 1;
    while (--v13)
    {
      if (*(v12 - 1) != v8 || *v12 != v7)
      {
        v12 += 2;
        if ((sub_1D5616168() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1D54FBDC0(v8, v7);
    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D4F03BB4(v15 > 1, v16 + 1, 1);
    }

    ++v4;
    *(v5 + 16) = v16 + 1;
    v17 = v5 + 24 * v16;
    *(v17 + 32) = v10;
    *(v17 + 40) = v9;
    *(v17 + 48) = v11;
  }

  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

void sub_1D523FD40(uint64_t a1)
{
  v2 = &unk_1EC7F1970;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v38 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  v9 = _s14IdentifierKindOMa(0);
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F8, &qword_1D5648578);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v36 - v13;
  v14 = MEMORY[0x1E69E7CC0];
  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v15 = *(a1 + 16);
  sub_1D524161C(v15, 0, sub_1D4EFF3B0, sub_1D54FC170, sub_1D54FE644);
  v45 = v14;
  sub_1D4F0469C(0, v15, 0);
  v16 = &qword_1D561F4A0;
  v17 = 0;
  v18 = v45;
  v44 = *(a1 + 16);
  v36 = v11;
  v37 = v6;
  v39 = a1;
  while (1)
  {
    if (v44 == v17)
    {

      return;
    }

    if (v17 >= *(a1 + 16))
    {
      break;
    }

    v19 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v17;
    v20 = v40;
    sub_1D4F1C460(v19, v40, &qword_1EC7F24F8, &qword_1D5648578);
    v21 = *(v42 + 48);
    sub_1D5241994(v20, v11);
    v22 = v8;
    v23 = v8;
    v24 = v2;
    v25 = v16;
    sub_1D4FD23EC(v20 + v21, v23, v2, v16);
    v27 = v46;
    v26 = v47;
    v28 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v29 = *(v47 + 16);
    if (v46)
    {

      sub_1D5240E38(v11, v26 + v28, v29, (v27 + 16), v27 + 32);
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D5240794(v11, v47 + v28, *(v47 + 16));
      if ((v32 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v2 = v24;
    v11 = v36;
    sub_1D54FBF10();
    v33 = v37;
    v16 = v25;
    sub_1D4F1C460(v22, v37, v2, v25);
    v45 = v18;
    v35 = *(v18 + 16);
    v34 = *(v18 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1D4F0469C(v34 > 1, v35 + 1, 1);
      v16 = v25;
      v18 = v45;
    }

    sub_1D4E50004(v22, v2, v16);
    *(v18 + 16) = v35 + 1;
    sub_1D4FD23EC(v33, v18 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, v2, v16);
    sub_1D52418D4(v11);
    ++v17;
    a1 = v39;
    v8 = v22;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1D5240178(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D4F0B2EC();

    MEMORY[0x1DA6EB990](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1D5615A98();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1D5240214(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC50, &qword_1D5648640);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 88);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D52402E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D4F0349C(*(a3 + 16), 0);
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0) - 8);
  sub_1D4EFEFDC(&v10, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3);
  v8 = v7;

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

unint64_t sub_1D52403F8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5240448@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
      OUTLINED_FUNCTION_69(v6);
      return sub_1D4F1C460(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * v4, a3, &unk_1EC7F1970, &qword_1D561F4A0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5240510(uint64_t a1)
{
  v2 = v1;
  v4 = _s14IdentifierKindOMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5241930(a1, v7);
  v10 = v1[1];
  v8 = v1 + 1;
  v9 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D4F046DC(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1D4F046DC(v12 > 1, v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  result = sub_1D5241994(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
  v2[1] = v9;
  v15 = *v2;
  if (!*v2)
  {
    if (v13 <= 0xE)
    {
      return result;
    }

    v17 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x1DA6E23A0](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v17 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && !v17)
    {

      *v2 = 0;
      return result;
    }

LABEL_14:
    v18 = MEMORY[0x1DA6E23D0](v13 + 1);
    return sub_1D54FC170(v18, v17);
  }

  result = sub_1D54FE644();
  v16 = *v2;
  if (*v2)
  {

    sub_1D524154C((v16 + 16), v16 + 32, a1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5240708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_1D5616168() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

uint64_t sub_1D5240794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = sub_1D560D4C8();
  v6 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D560F148();
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2528, &qword_1D5648638);
  MEMORY[0x1EEE9AC00](v58);
  v11 = &v44 - v10;
  v59 = _s14IdentifierKindOMa(0);
  v12 = MEMORY[0x1EEE9AC00](v59);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v53 = (&v44 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v44 - v20;
  if (!a3)
  {
    return 0;
  }

  v22 = a3;
  v23 = 0;
  v24 = *(v18 + 72);
  v56 = v17;
  v57 = v24;
  v51 = (v6 + 8);
  v52 = v19;
  v46 = (v6 + 32);
  v49 = a1;
  v50 = (v8 + 8);
  v44 = (v8 + 32);
  while (1)
  {
    sub_1D5241930(a2, v21);
    v25 = &v11[*(v58 + 48)];
    sub_1D5241930(v21, v11);
    sub_1D5241930(a1, v25);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_1D5241930(v11, v17);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D52418D4(v21);
      (*v50)(v17, v54);
LABEL_20:
      sub_1D4E50004(v11, &qword_1EC7F2528, &qword_1D5648638);
      goto LABEL_21;
    }

    v39 = v45;
    v40 = v54;
    (*v44)(v45, v25, v54);
    v48 = sub_1D560F0E8();
    v41 = *v50;
    (*v50)(v39, v40);
    sub_1D52418D4(v21);
    v42 = v40;
    a1 = v49;
    v41(v17, v42);
    sub_1D52418D4(v11);
    if (v48)
    {
      return v23;
    }

LABEL_21:
    ++v23;
    a2 += v57;
    if (v22 == v23)
    {
      return 0;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    v34 = v52;
    sub_1D5241930(v11, v52);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = v47;
      v36 = v55;
      (*v46)(v47, v25, v55);
      v48 = sub_1D560D498();
      v37 = *v51;
      (*v51)(v35, v36);
      sub_1D52418D4(v21);
      v38 = v36;
      a1 = v49;
      v37(v34, v38);
      if (v48)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    sub_1D52418D4(v21);
    (*v51)(v34, v55);
LABEL_19:
    v17 = v56;
    goto LABEL_20;
  }

  v27 = v53;
  sub_1D5241930(v11, v53);
  v28 = *v27;
  v29 = v27[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D52418D4(v21);

    goto LABEL_19;
  }

  v30 = *v25;
  v31 = *(v25 + 1);
  if (v28 != v30 || v29 != v31)
  {
    v33 = sub_1D5616168();

    sub_1D52418D4(v21);
    if (v33)
    {
      goto LABEL_27;
    }

LABEL_16:
    sub_1D52418D4(v11);
    v17 = v56;
    goto LABEL_21;
  }

  sub_1D52418D4(v21);
LABEL_27:
  sub_1D52418D4(v11);
  return v23;
}

uint64_t sub_1D5240D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1D56162D8();
  sub_1D5614E28();
  result = sub_1D5616328();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1D560C578();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_1D5616168())
        {
          break;
        }

        sub_1D560C5A8();
        v11 = sub_1D560C588();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

uint64_t sub_1D5240E38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v67 = a5;
  v64 = sub_1D560D4C8();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D560F148();
  v9 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2528, &qword_1D5648638);
  MEMORY[0x1EEE9AC00](v70);
  v12 = &v54 - v11;
  v13 = _s14IdentifierKindOMa(0);
  v69 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v65 = (&v54 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  sub_1D56162D8();
  sub_1D523F6D4(&v75);
  result = sub_1D5616328();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
    return result;
  }

  v62 = v16;
  sub_1D560C578();
  v25 = v79;
  v61 = (v68 + 8);
  v71 = v75;
  v72 = v76;
  v73 = v77;
  v74 = v78;
  v56 = (v68 + 32);
  v60 = (v9 + 8);
  v26 = (v9 + 32);
  v27 = v80;
  v54 = v26;
  v59 = v13;
  v68 = v21;
  if (v80)
  {
    return v25;
  }

  while (1)
  {
    sub_1D5241930(a2 + *(v69 + 72) * v25, v23);
    v28 = &v12[*(v70 + 48)];
    sub_1D5241930(v23, v12);
    sub_1D5241930(a1, v28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_1D5241930(v12, v21);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D52418D4(v23);
      (*v60)(v21, v63);
LABEL_19:
      sub_1D4E50004(v12, &qword_1EC7F2528, &qword_1D5648638);
      goto LABEL_20;
    }

    v47 = *v54;
    v48 = a1;
    v49 = a2;
    v50 = v55;
    LODWORD(v67) = v27;
    v51 = v63;
    v47(v55, v28, v63);
    LODWORD(v66) = sub_1D560F0E8();
    v52 = *v60;
    v53 = v50;
    a2 = v49;
    a1 = v48;
    (*v60)(v53, v51);
    sub_1D52418D4(v23);
    v52(v68, v51);
    v21 = v68;
    sub_1D52418D4(v12);
    if (v66)
    {
      return v25;
    }

LABEL_20:
    sub_1D560C5A8();
    v75 = v71;
    v76 = v72;
    v77 = v73;
    v78 = v74;
    v25 = sub_1D560C588();
    v27 = v46;
    if (v46)
    {
      return v25;
    }
  }

  v66 = v25;
  if (EnumCaseMultiPayload != 1)
  {
    v39 = v62;
    sub_1D5241930(v12, v62);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D52418D4(v23);
      (*v61)(v39, v64);
      goto LABEL_19;
    }

    LODWORD(v67) = v27;
    v40 = a1;
    v41 = a2;
    v42 = v57;
    v43 = v64;
    (*v56)(v57, v28, v64);
    v58 = sub_1D560D498();
    v44 = *v61;
    v45 = v42;
    a2 = v41;
    a1 = v40;
    (*v61)(v45, v43);
    sub_1D52418D4(v23);
    v44(v39, v43);
    if (v58)
    {
      goto LABEL_25;
    }

LABEL_16:
    sub_1D52418D4(v12);
    v21 = v68;
    goto LABEL_20;
  }

  LODWORD(v67) = v27;
  v30 = a1;
  v31 = a2;
  v32 = v65;
  sub_1D5241930(v12, v65);
  v33 = *v32;
  v34 = v32[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D52418D4(v23);

    a2 = v31;
    a1 = v30;
    v21 = v68;
    goto LABEL_19;
  }

  v35 = *v28;
  v36 = *(v28 + 1);
  if (v33 != v35 || v34 != v36)
  {
    v38 = sub_1D5616168();

    sub_1D52418D4(v23);
    if (v38)
    {
      goto LABEL_25;
    }

    a2 = v31;
    a1 = v30;
    goto LABEL_16;
  }

  sub_1D52418D4(v23);
LABEL_25:
  sub_1D52418D4(v12);
  return v66;
}

uint64_t sub_1D524154C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D56162D8();
  sub_1D523F6D4(v14);
  result = sub_1D5616328();
  v7 = 1 << *a1;
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 & result;
    v11 = sub_1D560C548();
    v14[0] = a1;
    v14[1] = a2;
    v14[2] = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = 0;
    while (v15)
    {
      sub_1D560C5A8();
    }

    return sub_1D560C598();
  }

  return result;
}

uint64_t sub_1D524161C(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v8 = v5;
  v10 = result;
  a3();
  v11 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    v12 = *(v11 + 16) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1DA6E23D0](v10);
  v14 = v13;
  if (a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v11 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v15 = *(v11 + 24) & 0x3FLL;
  }

  if (v12 < v14)
  {
    v16 = v14;
    return a4(v16, v15);
  }

  if (v15 > v14)
  {
    v14 = v15;
  }

  v16 = MEMORY[0x1DA6E23D0](*(v8[1] + 16));
  if (v16 <= v14)
  {
    v16 = v14;
  }

  if (v16 < v12)
  {
    return a4(v16, v15);
  }

  result = a5();
  v17 = *v8;
  if (!v17)
  {
    if (!v15)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v17 + 24) & 0x3FLL) != v15)
  {
    *(v17 + 24) = *(v17 + 24) & 0xFFFFFFFFFFFFFFC0 | v15 & 0x3F;
  }

  return result;
}

uint64_t sub_1D5241774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_1D5240E38(a4, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_1D5240794(a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

uint64_t _s14IdentifierKindOMa(uint64_t a1)
{
  result = qword_1EC7F2510;
  if (!qword_1EC7F2510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5241870()
{
  result = qword_1EDD53BC8;
  if (!qword_1EDD53BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA428, &unk_1D561C410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53BC8);
  }

  return result;
}

uint64_t sub_1D52418D4(uint64_t a1)
{
  v2 = _s14IdentifierKindOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5241930(uint64_t a1, uint64_t a2)
{
  v4 = _s14IdentifierKindOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5241994(uint64_t a1, uint64_t a2)
{
  v4 = _s14IdentifierKindOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52419F8(uint64_t a1)
{
  result = sub_1D560F148();
  if (v2 <= 0x3F)
  {
    result = sub_1D560D4C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5241ABC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5241B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t MusicCreditsSection.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v94 = a5;
  v108 = a2;
  v109 = a4;
  v106 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v93 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2530, &qword_1D5648648);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v102 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2538, &qword_1D5648650);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v95 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v110 = v19;
  OUTLINED_FUNCTION_70_0();
  sub_1D560CE48();
  OUTLINED_FUNCTION_4();
  v99 = v21;
  v100 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_1D560CED8();
  OUTLINED_FUNCTION_4();
  v104 = v26;
  v105 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v111 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  v33 = type metadata accessor for MusicCreditsSectionPropertyProvider(0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = (v36 - v35);
  v39 = *(v38 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  v103 = v39;
  OUTLINED_FUNCTION_33();
  v101 = v40;
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  if (qword_1EC7E9090 != -1)
  {
    swift_once();
  }

  v107 = a3;
  v44 = sub_1D560D9A8();
  __swift_project_value_buffer(v44, qword_1EC7F1B20);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2540, &qword_1D5648658);
  sub_1D56105B8();
  sub_1D4E7661C(v32, &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D5610658();
  v50 = sub_1D5610618();
  v97 = v51;
  v98 = v50;
  v96 = sub_1D56105C8();
  v52 = sub_1D56105F8();
  v53 = sub_1D56105E8();
  v54 = a1;
  v55 = sub_1D56105A8();
  if (qword_1EC7E9318 != -1)
  {
    swift_once();
  }

  v56 = qword_1EC87C4A8;
  if (qword_1EC87C4A8 >> 62)
  {
    v90 = qword_1EC87C4A8 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C4A8 < 0)
    {
      v90 = qword_1EC87C4A8;
    }

    v92 = v90;
    sub_1D560CDE8();

    v91 = sub_1D5615E18();

    v56 = v91;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v37 + v33[7]) = v56;
  v57 = (v37 + v33[10]);
  v58 = v97;
  *v57 = v98;
  v57[1] = v58;
  *(v37 + v33[11]) = v96;
  *(v37 + v33[12]) = v52;
  *(v37 + v33[13]) = v53;
  *(v37 + v33[14]) = v55;
  v98 = v54;
  sub_1D5610648();
  sub_1D560CE58();
  v59 = sub_1D560CE28();
  v61 = v60;
  v62 = v100;
  v63 = *(v99 + 8);
  v63(v24, v100);
  *v37 = v59;
  v37[1] = v61;
  sub_1D560CE58();
  v64 = sub_1D560CE38();
  v66 = v65;
  v63(v24, v62);
  v37[2] = v64;
  v37[3] = v66;
  v67 = v102;
  sub_1D560CEA8();
  v68 = sub_1D560CE98();
  if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
  {
    sub_1D4E7661C(v67, &qword_1EC7F2530, &qword_1D5648648);
    v69 = 1;
    v71 = v108;
    v70 = v109;
  }

  else
  {
    v72 = v95;
    sub_1D560CE78();
    OUTLINED_FUNCTION_24_0();
    (*(v73 + 8))(v67, v68);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2548, &qword_1D5648660);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v74);
    v71 = v108;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E7661C(v72, &qword_1EC7F2538, &qword_1D5648650);
      v69 = 1;
      v70 = v109;
    }

    else
    {
      sub_1D560CD98();
      v76 = v93;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
      v102 = type metadata accessor for CreditArtist(0);
      v81 = v72;
      sub_1D524300C(&qword_1EC7EB618, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
      OUTLINED_FUNCTION_3_113();
      sub_1D524300C(v82, type metadata accessor for CreditArtist, v83);
      v70 = v109;
      sub_1D5612368();
      sub_1D4E7661C(v76, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      (*(v84 + 8))(v81, v74);
      v69 = 0;
    }
  }

  v85 = v110;
  __swift_storeEnumTagSinglePayload(v110, v69, 1, v101);
  sub_1D5237C90(v85, v37 + v103);
  v112[3] = v33;
  v112[4] = sub_1D524300C(&qword_1EC7F24A8, type metadata accessor for MusicCreditsSectionPropertyProvider, &protocol conformance descriptor for MusicCreditsSectionPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v112);
  sub_1D52423D8(v37, boxed_opaque_existential_0);
  MusicCreditsSection.init(propertyProvider:)(v112, v106);

  OUTLINED_FUNCTION_24_0();
  (*(v87 + 8))(v71, v70);
  OUTLINED_FUNCTION_24_0();
  (*(v88 + 8))(v98, v49);
  (*(v104 + 8))(v111, v105);
  return sub_1D5238A60(v37);
}

uint64_t sub_1D52423D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCreditsSectionPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicCreditsSection.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v107 = a2;
  v106 = a1;
  v122 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v121 = v6;
  OUTLINED_FUNCTION_70_0();
  v7 = sub_1D5610088();
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v128 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v115 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v114 = v16;
  OUTLINED_FUNCTION_70_0();
  sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v119 = v18;
  v120 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v118 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2550, &qword_1D5648668);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v113 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2558, &qword_1D5648670);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v112 = v26;
  OUTLINED_FUNCTION_70_0();
  sub_1D560CED8();
  OUTLINED_FUNCTION_4();
  v116 = v28;
  v117 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  v126 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v127 = &v103 - v32;
  OUTLINED_FUNCTION_70_0();
  v105 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v104 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2538, &qword_1D5648650);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v110 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_59_0();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v103 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2530, &qword_1D5648648);
  v50 = OUTLINED_FUNCTION_22(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_59_0();
  v111 = v51 - v52;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v109 = &v103 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v103 - v56;
  sub_1D560CE48();
  OUTLINED_FUNCTION_4();
  v124 = v59;
  v125 = v58;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_59_0();
  v62 = v60 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v103 - v64;
  MusicCreditsSection.kind.getter();
  MusicCreditsSection.title.getter();
  v123 = v65;
  sub_1D560CE18();
  v66 = sub_1D560CE98();
  v129 = v57;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
  if (qword_1EC7E8C30 != -1)
  {
    swift_once();
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  sub_1D524300C(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  sub_1D524300C(&qword_1EC7EE850, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v48, 1, v70) != 1)
  {
    v103 = v66;
    sub_1D4F43D5C(v48, v45, &qword_1EC7EE880, &qword_1D562CC60);
    if (__swift_getEnumTagSinglePayload(v45, 1, v70) == 1)
    {
      sub_1D4E7661C(v45, &qword_1EC7EE880, &qword_1D562CC60);
      v71 = 1;
      v72 = v110;
    }

    else
    {
      type metadata accessor for CreditArtist(0);
      sub_1D524300C(&qword_1EC7EB618, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
      OUTLINED_FUNCTION_3_113();
      sub_1D524300C(v73, type metadata accessor for CreditArtist, v74);
      sub_1D4F1ABE8(v37);
      v72 = v110;
      sub_1D560DA98();
      (*(v104 + 8))(v37, v105);
      OUTLINED_FUNCTION_24_0();
      (*(v75 + 8))(v45, v70);
      v71 = 0;
    }

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2548, &qword_1D5648660);
    __swift_storeEnumTagSinglePayload(v72, v71, 1, v76);
    v77 = v109;
    sub_1D560CE88();
    v78 = v129;
    sub_1D4E7661C(v129, &qword_1EC7F2530, &qword_1D5648648);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v103);
    sub_1D5242EE0(v77, v78);
  }

  v110 = v48;
  (*(v124 + 16))(v62, v123, v125);
  sub_1D4F43D5C(v129, v111, &qword_1EC7F2530, &qword_1D5648648);
  sub_1D560CE68();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  sub_1D560CEC8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);

  v87 = v127;
  sub_1D560CEB8();
  type metadata accessor for MusicCreditsSection(0);
  v88 = v114;
  sub_1D5611A28();
  v89 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  v94 = v118;
  sub_1D5612B38();
  v95 = v116;
  v96 = v117;
  (*(v116 + 16))(v126, v87, v117);
  sub_1D5611A98();
  v97 = sub_1D5611A88();
  v114 = v98;
  v115 = v97;
  v100 = v119;
  v99 = v120;
  v101 = v121;
  (*(v119 + 16))(v121, v94, v120);
  __swift_storeEnumTagSinglePayload(v101, 0, 1, v99);
  v113 = sub_1D5611A38();
  v112 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D524300C(&qword_1EC7F2560, MEMORY[0x1E6974D50], MEMORY[0x1E6974D48]);
  sub_1D5610628();
  (*(v100 + 8))(v94, v99);
  (*(v95 + 8))(v127, v96);
  sub_1D4E7661C(v129, &qword_1EC7F2530, &qword_1D5648648);
  (*(v124 + 8))(v123, v125);
  return sub_1D4E7661C(v110, &qword_1EC7EE880, &qword_1D562CC60);
}

uint64_t sub_1D5242EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2530, &qword_1D5648648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5242FA0(uint64_t a1)
{
  sub_1D524300C(&qword_1EC7EE860, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);

  return sub_1D5612668();
}

uint64_t sub_1D524300C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FlexAnalysisPropertyProvider(uint64_t a1)
{
  result = qword_1EC7F2568;
  if (!qword_1EC7F2568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52430C8(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EC7F2578, &type metadata for FlexAnalysis.SampledValues);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7F2580, &qword_1EC7ED000, &unk_1D56257F0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E6D600(319, &qword_1EC7F2588, &qword_1EC7ED008, &qword_1D5623E38);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1D4F4E49C(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          v2 = sub_1D560D838();
          if (v10 <= 0x3F)
          {
            v2 = sub_1D5610088();
            if (v11 <= 0x3F)
            {
              sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
              v2 = v12;
              if (v13 <= 0x3F)
              {
                sub_1D4E5CF94(319);
                v2 = v14;
                if (v15 <= 0x3F)
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

  return v2;
}

uint64_t sub_1D52432BC@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EB40);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_4_1();
    goto LABEL_39;
  }

  v6 = v5;
  v7 = qword_1EC7E8AB8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_6_82(&qword_1EC7E8AB8);
  }

  v85 = qword_1EC87BF00;
  sub_1D5244524();
  if (sub_1D5614D18())
  {
    v8 = v2[2];
    if (!v8)
    {

      v13 = 0;
      v12 = 0;
      v10 = 0;
      goto LABEL_20;
    }

    v9 = *(v3 + 2);
    v10 = *v3;
LABEL_7:

    v12 = &type metadata for FlexAnalysis.SampledValues;
    v13 = v9 & 1;
LABEL_20:
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 9) = 0;
    *(a2 + 16) = v8;
    *(a2 + 24) = v12;
    return result;
  }

  v14 = qword_1EC7E8AC0;

  if (v14 != -1)
  {
    v15 = OUTLINED_FUNCTION_5_86(&qword_1EC7E8AC0);
  }

  OUTLINED_FUNCTION_22_9(v15, v16, v17, v18, v19, v20, v21, v22, v66, v71, v76, v6, v85);
  OUTLINED_FUNCTION_21_15();
  if ((v14 & 1) == 0)
  {
    v26 = qword_1EC7E8AC8;

    if (v26 != -1)
    {
      v27 = OUTLINED_FUNCTION_4_84(&qword_1EC7E8AC8);
    }

    OUTLINED_FUNCTION_22_9(v27, v28, v29, v30, v31, v32, v33, v34, v67, v72, v77, v81, v86);
    OUTLINED_FUNCTION_21_15();
    if (v26)
    {
      v23 = v2[4];
      if (v23)
      {
        v24 = &qword_1EC7ED008;
        v25 = &qword_1D5623E38;
        goto LABEL_18;
      }
    }

    else
    {
      v36 = qword_1EC7E8AD0;

      if (v36 != -1)
      {
        v37 = OUTLINED_FUNCTION_3_114(&qword_1EC7E8AD0);
      }

      OUTLINED_FUNCTION_22_9(v37, v38, v39, v40, v41, v42, v43, v44, v68, v73, v78, v82, v87);
      OUTLINED_FUNCTION_21_15();
      if ((v36 & 1) == 0)
      {
        v45 = qword_1EC7E8AD8;

        if (v45 != -1)
        {
          v46 = OUTLINED_FUNCTION_2_113(&qword_1EC7E8AD8);
        }

        OUTLINED_FUNCTION_22_9(v46, v47, v48, v49, v50, v51, v52, v53, v69, v74, v79, v83, v88);
        OUTLINED_FUNCTION_21_15();
        if (v45)
        {
          v8 = v2[8];
          if (v8)
          {
            v9 = *(v3 + 14);
            v10 = v3[6];
            goto LABEL_7;
          }
        }

        else
        {
          v54 = qword_1EC7E8AE0;

          if (v54 != -1)
          {
            v55 = OUTLINED_FUNCTION_1_114(&qword_1EC7E8AE0);
          }

          v63 = OUTLINED_FUNCTION_22_9(v55, v56, v57, v58, v59, v60, v61, v62, v70, v75, v80, v84, v89);

          if ((v63 & 1) == 0)
          {
            while (1)
            {
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_4_1();
LABEL_39:
              OUTLINED_FUNCTION_3_78("Fatal error", v64, v65, 0, 0xE000000000000000, "MusicKitInternal/FlexAnalysisPropertyProvider.swift");
              __break(1u);
            }
          }

          v8 = v3[11];
          if (v8)
          {
            v9 = *(v3 + 20);
            v10 = v3[9];
            goto LABEL_7;
          }
        }

        v13 = 0;
        v10 = 0;
        v12 = 0;
        goto LABEL_20;
      }

      v23 = v2[5];
      if (v23)
      {
        goto LABEL_12;
      }
    }

LABEL_25:
    v35 = 0;
    goto LABEL_26;
  }

  v23 = v2[3];
  if (!v23)
  {
    goto LABEL_25;
  }

LABEL_12:
  v24 = &qword_1EC7ED000;
  v25 = &unk_1D56257F0;
LABEL_18:
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);

LABEL_26:

  *a2 = v23;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v35;
  return result;
}

void sub_1D52436D8(uint64_t a1, uint64_t a2)
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_78("Fatal error", v2, v3, 0, 0xE000000000000000, "MusicKitInternal/FlexAnalysisPropertyProvider.swift");
  __break(1u);
}

void sub_1D5243784(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F25A8, &unk_1D5648850);
  if (swift_dynamicCastClass())
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000029, 0x80000001D5688AB0);
    sub_1D5615D48();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5688A70);
    sub_1D560D0C8();
    sub_1D5616138();
  }

  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_78("Fatal error", v1, v2, 0, 0xE000000000000000, "MusicKitInternal/FlexAnalysisPropertyProvider.swift");
  __break(1u);
}

uint64_t sub_1D524390C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D56486E0;
  if (qword_1EC7E8AB8 != -1)
  {
    OUTLINED_FUNCTION_6_82(&qword_1EC7E8AB8);
  }

  *(v0 + 32) = qword_1EC87BF00;
  v1 = qword_1EC7E8AC0;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_5_86(&qword_1EC7E8AC0);
  }

  *(v0 + 40) = qword_1EC87BF08;
  v2 = qword_1EC7E8AC8;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_4_84(&qword_1EC7E8AC8);
  }

  *(v0 + 48) = qword_1EC87BF10;
  v3 = qword_1EC7E8AD0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_3_114(&qword_1EC7E8AD0);
  }

  *(v0 + 56) = qword_1EC87BF18;
  v4 = qword_1EC7E8AD8;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_2_113(&qword_1EC7E8AD8);
  }

  *(v0 + 64) = qword_1EC87BF20;
  v5 = qword_1EC7E8AE0;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_1_114(&qword_1EC7E8AE0);
  }

  *(v0 + 72) = qword_1EC87BF28;
  qword_1EC87C4B0 = v0;
}

void sub_1D5243A8C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_42;
    }

    if (*(a1 + 8))
    {
      if ((a2[1] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_64();
      if (v6)
      {
        goto LABEL_9;
      }
    }

    if ((sub_1D4EFA0D0(v4, v5) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_42;
    }
  }

  v7 = *(a1 + 24);
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (sub_1D4EF8004(v7, v8) & 1) == 0)
    {
      return;
    }
  }

  else if (v8)
  {
    return;
  }

  v9 = *(a1 + 32);
  v10 = a2[4];
  if (v9)
  {
    if (!v10 || (sub_1D4EF8150(v9, v10) & 1) == 0)
    {
      return;
    }
  }

  else if (v10)
  {
    return;
  }

  v11 = *(a1 + 40);
  v12 = a2[5];
  if (v11)
  {
    if (!v12 || (sub_1D4EF8004(v11, v12) & 1) == 0)
    {
      return;
    }
  }

  else if (v12)
  {
    return;
  }

  v13 = *(a1 + 64);
  v14 = a2[8];
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_42;
    }

    if (*(a1 + 56))
    {
      if ((a2[7] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_64();
      if (v15)
      {
        goto LABEL_9;
      }
    }

    if ((sub_1D4EFA0D0(v13, v14) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_42;
    }
  }

  v16 = *(a1 + 88);
  v17 = a2[11];
  if (!v16)
  {
    if (!v17)
    {

      goto LABEL_48;
    }

LABEL_42:

    return;
  }

  if (!v17)
  {
    goto LABEL_42;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_64();
    if ((v18 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_9:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  if ((a2[10] & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_47:
  if ((sub_1D4EFA0D0(v16, v17) & 1) == 0)
  {
    return;
  }

LABEL_48:
  sub_1D4EF6F7C();
  if ((v19 & 1) == 0)
  {
    return;
  }

  v20 = type metadata accessor for FlexAnalysisPropertyProvider(0);
  if ((sub_1D560D6E8() & 1) == 0 || (sub_1D4F3B22C() & 1) == 0)
  {
    return;
  }

  v21 = v20[13];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return;
    }

    v26 = *v22 == *v24 && v23 == v25;
    if (!v26 && (sub_1D5616168() & 1) == 0)
    {
      return;
    }
  }

  else if (v25)
  {
    return;
  }

  OUTLINED_FUNCTION_44_0(v20[14]);
  sub_1D4F286E0();
  if (v27)
  {
    OUTLINED_FUNCTION_44_0(v20[15]);
    sub_1D4F286E0();
    if (v28)
    {
      OUTLINED_FUNCTION_44_0(v20[16]);
      sub_1D4F286E0();
      if (v29)
      {
        OUTLINED_FUNCTION_44_0(v20[17]);

        sub_1D4F286E0();
      }
    }
  }
}

void sub_1D5243D3C(uint64_t a1)
{
  if (v1[2])
  {
    v3 = *v1;
    v4 = *(v1 + 2);
    OUTLINED_FUNCTION_27();
    if (v4)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x1DA6EC100](v5);
    }

    OUTLINED_FUNCTION_24();
    sub_1D4F07ACC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[3])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F07B78();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[4])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F07B18();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[5])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F07B78();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[8])
  {
    v6 = v1[6];
    v7 = *(v1 + 14);
    OUTLINED_FUNCTION_27();
    if (v7)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x1DA6EC100](v8);
    }

    OUTLINED_FUNCTION_24();
    sub_1D4F07ACC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[11])
  {
    v9 = v1[9];
    v10 = *(v1 + 20);
    OUTLINED_FUNCTION_27();
    if (v10)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x1DA6EC100](v11);
    }

    OUTLINED_FUNCTION_24();
    sub_1D4F07ACC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F070FC(a1, v1[12]);
  v12 = type metadata accessor for FlexAnalysisPropertyProvider(0);
  sub_1D560D838();
  v13 = sub_1D5244588(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_22_2(v13);
  sub_1D5610088();
  v14 = sub_1D5244588(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_22_2(v14);
  if (*(v1 + *(v12 + 52) + 8))
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

uint64_t sub_1D5243F98()
{
  sub_1D56162D8();
  sub_1D5243D3C(v1);
  return sub_1D5616328();
}

void (*sub_1D5243FEC(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D52432BC(v5);
  return sub_1D5244058;
}

void sub_1D5244058(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 64);
    sub_1D4F508D8(v2, v2 + 32);

    sub_1D52436D8(v4, v3);
  }

  sub_1D52436D8(v5, v5);
}

uint64_t sub_1D52440B8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5243D3C(v2);
  return sub_1D5616328();
}

uint64_t sub_1D524413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5244588(&qword_1EC7F25A0, type metadata accessor for FlexAnalysisPropertyProvider, &unk_1D5648778);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D52441D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D524424C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D52442E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D5244358(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_1D5244390(uint64_t a1)
{
  v2 = sub_1D5244588(&qword_1EC7F25A0, type metadata accessor for FlexAnalysisPropertyProvider, &unk_1D5648778);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D524440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5244588(&qword_1EC7F2590, type metadata accessor for FlexAnalysisPropertyProvider, &unk_1D5648750);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D52444A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5244588(&qword_1EC7F2598, type metadata accessor for FlexAnalysisPropertyProvider, &unk_1D5648710);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

unint64_t sub_1D5244524()
{
  result = qword_1EC7F25B0;
  if (!qword_1EC7F25B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED968, &qword_1D5626D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F25B0);
  }

  return result;
}

uint64_t sub_1D5244588(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void Song.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v82 = v2;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v79 = v4;
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v78 = v6 - v5;
  v68 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v77 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v72 = v10 - v9;
  v75 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v69 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v17 = OUTLINED_FUNCTION_22(v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v61 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_0();
  v65 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v61 - v29;
  v30 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  v76 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = *(v32 + 16);
  v37(v35 - v34, v0, v30);
  v38 = sub_1D56137E8();
  v73 = v39;
  v74 = v38;
  v40 = sub_1D56135B8();
  v70 = v41;
  v71 = v40;
  sub_1D56137F8();
  sub_1D5613628();
  sub_1D56137D8();
  v67 = sub_1D5613668();
  v42 = v81;
  v43 = v68;
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v68);
  v84 = v30;
  v85 = MEMORY[0x1E6976BC8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v83);
  v62 = v36;
  v37(boxed_opaque_existential_0, v36, v30);
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v63 = v30;
  sub_1D5612AF8();
  v45 = v72;
  sub_1D5611A98();
  (*(v69 + 8))(v15, v75);
  sub_1D560FDD8();
  (*(v77 + 8))(v45, v43);
  sub_1D4E7661C(v42, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v43);
  v46 = v20;
  sub_1D4F7AFE0(v20, v42);
  __swift_destroy_boxed_opaque_existential_1(v83);
  v47 = v78;
  sub_1D560EC98();
  sub_1D4F43D5C(v42, v20, &qword_1EC7EA358, &unk_1D561DF50);
  v48 = type metadata accessor for MusicSiriRepresentation(0);
  v49 = v82;
  v50 = v64;
  sub_1D4F43D5C(v64, v82 + v48[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v51 = v65;
  sub_1D4F43D5C(v65, v49 + v48[9], &qword_1EC7EC478, &unk_1D56299D0);
  v52 = v66;
  sub_1D4F43D5C(v66, v49 + v48[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v83[0]) = 12;
  v53 = v47;
  sub_1D50391CC();
  v55 = v54;
  v57 = v56;
  sub_1D4E7661C(v46, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v79 + 8))(v53, v80);
  sub_1D4E7661C(v81, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v52, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E7661C(v51, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E7661C(v50, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v76 + 8))(v62, v63);
  v58 = v82;
  *v82 = v55;
  v58[1] = v57;
  *(v58 + 16) = 12;
  v59 = v73;
  v58[3] = v74;
  v58[4] = v59;
  v60 = v70;
  v58[5] = v71;
  v58[6] = v60;
  OUTLINED_FUNCTION_46();
}

uint64_t Song.favoriteStatus.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1D56128E8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1D5613698();
  (*(v4 + 16))(v8, v10, v2);
  v11 = (*(v4 + 88))(v8, v2);
  if (v11 == *MEMORY[0x1E69765E8])
  {
    v12 = 0;
LABEL_7:
    result = (*(v4 + 8))(v10, v2);
    *a1 = v12;
    return result;
  }

  if (v11 == *MEMORY[0x1E69765F8])
  {
    v12 = 1;
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E69765F0])
  {
    v12 = 2;
    goto LABEL_7;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t Song.catalogID.getter()
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
  sub_1D5613838();
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

uint64_t sub_1D5244FD4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (!a1())
  {
    return 0;
  }

  v3 = a2();

  return v3;
}

uint64_t Song.spatialOffsets.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2608, &qword_1D5648878);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_0();
  sub_1D5613768();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  OUTLINED_FUNCTION_2_49(v4);
  if (v5)
  {
    sub_1D4E7661C(v0, &qword_1EC7F2608, &qword_1D5648878);
    return 0;
  }

  else
  {
    sub_1D5431B8C(v10);
    OUTLINED_FUNCTION_24_0();
    (*(v6 + 8))(v0, v1);
    memcpy(v9, v10, sizeof(v9));
    v7 = v9[20];

    sub_1D524528C(v9);
  }

  return v7;
}

void *Song.spatialTimingInformation.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2608, &qword_1D5648878);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31();
  sub_1D5613768();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1D4E7661C(v1, &qword_1EC7F2608, &qword_1D5648878);
    sub_1D51D30CC(v9);
  }

  else
  {
    sub_1D5431B8C(v8);
    OUTLINED_FUNCTION_24_0();
    (*(v6 + 8))(v1, v5);
    memcpy(v9, v8, sizeof(v9));
    nullsub_1();
  }

  return memcpy(a1, v9, 0xB0uLL);
}

uint64_t Song.audioAnalysis.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_0();
  sub_1D52453FC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  OUTLINED_FUNCTION_2_49(v4);
  if (v5)
  {
    sub_1D4E7661C(v0, &qword_1EC7F1548, &unk_1D5649E50);
    type metadata accessor for AudioAnalysis(0);
    v6 = OUTLINED_FUNCTION_17_2();
    return __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  else
  {
    sub_1D4EC9674();
    OUTLINED_FUNCTION_24_0();
    return (*(v8 + 8))(v0, v1);
  }
}

void sub_1D52453FC()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31();
  sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2688, &unk_1D5648BD0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43_7();
  sub_1D5613648();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2690, &unk_1D564E650);
  OUTLINED_FUNCTION_10_79(v8);
  if (v9)
  {
    sub_1D4E7661C(v1, &qword_1EC7F2688, &unk_1D5648BD0);
    v15 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v10 = sub_1D560CD98();
    v11 = OUTLINED_FUNCTION_11_80(v10);
    type metadata accessor for AudioAnalysis(v11);
    sub_1D52468E8(&qword_1EC7F2698, type metadata accessor for AudioAnalysis, &protocol conformance descriptor for AudioAnalysis);
    sub_1D52468E8(&qword_1EC7F26A0, type metadata accessor for AudioAnalysis, &protocol conformance descriptor for AudioAnalysis);
    OUTLINED_FUNCTION_2_114();
    sub_1D4E7661C(v0, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v12 = OUTLINED_FUNCTION_12_65();
    v13(v12);
    OUTLINED_FUNCTION_24_0();
    (*(v14 + 8))(v1, v2);
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  v16 = OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v17);
  OUTLINED_FUNCTION_46();
}

uint64_t Song.flexAnalysis.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_0();
  sub_1D5245750();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  OUTLINED_FUNCTION_2_49(v4);
  if (v5)
  {
    sub_1D4E7661C(v0, &qword_1EC7F1558, &unk_1D5649E60);
    type metadata accessor for FlexAnalysis(0);
    v6 = OUTLINED_FUNCTION_17_2();
    return __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  else
  {
    sub_1D4EC9728();
    OUTLINED_FUNCTION_24_0();
    return (*(v8 + 8))(v0, v1);
  }
}

void sub_1D5245750()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31();
  sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2678, &qword_1D5648BC0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43_7();
  sub_1D5613608();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2680, &qword_1D5648BC8);
  OUTLINED_FUNCTION_10_79(v8);
  if (v9)
  {
    sub_1D4E7661C(v1, &qword_1EC7F2678, &qword_1D5648BC0);
    v15 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v10 = sub_1D560CD98();
    v11 = OUTLINED_FUNCTION_11_80(v10);
    type metadata accessor for FlexAnalysis(v11);
    sub_1D52468E8(&qword_1EC7ED018, type metadata accessor for FlexAnalysis, &protocol conformance descriptor for FlexAnalysis);
    sub_1D52468E8(&qword_1EC7ECFF0, type metadata accessor for FlexAnalysis, &protocol conformance descriptor for FlexAnalysis);
    OUTLINED_FUNCTION_2_114();
    sub_1D4E7661C(v0, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v12 = OUTLINED_FUNCTION_12_65();
    v13(v12);
    OUTLINED_FUNCTION_24_0();
    (*(v14 + 8))(v1, v2);
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  v16 = OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v17);
  OUTLINED_FUNCTION_46();
}

void Song.credits.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31();
  sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2618, &qword_1D56488A0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43_7();
  sub_1D5613808();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2620, &qword_1D56488A8);
  OUTLINED_FUNCTION_10_79(v8);
  if (v9)
  {
    sub_1D4E7661C(v1, &qword_1EC7F2618, &qword_1D56488A0);
    v15 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v10 = sub_1D560CD98();
    v11 = OUTLINED_FUNCTION_11_80(v10);
    type metadata accessor for MusicCreditsSection(v11);
    sub_1D52468E8(&qword_1EC7EE860, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
    sub_1D52468E8(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
    OUTLINED_FUNCTION_2_114();
    sub_1D4E7661C(v0, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v12 = OUTLINED_FUNCTION_12_65();
    v13(v12);
    OUTLINED_FUNCTION_24_0();
    (*(v14 + 8))(v1, v2);
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2628, &qword_1D56488B0);
  v16 = OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v17);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5245C08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  v1 = sub_1D52468E8(&qword_1EC7F2670, type metadata accessor for AudioAnalysis, &protocol conformance descriptor for AudioAnalysis);
  OUTLINED_FUNCTION_15_69(0x6E612D6F69647561, 0xEE00736973796C61, v2, v3, v1);
  OUTLINED_FUNCTION_63();

  qword_1EC7F25B8 = v0;
  return result;
}

uint64_t sub_1D5245CF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  v1 = sub_1D52468E8(&qword_1EC7ED960, type metadata accessor for FlexAnalysis, &protocol conformance descriptor for FlexAnalysis);
  OUTLINED_FUNCTION_15_69(0x612D6C6D78656C66, 0xEF736973796C616ELL, v2, v3, v1);
  OUTLINED_FUNCTION_63();

  qword_1EC7F25C0 = v0;
  return result;
}

uint64_t sub_1D5245DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D52467D8();
  v0 = sub_1D560D138();

  qword_1EC7F25C8 = v0;
  return result;
}

uint64_t sub_1D5245ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561EAC0;
  if (qword_1EC7E8C30 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EC7EE800;
  sub_1D52468E8(&qword_1EC7EE8A8, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);

  v1 = sub_1D560D108();

  qword_1EC7F25D0 = v1;
  return result;
}

uint64_t sub_1D524603C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D5615288();
  v0 = sub_1D560D138();

  qword_1EC7F25D8 = v0;
  return result;
}

uint64_t sub_1D5246118()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D524675C(&qword_1EC7F0C78, &qword_1EC7F0C80, &qword_1D5648AE0, sub_1D5161350);
  v0 = sub_1D560D138();

  qword_1EC7F25E0 = v0;
  return result;
}

uint64_t sub_1D5246230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D524675C(&qword_1EC7F2640, &qword_1EC7F2648, &qword_1D5648AB0, sub_1D5246708);
  v0 = sub_1D560D138();

  qword_1EC7F25E8 = v0;
  return result;
}

uint64_t sub_1D5246358()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F25F0 = v0;
  return result;
}

uint64_t sub_1D5246430()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  v1 = sub_1D52468E8(&qword_1EDD5D240, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DE8]);
  OUTLINED_FUNCTION_15_69(0x726E65672D776172, 0xEA00000000007365, v2, v3, v1);
  OUTLINED_FUNCTION_63();

  qword_1EC7F25F8 = v0;
  return result;
}

uint64_t sub_1D5246514()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D52466B4();
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F2600 = v0;
  return result;
}

unint64_t sub_1D52466B4()
{
  result = qword_1EC7F2638;
  if (!qword_1EC7F2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2638);
  }

  return result;
}

unint64_t sub_1D5246708()
{
  result = qword_1EC7F2650;
  if (!qword_1EC7F2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2650);
  }

  return result;
}

uint64_t sub_1D524675C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D52467D8()
{
  result = qword_1EC7F2658;
  if (!qword_1EC7F2658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F2660, &qword_1D5648B68);
    sub_1D5246894();
    sub_1D52468E8(&qword_1EDD5CF88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2658);
  }

  return result;
}

unint64_t sub_1D5246894()
{
  result = qword_1EC7F2668;
  if (!qword_1EC7F2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2668);
  }

  return result;
}

uint64_t sub_1D52468E8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void CatalogInternalSearchRawResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F26A8, &unk_1D5648BE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_23_23(v25, v25[3]);
  sub_1D5246CC0();
  sub_1D5616398();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_1D5246D14();
    sub_1D5615F78();
    v29 = v42;
    v30 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A58, &qword_1D564C060);
    sub_1D5247198();
    sub_1D5615F78();
    v37 = v42;
    OUTLINED_FUNCTION_65_4();
    sub_1D5246E44();
    sub_1D5615F78();
    v31 = OUTLINED_FUNCTION_28_0();
    v32(v31);
    v36 = v52;
    v35 = v53;
    v33 = v55;
    v34 = v54;
    v41[0] = v42;
    v41[1] = v43;
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v42;
    v41[6] = v52;
    v41[7] = v53;
    v41[8] = v54;
    v41[9] = v55;
    memcpy(v27, v41, 0x50uLL);
    sub_1D5246E98(v41, &v42);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v42 = v29;
    v43 = v30;
    v44 = v38;
    v45 = v39;
    v46 = v40;
    v47 = v37;
    v48 = v36;
    v49 = v35;
    v50 = v34;
    v51 = v33;
    sub_1D50A1F8C(&v42);
  }

  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5246CC0()
{
  result = qword_1EC7F26B0;
  if (!qword_1EC7F26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26B0);
  }

  return result;
}

unint64_t sub_1D5246D14()
{
  result = qword_1EC7F26B8;
  if (!qword_1EC7F26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26B8);
  }

  return result;
}

unint64_t sub_1D5246D68(uint64_t a1)
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

uint64_t sub_1D5246DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1D5246DF0(a1, a2);
  }

  return a1;
}

uint64_t sub_1D5246DF0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1D5246E44()
{
  result = qword_1EC7F26C0;
  if (!qword_1EC7F26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26C0);
  }

  return result;
}

void CatalogInternalSearchRawResponse.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F26C8, &qword_1D5648BF0);
  OUTLINED_FUNCTION_4();
  v34 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  v13 = v0[4];
  v12 = v0[5];
  v14 = *(v0 + 3);
  v29 = *(v0 + 4);
  v30 = v14;
  v16 = v3[3];
  v15 = v3[4];
  v31 = v12;
  v32 = v15;
  OUTLINED_FUNCTION_23_23(v3, v16);
  v17 = OUTLINED_FUNCTION_58_24();
  sub_1D5247100(v17, v18, v19, v20, v21);
  sub_1D5246CC0();
  v22 = v33;
  sub_1D56163D8();
  *&v35 = v8;
  *(&v35 + 1) = v9;
  *&v36 = v10;
  *(&v36 + 1) = v11;
  v37 = v13;
  sub_1D5247144();
  OUTLINED_FUNCTION_50_24();
  sub_1D5616068();
  v23 = OUTLINED_FUNCTION_58_24();
  sub_1D5246DAC(v23, v24, v25, v26, v27);
  if (v1)
  {
    (*(v34 + 8))(v7, v22);
  }

  else
  {
    v28 = v34;
    *&v35 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A58, &qword_1D564C060);
    sub_1D5247198();
    OUTLINED_FUNCTION_50_24();
    sub_1D5616068();
    v36 = v29;
    v35 = v30;
    OUTLINED_FUNCTION_65_4();
    sub_1D5247374();
    OUTLINED_FUNCTION_50_24();
    sub_1D5616068();
    (*(v28 + 8))(v7, v22);
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

double sub_1D5247100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1D50A2198(a1, a2, a3, a4);
  }

  return result;
}

unint64_t sub_1D5247144()
{
  result = qword_1EC7F26D0;
  if (!qword_1EC7F26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26D0);
  }

  return result;
}

void sub_1D5247198()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v2))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A58, &qword_1D564C060);
    v1();
    atomic_store(swift_getWitnessTable(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D5247208()
{
  result = qword_1EC7F26E0;
  if (!qword_1EC7F26E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF2C0, &qword_1D5630FB0);
    sub_1D52472B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26E0);
  }

  return result;
}

void sub_1D52472B0()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D5246D68(&qword_1EDD5CE68);
    sub_1D5246D68(qword_1EDD5CE70);
    OUTLINED_FUNCTION_222();
    atomic_store(swift_getWitnessTable(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D5247374()
{
  result = qword_1EC7F26E8;
  if (!qword_1EC7F26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26E8);
  }

  return result;
}

uint64_t sub_1D52473C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_1D52474CC(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 7107189;
}

void sub_1D524750C()
{
  OUTLINED_FUNCTION_83_14();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2850, &qword_1D5649340);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_6_1(v5);
  sub_1D524E824();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  v10 = *v3;
  v11 = v3[1];
  v17 = 0;
  OUTLINED_FUNCTION_46_24(v10, v11, &v17);
  if (!v1)
  {
    v12 = v3[2];
    v13 = v3[3];
    v16 = 1;
    OUTLINED_FUNCTION_46_24(v12, v13, &v16);
    type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
    OUTLINED_FUNCTION_190_1();
    sub_1D560FDA8();
    OUTLINED_FUNCTION_0_146();
    v15 = sub_1D5246D68(v14);
    OUTLINED_FUNCTION_48_26(v15);
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_82_16();
}

void sub_1D524767C()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2860, &qword_1D5649348);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_29_28();
  type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v9 = v3[4];
  v10 = OUTLINED_FUNCTION_29_40();
  OUTLINED_FUNCTION_23_23(v10, v11);
  v12 = sub_1D524E824();
  OUTLINED_FUNCTION_61_24(&type metadata for CatalogInternalSearchRawResponse.Results.QueryContext.Citation.CodingKeys, v13, v12);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_44_28();
    *(v1 + 16) = OUTLINED_FUNCTION_35_39(v14, v15);
    *(v1 + 24) = v16;
    sub_1D560FDA8();
    OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_146();
    sub_1D5246D68(v17);
    OUTLINED_FUNCTION_36_35();
    v18 = OUTLINED_FUNCTION_45_28();
    v19(v18, v9);
    sub_1D4FB8058();
    sub_1D524E650();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1D524E6A8(v1, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation);
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D52478EC()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560FDA8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB008, &qword_1D561DDC0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = v6[1];
  v21 = v4[1];
  if (!v20)
  {
    if (v21)
    {
      goto LABEL_25;
    }

LABEL_10:
    v23 = v6[3];
    v24 = v4[3];
    if (v23)
    {
      if (!v24)
      {
        goto LABEL_25;
      }

      v25 = v6[2] == v4[2] && v23 == v24;
      if (!v25 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v24)
    {
      goto LABEL_25;
    }

    v41 = v9;
    v2(0);
    v26 = *(v16 + 48);
    sub_1D4FB8150();
    sub_1D4FB8150();
    OUTLINED_FUNCTION_77_12();
    if (__swift_getEnumTagSinglePayload(v27, v28, v29) == 1)
    {
      OUTLINED_FUNCTION_77_12();
      if (__swift_getEnumTagSinglePayload(v30, v31, v32) == 1)
      {
        sub_1D4E50004(v19, &qword_1EC7EAFF8, &qword_1D561DDB8);
        goto LABEL_25;
      }
    }

    else
    {
      sub_1D4FB8150();
      OUTLINED_FUNCTION_77_12();
      if (__swift_getEnumTagSinglePayload(v33, v34, v35) != 1)
      {
        v36 = v41;
        (*(v41 + 32))(v13, &v19[v26], v7);
        OUTLINED_FUNCTION_0_146();
        sub_1D5246D68(v37);
        OUTLINED_FUNCTION_134_0();
        sub_1D5614D18();
        v38 = *(v36 + 8);
        v39 = OUTLINED_FUNCTION_71();
        v38(v39);
        (v38)(v0, v7);
        sub_1D4E50004(v19, &qword_1EC7EAFF8, &qword_1D561DDB8);
        goto LABEL_25;
      }

      (*(v41 + 8))(v0, v7);
    }

    sub_1D4E50004(v19, &qword_1EC7EB008, &qword_1D561DDC0);
    goto LABEL_25;
  }

  if (v21)
  {
    v22 = *v6 == *v4 && v20 == v21;
    if (v22 || (sub_1D5616168() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5247C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_1D5247D34(char a1)
{
  if (!a1)
  {
    return 0x6C6562616CLL;
  }

  if (a1 == 1)
  {
    return 1954047348;
  }

  return 7107189;
}

void sub_1D5247D78()
{
  OUTLINED_FUNCTION_83_14();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2828, &qword_1D5649330);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_6_1(v5);
  sub_1D524E7D0();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  v10 = *v3;
  v11 = v3[1];
  v17 = 0;
  OUTLINED_FUNCTION_46_24(v10, v11, &v17);
  if (!v1)
  {
    v12 = v3[2];
    v13 = v3[3];
    v16 = 1;
    OUTLINED_FUNCTION_46_24(v12, v13, &v16);
    type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
    OUTLINED_FUNCTION_190_1();
    sub_1D560FDA8();
    OUTLINED_FUNCTION_0_146();
    v15 = sub_1D5246D68(v14);
    OUTLINED_FUNCTION_48_26(v15);
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_82_16();
}

void sub_1D5247EE8()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = sub_1D560FDA8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9();
  if (*(v0 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v0 + 24))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v3(0);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v10, v1, v4);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_146();
    sub_1D5246D68(v13);
    sub_1D5614CB8();
    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52480EC()
{
  OUTLINED_FUNCTION_164();
  sub_1D5247EE8();
  return sub_1D5616328();
}

void sub_1D524812C()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2840, &qword_1D5649338);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_29_28();
  type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v9 = v3[4];
  v10 = OUTLINED_FUNCTION_29_40();
  OUTLINED_FUNCTION_23_23(v10, v11);
  v12 = sub_1D524E7D0();
  OUTLINED_FUNCTION_61_24(&type metadata for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink.CodingKeys, v13, v12);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_44_28();
    *(v1 + 16) = OUTLINED_FUNCTION_35_39(v14, v15);
    *(v1 + 24) = v16;
    sub_1D560FDA8();
    OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_146();
    sub_1D5246D68(v17);
    OUTLINED_FUNCTION_36_35();
    v18 = OUTLINED_FUNCTION_45_28();
    v19(v18, v9);
    sub_1D4FB8058();
    sub_1D524E650();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_5_87();
    sub_1D524E6A8(v1, v20);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D524838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    v13 = OUTLINED_FUNCTION_61();
    sub_1D4EFBF50(v13, v14);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {

      v17 = OUTLINED_FUNCTION_159();
      sub_1D4EFBF90(v17, v18);
      OUTLINED_FUNCTION_82();

      if (a4)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5248454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461746963 && a2 == 0xE900000000000073;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
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

uint64_t sub_1D5248568(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461746963;
  }

  return 0x736B6E696CLL;
}

void sub_1D52485B8()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27C0, &qword_1D5649308);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  v4 = sub_1D524E584();
  OUTLINED_FUNCTION_79_14(&type metadata for CatalogInternalSearchRawResponse.Results.QueryContext.CodingKeys, v5, v4);
  OUTLINED_FUNCTION_22_14();
  sub_1D5616028();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27D0, &qword_1D5649310);
    sub_1D524E758();
    OUTLINED_FUNCTION_7_7();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27E8, &unk_1D5649318);
    sub_1D524E5D8();
    OUTLINED_FUNCTION_7_7();
    sub_1D5616068();
  }

  v6 = OUTLINED_FUNCTION_134_0();
  v7(v6);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

void sub_1D52487BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    sub_1D56162F8();
    sub_1D5614E28();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D56162F8();
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1D56162F8();
    return;
  }

  sub_1D56162F8();
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D56162F8();
  v7 = OUTLINED_FUNCTION_222();
  sub_1D4F0A0C8(v7, v8);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1D56162F8();
  v9 = OUTLINED_FUNCTION_159();

  sub_1D4F0A088(v9, v10);
}

uint64_t sub_1D5248880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_51_25();
  sub_1D52487BC(v5, v6, v7, v8, a4);
  return sub_1D5616328();
}

void sub_1D52488D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2800, &qword_1D5649328);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_108();
  v23 = OUTLINED_FUNCTION_140_3();
  OUTLINED_FUNCTION_23_23(v23, v24);
  sub_1D524E584();
  sub_1D5616398();
  sub_1D5615F38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27D0, &qword_1D5649310);
  sub_1D524E758();
  OUTLINED_FUNCTION_41_31();
  sub_1D5615F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27E8, &unk_1D5649318);
  sub_1D524E5D8();
  OUTLINED_FUNCTION_41_31();
  sub_1D5615F78();
  v25 = OUTLINED_FUNCTION_54_22();
  v26(v25);
  __swift_destroy_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_26();
}

void sub_1D5248B58()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = *v0;
  v4 = v0[1];
  v7 = v0[2];
  v6 = v0[3];
  if (*(v2 + 8) != 1)
  {
    if (v4 != 1)
    {
      v20 = OUTLINED_FUNCTION_30_40();
      sub_1D50A2198(v20, v21, v22, v23);
      v24 = OUTLINED_FUNCTION_7_87();
      sub_1D50A2198(v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_7_87();
      v32 = sub_1D524838C(v28, v29, v30, v31, v5, v4, v7, v6);

      v33 = OUTLINED_FUNCTION_7_87();
      sub_1D5246DF0(v33, v34);
      if ((v32 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }

LABEL_5:
    v8 = OUTLINED_FUNCTION_30_40();
    sub_1D50A2198(v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_7_87();
    sub_1D50A2198(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_7_87();
    sub_1D5246DF0(v16, v17);
    v18 = OUTLINED_FUNCTION_30_40();
    sub_1D5246DF0(v18, v19);
    goto LABEL_6;
  }

  if (v4 != 1)
  {
    goto LABEL_5;
  }

LABEL_8:
  if (*(v3 + 32) && v1[4])
  {

    OUTLINED_FUNCTION_159();
    sub_1D4F2EA04();
    OUTLINED_FUNCTION_82();
  }

LABEL_6:
  OUTLINED_FUNCTION_46();
}

void sub_1D5248C68(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  if (v4 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v6 = v2[2];
    v5 = v2[3];
    v7 = *v2;
    sub_1D56162F8();
    sub_1D52487BC(a1, v7, v4, v6, v5);
  }

  if (v2[4])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_159();

    sub_1D4F38CEC();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t sub_1D5248D1C()
{
  OUTLINED_FUNCTION_164();
  sub_1D5248C68(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5248D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_1D5616168() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5248D9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1D5248E24()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2960, &qword_1D5649D40);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D524F4E0();
  sub_1D56163D8();
  sub_1D5616028();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5248F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_222();

  return sub_1D5614E28();
}

uint64_t sub_1D5248FA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_164();
  sub_1D56162F8();
  if (a2)
  {
    sub_1D5614E28();
  }

  return sub_1D5616328();
}

void sub_1D5249014()
{
  OUTLINED_FUNCTION_83_14();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2950, &qword_1D5649D38);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(v2);
  sub_1D524F4E0();
  OUTLINED_FUNCTION_69_21();
  OUTLINED_FUNCTION_43_5();
  sub_1D5616398();
  if (!v0)
  {
    sub_1D5615F38();
    v4 = OUTLINED_FUNCTION_68_18();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_82_16();
}

void sub_1D5249134(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 2)
  {
    if (a5 != 2)
    {
      return;
    }
  }

  else if (a5 == 2 || ((a5 ^ a1) & 1) != 0)
  {
    return;
  }

  if (BYTE1(a1) == 2)
  {
    if (BYTE1(a5) != 2)
    {
      return;
    }
  }

  else if (BYTE1(a5) == 2 || ((BYTE1(a5) ^ BYTE1(a1)) & 1) != 0)
  {
    return;
  }

  if (a3 == 1)
  {
    if (a7 != 1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (a7 == 1)
  {
    return;
  }

  if (!a3)
  {
    if (a7)
    {
      return;
    }

    goto LABEL_13;
  }

  if (a7)
  {
    v7 = a2 == a6 && a3 == a7;
    if (v7 || (sub_1D5616168() & 1) != 0)
    {
LABEL_13:
      OUTLINED_FUNCTION_159();

      sub_1D4EF81E0();
    }
  }
}

uint64_t sub_1D524922C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574614365646968 && a2 == 0xEE00736569726F67;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6C61727574616ELL && a2 == 0xEF65676175676E61;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D524938C(char a1)
{
  result = 0x6574614365646968;
  switch(a1)
  {
    case 1:
      result = 0x4C6C61727574616ELL;
      break;
    case 2:
      result = 0x6E6F73616572;
      break;
    case 3:
      result = 0x726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D5249420()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2908, &qword_1D5649A40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  v4 = sub_1D524F080();
  OUTLINED_FUNCTION_79_14(&type metadata for CatalogInternalSearchRawResponse.Metadata.Results.CodingKeys, v5, v4);
  OUTLINED_FUNCTION_22_14();
  sub_1D5616038();
  if (!v0)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D5616038();
    OUTLINED_FUNCTION_65_4();
    sub_1D524F128();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&qword_1EC7ECA00);
    OUTLINED_FUNCTION_7_7();
    sub_1D56160C8();
  }

  v6 = OUTLINED_FUNCTION_134_0();
  v7(v6);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

void sub_1D52495EC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v5 = HIBYTE(a2);
  if (a2 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (v5 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (a4 == 1 || (sub_1D56162F8(), !a4))
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  OUTLINED_FUNCTION_159();

  sub_1D4F06928();
}

void sub_1D52496C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F28F0, &unk_1D5649A30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(v24);
  sub_1D524F080();
  OUTLINED_FUNCTION_69_21();
  OUTLINED_FUNCTION_43_5();
  sub_1D5616398();
  OUTLINED_FUNCTION_57_25();
  sub_1D5615F48();
  OUTLINED_FUNCTION_57_25();
  sub_1D5615F48();
  OUTLINED_FUNCTION_65_4();
  sub_1D524F0D4();
  OUTLINED_FUNCTION_57_25();
  sub_1D5615F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D4F88BF4(&qword_1EDD52778);
  OUTLINED_FUNCTION_57_25();
  sub_1D5615FD8();
  v26 = OUTLINED_FUNCTION_15_2();
  v27(v26);
  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_26();
}

void sub_1D5249904()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27B0, &unk_1D56492F8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D524E364();
  sub_1D56163D8();
  sub_1D524E530();
  sub_1D56160C8();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5249A48(__int16 a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_164();
  sub_1D52495EC(v7, a1, a2, a3);
  return sub_1D5616328();
}

void sub_1D5249AA8()
{
  OUTLINED_FUNCTION_83_14();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2780, &qword_1D56492E8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(v2);
  sub_1D524E364();
  OUTLINED_FUNCTION_69_21();
  OUTLINED_FUNCTION_43_5();
  sub_1D5616398();
  if (!v0)
  {
    sub_1D524E3B8();
    OUTLINED_FUNCTION_57_25();
    sub_1D5615FD8();
    v4 = OUTLINED_FUNCTION_15_2();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_82_16();
}

uint64_t sub_1D5249C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D52473C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5249C3C(uint64_t a1)
{
  v2 = sub_1D524E824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5249C78(uint64_t a1)
{
  v2 = sub_1D524E824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5249D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5247C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5249DB4(uint64_t a1)
{
  v2 = sub_1D524E7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5249DF0(uint64_t a1)
{
  v2 = sub_1D524E7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5249EFC(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5247EE8();
  return sub_1D5616328();
}

uint64_t sub_1D5249F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5248454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5249F70(uint64_t a1)
{
  v2 = sub_1D524E584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5249FAC(uint64_t a1)
{
  v2 = sub_1D524E584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D524A06C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1D56162D8();
  sub_1D52487BC(v7, v2, v3, v5, v4);
  return sub_1D5616328();
}

uint64_t sub_1D524A0D4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5248C68(v2);
  return sub_1D5616328();
}

uint64_t sub_1D524A114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5248D9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D524A140(uint64_t a1)
{
  v2 = sub_1D524F4E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524A17C(uint64_t a1)
{
  v2 = sub_1D524F4E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D524A1B8(void *a1@<X8>)
{
  sub_1D5249014();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1D524A224(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2)
  {
    sub_1D5614E28();
  }

  return sub_1D5616328();
}

uint64_t sub_1D524A298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D524922C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D524A2C0(uint64_t a1)
{
  v2 = sub_1D524F080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524A2FC(uint64_t a1)
{
  v2 = sub_1D524F080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D524A3D0(uint64_t a1)
{
  v2 = sub_1D524E364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524A40C(uint64_t a1)
{
  v2 = sub_1D524E364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D524A448(uint64_t a1@<X8>)
{
  sub_1D5249AA8();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

uint64_t sub_1D524A570(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *v1;
  sub_1D56162D8();
  sub_1D52495EC(v6, v4, v2, v3);
  return sub_1D5616328();
}

BOOL static CatalogInternalSearchRawResponse.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v6 = a1[8];
  v5 = a1[9];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v12 = a2[6];
  v11 = a2[7];
  v14 = a2[8];
  v13 = a2[9];
  if (a1[4] == 1)
  {
    if (v10 == 1)
    {
      goto LABEL_8;
    }

LABEL_5:
    v15 = OUTLINED_FUNCTION_32_41();
    sub_1D5247100(v15, v16, v17, v18, v10);
    v19 = OUTLINED_FUNCTION_8_78();
    sub_1D5247100(v19, v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_8_78();
    sub_1D5246DAC(v24, v25, v26, v27, v28);
    v29 = OUTLINED_FUNCTION_32_41();
    sub_1D5246DAC(v29, v30, v31, v32, v10);
    return 0;
  }

  if (v10 == 1)
  {
    goto LABEL_5;
  }

  v92 = a2[5];
  v93 = a1[5];
  v34 = OUTLINED_FUNCTION_140_3();
  v100 = v36;
  v101 = v35;
  v94 = v38;
  v95 = v37;
  v98 = v40;
  v99 = v39;
  v96 = v42;
  v97 = v41;
  sub_1D5247100(v34, v43, v7, v8, v10);
  v44 = OUTLINED_FUNCTION_8_78();
  sub_1D5247100(v44, v45, v46, v47, v48);
  sub_1D5248B58();
  v91 = v49;
  v50 = OUTLINED_FUNCTION_32_41();
  sub_1D5246DF0(v50, v51);

  v52 = OUTLINED_FUNCTION_8_78();
  sub_1D5246DAC(v52, v53, v54, v55, v56);
  v9 = v92;
  v2 = v93;
  v12 = v94;
  v11 = v95;
  v14 = v96;
  v13 = v97;
  LODWORD(v4) = v98;
  v3 = v99;
  v6 = v100;
  v5 = v101;
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v2)
  {
    if (!v9)
    {
      return 0;
    }

    v57 = v5;
    v58 = v6;
    v59 = v3;
    v60 = v4;
    v61 = v13;
    v62 = v14;
    v63 = v11;
    v64 = v12;

    OUTLINED_FUNCTION_29_40();
    sub_1D4F289B0();
    v66 = v65;

    v12 = v64;
    v11 = v63;
    v14 = v62;
    v13 = v61;
    LODWORD(v4) = v60;
    v3 = v59;
    v6 = v58;
    v5 = v57;
    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (v13)
    {
      v67 = v12;
      v68 = v11;
      v69 = v14;
      v70 = v13;
      sub_1D5249134(v4, v3, v6, v5, v12, v11, v14);
      v72 = v71;
      sub_1D524A898(v67, v68, v69, v70);
      OUTLINED_FUNCTION_51_25();
      sub_1D524A898(v73, v74, v75, v76);
      sub_1D50A2184(v68, v69);

      OUTLINED_FUNCTION_51_25();
      sub_1D524A8E0(v77, v78, v79, v80);
      return (v72 & 1) != 0;
    }

LABEL_18:
    v81 = v6;
    v82 = v5;
    v83 = v13;
    v84 = v14;
    v85 = v11;
    v86 = v12;
    sub_1D524A898(v12, v11, v14, v13);
    v87 = OUTLINED_FUNCTION_61();
    sub_1D524A898(v87, v88, v81, v82);
    v89 = OUTLINED_FUNCTION_61();
    sub_1D524A8E0(v89, v90, v81, v82);
    sub_1D524A8E0(v86, v85, v84, v83);
    return 0;
  }

  if (v13)
  {
    goto LABEL_18;
  }

  return 1;
}

double sub_1D524A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D50A2170(a2, a3);
  }

  return result;
}

uint64_t sub_1D524A8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D50A2184(a2, a3);
  }

  return result;
}

uint64_t sub_1D524A928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F736572 && a2 == 0xE900000000000073;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1635018093 && a2 == 0xE400000000000000)
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

uint64_t sub_1D524AA40(char a1)
{
  if (!a1)
  {
    return 0x73746C75736572;
  }

  if (a1 == 1)
  {
    return 0x656372756F736572;
  }

  return 1635018093;
}

uint64_t sub_1D524AA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D524AAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D524A928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D524AB10(uint64_t a1)
{
  v2 = sub_1D5246CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524AB4C(uint64_t a1)
{
  v2 = sub_1D5246CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogInternalSearchRawResponse.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 5);
  v4 = *(v1 + 6);
  v5 = *(v1 + 7);
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  if (*(v1 + 4) == 1)
  {
    sub_1D56162F8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D56162F8();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1D56162F8();
    return;
  }

  v14 = *v1;
  v15 = v1[1];
  v16 = *(v1 + 4);
  sub_1D56162F8();
  sub_1D5248C68(a1);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D56162F8();
  sub_1D4F32110(a1, v3, v8, v9, v10, v11, v12, v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17, v18, v19, v20, v21, v22, v23);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1D56162F8();

  sub_1D52495EC(a1, v4, v5, v6);
}

uint64_t CatalogInternalSearchRawResponse.hashValue.getter()
{
  v14 = *v0;
  v15 = v0[1];
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  sub_1D56162D8();
  if (v2 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v17 = v14;
    v18 = v15;
    v19 = v2;
    sub_1D56162F8();
    sub_1D5248C68(v16);
  }

  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F32110(v16, v1, v7, v8, v9, v10, v11, v12, v14, *(&v14 + 1), v15, *(&v15 + 1), v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7]);
  }

  sub_1D56162F8();
  if (v6)
  {
    sub_1D52495EC(v16, v3, v4, v5);
  }

  return sub_1D5616328();
}

uint64_t sub_1D524ADD4(uint64_t a1)
{
  sub_1D56162D8();
  CatalogInternalSearchRawResponse.hash(into:)(v2);
  return sub_1D5616328();
}

void sub_1D524AE10()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v56 = v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  OUTLINED_FUNCTION_4();
  v55 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v58 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  v54 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D5610C98();
  OUTLINED_FUNCTION_4();
  v64 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0110, &unk_1D56492D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  OUTLINED_FUNCTION_19_56();
  sub_1D5246D68(v17);
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_27:
    OUTLINED_FUNCTION_26();
    return;
  }

  v18 = v56;
  v52 = v9;
  v19 = sub_1D5615FE8();
  v57 = sub_1D5614BD8();
  v63 = *(v19 + 16);
  if (!v63)
  {
    v72 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 1;
LABEL_26:

    v47 = OUTLINED_FUNCTION_27_43();
    v48(v47, v15);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v18 = v72;
    v18[1] = v65;
    v18[2] = v67;
    v18[3] = v66;
    v18[4] = v57;
    goto LABEL_27;
  }

  v72 = 0;
  v66 = 0;
  v67 = 0;
  v20 = 0;
  OUTLINED_FUNCTION_6_4();
  v62 = v19 + v22;
  v53 = (v55 + 32);
  v65 = 1;
  v23 = v52;
  v61 = v2;
  v49 = v15;
  v60 = v19;
  v50 = v14;
  while (v20 < *(v19 + 16))
  {
    (*(v21 + 16))(v14, v62 + *(v21 + 72) * v20, v23);
    if (sub_1D5610C88() == 0x6E6F437972657571 && v24 == 0xEC00000074786574)
    {

LABEL_16:
      sub_1D5246DF0(v72, v65);
      sub_1D524E310();
      sub_1D5615FD8();
      v37 = OUTLINED_FUNCTION_12_66();
      v38(v37);
      v72 = v68;
      v67 = v70;
      v65 = v69;
      v66 = v71;
      v21 = v64;
      v19 = v60;
      v2 = v61;
      goto LABEL_23;
    }

    sub_1D5616168();
    OUTLINED_FUNCTION_82();

    if (v14)
    {
      goto LABEL_16;
    }

    v26 = sub_1D5610C88();
    v28 = v27;
    sub_1D524E40C();
    sub_1D5615FD8();
    v51 = *v53;
    (*v53)(v58, v54, v59);
    swift_isUniquelyReferenced_nonNull_native();
    v68 = v57;
    v29 = sub_1D4E4EFA0(v26, v28);
    if (__OFADD__(v57[2], (v30 & 1) == 0))
    {
      goto LABEL_29;
    }

    v31 = v29;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E0, &qword_1D56492E0);
    if (sub_1D5615D78())
    {
      v33 = v26;
      v34 = v28;
      v35 = sub_1D4E4EFA0(v26, v28);
      v23 = v52;
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_31;
      }

      v31 = v35;
    }

    else
    {
      v33 = v26;
      v34 = v28;
      v23 = v52;
    }

    v14 = v50;
    if (v32)
    {

      (*(v55 + 40))(v57[7] + *(v55 + 72) * v31, v58, v59);
      v39 = OUTLINED_FUNCTION_12_66();
      v40(v39);
    }

    else
    {
      v57[(v31 >> 6) + 8] |= 1 << v31;
      v41 = (v57[6] + 16 * v31);
      *v41 = v33;
      v41[1] = v34;
      v51(v57[7] + *(v55 + 72) * v31, v58, v59);
      v42 = OUTLINED_FUNCTION_12_66();
      v43(v42);
      v44 = v57[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_30;
      }

      v57[2] = v46;
    }

    v19 = v60;
    v2 = v61;
    v18 = v56;
    v15 = v49;
    v21 = v64;
LABEL_23:
    if (v63 == ++v20)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1D5616238();
  __break(1u);
}

void sub_1D524B560()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v99 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  OUTLINED_FUNCTION_4();
  v83 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v89 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_2();
  v81 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD60, &unk_1D561F310);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v91 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_2();
  v90 = v15;
  OUTLINED_FUNCTION_70_0();
  v16 = sub_1D5610C98();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v88 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_2();
  v95 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0120, &qword_1D5636098);
  OUTLINED_FUNCTION_4();
  v25 = v24;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v78 - v27;
  v87 = v4[4];
  OUTLINED_FUNCTION_6_1(v4);
  OUTLINED_FUNCTION_19_56();
  sub_1D5246D68(v29);
  v94 = v16;
  sub_1D56163D8();
  v30 = v99[1];
  if (v30 != 1)
  {
    v87 = v18;
    v31 = *v99;
    sub_1D5614EB8();
    v96 = v31;
    v97 = v30;
    v98 = *(v99 + 1);
    sub_1D524E4DC();
    sub_1D56160C8();
    if (v1)
    {
      (*(v87 + 8))(v95, v94);
      (*(v25 + 8))(v28, v23);
LABEL_24:
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_26();
      return;
    }

    v18 = v87;
    (*(v87 + 8))(v95, v94);
  }

  v32 = v99[4];
  v93 = v23;
  v78[1] = v25;
  v92 = v28;
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = sub_1D5614BD8();
  }

  v82 = v33;
  v35 = v33 + 64;
  v34 = *(v33 + 64);
  v36 = 1 << *(v35 - 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v34;
  v39 = (v36 + 63) >> 6;
  v80 = v83 + 16;
  v95 = (v83 + 32);
  v86 = v18 + 8;
  v87 = v83 + 8;

  v40 = 0;
  v84 = v39;
  v85 = v5;
  v79 = v35;
  if (v38)
  {
    while (1)
    {
      v100 = v2;
      v41 = v40;
LABEL_16:
      v42 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v43 = v42 | (v41 << 6);
      v44 = v83;
      v45 = (*(v82 + 48) + 16 * v43);
      v47 = *v45;
      v46 = v45[1];
      v48 = v81;
      (*(v83 + 16))(v81, *(v82 + 56) + *(v83 + 72) * v43, v5);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      v50 = v5;
      v51 = v49;
      v52 = *(v49 + 48);
      v53 = v91;
      *v91 = v47;
      *(v53 + 1) = v46;
      v54 = v53;
      (*(v44 + 32))(&v53[v52], v48, v50);
      __swift_storeEnumTagSinglePayload(v54, 0, 1, v51);

      v35 = v79;
LABEL_17:
      v55 = v90;
      sub_1D4FB8058();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      OUTLINED_FUNCTION_77_12();
      if (__swift_getEnumTagSinglePayload(v57, v58, v59) == 1)
      {

        v70 = OUTLINED_FUNCTION_72_20();
        v71(v70);
        goto LABEL_24;
      }

      v60 = v55 + *(v56 + 48);
      v61 = v85;
      (*v95)(v89, v60, v85);
      v5 = v61;
      sub_1D5614EB8();

      sub_1D524E40C();
      OUTLINED_FUNCTION_29_40();
      sub_1D56160C8();
      v2 = v100;
      if (v100)
      {
        break;
      }

      v62 = OUTLINED_FUNCTION_63_15();
      v63(v62);
      v64 = OUTLINED_FUNCTION_140_3();
      v65(v64);
      v39 = v84;
      if (!v38)
      {
        goto LABEL_12;
      }
    }

    v72 = OUTLINED_FUNCTION_63_15();
    v73(v72);
    v74 = OUTLINED_FUNCTION_140_3();
    v75(v74);
    v76 = OUTLINED_FUNCTION_72_20();
    v77(v76);
    goto LABEL_24;
  }

LABEL_12:
  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {
      v100 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
      v38 = 0;
      goto LABEL_17;
    }

    v38 = *(v35 + 8 * v41);
    ++v40;
    if (v38)
    {
      v100 = v2;
      v40 = v41;
      goto LABEL_16;
    }
  }

  __break(1u);
}

double sub_1D524BBF8@<D0>(uint64_t a1@<X8>)
{
  sub_1D524AE10();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

void sub_1D524BC58()
{
  OUTLINED_FUNCTION_47();
  v149 = v0;
  v2 = v1;
  v4 = v3;
  v150 = v5;
  v151 = v6;
  v168 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v148 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v167 = (v10 - v9);
  OUTLINED_FUNCTION_70_0();
  v178 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v147 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v165 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_2();
  v158 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v157 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(v16);
  OUTLINED_FUNCTION_4();
  v156 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v155 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v154 = v144 - v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  v153 = v144 - v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v164 = v25;
  v26 = OUTLINED_FUNCTION_70_0();
  v27 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(v26);
  OUTLINED_FUNCTION_4();
  v146 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v144 - v34;
  v163 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v162 = v40 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13();
  v177 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_2();
  v175 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  v176 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v182 = v50;
  v51 = OUTLINED_FUNCTION_70_0();
  v174 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(v51);
  OUTLINED_FUNCTION_4();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13();
  v180 = v55;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_2();
  v181 = v57;
  v58 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(v58);
  OUTLINED_FUNCTION_4();
  v172 = v60;
  v173 = v59;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13();
  v170 = v61;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  v171 = v63;
  if (v2)
  {
    v64 = v2;
  }

  else
  {
    v64 = MEMORY[0x1E69E7CC0];
  }

  v65 = *(v64 + 16);
  v159 = v27;
  v152 = v4;
  v166 = v35;
  if (v65)
  {
    v145 = v32;
    v186 = MEMORY[0x1E69E7CC0];

    v144[1] = v2;

    v66 = v65;
    sub_1D4F041C4(0, v65, 0);
    v67 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v183 = v186;
    v144[0] = v64;
    v68 = v64 + v67;
    v169 = *(v53 + 72);
    v161 = 0x80000001D5688B80;
    v160 = (v37 + 8);
    do
    {
      sub_1D524E650();
      v69 = v180;
      sub_1D524E650();
      v71 = *v69;
      v70 = v69[1];
      v72 = v69[3];
      v179 = v69[2];
      v73 = v175;
      sub_1D4FB8150();
      v74 = sub_1D560FDA8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v74);

      if (EnumTagSinglePayload == 1)
      {
        v76 = OUTLINED_FUNCTION_159();
        sub_1D4E50004(v76, v77, &qword_1D561DDB8);
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v78, v79, v80, v178);
      }

      else
      {
        sub_1D560FD98();
        OUTLINED_FUNCTION_24_0();
        (*(v81 + 8))(v73, v74);
      }

      v82 = v66;
      if (v70)
      {
        v83 = v70;
      }

      else
      {
        v184 = 0;
        v185 = 0xE000000000000000;
        sub_1D5615B68();

        v184 = 0xD000000000000014;
        v185 = v161;
        v84 = v162;
        sub_1D560C358();
        v85 = sub_1D560C338();
        v87 = v86;
        (*v160)(v84, v163);
        MEMORY[0x1DA6EAC70](v85, v87);

        v71 = v184;
        v83 = v185;
      }

      v88 = v170;
      *v170 = v71;
      v88[1] = v83;
      *(v88 + *(v173 + 28)) = v70 == 0;
      if (v72)
      {
        v89 = v179;
      }

      else
      {
        v89 = 0;
      }

      if (v72)
      {
        v90 = v72;
      }

      else
      {
        v90 = 0xE000000000000000;
      }

      sub_1D524E6A8(v181, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation);
      sub_1D524E6A8(v180, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation);
      v88[2] = v89;
      v88[3] = v90;
      sub_1D4FB8058();
      OUTLINED_FUNCTION_18_63();
      sub_1D524E700();
      v91 = v183;
      v186 = v183;
      v93 = *(v183 + 16);
      v92 = *(v183 + 24);
      if (v93 >= v92 >> 1)
      {
        v94 = OUTLINED_FUNCTION_52_25(v92);
        sub_1D4F041C4(v94, v93 + 1, 1);
        v91 = v186;
      }

      *(v91 + 16) = v93 + 1;
      v183 = v91;
      OUTLINED_FUNCTION_18_63();
      sub_1D524E700();
      v68 += v169;
      v66 = v82 - 1;
    }

    while (v82 != 1);

    v4 = v152;
    v95 = v178;
    v96 = v159;
    v32 = v145;
    v35 = v166;
  }

  else
  {

    v183 = MEMORY[0x1E69E7CC0];
    v95 = v178;
    v96 = v27;
  }

  if (v149)
  {
    v97 = v149;
  }

  else
  {
    v97 = MEMORY[0x1E69E7CC0];
  }

  v98 = *(v97 + 16);
  if (v98)
  {
    OUTLINED_FUNCTION_6_4();
    v163 = v97;
    v100 = v97 + v99;
    v182 = *(v101 + 72);
    v173 = v147 + 32;
    v169 = (v147 + 8);
    v170 = (v147 + 16);
    v179 = (v148 + 16);
    v180 = (v148 + 104);
    v181 = MEMORY[0x1E69E7CC0];
    LODWORD(v175) = *MEMORY[0x1E69763E0];
    v174 = (v148 + 8);
    while (1)
    {
      sub_1D524E650();
      sub_1D524E650();
      sub_1D4FB8150();
      sub_1D560FDA8();
      v102 = OUTLINED_FUNCTION_75_17();
      if (__swift_getEnumTagSinglePayload(v102, v103, v104) == 1)
      {
        v105 = OUTLINED_FUNCTION_222();
        sub_1D4E50004(v105, v106, &qword_1D561DDB8);
        v107 = v176;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v108, v109, v110, v95);
      }

      else
      {
        v111 = v96;
        v112 = v176;
        sub_1D560FD98();
        OUTLINED_FUNCTION_24_0();
        v113 = OUTLINED_FUNCTION_159();
        v107 = v112;
        v96 = v111;
        v114(v113);
        if (__swift_getEnumTagSinglePayload(v107, 1, v95) != 1)
        {
          v172 = *v173;
          v119 = v158;
          v120 = OUTLINED_FUNCTION_134_0();
          v121(v120);
          v122 = v95;
          v124 = *v32;
          v123 = v32[1];
          v126 = v32[2];
          v125 = v32[3];
          (*v170)(v165, v119, v122);
          if (v123)
          {
            v127 = v124;
          }

          else
          {
            v127 = 0;
          }

          if (v123)
          {
            v128 = v123;
          }

          else
          {
            v128 = 0xE000000000000000;
          }

          v129 = v155;
          *v155 = v127;
          *(v129 + 1) = v128;
          if (v125)
          {
            v130 = v126;
          }

          else
          {
            v130 = 0;
          }

          v171 = v130;
          if (v125)
          {
            v131 = v125;
          }

          else
          {
            v131 = 0xE000000000000000;
          }

          v132 = *v169;

          v132(v119, v178);
          v133 = v178;
          sub_1D524E6A8(v32, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);
          sub_1D524E6A8(v166, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);
          v134 = v172;
          *(v129 + 2) = v171;
          *(v129 + 3) = v131;
          v95 = v133;
          v134(&v129[*(v157 + 24)], v165, v133);
          sub_1D524E700();
          sub_1D524E700();
          sub_1D524E700();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v135 = v181;
          }

          else
          {
            sub_1D4F0151C();
            v135 = v138;
          }

          v136 = *(v135 + 16);
          v96 = v159;
          if (v136 >= *(v135 + 24) >> 1)
          {
            sub_1D4F0151C();
            v135 = v139;
          }

          v35 = v166;
          *(v135 + 16) = v136 + 1;
          OUTLINED_FUNCTION_6_4();
          v181 = v137;
          sub_1D524E700();
          goto LABEL_49;
        }
      }

      sub_1D4E50004(v107, &unk_1EC7E9CA8, &unk_1D561D1D0);
      v116 = v167;
      v115 = v168;
      *v167 = 7107189;
      v116[1] = 0xE300000000000000;
      (*v180)(v116, v175, v115);
      OUTLINED_FUNCTION_21_51();
      sub_1D5246D68(&qword_1EC7EE070);
      v117 = swift_allocError();
      (*v179)(v118, v116, v115);
      swift_willThrow();
      (*v174)(v116, v115);
      sub_1D524E6A8(v32, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);
      sub_1D524E6A8(v35, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);

LABEL_49:
      v100 += v182;
      if (!--v98)
      {

        v4 = v152;
        v140 = v181;
        goto LABEL_53;
      }
    }
  }

  v140 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v141 = 0xE000000000000000;
  if (v4)
  {
    v141 = v4;
  }

  v142 = v150;
  if (!v4)
  {
    v142 = 0;
  }

  v143 = v151;
  *v151 = v142;
  v143[1] = v141;
  v143[2] = v183;
  v143[3] = v140;
  OUTLINED_FUNCTION_46();
}

void sub_1D524CA44()
{
  OUTLINED_FUNCTION_47();
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v55 = (v6 - v5);
  v7 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(v7);
  OUTLINED_FUNCTION_4();
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v48 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9();
  v15 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(0);
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v23 = *(v0 + 16);
  v49 = *(v0 + 24);
  v24 = *(v23 + 16);
  if (v24)
  {
    v53 = v1;
    v62 = MEMORY[0x1E69E7CC0];

    sub_1D4F04274(0, v24, 0);
    v25 = v62;
    v26 = v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v50 = *(v17 + 72);
    v51 = v15;
    v52 = v3;
    do
    {
      OUTLINED_FUNCTION_134_0();
      sub_1D524E650();
      v61 = v25;
      if (*(v21 + *(v15 + 28)))
      {
        v57 = 0;
        v59 = 0;
      }

      else
      {
        v57 = v21[1];
        v59 = *v21;
      }

      v27 = v21[3];
      v56 = v21[2];
      sub_1D4FB8150();
      v28 = sub_1D560C0A8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v28);

      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_26_50();
        sub_1D4E50004(v53, &unk_1EC7E9CA8, &unk_1D561D1D0);
        v30 = v52;
      }

      else
      {
        v30 = v52;
        sub_1D560C038();
        OUTLINED_FUNCTION_26_50();
        OUTLINED_FUNCTION_24_0();
        (*(v31 + 8))(v53, v28);
        EnumTagSinglePayload = 0;
      }

      v32 = sub_1D560FDA8();
      __swift_storeEnumTagSinglePayload(v30, EnumTagSinglePayload, 1, v32);
      *v2 = v59;
      v2[1] = v57;
      v2[2] = v56;
      v2[3] = v27;
      sub_1D4FB8058();
      v25 = v61;
      v34 = *(v61 + 16);
      v33 = *(v61 + 24);
      v15 = v51;
      if (v34 >= v33 >> 1)
      {
        v35 = OUTLINED_FUNCTION_52_25(v33);
        sub_1D4F04274(v35, v34 + 1, 1);
        v25 = v61;
      }

      *(v25 + 16) = v34 + 1;
      OUTLINED_FUNCTION_6_4();
      sub_1D524E700();
      v26 += v50;
      --v24;
    }

    while (v24);
  }

  else
  {
  }

  v36 = *(v49 + 16);
  if (v36)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1D4F0421C(0, v36, 0);
    OUTLINED_FUNCTION_6_4();
    v38 = v49 + v37;
    v58 = *(v39 + 72);
    do
    {
      sub_1D524E650();
      v40 = v55[1];
      v60 = *v55;
      v42 = v55[2];
      v41 = v55[3];
      v43 = *(v54 + 24);

      sub_1D560C038();
      sub_1D524E6A8(v55, type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink);
      v44 = sub_1D560FDA8();
      __swift_storeEnumTagSinglePayload(v48 + v43, 0, 1, v44);
      *v48 = v60;
      v48[1] = v40;
      v48[2] = v42;
      v48[3] = v41;
      v46 = *(v63 + 16);
      v45 = *(v63 + 24);
      if (v46 >= v45 >> 1)
      {
        v47 = OUTLINED_FUNCTION_52_25(v45);
        sub_1D4F0421C(v47, v46 + 1, 1);
      }

      *(v63 + 16) = v46 + 1;
      OUTLINED_FUNCTION_6_4();
      sub_1D524E700();
      v38 += v58;
      --v36;
    }

    while (v36);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D524D024()
{
  OUTLINED_FUNCTION_47();
  v19[0] = v0;
  v1 = type metadata accessor for CloudGenericMusicItem(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = sub_1D5610088();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v8 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v19 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  sub_1D5610608();
  sub_1D5610658();
  sub_1D5610618();
  sub_1D5612438();
  sub_1D5610648();
  v18 = sub_1D529924C();
  sub_1D524E6A8(v5, type metadata accessor for CloudGenericMusicItem);
  (*(v10 + 16))(v14, v17, v8);
  v19[1] = v18;
  sub_1D5612E68();
  (*(v10 + 8))(v17, v8);
  OUTLINED_FUNCTION_46();
}

void sub_1D524D22C()
{
  OUTLINED_FUNCTION_25_1();
  v57 = v1;
  v58 = v0;
  v3 = v2;
  v4 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v54 - v17;
  v19 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v56 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59_0();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v54 - v26;
  type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  v59 = v3;
  sub_1D4FB8150();
  sub_1D560FDA8();
  v28 = OUTLINED_FUNCTION_75_17();
  if (__swift_getEnumTagSinglePayload(v28, v29, v30) == 1)
  {
    sub_1D4E50004(v14, &qword_1EC7EAFF8, &qword_1D561DDB8);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v19);
LABEL_4:
    sub_1D4E50004(v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
    *v10 = 7107189;
    v10[1] = 0xE300000000000000;
    (*(v6 + 104))(v10, *MEMORY[0x1E69763E0], v4);
    OUTLINED_FUNCTION_21_51();
    sub_1D5246D68(v36);
    swift_allocError();
    (*(v6 + 16))(v37, v10, v4);
    swift_willThrow();
    OUTLINED_FUNCTION_5_87();
    sub_1D524E6A8(v3, v38);
    v39 = OUTLINED_FUNCTION_15_2();
    v40(v39);
    goto LABEL_18;
  }

  sub_1D560FD98();
  OUTLINED_FUNCTION_24_0();
  v34 = OUTLINED_FUNCTION_159();
  v35(v34);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  v41 = v56;
  v42 = *(v56 + 32);
  v54[1] = v56 + 32;
  v55 = v42;
  v42(v27, v18, v19);
  v44 = *v3;
  v43 = v3[1];
  v46 = *(v59 + 16);
  v45 = *(v59 + 24);
  (*(v41 + 16))(v24, v27, v19);
  if (v43)
  {
    v47 = v44;
  }

  else
  {
    v47 = 0;
  }

  if (v43)
  {
    v48 = v43;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  v49 = v57;
  *v57 = v47;
  *(v49 + 1) = v48;
  if (v45)
  {
    v50 = v46;
  }

  else
  {
    v50 = 0;
  }

  v54[0] = v50;
  if (v45)
  {
    v51 = v45;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_5_87();
  sub_1D524E6A8(v59, v52);
  (*(v41 + 8))(v27, v19);
  *(v49 + 2) = v54[0];
  *(v49 + 3) = v51;
  v53 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0);
  v55(&v49[*(v53 + 24)], v24, v19);
LABEL_18:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D524D650(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = a1;

      v3 = OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C(v3, v4);
      OUTLINED_FUNCTION_82();

      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D524D6A8()
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

void sub_1D524D6E4()
{
  OUTLINED_FUNCTION_83_14();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F28E8, &qword_1D5649A28);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_6_1(v2);
  sub_1D524EF08();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  sub_1D524F020();
  sub_1D5616068();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_82_16();
}

void sub_1D524D850(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D56162F8();
    v2 = OUTLINED_FUNCTION_159();

    sub_1D4F068B4(v2);
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t sub_1D524D8A8(uint64_t a1)
{
  OUTLINED_FUNCTION_164();
  sub_1D56162F8();
  if (a1)
  {
    sub_1D4F068B4(v3);
  }

  return sub_1D5616328();
}

void sub_1D524D904()
{
  OUTLINED_FUNCTION_83_14();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F28D8, &qword_1D5649A20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(v2);
  sub_1D524EF08();
  OUTLINED_FUNCTION_69_21();
  OUTLINED_FUNCTION_43_5();
  sub_1D5616398();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D524F020();
    sub_1D5615F78();
    v4 = OUTLINED_FUNCTION_68_18();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_82_16();
}

uint64_t sub_1D524DA84(uint64_t a1)
{
  v2 = sub_1D524EF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524DAC0(uint64_t a1)
{
  v2 = sub_1D524EF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D524DAFC(void *a1@<X8>)
{
  sub_1D524D904();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_1D524DB64()
{
  result = qword_1EC7F26F0;
  if (!qword_1EC7F26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal07CatalogC17SearchRawResponseV7ResultsVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal07CatalogC17SearchRawResponseV8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D524DBF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D524DC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_1D524DD08(uint64_t a1)
{
  if (!qword_1EC7F2708)
  {
    sub_1D560FDA8();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F2708);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_62_2(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_1D524DEBC(uint64_t a1)
{
  sub_1D4F18AF4();
  if (v1 <= 0x3F)
  {
    sub_1D524DD08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D524DF50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D524DFA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1D524E024()
{
  result = qword_1EC7F2720;
  if (!qword_1EC7F2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2720);
  }

  return result;
}

unint64_t sub_1D524E07C()
{
  result = qword_1EC7F2728;
  if (!qword_1EC7F2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2728);
  }

  return result;
}

unint64_t sub_1D524E0D4()
{
  result = qword_1EC7F2730;
  if (!qword_1EC7F2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2730);
  }

  return result;
}

unint64_t sub_1D524E1BC()
{
  result = qword_1EC7F2748;
  if (!qword_1EC7F2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2748);
  }

  return result;
}

unint64_t sub_1D524E214()
{
  result = qword_1EC7F2750;
  if (!qword_1EC7F2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2750);
  }

  return result;
}

unint64_t sub_1D524E268()
{
  result = qword_1EC7F2768;
  if (!qword_1EC7F2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2768);
  }

  return result;
}

unint64_t sub_1D524E2BC()
{
  result = qword_1EC7F2770;
  if (!qword_1EC7F2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2770);
  }

  return result;
}

unint64_t sub_1D524E310()
{
  result = qword_1EC7F2778;
  if (!qword_1EC7F2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2778);
  }

  return result;
}

unint64_t sub_1D524E364()
{
  result = qword_1EC7F2788;
  if (!qword_1EC7F2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2788);
  }

  return result;
}

unint64_t sub_1D524E3B8()
{
  result = qword_1EC7F2790;
  if (!qword_1EC7F2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2790);
  }

  return result;
}

void sub_1D524E40C()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB3E8, &qword_1D561E208);
    v2 = OUTLINED_FUNCTION_61();
    sub_1D524E46C(v2);
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D524E46C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBD80, &qword_1D561F320);
    sub_1D524E268();
    sub_1D524E2BC();
    OUTLINED_FUNCTION_222();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D524E4DC()
{
  result = qword_1EC7F27A8;
  if (!qword_1EC7F27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F27A8);
  }

  return result;
}

unint64_t sub_1D524E530()
{
  result = qword_1EC7F27B8;
  if (!qword_1EC7F27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F27B8);
  }

  return result;
}

unint64_t sub_1D524E584()
{
  result = qword_1EC7F27C8;
  if (!qword_1EC7F27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F27C8);
  }

  return result;
}

void sub_1D524E5D8()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v2))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F27E8, &unk_1D5649318);
    sub_1D5246D68(v1);
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D524E650()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D524E6A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D524E700()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

void sub_1D524E758()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v2))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F27D0, &qword_1D5649310);
    sub_1D5246D68(v1);
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D524E7D0()
{
  result = qword_1EC7F2830;
  if (!qword_1EC7F2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2830);
  }

  return result;
}

unint64_t sub_1D524E824()
{
  result = qword_1EC7F2858;
  if (!qword_1EC7F2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2858);
  }

  return result;
}

_BYTE *sub_1D524E898(_BYTE *result, unsigned int a2, unsigned int a3)
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